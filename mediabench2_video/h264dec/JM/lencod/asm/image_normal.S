	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"image.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MbAffPostProc                   # -- Begin function MbAffPostProc
	.p2align	2
	.type	MbAffPostProc,@function
MbAffPostProc:                          # @MbAffPostProc
# %bb.0:
	addi	sp, sp, -1184
	sd	ra, 1176(sp)                    # 8-byte Folded Spill
	sd	s0, 1168(sp)                    # 8-byte Folded Spill
	sd	s1, 1160(sp)                    # 8-byte Folded Spill
	sd	s2, 1152(sp)                    # 8-byte Folded Spill
	sd	s3, 1144(sp)                    # 8-byte Folded Spill
	sd	s4, 1136(sp)                    # 8-byte Folded Spill
	sd	s5, 1128(sp)                    # 8-byte Folded Spill
	sd	s6, 1120(sp)                    # 8-byte Folded Spill
	sd	s7, 1112(sp)                    # 8-byte Folded Spill
	sd	s8, 1104(sp)                    # 8-byte Folded Spill
	sd	s9, 1096(sp)                    # 8-byte Folded Spill
	sd	s10, 1088(sp)                   # 8-byte Folded Spill
	sd	s11, 1080(sp)                   # 8-byte Folded Spill
	lui	a0, %hi(enc_picture)
	ld	s1, %lo(enc_picture)(a0)
	lui	a0, 2
	addiw	a0, a0, -1768
	add	a0, s1, a0
	lui	a1, %hi(img)
	ld	s10, %lo(img)(a1)
	ld	a1, 0(a0)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	lui	a1, 22
	addiw	a1, a1, 192
	add	a1, s10, a1
	lw	a2, 244(a1)
	lw	a1, 0(a1)
	beqz	a2, .LBB0_19
# %bb.1:
	blez	a1, .LBB0_28
# %bb.2:                                # %.preheader3
	li	a2, 0
	ld	a0, 40(a0)
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	addi	a1, a0, 256
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 8
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s11, 22
	lui	s6, %hi(img)
	addiw	s9, s11, 444
	j	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	add	a0, s10, s11
	lw	a0, 192(a0)
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	addiw	a1, a2, 2
	addi	a2, a2, 2
	bge	a1, a0, .LBB0_28
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a0, a0, a1
	ld	a0, -1720(a0)
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	add	a0, a0, a2
	lbu	a0, 0(a0)
	beqz	a0, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, 32(sp)                      # 8-byte Folded Reload
	addi	a1, sp, 52
	addi	a2, sp, 48
	call	get_mb_pos
	lw	s1, 48(sp)
	lw	s3, 52(sp)
	slli	s7, s1, 3
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	add	s8, s8, s7
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	add	s10, s10, s7
	addi	s0, sp, 56
	slli	s5, s3, 1
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 0(s8)
	add	a1, a1, s5
	li	a2, 32
	mv	a0, s0
	call	memcpy
	addi	s8, s8, 8
	addi	s0, s0, 32
	bne	s8, s10, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	s7, a0, s7
	addi	s0, sp, 568
	addi	s2, sp, 1080
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, -8(s7)
	add	a0, a0, s5
	addi	a1, s0, -512
	li	a2, 32
	call	memcpy
	ld	a0, 0(s7)
	add	a0, a0, s5
	li	a2, 32
	mv	a1, s0
	call	memcpy
	addi	s0, s0, 32
	addi	s7, s7, 16
	bne	s0, s2, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	ld	s10, %lo(img)(s6)
	add	a0, s10, s9
	lw	a1, 0(a0)
	li	a2, 16
	divw	a1, a2, a1
	divw	a1, s3, a1
	sw	a1, 52(sp)
	lw	a1, 4(a0)
	li	a0, 0
	divw	a1, a2, a1
	divw	a1, s1, a1
	sw	a1, 48(sp)
	li	s7, 1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=2
	andi	a1, s7, 1
	li	a0, 1
	li	s7, 0
	beqz	a1, .LBB0_3
.LBB0_11:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
	add	s5, s10, s9
	lw	a1, 4(s5)
	blez	a1, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	slliw	a1, a1, 1
	bgtz	a1, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=2
	li	a1, 1
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=2
	slli	a0, a0, 3
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	add	s3, s3, a0
	lw	s0, 0(s5)
	lw	a0, 48(sp)
	ld	a2, 0(s3)
	lw	s4, 52(sp)
	slli	s0, s0, 1
	slli	a0, a0, 3
	add	s8, a2, a0
	slli	a1, a1, 3
	add	a0, a2, a0
	add	s2, a0, a1
	addi	s1, sp, 56
	slli	s4, s4, 1
.LBB0_15:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 0(s8)
	add	a1, a1, s4
	mv	a0, s1
	mv	a2, s0
	call	memcpy
	addi	s8, s8, 8
	addi	s1, s1, 32
	bne	s8, s2, .LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=2
	lw	a0, 4(s5)
	blez	a0, .LBB0_10
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=2
	li	s1, 0
	li	s5, 0
	addi	s0, sp, 56
	li	s8, 1
	addi	s2, sp, 56
.LBB0_18:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 48(sp)
	ld	a1, 0(s3)
	add	a0, s8, a0
	addiw	a0, a0, -1
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	lw	a1, 52(sp)
	add	s10, s10, s11
	lw	a2, 444(s10)
	slli	a1, a1, 1
	add	a0, a0, a1
	slli	a2, a2, 1
	mv	a1, s0
	call	memcpy
	lw	a0, 48(sp)
	ld	a1, 0(s3)
	addw	a0, s8, a0
	slli	a0, a0, 3
	ld	a2, %lo(img)(s6)
	add	a0, a1, a0
	lw	a1, 52(sp)
	ld	a0, 0(a0)
	add	a2, a2, s9
	lw	a3, 4(a2)
	slli	a1, a1, 1
	add	a0, a0, a1
	lw	a2, 0(a2)
	addw	a3, s1, a3
	slli	a1, a3, 5
	add	a1, s2, a1
	slli	a2, a2, 1
	call	memcpy
	ld	s10, %lo(img)(s6)
	add	a0, s10, s11
	lw	a0, 448(a0)
	addi	s5, s5, 1
	addi	s1, s1, 1
	addi	s0, s0, 32
	addi	s8, s8, 2
	blt	s5, a0, .LBB0_18
	j	.LBB0_10
.LBB0_19:
	blez	a1, .LBB0_28
# %bb.20:                               # %.preheader
	li	s5, 0
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	addi	s11, s3, 256
	addi	s3, s3, 8
	addi	s6, sp, 1080
	lui	s7, 2
	lui	s8, 22
	j	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=1
	add	a0, s10, s8
	lw	a0, 192(a0)
	addiw	a1, s5, 2
	addi	s5, s5, 2
	bge	a1, a0, .LBB0_28
.LBB0_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_26 Depth 2
	add	a0, s1, s7
	ld	a0, -1720(a0)
	add	a0, a0, s5
	lbu	a0, 0(a0)
	beqz	a0, .LBB0_21
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	sext.w	a0, s5
	addi	a1, sp, 52
	addi	a2, sp, 48
	call	get_mb_pos
	lw	s9, 48(sp)
	lw	s10, 52(sp)
	lui	a0, %hi(enc_picture)
	ld	s1, %lo(enc_picture)(a0)
	slli	s9, s9, 3
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	add	s4, s4, s9
	add	s2, s11, s9
	addi	s0, sp, 56
	slli	s10, s10, 1
.LBB0_24:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 0(s4)
	add	a1, a1, s10
	li	a2, 32
	mv	a0, s0
	call	memcpy
	addi	s4, s4, 8
	addi	s0, s0, 32
	bne	s4, s2, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_22 Depth=1
	add	s4, s3, s9
	addi	s0, sp, 568
.LBB0_26:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, -8(s4)
	add	a0, a0, s10
	addi	a1, s0, -512
	li	a2, 32
	call	memcpy
	ld	a0, 0(s4)
	add	a0, a0, s10
	li	a2, 32
	mv	a1, s0
	call	memcpy
	addi	s0, s0, 32
	addi	s4, s4, 16
	bne	s0, s6, .LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_22 Depth=1
	lui	a0, %hi(img)
	ld	s10, %lo(img)(a0)
	j	.LBB0_21
.LBB0_28:
	ld	ra, 1176(sp)                    # 8-byte Folded Reload
	ld	s0, 1168(sp)                    # 8-byte Folded Reload
	ld	s1, 1160(sp)                    # 8-byte Folded Reload
	ld	s2, 1152(sp)                    # 8-byte Folded Reload
	ld	s3, 1144(sp)                    # 8-byte Folded Reload
	ld	s4, 1136(sp)                    # 8-byte Folded Reload
	ld	s5, 1128(sp)                    # 8-byte Folded Reload
	ld	s6, 1120(sp)                    # 8-byte Folded Reload
	ld	s7, 1112(sp)                    # 8-byte Folded Reload
	ld	s8, 1104(sp)                    # 8-byte Folded Reload
	ld	s9, 1096(sp)                    # 8-byte Folded Reload
	ld	s10, 1088(sp)                   # 8-byte Folded Reload
	ld	s11, 1080(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1184
	ret
.Lfunc_end0:
	.size	MbAffPostProc, .Lfunc_end0-MbAffPostProc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	code_a_picture                  # -- Begin function code_a_picture
	.p2align	2
	.type	code_a_picture,@function
code_a_picture:                         # @code_a_picture
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 0(a1)
	lui	a3, %hi(start_frame_no_in_this_IGOP)
	lw	a3, %lo(start_frame_no_in_this_IGOP)(a3)
	mv	s0, a0
	lui	a0, 8
	add	a0, a1, a0
	sd	s0, -1208(a0)
	bne	a2, a3, .LBB1_2
# %bb.1:
	lw	a2, 28(a1)
	li	a3, 2
	li	a0, 1
	bne	a2, a3, .LBB1_6
.LBB1_2:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1236(a0)
	beqz	a0, .LBB1_6
# %bb.3:
	lw	a0, 24(a1)
	addiw	a0, a0, -2
	li	a2, 2
	bltu	a2, a0, .LBB1_5
# %bb.4:
	lw	a0, 28(a1)
	addi	a0, a0, -2
	snez	a0, a0
	j	.LBB1_6
.LBB1_5:
	li	a0, 0
.LBB1_6:
	sw	a0, 4(s0)
	sw	zero, 0(s0)
	sw	zero, 812(s0)
	sd	zero, 816(s0)
	call	RandomIntraNewPicture
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	s2, 22
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lui	a2, %hi(active_sps)
	ld	a2, %lo(active_sps)(a2)
	add	a3, a0, s2
	li	a4, 1
	sw	a4, 364(a3)
	call	FmoInit
	call	FmoStartPicture
	call	CalculateQuantParam
	call	CalculateOffsetParam
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	beqz	a0, .LBB1_8
# %bb.7:
	call	CalculateQuant8Param
	call	CalculateOffset8Param
.LBB1_8:
	call	reset_pic_bin_count
	ld	a0, %lo(img)(s1)
	addiw	a1, s2, 192
	add	a0, a0, a1
	lw	a1, 0(a0)
	sw	zero, 288(a0)
	beqz	a1, .LBB1_13
# %bb.9:                                # %.preheader2
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(img)
	lui	s4, %hi(stats)
	lui	s5, 22
	j	.LBB1_11
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	mv	a0, s1
	mv	a1, s0
	mv	a2, s2
	call	encode_one_slice
	ld	a1, %lo(img)(s3)
	lw	a1, 12(a1)
	addw	s2, a0, s2
	mv	a0, a1
	call	FmoSetLastMacroblockInSlice
	ld	a0, %lo(img)(s3)
	lw	a1, 20(a0)
	ld	a2, %lo(stats)(s4)
	addi	a1, a1, 1
	sw	a1, 20(a0)
	sw	zero, 24(a2)
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s1
	call	FmoSliceGroupCompletelyCoded
	beqz	a0, .LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	ld	a0, %lo(img)(s3)
	add	a0, a0, s5
	lw	a0, 192(a0)
	addiw	s1, s1, 1
	bltu	s2, a0, .LBB1_11
.LBB1_13:
	call	FmoEndPicture
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a2, 1089(a1)
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	li	a3, 3
	bne	a2, a3, .LBB1_19
# %bb.14:
	lw	a2, 24(a0)
	li	a3, 1
	beq	a2, a3, .LBB1_19
# %bb.15:
	lw	a1, 1529(a1)
	blez	a1, .LBB1_19
# %bb.16:                               # %.preheader
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(img)
	lui	s4, %hi(decs)
	lui	s5, %hi(input)
.LBB1_17:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(decs)(s4)
	ld	a1, 24(a0)
	ld	a0, %lo(img)(s3)
	add	a1, a1, s1
	ld	a1, 0(a1)
	li	a2, 0
	call	DeblockFrame
	ld	a0, %lo(input)(s5)
	addi	a0, a0, 2047
	lw	a0, 1529(a0)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB1_17
# %bb.18:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB1_19:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a2, 2
	addiw	a2, a2, -1768
	add	a2, a1, a2
	ld	a1, 0(a2)
	ld	a2, 40(a2)
	call	DeblockFrame
	ld	a0, %lo(img)(s0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 108(a0)
	beqz	a0, .LBB1_21
# %bb.20:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	MbAffPostProc
.LBB1_21:
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
	.size	code_a_picture, .Lfunc_end1-code_a_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function encode_one_frame
.LCPI2_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI2_1:
	.quad	6148914691236517206             # 0x5555555555555556
.LCPI2_2:
	.quad	0x4008000000000000              # double 3
.LCPI2_3:
	.quad	0x3fe5c28f5c28f5c3              # double 0.68000000000000005
.LCPI2_4:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	encode_one_frame
	.p2align	2
	.type	encode_one_frame,@function
encode_one_frame:                       # @encode_one_frame
# %bb.0:
	addi	sp, sp, -272
	sd	ra, 264(sp)                     # 8-byte Folded Spill
	sd	s0, 256(sp)                     # 8-byte Folded Spill
	sd	s1, 248(sp)                     # 8-byte Folded Spill
	sd	s2, 240(sp)                     # 8-byte Folded Spill
	sd	s3, 232(sp)                     # 8-byte Folded Spill
	sd	s4, 224(sp)                     # 8-byte Folded Spill
	sd	s5, 216(sp)                     # 8-byte Folded Spill
	sd	s6, 208(sp)                     # 8-byte Folded Spill
	sd	s7, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	sd	s10, 176(sp)                    # 8-byte Folded Spill
	sd	s11, 168(sp)                    # 8-byte Folded Spill
	fsd	fs0, 160(sp)                    # 8-byte Folded Spill
	fsd	fs1, 152(sp)                    # 8-byte Folded Spill
	fsd	fs2, 144(sp)                    # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	a1, %hi(me_time)
	sw	zero, %lo(me_time)(a1)
	lui	s0, 22
	add	a0, a0, s0
	sw	zero, -900(a0)
	lui	a0, %hi(enc_frame_picture)
	sd	zero, %lo(enc_frame_picture)(a0)
	lui	a0, %hi(enc_frame_picture2)
	sd	zero, %lo(enc_frame_picture2)(a0)
	lui	a0, %hi(enc_frame_picture3)
	sd	zero, %lo(enc_frame_picture3)(a0)
	addi	a0, sp, 112
	call	ftime
	addi	a0, sp, 136
	call	time
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	ld	a1, %lo(img)(s1)
	lw	a0, 60(a0)
	add	a2, a1, s0
	sw	zero, 336(a2)
	beqz	a0, .LBB2_3
# %bb.1:
	lw	a0, 0(a1)
	beqz	a0, .LBB2_3
# %bb.2:
	li	a0, 0
	li	a1, 0
	call	write_PPS
	lui	a1, %hi(stats)
	ld	a2, %lo(stats)(a1)
	lw	a3, 1496(a2)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 1500(a2)
	add	a0, a3, a0
	sw	a0, 1496(a2)
.LBB2_3:
	addiw	a0, s0, -912
	add	a0, a1, a0
	lui	a2, %hi(imgY_org_frm)
	ld	a2, %lo(imgY_org_frm)(a2)
	lui	a3, %hi(imgUV_org_frm)
	ld	a3, %lo(imgUV_org_frm)(a3)
	lui	a4, %hi(imgY_org)
	sd	a2, %lo(imgY_org)(a4)
	lui	a2, %hi(imgUV_org)
	sd	a3, %lo(imgUV_org)(a2)
	lui	a2, %hi(last_P_no_frm)
	ld	a5, %lo(last_P_no_frm)(a2)
	lui	a2, %hi(last_P_no)
	lui	a3, %hi(stats)
	ld	a3, %lo(stats)(a3)
	sd	a5, %lo(last_P_no)(a2)
	sw	zero, 12(a1)
	sw	zero, 20(a1)
	sw	zero, 24(a3)
	sw	zero, 96(a1)
	lw	a2, 52(a1)
	sd	zero, 136(a1)
	sd	zero, 144(a1)
	sd	zero, 152(a1)
	slli	a3, a2, 1
	lw	a4, 60(a1)
	srli	a3, a3, 60
	add	a2, a2, a3
	sraiw	a3, a2, 4
	slli	a2, a4, 1
	srli	a2, a2, 60
	add	a2, a4, a2
	sraiw	a2, a2, 4
	mulw	a4, a2, a3
	sd	zero, 160(a1)
	blez	a4, .LBB2_6
# %bb.4:
	lui	a3, 8
	addiw	a3, a3, -1192
	add	a3, a1, a3
	ld	a3, 0(a3)
	addi	a3, a3, 4
	li	a6, 528
	mul	a4, a4, a6
	add	a4, a3, a4
	li	a6, -1
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	sw	a6, 0(a3)
	addi	a3, a3, 528
	bne	a3, a4, .LBB2_5
.LBB2_6:
	lw	a3, 116(a0)
	beqz	a3, .LBB2_17
# %bb.7:
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	lw	a3, 20(a2)
	addi	a3, a3, 1
	sw	a3, 112(a0)
	lw	a4, 0(a1)
	lui	a6, %hi(start_frame_no_in_this_IGOP)
	lw	a7, %lo(start_frame_no_in_this_IGOP)(a6)
	lui	a6, %hi(start_tr_in_this_IGOP)
	lw	a6, %lo(start_tr_in_this_IGOP)(a6)
	subw	a7, a4, a7
	addi	a4, a7, -1
	mul	a4, a4, a3
	add	a4, a4, a6
	sw	a4, 0(a5)
	lw	t0, 992(a0)
	mul	a7, a7, a3
	li	t1, 2
	addi	a3, a2, 2047
	blt	t0, t1, .LBB2_10
# %bb.8:
	lw	t0, 0(a5)
	addi	a5, a5, 4
	li	t1, 1
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	lw	t2, 112(a0)
	subw	t0, t0, t2
	sw	t0, 0(a5)
	lw	t2, 992(a0)
	addi	t1, t1, 1
	addi	a5, a5, 4
	blt	t1, t2, .LBB2_9
.LBB2_10:
	lw	t0, 1065(a3)
	addw	a5, a7, a6
	beqz	t0, .LBB2_13
# %bb.11:
	lw	a6, 0(a1)
	lw	a7, 8(a2)
	addiw	a6, a6, 1
	bne	a6, a7, .LBB2_13
# %bb.12:
	subw	a5, t0, a4
	sw	a5, 112(a0)
	mv	a5, t0
.LBB2_13:
	lw	a6, 20(a2)
	addi	a6, a6, 1
	lw	a7, 1244(a2)
	lui	t0, %hi(.LCPI2_0)
	fld	fa5, %lo(.LCPI2_0)(t0)
	fcvt.d.w	fa4, a6
	lw	a6, 1944(a2)
	fcvt.d.w	fa3, a7
	fadd.d	fa5, fa3, fa5
	fdiv.d	fa5, fa4, fa5
	fsd	fa5, 104(a0)
	beqz	a6, .LBB2_26
# %bb.14:
	li	a7, 3
	bne	a6, a7, .LBB2_16
# %bb.15:
	lui	a6, %hi(.LCPI2_0)
	fld	fa5, %lo(.LCPI2_0)(a6)
	li	a6, 1023
	slli	a6, a6, 52
	sd	a6, 104(a0)
.LBB2_16:
	lui	a7, %hi(gop_structure)
	lw	a6, 116(a0)
	ld	a7, %lo(gop_structure)(a7)
	li	t0, 24
	mul	t0, a6, t0
	add	a7, a7, t0
	lw	t0, -20(a7)
	li	a7, 0
	addi	t0, t0, 1
	j	.LBB2_27
.LBB2_17:
	lw	a7, 0(a1)
	lui	a3, %hi(input)
	ld	a4, %lo(input)(a3)
	lui	a3, %hi(start_frame_no_in_this_IGOP)
	lw	a3, %lo(start_frame_no_in_this_IGOP)(a3)
	lui	a5, %hi(start_tr_in_this_IGOP)
	lw	t0, 20(a4)
	lw	a5, %lo(start_tr_in_this_IGOP)(a5)
	subw	t1, a7, a3
	addi	a6, a4, 2047
	addi	t0, t0, 1
	mul	t1, t0, t1
	lw	t2, 84(a0)
	lw	t0, 1065(a6)
	addw	a5, t1, a5
	sw	a5, 0(a0)
	sw	t2, 88(a0)
	sw	a5, 84(a0)
	beqz	t0, .LBB2_20
# %bb.18:
	lw	t1, 8(a4)
	addiw	t2, a7, 1
	bne	t2, t1, .LBB2_20
# %bb.19:
	sw	t0, 0(a0)
	mv	a5, t0
.LBB2_20:
	addi	a6, a6, 1065
	beq	a7, a3, .LBB2_23
# %bb.21:
	lw	a7, 1244(a4)
	beqz	a7, .LBB2_23
# %bb.22:
	lui	a7, %hi(nextP_tr_frm)
	sw	a5, %lo(nextP_tr_frm)(a7)
.LBB2_23:
	lw	a7, 796(a6)
	beqz	a7, .LBB2_125
.LBB2_24:
	lw	a5, 88(a1)
	lw	a4, 80(a4)
	sw	a5, 92(a1)
	blez	a4, .LBB2_39
# %bb.25:
	lw	a5, 0(a1)
	subw	a5, a5, a3
	divw	a3, a5, a4
	remw	a2, a3, a2
	sw	a2, 88(a1)
	j	.LBB2_39
.LBB2_26:
	lw	t0, 116(a0)
	li	a7, 1
	mv	a6, t0
.LBB2_27:
	fcvt.d.w	fa4, t0
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	t0, fa5, rtz
	addw	a4, a4, t0
	blt	a4, a5, .LBB2_29
# %bb.28:
	addiw	a4, a5, -1
.LBB2_29:
	lw	a5, 1861(a3)
	sw	a4, 0(a0)
	beqz	a5, .LBB2_31
# %bb.30:
	bnez	a7, .LBB2_39
	j	.LBB2_38
.LBB2_31:
	beqz	a7, .LBB2_38
# %bb.32:
	lw	a5, 1077(a3)
	blez	a5, .LBB2_153
# %bb.33:
	slli	a6, a5, 1
	blt	a4, a5, .LBB2_35
# %bb.34:
	lw	a7, 1296(a2)
	beqz	a7, .LBB2_37
.LBB2_35:
	remw	a7, a4, a6
	blt	a7, a5, .LBB2_146
# %bb.36:
	lw	a7, 1296(a2)
	li	t0, 1
	bne	a7, t0, .LBB2_146
.LBB2_37:
	lw	a7, 1073(a3)
	j	.LBB2_147
.LBB2_38:
	lui	a2, %hi(gop_structure)
	ld	a2, %lo(gop_structure)(a2)
	li	a3, 24
	mul	a3, a6, a3
	add	a2, a2, a3
	lw	a2, -12(a2)
	sw	a2, 40(a1)
.LBB2_39:
	lw	a0, 1000(a0)
	call	UpdateSubseqInfo
	li	a3, -1
	li	a0, 0
	li	a1, 0
	li	a2, 0
	call	UpdateSceneInformation
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a0, 22
	addiw	a0, a0, -808
	add	a0, a2, a0
	lw	a3, 12(a0)
	sw	zero, 1020(a0)
	sw	zero, 1024(a0)
	sd	zero, 1032(a0)
	lui	a1, %hi(input)
	beqz	a3, .LBB2_107
# %bb.40:
	ld	a1, %lo(input)(a1)
	lui	a4, %hi(start_frame_no_in_this_IGOP)
	lw	a4, %lo(start_frame_no_in_this_IGOP)(a4)
	lw	a2, 0(a2)
	lw	a5, 1944(a1)
	not	a4, a4
	add	a2, a2, a4
	lw	a4, 20(a1)
	lui	a6, %hi(start_tr_in_this_IGOP)
	lw	a6, %lo(start_tr_in_this_IGOP)(a6)
	fld	fa5, 0(a0)
	addi	a4, a4, 1
	mul	a2, a4, a2
	add	a2, a2, a6
	beqz	a5, .LBB2_42
# %bb.41:
	lui	a4, %hi(gop_structure)
	ld	a4, %lo(gop_structure)(a4)
	li	a5, 24
	mul	a3, a3, a5
	add	a3, a4, a3
	lw	a3, -20(a3)
	addi	a3, a3, 1
.LBB2_42:
	fcvt.d.w	fa4, a3
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	a3, fa5, rtz
	addw	a3, a2, a3
.LBB2_43:
	lui	a2, %hi(frame_no)
	sw	a3, %lo(frame_no)(a2)
	mv	s10, a3
.LBB2_44:
	addi	a2, a1, 2047
	lw	a3, 1937(a2)
	li	a4, 1
	bne	a3, a4, .LBB2_46
# %bb.45:
	lw	a3, 76(a1)
	addi	a3, a3, -3
	seqz	a3, a3
	j	.LBB2_47
.LBB2_46:
	li	a3, 0
.LBB2_47:
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	lui	a3, %hi(p_in)
	lw	s8, %lo(p_in)(a3)
	li	a3, -1
	bne	s8, a3, .LBB2_48
	j	.LBB2_397
.LBB2_48:
	lw	a0, 1176(a0)
	slli	a3, a0, 1
	srli	a3, a3, 61
	lw	a4, 1933(a2)
	lw	a2, 1929(a2)
	lw	s6, 68(a1)
	lw	s7, 72(a1)
	add	a0, a0, a3
	sraiw	s3, a0, 3
	mv	s2, a4
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	mul	a0, a2, a4
	mul	a2, s7, s6
	mulw	s5, a0, s3
	mulw	s4, a2, s3
	lw	s9, 224(a1)
	slli	s1, s5, 1
	slli	a0, s4, 32
	srli	a0, a0, 32
	call	malloc
	mv	s0, a0
	bnez	a0, .LBB2_50
# %bb.49:
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	call	no_mem_exit
	lui	a0, %hi(p_in)
	lw	s8, %lo(p_in)(a0)
.LBB2_50:
	addw	s11, s1, s4
	mv	a0, s8
	mv	a1, s9
	li	a2, 0
	call	lseek64
	beq	a0, s9, .LBB2_52
# %bb.51:
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	li	a1, -1
	call	error
.LBB2_52:
	lui	s8, %hi(input)
	ld	a0, %lo(input)(s8)
	lui	s9, %hi(p_in)
	lw	a1, 1240(a0)
	lw	a0, %lo(p_in)(s9)
	mul	a1, a1, s11
	li	a2, 1
	call	lseek64
	li	s1, -1
	bne	a0, s1, .LBB2_54
# %bb.53:
	ld	a0, %lo(input)(s8)
	lw	a3, 1240(a0)
	lui	s8, %hi(errortext)
	addi	s8, s8, %lo(errortext)
	lui	a2, %hi(.L.str.31)
	addi	a2, a2, %lo(.L.str.31)
	li	a1, 300
	mv	a0, s8
	call	snprintf
	li	a1, -1
	mv	a0, s8
	call	error
.LBB2_54:
	lw	a0, %lo(p_in)(s9)
	mul	a1, s11, s10
	li	a2, 1
	call	lseek64
	bne	a0, s1, .LBB2_56
# %bb.55:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1240(a0)
	addw	a3, a0, s10
	lui	s8, %hi(errortext)
	addi	s8, s8, %lo(errortext)
	lui	a2, %hi(.L.str.31)
	addi	a2, a2, %lo(.L.str.31)
	li	a1, 300
	mv	a0, s8
	call	snprintf
	li	a1, -1
	mv	a0, s8
	call	error
.LBB2_56:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lbu	a0, 368(a0)
	andi	a0, a0, 7
	beqz	a0, .LBB2_57
	j	.LBB2_398
.LBB2_57:
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	mv	s8, s2
	beqz	s1, .LBB2_59
# %bb.58:
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	lui	a1, 349525
	addiw	a1, a1, 1366
	mul	a1, s11, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	addw	a1, a1, a2
	li	a2, 1
	call	lseek64
.LBB2_59:
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	mv	a1, s0
	mv	a2, s4
	call	read
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	beq	a0, s4, .LBB2_60
	j	.LBB2_396
.LBB2_60:
	lui	a0, %hi(imgY_org_frm)
	ld	a0, %lo(imgY_org_frm)(a0)
	mv	a1, s0
	mv	a2, s6
	mv	a3, s7
	mv	a4, s3
	call	buf2img
	lui	s7, %hi(img)
	ld	a0, %lo(img)(s7)
	lui	s6, 22
	add	a0, a0, s6
	lw	a0, 436(a0)
	beqz	a0, .LBB2_67
# %bb.61:
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	mv	a1, s0
	mv	a2, s5
	call	read
	beq	a0, s5, .LBB2_62
	j	.LBB2_396
.LBB2_62:
	lui	a0, %hi(imgUV_org_frm)
	ld	a0, %lo(imgUV_org_frm)(a0)
	ld	a0, 0(a0)
	mv	a1, s0
	mv	a2, s8
	mv	a3, s2
	mv	a4, s3
	call	buf2img
	beqz	s1, .LBB2_64
# %bb.63:
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	neg	a1, s11
	li	a2, 1
	call	lseek64
.LBB2_64:
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	mv	a1, s0
	mv	a2, s5
	call	read
	beq	a0, s5, .LBB2_65
	j	.LBB2_396
.LBB2_65:
	lui	a0, %hi(imgUV_org_frm)
	ld	a0, %lo(imgUV_org_frm)(a0)
	ld	a0, 8(a0)
	mv	a1, s0
	mv	a2, s8
	mv	a3, s2
	mv	a4, s3
	call	buf2img
	beqz	s1, .LBB2_67
# %bb.66:
	lui	a0, %hi(.LCPI2_1)
	ld	a1, %lo(.LCPI2_1)(a0)
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	slli	s11, s11, 1
	mulh	a1, s11, a1
	srli	a2, a1, 63
	add	a1, a1, a2
	li	a2, 1
	call	lseek64
.LBB2_67:
	mv	a0, s0
	call	free
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	ld	a1, %lo(img)(s7)
	addi	a2, a0, 2047
	addi	a2, a2, 1553
	lw	t0, 72(a0)
	lwu	t3, 52(a1)
	lw	t1, 60(a1)
	lw	a7, 380(a2)
	lw	a3, 376(a2)
	lwu	a6, 56(a1)
	lw	a4, 64(a1)
	addiw	a5, s6, -720
	sext.w	t2, t3
	blez	t0, .LBB2_73
# %bb.68:
	lw	t4, 68(a0)
	lui	t5, %hi(imgY_org_frm)
	ld	t5, %lo(imgY_org_frm)(t5)
	li	t6, 0
	slli	s0, t4, 1
	sub	s1, t2, t4
	j	.LBB2_70
.LBB2_69:                               #   in Loop: Header=BB2_70 Depth=1
	addi	t6, t6, 1
	beq	t6, t0, .LBB2_73
.LBB2_70:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_72 Depth 2
	bge	t4, t2, .LBB2_69
# %bb.71:                               #   in Loop: Header=BB2_70 Depth=1
	slli	s2, t6, 3
	add	s2, t5, s2
	ld	s2, 0(s2)
	add	s2, s2, s0
	lhu	s3, -2(s2)
	mv	s4, s1
.LBB2_72:                               #   Parent Loop BB2_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sh	s3, 0(s2)
	addi	s4, s4, -1
	addi	s2, s2, 2
	bnez	s4, .LBB2_72
	j	.LBB2_69
.LBB2_73:
	add	a5, a1, a5
	bge	t0, t1, .LBB2_79
# %bb.74:
	lui	t4, %hi(imgY_org_frm)
	ld	t4, %lo(imgY_org_frm)(t4)
	slli	t3, t3, 1
	j	.LBB2_76
.LBB2_75:                               #   in Loop: Header=BB2_76 Depth=1
	addi	t0, t0, 1
	beq	t0, t1, .LBB2_79
.LBB2_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_78 Depth 2
	blez	t2, .LBB2_75
# %bb.77:                               #   in Loop: Header=BB2_76 Depth=1
	slli	t5, t0, 3
	add	t6, t4, t5
	ld	t5, 0(t6)
	ld	t6, -8(t6)
	add	s0, t5, t3
.LBB2_78:                               #   Parent Loop BB2_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	s1, 0(t6)
	sh	s1, 0(t5)
	addi	t5, t5, 2
	addi	t6, t6, 2
	bne	t5, s0, .LBB2_78
	j	.LBB2_75
.LBB2_79:
	lw	t0, 1156(a5)
	beqz	t0, .LBB2_96
# %bb.80:
	sext.w	t0, a6
	blez	a3, .LBB2_90
# %bb.81:
	li	t1, 0
	lui	t2, %hi(imgUV_org_frm)
	ld	t2, %lo(imgUV_org_frm)(t2)
	slli	t3, a7, 1
	addi	t4, t3, -2
	slli	t5, t0, 1
	j	.LBB2_83
.LBB2_82:                               #   in Loop: Header=BB2_83 Depth=1
	addi	t1, t1, 1
	beq	t1, a3, .LBB2_90
.LBB2_83:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_89 Depth 2
                                        #     Child Loop BB2_87 Depth 2
	bge	a7, t0, .LBB2_82
# %bb.84:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t6, 0(t2)
	ld	s1, 8(t2)
	slli	s2, t1, 3
	add	t6, t6, s2
	ld	s0, 0(t6)
	add	s1, s1, s2
	ld	s2, 0(s1)
	add	s1, s0, t4
	add	t6, s2, t5
	add	s3, s2, t4
	bgeu	s1, t6, .LBB2_88
# %bb.85:                               #   in Loop: Header=BB2_83 Depth=1
	add	s4, s0, t5
	bgeu	s3, s4, .LBB2_88
# %bb.86:                               # %.preheader
                                        #   in Loop: Header=BB2_83 Depth=1
	add	s2, s2, t3
	add	s0, s0, t3
.LBB2_87:                               #   Parent Loop BB2_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	s1, -2(s0)
	sh	s1, 0(s0)
	lh	s1, -2(s2)
	sh	s1, 0(s2)
	addi	s2, s2, 2
	addi	s0, s0, 2
	bne	s2, t6, .LBB2_87
	j	.LBB2_82
.LBB2_88:                               #   in Loop: Header=BB2_83 Depth=1
	lhu	s1, 0(s1)
	lhu	s3, 0(s3)
	add	s2, s2, t3
	add	s0, s0, t3
.LBB2_89:                               #   Parent Loop BB2_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sh	s1, 0(s0)
	sh	s3, 0(s2)
	addi	s2, s2, 2
	addi	s0, s0, 2
	bne	s2, t6, .LBB2_89
	j	.LBB2_82
.LBB2_90:
	bge	a3, a4, .LBB2_96
# %bb.91:
	lui	a7, %hi(imgUV_org_frm)
	ld	a7, %lo(imgUV_org_frm)(a7)
	slli	a6, a6, 1
	j	.LBB2_93
.LBB2_92:                               #   in Loop: Header=BB2_93 Depth=1
	addi	a3, a3, 1
	beq	a3, a4, .LBB2_96
.LBB2_93:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_95 Depth 2
	blez	t0, .LBB2_92
# %bb.94:                               #   in Loop: Header=BB2_93 Depth=1
	ld	t2, 0(a7)
	slli	t3, a3, 3
	addi	t4, t3, -8
	add	t1, t2, t4
	ld	t5, 8(a7)
	ld	t1, 0(t1)
	add	t2, t2, t3
	ld	t2, 0(t2)
	add	t4, t5, t4
	add	t3, t5, t3
	ld	t3, 0(t3)
	ld	t4, 0(t4)
	add	t5, t3, a6
.LBB2_95:                               #   Parent Loop BB2_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	t6, 0(t1)
	sh	t6, 0(t2)
	lh	t6, 0(t4)
	sh	t6, 0(t3)
	addi	t3, t3, 2
	addi	t4, t4, 2
	addi	t2, t2, 2
	addi	t1, t1, 2
	bne	t3, t5, .LBB2_95
	j	.LBB2_92
.LBB2_96:
	lw	a3, 1256(a0)
	sw	a3, 12(a5)
	ld	a3, 0(a2)
	sd	a3, 0(a5)
	lw	a3, 8(a2)
	lw	a2, 660(a2)
	lw	a4, 24(a1)
	sw	a3, 8(a5)
	sw	a2, 820(a5)
	slli	a4, a4, 2
	lui	s1, %hi(frame_ctr)
	addi	s1, s1, %lo(frame_ctr)
	add	a4, s1, a4
	lw	a2, 0(a4)
	lui	a3, %hi(snr)
	ld	a3, %lo(snr)(a3)
	addi	a2, a2, 1
	sw	a2, 0(a4)
	lw	a2, 120(a3)
	lw	a1, 24(a1)
	addi	a2, a2, 1
	li	a4, 3
	sw	a2, 120(a3)
	bne	a1, a4, .LBB2_99
# %bb.97:
	lw	a1, 1296(a0)
	beqz	a1, .LBB2_100
# %bb.98:
	lui	a0, %hi(sp2_frame_indicator)
	li	a1, 1
	sw	a1, %lo(sp2_frame_indicator)(a0)
	call	read_SP_coefficients
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	j	.LBB2_100
.LBB2_99:
	lui	a1, %hi(sp2_frame_indicator)
	sw	zero, %lo(sp2_frame_indicator)(a1)
.LBB2_100:
	addi	a0, a0, 2047
	lw	a3, 1505(a0)
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lui	s3, 22
	addiw	a2, s3, 152
	li	s0, 1
	add	a2, a1, a2
	bne	a3, s0, .LBB2_102
# %bb.101:
	lui	a0, %hi(top_pic)
	ld	a0, %lo(top_pic)(a0)
	lui	a1, %hi(bottom_pic)
	ld	a1, %lo(bottom_pic)(a1)
	sw	s0, 160(a2)
	sw	s0, 0(a2)
	call	field_picture
	ld	a0, %lo(img)(s2)
	add	s3, a0, s3
	sw	s0, -904(s3)
	j	.LBB2_212
.LBB2_102:
	lw	a3, 1509(a0)
	sw	zero, 160(a2)
	beqz	a3, .LBB2_109
# %bb.103:
	lui	a3, %hi(mb_adaptive)
	li	a4, 1
	sw	a4, %lo(mb_adaptive)(a3)
	lw	a3, 1861(a0)
	sw	zero, 0(a2)
	beqz	a3, .LBB2_112
# %bb.104:
	lw	a0, 1873(a0)
	lw	a3, 168(a2)
	bge	a0, a3, .LBB2_111
# %bb.105:
	lw	a1, 24(a1)
	bnez	a1, .LBB2_111
# %bb.106:
	lw	a1, 172(a2)
	seqz	a1, a1
	sllw	a0, a0, a1
	j	.LBB2_111
.LBB2_107:
	ld	a1, %lo(input)(a1)
	lw	a3, 0(a2)
	lui	a4, %hi(start_frame_no_in_this_IGOP)
	lw	a4, %lo(start_frame_no_in_this_IGOP)(a4)
	lw	a5, 20(a1)
	lui	a6, %hi(start_tr_in_this_IGOP)
	lw	a6, %lo(start_tr_in_this_IGOP)(a6)
	subw	a4, a3, a4
	addi	a5, a5, 1
	addi	a3, a1, 2047
	lw	a3, 1065(a3)
	mul	a4, a5, a4
	addw	s10, a4, a6
	lui	a4, %hi(frame_no)
	sw	s10, %lo(frame_no)(a4)
	beqz	a3, .LBB2_44
# %bb.108:
	lw	a2, 0(a2)
	lw	a4, 8(a1)
	addiw	a2, a2, 1
	beq	a2, a4, .LBB2_43
	j	.LBB2_44
.LBB2_109:
	lw	a3, 1861(a0)
	sw	zero, 0(a2)
	beqz	a3, .LBB2_112
# %bb.110:
	lw	a0, 1873(a0)
.LBB2_111:
	sw	a0, 180(a2)
	li	a0, 1
	li	a2, 1
	li	a1, 0
	call	rc_init_pict
	li	a0, 0
	call	updateQuantizationParameter
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 40(a1)
	lui	a0, %hi(QP)
	sw	zero, %lo(QP)(a0)
.LBB2_112:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB2_114
# %bb.113:
	lui	a0, 22
	add	a0, a1, a0
	sw	zero, 308(a0)
.LBB2_114:
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	lw	a0, 64(a0)
	beqz	a0, .LBB2_116
# %bb.115:
	lui	a0, %hi(PicParSet)
	ld	a0, %lo(PicParSet)(a0)
	lui	a1, %hi(active_pps)
	sd	a0, %lo(active_pps)(a1)
.LBB2_116:
	lui	a0, %hi(frame_pic_1)
	ld	a0, %lo(frame_pic_1)(a0)
	li	a1, 0
	call	frame_picture
	ld	a0, %lo(input)(s0)
	lw	a2, 1920(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	bnez	a2, .LBB2_118
# %bb.117:
	lw	a2, 24(a1)
	li	a3, 2
	beq	a2, a3, .LBB2_195
.LBB2_118:
	lw	a2, 1916(a0)
	beqz	a2, .LBB2_195
# %bb.119:
	lw	s0, 40(a1)
	lui	a2, %hi(intras)
	lw	s3, 24(a1)
	lw	s2, %lo(intras)(a2)
	li	a2, 2
	beq	s3, a2, .LBB2_123
# %bb.120:
	lw	a0, 64(a0)
	beqz	a0, .LBB2_123
# %bb.121:
	beqz	s3, .LBB2_159
# %bb.122:
	lui	a0, %hi(PicParSet+16)
	ld	a0, %lo(PicParSet+16)(a0)
	lui	a2, %hi(active_pps)
	sd	a0, %lo(active_pps)(a2)
	mv	s4, s0
	j	.LBB2_140
.LBB2_123:
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 100(a0)
	beqz	a0, .LBB2_139
# %bb.124:
	mv	s4, s0
	j	.LBB2_140
.LBB2_125:
	lw	t0, 24(a1)
	lw	a7, 12(a6)
	li	t1, 2
	bne	t0, t1, .LBB2_132
# %bb.126:
	blez	a7, .LBB2_143
# %bb.127:
	blt	a5, a7, .LBB2_129
# %bb.128:
	lw	t0, 1296(a4)
	beqz	t0, .LBB2_131
.LBB2_129:
	slli	t0, a7, 1
	remw	a5, a5, t0
	blt	a5, a7, .LBB2_143
# %bb.130:
	lw	a5, 1296(a4)
	li	a7, 1
	bne	a5, a7, .LBB2_143
.LBB2_131:
	lw	a5, 16(a6)
	sw	a5, 40(a1)
	j	.LBB2_24
.LBB2_132:
	blez	a7, .LBB2_144
# %bb.133:
	blt	a5, a7, .LBB2_135
# %bb.134:
	lw	t1, 1296(a4)
	beqz	t1, .LBB2_137
.LBB2_135:
	slli	t1, a7, 1
	remw	t1, a5, t1
	blt	t1, a7, .LBB2_144
# %bb.136:
	lw	t1, 1296(a4)
	li	t2, 1
	bne	t1, t2, .LBB2_144
.LBB2_137:
	lw	t2, 1116(a0)
	lw	t1, 4(a6)
	bnez	t2, .LBB2_138
	j	.LBB2_390
.LBB2_138:
	li	t2, 0
	j	.LBB2_391
.LBB2_139:
	addi	s4, s0, -1
	sw	s4, 40(a1)
.LBB2_140:
	lui	a0, %hi(active_pps)
	ld	s5, %lo(active_pps)(a0)
	lui	a0, 22
	add	a0, a1, a0
	sw	zero, 336(a0)
.LBB2_141:
	lui	s6, %hi(frame_pic_2)
	ld	a0, %lo(frame_pic_2)(s6)
	li	a1, 1
	call	frame_picture
	lui	a0, %hi(frame_pic_1)
	ld	a0, %lo(frame_pic_1)(a0)
	ld	a1, %lo(frame_pic_2)(s6)
	mv	a2, s0
	call	picture_coding_decision
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a2, a1, a2
	sw	a0, -900(a2)
	beqz	a0, .LBB2_167
# %bb.142:
	lui	a0, %hi(intras)
	lw	s2, %lo(intras)(a0)
	lw	a2, 24(a1)
	li	a0, 0
	lui	a3, %hi(frame_pic_2)
	addi	a3, a3, %lo(frame_pic_2)
	j	.LBB2_172
.LBB2_143:
	lw	a5, 12(a4)
	sw	a5, 40(a1)
	j	.LBB2_24
.LBB2_144:
	lw	t2, 1116(a0)
	lw	t1, 16(a4)
	beqz	t2, .LBB2_161
# %bb.145:
	add	t1, zero, t1
	li	t2, 3
	sw	t1, 40(a1)
	bne	t0, t2, .LBB2_24
	j	.LBB2_162
.LBB2_146:
	lw	a7, 1248(a2)
.LBB2_147:
	lw	t0, 1116(a0)
	sw	a7, 40(a1)
	beqz	t0, .LBB2_39
# %bb.148:
	blt	a4, a5, .LBB2_150
# %bb.149:
	lw	a7, 1296(a2)
	beqz	a7, .LBB2_152
.LBB2_150:
	remw	a4, a4, a6
	blt	a4, a5, .LBB2_154
# %bb.151:
	lw	a4, 1296(a2)
	li	a5, 1
	bne	a4, a5, .LBB2_154
.LBB2_152:
	lw	a2, 1073(a3)
	lw	a3, 1085(a3)
	lw	a4, 1292(a0)
	addw	a2, a3, a2
	li	a5, 51
	negw	a3, a4
	mv	a4, a2
	blt	a2, a5, .LBB2_156
	j	.LBB2_155
.LBB2_153:
	lw	a3, 1248(a2)
	lw	a4, 1116(a0)
	sw	a3, 40(a1)
	beqz	a4, .LBB2_39
.LBB2_154:
	lw	a3, 1248(a2)
	lw	a2, 1252(a2)
	lw	a4, 1292(a0)
	addw	a2, a2, a3
	li	a5, 51
	negw	a3, a4
	mv	a4, a2
	blt	a2, a5, .LBB2_156
.LBB2_155:
	li	a4, 51
.LBB2_156:
	blt	a2, a3, .LBB2_158
# %bb.157:
	mv	a3, a4
.LBB2_158:
	sw	a3, 40(a1)
	j	.LBB2_39
.LBB2_159:
	li	a0, 0
	call	test_wp_P_slice
	li	a1, 1
	bne	a0, a1, .LBB2_163
# %bb.160:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, %hi(PicParSet+8)
	ld	a0, %lo(PicParSet+8)(a0)
	lw	s4, 40(a1)
	lui	a2, %hi(active_pps)
	sd	a0, %lo(active_pps)(a2)
	j	.LBB2_140
.LBB2_161:
	lw	t2, 1212(a6)
	add	t1, t2, t1
	li	t2, 3
	sw	t1, 40(a1)
	bne	t0, t2, .LBB2_24
.LBB2_162:
	blez	a7, .LBB2_399
	j	.LBB2_392
.LBB2_399:
	j	.LBB2_393
.LBB2_163:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1924(a0)
	lui	a2, %hi(PicParSet)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	ld	s5, %lo(PicParSet)(a2)
	lui	a2, 22
	addiw	a2, a2, -900
	add	a2, a1, a2
	lw	a3, 1000(a2)
	lw	s4, 40(a1)
	lui	a4, %hi(active_pps)
	sd	s5, %lo(active_pps)(a4)
	bnez	a3, .LBB2_165
# %bb.164:
	addi	s4, s4, -1
	sw	s4, 40(a1)
.LBB2_165:
	sw	zero, 1236(a2)
	beqz	a0, .LBB2_141
# %bb.166:
	sw	zero, 0(a2)
	lui	a2, %hi(enc_frame_picture2)
	sd	zero, %lo(enc_frame_picture2)(a2)
.LBB2_167:
	lui	a2, %hi(enc_frame_picture)
	ld	a3, %lo(enc_frame_picture)(a2)
	lw	a2, 24(a1)
	lui	a4, %hi(enc_picture)
	li	a5, 2
	sd	a3, %lo(enc_picture)(a4)
	beq	a2, a5, .LBB2_170
# %bb.168:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	lw	a3, 64(a3)
	beqz	a3, .LBB2_170
# %bb.169:
	lui	a3, %hi(PicParSet)
	ld	a3, %lo(PicParSet)(a3)
	sw	s0, 40(a1)
	lui	a4, %hi(active_pps)
	sd	a3, %lo(active_pps)(a4)
	j	.LBB2_171
.LBB2_170:
	sw	s0, 40(a1)
.LBB2_171:
	lui	a3, %hi(intras)
	sw	s2, %lo(intras)(a3)
	lui	a3, %hi(frame_pic_1)
	addi	a3, a3, %lo(frame_pic_1)
.LBB2_172:
	lui	a4, 22
	addiw	a4, a4, 100
	ld	a5, 0(a3)
	add	a3, a1, a4
	lui	a4, %hi(frame_pic)
	li	a6, 2
	sd	a5, %lo(frame_pic)(a4)
	beq	a2, a6, .LBB2_177
# %bb.173:
	lui	a4, %hi(input)
	ld	a4, %lo(input)(a4)
	lw	a4, 64(a4)
	beqz	a4, .LBB2_177
# %bb.174:
	sw	s0, 40(a1)
	beqz	a2, .LBB2_184
# %bb.175:
	li	a0, 0
	call	test_wp_B_slice
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	li	a2, 1
	beq	a0, a2, .LBB2_189
# %bb.176:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 204(a2)
	lw	a0, 1932(a0)
	seqz	a2, a2
	addi	a2, a2, -1
	ori	a2, a2, 1
	add	a2, a2, s0
	j	.LBB2_179
.LBB2_177:
	lui	a2, %hi(PicParSet)
	ld	a2, %lo(PicParSet)(a2)
	lw	a3, 0(a3)
	lui	a4, %hi(active_pps)
	sd	a2, %lo(active_pps)(a4)
	bnez	a3, .LBB2_180
# %bb.178:
	addi	a2, s0, 1
.LBB2_179:
	sw	a2, 40(a1)
.LBB2_180:
	lui	a2, 22
	addiw	a2, a2, -900
	add	a2, a1, a2
	sw	zero, 1236(a2)
	beqz	a0, .LBB2_191
# %bb.181:
	lw	a0, 0(a2)
	lui	a2, %hi(enc_frame_picture3)
	sd	zero, %lo(enc_frame_picture3)(a2)
	sw	s0, 40(a1)
	li	a2, 1
	beq	a0, a2, .LBB2_193
.LBB2_182:
	bnez	a0, .LBB2_195
# %bb.183:
	lui	a0, %hi(enc_frame_picture)
	ld	a0, %lo(enc_frame_picture)(a0)
	lui	a2, %hi(PicParSet)
	ld	s5, %lo(PicParSet)(a2)
	lui	a2, %hi(enc_picture)
	sd	a0, %lo(enc_picture)(a2)
	sw	s3, 24(a1)
	j	.LBB2_194
.LBB2_184:
	lw	a0, 96(a3)
	li	a2, 100
	mul	a2, s2, a2
	divuw	a0, a2, a0
	li	a2, 75
	bltu	a0, a2, .LBB2_187
# %bb.185:
	li	a0, 2
.LBB2_186:
	sw	a0, 24(a1)
	lui	a0, %hi(PicParSet)
	addi	a0, a0, %lo(PicParSet)
	j	.LBB2_190
.LBB2_187:
	li	a0, 1
	li	s6, 1
	call	test_wp_P_slice
	beq	a0, s6, .LBB2_188
	j	.LBB2_386
.LBB2_188:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
.LBB2_189:
	lui	a0, %hi(PicParSet+8)
	addi	a0, a0, %lo(PicParSet+8)
.LBB2_190:
	ld	a0, 0(a0)
	lui	a2, %hi(active_pps)
	sd	a0, %lo(active_pps)(a2)
	lui	a0, 22
	add	a0, a1, a0
	sw	zero, 336(a0)
.LBB2_191:
	lui	s8, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(s8)
	li	a1, 2
	call	frame_picture
	lui	s7, %hi(img)
	ld	a0, %lo(img)(s7)
	lui	s6, 22
	add	a0, a0, s6
	lw	a0, -900(a0)
	ld	a1, %lo(frame_pic_3)(s8)
	bnez	a0, .LBB2_192
	j	.LBB2_344
.LBB2_192:
	lui	a0, %hi(frame_pic_2)
	ld	a0, %lo(frame_pic_2)(a0)
	mv	a2, s0
	call	picture_coding_decision
	ld	a1, %lo(img)(s7)
	add	s6, a1, s6
	lw	a2, -900(s6)
	addw	a0, a2, a0
	sw	a0, -900(s6)
	li	a2, 1
	bne	a0, a2, .LBB2_182
.LBB2_193:
	lui	a0, %hi(enc_frame_picture2)
	ld	a0, %lo(enc_frame_picture2)(a0)
	lui	a2, %hi(enc_picture)
	sd	a0, %lo(enc_picture)(a2)
	sw	s3, 24(a1)
	mv	s0, s4
.LBB2_194:
	lui	a0, %hi(active_pps)
	sd	s5, %lo(active_pps)(a0)
	sw	s0, 40(a1)
	lui	a0, %hi(intras)
	sw	s2, %lo(intras)(a0)
.LBB2_195:
	lw	a1, 24(a1)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	li	s0, 3
	bne	a1, s0, .LBB2_199
# %bb.196:
	lui	a2, %hi(si_frame_indicator)
	lw	a2, %lo(si_frame_indicator)(a2)
	bnez	a2, .LBB2_199
# %bb.197:
	lw	a1, 1292(a0)
	beqz	a1, .LBB2_200
# %bb.198:
	lui	a0, %hi(frame_pic_2)
	ld	a0, %lo(frame_pic_2)(a0)
	lui	a1, %hi(si_frame_indicator)
	li	a2, 1
	sw	a2, %lo(si_frame_indicator)(a1)
	li	a1, 0
	call	frame_picture
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB2_199:
	bne	a1, s0, .LBB2_202
.LBB2_200:
	lw	a1, 1300(a0)
	beqz	a1, .LBB2_202
# %bb.201:
	call	output_SP_coefficients
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB2_202:
	addi	a0, a0, 2047
	lw	a1, 1509(a0)
	beqz	a1, .LBB2_204
# %bb.203:
	lui	a1, %hi(mb_adaptive)
	sw	zero, %lo(mb_adaptive)(a1)
.LBB2_204:
	lw	a1, 1505(a0)
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lui	s3, 22
	addiw	s2, s3, -904
	li	a3, 2
	add	a2, a0, s2
	bne	a1, a3, .LBB2_207
# %bb.205:
	sd	zero, 1240(a2)
	lui	s4, %hi(top_pic)
	ld	a0, %lo(top_pic)(s4)
	lui	s5, %hi(bottom_pic)
	ld	a1, %lo(bottom_pic)(s5)
	li	s6, 1
	sw	s6, 1216(a2)
	sw	s6, 1056(a2)
	call	field_picture
	ld	a1, %lo(img)(s0)
	addiw	a0, s3, -900
	add	a2, a1, a0
	lw	a0, 0(a2)
	lw	a2, 1288(a2)
	lw	a1, 40(a1)
	lui	a3, %hi(.LCPI2_2)
	fld	fa4, %lo(.LCPI2_2)(a3)
	fcvt.d.w	fa5, a2
	addi	a1, a1, -12
	fcvt.d.w	fa3, a1
	fdiv.d	fa4, fa3, fa4
	beq	a0, s6, .LBB2_208
# %bb.206:
	lui	a1, %hi(frame_pic_3)
	addi	a1, a1, %lo(frame_pic_3)
	ld	s4, %lo(top_pic)(s4)
	ld	s5, %lo(bottom_pic)(s5)
	fadd.d	fa0, fa4, fa5
	beqz	a0, .LBB2_209
	j	.LBB2_210
.LBB2_207:
	sw	zero, 0(a2)
	j	.LBB2_214
.LBB2_208:
	lui	a1, %hi(frame_pic_2)
	addi	a1, a1, %lo(frame_pic_2)
	ld	s4, %lo(top_pic)(s4)
	ld	s5, %lo(bottom_pic)(s5)
	fadd.d	fa0, fa4, fa5
	bnez	a0, .LBB2_210
.LBB2_209:
	lui	a1, %hi(frame_pic_1)
	addi	a1, a1, %lo(frame_pic_1)
.LBB2_210:
	ld	s6, 0(a1)
	call	exp2
	lui	a0, %hi(.LCPI2_3)
	fld	fa5, %lo(.LCPI2_3)(a0)
	flw	fa4, 812(s6)
	flw	fa3, 816(s6)
	flw	fa1, 820(s6)
	fmul.d	fa2, fa0, fa5
	fadd.s	fa5, fa4, fa3
	fadd.s	fa0, fa5, fa1
	flw	fa5, 812(s4)
	flw	fa4, 816(s4)
	flw	fa3, 820(s4)
	lw	a0, 808(s4)
	lw	a2, 808(s5)
	lw	a1, 808(s6)
	fadd.s	fa5, fa5, fa4
	fadd.s	fa1, fa5, fa3
	addw	a0, a2, a0
	call	decide_fld_frame
	ld	a1, %lo(img)(s0)
	add	a1, a1, s3
	sw	a0, -904(a1)
	call	update_field_frame_contexts
	ld	a0, %lo(img)(s0)
	add	s2, a0, s2
	lw	s0, 0(s2)
	beqz	s0, .LBB2_213
# %bb.211:
	sw	zero, 1220(s2)
.LBB2_212:
	lui	a1, %hi(stats)
	ld	a3, %lo(stats)(a1)
	li	a4, 0
	addi	a1, a3, 1480
	j	.LBB2_215
.LBB2_213:
	li	a1, 1
	sw	a1, 1220(s2)
.LBB2_214:
	lui	a1, %hi(stats)
	ld	a3, %lo(stats)(a1)
	li	s0, 0
	addi	a1, a3, 1476
	li	a4, 1
.LBB2_215:
	lui	a2, 22
	lw	a5, 0(a1)
	lw	a6, 28(a3)
	addiw	a2, a2, -908
	lw	a1, 24(a0)
	add	a2, a0, a2
	add	a5, a6, a5
	li	a6, 1
	sw	a5, 28(a3)
	beq	a1, a6, .LBB2_217
# %bb.216:
	sw	s0, 76(a2)
.LBB2_217:
	lui	a3, %hi(imgY_org_frm)
	ld	a5, %lo(imgY_org_frm)(a3)
	lui	a3, %hi(imgUV_org_frm)
	ld	a3, %lo(imgUV_org_frm)(a3)
	lui	a6, %hi(imgY_org)
	sd	a5, %lo(imgY_org)(a6)
	lui	a5, %hi(imgUV_org)
	sd	a3, %lo(imgUV_org)(a5)
	beqz	a4, .LBB2_225
# %bb.218:
	lui	a4, %hi(input)
	ld	a4, %lo(input)(a4)
	addi	a5, a4, 2047
	lw	a6, 1505(a5)
	bnez	a6, .LBB2_220
# %bb.219:
	lw	a5, 1509(a5)
	beqz	a5, .LBB2_221
.LBB2_220:
	lw	a5, 0(a0)
	slli	a6, a5, 1
	li	a7, 1
	sw	a7, 0(a2)
	slli	a5, a5, 33
	srli	a5, a5, 63
	or	a5, a5, a6
	addi	a5, a5, 1
	sraiw	a5, a5, 1
	sw	a5, 0(a0)
	lw	a5, 72(a4)
	lw	a6, 1376(a2)
	lw	a7, 68(a0)
	lui	t0, %hi(snr)
	ld	t0, %lo(snr)(t0)
	add	a5, a6, a5
	sw	a5, 60(a0)
	sw	a7, 64(a0)
	sw	zero, 0(t0)
	sw	zero, 4(t0)
	sw	zero, 8(t0)
	lui	a0, %hi(imgUV_org)
	sd	a3, %lo(imgUV_org)(a0)
.LBB2_221:
	lw	a0, 1916(a4)
	beqz	a0, .LBB2_226
# %bb.222:
	lw	a0, 8(a2)
	li	a2, 1
	beq	a0, a2, .LBB2_266
# %bb.223:
	li	a2, 2
	bne	a0, a2, .LBB2_226
# %bb.224:
	lui	a0, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(a0)
	call	writeout_picture
	lui	a0, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(a0)
	bnez	a0, .LBB2_230
	j	.LBB2_231
.LBB2_225:
	lui	a0, %hi(snr)
	ld	a1, %lo(snr)(a0)
	lui	a0, %hi(top_pic)
	ld	a0, %lo(top_pic)(a0)
	sw	zero, 0(a1)
	sw	zero, 4(a1)
	sw	zero, 8(a1)
	call	writeout_picture
	lui	a0, %hi(bottom_pic)
	ld	a0, %lo(bottom_pic)(a0)
	call	writeout_picture
	lui	a0, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(a0)
	bnez	a0, .LBB2_230
	j	.LBB2_231
.LBB2_226:
	li	a0, 3
	bne	a1, a0, .LBB2_229
# %bb.227:
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	li	a1, 1
	bne	a0, a1, .LBB2_229
# %bb.228:
	lui	a0, %hi(frame_pic_2)
	ld	a0, %lo(frame_pic_2)(a0)
	call	writeout_picture
	lui	a0, %hi(si_frame_indicator)
	sw	zero, %lo(si_frame_indicator)(a0)
	lui	a0, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(a0)
	bnez	a0, .LBB2_230
	j	.LBB2_231
.LBB2_229:
	lui	a0, %hi(frame_pic_1)
	ld	a0, %lo(frame_pic_1)(a0)
	call	writeout_picture
	lui	a0, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(a0)
	beqz	a0, .LBB2_231
.LBB2_230:
	call	free_slice_list
.LBB2_231:
	lui	a0, %hi(frame_pic_2)
	ld	a0, %lo(frame_pic_2)(a0)
	beqz	a0, .LBB2_233
# %bb.232:
	call	free_slice_list
.LBB2_233:
	lui	a0, %hi(frame_pic_1)
	ld	a0, %lo(frame_pic_1)(a0)
	beqz	a0, .LBB2_235
# %bb.234:
	call	free_slice_list
.LBB2_235:
	lui	a0, %hi(top_pic)
	ld	a0, %lo(top_pic)(a0)
	beqz	a0, .LBB2_237
# %bb.236:
	call	free_slice_list
.LBB2_237:
	lui	a0, %hi(bottom_pic)
	ld	a0, %lo(bottom_pic)(a0)
	beqz	a0, .LBB2_239
# %bb.238:
	call	free_slice_list
.LBB2_239:
	lui	s2, %hi(input)
	ld	a1, %lo(input)(s2)
	addi	a0, a1, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB2_248
# %bb.240:
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a1, 16(a0)
	lw	a0, 20(a0)
	subw	s0, a1, a0
	mv	a0, s0
	call	rc_update_pict_frame
	ld	a1, %lo(input)(s2)
	addi	a4, a1, 2047
	lw	a0, 1857(a4)
	beqz	a0, .LBB2_249
.LBB2_241:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a0, 22
	addiw	a0, a0, -928
	add	a2, a2, a0
	lw	a0, 1348(a2)
	mul	a0, a0, a0
	lw	s2, 1352(a2)
	lwu	t1, 72(a1)
	lw	a6, 68(a1)
	lwu	s3, 1929(a4)
	lw	a5, 24(a2)
	lw	s4, 1933(a4)
	sext.w	a7, t1
	mul	a1, a6, t1
	sext.w	a3, s3
	beqz	a5, .LBB2_250
# %bb.242:
	blez	a6, .LBB2_258
# %bb.243:
	lui	a4, %hi(imgY_org)
	lui	a5, %hi(imgY_com)
	ld	a5, %lo(imgY_com)(a5)
	ld	t0, %lo(imgY_org)(a4)
	li	t2, 0
	li	a4, 0
	slli	t1, t1, 3
	add	t1, a5, t1
	j	.LBB2_245
.LBB2_244:                              #   in Loop: Header=BB2_245 Depth=1
	addi	t2, t2, 1
	beq	t2, a6, .LBB2_259
.LBB2_245:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_247 Depth 2
	blez	a7, .LBB2_244
# %bb.246:                              #   in Loop: Header=BB2_245 Depth=1
	ld	t3, 0(a2)
	slli	t4, t2, 1
	mv	t5, t0
	mv	t6, a5
.LBB2_247:                              #   Parent Loop BB2_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s5, 0(t5)
	ld	s6, 0(t6)
	add	s5, s5, t4
	lhu	s5, 0(s5)
	add	s6, s6, t4
	lhu	s6, 0(s6)
	sub	s5, s5, s6
	slli	s5, s5, 2
	add	s5, t3, s5
	lw	s5, 0(s5)
	add	a4, a4, s5
	addi	t6, t6, 8
	addi	t5, t5, 8
	bne	t6, t1, .LBB2_247
	j	.LBB2_244
.LBB2_248:
	li	s0, 0
	addi	a4, a1, 2047
	lw	a0, 1857(a4)
	bnez	a0, .LBB2_241
.LBB2_249:
	lui	a0, %hi(snr)
	ld	a0, %lo(snr)(a0)
	sw	zero, 0(a0)
	sw	zero, 4(a0)
	sw	zero, 8(a0)
	sw	zero, 96(a0)
	sw	zero, 100(a0)
	sw	zero, 104(a0)
	j	.LBB2_282
.LBB2_250:
	lui	a5, %hi(imgY_org_frm)
	ld	t0, %lo(imgY_org_frm)(a5)
	lui	t2, %hi(imgY_org)
	lui	a5, %hi(imgUV_org_frm)
	ld	a5, %lo(imgUV_org_frm)(a5)
	lw	a4, 1505(a4)
	sd	t0, %lo(imgY_org)(t2)
	lui	t2, %hi(imgUV_org)
	li	t3, 2
	sd	a5, %lo(imgUV_org)(t2)
	bne	a4, t3, .LBB2_252
# %bb.251:
	lui	a4, %hi(enc_frame_picture)
	ld	a4, %lo(enc_frame_picture)(a4)
	lui	t2, %hi(enc_picture)
	sd	a4, %lo(enc_picture)(t2)
.LBB2_252:
	blez	a6, .LBB2_267
# %bb.253:
	lui	a4, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a4)
	li	t2, 0
	li	a4, 0
	lui	t4, 2
	addiw	t4, t4, -1768
	add	t3, t3, t4
	slli	t1, t1, 3
	j	.LBB2_255
.LBB2_254:                              #   in Loop: Header=BB2_255 Depth=1
	addi	t2, t2, 1
	beq	t2, a6, .LBB2_268
.LBB2_255:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_257 Depth 2
	blez	a7, .LBB2_254
# %bb.256:                              #   in Loop: Header=BB2_255 Depth=1
	ld	t4, 0(t3)
	ld	t5, 0(a2)
	add	t6, t4, t1
	slli	s5, t2, 1
	mv	s6, t0
.LBB2_257:                              #   Parent Loop BB2_255 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s7, 0(s6)
	ld	s8, 0(t4)
	add	s7, s7, s5
	lhu	s7, 0(s7)
	add	s8, s8, s5
	lhu	s8, 0(s8)
	sub	s7, s7, s8
	slli	s7, s7, 2
	add	s7, t5, s7
	lw	s7, 0(s7)
	add	a4, a4, s7
	addi	t4, t4, 8
	addi	s6, s6, 8
	bne	t4, t6, .LBB2_257
	j	.LBB2_254
.LBB2_258:
	li	a4, 0
.LBB2_259:
	lw	a5, 1364(a2)
	li	s5, 0
	beqz	a5, .LBB2_275
# %bb.260:
	blez	s4, .LBB2_275
# %bb.261:
	lui	a5, %hi(imgUV_org)
	ld	a5, %lo(imgUV_org)(a5)
	lui	a6, %hi(imgUV_com)
	ld	a6, %lo(imgUV_com)(a6)
	li	a7, 0
	li	s6, 0
	li	s5, 0
	slli	t0, s3, 3
	j	.LBB2_263
.LBB2_262:                              #   in Loop: Header=BB2_263 Depth=1
	addi	a7, a7, 1
	beq	a7, s4, .LBB2_276
.LBB2_263:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_265 Depth 2
	blez	a3, .LBB2_262
# %bb.264:                              #   in Loop: Header=BB2_263 Depth=1
	ld	t1, 0(a2)
	ld	t2, 0(a5)
	ld	t3, 8(a6)
	ld	t4, 0(a6)
	ld	t5, 8(a5)
	add	t6, t3, t0
	slli	s7, a7, 1
.LBB2_265:                              #   Parent Loop BB2_263 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s8, 0(t2)
	ld	s9, 0(t4)
	add	s8, s8, s7
	lhu	s8, 0(s8)
	ld	s10, 0(t5)
	add	s9, s9, s7
	ld	s11, 0(t3)
	lhu	s9, 0(s9)
	add	s10, s10, s7
	lhu	s10, 0(s10)
	add	s11, s11, s7
	lhu	s11, 0(s11)
	sub	s8, s8, s9
	sub	s9, s10, s11
	slli	s8, s8, 2
	add	s8, t1, s8
	lw	s8, 0(s8)
	slli	s9, s9, 2
	add	s9, t1, s9
	lw	s9, 0(s9)
	add	s6, s6, s8
	add	s5, s5, s9
	addi	t3, t3, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	addi	t2, t2, 8
	bne	t3, t6, .LBB2_265
	j	.LBB2_262
.LBB2_266:
	lui	a0, %hi(frame_pic_2)
	ld	a0, %lo(frame_pic_2)(a0)
	call	writeout_picture
	lui	a0, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(a0)
	bnez	a0, .LBB2_230
	j	.LBB2_231
.LBB2_267:
	li	a4, 0
.LBB2_268:
	lw	a6, 1364(a2)
	li	s5, 0
	beqz	a6, .LBB2_275
# %bb.269:
	blez	s4, .LBB2_275
# %bb.270:
	lui	a6, %hi(enc_picture)
	ld	a7, %lo(enc_picture)(a6)
	li	a6, 0
	li	s6, 0
	li	s5, 0
	lui	t0, 2
	addiw	t0, t0, -1728
	add	a7, a7, t0
	slli	t0, s3, 3
	j	.LBB2_272
.LBB2_271:                              #   in Loop: Header=BB2_272 Depth=1
	addi	a6, a6, 1
	beq	a6, s4, .LBB2_276
.LBB2_272:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_274 Depth 2
	blez	a3, .LBB2_271
# %bb.273:                              #   in Loop: Header=BB2_272 Depth=1
	ld	t4, 0(a7)
	ld	t1, 0(a2)
	ld	t2, 0(a5)
	ld	t3, 8(t4)
	ld	t4, 0(t4)
	ld	t5, 8(a5)
	add	t6, t3, t0
	slli	s7, a6, 1
.LBB2_274:                              #   Parent Loop BB2_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s8, 0(t2)
	ld	s9, 0(t4)
	add	s8, s8, s7
	lhu	s8, 0(s8)
	ld	s10, 0(t5)
	add	s9, s9, s7
	ld	s11, 0(t3)
	lhu	s9, 0(s9)
	add	s10, s10, s7
	lhu	s10, 0(s10)
	add	s11, s11, s7
	lhu	s11, 0(s11)
	sub	s8, s8, s9
	sub	s9, s10, s11
	slli	s8, s8, 2
	add	s8, t1, s8
	lw	s8, 0(s8)
	slli	s9, s9, 2
	add	s9, t1, s9
	lw	s9, 0(s9)
	add	s6, s6, s8
	add	s5, s5, s9
	addi	t3, t3, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	addi	t2, t2, 8
	bne	t3, t6, .LBB2_274
	j	.LBB2_271
.LBB2_275:
	mv	s6, s5
.LBB2_276:
	lui	s9, %hi(snr)
	ld	a2, %lo(snr)(s9)
	fcvt.s.l	fa5, a4
	fsw	fa5, 96(a2)
	fcvt.s.l	fa5, s6
	fsw	fa5, 100(a2)
	fcvt.s.l	fa5, s5
	fsw	fa5, 104(a2)
	seqz	a2, a4
	add	a2, a4, a2
	fcvt.d.wu	fa5, a0
	fcvt.d.w	fa4, a1
	fcvt.d.l	fa3, a2
	fdiv.d	fa4, fa4, fa3
	fmul.d	fa0, fa4, fa5
	call	log10
	lui	a0, %hi(.LCPI2_4)
	lui	s10, %hi(img)
	ld	s8, %lo(img)(s10)
	fld	fs0, %lo(.LCPI2_4)(a0)
	ld	s7, %lo(snr)(s9)
	lui	a0, 22
	add	a0, s8, a0
	lw	a0, 436(a0)
	fmul.d	fa5, fa0, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 0(s7)
	beqz	a0, .LBB2_279
# %bb.277:
	mul	a0, s2, s2
	mul	a1, s4, s3
	seqz	a2, s5
	add	s5, s5, a2
	seqz	a2, s6
	add	a2, s6, a2
	fcvt.d.wu	fs1, a0
	fcvt.d.w	fs2, a1
	fcvt.d.l	fa5, a2
	fdiv.d	fa5, fs2, fa5
	fmul.d	fa0, fa5, fs1
	call	log10
	ld	a0, %lo(snr)(s9)
	fmul.d	fa5, fa0, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 4(a0)
	fcvt.d.l	fa5, s5
	fdiv.d	fa5, fs2, fa5
	fmul.d	fa0, fa5, fs1
	call	log10
	ld	s7, %lo(snr)(s9)
	ld	s8, %lo(img)(s10)
	fmul.d	fa5, fa0, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 8(s7)
	lw	a0, 0(s8)
	beqz	a0, .LBB2_280
.LBB2_278:
	lw	a0, 120(s7)
	flw	fa4, 84(s7)
	flw	fs0, 0(s7)
	addi	a1, a0, -1
	fcvt.s.w	fa3, a1
	fmadd.s	fa4, fa4, fa3, fs0
	flw	fa2, 88(s7)
	flw	fa1, 4(s7)
	fcvt.s.w	fa0, a0
	fdiv.s	fa4, fa4, fa0
	fsw	fa4, 84(s7)
	fmadd.s	fa4, fa2, fa3, fa1
	fdiv.s	fa4, fa4, fa0
	flw	fa2, 92(s7)
	fsw	fa4, 88(s7)
	flw	fa4, 108(s7)
	flw	fa1, 96(s7)
	fmadd.s	fa5, fa2, fa3, fa5
	fdiv.s	fa5, fa5, fa0
	fsw	fa5, 92(s7)
	fmadd.s	fa5, fa4, fa3, fa1
	fdiv.s	fa5, fa5, fa0
	flw	fa4, 112(s7)
	flw	fa2, 100(s7)
	fsw	fa5, 108(s7)
	flw	fa5, 116(s7)
	flw	fa1, 104(s7)
	fmadd.s	fa4, fa4, fa3, fa2
	fdiv.s	fa4, fa4, fa0
	fsw	fa4, 112(s7)
	fmadd.s	fa5, fa5, fa3, fa1
	fdiv.s	fa5, fa5, fa0
	fsw	fa5, 116(s7)
	j	.LBB2_281
.LBB2_279:
	sw	zero, 4(s7)
	sw	zero, 8(s7)
	fmv.w.x	fa5, zero
	lw	a0, 0(s8)
	bnez	a0, .LBB2_278
.LBB2_280:
	flw	fa4, 4(s7)
	fsw	fa4, 16(s7)
	fsw	fa4, 88(s7)
	flw	fa4, 96(s7)
	flw	fs0, 0(s7)
	fsw	fa5, 20(s7)
	fsw	fa5, 92(s7)
	fsw	fa4, 108(s7)
	flw	fa5, 100(s7)
	flw	fa4, 104(s7)
	fsw	fs0, 12(s7)
	fsw	fs0, 84(s7)
	fsw	fa5, 112(s7)
	fsw	fa4, 116(s7)
	addi	a0, s7, 24
	li	a2, 60
	li	a1, 0
	call	memset
.LBB2_281:
	lw	a0, 24(s8)
	slli	a0, a0, 2
	add	s1, s1, a0
	lw	a1, 0(s1)
	add	a0, s7, a0
	flw	fa5, 24(a0)
	addi	a2, a1, -1
	fcvt.s.w	fa4, a2
	fmadd.s	fa5, fa5, fa4, fs0
	fcvt.s.w	fa3, a1
	fdiv.s	fa5, fa5, fa3
	fsw	fa5, 24(a0)
	flw	fa5, 44(a0)
	flw	fa2, 4(s7)
	fmadd.s	fa5, fa5, fa4, fa2
	fdiv.s	fa5, fa5, fa3
	fsw	fa5, 44(a0)
	flw	fa5, 64(a0)
	flw	fa2, 8(s7)
	fmadd.s	fa5, fa5, fa4, fa2
	fdiv.s	fa5, fa5, fa3
	fsw	fa5, 64(a0)
.LBB2_282:
	addi	a0, sp, 128
	call	time
	addi	a0, sp, 96
	call	ftime
	ld	a0, 128(sp)
	ld	a1, 136(sp)
	lhu	a2, 104(sp)
	lhu	a3, 120(sp)
	sub	a0, a0, a1
	li	a1, 1000
	mul	a0, a0, a1
	sub	a2, a2, a3
	lui	a1, %hi(tot_time)
	lw	a3, %lo(tot_time)(a1)
	lui	a4, %hi(input)
	ld	a4, %lo(input)(a4)
	addw	s1, a2, a0
	add	a3, a3, s1
	sw	a3, %lo(tot_time)(a1)
	addi	a0, a4, 2047
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 1505(a0)
	lui	a0, 22
	addiw	a0, a0, -904
	add	a0, a1, a0
	lw	a1, 0(a0)
	li	a3, 2
	bne	a2, a3, .LBB2_285
# %bb.283:
	beqz	a1, .LBB2_287
# %bb.284:
	lui	a0, %hi(enc_bottom_picture)
	ld	a0, %lo(enc_bottom_picture)(a0)
	call	store_picture_in_dpb
	lui	a0, %hi(enc_frame_picture)
	ld	a0, %lo(enc_frame_picture)(a0)
	j	.LBB2_294
.LBB2_285:
	beqz	a1, .LBB2_288
# %bb.286:
	lui	a0, %hi(enc_bottom_picture)
	ld	a0, %lo(enc_bottom_picture)(a0)
	call	store_picture_in_dpb
	j	.LBB2_295
.LBB2_287:
	lui	a0, %hi(enc_frame_picture)
	ld	a0, %lo(enc_frame_picture)(a0)
	call	replace_top_pic_with_frame
	lui	a0, %hi(enc_bottom_picture)
	ld	a0, %lo(enc_bottom_picture)(a0)
	j	.LBB2_294
.LBB2_288:
	lw	a0, 4(a0)
	li	a1, 1
	beq	a0, a1, .LBB2_291
# %bb.289:
	li	a1, 2
	bne	a0, a1, .LBB2_292
# %bb.290:
	lui	a0, %hi(enc_frame_picture3)
	ld	a0, %lo(enc_frame_picture3)(a0)
	call	store_picture_in_dpb
	lui	a0, %hi(enc_frame_picture)
	ld	a0, %lo(enc_frame_picture)(a0)
	call	free_storable_picture
	lui	a0, %hi(enc_frame_picture2)
	ld	a0, %lo(enc_frame_picture2)(a0)
	j	.LBB2_294
.LBB2_291:
	lui	a0, %hi(enc_frame_picture2)
	ld	a0, %lo(enc_frame_picture2)(a0)
	call	store_picture_in_dpb
	lui	a0, %hi(enc_frame_picture)
	ld	a0, %lo(enc_frame_picture)(a0)
	j	.LBB2_293
.LBB2_292:
	lui	a0, %hi(enc_frame_picture)
	ld	a0, %lo(enc_frame_picture)(a0)
	call	store_picture_in_dpb
	lui	a0, %hi(enc_frame_picture2)
	ld	a0, %lo(enc_frame_picture2)(a0)
.LBB2_293:
	call	free_storable_picture
	lui	a0, %hi(enc_frame_picture3)
	ld	a0, %lo(enc_frame_picture3)(a0)
.LBB2_294:
	call	free_storable_picture
.LBB2_295:
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a1, 16(a0)
	lw	a2, 20(a0)
	lui	a3, %hi(total_frame_buffer)
	ld	a4, %lo(total_frame_buffer)(a3)
	subw	a2, a1, a2
	slli	a1, a4, 3
	lui	a5, %hi(Bit_Buffer)
	addi	a5, a5, %lo(Bit_Buffer)
	lui	a6, %hi(img)
	ld	a6, %lo(img)(a6)
	add	a5, a5, a1
	lui	a1, 22
	addiw	a1, a1, 112
	add	a1, a6, a1
	lw	a6, 0(a1)
	sd	a2, 0(a5)
	addi	a4, a4, 1
	li	a2, 2
	sd	a4, %lo(total_frame_buffer)(a3)
	bne	a6, a2, .LBB2_300
# %bb.296:
	lw	a1, 92(a1)
	snez	a2, a1
	lui	a3, %hi(encode_one_frame.consecutive_non_reference_pictures)
	lw	a4, %lo(encode_one_frame.consecutive_non_reference_pictures)(a3)
	lui	s2, %hi(frame_no)
	lw	a1, %lo(frame_no)(s2)
	lui	a5, %hi(encode_one_frame.prev_frame_no)
	lw	a5, %lo(encode_one_frame.prev_frame_no)(a5)
	addiw	a4, a4, 1
	addi	a2, a2, -1
	and	a2, a2, a4
	sw	a2, %lo(encode_one_frame.consecutive_non_reference_pictures)(a3)
	blt	a1, a5, .LBB2_298
# %bb.297:
	li	a3, 2
	blt	a2, a3, .LBB2_299
.LBB2_298:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, -1
	call	error
	lw	a1, %lo(frame_no)(s2)
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
.LBB2_299:
	lui	a2, %hi(encode_one_frame.prev_frame_no)
	sw	a1, %lo(encode_one_frame.prev_frame_no)(a2)
.LBB2_300:
	lw	a2, 1500(a0)
	beqz	a2, .LBB2_303
# %bb.301:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1857(a0)
	beqz	a0, .LBB2_303
# %bb.302:
	lui	a0, %hi(frame_no)
	lw	a1, %lo(frame_no)(a0)
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	call	printf
.LBB2_303:
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lw	a1, 0(a4)
	lui	a0, %hi(start_frame_no_in_this_IGOP)
	lw	a2, %lo(start_frame_no_in_this_IGOP)(a0)
	lui	a0, 22
	addiw	a0, a0, -904
	add	a0, a4, a0
	bne	a1, a2, .LBB2_308
# %bb.304:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lui	a2, %hi(me_time)
	addi	a1, a1, 2047
	lw	a1, 1857(a1)
	lw	a7, %lo(me_time)(a2)
	li	a2, 2
	beq	a1, a2, .LBB2_311
# %bb.305:
	li	a2, 1
	bne	a1, a2, .LBB2_339
# %bb.306:
	lui	a1, %hi(stats)
	ld	a1, %lo(stats)(a1)
	lw	a2, 16(a1)
	lw	a1, 20(a1)
	lui	a3, %hi(snr)
	ld	a3, %lo(snr)(a3)
	subw	a2, a2, a1
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	flw	fa5, 0(a3)
	flw	fa4, 4(a3)
	flw	fa3, 8(a3)
	lw	a5, 0(a0)
	lw	a3, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a5, .LBB2_334
# %bb.307:
	lui	a4, %hi(.L.str.17)
	addi	a4, a4, %lo(.L.str.17)
	j	.LBB2_335
.LBB2_308:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a2, 1861(a1)
	beqz	a2, .LBB2_315
# %bb.309:
	lw	a2, 1505(a1)
	beqz	a2, .LBB2_313
# %bb.310:
	lui	a2, %hi(stats)
	ld	a2, %lo(stats)(a2)
	j	.LBB2_314
.LBB2_311:
	lui	a1, %hi(stats)
	ld	a1, %lo(stats)(a1)
	lw	a2, 16(a1)
	lw	a1, 20(a1)
	lui	a3, %hi(snr)
	ld	a3, %lo(snr)(a3)
	subw	a2, a2, a1
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	flw	fa5, 0(a3)
	flw	fa4, 4(a3)
	flw	fa3, 8(a3)
	lw	a3, 0(a0)
	lw	a4, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a3, .LBB2_336
# %bb.312:
	lui	a3, %hi(.L.str.17)
	addi	a3, a3, %lo(.L.str.17)
	j	.LBB2_337
.LBB2_313:
	lw	a3, 1509(a1)
	lui	a2, %hi(stats)
	ld	a2, %lo(stats)(a2)
	beqz	a3, .LBB2_345
.LBB2_314:
	lw	a2, 16(a2)
	lui	a3, %hi(Pprev_bits)
	lw	a5, %lo(Pprev_bits)(a3)
	subw	s0, a2, a5
	sw	a2, %lo(Pprev_bits)(a3)
.LBB2_315:
	lui	a2, %hi(stats)
	ld	a3, %lo(stats)(a2)
	lw	a6, 24(a4)
	lw	a2, 16(a3)
	lw	a5, 20(a3)
	li	a7, 1
	subw	a2, a2, a5
	beq	a6, a7, .LBB2_326
# %bb.316:
	li	a5, 3
	beq	a6, a5, .LBB2_322
# %bb.317:
	li	a5, 2
	bne	a6, a5, .LBB2_330
# %bb.318:
	lui	a6, 8
	addiw	t0, a6, -1208
	lw	t1, 712(a3)
	lui	a7, %hi(me_time)
	lw	a6, 1857(a1)
	lw	a7, %lo(me_time)(a7)
	add	a1, a4, t0
	add	t1, t1, a2
	sw	t1, 712(a3)
	beq	a6, a5, .LBB2_350
# %bb.319:
	li	a3, 1
	bne	a6, a3, .LBB2_378
# %bb.320:
	ld	a1, 0(a1)
	lui	a3, %hi(snr)
	ld	a3, %lo(snr)(a3)
	lw	a5, 4(a1)
	flw	fa5, 0(a3)
	flw	fa4, 4(a3)
	lw	a6, 0(a0)
	flw	fa3, 8(a3)
	lui	a1, %hi(frame_no)
	beqz	a6, .LBB2_360
# %bb.321:
	lui	a6, %hi(.L.str.17)
	addi	a6, a6, %lo(.L.str.17)
	j	.LBB2_361
.LBB2_322:
	lw	a5, 716(a3)
	lui	a6, %hi(me_time)
	lw	a1, 1857(a1)
	lw	a7, %lo(me_time)(a6)
	add	a5, a5, a2
	li	a6, 2
	sw	a5, 716(a3)
	beq	a1, a6, .LBB2_346
# %bb.323:
	li	a3, 1
	bne	a1, a3, .LBB2_378
# %bb.324:
	lui	a1, %hi(snr)
	ld	a3, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	flw	fa5, 0(a3)
	flw	fa4, 4(a3)
	flw	fa3, 8(a3)
	lw	a5, 0(a0)
	lw	a3, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a5, .LBB2_354
# %bb.325:
	lui	a4, %hi(.L.str.17)
	addi	a4, a4, %lo(.L.str.17)
	j	.LBB2_355
.LBB2_326:
	lw	a5, 720(a3)
	lui	a6, %hi(me_time)
	lw	a1, 1857(a1)
	lw	a7, %lo(me_time)(a6)
	add	a5, a5, a2
	li	a6, 2
	sw	a5, 720(a3)
	beq	a1, a6, .LBB2_348
# %bb.327:
	li	a3, 1
	bne	a1, a3, .LBB2_378
# %bb.328:
	lui	a1, %hi(snr)
	ld	a3, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	flw	fa5, 0(a3)
	flw	fa4, 4(a3)
	flw	fa3, 8(a3)
	lw	a5, 0(a0)
	lw	a3, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a5, .LBB2_358
# %bb.329:
	lui	a4, %hi(.L.str.17)
	addi	a4, a4, %lo(.L.str.17)
	j	.LBB2_359
.LBB2_330:
	lw	a6, 716(a3)
	lui	a7, %hi(me_time)
	lw	a1, 1857(a1)
	lw	a7, %lo(me_time)(a7)
	add	a6, a6, a2
	sw	a6, 716(a3)
	beq	a1, a5, .LBB2_352
# %bb.331:
	li	a3, 1
	bne	a1, a3, .LBB2_378
# %bb.332:
	lui	a1, %hi(snr)
	ld	a3, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	flw	fa5, 0(a3)
	flw	fa4, 4(a3)
	flw	fa3, 8(a3)
	lw	a5, 0(a0)
	lw	a3, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a5, .LBB2_363
# %bb.333:
	lui	a4, %hi(.L.str.17)
	addi	a4, a4, %lo(.L.str.17)
	j	.LBB2_364
.LBB2_334:
	lui	a4, %hi(.L.str.18)
	addi	a4, a4, %lo(.L.str.18)
.LBB2_335:
	lw	a0, 1108(a0)
	sd	a0, 16(sp)
	sd	a4, 8(sp)
	fmv.x.d	a4, fa5
	fmv.x.d	a5, fa4
	fmv.x.d	a6, fa3
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	sd	a7, 0(sp)
	mv	a7, s1
	j	.LBB2_338
.LBB2_336:
	lui	a3, %hi(.L.str.18)
	addi	a3, a3, %lo(.L.str.18)
.LBB2_337:
	lui	a5, %hi(intras)
	lw	a5, %lo(intras)(a5)
	lw	a6, 200(a0)
	lw	t0, 204(a0)
	lw	t1, 4(a0)
	lw	a0, 1108(a0)
	sd	a0, 56(sp)
	sd	t1, 48(sp)
	sd	t0, 40(sp)
	sd	a6, 32(sp)
	sd	a5, 24(sp)
	sd	a3, 16(sp)
	sd	a7, 8(sp)
	fmv.x.d	a5, fa5
	fmv.x.d	a6, fa4
	fmv.x.d	a7, fa3
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	sd	s1, 0(sp)
	li	a3, 0
.LBB2_338:
	call	printf
.LBB2_339:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1861(a0)
	beqz	a1, .LBB2_343
# %bb.340:
	lw	a1, 1505(a0)
	bnez	a1, .LBB2_342
# %bb.341:
	lw	a0, 1509(a0)
	beqz	a0, .LBB2_343
.LBB2_342:
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a0, 16(a0)
	lui	a1, %hi(Iprev_bits)
	sw	a0, %lo(Iprev_bits)(a1)
.LBB2_343:
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a1, 16(a0)
	sw	a1, 712(a0)
	sw	zero, 16(a0)
	j	.LBB2_378
.LBB2_344:
	lui	a0, %hi(frame_pic_1)
	ld	a0, %lo(frame_pic_1)(a0)
	mv	a2, s0
	call	picture_coding_decision
	ld	a1, %lo(img)(s7)
	slliw	a0, a0, 1
	add	s6, a1, s6
	sw	a0, -900(s6)
	li	a2, 1
	beq	a0, a2, .LBB2_400
	j	.LBB2_182
.LBB2_400:
	j	.LBB2_193
.LBB2_345:
	lw	a3, 16(a2)
	lw	a2, 20(a2)
	subw	s0, a3, a2
	j	.LBB2_315
.LBB2_346:
	lui	a1, %hi(active_pps)
	ld	a3, %lo(active_pps)(a1)
	lui	a1, %hi(snr)
	ld	a5, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	lw	a3, 192(a3)
	flw	fa5, 0(a5)
	flw	fa4, 4(a5)
	flw	fa3, 8(a5)
	lw	a5, 0(a0)
	lw	a4, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a5, .LBB2_356
# %bb.347:
	lui	a5, %hi(.L.str.17)
	addi	a5, a5, %lo(.L.str.17)
	j	.LBB2_357
.LBB2_348:
	lui	a1, %hi(active_pps)
	ld	a3, %lo(active_pps)(a1)
	lui	a1, %hi(snr)
	ld	a5, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	lw	a3, 196(a3)
	flw	fa5, 0(a5)
	flw	fa4, 4(a5)
	flw	fa3, 8(a5)
	lw	a5, 0(a0)
	lw	a4, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a5, .LBB2_365
# %bb.349:
	lui	a5, %hi(.L.str.17)
	addi	a5, a5, %lo(.L.str.17)
	j	.LBB2_366
.LBB2_350:
	ld	a1, 0(a1)
	lui	a3, %hi(snr)
	ld	a3, %lo(snr)(a3)
	lw	a5, 4(a1)
	flw	fa5, 0(a3)
	flw	fa4, 4(a3)
	lw	a6, 0(a0)
	flw	fa3, 8(a3)
	lui	a1, %hi(frame_no)
	beqz	a6, .LBB2_369
# %bb.351:
	lui	a3, %hi(.L.str.17)
	addi	a3, a3, %lo(.L.str.17)
	j	.LBB2_370
.LBB2_352:
	lui	a1, %hi(active_pps)
	ld	a3, %lo(active_pps)(a1)
	lui	a1, %hi(snr)
	ld	a5, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	lw	a3, 192(a3)
	flw	fa5, 0(a5)
	flw	fa4, 4(a5)
	flw	fa3, 8(a5)
	lw	a5, 0(a0)
	lw	a4, 40(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	beqz	a5, .LBB2_372
# %bb.353:
	lui	a5, %hi(.L.str.17)
	addi	a5, a5, %lo(.L.str.17)
	j	.LBB2_373
.LBB2_354:
	lui	a4, %hi(.L.str.18)
	addi	a4, a4, %lo(.L.str.18)
.LBB2_355:
	lw	a0, 1108(a0)
	sd	a0, 16(sp)
	sd	a4, 8(sp)
	fmv.x.d	a4, fa5
	fmv.x.d	a5, fa4
	fmv.x.d	a6, fa3
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	j	.LBB2_368
.LBB2_356:
	lui	a5, %hi(.L.str.18)
	addi	a5, a5, %lo(.L.str.18)
.LBB2_357:
	lui	a6, %hi(intras)
	lw	a6, %lo(intras)(a6)
	lw	t0, 200(a0)
	lw	t1, 204(a0)
	lw	t2, 4(a0)
	lw	a0, 1108(a0)
	sd	a0, 56(sp)
	sd	t2, 48(sp)
	sd	t1, 40(sp)
	sd	t0, 32(sp)
	sd	a6, 24(sp)
	sd	a5, 16(sp)
	sd	a7, 8(sp)
	fmv.x.d	a5, fa5
	fmv.x.d	a6, fa4
	fmv.x.d	a7, fa3
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	j	.LBB2_374
.LBB2_358:
	lui	a4, %hi(.L.str.18)
	addi	a4, a4, %lo(.L.str.18)
.LBB2_359:
	lw	a0, 1108(a0)
	sd	a0, 16(sp)
	sd	a4, 8(sp)
	fmv.x.d	a4, fa5
	fmv.x.d	a5, fa4
	fmv.x.d	a6, fa3
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	j	.LBB2_368
.LBB2_360:
	lui	a6, %hi(.L.str.18)
	addi	a6, a6, %lo(.L.str.18)
.LBB2_361:
	lw	a1, %lo(frame_no)(a1)
	lw	a3, 40(a4)
	fcvt.d.s	fa5, fa5
	lw	a0, 1108(a0)
	fcvt.d.s	fa4, fa4
	li	a4, 1
	fcvt.d.s	fa3, fa3
	bne	a5, a4, .LBB2_367
# %bb.362:
	sd	a0, 16(sp)
	sd	a6, 8(sp)
	fmv.x.d	a4, fa5
	fmv.x.d	a5, fa4
	fmv.x.d	a6, fa3
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	j	.LBB2_368
.LBB2_363:
	lui	a4, %hi(.L.str.18)
	addi	a4, a4, %lo(.L.str.18)
.LBB2_364:
	lw	a0, 1108(a0)
	sd	a0, 16(sp)
	sd	a4, 8(sp)
	fmv.x.d	a4, fa5
	fmv.x.d	a5, fa4
	fmv.x.d	a6, fa3
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	j	.LBB2_368
.LBB2_365:
	lui	a5, %hi(.L.str.18)
	addi	a5, a5, %lo(.L.str.18)
.LBB2_366:
	lui	a6, %hi(intras)
	lw	a6, %lo(intras)(a6)
	lw	t0, 196(a0)
	lw	t1, 200(a0)
	lw	t2, 204(a0)
	lw	t3, 4(a0)
	lw	a0, 1108(a0)
	sd	a0, 64(sp)
	sd	t3, 56(sp)
	sd	t2, 48(sp)
	sd	t1, 40(sp)
	sd	t0, 32(sp)
	sd	a6, 24(sp)
	sd	a5, 16(sp)
	sd	a7, 8(sp)
	fmv.x.d	a5, fa5
	fmv.x.d	a6, fa4
	fmv.x.d	a7, fa3
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	j	.LBB2_374
.LBB2_367:
	sd	a0, 16(sp)
	sd	a6, 8(sp)
	fmv.x.d	a4, fa5
	fmv.x.d	a5, fa4
	fmv.x.d	a6, fa3
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
.LBB2_368:
	sd	a7, 0(sp)
	mv	a7, s1
	j	.LBB2_377
.LBB2_369:
	lui	a3, %hi(.L.str.18)
	addi	a3, a3, %lo(.L.str.18)
.LBB2_370:
	lw	a1, %lo(frame_no)(a1)
	lw	a4, 40(a4)
	fcvt.d.s	fa5, fa5
	lui	a6, %hi(intras)
	lw	a6, %lo(intras)(a6)
	lw	t0, 200(a0)
	lw	t1, 204(a0)
	lw	t2, 4(a0)
	lw	a0, 1108(a0)
	fcvt.d.s	fa4, fa4
	li	t3, 1
	fcvt.d.s	fa3, fa3
	bne	a5, t3, .LBB2_375
# %bb.371:
	sd	a0, 56(sp)
	sd	t2, 48(sp)
	sd	t1, 40(sp)
	sd	t0, 32(sp)
	sd	a6, 24(sp)
	sd	a3, 16(sp)
	sd	a7, 8(sp)
	fmv.x.d	a5, fa5
	fmv.x.d	a6, fa4
	fmv.x.d	a7, fa3
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	j	.LBB2_376
.LBB2_372:
	lui	a5, %hi(.L.str.18)
	addi	a5, a5, %lo(.L.str.18)
.LBB2_373:
	lui	a6, %hi(intras)
	lw	a6, %lo(intras)(a6)
	lw	t0, 200(a0)
	lw	t1, 204(a0)
	lw	t2, 4(a0)
	lw	a0, 1108(a0)
	sd	a0, 56(sp)
	sd	t2, 48(sp)
	sd	t1, 40(sp)
	sd	t0, 32(sp)
	sd	a6, 24(sp)
	sd	a5, 16(sp)
	sd	a7, 8(sp)
	fmv.x.d	a5, fa5
	fmv.x.d	a6, fa4
	fmv.x.d	a7, fa3
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
.LBB2_374:
	sd	s1, 0(sp)
	j	.LBB2_377
.LBB2_375:
	sd	a0, 56(sp)
	sd	t2, 48(sp)
	sd	t1, 40(sp)
	sd	t0, 32(sp)
	sd	a6, 24(sp)
	sd	a3, 16(sp)
	sd	a7, 8(sp)
	fmv.x.d	a5, fa5
	fmv.x.d	a6, fa4
	fmv.x.d	a7, fa3
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
.LBB2_376:
	sd	s1, 0(sp)
	li	a3, 0
.LBB2_377:
	call	printf
.LBB2_378:
	lui	s2, %hi(input)
	ld	a0, %lo(input)(s2)
	addi	a0, a0, 2047
	lw	a0, 1857(a0)
	bnez	a0, .LBB2_380
# %bb.379:
	lui	a0, %hi(frame_no)
	lw	a1, %lo(frame_no)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
.LBB2_380:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	call	fflush
	lui	s1, %hi(stats)
	ld	a0, %lo(stats)(s1)
	ld	a1, %lo(input)(s2)
	lw	a2, 16(a0)
	addi	a1, a1, 2047
	lw	a1, 1861(a1)
	sw	a2, 20(a0)
	beqz	a1, .LBB2_385
# %bb.381:
	mv	a0, s0
	call	rc_update_pict
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	bnez	a1, .LBB2_385
# %bb.382:
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	a1, 1148(a1)
	beqz	a1, .LBB2_384
.LBB2_383:
	call	updateRCModel
	j	.LBB2_385
.LBB2_384:
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 324(a0)
	beqz	a0, .LBB2_383
.LBB2_385:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 0(a0)
	lui	a1, %hi(start_frame_no_in_this_IGOP)
	lw	a1, %lo(start_frame_no_in_this_IGOP)(a1)
	ld	a2, %lo(stats)(s1)
	xor	a0, a0, a1
	snez	a0, a0
	sw	zero, 1500(a2)
	ld	ra, 264(sp)                     # 8-byte Folded Reload
	ld	s0, 256(sp)                     # 8-byte Folded Reload
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	ld	s2, 240(sp)                     # 8-byte Folded Reload
	ld	s3, 232(sp)                     # 8-byte Folded Reload
	ld	s4, 224(sp)                     # 8-byte Folded Reload
	ld	s5, 216(sp)                     # 8-byte Folded Reload
	ld	s6, 208(sp)                     # 8-byte Folded Reload
	ld	s7, 200(sp)                     # 8-byte Folded Reload
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	ld	s10, 176(sp)                    # 8-byte Folded Reload
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	fld	fs0, 160(sp)                    # 8-byte Folded Reload
	fld	fs1, 152(sp)                    # 8-byte Folded Reload
	fld	fs2, 144(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 272
	ret
.LBB2_386:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 1928(a0)
	beqz	a1, .LBB2_388
# %bb.387:
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	a1, 4(a1)
	li	a2, 66
	bne	a1, a2, .LBB2_395
.LBB2_388:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, %hi(PicParSet)
	ld	a2, %lo(PicParSet)(a2)
	lui	a3, 22
	add	a3, a1, a3
	lw	a3, 100(a3)
	lw	a0, 1924(a0)
	lui	a4, %hi(active_pps)
	sd	a2, %lo(active_pps)(a4)
	beqz	a3, .LBB2_389
	j	.LBB2_180
.LBB2_389:
	lw	a2, 40(a1)
	addi	a2, a2, 1
	j	.LBB2_179
.LBB2_390:
	lw	t2, 1212(a6)
.LBB2_391:
	add	t1, t2, t1
	li	t2, 3
	sw	t1, 40(a1)
	beq	t0, t2, .LBB2_392
	j	.LBB2_24
.LBB2_392:
	slli	t0, a7, 1
	remw	a5, a5, t0
	bge	a5, a7, .LBB2_394
.LBB2_393:
	lw	a5, 1284(a4)
	lw	a6, 1288(a4)
	sw	a5, 40(a1)
	sw	a6, 44(a1)
	j	.LBB2_24
.LBB2_394:
	lw	a5, 4(a6)
	lw	a6, 16(a4)
	lw	a7, 1284(a4)
	lw	t0, 1288(a4)
	subw	a5, a5, a6
	add	a7, a5, a7
	sw	a7, 40(a1)
	add	a5, t0, a5
	sw	a5, 44(a1)
	j	.LBB2_24
.LBB2_395:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	li	a0, 1
	j	.LBB2_186
.LBB2_396:
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	mv	a1, s4
	call	printf
	call	report_stats_on_error
	li	a0, -1
	call	exit
.LBB2_397:
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	lui	a1, %hi(.L.str.14)
	addi	a1, a1, %lo(.L.str.14)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ReadOneFrame)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ReadOneFrame)
	lui	a2, 1
	addiw	a2, a2, -1668
	call	__assert_fail
.LBB2_398:
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end2:
	.size	encode_one_frame, .Lfunc_end2-encode_one_frame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	field_picture                   # -- Begin function field_picture
	.p2align	2
	.type	field_picture,@function
field_picture:                          # @field_picture
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(stats)
	ld	a2, %lo(stats)(a2)
	mv	s1, a1
	mv	s0, a0
	addi	a0, a2, 1480
	sw	zero, 1480(a2)
	lui	s2, %hi(img)
	ld	a3, %lo(img)(s2)
	sd	a0, 1488(a2)
	lui	s5, 22
	addiw	s3, s5, -904
	lw	a0, 0(a3)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	add	a5, a3, s3
	slli	a0, a0, 1
	lw	a2, 984(a5)
	lw	a1, 72(a1)
	lw	a4, 1372(a5)
	sw	a0, 0(a3)
	slli	a2, a2, 1
	sw	a2, 984(a5)
	add	a1, a4, a1
	srliw	a0, a1, 31
	lw	a4, 68(a3)
	add	a0, a1, a0
	sraiw	a2, a0, 1
	sw	a2, 60(a3)
	srliw	a0, a4, 31
	lwu	a1, 1100(a5)
	add	a0, a4, a0
	sraiw	a4, a0, 1
	sw	a4, 64(a3)
	srli	a6, a1, 1
	lw	a0, 28(a3)
	lw	a1, 52(a3)
	lw	a3, 56(a3)
	sw	a6, 1096(a5)
	li	s4, 1
	sw	s4, 0(a5)
	call	alloc_storable_picture
	lui	a1, 2
	ld	a4, %lo(img)(s2)
	addiw	a2, a1, -1832
	lui	a3, %hi(enc_top_picture)
	addiw	a1, s5, -908
	add	a1, a4, a1
	lw	a5, 1064(a1)
	sd	a0, %lo(enc_top_picture)(a3)
	lw	a3, 1080(a1)
	add	a2, a0, a2
	sw	a5, 4(a0)
	sw	a5, 16(a0)
	sw	a3, 4(a2)
	sw	a3, 0(a2)
	sw	zero, 52(a2)
	sw	zero, 1016(a1)
	sw	a5, 1076(a1)
	lui	a3, %hi(active_sps)
	ld	a3, %lo(active_sps)(a3)
	sw	s4, 28(a4)
	lui	a4, %hi(enc_picture)
	sd	a0, %lo(enc_picture)(a4)
	lw	a0, 1148(a3)
	lw	a4, 1160(a3)
	lw	a5, 32(a3)
	sw	zero, 56(a2)
	sw	a0, 196(a2)
	sw	a4, 200(a2)
	sw	a5, 192(a2)
	beqz	a4, .LBB3_2
# %bb.1:
	lw	a0, 1164(a3)
	lw	a4, 1168(a3)
	lw	a5, 1172(a3)
	lw	a3, 1176(a3)
	j	.LBB3_3
.LBB3_2:
	li	a0, 0
	li	a5, 0
	li	a3, 0
.LBB3_3:
	sw	a0, 204(a2)
	sw	a4, 208(a2)
	sw	a5, 212(a2)
	sw	a3, 216(a2)
	sw	zero, 0(a1)
	lui	a0, %hi(imgY_org_top)
	ld	a0, %lo(imgY_org_top)(a0)
	lui	a1, %hi(imgUV_org_top)
	ld	a1, %lo(imgUV_org_top)(a1)
	lui	a2, %hi(imgY_org)
	sd	a0, %lo(imgY_org)(a2)
	lui	a0, %hi(imgUV_org)
	sd	a1, %lo(imgUV_org)(a0)
	call	init_field
	ld	a1, %lo(img)(s2)
	lw	a0, 24(a1)
	add	s3, a1, s3
	bne	a0, s4, .LBB3_5
# %bb.4:
	lui	a0, %hi(nextP_tr_fld)
	lw	a2, %lo(nextP_tr_fld)(a0)
	addi	a2, a2, -1
	sw	a2, %lo(nextP_tr_fld)(a0)
.LBB3_5:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a2, 1861(a0)
	li	s2, 1
	sw	s2, 0(s3)
	beqz	a2, .LBB3_7
# %bb.6:
	lw	a1, 1873(a0)
	lw	a0, 1505(a0)
	sw	a1, 1236(s3)
	addi	a0, a0, -1
	seqz	a2, a0
	li	a1, 1
	li	a0, 0
	call	rc_init_pict
	li	a0, 1
	call	updateQuantizationParameter
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 40(a1)
.LBB3_7:
	lui	a0, %hi(top_pic)
	ld	a0, %lo(top_pic)(a0)
	lui	s5, 22
	add	a1, a1, s5
	sw	s2, 308(a1)
	call	code_a_picture
	lui	s4, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(s4)
	lui	a0, %hi(enc_top_picture)
	ld	a0, %lo(enc_top_picture)(a0)
	sw	s2, 0(a1)
	call	store_picture_in_dpb
	lui	s3, %hi(img)
	ld	a4, %lo(img)(s3)
	lui	a0, 8
	add	a0, a4, a0
	ld	a0, -1200(a0)
	ld	a0, 24(a0)
	ld	a0, 0(a0)
	lw	a5, 0(a0)
	lw	a0, 28(a4)
	lw	a1, 52(a4)
	lw	a2, 60(a4)
	lw	a3, 56(a4)
	lw	a4, 64(a4)
	slliw	s2, a5, 3
	sw	s2, 808(s0)
	call	alloc_storable_picture
	lui	a2, 2
	ld	a1, %lo(img)(s3)
	addiw	a3, a2, -1832
	lui	a4, %hi(enc_bottom_picture)
	addiw	a2, s5, -908
	add	a2, a1, a2
	lw	a5, 1068(a2)
	sd	a0, %lo(enc_bottom_picture)(a4)
	lw	a4, 1080(a2)
	add	a3, a0, a3
	sw	a5, 4(a0)
	sw	a5, 16(a0)
	sw	a4, 4(a3)
	sw	a4, 0(a3)
	sw	zero, 52(a3)
	sw	zero, 1016(a2)
	sw	a5, 1076(a2)
	lui	a4, %hi(active_sps)
	ld	a4, %lo(active_sps)(a4)
	li	a5, 2
	sw	a5, 28(a1)
	sd	a0, %lo(enc_picture)(s4)
	lw	a0, 1148(a4)
	lw	a5, 1160(a4)
	lw	a6, 32(a4)
	sw	zero, 56(a3)
	sw	a0, 196(a3)
	sw	a5, 200(a3)
	sw	a6, 192(a3)
	beqz	a5, .LBB3_9
# %bb.8:
	lw	a0, 1164(a4)
	lw	a5, 1168(a4)
	lw	a6, 1172(a4)
	lw	a4, 1176(a4)
	j	.LBB3_10
.LBB3_9:
	li	a0, 0
	li	a6, 0
	li	a4, 0
.LBB3_10:
	sw	a0, 204(a3)
	sw	a5, 208(a3)
	sw	a6, 212(a3)
	sw	a4, 216(a3)
	li	s4, 1
	sw	s4, 0(a2)
	lui	a0, %hi(imgY_org_bot)
	ld	a0, %lo(imgY_org_bot)(a0)
	lui	a2, %hi(imgY_org)
	lui	a3, %hi(imgUV_org_bot)
	ld	a3, %lo(imgUV_org_bot)(a3)
	lw	a4, 0(a1)
	sd	a0, %lo(imgY_org)(a2)
	lui	a0, %hi(imgUV_org)
	sd	a3, %lo(imgUV_org)(a0)
	addi	a4, a4, 1
	sw	a4, 0(a1)
	call	init_field
	ld	a1, %lo(img)(s3)
	lw	a2, 24(a1)
	bne	a2, s4, .LBB3_12
# %bb.11:
	lui	a2, %hi(nextP_tr_fld)
	lw	a3, %lo(nextP_tr_fld)(a2)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a3, a3, 1
	sw	a3, %lo(nextP_tr_fld)(a2)
	j	.LBB3_15
.LBB3_12:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	li	a3, 2
	bne	a2, a3, .LBB3_15
# %bb.13:
	addi	a2, a0, 2047
	lw	a2, 1513(a2)
	li	a3, 1
	beq	a2, a3, .LBB3_15
# %bb.14:
	lw	a2, 1940(a0)
	addi	a2, a2, -2
	seqz	a2, a2
	sw	a2, 24(a1)
.LBB3_15:
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	lui	s3, 22
	add	a2, a1, s3
	li	a3, 1
	sw	a3, -904(a2)
	beqz	a0, .LBB3_17
# %bb.16:
	mv	a0, s2
	call	setbitscount
	li	a0, 0
	li	a1, 0
	li	a2, 0
	call	rc_init_pict
	li	a0, 0
	call	updateQuantizationParameter
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 40(a1)
.LBB3_17:
	add	a1, a1, s3
	lui	a0, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a0)
	lui	a0, %hi(bottom_pic)
	ld	a0, %lo(bottom_pic)(a0)
	sw	zero, 308(a1)
	li	a1, 2
	sw	a1, 0(a2)
	call	code_a_picture
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a1, a0, a1
	ld	a1, -1200(a1)
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	lw	a1, 0(a1)
	addiw	a2, s3, 80
	add	a2, a0, a2
	lw	a3, 0(a0)
	slli	a1, a1, 3
	lw	a4, 0(a2)
	sw	a1, 808(s1)
	srliw	a1, a3, 31
	add	a1, a3, a1
	srliw	a3, a4, 31
	lui	a5, %hi(input)
	ld	a5, %lo(input)(a5)
	add	a3, a4, a3
	sraiw	a3, a3, 1
	sw	a3, 0(a2)
	lw	a3, 72(a5)
	lw	a2, 388(a2)
	sraiw	a1, a1, 1
	lw	a4, 68(a0)
	sw	a1, 0(a0)
	add	a2, a2, a3
	sw	a2, 60(a0)
	sw	a4, 64(a0)
	call	combine_field
	lui	a0, %hi(imgY_org_frm)
	ld	a0, %lo(imgY_org_frm)(a0)
	lui	a1, %hi(imgUV_org_frm)
	ld	a1, %lo(imgUV_org_frm)(a1)
	lui	a2, %hi(imgY_org)
	sd	a0, %lo(imgY_org)(a2)
	lui	a0, %hi(imgUV_org)
	sd	a1, %lo(imgUV_org)(a0)
	call	find_distortion
	lui	a0, %hi(snr)
	ld	a0, %lo(snr)(a0)
	flw	fa5, 0(a0)
	fsw	fa5, 812(s0)
	flw	fa5, 4(a0)
	fsw	fa5, 816(s0)
	flw	fa5, 8(a0)
	fsw	fa5, 820(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	field_picture, .Lfunc_end3-field_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	frame_picture                   # -- Begin function frame_picture
	.p2align	2
	.type	frame_picture,@function
frame_picture:                          # @frame_picture
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(img)
	ld	a6, %lo(img)(s2)
	lui	s3, 22
	addiw	a2, s3, 192
	add	a7, a6, a2
	lw	t0, 4(a7)
	lw	a5, 52(a6)
	lw	a2, 60(a6)
	lw	a3, 56(a6)
	lw	a4, 64(a6)
	mv	s1, a1
	mv	s0, a0
	sw	zero, 28(a6)
	sw	t0, 0(a7)
	li	a0, 0
	mv	a1, a5
	call	alloc_storable_picture
	lui	a1, 2
	addiw	a1, a1, -1832
	li	a3, 1
	add	a1, a0, a1
	beq	s1, a3, .LBB4_3
# %bb.1:
	li	a2, 2
	bne	s1, a2, .LBB4_4
# %bb.2:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, %hi(enc_frame_picture3)
	lui	a4, 22
	addiw	a4, a4, 108
	add	a4, a2, a4
	lw	a5, 56(a4)
	lw	a6, 48(a4)
	lw	a7, 52(a4)
	sd	a0, %lo(enc_frame_picture3)(a3)
	j	.LBB4_5
.LBB4_3:
	ld	a2, %lo(img)(s2)
	addiw	a4, s3, 108
	add	a4, a2, a4
	lw	a5, 56(a4)
	lui	a6, %hi(enc_frame_picture2)
	sd	a0, %lo(enc_frame_picture2)(a6)
	lw	a6, 48(a4)
	sw	a5, 4(a0)
	sw	a5, 60(a4)
	lw	a7, 52(a4)
	sw	a6, 8(a0)
	lui	a6, %hi(input)
	ld	a6, %lo(input)(a6)
	sw	a7, 12(a0)
	lw	a7, 64(a4)
	sw	a5, 16(a0)
	addi	a5, a6, 2047
	lw	a5, 1509(a5)
	sw	a7, 4(a1)
	sw	a7, 0(a1)
	j	.LBB4_6
.LBB4_4:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, %hi(enc_frame_picture)
	lui	a4, 22
	addiw	a4, a4, 108
	add	a4, a2, a4
	lw	a5, 56(a4)
	lw	a6, 48(a4)
	lw	a7, 52(a4)
	sd	a0, %lo(enc_frame_picture)(a3)
.LBB4_5:
	sw	a5, 4(a0)
	sw	a6, 8(a0)
	sw	a7, 12(a0)
	lw	a3, 64(a4)
	lui	a6, %hi(input)
	ld	a6, %lo(input)(a6)
	sw	a5, 60(a4)
	sw	a5, 16(a0)
	sw	a3, 4(a1)
	addi	a5, a6, 2047
	lw	a5, 1509(a5)
	sw	a3, 0(a1)
	li	a3, 1
.LBB4_6:
	sw	a3, 52(a1)
	snez	a5, a5
	lui	a3, %hi(active_sps)
	ld	a3, %lo(active_sps)(a3)
	sw	a5, 0(a4)
	lui	a4, %hi(enc_picture)
	sd	a0, %lo(enc_picture)(a4)
	lw	a0, 1148(a3)
	lw	a4, 1160(a3)
	lw	a6, 32(a3)
	sw	a5, 56(a1)
	sw	a0, 196(a1)
	sw	a4, 200(a1)
	sw	a6, 192(a1)
	beqz	a4, .LBB4_8
# %bb.7:
	lw	a0, 1164(a3)
	lw	a4, 1168(a3)
	lw	a5, 1172(a3)
	lw	a3, 1176(a3)
	j	.LBB4_9
.LBB4_8:
	li	a0, 0
	li	a5, 0
	li	a3, 0
.LBB4_9:
	sw	a0, 204(a1)
	sw	a4, 208(a1)
	sw	a5, 212(a1)
	sw	a3, 216(a1)
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	addi	a1, a0, 1476
	sw	zero, 1476(a0)
	sd	a1, 1488(a0)
	lui	a0, 22
	add	a0, a2, a0
	sw	zero, -904(a0)
	mv	a0, s0
	call	code_a_picture
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a1, a0, a1
	ld	a1, -1200(a1)
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	lw	a1, 0(a1)
	lw	a0, 28(a0)
	slli	a1, a1, 3
	sw	a1, 808(s0)
	bnez	a0, .LBB4_11
# %bb.10:
	call	find_distortion
	lui	a0, %hi(snr)
	ld	a0, %lo(snr)(a0)
	flw	fa5, 0(a0)
	flw	fa4, 4(a0)
	flw	fa3, 8(a0)
	fsw	fa5, 812(s0)
	fsw	fa4, 816(s0)
	fsw	fa3, 820(s0)
.LBB4_11:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	frame_picture, .Lfunc_end4-frame_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function writeout_picture
	.type	writeout_picture,@function
writeout_picture:                       # @writeout_picture
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lw	a2, 0(a0)
	lui	s3, 8
	add	a1, a1, s3
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	sd	a0, -1208(a1)
	blez	a2, .LBB5_13
# %bb.1:
	li	a3, 0
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	addi	a0, a0, 8
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	li	s6, 8
	lui	a1, 22
	addiw	s7, a1, 196
	addiw	a0, a1, 204
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	s10, %hi(WriteNALU)
	lui	s11, %hi(stats)
	j	.LBB5_4
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	lw	a2, 0(a0)
	ld	a3, 24(sp)                      # 8-byte Folded Reload
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	addi	a3, a3, 1
	bge	a3, a2, .LBB5_13
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	slli	a1, a3, 3
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	ld	s5, 0(a1)
	lw	a1, 16(s5)
	blez	a1, .LBB5_3
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	li	s9, 0
	li	s0, 0
	li	s8, 2
	j	.LBB5_8
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=2
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	sw	a1, 12(s1)
	lw	a0, 0(a0)
	snez	a0, a0
	slli	a0, a0, 1
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=2
	ld	a1, %lo(WriteNALU)(s10)
	sw	a0, 16(s1)
	sw	zero, 20(s1)
	mv	a0, s1
	jalr	a1
	ld	a1, %lo(stats)(s11)
	lw	a2, 16(a1)
	add	a0, a2, a0
	sw	a0, 16(a1)
	mv	a0, s1
	call	FreeNALU
	lw	a0, 16(s5)
	addi	s0, s0, 1
	addi	s8, s8, 1
	addi	s9, s9, 112
	bge	s0, a0, .LBB5_2
.LBB5_8:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 24(s5)
	add	a0, a0, s9
	ld	s4, 0(a0)
	lw	a0, 4(s4)
	bne	a0, s6, .LBB5_14
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=2
	ld	a0, %lo(img)(s2)
	add	a0, a0, s7
	lw	a1, 176(a0)
	lw	a2, 180(a0)
	lw	a0, 0(a0)
	slli	a1, a1, 8
	slli	a2, a2, 9
	add	a1, a2, a1
	addi	a1, a1, 128
	mul	a0, a1, a0
	addiw	a0, a0, 500
	call	AllocNALU
	ld	a1, %lo(img)(s2)
	lw	a1, 12(a1)
	mv	s1, a0
	seqz	a0, a1
	addi	a0, a0, 4
	lwu	a2, 0(s4)
	sw	a0, 0(s1)
	ld	a0, 24(s1)
	ld	a1, 32(s4)
	addi	a3, a2, 1
	sw	a3, 4(s1)
	addi	a0, a0, 1
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a1, a0, s3
	ld	a1, -1208(a1)
	lw	a1, 4(a1)
	beqz	a1, .LBB5_11
# %bb.10:                               #   in Loop: Header=BB5_8 Depth=2
	li	a0, 5
	sw	a0, 12(s1)
	li	a0, 3
	j	.LBB5_7
.LBB5_11:                               #   in Loop: Header=BB5_8 Depth=2
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a2, 945(a1)
	mv	a1, s8
	bnez	a2, .LBB5_6
# %bb.12:                               #   in Loop: Header=BB5_8 Depth=2
	li	a1, 1
	j	.LBB5_6
.LBB5_13:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB5_14:
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	lui	a1, %hi(.L.str.14)
	addi	a1, a1, %lo(.L.str.14)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.writeout_picture)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.writeout_picture)
	li	a2, 722
	call	__assert_fail
.Lfunc_end5:
	.size	writeout_picture, .Lfunc_end5-writeout_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	copy_params                     # -- Begin function copy_params
	.p2align	2
	.type	copy_params,@function
copy_params:                            # @copy_params
# %bb.0:
	lui	a0, %hi(active_sps)
	ld	a1, %lo(active_sps)(a0)
	lw	a2, 1148(a1)
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a3, 2
	addiw	a3, a3, -1640
	lw	a4, 1160(a1)
	lw	a5, 32(a1)
	add	a0, a0, a3
	sw	a2, 4(a0)
	sw	a4, 8(a0)
	sw	a5, 0(a0)
	beqz	a4, .LBB6_2
# %bb.1:
	lw	a2, 1164(a1)
	lw	a3, 1168(a1)
	lw	a4, 1172(a1)
	lw	a1, 1176(a1)
	j	.LBB6_3
.LBB6_2:
	li	a2, 0
	li	a3, 0
	li	a1, 0
.LBB6_3:
	sw	a2, 12(a0)
	sw	a3, 16(a0)
	sw	a4, 20(a0)
	sw	a1, 24(a0)
	ret
.Lfunc_end6:
	.size	copy_params, .Lfunc_end6-copy_params
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function find_distortion
	.type	find_distortion,@function
find_distortion:                        # @find_distortion
# %bb.0:
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 28(a0)
	lui	a2, 22
	addiw	a2, a2, -928
	add	a0, a0, a2
	beqz	a1, .LBB7_7
# %bb.1:
	lui	a1, %hi(input)
	ld	a2, %lo(input)(a1)
	lw	a3, 68(a2)
	blez	a3, .LBB7_13
# %bb.2:
	li	a4, 0
	li	a1, 0
	lwu	t0, 72(a2)
	lui	a6, %hi(imgY_org)
	lui	a5, %hi(imgY_com)
	ld	a5, %lo(imgY_com)(a5)
	ld	a6, %lo(imgY_org)(a6)
	sext.w	a7, t0
	slli	t0, t0, 3
	add	t0, a5, t0
	j	.LBB7_4
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	addi	a4, a4, 1
	beq	a4, a3, .LBB7_14
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	blez	a7, .LBB7_3
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	ld	t1, 0(a0)
	slli	t2, a4, 1
	mv	t3, a6
	mv	t4, a5
.LBB7_6:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t5, 0(t3)
	ld	t6, 0(t4)
	add	t5, t5, t2
	lhu	t5, 0(t5)
	add	t6, t6, t2
	lhu	t6, 0(t6)
	sub	t5, t5, t6
	slli	t5, t5, 2
	add	t5, t1, t5
	lw	t5, 0(t5)
	add	a1, a1, t5
	addi	t4, t4, 8
	addi	t3, t3, 8
	bne	t4, t0, .LBB7_6
	j	.LBB7_3
.LBB7_7:
	lui	a1, %hi(imgY_org_frm)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	ld	a3, %lo(imgY_org_frm)(a1)
	lui	a1, %hi(imgUV_org_frm)
	ld	a4, %lo(imgUV_org_frm)(a1)
	lw	a5, 68(a2)
	lui	a1, %hi(imgY_org)
	sd	a3, %lo(imgY_org)(a1)
	lui	a1, %hi(imgUV_org)
	sd	a4, %lo(imgUV_org)(a1)
	blez	a5, .LBB7_21
# %bb.8:
	lwu	t1, 72(a2)
	li	a6, 0
	li	a1, 0
	lui	a7, %hi(enc_picture)
	ld	t0, %lo(enc_picture)(a7)
	sext.w	a7, t1
	lui	t2, 2
	addiw	t2, t2, -1768
	add	t0, t0, t2
	slli	t1, t1, 3
	j	.LBB7_10
.LBB7_9:                                #   in Loop: Header=BB7_10 Depth=1
	addi	a6, a6, 1
	beq	a6, a5, .LBB7_22
.LBB7_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	blez	a7, .LBB7_9
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=1
	ld	t2, 0(t0)
	ld	t3, 0(a0)
	add	t4, t2, t1
	slli	t5, a6, 1
	mv	t6, a3
.LBB7_12:                               #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s0, 0(t6)
	ld	s1, 0(t2)
	add	s0, s0, t5
	lhu	s0, 0(s0)
	add	s1, s1, t5
	lhu	s1, 0(s1)
	sub	s0, s0, s1
	slli	s0, s0, 2
	add	s0, t3, s0
	lw	s0, 0(s0)
	add	a1, a1, s0
	addi	t2, t2, 8
	addi	t6, t6, 8
	bne	t2, t4, .LBB7_12
	j	.LBB7_9
.LBB7_13:
	li	a1, 0
.LBB7_14:
	lw	a3, 1364(a0)
	beqz	a3, .LBB7_29
# %bb.15:
	addi	a2, a2, 2047
	lw	a4, 1933(a2)
	blez	a4, .LBB7_30
# %bb.16:
	lwu	t1, 1929(a2)
	lui	a2, %hi(imgUV_org)
	ld	a5, %lo(imgUV_org)(a2)
	lui	a2, %hi(imgUV_com)
	ld	a6, %lo(imgUV_com)(a2)
	li	a7, 0
	li	a3, 0
	li	a2, 0
	sext.w	t0, t1
	slli	t1, t1, 3
	j	.LBB7_18
.LBB7_17:                               #   in Loop: Header=BB7_18 Depth=1
	addi	a7, a7, 1
	beq	a7, a4, .LBB7_31
.LBB7_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	blez	t0, .LBB7_17
# %bb.19:                               #   in Loop: Header=BB7_18 Depth=1
	ld	t2, 0(a0)
	ld	t3, 0(a5)
	ld	t4, 8(a6)
	ld	t5, 0(a6)
	ld	t6, 8(a5)
	add	s0, t4, t1
	slli	s1, a7, 1
.LBB7_20:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s2, 0(t3)
	ld	s3, 0(t5)
	add	s2, s2, s1
	lhu	s2, 0(s2)
	ld	s4, 0(t6)
	add	s3, s3, s1
	ld	s5, 0(t4)
	lhu	s3, 0(s3)
	add	s4, s4, s1
	lhu	s4, 0(s4)
	add	s5, s5, s1
	lhu	s5, 0(s5)
	sub	s2, s2, s3
	sub	s3, s4, s5
	slli	s2, s2, 2
	add	s2, t2, s2
	lw	s2, 0(s2)
	slli	s3, s3, 2
	add	s3, t2, s3
	lw	s3, 0(s3)
	add	a2, a2, s2
	add	a3, a3, s3
	addi	t4, t4, 8
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t3, t3, 8
	bne	t4, s0, .LBB7_20
	j	.LBB7_17
.LBB7_21:
	li	a1, 0
.LBB7_22:
	lw	a3, 1364(a0)
	beqz	a3, .LBB7_29
# %bb.23:
	addi	a2, a2, 2047
	lw	a5, 1933(a2)
	blez	a5, .LBB7_30
# %bb.24:
	lwu	t1, 1929(a2)
	li	a6, 0
	li	a3, 0
	li	a2, 0
	lui	a7, %hi(enc_picture)
	ld	t0, %lo(enc_picture)(a7)
	sext.w	a7, t1
	lui	t2, 2
	addiw	t2, t2, -1728
	add	t0, t0, t2
	slli	t1, t1, 3
	j	.LBB7_26
.LBB7_25:                               #   in Loop: Header=BB7_26 Depth=1
	addi	a6, a6, 1
	beq	a6, a5, .LBB7_31
.LBB7_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
	blez	a7, .LBB7_25
# %bb.27:                               #   in Loop: Header=BB7_26 Depth=1
	ld	t5, 0(t0)
	ld	t2, 0(a0)
	ld	t3, 0(a4)
	ld	t4, 8(t5)
	ld	t5, 0(t5)
	ld	t6, 8(a4)
	add	s0, t4, t1
	slli	s1, a6, 1
.LBB7_28:                               #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s2, 0(t3)
	ld	s3, 0(t5)
	add	s2, s2, s1
	lhu	s2, 0(s2)
	ld	s4, 0(t6)
	add	s3, s3, s1
	ld	s5, 0(t4)
	lhu	s3, 0(s3)
	add	s4, s4, s1
	lhu	s4, 0(s4)
	add	s5, s5, s1
	lhu	s5, 0(s5)
	sub	s2, s2, s3
	sub	s3, s4, s5
	slli	s2, s2, 2
	add	s2, t2, s2
	lw	s2, 0(s2)
	slli	s3, s3, 2
	add	s3, t2, s3
	lw	s3, 0(s3)
	add	a2, a2, s2
	add	a3, a3, s3
	addi	t4, t4, 8
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t3, t3, 8
	bne	t4, s0, .LBB7_28
	j	.LBB7_25
.LBB7_29:
	li	a2, 0
	j	.LBB7_31
.LBB7_30:
	li	a2, 0
	li	a3, 0
.LBB7_31:
	lui	a0, %hi(snr)
	ld	a0, %lo(snr)(a0)
	fcvt.s.l	fa5, a1
	fsw	fa5, 0(a0)
	fcvt.s.l	fa5, a2
	fsw	fa5, 4(a0)
	fcvt.s.l	fa5, a3
	fsw	fa5, 8(a0)
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	find_distortion, .Lfunc_end7-find_distortion
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function init_field
.LCPI8_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.p2align	2
	.type	init_field,@function
init_field:                             # @init_field
# %bb.0:
	lui	a0, %hi(last_P_no_fld)
	ld	t1, %lo(last_P_no_fld)(a0)
	lui	a1, %hi(last_P_no)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sd	t1, %lo(last_P_no)(a1)
	lui	a1, 22
	addiw	a1, a1, -912
	add	a1, a0, a1
	lui	a2, %hi(stats)
	ld	a3, %lo(stats)(a2)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	sw	zero, 12(a0)
	sw	zero, 20(a0)
	sw	zero, 24(a3)
	lw	a4, 20(a2)
	addi	a3, a2, 2047
	addi	a6, a3, 1065
	lw	t0, 1244(a2)
	slli	a4, a4, 1
	lwu	t2, 0(a0)
	sw	a4, 20(a2)
	slli	a5, t0, 1
	sw	a5, 1244(a2)
	srli	a3, t2, 31
	lw	a7, 992(a1)
	add	a3, t2, a3
	sraiw	t3, a3, 1
	sw	t3, 0(a0)
	srliw	a3, a7, 31
	add	a3, a7, a3
	sraiw	a3, a3, 1
	sw	a3, 992(a1)
	sw	zero, 96(a0)
	sd	zero, 160(a0)
	sd	zero, 152(a0)
	lw	t5, 116(a1)
	sd	zero, 144(a0)
	sd	zero, 136(a0)
	addi	t4, a4, 2
	mul	a7, t3, t4
	beqz	t5, .LBB8_5
# %bb.1:
	lw	a4, 4(a1)
	sw	t4, 112(a1)
	addi	t3, t3, -1
	mul	a3, t3, t4
	add	t0, a4, a3
	addw	a7, a4, a7
	beqz	a4, .LBB8_16
# %bb.2:
	addi	a3, a7, -1
	sw	a3, 0(t1)
	sw	t0, 4(t1)
	lw	a3, 992(a1)
	blez	a3, .LBB8_19
# %bb.3:                                # %.preheader1
	li	a4, 0
	addi	t1, t1, 8
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	lw	a3, -8(t1)
	lw	a5, 112(a1)
	subw	a3, a3, a5
	sw	a3, 0(t1)
	lw	a3, -4(t1)
	lw	a5, 112(a1)
	subw	a3, a3, a5
	sw	a3, 4(t1)
	lw	a3, 992(a1)
	addi	a4, a4, 1
	addi	t1, t1, 8
	blt	a4, a3, .LBB8_4
	j	.LBB8_19
.LBB8_5:
	lw	t1, 4(a1)
	addw	a7, t1, a7
	sw	a7, 0(a1)
	bnez	t1, .LBB8_7
# %bb.6:
	lw	t1, 92(a1)
	sw	t1, 96(a1)
	sw	a7, 92(a1)
.LBB8_7:
	lw	t1, 0(a6)
	beqz	t1, .LBB8_10
# %bb.8:
	lw	t4, 8(a2)
	addi	t3, t3, 1
	bne	t3, t4, .LBB8_10
# %bb.9:
	sw	t1, 0(a1)
	mv	a7, t1
.LBB8_10:
	addiw	t2, t2, 1
	li	t1, 3
	bltu	t2, t1, .LBB8_13
# %bb.11:
	beqz	t0, .LBB8_13
# %bb.12:
	lui	t0, %hi(nextP_tr_fld)
	sw	a7, %lo(nextP_tr_fld)(t0)
.LBB8_13:
	lw	t0, 796(a6)
	beqz	t0, .LBB8_40
.LBB8_14:
	lw	a7, 88(a0)
	lw	a6, 80(a2)
	sw	a7, 92(a0)
	blez	a6, .LBB8_39
# %bb.15:
	lw	a7, 0(a0)
	lw	t0, 52(a0)
	divw	a6, a7, a6
	slli	a7, t0, 1
	srli	a7, a7, 60
	add	a7, t0, a7
	sraiw	a7, a7, 4
	remw	a6, a6, a7
	sw	a6, 88(a0)
	j	.LBB8_39
.LBB8_16:
	ori	a3, a3, 1
	sw	a3, 0(t1)
	sw	t0, 4(t1)
	lw	a3, 992(a1)
	blez	a3, .LBB8_19
# %bb.17:                               # %.preheader
	li	a4, 0
	addi	t1, t1, 8
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	lw	a3, -8(t1)
	lw	a5, 112(a1)
	subw	a3, a3, a5
	sw	a3, 0(t1)
	lw	a3, -4(t1)
	lw	a5, 112(a1)
	subw	a3, a3, a5
	sw	a3, 4(t1)
	lw	a3, 992(a1)
	addi	a4, a4, 1
	addi	t1, t1, 8
	blt	a4, a3, .LBB8_18
.LBB8_19:
	lw	a4, 0(a6)
	beqz	a4, .LBB8_22
# %bb.20:
	lw	a5, 0(a0)
	lw	t1, 8(a2)
	addiw	a5, a5, 1
	bne	a5, t1, .LBB8_22
# %bb.21:
	subw	a5, a4, t0
	sw	a5, 112(a1)
	mv	a7, a4
.LBB8_22:
	lw	a4, 20(a2)
	addi	t1, a4, 1
	lw	a5, 1244(a2)
	lui	t2, %hi(.LCPI8_0)
	fld	fa5, %lo(.LCPI8_0)(t2)
	fcvt.d.w	fa4, t1
	lw	t1, 1944(a2)
	fcvt.d.w	fa3, a5
	fadd.d	fa5, fa3, fa5
	fdiv.d	fa5, fa4, fa5
	fsd	fa5, 104(a1)
	beqz	t1, .LBB8_26
# %bb.23:
	li	t2, 3
	bne	t1, t2, .LBB8_25
# %bb.24:
	lui	t1, %hi(.LCPI8_0)
	fld	fa5, %lo(.LCPI8_0)(t1)
	li	t1, 1023
	slli	t1, t1, 52
	sd	t1, 104(a1)
.LBB8_25:
	lui	t2, %hi(gop_structure)
	lw	t1, 116(a1)
	ld	t2, %lo(gop_structure)(t2)
	li	t3, 24
	mul	t3, t1, t3
	add	t2, t2, t3
	lw	t3, -20(t2)
	li	t2, 0
	addi	t3, t3, 1
	j	.LBB8_27
.LBB8_26:
	lw	t3, 116(a1)
	li	t2, 1
	mv	t1, t3
.LBB8_27:
	lui	t4, %hi(.LCPI8_0)
	fld	fa4, %lo(.LCPI8_0)(t4)
	fadd.d	fa5, fa5, fa4
	fcvt.d.w	fa4, t3
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	t3, fa5, rtz
	addw	t0, t0, t3
	sw	t0, 0(a1)
	blt	t0, a7, .LBB8_29
# %bb.28:
	addiw	t0, a7, -1
	sw	t0, 0(a1)
.LBB8_29:
	lw	a7, 796(a6)
	beqz	a7, .LBB8_31
# %bb.30:
	bnez	t2, .LBB8_39
	j	.LBB8_38
.LBB8_31:
	beqz	t2, .LBB8_38
# %bb.32:
	lw	a7, 12(a6)
	blez	a7, .LBB8_64
# %bb.33:
	slli	t1, a7, 1
	blt	t0, a7, .LBB8_35
# %bb.34:
	lw	t2, 1296(a2)
	beqz	t2, .LBB8_37
.LBB8_35:
	remw	t2, t0, t1
	blt	t2, a7, .LBB8_57
# %bb.36:
	lw	t2, 1296(a2)
	li	t3, 1
	bne	t2, t3, .LBB8_57
.LBB8_37:
	lw	t2, 8(a6)
	j	.LBB8_58
.LBB8_38:
	lui	a6, %hi(gop_structure)
	ld	a6, %lo(gop_structure)(a6)
	li	a7, 24
	mul	a7, t1, a7
	add	a6, a6, a7
	lw	a6, -12(a6)
	sw	a6, 40(a0)
.LBB8_39:
	srliw	a6, a4, 31
	add	a4, a4, a6
	sraiw	a4, a4, 1
	sw	a4, 20(a2)
	srliw	a4, a5, 31
	add	a4, a5, a4
	sraiw	a4, a4, 1
	sw	a4, 1244(a2)
	lw	a2, 0(a0)
	lw	a4, 4(a1)
	slli	a3, a3, 1
	sw	a3, 992(a1)
	slli	a2, a2, 1
	add	a2, a2, a4
	sw	a2, 0(a0)
	ret
.LBB8_40:
	lw	t1, 24(a0)
	lw	t0, 12(a6)
	li	t2, 2
	bne	t1, t2, .LBB8_47
# %bb.41:
	blez	t0, .LBB8_54
# %bb.42:
	blt	a7, t0, .LBB8_44
# %bb.43:
	lw	t1, 1296(a2)
	beqz	t1, .LBB8_46
.LBB8_44:
	slli	t1, t0, 1
	remw	a7, a7, t1
	blt	a7, t0, .LBB8_54
# %bb.45:
	lw	a7, 1296(a2)
	li	t0, 1
	bne	a7, t0, .LBB8_54
.LBB8_46:
	lw	a6, 16(a6)
	sw	a6, 40(a0)
	j	.LBB8_14
.LBB8_47:
	blez	t0, .LBB8_55
# %bb.48:
	blt	a7, t0, .LBB8_50
# %bb.49:
	lw	t2, 1296(a2)
	beqz	t2, .LBB8_52
.LBB8_50:
	slli	t2, t0, 1
	remw	t2, a7, t2
	blt	t2, t0, .LBB8_55
# %bb.51:
	lw	t2, 1296(a2)
	li	t3, 1
	bne	t2, t3, .LBB8_55
.LBB8_52:
	lw	t3, 1116(a1)
	lw	t2, 4(a6)
	beqz	t3, .LBB8_72
# %bb.53:
	li	t3, 0
	j	.LBB8_73
.LBB8_54:
	lw	a6, 12(a2)
	sw	a6, 40(a0)
	j	.LBB8_14
.LBB8_55:
	lw	t3, 1116(a1)
	lw	t2, 16(a2)
	beqz	t3, .LBB8_70
# %bb.56:
	add	t2, zero, t2
	li	t3, 3
	sw	t2, 40(a0)
	bne	t1, t3, .LBB8_14
	j	.LBB8_71
.LBB8_57:
	lw	t2, 1248(a2)
.LBB8_58:
	lw	t3, 1116(a1)
	sw	t2, 40(a0)
	beqz	t3, .LBB8_39
# %bb.59:
	blt	t0, a7, .LBB8_61
# %bb.60:
	lw	t2, 1296(a2)
	beqz	t2, .LBB8_63
.LBB8_61:
	remw	t0, t0, t1
	blt	t0, a7, .LBB8_65
# %bb.62:
	lw	a7, 1296(a2)
	li	t0, 1
	bne	a7, t0, .LBB8_65
.LBB8_63:
	lw	a7, 8(a6)
	lw	a6, 20(a6)
	lw	t0, 1292(a1)
	addw	a6, a6, a7
	li	t1, 51
	negw	a7, t0
	mv	t0, a6
	bge	a6, t1, .LBB8_66
	j	.LBB8_67
.LBB8_64:
	lw	a6, 1248(a2)
	lw	a7, 1116(a1)
	sw	a6, 40(a0)
	beqz	a7, .LBB8_39
.LBB8_65:
	lw	a6, 1248(a2)
	lw	a7, 1252(a2)
	lw	t0, 1292(a1)
	addw	a6, a7, a6
	li	t1, 51
	negw	a7, t0
	mv	t0, a6
	blt	a6, t1, .LBB8_67
.LBB8_66:
	li	t0, 51
.LBB8_67:
	blt	a6, a7, .LBB8_69
# %bb.68:
	mv	a7, t0
.LBB8_69:
	sw	a7, 40(a0)
	j	.LBB8_39
.LBB8_70:
	lw	t3, 1212(a6)
	add	t2, t3, t2
	li	t3, 3
	sw	t2, 40(a0)
	bne	t1, t3, .LBB8_14
.LBB8_71:
	bgtz	t0, .LBB8_74
	j	.LBB8_75
.LBB8_72:
	lw	t3, 1212(a6)
.LBB8_73:
	add	t2, t3, t2
	li	t3, 3
	sw	t2, 40(a0)
	bne	t1, t3, .LBB8_14
.LBB8_74:
	slli	t1, t0, 1
	remw	a7, a7, t1
	bge	a7, t0, .LBB8_76
.LBB8_75:
	lw	a6, 1284(a2)
	lw	a7, 1288(a2)
	sw	a6, 40(a0)
	sw	a7, 44(a0)
	j	.LBB8_14
.LBB8_76:
	lw	a6, 4(a6)
	lw	a7, 16(a2)
	lw	t0, 1284(a2)
	lw	t1, 1288(a2)
	subw	a6, a6, a7
	add	t0, a6, t0
	sw	t0, 40(a0)
	add	a6, a6, t1
	sw	a6, 44(a0)
	j	.LBB8_14
.Lfunc_end8:
	.size	init_field, .Lfunc_end8-init_field
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UnifiedOneForthPix              # -- Begin function UnifiedOneForthPix
	.p2align	2
	.type	UnifiedOneForthPix,@function
UnifiedOneForthPix:                     # @UnifiedOneForthPix
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
	lui	a1, 2
	addiw	s1, a1, -1800
	add	s1, a0, s1
	ld	a1, 56(s1)
	bnez	a1, .LBB9_2
# %bb.1:
	ld	a1, 40(s1)
	beqz	a1, .LBB9_3
.LBB9_2:
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
	ret
.LBB9_3:
	mv	s2, a0
	lw	s3, 4(s1)
	lw	s6, 0(s1)
	ld	s5, 32(s1)
	addi	s0, s1, 56
	mulw	a0, s6, s3
	slli	a0, a0, 1
	call	malloc
	sd	a0, 40(s1)
	mv	a2, s6
	sd	s3, 96(sp)                      # 8-byte Folded Spill
	mv	a1, s3
	bnez	a0, .LBB9_5
# %bb.4:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
	lw	a1, 4(s1)
	lw	a2, 0(s1)
.LBB9_5:
	slli	a1, a1, 2
	addiw	a1, a1, 32
	slli	a2, a2, 2
	addiw	a2, a2, 32
	mv	a0, s0
	call	get_mem2Dpel
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 1904(a0)
	bnez	a1, .LBB9_8
# %bb.6:
	lw	a1, 1908(a0)
	bnez	a1, .LBB9_8
# %bb.7:
	lw	a0, 64(a0)
	beqz	a0, .LBB9_11
.LBB9_8:
	lw	s0, 0(s1)
	lw	s3, 4(s1)
	mulw	a0, s3, s0
	slli	a0, a0, 1
	call	malloc
	sd	a0, 48(s1)
	bnez	a0, .LBB9_10
# %bb.9:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
	lw	s3, 4(s1)
	lw	s0, 0(s1)
.LBB9_10:
	lui	a0, 2
	addiw	a0, a0, -1736
	add	a0, s2, a0
	slli	s3, s3, 2
	addiw	a1, s3, 32
	slli	s0, s0, 2
	addiw	a2, s0, 32
	call	get_mem2Dpel
.LBB9_11:
	ld	s2, 56(s1)
	ld	s0, 40(s1)
	lw	t0, 4(s1)
	lw	s3, 0(s1)
	li	a0, -7
	blt	t0, a0, .LBB9_32
# %bb.12:
	lui	a1, %hi(img4Y_tmp)
	ld	a3, %lo(img4Y_tmp)(a1)
	addiw	a1, s6, -1
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	addiw	a2, a2, -1
	addi	a3, a3, 32
	li	a6, -4
	li	a4, 20
	j	.LBB9_15
.LBB9_13:                               #   in Loop: Header=BB9_15 Depth=1
	lw	t0, 4(s1)
.LBB9_14:                               #   in Loop: Header=BB9_15 Depth=1
	addiw	a7, t0, 3
	addi	a6, a5, 1
	bge	a5, a7, .LBB9_32
.LBB9_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_20 Depth 2
	mv	a5, a6
	blt	s3, a0, .LBB9_14
# %bb.16:                               #   in Loop: Header=BB9_15 Depth=1
	sext.w	a7, a5
	mv	a6, a2
	blt	a2, a7, .LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_15 Depth=1
	mv	a6, a7
.LBB9_18:                               #   in Loop: Header=BB9_15 Depth=1
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	slli	a6, a6, 3
	add	a6, s5, a6
	ld	a6, 0(a6)
	slli	a7, a5, 3
	add	a7, a3, a7
	ld	a7, 0(a7)
	li	t0, -5
	li	t3, -3
	li	t1, 1
	j	.LBB9_20
.LBB9_19:                               #   in Loop: Header=BB9_20 Depth=2
	sgtz	s6, t6
	neg	s6, s6
	and	t6, s6, t6
	slli	t6, t6, 1
	add	t6, a6, t6
	lhu	t6, 0(t6)
	sgtz	s6, s3
	neg	s6, s6
	and	s3, s6, s3
	slli	s3, s3, 1
	add	s3, a6, s3
	lhu	s3, 0(s3)
	sgtz	s6, t5
	neg	s6, s6
	and	t5, s6, t5
	slli	t5, t5, 1
	add	t5, a6, t5
	lhu	t5, 0(t5)
	sgtz	s6, s4
	neg	s6, s6
	and	s4, s6, s4
	slli	s4, s4, 1
	add	s4, a6, s4
	lhu	s4, 0(s4)
	add	s3, s3, t6
	mul	s3, s3, a4
	add	t5, s4, t5
	slli	s4, t5, 2
	sgtz	s6, t4
	neg	s6, s6
	and	t4, s6, t4
	slli	t4, t4, 1
	add	t4, a6, t4
	lhu	t4, 0(t4)
	sgtz	s6, t3
	neg	s6, s6
	and	t3, s6, t3
	slli	t3, t3, 1
	add	t3, a6, t3
	lhu	t3, 0(t3)
	add	t5, s4, t5
	add	t4, s3, t4
	subw	t4, t4, t5
	add	t3, t4, t3
	slli	t6, t6, 10
	addiw	t4, t1, -1
	slli	t4, t4, 2
	add	t4, a7, t4
	sw	t6, 0(t4)
	slli	t3, t3, 5
	slli	t4, t1, 2
	add	t4, a7, t4
	sw	t3, 0(t4)
	lw	s3, 0(s1)
	addiw	t4, s3, 3
	addi	t0, t0, 1
	addiw	t1, t1, 2
	mv	t3, t2
	bge	t0, t4, .LBB9_13
.LBB9_20:                               #   Parent Loop BB9_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	t2, t3, -1
	mv	t6, a1
	bge	a1, t2, .LBB9_26
# %bb.21:                               #   in Loop: Header=BB9_20 Depth=2
	mv	s3, a1
	bge	a1, t3, .LBB9_27
.LBB9_22:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	t2, t3, -2
	mv	t5, a1
	bge	a1, t2, .LBB9_28
.LBB9_23:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	t2, t3, 1
	mv	s4, a1
	bge	a1, t2, .LBB9_29
.LBB9_24:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	s6, t3, -3
	mv	t4, a1
	bge	a1, s6, .LBB9_30
.LBB9_25:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	s6, t3, 2
	mv	t3, a1
	blt	a1, s6, .LBB9_19
	j	.LBB9_31
.LBB9_26:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t6, t2
	mv	s3, a1
	blt	a1, t3, .LBB9_22
.LBB9_27:                               #   in Loop: Header=BB9_20 Depth=2
	mv	s3, t3
	addiw	t2, t3, -2
	mv	t5, a1
	blt	a1, t2, .LBB9_23
.LBB9_28:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t5, t2
	addiw	t2, t3, 1
	mv	s4, a1
	blt	a1, t2, .LBB9_24
.LBB9_29:                               #   in Loop: Header=BB9_20 Depth=2
	mv	s4, t2
	addiw	s6, t3, -3
	mv	t4, a1
	blt	a1, s6, .LBB9_25
.LBB9_30:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t4, s6
	addiw	s6, t3, 2
	mv	t3, a1
	blt	a1, s6, .LBB9_19
.LBB9_31:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t3, s6
	j	.LBB9_19
.LBB9_32:
	sd	t0, 88(sp)                      # 8-byte Folded Spill
	slli	a0, s3, 1
	addiw	a0, a0, 16
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB9_82
# %bb.33:
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	addiw	a1, a7, 7
	lui	a0, %hi(img4Y_tmp)
	ld	a2, %lo(img4Y_tmp)(a0)
	lui	a0, %hi(img)
	addiw	a7, a7, 5
	li	a5, 3
	lui	a3, 22
	mv	a4, a7
	blt	a5, a7, .LBB9_35
# %bb.34:
	li	a4, 3
.LBB9_35:
	addi	s5, a2, 24
	ld	t0, %lo(img)(a0)
	addiw	a5, a3, 420
	addi	s9, a2, 8
	slli	a3, a4, 3
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	slli	a4, a4, 2
	slli	a0, a7, 3
	mv	a6, a1
	blt	a7, a1, .LBB9_37
# %bb.36:
	mv	a6, a7
.LBB9_37:
	li	t6, 0
	ld	a7, 0(a2)
	sd	a7, 72(sp)                      # 8-byte Folded Spill
	ld	a7, 8(a2)
	sd	a7, 64(sp)                      # 8-byte Folded Spill
	ld	a7, 16(a2)
	sd	a7, 56(sp)                      # 8-byte Folded Spill
	ld	a7, 24(a2)
	sd	a7, 48(sp)                      # 8-byte Folded Spill
	add	t0, t0, a5
	ld	a5, 0(s2)
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	ld	a5, 16(s2)
	sd	a5, 32(sp)                      # 8-byte Folded Spill
	ld	a5, 32(a2)
	sd	a5, 24(sp)                      # 8-byte Folded Spill
	ld	a5, 32(s2)
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	ld	a5, 48(s2)
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	addi	a5, a2, 40
	sd	a5, 0(sp)                       # 8-byte Folded Spill
	add	s5, s5, a3
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	addiw	a5, a5, 8
	addiw	a4, a4, 20
	add	a0, a2, a0
	slli	a6, a6, 3
	add	s9, s9, a6
	li	s10, 20
	lui	a3, 22
	addiw	s11, a3, 420
	j	.LBB9_39
.LBB9_38:                               #   in Loop: Header=BB9_39 Depth=1
	addi	t6, t6, 1
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	beq	t6, a3, .LBB9_82
.LBB9_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_59 Depth 2
                                        #     Child Loop BB9_69 Depth 2
	slli	a3, t6, 2
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	add	a6, a6, a3
	lw	s6, 0(a6)
	addiw	a6, s6, 512
	bltz	a6, .LBB9_42
# %bb.40:                               #   in Loop: Header=BB9_39 Depth=1
	lw	t1, 0(t0)
	sraiw	a7, a6, 10
	blt	a7, t1, .LBB9_43
# %bb.41:                               #   in Loop: Header=BB9_39 Depth=1
	mv	a7, t1
	j	.LBB9_43
.LBB9_42:                               #   in Loop: Header=BB9_39 Depth=1
	li	a7, 0
.LBB9_43:                               #   in Loop: Header=BB9_39 Depth=1
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	add	a6, a6, a3
	lw	s7, 0(a6)
	add	a6, s7, s6
	ld	t1, 56(sp)                      # 8-byte Folded Reload
	add	t1, t1, a3
	lw	ra, 0(t1)
	mul	t1, a6, s10
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	add	a6, a6, a3
	lw	a6, 0(a6)
	add	t2, ra, s6
	slli	t3, t2, 2
	add	t2, t3, t2
	add	a6, a6, s6
	add	t1, t1, a6
	subw	t1, t1, t2
	sraiw	t1, t1, 5
	slliw	s1, t6, 1
	slli	s1, s1, 1
	ld	t2, 40(sp)                      # 8-byte Folded Reload
	add	t2, t2, s1
	addi	t1, t1, 512
	sh	a7, 0(t2)
	bltz	t1, .LBB9_46
# %bb.44:                               #   in Loop: Header=BB9_39 Depth=1
	lw	a7, 0(t0)
	srai	t1, t1, 10
	blt	t1, a7, .LBB9_47
# %bb.45:                               #   in Loop: Header=BB9_39 Depth=1
	mv	t1, a7
	j	.LBB9_47
.LBB9_46:                               #   in Loop: Header=BB9_39 Depth=1
	li	t1, 0
.LBB9_47:                               #   in Loop: Header=BB9_39 Depth=1
	ld	a7, 24(sp)                      # 8-byte Folded Reload
	add	a7, a7, a3
	lw	a7, 0(a7)
	ld	t3, 32(sp)                      # 8-byte Folded Reload
	add	t3, t3, s1
	addiw	t2, s7, 512
	sh	t1, 0(t3)
	bltz	t2, .LBB9_50
# %bb.48:                               #   in Loop: Header=BB9_39 Depth=1
	lw	t3, 0(t0)
	sraiw	t1, t2, 10
	blt	t1, t3, .LBB9_51
# %bb.49:                               #   in Loop: Header=BB9_39 Depth=1
	mv	t1, t3
	j	.LBB9_51
.LBB9_50:                               #   in Loop: Header=BB9_39 Depth=1
	li	t1, 0
.LBB9_51:                               #   in Loop: Header=BB9_39 Depth=1
	add	s7, ra, s7
	mul	t2, s7, s10
	slli	t3, a6, 2
	add	a6, t3, a6
	add	t2, t2, s6
	subw	a6, t2, a6
	add	a6, a6, a7
	sraiw	a6, a6, 5
	ld	a7, 16(sp)                      # 8-byte Folded Reload
	add	a7, a7, s1
	addi	a6, a6, 512
	sh	t1, 0(a7)
	bltz	a6, .LBB9_54
# %bb.52:                               #   in Loop: Header=BB9_39 Depth=1
	lw	a7, 0(t0)
	srai	a6, a6, 10
	blt	a6, a7, .LBB9_55
# %bb.53:                               #   in Loop: Header=BB9_39 Depth=1
	mv	a6, a7
	j	.LBB9_55
.LBB9_54:                               #   in Loop: Header=BB9_39 Depth=1
	li	a6, 0
.LBB9_55:                               #   in Loop: Header=BB9_39 Depth=1
	ld	a7, 8(sp)                       # 8-byte Folded Reload
	add	a7, a7, s1
	sh	a6, 0(a7)
	ld	a6, 96(sp)                      # 8-byte Folded Reload
	li	a7, -2
	blt	a6, a7, .LBB9_66
# %bb.56:                               #   in Loop: Header=BB9_39 Depth=1
	lui	a6, %hi(img)
	ld	s6, %lo(img)(a6)
	add	s6, s6, s11
	li	s7, 8
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	j	.LBB9_59
.LBB9_57:                               #   in Loop: Header=BB9_59 Depth=2
	li	a7, 0
.LBB9_58:                               #   in Loop: Header=BB9_59 Depth=2
	addiw	t1, s7, 2
	slli	t1, t1, 3
	add	t1, s2, t1
	ld	t1, 0(t1)
	add	t1, t1, s1
	sh	a7, 0(t1)
	addi	s8, s8, 8
	addiw	s7, s7, 4
	mv	ra, a6
	beq	s8, s5, .LBB9_66
.LBB9_59:                               #   Parent Loop BB9_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a6, ra, 512
	bltz	a6, .LBB9_62
# %bb.60:                               #   in Loop: Header=BB9_59 Depth=2
	lw	t1, 0(s6)
	sraiw	a7, a6, 10
	blt	a7, t1, .LBB9_63
# %bb.61:                               #   in Loop: Header=BB9_59 Depth=2
	mv	a7, t1
	j	.LBB9_63
.LBB9_62:                               #   in Loop: Header=BB9_59 Depth=2
	li	a7, 0
.LBB9_63:                               #   in Loop: Header=BB9_59 Depth=2
	ld	a6, -16(s8)
	ld	t1, -32(s8)
	add	a6, a6, a3
	ld	t2, -8(s8)
	lw	a6, 0(a6)
	add	t1, t1, a3
	lw	t1, 0(t1)
	add	t2, t2, a3
	lw	t2, 0(t2)
	add	ra, a6, ra
	add	t1, t2, t1
	ld	t2, -40(s8)
	slli	t3, t1, 2
	add	t1, t3, t1
	ld	t3, 0(s8)
	add	t2, t2, a3
	lw	t2, 0(t2)
	mul	t4, ra, s10
	add	t3, t3, a3
	lw	t3, 0(t3)
	add	t2, t4, t2
	slli	t4, s7, 3
	add	t4, s2, t4
	ld	t4, 0(t4)
	subw	t1, t2, t1
	add	t1, t1, t3
	sraiw	t1, t1, 5
	add	t4, t4, s1
	addi	t1, t1, 512
	sh	a7, 0(t4)
	bltz	t1, .LBB9_57
# %bb.64:                               #   in Loop: Header=BB9_59 Depth=2
	lw	t2, 0(s6)
	srai	a7, t1, 10
	blt	a7, t2, .LBB9_58
# %bb.65:                               #   in Loop: Header=BB9_59 Depth=2
	mv	a7, t2
	j	.LBB9_58
.LBB9_66:                               #   in Loop: Header=BB9_39 Depth=1
	lui	a6, %hi(img)
	ld	ra, %lo(img)(a6)
	add	ra, ra, s11
	mv	s8, a0
	mv	s7, a4
	mv	s6, a5
	j	.LBB9_69
.LBB9_67:                               #   in Loop: Header=BB9_69 Depth=2
	li	a6, 0
.LBB9_68:                               #   in Loop: Header=BB9_69 Depth=2
	addiw	a7, s7, 2
	slli	a7, a7, 3
	add	a7, s2, a7
	ld	a7, 0(a7)
	add	a7, a7, s1
	sh	a6, 0(a7)
	addiw	s6, s6, 1
	addi	s8, s8, 8
	addiw	s7, s7, 4
	beq	s8, s9, .LBB9_38
.LBB9_69:                               #   Parent Loop BB9_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(s8)
	add	a6, a6, a3
	lw	a6, 0(a6)
	addiw	t1, s6, -2
	mv	a7, a1
	blt	a1, t1, .LBB9_71
# %bb.70:                               #   in Loop: Header=BB9_69 Depth=2
	mv	a7, t1
.LBB9_71:                               #   in Loop: Header=BB9_69 Depth=2
	slli	a7, a7, 3
	add	a7, a2, a7
	ld	a7, 0(a7)
	ld	t1, -8(s8)
	add	a7, a7, a3
	lw	a7, 0(a7)
	add	t1, t1, a3
	lw	t1, 0(t1)
	addiw	t3, s6, -1
	mv	t2, a1
	blt	a1, t3, .LBB9_73
# %bb.72:                               #   in Loop: Header=BB9_69 Depth=2
	mv	t2, t3
.LBB9_73:                               #   in Loop: Header=BB9_69 Depth=2
	slli	t2, t2, 3
	add	t2, a2, t2
	ld	t2, 0(t2)
	ld	t3, -16(s8)
	add	t2, t2, a3
	lw	s4, 0(t2)
	add	t3, t3, a3
	lw	t2, 0(t3)
	mv	t3, a1
	blt	a1, s6, .LBB9_75
# %bb.74:                               #   in Loop: Header=BB9_69 Depth=2
	mv	t3, s6
.LBB9_75:                               #   in Loop: Header=BB9_69 Depth=2
	slli	t3, t3, 3
	add	t3, a2, t3
	ld	t3, 0(t3)
	add	t3, t3, a3
	lw	t3, 0(t3)
	addiw	t4, a6, 512
	bltz	t4, .LBB9_78
# %bb.76:                               #   in Loop: Header=BB9_69 Depth=2
	lw	t5, 0(ra)
	sraiw	t4, t4, 10
	blt	t4, t5, .LBB9_79
# %bb.77:                               #   in Loop: Header=BB9_69 Depth=2
	mv	t4, t5
	j	.LBB9_79
.LBB9_78:                               #   in Loop: Header=BB9_69 Depth=2
	li	t4, 0
.LBB9_79:                               #   in Loop: Header=BB9_69 Depth=2
	add	a6, a7, a6
	mul	a6, a6, s10
	add	t1, s4, t1
	slli	a7, t1, 2
	add	a7, a7, t1
	add	a6, a6, t2
	slli	t1, s7, 3
	add	t1, s2, t1
	ld	t1, 0(t1)
	subw	a6, a6, a7
	add	a6, a6, t3
	sraiw	a6, a6, 5
	add	t1, t1, s1
	addi	a6, a6, 512
	sh	t4, 0(t1)
	bltz	a6, .LBB9_67
# %bb.80:                               #   in Loop: Header=BB9_69 Depth=2
	lw	a7, 0(ra)
	srai	a6, a6, 10
	blt	a6, a7, .LBB9_68
# %bb.81:                               #   in Loop: Header=BB9_69 Depth=2
	mv	a6, a7
	j	.LBB9_68
.LBB9_82:
	slli	a4, s3, 2
	addiw	a1, a4, 30
	ld	s10, 88(sp)                     # 8-byte Folded Reload
	slli	a7, s10, 2
	addiw	a6, a7, 32
	addiw	a0, a4, 32
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	blez	a6, .LBB9_94
# %bb.83:
	addiw	a2, a4, 28
	addi	t3, a2, 2
	mv	t1, a1
	blt	a1, t3, .LBB9_85
# %bb.84:
	mv	t1, t3
.LBB9_85:
	addi	t2, a2, 1
	mv	t4, a1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	blt	a1, a0, .LBB9_87
# %bb.86:
	ld	t4, 96(sp)                      # 8-byte Folded Reload
.LBB9_87:
	li	a3, 0
	addiw	a4, a4, 31
	addi	t5, a2, 3
	slli	a5, a2, 1
	addi	a0, a5, -2
	andi	a0, a0, -4
	addi	t0, a0, 8
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	j	.LBB9_89
.LBB9_88:                               #   in Loop: Header=BB9_89 Depth=1
	addi	a3, a3, 2
	bgeu	a3, a6, .LBB9_94
.LBB9_89:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_91 Depth 2
	slli	t6, a3, 3
	blez	a2, .LBB9_92
# %bb.90:                               #   in Loop: Header=BB9_89 Depth=1
	add	a0, s2, t6
	ld	s4, 0(a0)
	lhu	s5, 0(s4)
	addi	s1, s4, 4
	add	s4, s4, t0
.LBB9_91:                               #   Parent Loop BB9_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a0, 0(s1)
	add	s5, s5, a0
	addi	s5, s5, 1
	srli	s5, s5, 1
	sh	s5, -2(s1)
	addi	s1, s1, 4
	mv	s5, a0
	bne	s1, s4, .LBB9_91
.LBB9_92:                               #   in Loop: Header=BB9_89 Depth=1
	bge	a2, a4, .LBB9_88
# %bb.93:                               #   in Loop: Header=BB9_89 Depth=1
	add	t6, s2, t6
	ld	a0, 0(t6)
	add	t6, a0, a5
	lhu	t6, 0(t6)
	add	s1, a0, t1
	lhu	s1, 0(s1)
	add	t6, t6, s1
	addi	t6, t6, 1
	srli	t6, t6, 1
	add	s1, a0, t2
	sh	t6, 0(s1)
	add	t6, a0, t3
	lhu	t6, 0(t6)
	add	s1, a0, t4
	lhu	s1, 0(s1)
	add	t6, t6, s1
	addi	t6, t6, 1
	srli	t6, t6, 1
	add	a0, a0, t5
	sh	t6, 0(a0)
	j	.LBB9_88
.LBB9_94:
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB9_123
# %bb.95:
	addiw	a2, a7, 28
	addiw	t0, a7, 30
	addi	a0, a2, 2
	slli	a3, a2, 3
	mv	a4, t0
	blt	t0, a0, .LBB9_97
# %bb.96:
	mv	a4, a0
.LBB9_97:
	add	a3, s2, a3
	slli	a4, a4, 3
	add	a4, s2, a4
	slli	a0, a0, 3
	add	a5, s2, a0
	blt	t0, a6, .LBB9_99
# %bb.98:
	mv	t0, a6
.LBB9_99:
	li	a6, 0
	addiw	a7, a7, 31
	slli	t0, t0, 3
	add	t0, s2, t0
	addi	t1, a3, 24
	addi	t2, s2, 8
	j	.LBB9_104
.LBB9_100:                              #   in Loop: Header=BB9_104 Depth=1
	ld	a0, 0(a3)
	ld	t3, 0(a4)
	add	a0, a0, s5
	lhu	a0, 0(a0)
	add	t3, t3, t6
	lhu	t3, 0(t3)
	ld	t4, 8(a3)
	add	a0, a0, t3
	addi	a0, a0, 1
	srli	a0, a0, 1
	add	t4, t4, t5
	sh	a0, 0(t4)
.LBB9_101:                              #   in Loop: Header=BB9_104 Depth=1
	ld	a0, 0(a5)
	ld	t3, 0(t0)
	add	a0, a0, t6
	lhu	a0, 0(a0)
	add	t3, t3, s5
	lhu	t3, 0(t3)
	add	a0, a0, t3
	addi	t6, a0, 1
	addi	s1, a5, 8
.LBB9_102:                              #   in Loop: Header=BB9_104 Depth=1
	ld	a0, 0(s1)
	srli	t6, t6, 1
	add	a0, a0, t5
	sh	t6, 0(a0)
.LBB9_103:                              #   in Loop: Header=BB9_104 Depth=1
	addi	a6, a6, 1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	beq	a6, a0, .LBB9_123
.LBB9_104:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_110 Depth 2
	addiw	t4, a6, 1
	mv	a0, a1
	blt	a1, t4, .LBB9_106
# %bb.105:                              #   in Loop: Header=BB9_104 Depth=1
	mv	a0, t4
.LBB9_106:                              #   in Loop: Header=BB9_104 Depth=1
	addi	t6, a6, -1
	andi	s6, a6, 1
	andi	s1, a6, 3
	slli	t5, a6, 1
	slli	t6, t6, 1
	blez	a2, .LBB9_116
# %bb.107:                              #   in Loop: Header=BB9_104 Depth=1
	li	s7, 0
	li	s8, 0
	addi	t4, s1, -3
	seqz	s9, t4
	mv	s10, t2
	j	.LBB9_110
.LBB9_108:                              #   in Loop: Header=BB9_110 Depth=2
	ld	t4, -8(s10)
	ld	s4, 8(s10)
	add	t4, t4, t5
	lhu	t4, 0(t4)
	add	s4, s4, t5
	lhu	s4, 0(s4)
	ld	s5, 0(s10)
	add	t4, t4, s4
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	s5, s5, t5
	sh	t4, 0(s5)
.LBB9_109:                              #   in Loop: Header=BB9_110 Depth=2
	addi	s8, s8, 2
	addi	s10, s10, 16
	addi	s7, s7, 2
	bge	s8, a2, .LBB9_116
.LBB9_110:                              #   Parent Loop BB9_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	s6, .LBB9_108
# %bb.111:                              #   in Loop: Header=BB9_110 Depth=2
	xori	s4, s1, 1
	andi	t4, s7, 2
	ld	s5, 0(s10)
	ld	ra, -8(s10)
	ld	s11, 8(s10)
	or	t3, s4, t4
	add	s4, s5, t5
	slli	s5, a0, 1
	beqz	t3, .LBB9_114
# %bb.112:                              #   in Loop: Header=BB9_110 Depth=2
	srli	t4, t4, 1
	and	t3, s9, t4
	bnez	t3, .LBB9_114
# %bb.113:                              #   in Loop: Header=BB9_110 Depth=2
	add	ra, ra, t6
	lhu	t3, 0(ra)
	add	s5, s11, s5
	lhu	t4, 0(s5)
	j	.LBB9_115
.LBB9_114:                              #   in Loop: Header=BB9_110 Depth=2
	add	s5, ra, s5
	lhu	t3, 0(s5)
	add	s11, s11, t6
	lhu	t4, 0(s11)
.LBB9_115:                              #   in Loop: Header=BB9_110 Depth=2
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	sh	t3, 0(s4)
	j	.LBB9_109
.LBB9_116:                              #   in Loop: Header=BB9_104 Depth=1
	ld	s10, 88(sp)                     # 8-byte Folded Reload
	bge	a2, a7, .LBB9_103
# %bb.117:                              #   in Loop: Header=BB9_104 Depth=1
	bnez	s6, .LBB9_120
# %bb.118:                              #   in Loop: Header=BB9_104 Depth=1
	ld	a0, 0(a3)
	ld	t3, 0(a4)
	add	a0, a0, t5
	lhu	a0, 0(a0)
	add	t3, t3, t5
	lhu	t3, 0(t3)
	add	a0, a0, t3
	ld	t3, 8(a3)
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	t4, 0(a5)
	add	t3, t3, t5
	ld	t6, 0(t0)
	sh	a0, 0(t3)
	add	t4, t4, t5
	lhu	a0, 0(t4)
	add	t6, t6, t5
	lhu	t3, 0(t6)
.LBB9_119:                              #   in Loop: Header=BB9_104 Depth=1
	add	a0, a0, t3
	addi	t6, a0, 1
	mv	s1, t1
	j	.LBB9_102
.LBB9_120:                              #   in Loop: Header=BB9_104 Depth=1
	slli	s5, a0, 1
	li	a0, 1
	beq	s1, a0, .LBB9_100
# %bb.121:                              #   in Loop: Header=BB9_104 Depth=1
	ld	a0, 0(a3)
	ld	t3, 0(a4)
	add	a0, a0, t6
	lhu	a0, 0(a0)
	add	t3, t3, s5
	lhu	t3, 0(t3)
	ld	t4, 8(a3)
	add	a0, a0, t3
	addi	a0, a0, 1
	srli	a0, a0, 1
	add	t4, t4, t5
	sh	a0, 0(t4)
	li	a0, 3
	bne	s1, a0, .LBB9_101
# %bb.122:                              #   in Loop: Header=BB9_104 Depth=1
	ld	a0, 0(a5)
	ld	t3, 0(t0)
	add	a0, a0, s5
	lhu	a0, 0(a0)
	add	t3, t3, t6
	lhu	t3, 0(t3)
	j	.LBB9_119
.LBB9_123:
	blez	s10, .LBB9_2
# %bb.124:
	li	s5, 0
	li	s6, 0
	slli	a0, s3, 32
	srli	s7, a0, 32
	j	.LBB9_126
.LBB9_125:                              #   in Loop: Header=BB9_126 Depth=1
	addi	s6, s6, 1
	addw	s5, s5, s3
	beq	s6, s10, .LBB9_2
.LBB9_126:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_128 Depth 2
	blez	s3, .LBB9_125
# %bb.127:                              #   in Loop: Header=BB9_126 Depth=1
	slli	a0, s6, 2
	addiw	a0, a0, 16
	slli	a0, a0, 3
	add	s4, s2, a0
	li	s8, 16
	mv	s1, s5
	mv	s9, s7
.LBB9_128:                              #   Parent Loop BB9_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s4)
	slli	a1, s8, 1
	add	a0, a0, a1
	lhu	a2, 0(a0)
	mv	a0, s0
	mv	a1, s1
	call	PutPel_11
	addi	s9, s9, -1
	addiw	s8, s8, 4
	addiw	s1, s1, 1
	bnez	s9, .LBB9_128
	j	.LBB9_125
.Lfunc_end9:
	.size	UnifiedOneForthPix, .Lfunc_end9-UnifiedOneForthPix
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dummy_slice_too_big             # -- Begin function dummy_slice_too_big
	.p2align	2
	.type	dummy_slice_too_big,@function
dummy_slice_too_big:                    # @dummy_slice_too_big
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end10:
	.size	dummy_slice_too_big, .Lfunc_end10-dummy_slice_too_big
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	copy_rdopt_data                 # -- Begin function copy_rdopt_data
	.p2align	2
	.type	copy_rdopt_data,@function
copy_rdopt_data:                        # @copy_rdopt_data
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	lui	s3, %hi(img)
	ld	a0, %lo(img)(s3)
	lui	s6, 22
	addiw	a1, s6, 84
	add	a2, a0, a1
	lui	a1, 8
	add	a3, a0, a1
	lw	a4, 12(a0)
	lui	s4, %hi(rdopt)
	ld	a1, %lo(rdopt)(s4)
	ld	a3, -1192(a3)
	li	a5, 528
	mul	a4, a4, a5
	lw	a5, 1560(a1)
	lw	a6, 1624(a1)
	add	s11, a3, a4
	lw	s10, 24(a0)
	sw	a5, 72(s11)
	sw	a6, 364(s11)
	ld	a3, 1632(a1)
	lh	a4, 1564(a1)
	lw	a5, 1696(a1)
	lw	a6, 1716(a1)
	sd	a3, 368(s11)
	sh	a4, 476(s11)
	sw	a5, 0(a2)
	sw	a6, 488(s11)
	lw	a3, 1720(a1)
	lw	a4, 1728(a1)
	lw	a5, 1724(a1)
	lw	s5, 428(s11)
	sw	a3, 492(s11)
	sw	a4, 496(s11)
	sw	a5, 8(s11)
	lw	a3, 1712(a1)
	lw	a4, 1700(a1)
	lw	a2, 344(a2)
	lw	s2, 1640(a1)
	sw	a3, 12(s11)
	li	a3, -3
	sw	a4, 416(s11)
	blt	a2, a3, .LBB11_4
# %bb.1:                                # %.preheader7
	li	s7, 0
	li	s8, -1
	lui	s9, 3
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s9
	ld	a0, 1848(a0)
	ld	a1, 1544(a1)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a1, a1, s7
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	add	a1, a0, s6
	lw	a1, 428(a1)
	addiw	a1, a1, 3
	addi	s8, s8, 1
	addi	s7, s7, 8
	blt	s8, a1, .LBB11_2
# %bb.3:
	lui	a1, %hi(rdopt)
	ld	a1, %lo(rdopt)(a1)
.LBB11_4:
	lui	s0, 3
	add	a0, a0, s0
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s0
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s0
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s0
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s0
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(rdopt)(s4)
	add	a0, a0, s0
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	lui	a3, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a3)
	lui	a2, 2
	add	a0, a0, a2
	ld	a1, -1712(a0)
	ld	a0, %lo(img)(s3)
	li	a4, 0
	ld	t2, 0(a1)
	lw	a1, 144(a0)
	li	a5, 1664
	addiw	a6, a2, -1712
	li	a2, 264
	mul	a7, s5, a2
	li	t0, 1680
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 148(a0)
	add	a0, a4, a0
	ld	a2, %lo(rdopt)(s4)
	slli	t3, a0, 3
	add	t2, t2, t3
	ld	a0, 0(t2)
	add	a2, a2, a5
	lw	a2, 0(a2)
	add	a0, a0, a1
	srli	a1, a2, 24
	sb	a1, 3(a0)
	srli	a1, a2, 16
	sb	a1, 2(a0)
	srli	a1, a2, 8
	sb	a1, 1(a0)
	sb	a2, 0(a0)
	ld	a2, %lo(enc_picture)(a3)
	add	a1, a2, a6
	ld	t1, 0(a1)
	ld	t2, 0(t1)
	ld	a0, %lo(img)(s3)
	add	t4, t2, t3
	ld	t4, 0(t4)
	ld	t5, 8(a1)
	lw	a1, 144(a0)
	ld	t5, 0(t5)
	add	t6, t4, a1
	lbu	t6, 0(t6)
	add	s0, a2, a7
	add	t3, t5, t3
	ld	t3, 0(t3)
	slli	t6, t6, 3
	addi	s0, s0, 24
	add	t6, s0, t6
	ld	t5, 0(t6)
	slli	t6, a1, 3
	add	t6, t3, t6
	sd	t5, 0(t6)
	addi	t5, a1, 1
	add	t6, t4, t5
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, s0, t6
	ld	t6, 0(t6)
	slli	t5, t5, 3
	add	t5, t3, t5
	sd	t6, 0(t5)
	addi	t5, a1, 2
	add	t6, t4, t5
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, s0, t6
	ld	t6, 0(t6)
	slli	t5, t5, 3
	add	t5, t3, t5
	sd	t6, 0(t5)
	addi	t5, a1, 3
	add	t4, t4, t5
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, s0, t4
	ld	t4, 0(t4)
	slli	t5, t5, 3
	add	t3, t3, t5
	sd	t4, 0(t3)
	addi	a5, a5, 4
	addi	a4, a4, 1
	bne	a5, t0, .LBB11_5
# %bb.6:
	li	a3, 1
	bne	s10, a3, .LBB11_9
# %bb.7:
	li	a3, 0
	addiw	s5, s5, 1
	ld	t3, 8(t1)
	li	a4, 1680
	lui	a5, %hi(rdopt)
	lui	a6, %hi(enc_picture)
	lui	a2, 2
	addiw	a7, a2, -1712
	li	a2, 264
	mul	t0, s5, a2
	lui	t1, %hi(img)
	li	t2, 1696
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 148(a0)
	add	a0, a3, a0
	ld	a2, %lo(rdopt)(a5)
	slli	t4, a0, 3
	add	t3, t3, t4
	ld	a0, 0(t3)
	add	a2, a2, a4
	lw	a2, 0(a2)
	add	a0, a0, a1
	srli	a1, a2, 24
	sb	a1, 3(a0)
	srli	a1, a2, 16
	sb	a1, 2(a0)
	srli	a1, a2, 8
	sb	a1, 1(a0)
	sb	a2, 0(a0)
	ld	a2, %lo(enc_picture)(a6)
	add	a1, a2, a7
	ld	a0, 0(a1)
	ld	t3, 8(a0)
	ld	a0, %lo(img)(t1)
	add	t5, t3, t4
	ld	t5, 0(t5)
	ld	t6, 8(a1)
	lw	a1, 144(a0)
	ld	t6, 8(t6)
	add	s0, t5, a1
	lbu	s0, 0(s0)
	add	s1, a2, t0
	add	t4, t6, t4
	ld	t4, 0(t4)
	slli	s0, s0, 3
	addi	s1, s1, 24
	add	s0, s1, s0
	ld	t6, 0(s0)
	slli	s0, a1, 3
	add	s0, t4, s0
	sd	t6, 0(s0)
	addi	t6, a1, 1
	add	s0, t5, t6
	lbu	s0, 0(s0)
	slli	s0, s0, 3
	add	s0, s1, s0
	ld	s0, 0(s0)
	slli	t6, t6, 3
	add	t6, t4, t6
	sd	s0, 0(t6)
	addi	t6, a1, 2
	add	s0, t5, t6
	lbu	s0, 0(s0)
	slli	s0, s0, 3
	add	s0, s1, s0
	ld	s0, 0(s0)
	slli	t6, t6, 3
	add	t6, t4, t6
	sd	s0, 0(t6)
	addi	t6, a1, 3
	add	t5, t5, t6
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, s1, t5
	ld	t5, 0(t5)
	slli	t6, t6, 3
	add	t4, t4, t6
	sd	t5, 0(t4)
	addi	a4, a4, 4
	addi	a3, a3, 1
	bne	a4, t2, .LBB11_8
.LBB11_9:
	li	s0, 0
	lui	a0, 2
	addiw	s1, a0, -1768
	add	s1, a2, s1
	li	s3, 8
	lui	s4, %hi(img)
	lui	s5, %hi(rdopt)
	li	s6, 520
.LBB11_10:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s4)
	lw	a1, 156(a0)
	ld	a2, 0(s1)
	add	a1, s0, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 0(a1)
	ld	a2, %lo(rdopt)(s5)
	slli	a0, a0, 1
	add	a0, a1, a0
	add	a1, a2, s3
	li	a2, 32
	call	memcpy
	addi	s3, s3, 32
	addi	s0, s0, 1
	bne	s3, s6, .LBB11_10
# %bb.11:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, 436
	add	a1, a0, a1
	lw	a2, 0(a1)
	beqz	a2, .LBB11_15
# %bb.12:
	lw	a1, 12(a1)
	blez	a1, .LBB11_15
# %bb.13:                               # %.preheader
	li	s0, 0
	li	s1, 0
	lui	s3, %hi(enc_picture)
	lui	s4, 2
	lui	s5, %hi(rdopt)
	lui	s6, 22
	lui	s7, %hi(img)
.LBB11_14:                              # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(enc_picture)(s3)
	add	a1, a1, s4
	ld	a1, -1728(a1)
	lw	a2, 164(a0)
	ld	a1, 0(a1)
	add	a2, s1, a2
	lw	a3, 160(a0)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a3, a3, 1
	ld	a2, %lo(rdopt)(s5)
	add	a0, a0, s6
	lw	a4, 444(a0)
	add	a0, a1, a3
	add	a2, a2, s0
	addi	a1, a2, 520
	slli	a2, a4, 1
	call	memcpy
	ld	a0, %lo(enc_picture)(s3)
	ld	a1, %lo(img)(s7)
	add	a0, a0, s4
	ld	a0, -1728(a0)
	lw	a2, 164(a1)
	ld	a0, 8(a0)
	add	a2, s1, a2
	lw	a3, 160(a1)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	a3, a3, 1
	ld	a2, %lo(rdopt)(s5)
	add	a1, a1, s6
	lw	a4, 444(a1)
	add	a0, a0, a3
	add	a2, a2, s0
	addi	a1, a2, 1032
	slli	a2, a4, 1
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a1, a0, s6
	lw	a1, 448(a1)
	addi	s1, s1, 1
	addi	s0, s0, 32
	blt	s1, a1, .LBB11_14
.LBB11_15:
	lui	a1, %hi(rdopt)
	ld	a0, %lo(rdopt)(a1)
	ld	a2, 1576(a0)
	sd	a2, 384(s11)
	ld	a0, 1568(a0)
	sd	a0, 376(s11)
	ld	a0, %lo(rdopt)(a1)
	ld	a2, 1592(a0)
	sd	a2, 400(s11)
	ld	a0, 1584(a0)
	sd	a0, 392(s11)
	ld	a0, %lo(rdopt)(a1)
	lw	a2, 1704(a0)
	li	a3, 8
	sw	a2, 468(s11)
	bne	s2, a3, .LBB11_18
# %bb.16:
	lw	a2, 1620(a0)
	sw	a2, 344(s11)
	lw	a2, 1616(a0)
	sw	a2, 340(s11)
	lw	a2, 1612(a0)
	sw	a2, 336(s11)
	lw	a0, 1608(a0)
	sw	a0, 332(s11)
	lui	a2, %hi(img)
	ld	a0, %lo(img)(a2)
	lw	a4, 148(a0)
	addi	a3, a4, -1
	slli	a4, a4, 3
.LBB11_17:                              # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(rdopt)(a1)
	ld	a6, 104(a0)
	ld	a5, 1600(a5)
	add	a6, a6, a4
	ld	a6, 0(a6)
	lw	a0, 144(a0)
	add	a5, a5, a4
	ld	a5, 0(a5)
	add	a6, a6, a0
	add	a0, a5, a0
	lbu	a5, 2(a0)
	lb	a7, 3(a0)
	lbu	t0, 0(a0)
	lbu	a0, 1(a0)
	sb	a5, 2(a6)
	sb	a7, 3(a6)
	sb	t0, 0(a6)
	sb	a0, 1(a6)
	ld	a0, %lo(img)(a2)
	lw	a5, 148(a0)
	addiw	a5, a5, 3
	addi	a3, a3, 1
	addi	a4, a4, 8
	blt	a3, a5, .LBB11_17
	j	.LBB11_23
.LBB11_18:
	andi	a1, s2, -5
	li	a2, 9
	bne	a1, a2, .LBB11_21
# %bb.19:
	lw	a1, 1620(a0)
	sw	a1, 344(s11)
	lw	a1, 1616(a0)
	sw	a1, 340(s11)
	lw	a1, 1612(a0)
	sw	a1, 336(s11)
	lw	a0, 1608(a0)
	sw	a0, 332(s11)
	lui	a1, %hi(img)
	ld	a0, %lo(img)(a1)
	lw	a3, 148(a0)
	addi	a2, a3, -1
	slli	a3, a3, 3
	lui	a4, %hi(rdopt)
.LBB11_20:                              # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(rdopt)(a4)
	ld	a6, 104(a0)
	ld	a5, 1600(a5)
	add	a6, a6, a3
	ld	a6, 0(a6)
	lw	a0, 144(a0)
	add	a5, a5, a3
	ld	a5, 0(a5)
	add	a6, a6, a0
	add	a0, a5, a0
	lbu	a5, 2(a0)
	lb	a7, 3(a0)
	lbu	t0, 0(a0)
	lbu	a0, 1(a0)
	sb	a5, 2(a6)
	sb	a7, 3(a6)
	sb	t0, 0(a6)
	sb	a0, 1(a6)
	ld	a0, %lo(img)(a1)
	lw	a5, 148(a0)
	addiw	a5, a5, 3
	addi	a2, a2, 1
	addi	a3, a3, 8
	blt	a2, a5, .LBB11_20
	j	.LBB11_23
.LBB11_21:
	lui	a0, 8224
	addi	a0, a0, 514
	sw	a0, 344(s11)
	sw	a0, 340(s11)
	sw	a0, 336(s11)
	sw	a0, 332(s11)
	lui	a1, %hi(img)
	ld	a0, %lo(img)(a1)
	lw	a3, 148(a0)
	addi	a2, a3, -1
	slli	a3, a3, 3
	li	a4, 2
.LBB11_22:                              # =>This Inner Loop Header: Depth=1
	ld	a5, 104(a0)
	add	a5, a5, a3
	ld	a5, 0(a5)
	lw	a0, 144(a0)
	add	a0, a5, a0
	sb	a4, 3(a0)
	sb	a4, 2(a0)
	sb	a4, 1(a0)
	sb	a4, 0(a0)
	ld	a0, %lo(img)(a1)
	lw	a5, 148(a0)
	addiw	a5, a5, 3
	addi	a2, a2, 1
	addi	a3, a3, 8
	blt	a2, a5, .LBB11_22
.LBB11_23:
	lui	a1, 22
	addiw	a4, a1, -784
	add	a4, a0, a4
	lw	a1, 892(a4)
	beqz	a1, .LBB11_35
# %bb.24:
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	lwu	a7, 36(a0)
	li	a2, 0
	addi	a1, s11, 376
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	addi	a1, s11, 392
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	sext.w	a6, a7
	slli	a7, a7, 3
	li	t1, 4
	j	.LBB11_26
.LBB11_25:                              #   in Loop: Header=BB11_26 Depth=1
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	beq	a2, t1, .LBB11_31
.LBB11_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_28 Depth 2
                                        #       Child Loop BB11_30 Depth 3
	lui	a1, %hi(rdopt)
	ld	a3, %lo(rdopt)(a1)
	li	t2, 0
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	slli	t3, a2, 3
	j	.LBB11_28
.LBB11_27:                              #   in Loop: Header=BB11_28 Depth=2
	addi	t2, t2, 1
	beq	t2, t1, .LBB11_25
.LBB11_28:                              #   Parent Loop BB11_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_30 Depth 3
	blez	a6, .LBB11_27
# %bb.29:                               #   in Loop: Header=BB11_28 Depth=2
	ld	t0, 1656(a3)
	slli	t5, t2, 3
	add	t0, t0, t5
	ld	t0, 0(t0)
	ld	t4, 8(a4)
	add	t0, t0, t3
	ld	t0, 0(t0)
	add	t4, t4, t5
	ld	t6, 0(t4)
	ld	t4, 0(t0)
	ld	s0, 1648(a3)
	add	t6, t6, t3
	ld	s1, 0(a4)
	ld	s2, 0(t6)
	add	s0, s0, t5
	ld	t6, 0(s0)
	add	t5, s1, t5
	ld	s0, 0(t5)
	ld	t5, 0(s2)
	add	t6, t6, t3
	ld	s1, 0(t6)
	add	s0, s0, t3
	ld	s0, 0(s0)
	ld	t6, 8(t0)
	ld	s2, 8(s2)
	ld	s3, 0(s1)
	ld	s4, 0(s0)
	ld	s5, 8(s0)
	ld	s6, 8(s1)
	add	s7, s5, a7
.LBB11_30:                              #   Parent Loop BB11_26 Depth=1
                                        #     Parent Loop BB11_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	s8, 0(t4)
	ld	t0, 0(s8)
	ld	s10, 0(t5)
	lh	s0, 0(t0)
	ld	s1, 0(s10)
	ld	s9, 0(t6)
	sh	s0, 0(s1)
	lh	t0, 2(t0)
	ld	s0, 0(s9)
	ld	s11, 0(s2)
	sh	t0, 2(s1)
	lh	t0, 0(s0)
	ld	a1, 0(s11)
	ld	ra, 0(s3)
	sh	t0, 0(a1)
	lh	t0, 2(s0)
	ld	s0, 0(ra)
	ld	s1, 0(s4)
	sh	t0, 2(a1)
	lh	a1, 0(s0)
	ld	a2, 0(s1)
	ld	t0, 0(s6)
	sh	a1, 0(a2)
	lh	a1, 2(s0)
	ld	a5, 0(t0)
	ld	s0, 0(s5)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 0(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 8(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 8(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 8(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 8(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 8(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 8(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 8(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 8(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 16(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 16(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 16(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 16(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 16(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 16(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 16(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 16(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 24(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 24(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 24(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 24(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 24(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 24(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 24(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 24(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 32(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 32(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 32(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 32(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 32(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 32(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 32(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 32(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 40(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 40(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 40(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 40(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 40(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 40(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 40(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 40(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 48(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 48(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 48(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 48(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 48(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 48(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 48(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 48(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 56(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 56(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 56(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 56(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 56(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 56(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 56(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 56(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 64(s8)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 64(s10)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 64(s9)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 64(s11)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 64(ra)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 64(s1)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	ld	a5, 64(t0)
	sh	a1, 2(a2)
	lh	a1, 0(a5)
	ld	a2, 64(s0)
	sh	a1, 0(a2)
	lh	a1, 2(a5)
	sh	a1, 2(a2)
	addi	s5, s5, 8
	addi	s6, s6, 8
	addi	s4, s4, 8
	addi	s3, s3, 8
	addi	s2, s2, 8
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	bne	s5, s7, .LBB11_30
	j	.LBB11_27
.LBB11_31:
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	lw	a4, 72(a1)
	li	a1, 14
	bltu	a1, a4, .LBB11_36
# %bb.32:
	lui	a1, 6
	addiw	a1, a1, 1536
	srl	a1, a1, a4
	andi	a1, a1, 1
	beqz	a1, .LBB11_36
# %bb.33:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	addiw	a1, a1, -1688
	add	a0, a0, a1
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	ld	a3, 0(a0)
	lw	a4, 148(a2)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	lw	a2, 144(a2)
	ld	a3, 0(a3)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	zero, 8(a2)
	sh	zero, 10(a2)
	sh	zero, 12(a2)
	sh	zero, 14(a2)
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a2)
	ld	a2, %lo(img)(a1)
	ld	a3, 0(a0)
	lw	a4, 148(a2)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	lw	a2, 144(a2)
	ld	a3, 8(a3)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	zero, 14(a2)
	sh	zero, 12(a2)
	sh	zero, 10(a2)
	sh	zero, 8(a2)
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a2)
	ld	a2, %lo(img)(a1)
	ld	a3, 0(a0)
	lw	a4, 148(a2)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	lw	a2, 144(a2)
	ld	a3, 16(a3)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	zero, 14(a2)
	sh	zero, 12(a2)
	sh	zero, 10(a2)
	sh	zero, 8(a2)
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a2)
	ld	a2, %lo(img)(a1)
	ld	a3, 0(a0)
	lw	a4, 148(a2)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	lw	a2, 144(a2)
	ld	a3, 24(a3)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	zero, 14(a2)
	sh	zero, 12(a2)
	sh	zero, 10(a2)
	sh	zero, 8(a2)
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	li	a3, 1
	sh	zero, 0(a2)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	bne	a2, a3, .LBB11_35
# %bb.34:
	ld	a2, %lo(img)(a1)
	ld	a3, 0(a0)
	lw	a4, 148(a2)
	ld	a3, 8(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	lw	a2, 144(a2)
	ld	a3, 0(a3)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	zero, 14(a2)
	sh	zero, 12(a2)
	sh	zero, 10(a2)
	sh	zero, 8(a2)
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a2)
	ld	a2, %lo(img)(a1)
	ld	a3, 0(a0)
	lw	a4, 148(a2)
	ld	a3, 8(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	lw	a2, 144(a2)
	ld	a3, 8(a3)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	zero, 14(a2)
	sh	zero, 12(a2)
	sh	zero, 10(a2)
	sh	zero, 8(a2)
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a2)
	ld	a2, %lo(img)(a1)
	ld	a3, 0(a0)
	lw	a4, 148(a2)
	ld	a3, 8(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	lw	a2, 144(a2)
	ld	a3, 16(a3)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	zero, 14(a2)
	sh	zero, 12(a2)
	sh	zero, 10(a2)
	sh	zero, 8(a2)
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a2)
	ld	a1, %lo(img)(a1)
	ld	a0, 0(a0)
	lw	a2, 148(a1)
	ld	a0, 8(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 144(a1)
	ld	a0, 24(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	sh	zero, 14(a0)
	sh	zero, 12(a0)
	sh	zero, 10(a0)
	sh	zero, 8(a0)
	sh	zero, 6(a0)
	sh	zero, 4(a0)
	sh	zero, 2(a0)
	sh	zero, 0(a0)
.LBB11_35:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB11_36:
	li	a4, 0
	addi	a5, a3, 1664
	lui	a6, %hi(enc_picture)
	lui	a1, 2
	addiw	a7, a1, -1688
	li	t0, 1
	li	t1, 4
	ld	s11, 16(sp)                     # 8-byte Folded Reload
	ld	ra, 0(sp)                       # 8-byte Folded Reload
	j	.LBB11_38
.LBB11_37:                              #   in Loop: Header=BB11_38 Depth=1
	addi	a4, a4, 1
	addi	a5, a5, 4
	beq	a4, t1, .LBB11_35
.LBB11_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_43 Depth 2
	ld	t5, %lo(enc_picture)(a6)
	li	t2, 0
	li	t3, 0
	andi	t4, a4, 2
	add	t5, t5, a7
	slli	t6, a4, 3
	j	.LBB11_43
.LBB11_39:                              #   in Loop: Header=BB11_43 Depth=2
	addw	s4, t3, s6
.LBB11_40:                              #   in Loop: Header=BB11_43 Depth=2
	add	a1, a5, t3
	lbu	a2, 16(a1)
	ld	s3, 8(s3)
	slli	a2, a2, 3
	add	a2, s3, a2
	ld	a2, 0(a2)
	slli	s5, s0, 3
	ld	s0, 8(s1)
	add	a2, a2, s5
	ld	a2, 0(a2)
	slli	s2, s2, 3
	add	s0, s0, s2
	ld	s0, 0(s0)
	lh	a2, 0(a2)
	slli	s4, s4, 3
	add	s0, s0, s4
	ld	s0, 0(s0)
	sh	a2, 0(s0)
	lbu	a1, 16(a1)
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	add	a1, a1, s5
	ld	a1, 0(a1)
	lhu	s1, 2(a1)
.LBB11_41:                              #   in Loop: Header=BB11_43 Depth=2
	sh	s1, 2(s0)
.LBB11_42:                              #   in Loop: Header=BB11_43 Depth=2
	addi	t3, t3, 1
	addi	t2, t2, 8
	beq	t3, t1, .LBB11_37
.LBB11_43:                              #   Parent Loop BB11_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a1, t3, 1
	or	a1, a1, t4
	slli	a1, a1, 2
	add	a2, ra, a1
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	add	a1, s0, a1
	lw	s4, 0(a1)
	lw	s0, 0(a2)
	bne	s4, t0, .LBB11_46
# %bb.44:                               #   in Loop: Header=BB11_43 Depth=2
	ld	s1, 0(t5)
	lw	a1, 148(a0)
	ld	a2, 0(s1)
	addw	s2, a1, a4
	slli	a1, s2, 3
	lw	s4, 144(a0)
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	s4, t3, s4
	slli	a2, s4, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	sh	zero, 0(a1)
	sh	zero, 2(a1)
	bne	s11, t0, .LBB11_42
# %bb.45:                               #   in Loop: Header=BB11_43 Depth=2
	ld	a1, 1656(a3)
	add	a1, a1, t6
	ld	a1, 0(a1)
	add	a1, a1, t2
	ld	s3, 0(a1)
	j	.LBB11_40
.LBB11_46:                              #   in Loop: Header=BB11_43 Depth=2
	ld	a1, 1656(a3)
	add	a1, a1, t6
	ld	a1, 0(a1)
	add	a1, a1, t2
	ld	s3, 0(a1)
	add	a1, a5, t3
	lbu	a2, 0(a1)
	ld	s8, 0(s3)
	slli	a2, a2, 3
	add	a2, s8, a2
	ld	a2, 0(a2)
	slli	s9, s0, 3
	ld	s1, 0(t5)
	lw	s2, 148(a0)
	add	a2, a2, s9
	ld	a2, 0(a2)
	ld	s7, 0(s1)
	addw	s2, s2, a4
	slli	s5, s2, 3
	lw	s6, 144(a0)
	add	s7, s7, s5
	ld	s10, 0(s7)
	lh	a2, 0(a2)
	add	s7, t3, s6
	slli	s7, s7, 3
	add	s10, s10, s7
	ld	s10, 0(s10)
	sh	a2, 0(s10)
	lbu	a1, 0(a1)
	slli	a1, a1, 3
	add	a1, s8, a1
	ld	a1, 0(a1)
	add	a1, a1, s9
	ld	a1, 0(a1)
	lh	a1, 2(a1)
	sh	a1, 2(s10)
	bne	s11, t0, .LBB11_42
# %bb.47:                               #   in Loop: Header=BB11_43 Depth=2
	bnez	s4, .LBB11_39
# %bb.48:                               #   in Loop: Header=BB11_43 Depth=2
	ld	a1, 8(s1)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s7
	ld	s0, 0(a1)
	li	s1, 0
	sh	zero, 0(s0)
	j	.LBB11_41
.Lfunc_end11:
	.size	copy_rdopt_data, .Lfunc_end11-copy_rdopt_data
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	buf2img                         # -- Begin function buf2img
	.p2align	2
	.type	buf2img,@function
buf2img:                                # @buf2img
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
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	li	a5, 3
	mv	s4, a4
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	bltu	a4, a5, .LBB12_2
# %bb.1:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, 500
	call	error
.LBB12_2:
	call	testEndian
	beqz	a0, .LBB12_12
# %bb.3:
	li	a0, 1
	beq	s4, a0, .LBB12_25
# %bb.4:
	li	a0, 2
	beq	s4, a0, .LBB12_19
# %bb.5:
	li	a0, 4
	bne	s4, a0, .LBB12_18
# %bb.6:
	blez	s0, .LBB12_18
# %bb.7:
	li	a0, 0
	li	a1, 0
	slli	a3, s1, 32
	srli	a2, a3, 30
	srli	a3, a3, 31
	j	.LBB12_9
.LBB12_8:                               #   in Loop: Header=BB12_9 Depth=1
	addi	a1, a1, 1
	add	a0, a0, a2
	beq	a1, s0, .LBB12_18
.LBB12_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_11 Depth 2
	blez	s1, .LBB12_8
# %bb.10:                               #   in Loop: Header=BB12_9 Depth=1
	slli	a4, a1, 3
	add	a4, s3, a4
	ld	a4, 0(a4)
	add	a5, a4, a3
	mv	a6, a0
.LBB12_11:                              #   Parent Loop BB12_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a7, a6, 2
	slli	a7, a7, 2
	add	a7, s2, a7
	lbu	t0, 2(a7)
	lbu	a7, 3(a7)
	slli	t0, t0, 8
	or	a7, t0, a7
	sh	a7, 0(a4)
	addi	a4, a4, 2
	addi	a6, a6, 4
	bne	a4, a5, .LBB12_11
	j	.LBB12_8
.LBB12_12:
	blez	s0, .LBB12_31
# %bb.13:
	li	s6, 0
	slli	a0, s1, 32
	srli	s7, a0, 31
	mul	s8, s4, s1
	j	.LBB12_15
.LBB12_14:                              #   in Loop: Header=BB12_15 Depth=1
	addi	s6, s6, 1
	add	s2, s2, s8
	beq	s6, s0, .LBB12_31
.LBB12_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
	blez	s1, .LBB12_14
# %bb.16:                               #   in Loop: Header=BB12_15 Depth=1
	li	s9, 0
	slli	s10, s6, 3
	add	s10, s3, s10
	mv	s5, s2
.LBB12_17:                              #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s10)
	add	a0, a0, s9
	sh	zero, 0(a0)
	mv	a1, s5
	mv	a2, s4
	call	memcpy
	addi	s9, s9, 2
	add	s5, s5, s4
	bne	s7, s9, .LBB12_17
	j	.LBB12_14
.LBB12_18:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 500
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
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	tail	error
.LBB12_19:
	blez	s0, .LBB12_31
# %bb.20:
	li	a0, 0
	slli	a1, s1, 32
	srli	a1, a1, 31
	j	.LBB12_22
.LBB12_21:                              #   in Loop: Header=BB12_22 Depth=1
	addi	a0, a0, 1
	add	s2, s2, a1
	beq	a0, s0, .LBB12_31
.LBB12_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_24 Depth 2
	blez	s1, .LBB12_21
# %bb.23:                               #   in Loop: Header=BB12_22 Depth=1
	slli	a2, a0, 3
	add	a2, s3, a2
	ld	a2, 0(a2)
	add	a3, a2, a1
	mv	a4, s2
.LBB12_24:                              #   Parent Loop BB12_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, 0(a4)
	lbu	a6, 1(a4)
	slli	a5, a5, 8
	or	a5, a5, a6
	sh	a5, 0(a2)
	addi	a2, a2, 2
	addi	a4, a4, 2
	bne	a2, a3, .LBB12_24
	j	.LBB12_21
.LBB12_25:
	blez	s0, .LBB12_31
# %bb.26:
	li	a0, 0
	slli	a2, s1, 32
	srli	a1, a2, 32
	srli	a2, a2, 31
	j	.LBB12_28
.LBB12_27:                              #   in Loop: Header=BB12_28 Depth=1
	addi	a0, a0, 1
	add	s2, s2, a1
	beq	a0, s0, .LBB12_31
.LBB12_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_30 Depth 2
	blez	s1, .LBB12_27
# %bb.29:                               #   in Loop: Header=BB12_28 Depth=1
	slli	a3, a0, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	add	a4, a3, a2
	mv	a5, s2
.LBB12_30:                              #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a6, 0(a5)
	sh	a6, 0(a3)
	addi	a3, a3, 2
	addi	a5, a5, 1
	bne	a3, a4, .LBB12_30
	j	.LBB12_27
.LBB12_31:
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
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end12:
	.size	buf2img, .Lfunc_end12-buf2img
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	output_SP_coefficients          # -- Begin function output_SP_coefficients
	.p2align	2
	.type	output_SP_coefficients,@function
output_SP_coefficients:                 # @output_SP_coefficients
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(number_sp2_frames)
	lw	a1, %lo(number_sp2_frames)(a0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 1304
	beqz	a1, .LBB13_3
# %bb.1:
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	call	fopen64
	mv	s0, a0
	beqz	a0, .LBB13_14
# %bb.2:
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	lw	a0, 60(a1)
	bgtz	a0, .LBB13_5
	j	.LBB13_7
.LBB13_3:
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen64
	beqz	a0, .LBB13_14
# %bb.4:
	mv	s0, a0
	lui	a0, %hi(number_sp2_frames)
	lw	a1, %lo(number_sp2_frames)(a0)
	addi	a1, a1, 1
	sw	a1, %lo(number_sp2_frames)(a0)
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	lw	a0, 60(a1)
	blez	a0, .LBB13_7
.LBB13_5:                               # %.preheader2
	li	s2, 0
	li	s3, 0
	lui	s4, %hi(lrec)
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(lrec)(s4)
	add	a0, a0, s2
	ld	a0, 0(a0)
	lw	a2, 52(a1)
	li	a1, 4
	mv	a3, s0
	call	fwrite
	ld	a1, %lo(img)(s1)
	lw	a0, 60(a1)
	addi	s3, s3, 1
	addi	s2, s2, 8
	blt	s3, a0, .LBB13_6
.LBB13_7:
	lw	a0, 64(a1)
	blez	a0, .LBB13_13
# %bb.8:                                # %.preheader1
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(lrec_uv)
	lui	s4, %hi(img)
.LBB13_9:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(lrec_uv)(s3)
	ld	a0, 0(a0)
	add	a0, a0, s1
	ld	a0, 0(a0)
	lw	a2, 56(a1)
	li	a1, 4
	mv	a3, s0
	call	fwrite
	ld	a1, %lo(img)(s4)
	lw	a0, 64(a1)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB13_9
# %bb.10:
	blez	a0, .LBB13_13
# %bb.11:                               # %.preheader
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(lrec_uv)
	lui	s4, %hi(img)
.LBB13_12:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(lrec_uv)(s3)
	ld	a0, 8(a0)
	add	a0, a0, s1
	ld	a0, 0(a0)
	lw	a2, 56(a1)
	li	a1, 4
	mv	a3, s0
	call	fwrite
	ld	a1, %lo(img)(s4)
	lw	a0, 64(a1)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB13_12
.LBB13_13:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	fclose
.LBB13_14:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 1304
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end13:
	.size	output_SP_coefficients, .Lfunc_end13-output_SP_coefficients
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	read_SP_coefficients            # -- Begin function read_SP_coefficients
	.p2align	2
	.type	read_SP_coefficients,@function
read_SP_coefficients:                   # @read_SP_coefficients
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1077(a1)
	blez	a1, .LBB14_2
# %bb.1:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a2, a2, a3
	lw	a2, -912(a2)
	slli	a3, a1, 1
	remw	a2, a2, a3
	bge	a2, a1, .LBB14_4
.LBB14_2:
	addi	a0, a0, 1704
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	fopen64
	mv	s0, a0
	bnez	a0, .LBB14_5
# %bb.3:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 1504
	j	.LBB14_22
.LBB14_4:
	addi	a0, a0, 1504
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	fopen64
	mv	s0, a0
	beqz	a0, .LBB14_21
.LBB14_5:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a1, 52(a0)
	lw	a0, 60(a0)
	mul	a0, a1, a0
	slli	a1, a0, 1
	add	a0, a1, a0
	lui	s2, %hi(number_sp2_frames)
	lw	a1, %lo(number_sp2_frames)(s2)
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	mulw	a1, a0, a1
	slli	a1, a1, 2
	mv	a0, s0
	li	a2, 0
	call	fseek
	bnez	a0, .LBB14_20
# %bb.6:
	ld	a0, %lo(img)(s1)
	lw	a1, %lo(number_sp2_frames)(s2)
	lw	a2, 60(a0)
	addi	a1, a1, 1
	sw	a1, %lo(number_sp2_frames)(s2)
	blez	a2, .LBB14_10
# %bb.7:                                # %.preheader4
	li	s2, 0
	li	s3, 0
	lui	s4, %hi(lrec)
	lui	s5, %hi(img)
.LBB14_8:                               # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(lrec)(s4)
	lw	s1, 52(a0)
	add	a1, a1, s2
	ld	a0, 0(a1)
	li	a1, 4
	mv	a2, s1
	mv	a3, s0
	call	fread
	sext.w	a0, a0
	bne	s1, a0, .LBB14_19
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	ld	a0, %lo(img)(s5)
	lw	a1, 60(a0)
	addi	s3, s3, 1
	addi	s2, s2, 8
	blt	s3, a1, .LBB14_8
.LBB14_10:
	lw	a1, 64(a0)
	blez	a1, .LBB14_18
# %bb.11:                               # %.preheader2
	li	s2, 0
	li	s3, 0
	lui	s4, %hi(lrec_uv)
	lui	s5, %hi(img)
.LBB14_12:                              # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(lrec_uv)(s4)
	ld	a1, 0(a1)
	lw	s1, 56(a0)
	add	a1, a1, s2
	ld	a0, 0(a1)
	li	a1, 4
	mv	a2, s1
	mv	a3, s0
	call	fread
	sext.w	a0, a0
	bne	s1, a0, .LBB14_19
# %bb.13:                               #   in Loop: Header=BB14_12 Depth=1
	ld	a0, %lo(img)(s5)
	lw	a1, 64(a0)
	addi	s3, s3, 1
	addi	s2, s2, 8
	blt	s3, a1, .LBB14_12
# %bb.14:
	blez	a1, .LBB14_18
# %bb.15:                               # %.preheader
	li	s2, 0
	li	s3, 0
	lui	s4, %hi(lrec_uv)
	lui	s5, %hi(img)
.LBB14_16:                              # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(lrec_uv)(s4)
	ld	a1, 8(a1)
	lw	s1, 56(a0)
	add	a1, a1, s2
	ld	a0, 0(a1)
	li	a1, 4
	mv	a2, s1
	mv	a3, s0
	call	fread
	sext.w	a0, a0
	bne	s1, a0, .LBB14_19
# %bb.17:                               #   in Loop: Header=BB14_16 Depth=1
	ld	a0, %lo(img)(s5)
	lw	a1, 64(a0)
	addi	s3, s3, 1
	addi	s2, s2, 8
	blt	s3, a1, .LBB14_16
.LBB14_18:
	mv	a0, s0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	fclose
.LBB14_19:
	lui	a0, %hi(.Lstr.34)
	addi	a0, a0, %lo(.Lstr.34)
	call	puts
	li	a0, -1
	call	exit
.LBB14_20:
	lui	a0, %hi(.Lstr.35)
	addi	a0, a0, %lo(.Lstr.35)
	call	puts
	li	a0, -1
	call	exit
.LBB14_21:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 1704
.LBB14_22:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end14:
	.size	read_SP_coefficients, .Lfunc_end14-read_SP_coefficients
                                        # -- End function
	.option	pop
	.type	ONE_FOURTH_TAP,@object          # @ONE_FOURTH_TAP
	.section	.rodata,"a",@progbits
	.globl	ONE_FOURTH_TAP
	.p2align	2, 0x0
ONE_FOURTH_TAP:
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	4294967291                      # 0xfffffffb
	.word	4294967292                      # 0xfffffffc
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	ONE_FOURTH_TAP, 24

	.type	enc_picture,@object             # @enc_picture
	.section	.sbss,"aw",@nobits
	.globl	enc_picture
	.p2align	3, 0x0
enc_picture:
	.quad	0
	.size	enc_picture, 8

	.type	encode_one_frame.prev_frame_no,@object # @encode_one_frame.prev_frame_no
	.p2align	2, 0x0
encode_one_frame.prev_frame_no:
	.word	0                               # 0x0
	.size	encode_one_frame.prev_frame_no, 4

	.type	encode_one_frame.consecutive_non_reference_pictures,@object # @encode_one_frame.consecutive_non_reference_pictures
	.p2align	2, 0x0
encode_one_frame.consecutive_non_reference_pictures:
	.word	0                               # 0x0
	.size	encode_one_frame.consecutive_non_reference_pictures, 4

	.type	enc_frame_picture,@object       # @enc_frame_picture
	.globl	enc_frame_picture
	.p2align	3, 0x0
enc_frame_picture:
	.quad	0
	.size	enc_frame_picture, 8

	.type	enc_frame_picture2,@object      # @enc_frame_picture2
	.globl	enc_frame_picture2
	.p2align	3, 0x0
enc_frame_picture2:
	.quad	0
	.size	enc_frame_picture2, 8

	.type	enc_frame_picture3,@object      # @enc_frame_picture3
	.globl	enc_frame_picture3
	.p2align	3, 0x0
enc_frame_picture3:
	.quad	0
	.size	enc_frame_picture3, 8

	.type	QP,@object                      # @QP
	.globl	QP
	.p2align	2, 0x0
QP:
	.word	0                               # 0x0
	.size	QP, 4

	.type	enc_bottom_picture,@object      # @enc_bottom_picture
	.globl	enc_bottom_picture
	.p2align	3, 0x0
enc_bottom_picture:
	.quad	0
	.size	enc_bottom_picture, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\n"
	.size	.L.str, 137

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Completed Encoding Frame %05d.\r"
	.size	.L.str.1, 32

	.type	enc_top_picture,@object         # @enc_top_picture
	.section	.sbss,"aw",@nobits
	.globl	enc_top_picture
	.p2align	3, 0x0
enc_top_picture:
	.quad	0
	.size	enc_top_picture, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"alloc_storable_picture: s->imgY_11"
	.size	.L.str.2, 35

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"alloc_storable_picture: s->imgY_11_w"
	.size	.L.str.3, 37

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel."
	.size	.L.str.4, 110

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture"
	.size	.L.str.5, 80

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"w"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Fatal: cannot open SP output file '%s', exit (-1)\n"
	.size	.L.str.7, 51

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"a"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"r"
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Fatal: cannot open SP input file '%s', exit (-1)\n"
	.size	.L.str.10, 50

	.type	last_P_no,@object               # @last_P_no
	.section	.sbss,"aw",@nobits
	.globl	last_P_no
	.p2align	3, 0x0
last_P_no:
	.quad	0
	.size	last_P_no, 8

	.type	last_P_no_frm,@object           # @last_P_no_frm
	.globl	last_P_no_frm
	.p2align	3, 0x0
last_P_no_frm:
	.quad	0
	.size	last_P_no_frm, 8

	.type	last_P_no_fld,@object           # @last_P_no_fld
	.globl	last_P_no_fld
	.p2align	3, 0x0
last_P_no_fld:
	.quad	0
	.size	last_P_no_fld, 8

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"currStream->bits_to_go == 8"
	.size	.L.str.13, 28

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"src/image.c"
	.size	.L.str.14, 12

	.type	.L__PRETTY_FUNCTION__.writeout_picture,@object # @__PRETTY_FUNCTION__.writeout_picture
.L__PRETTY_FUNCTION__.writeout_picture:
	.asciz	"int writeout_picture(Picture *)"
	.size	.L__PRETTY_FUNCTION__.writeout_picture, 32

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%04d(NVB)%8d \n"
	.size	.L.str.15, 15

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%04d(IDR)%8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.16, 59

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"FLD"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"FRM"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.19, 78

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%04d(I)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.20, 59

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.21, 78

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%04d(SP) %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.22, 59

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.23, 78

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%04d(B)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.24, 59

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d %1d %2d %2d  %d   %d\n"
	.size	.L.str.25, 80

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%04d(P)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.26, 59

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.27, 78

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"p_in != -1"
	.size	.L.str.28, 11

	.type	.L__PRETTY_FUNCTION__.ReadOneFrame,@object # @__PRETTY_FUNCTION__.ReadOneFrame
.L__PRETTY_FUNCTION__.ReadOneFrame:
	.asciz	"void ReadOneFrame(int, int, int, int, int, int)"
	.size	.L__PRETTY_FUNCTION__.ReadOneFrame, 48

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"ReadOneFrame: buf"
	.size	.L.str.29, 18

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"ReadOneFrame: cannot fseek to (Header size) in p_in"
	.size	.L.str.30, 52

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\n"
	.size	.L.str.31, 67

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting"
	.size	.L.str.32, 77

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8"
	.size	.L.str.33, 75

	.type	.Lstr.34,@object                # @str.34
.Lstr.34:
	.asciz	"Fatal: cannot read in SP input file, exit (-1)"
	.size	.Lstr.34, 47

	.type	.Lstr.35,@object                # @str.35
.Lstr.35:
	.asciz	"Fatal: cannot seek in SP input file, exit (-1)"
	.size	.Lstr.35, 47

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
