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
	addi	sp, sp, -1168
	sd	ra, 1160(sp)                    # 8-byte Folded Spill
	sd	s0, 1152(sp)                    # 8-byte Folded Spill
	sd	s1, 1144(sp)                    # 8-byte Folded Spill
	sd	s2, 1136(sp)                    # 8-byte Folded Spill
	sd	s3, 1128(sp)                    # 8-byte Folded Spill
	sd	s4, 1120(sp)                    # 8-byte Folded Spill
	sd	s5, 1112(sp)                    # 8-byte Folded Spill
	sd	s6, 1104(sp)                    # 8-byte Folded Spill
	sd	s7, 1096(sp)                    # 8-byte Folded Spill
	sd	s8, 1088(sp)                    # 8-byte Folded Spill
	sd	s9, 1080(sp)                    # 8-byte Folded Spill
	sd	s10, 1072(sp)                   # 8-byte Folded Spill
	sd	s11, 1064(sp)                   # 8-byte Folded Spill
	lui	a0, %hi(enc_picture)
	ld	s9, %lo(enc_picture)(a0)
	lui	a0, 2
	addiw	a0, a0, -1768
	add	a0, s9, a0
	lui	a1, %hi(img)
	ld	s3, %lo(img)(a1)
	ld	a1, 0(a0)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	lui	a1, 22
	addiw	a1, a1, 192
	add	a1, s3, a1
	lw	a2, 244(a1)
	lw	a1, 0(a1)
	beqz	a2, .LBB0_25
# %bb.1:
	blez	a1, .LBB0_32
# %bb.2:
	li	s0, 0
	ld	s11, 40(a0)
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 8
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	addi	s2, sp, 1064
	lui	s6, 22
	lui	s7, %hi(img)
	addiw	s4, s6, 444
	j	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_6 Depth=1
	lui	s6, 22
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	ld	s0, 16(sp)                      # 8-byte Folded Reload
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	add	a0, s3, s6
	lw	a0, 192(a0)
	addiw	a1, s0, 2
	addi	s0, s0, 2
	bge	a1, a0, .LBB0_32
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a0, a0, a1
	ld	a0, -1720(a0)
	add	a0, a0, s0
	lbu	a0, 0(a0)
	beqz	a0, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	sext.w	a0, s0
	addi	a1, sp, 36
	addi	a2, sp, 32
	call	get_mb_pos
	lw	s10, 32(sp)
	lw	s5, 36(sp)
	slli	s9, s10, 3
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	add	s8, s8, s9
	ld	a0, 0(s8)
	slli	s3, s5, 1
	add	a0, a0, s3
	lhu	a1, 2(a0)
	lhu	a2, 0(a0)
	lhu	a3, 4(a0)
	lhu	a4, 6(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a4, a4, 48
	or	a3, a4, a3
	or	a1, a3, a1
	sd	a1, 40(sp)
	lhu	a1, 10(a0)
	lhu	a2, 8(a0)
	lhu	a3, 12(a0)
	lhu	a4, 14(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a4, a4, 48
	or	a3, a4, a3
	or	a1, a3, a1
	sd	a1, 48(sp)
	lhu	a1, 18(a0)
	lhu	a2, 16(a0)
	lhu	a3, 20(a0)
	lhu	a4, 22(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a4, a4, 48
	or	a3, a4, a3
	or	a1, a3, a1
	sd	a1, 56(sp)
	lhu	a1, 26(a0)
	lhu	a2, 24(a0)
	lhu	a3, 28(a0)
	lhu	a0, 30(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a0, a0, 48
	or	a0, a0, a3
	or	a0, a0, a1
	sd	a0, 64(sp)
	ld	a1, 8(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 72
	call	memcpy
	ld	a1, 16(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 104
	call	memcpy
	ld	a1, 24(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 136
	call	memcpy
	ld	a1, 32(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 168
	call	memcpy
	ld	a1, 40(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 200
	call	memcpy
	ld	a1, 48(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 232
	call	memcpy
	ld	a1, 56(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 264
	call	memcpy
	ld	a1, 64(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 296
	call	memcpy
	ld	a1, 72(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 328
	call	memcpy
	ld	a1, 80(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 360
	call	memcpy
	ld	a1, 88(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 392
	call	memcpy
	ld	a1, 96(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 424
	call	memcpy
	ld	a1, 104(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 456
	call	memcpy
	ld	a1, 112(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 488
	call	memcpy
	ld	a1, 120(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 520
	call	memcpy
	ld	a1, 128(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	s1, sp, 552
	mv	a0, s1
	call	memcpy
	ld	a1, 136(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 584
	call	memcpy
	ld	a1, 144(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 616
	call	memcpy
	ld	a1, 152(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 648
	call	memcpy
	ld	a1, 160(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 680
	call	memcpy
	ld	a1, 168(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 712
	call	memcpy
	ld	a1, 176(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 744
	call	memcpy
	ld	a1, 184(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 776
	call	memcpy
	ld	a1, 192(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 808
	call	memcpy
	ld	a1, 200(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 840
	call	memcpy
	ld	a1, 208(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 872
	call	memcpy
	ld	a1, 216(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 904
	call	memcpy
	ld	a1, 224(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 936
	call	memcpy
	ld	a1, 232(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 968
	call	memcpy
	ld	a1, 240(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 1000
	call	memcpy
	ld	a1, 248(s8)
	add	a1, a1, s3
	li	a2, 32
	addi	a0, sp, 1032
	call	memcpy
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	s9, a0, s9
.LBB0_8:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, -8(s9)
	add	a0, a0, s3
	addi	a1, s1, -512
	li	a2, 32
	call	memcpy
	ld	a0, 0(s9)
	add	a0, a0, s3
	li	a2, 32
	mv	a1, s1
	call	memcpy
	addi	s1, s1, 32
	addi	s9, s9, 16
	bne	s1, s2, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	ld	s3, %lo(img)(s7)
	add	a1, s3, s4
	lw	s8, 0(a1)
	li	a2, 16
	divw	a0, a2, s8
	divw	a0, s5, a0
	sw	a0, 36(sp)
	lw	s1, 4(a1)
	divw	a1, a2, s1
	divw	a1, s10, a1
	sw	a1, 32(sp)
	blez	s1, .LBB0_5
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	slliw	a2, s1, 1
	bgtz	a2, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	li	a2, 1
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	ld	a3, 0(s11)
	slli	s8, s8, 1
	slli	a1, a1, 3
	add	s5, a3, a1
	slli	a2, a2, 3
	add	a2, a3, a2
	add	s10, a2, a1
	addi	s9, sp, 40
	slli	s0, a0, 1
.LBB0_13:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 0(s5)
	add	a1, a1, s0
	mv	a0, s9
	mv	a2, s8
	call	memcpy
	addi	s5, s5, 8
	addi	s9, s9, 32
	bne	s5, s10, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	blez	s1, .LBB0_4
# %bb.15:                               # %.preheader2
                                        #   in Loop: Header=BB0_6 Depth=1
	li	s5, 0
	li	s9, 0
	addi	s8, sp, 40
	li	s10, 1
	lui	s0, 22
	addi	s6, sp, 40
.LBB0_16:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 32(sp)
	ld	a1, 0(s11)
	add	a0, s10, a0
	addiw	a0, a0, -1
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	lw	a1, 36(sp)
	add	s3, s3, s0
	lw	a2, 444(s3)
	slli	a1, a1, 1
	add	a0, a0, a1
	slli	a2, a2, 1
	mv	a1, s8
	call	memcpy
	lw	a0, 32(sp)
	ld	a1, 0(s11)
	addw	a0, s10, a0
	slli	a0, a0, 3
	ld	a2, %lo(img)(s7)
	add	a0, a1, a0
	lw	a1, 36(sp)
	ld	a0, 0(a0)
	add	a2, a2, s4
	lw	a3, 4(a2)
	slli	a1, a1, 1
	add	a0, a0, a1
	lw	a2, 0(a2)
	addw	a1, s5, a3
	slli	a1, a1, 5
	add	a1, s6, a1
	slli	a2, a2, 1
	call	memcpy
	ld	s3, %lo(img)(s7)
	add	a0, s3, s4
	lw	s1, 4(a0)
	addi	s9, s9, 1
	addi	s5, s5, 1
	addi	s8, s8, 32
	addi	s10, s10, 2
	blt	s9, s1, .LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	blez	s1, .LBB0_3
# %bb.18:                               #   in Loop: Header=BB0_6 Depth=1
	slliw	a1, s1, 1
	lui	s6, 22
	bgtz	a1, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_6 Depth=1
	li	a1, 1
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	lw	s8, 0(a0)
	lw	a0, 32(sp)
	ld	s5, 8(s11)
	lw	s0, 36(sp)
	slli	s8, s8, 1
	slli	a0, a0, 3
	add	s5, s5, a0
	slli	a1, a1, 3
	add	s10, s5, a1
	addi	s9, sp, 40
	slli	s0, s0, 1
.LBB0_21:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 0(s5)
	add	a1, a1, s0
	mv	a0, s9
	mv	a2, s8
	call	memcpy
	addi	s5, s5, 8
	addi	s9, s9, 32
	bne	s5, s10, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_6 Depth=1
	blez	s1, .LBB0_4
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	li	s5, 0
	li	s9, 0
	addi	s8, sp, 40
	li	s10, 1
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	s1, sp, 40
.LBB0_24:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 32(sp)
	ld	a1, 8(s11)
	add	a0, s10, a0
	addiw	a0, a0, -1
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	lw	a1, 36(sp)
	add	s3, s3, s6
	lw	a2, 444(s3)
	slli	a1, a1, 1
	add	a0, a0, a1
	slli	a2, a2, 1
	mv	a1, s8
	call	memcpy
	lw	a0, 32(sp)
	ld	a1, 8(s11)
	addw	a0, s10, a0
	slli	a0, a0, 3
	ld	a2, %lo(img)(s7)
	add	a0, a1, a0
	lw	a1, 36(sp)
	ld	a0, 0(a0)
	add	a2, a2, s4
	lw	a3, 4(a2)
	slli	a1, a1, 1
	add	a0, a0, a1
	lw	a2, 0(a2)
	addw	a1, s5, a3
	slli	a1, a1, 5
	add	a1, s1, a1
	slli	a2, a2, 1
	call	memcpy
	ld	s3, %lo(img)(s7)
	add	a0, s3, s6
	lw	a0, 448(a0)
	addi	s9, s9, 1
	addi	s5, s5, 1
	addi	s8, s8, 32
	addi	s10, s10, 2
	blt	s9, a0, .LBB0_24
	j	.LBB0_5
.LBB0_25:
	blez	a1, .LBB0_32
# %bb.26:
	li	s1, 0
	addi	s8, sp, 552
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	s11, s11, 8
	addi	s0, sp, 1064
	lui	s10, 2
	lui	s2, 22
	lui	s4, %hi(enc_picture)
	lui	s5, %hi(img)
	j	.LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_28 Depth=1
	add	a0, s3, s2
	lw	a0, 192(a0)
	addiw	a1, s1, 2
	addi	s1, s1, 2
	bge	a1, a0, .LBB0_32
.LBB0_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	add	a0, s9, s10
	ld	a0, -1720(a0)
	add	a0, a0, s1
	lbu	a0, 0(a0)
	beqz	a0, .LBB0_27
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=1
	sext.w	a0, s1
	addi	a1, sp, 36
	addi	a2, sp, 32
	call	get_mb_pos
	lw	s7, 32(sp)
	lw	s6, 36(sp)
	slli	s7, s7, 3
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	add	s3, s3, s7
	ld	a0, 0(s3)
	slli	s6, s6, 1
	add	a0, a0, s6
	lhu	a1, 2(a0)
	lhu	a2, 0(a0)
	lhu	a3, 4(a0)
	lhu	a4, 6(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a4, a4, 48
	or	a3, a4, a3
	or	a1, a3, a1
	sd	a1, 40(sp)
	lhu	a1, 10(a0)
	lhu	a2, 8(a0)
	lhu	a3, 12(a0)
	lhu	a4, 14(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a4, a4, 48
	or	a3, a4, a3
	or	a1, a3, a1
	sd	a1, 48(sp)
	lhu	a1, 18(a0)
	lhu	a2, 16(a0)
	lhu	a3, 20(a0)
	lhu	a4, 22(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a4, a4, 48
	or	a3, a4, a3
	or	a1, a3, a1
	sd	a1, 56(sp)
	lhu	a1, 26(a0)
	lhu	a2, 24(a0)
	lhu	a3, 28(a0)
	lhu	a0, 30(a0)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	a0, a0, 48
	or	a0, a0, a3
	or	a0, a0, a1
	sd	a0, 64(sp)
	ld	a1, 8(s3)
	ld	s9, %lo(enc_picture)(s4)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 72
	call	memcpy
	ld	a1, 16(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 104
	call	memcpy
	ld	a1, 24(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 136
	call	memcpy
	ld	a1, 32(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 168
	call	memcpy
	ld	a1, 40(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 200
	call	memcpy
	ld	a1, 48(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 232
	call	memcpy
	ld	a1, 56(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 264
	call	memcpy
	ld	a1, 64(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 296
	call	memcpy
	ld	a1, 72(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 328
	call	memcpy
	ld	a1, 80(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 360
	call	memcpy
	ld	a1, 88(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 392
	call	memcpy
	ld	a1, 96(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 424
	call	memcpy
	ld	a1, 104(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 456
	call	memcpy
	ld	a1, 112(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 488
	call	memcpy
	ld	a1, 120(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 520
	call	memcpy
	ld	a1, 128(s3)
	add	a1, a1, s6
	li	a2, 32
	mv	a0, s8
	call	memcpy
	ld	a1, 136(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 584
	call	memcpy
	ld	a1, 144(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 616
	call	memcpy
	ld	a1, 152(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 648
	call	memcpy
	ld	a1, 160(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 680
	call	memcpy
	ld	a1, 168(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 712
	call	memcpy
	ld	a1, 176(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 744
	call	memcpy
	ld	a1, 184(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 776
	call	memcpy
	ld	a1, 192(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 808
	call	memcpy
	ld	a1, 200(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 840
	call	memcpy
	ld	a1, 208(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 872
	call	memcpy
	ld	a1, 216(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 904
	call	memcpy
	ld	a1, 224(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 936
	call	memcpy
	ld	a1, 232(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 968
	call	memcpy
	ld	a1, 240(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 1000
	call	memcpy
	ld	a1, 248(s3)
	add	a1, a1, s6
	li	a2, 32
	addi	a0, sp, 1032
	call	memcpy
	add	s7, s11, s7
	mv	s3, s8
.LBB0_30:                               #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, -8(s7)
	add	a0, a0, s6
	addi	a1, s3, -512
	li	a2, 32
	call	memcpy
	ld	a0, 0(s7)
	add	a0, a0, s6
	li	a2, 32
	mv	a1, s3
	call	memcpy
	addi	s3, s3, 32
	addi	s7, s7, 16
	bne	s3, s0, .LBB0_30
# %bb.31:                               #   in Loop: Header=BB0_28 Depth=1
	ld	s3, %lo(img)(s5)
	j	.LBB0_27
.LBB0_32:
	ld	ra, 1160(sp)                    # 8-byte Folded Reload
	ld	s0, 1152(sp)                    # 8-byte Folded Reload
	ld	s1, 1144(sp)                    # 8-byte Folded Reload
	ld	s2, 1136(sp)                    # 8-byte Folded Reload
	ld	s3, 1128(sp)                    # 8-byte Folded Reload
	ld	s4, 1120(sp)                    # 8-byte Folded Reload
	ld	s5, 1112(sp)                    # 8-byte Folded Reload
	ld	s6, 1104(sp)                    # 8-byte Folded Reload
	ld	s7, 1096(sp)                    # 8-byte Folded Reload
	ld	s8, 1088(sp)                    # 8-byte Folded Reload
	ld	s9, 1080(sp)                    # 8-byte Folded Reload
	ld	s10, 1072(sp)                   # 8-byte Folded Reload
	ld	s11, 1064(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1168
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
	addi	a7, a3, 1
	sw	a7, 112(a0)
	lw	a3, 0(a1)
	lui	a4, %hi(start_frame_no_in_this_IGOP)
	lw	a4, %lo(start_frame_no_in_this_IGOP)(a4)
	lui	a6, %hi(start_tr_in_this_IGOP)
	lw	a6, %lo(start_tr_in_this_IGOP)(a6)
	subw	t0, a3, a4
	addi	a3, t0, -1
	mul	a4, a3, a7
	add	a4, a4, a6
	sw	a4, 0(a5)
	lw	t1, 992(a0)
	addi	a3, a2, 2047
	li	t2, 2
	mul	a7, t0, a7
	blt	t1, t2, .LBB2_10
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
	lw	a4, 1944(a1)
	lui	a5, %hi(start_tr_in_this_IGOP)
	lui	a6, %hi(start_frame_no_in_this_IGOP)
	lw	a6, %lo(start_frame_no_in_this_IGOP)(a6)
	lw	a2, 0(a2)
	lw	a5, %lo(start_tr_in_this_IGOP)(a5)
	lw	a7, 20(a1)
	not	a6, a6
	add	a2, a2, a6
	fld	fa5, 0(a0)
	addi	a7, a7, 1
	mul	a2, a7, a2
	add	a2, a2, a5
	beqz	a4, .LBB2_42
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
	call	lseek
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
	call	lseek
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
	call	lseek
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
	call	lseek
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
	call	lseek
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
	call	lseek
.LBB2_67:
	mv	a0, s0
	call	free
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	ld	a1, %lo(img)(s7)
	addi	a2, a0, 2047
	addi	a2, a2, 1553
	lw	t0, 72(a0)
	lw	t2, 52(a1)
	lw	t1, 60(a1)
	lw	a7, 380(a2)
	lw	a3, 376(a2)
	lw	a6, 56(a1)
	lw	a4, 64(a1)
	addiw	a5, s6, -720
	blez	t0, .LBB2_73
# %bb.68:
	lw	t6, 68(a0)
	bge	t6, t2, .LBB2_73
# %bb.69:
	lui	t3, %hi(imgY_org_frm)
	ld	t3, %lo(imgY_org_frm)(t3)
	li	t4, 0
	slli	t5, t6, 1
	sub	t6, t2, t6
.LBB2_70:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_71 Depth 2
	slli	n1, t4, 3
	add	n1, t3, n1
	ld	n1, 0(n1)
	add	n1, n1, t5
	lhu	n2, -2(n1)
	mv	n3, t6
.LBB2_71:                               #   Parent Loop BB2_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sh	n2, 0(n1)
	addi	n3, n3, -1
	addi	n1, n1, 2
	bnez	n3, .LBB2_71
# %bb.72:                               #   in Loop: Header=BB2_70 Depth=1
	addi	t4, t4, 1
	bne	t4, t0, .LBB2_70
.LBB2_73:
	add	a5, a1, a5
	bge	t0, t1, .LBB2_79
# %bb.74:
	blez	t2, .LBB2_79
# %bb.75:
	lui	t3, %hi(imgY_org_frm)
	ld	t3, %lo(imgY_org_frm)(t3)
	slli	t2, t2, 1
.LBB2_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_77 Depth 2
	slli	t4, t0, 3
	add	t5, t3, t4
	ld	t4, 0(t5)
	ld	t5, -8(t5)
	add	t6, t4, t2
.LBB2_77:                               #   Parent Loop BB2_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	n1, 0(t5)
	sh	n1, 0(t4)
	addi	t4, t4, 2
	addi	t5, t5, 2
	bne	t4, t6, .LBB2_77
# %bb.78:                               #   in Loop: Header=BB2_76 Depth=1
	addi	t0, t0, 1
	bne	t0, t1, .LBB2_76
.LBB2_79:
	lw	t0, 1156(a5)
	beqz	t0, .LBB2_96
# %bb.80:
	blez	a3, .LBB2_90
# %bb.81:
	bge	a7, a6, .LBB2_90
# %bb.82:
	lui	t0, %hi(imgUV_org_frm)
	ld	t2, %lo(imgUV_org_frm)(t0)
	li	t0, 0
	ld	t1, 0(t2)
	ld	t2, 8(t2)
	slli	a7, a7, 1
	addi	t3, a7, -2
	slli	t4, a6, 1
	j	.LBB2_84
.LBB2_83:                               #   in Loop: Header=BB2_84 Depth=1
	addi	t0, t0, 1
	beq	t0, a3, .LBB2_90
.LBB2_84:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_89 Depth 2
                                        #     Child Loop BB2_87 Depth 2
	slli	t5, t0, 3
	add	t6, t1, t5
	ld	t6, 0(t6)
	add	t5, t2, t5
	ld	n1, 0(t5)
	add	n2, t6, t3
	add	t5, n1, t4
	add	n3, n1, t3
	bgeu	n2, t5, .LBB2_88
# %bb.85:                               #   in Loop: Header=BB2_84 Depth=1
	add	n4, t6, t4
	bgeu	n3, n4, .LBB2_88
# %bb.86:                               # %.preheader
                                        #   in Loop: Header=BB2_84 Depth=1
	add	n1, n1, a7
	add	t6, t6, a7
.LBB2_87:                               #   Parent Loop BB2_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	n2, -2(t6)
	sh	n2, 0(t6)
	lh	n2, -2(n1)
	sh	n2, 0(n1)
	addi	n1, n1, 2
	addi	t6, t6, 2
	bne	n1, t5, .LBB2_87
	j	.LBB2_83
.LBB2_88:                               #   in Loop: Header=BB2_84 Depth=1
	lhu	n2, 0(n2)
	lhu	n3, 0(n3)
	add	n1, n1, a7
	add	t6, t6, a7
.LBB2_89:                               #   Parent Loop BB2_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sh	n2, 0(t6)
	sh	n3, 0(n1)
	addi	n1, n1, 2
	addi	t6, t6, 2
	bne	n1, t5, .LBB2_89
	j	.LBB2_83
.LBB2_90:
	blez	a6, .LBB2_96
# %bb.91:
	bge	a3, a4, .LBB2_96
# %bb.92:
	lui	a7, %hi(imgUV_org_frm)
	ld	t0, %lo(imgUV_org_frm)(a7)
	ld	a7, 0(t0)
	ld	t0, 8(t0)
	slli	a6, a6, 1
.LBB2_93:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_94 Depth 2
	slli	t3, a3, 3
	addi	t4, t3, -8
	add	t1, a7, t4
	ld	t1, 0(t1)
	add	t2, a7, t3
	ld	t2, 0(t2)
	add	t4, t0, t4
	add	t3, t0, t3
	ld	t3, 0(t3)
	ld	t4, 0(t4)
	add	t5, t3, a6
.LBB2_94:                               #   Parent Loop BB2_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	t6, 0(t1)
	sh	t6, 0(t2)
	lh	t6, 0(t4)
	sh	t6, 0(t3)
	addi	t3, t3, 2
	addi	t4, t4, 2
	addi	t2, t2, 2
	addi	t1, t1, 2
	bne	t3, t5, .LBB2_94
# %bb.95:                               #   in Loop: Header=BB2_93 Depth=1
	addi	a3, a3, 1
	bne	a3, a4, .LBB2_93
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
	beq	a0, a2, .LBB2_267
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
	ld	a0, %lo(input)(s2)
	addi	a1, a0, 2047
	lw	a1, 1861(a1)
	beqz	a1, .LBB2_249
# %bb.240:
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a1, 16(a0)
	lw	a0, 20(a0)
	subw	s0, a1, a0
	mv	a0, s0
	call	rc_update_pict_frame
	ld	a0, %lo(input)(s2)
	addi	a2, a0, 2047
	lw	a1, 1857(a2)
	beqz	a1, .LBB2_250
.LBB2_241:
	lui	a1, %hi(img)
	ld	a3, %lo(img)(a1)
	lui	a1, 22
	addiw	a1, a1, -928
	add	a3, a3, a1
	lw	a1, 1348(a3)
	lw	s2, 1352(a3)
	lw	a7, 72(a0)
	lw	a4, 68(a0)
	lw	s3, 1929(a2)
	lw	a5, 24(a3)
	lw	s4, 1933(a2)
	mul	a0, a1, a1
	mul	a1, a4, a7
	beqz	a5, .LBB2_251
# %bb.242:
	blez	a4, .LBB2_266
# %bb.243:
	blez	a7, .LBB2_268
# %bb.244:
	lui	a2, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a2)
	lui	a2, %hi(imgY_com)
	ld	a6, %lo(imgY_com)(a2)
	ld	t0, 0(a3)
	li	t1, 0
	li	a2, 0
	slli	a7, a7, 3
	add	a7, a6, a7
.LBB2_245:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_246 Depth 2
	slli	t2, t1, 1
	mv	t3, a5
	mv	t4, a6
.LBB2_246:                              #   Parent Loop BB2_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t5, 0(t3)
	ld	t6, 0(t4)
	add	t5, t5, t2
	lhu	t5, 0(t5)
	add	t6, t6, t2
	lhu	t6, 0(t6)
	sub	t5, t5, t6
	slli	t5, t5, 2
	add	t5, t0, t5
	lw	t5, 0(t5)
	add	a2, a2, t5
	addi	t4, t4, 8
	addi	t3, t3, 8
	bne	t4, a7, .LBB2_246
# %bb.247:                              #   in Loop: Header=BB2_245 Depth=1
	addi	t1, t1, 1
	bne	t1, a4, .LBB2_245
# %bb.248:
	lw	a4, 1364(a3)
	li	s5, 0
	bnez	a4, .LBB2_269
	j	.LBB2_275
.LBB2_249:
	li	s0, 0
	addi	a2, a0, 2047
	lw	a1, 1857(a2)
	bnez	a1, .LBB2_241
.LBB2_250:
	lui	a0, %hi(snr)
	ld	a0, %lo(snr)(a0)
	sw	zero, 0(a0)
	sw	zero, 4(a0)
	sw	zero, 8(a0)
	sw	zero, 96(a0)
	sw	zero, 100(a0)
	sw	zero, 104(a0)
	j	.LBB2_282
.LBB2_251:
	lui	a5, %hi(imgY_org_frm)
	ld	a6, %lo(imgY_org_frm)(a5)
	lui	t0, %hi(imgY_org)
	lui	a5, %hi(imgUV_org_frm)
	ld	a5, %lo(imgUV_org_frm)(a5)
	lw	a2, 1505(a2)
	sd	a6, %lo(imgY_org)(t0)
	lui	t0, %hi(imgUV_org)
	li	t1, 2
	sd	a5, %lo(imgUV_org)(t0)
	bne	a2, t1, .LBB2_253
# %bb.252:
	lui	a2, %hi(enc_frame_picture)
	ld	a2, %lo(enc_frame_picture)(a2)
	lui	t0, %hi(enc_picture)
	sd	a2, %lo(enc_picture)(t0)
.LBB2_253:
	li	a2, 0
	blez	a4, .LBB2_259
# %bb.254:
	blez	a7, .LBB2_259
# %bb.255:
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	t0, 2
	add	a2, a2, t0
	ld	t0, -1768(a2)
	ld	t1, 0(a3)
	li	t2, 0
	li	a2, 0
	slli	a7, a7, 3
	add	a7, t0, a7
.LBB2_256:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_257 Depth 2
	slli	t3, t2, 1
	mv	t4, a6
	mv	t5, t0
.LBB2_257:                              #   Parent Loop BB2_256 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t6, 0(t4)
	ld	n1, 0(t5)
	add	t6, t6, t3
	lhu	t6, 0(t6)
	add	n1, n1, t3
	lhu	n1, 0(n1)
	sub	t6, t6, n1
	slli	t6, t6, 2
	add	t6, t1, t6
	lw	t6, 0(t6)
	add	a2, a2, t6
	addi	t5, t5, 8
	addi	t4, t4, 8
	bne	t5, a7, .LBB2_257
# %bb.258:                              #   in Loop: Header=BB2_256 Depth=1
	addi	t2, t2, 1
	bne	t2, a4, .LBB2_256
.LBB2_259:
	lw	a4, 1364(a3)
	li	s5, 0
	beqz	a4, .LBB2_275
# %bb.260:
	blez	s4, .LBB2_275
# %bb.261:
	blez	s3, .LBB2_275
# %bb.262:
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	lui	a6, 2
	add	a4, a4, a6
	ld	a7, -1728(a4)
	ld	a3, 0(a3)
	ld	a4, 0(a5)
	ld	a6, 0(a7)
	ld	a7, 8(a7)
	ld	a5, 8(a5)
	li	t0, 0
	li	s6, 0
	li	s5, 0
	slli	t1, s3, 3
	add	t1, a7, t1
.LBB2_263:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_264 Depth 2
	slli	t2, t0, 1
	mv	t3, a4
	mv	t4, a6
	mv	t5, a5
	mv	t6, a7
.LBB2_264:                              #   Parent Loop BB2_263 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n1, 0(t3)
	ld	n2, 0(t4)
	add	n1, n1, t2
	lhu	n1, 0(n1)
	add	n2, n2, t2
	lhu	n2, 0(n2)
	ld	n3, 0(t5)
	ld	n4, 0(t6)
	sub	n1, n1, n2
	add	n3, n3, t2
	lhu	n2, 0(n3)
	add	n4, n4, t2
	lhu	n3, 0(n4)
	slli	n1, n1, 2
	add	n1, a3, n1
	lw	n1, 0(n1)
	sub	n2, n2, n3
	slli	n2, n2, 2
	add	n2, a3, n2
	lw	n2, 0(n2)
	add	s6, s6, n1
	add	s5, s5, n2
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	addi	t3, t3, 8
	bne	t6, t1, .LBB2_264
# %bb.265:                              #   in Loop: Header=BB2_263 Depth=1
	addi	t0, t0, 1
	bne	t0, s4, .LBB2_263
	j	.LBB2_276
.LBB2_266:
	li	a2, 0
	lw	a4, 1364(a3)
	li	s5, 0
	bnez	a4, .LBB2_269
	j	.LBB2_275
.LBB2_267:
	lui	a0, %hi(frame_pic_2)
	ld	a0, %lo(frame_pic_2)(a0)
	call	writeout_picture
	lui	a0, %hi(frame_pic_3)
	ld	a0, %lo(frame_pic_3)(a0)
	bnez	a0, .LBB2_230
	j	.LBB2_231
.LBB2_268:
	li	a2, 0
	lw	a4, 1364(a3)
	li	s5, 0
	beqz	a4, .LBB2_275
.LBB2_269:
	blez	s4, .LBB2_275
# %bb.270:
	blez	s3, .LBB2_275
# %bb.271:
	lui	a4, %hi(imgUV_com)
	lui	a5, %hi(imgUV_org)
	ld	a7, %lo(imgUV_org)(a5)
	ld	a6, %lo(imgUV_com)(a4)
	ld	a3, 0(a3)
	ld	a4, 0(a7)
	ld	a5, 0(a6)
	ld	a6, 8(a6)
	ld	a7, 8(a7)
	li	t0, 0
	li	s6, 0
	li	s5, 0
	slli	t1, s3, 3
	add	t1, a6, t1
.LBB2_272:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_273 Depth 2
	slli	t2, t0, 1
	mv	t3, a4
	mv	t4, a5
	mv	t5, a7
	mv	t6, a6
.LBB2_273:                              #   Parent Loop BB2_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n1, 0(t3)
	ld	n2, 0(t4)
	add	n1, n1, t2
	lhu	n1, 0(n1)
	add	n2, n2, t2
	lhu	n2, 0(n2)
	ld	n3, 0(t5)
	ld	n4, 0(t6)
	sub	n1, n1, n2
	add	n3, n3, t2
	lhu	n2, 0(n3)
	add	n4, n4, t2
	lhu	n3, 0(n4)
	slli	n1, n1, 2
	add	n1, a3, n1
	lw	n1, 0(n1)
	sub	n2, n2, n3
	slli	n2, n2, 2
	add	n2, a3, n2
	lw	n2, 0(n2)
	add	s6, s6, n1
	add	s5, s5, n2
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	addi	t3, t3, 8
	bne	t6, t1, .LBB2_273
# %bb.274:                              #   in Loop: Header=BB2_272 Depth=1
	addi	t0, t0, 1
	bne	t0, s4, .LBB2_272
	j	.LBB2_276
.LBB2_275:
	mv	s6, s5
.LBB2_276:
	lui	s9, %hi(snr)
	ld	a3, %lo(snr)(s9)
	fcvt.s.l	fa5, a2
	fsw	fa5, 96(a3)
	fcvt.s.l	fa5, s6
	fsw	fa5, 100(a3)
	fcvt.s.l	fa5, s5
	fsw	fa5, 104(a3)
	seqz	a3, a2
	add	a2, a2, a3
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
	flw	fs0, 0(s7)
	flw	fa4, 4(s7)
	fsw	fs0, 12(s7)
	fsw	fa4, 16(s7)
	fsw	fa5, 20(s7)
	fsw	fs0, 84(s7)
	fsw	fa4, 88(s7)
	flw	fa4, 96(s7)
	flw	fa3, 100(s7)
	flw	fa2, 104(s7)
	fsw	fa5, 92(s7)
	fsw	fa4, 108(s7)
	fsw	fa3, 112(s7)
	fsw	fa2, 116(s7)
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
	lw	a3, 20(a1)
	lui	a1, %hi(snr)
	ld	a5, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	subw	a2, a2, a3
	flw	fa5, 0(a5)
	flw	fa4, 4(a5)
	flw	fa3, 8(a5)
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
	lw	a3, 20(a1)
	lui	a1, %hi(snr)
	ld	a5, %lo(snr)(a1)
	lui	a1, %hi(frame_no)
	lw	a1, %lo(frame_no)(a1)
	subw	a2, a2, a3
	flw	fa5, 0(a5)
	flw	fa4, 4(a5)
	flw	fa3, 8(a5)
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
	lui	s4, 22
	add	a1, a1, s4
	sw	s2, 308(a1)
	call	code_a_picture
	lui	s5, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(s5)
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
	addiw	a2, s4, -908
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
	sd	a0, %lo(enc_picture)(s5)
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
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a0, 28(a1)
	lui	a2, 22
	addiw	a2, a2, -928
	add	a1, a1, a2
	beqz	a0, .LBB7_7
# %bb.1:
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	lw	a3, 68(a2)
	blez	a3, .LBB7_13
# %bb.2:
	lw	t0, 72(a2)
	blez	t0, .LBB7_21
# %bb.3:
	lui	a0, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a0)
	lui	a0, %hi(imgY_com)
	ld	a5, %lo(imgY_com)(a0)
	ld	a6, 0(a1)
	li	a7, 0
	li	a0, 0
	slli	t0, t0, 3
	add	t0, a5, t0
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	slli	t1, a7, 1
	mv	t2, a4
	mv	t3, a5
.LBB7_5:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(t2)
	ld	t5, 0(t3)
	add	t4, t4, t1
	lhu	t4, 0(t4)
	add	t5, t5, t1
	lhu	t5, 0(t5)
	sub	t4, t4, t5
	slli	t4, t4, 2
	add	t4, a6, t4
	lw	t4, 0(t4)
	add	a0, a0, t4
	addi	t3, t3, 8
	addi	t2, t2, 8
	bne	t3, t0, .LBB7_5
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=1
	addi	a7, a7, 1
	bne	a7, a3, .LBB7_4
	j	.LBB7_14
.LBB7_7:
	lui	a0, %hi(imgY_org_frm)
	lui	a2, %hi(input)
	ld	a3, %lo(input)(a2)
	ld	a4, %lo(imgY_org_frm)(a0)
	lui	a0, %hi(imgUV_org_frm)
	ld	a2, %lo(imgUV_org_frm)(a0)
	lw	a5, 68(a3)
	lui	a0, %hi(imgY_org)
	sd	a4, %lo(imgY_org)(a0)
	lui	a0, %hi(imgUV_org)
	sd	a2, %lo(imgUV_org)(a0)
	blez	a5, .LBB7_22
# %bb.8:
	lw	t1, 72(a3)
	blez	t1, .LBB7_30
# %bb.9:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a6, 2
	add	a0, a0, a6
	ld	a6, -1768(a0)
	ld	a7, 0(a1)
	li	t0, 0
	li	a0, 0
	slli	t1, t1, 3
	add	t1, a6, t1
.LBB7_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
	slli	t2, t0, 1
	mv	t3, a4
	mv	t4, a6
.LBB7_11:                               #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t5, 0(t3)
	ld	t6, 0(t4)
	add	t5, t5, t2
	lhu	t5, 0(t5)
	add	t6, t6, t2
	lhu	t6, 0(t6)
	sub	t5, t5, t6
	slli	t5, t5, 2
	add	t5, a7, t5
	lw	t5, 0(t5)
	add	a0, a0, t5
	addi	t4, t4, 8
	addi	t3, t3, 8
	bne	t4, t1, .LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_10 Depth=1
	addi	t0, t0, 1
	bne	t0, a5, .LBB7_10
	j	.LBB7_23
.LBB7_13:
	li	a0, 0
.LBB7_14:
	lw	a3, 1364(a1)
	beqz	a3, .LBB7_31
.LBB7_15:
	addi	a2, a2, 2047
	lw	a3, 1933(a2)
	blez	a3, .LBB7_31
# %bb.16:
	lw	t2, 1929(a2)
	blez	t2, .LBB7_31
# %bb.17:
	lui	a2, %hi(imgUV_com)
	lui	a4, %hi(imgUV_org)
	ld	t0, %lo(imgUV_org)(a4)
	ld	a2, %lo(imgUV_com)(a2)
	ld	a4, 0(a1)
	ld	a5, 0(t0)
	ld	a6, 0(a2)
	ld	a7, 8(a2)
	ld	t0, 8(t0)
	li	t1, 0
	li	a2, 0
	li	a1, 0
	slli	t2, t2, 3
	add	t2, a7, t2
.LBB7_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	slli	t3, t1, 1
	mv	t4, a5
	mv	t5, a6
	mv	t6, t0
	mv	n1, a7
.LBB7_19:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n2, 0(t4)
	ld	n3, 0(t5)
	add	n2, n2, t3
	lhu	n2, 0(n2)
	add	n3, n3, t3
	lhu	n3, 0(n3)
	ld	n4, 0(t6)
	ld	n5, 0(n1)
	sub	n2, n2, n3
	add	n4, n4, t3
	lhu	n3, 0(n4)
	add	n5, n5, t3
	lhu	n4, 0(n5)
	slli	n2, n2, 2
	add	n2, a4, n2
	lw	n2, 0(n2)
	sub	n3, n3, n4
	slli	n3, n3, 2
	add	n3, a4, n3
	lw	n3, 0(n3)
	add	a1, a1, n2
	add	a2, a2, n3
	addi	n1, n1, 8
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	bne	n1, t2, .LBB7_19
# %bb.20:                               #   in Loop: Header=BB7_18 Depth=1
	addi	t1, t1, 1
	bne	t1, a3, .LBB7_18
	j	.LBB7_32
.LBB7_21:
	li	a0, 0
	lw	a3, 1364(a1)
	bnez	a3, .LBB7_15
	j	.LBB7_31
.LBB7_22:
	li	a0, 0
.LBB7_23:
	lw	a4, 1364(a1)
	beqz	a4, .LBB7_31
.LBB7_24:
	addi	a4, a3, 2047
	lw	a3, 1933(a4)
	blez	a3, .LBB7_31
# %bb.25:
	lw	t2, 1929(a4)
	blez	t2, .LBB7_31
# %bb.26:
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	lui	a5, 2
	add	a4, a4, a5
	ld	a7, -1728(a4)
	ld	a4, 0(a1)
	ld	a5, 0(a2)
	ld	a6, 0(a7)
	ld	a7, 8(a7)
	ld	t0, 8(a2)
	li	t1, 0
	li	a2, 0
	li	a1, 0
	slli	t2, t2, 3
	add	t2, a7, t2
.LBB7_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
	slli	t3, t1, 1
	mv	t4, a5
	mv	t5, a6
	mv	t6, t0
	mv	n1, a7
.LBB7_28:                               #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n2, 0(t4)
	ld	n3, 0(t5)
	add	n2, n2, t3
	lhu	n2, 0(n2)
	add	n3, n3, t3
	lhu	n3, 0(n3)
	ld	n4, 0(t6)
	ld	n5, 0(n1)
	sub	n2, n2, n3
	add	n4, n4, t3
	lhu	n3, 0(n4)
	add	n5, n5, t3
	lhu	n4, 0(n5)
	slli	n2, n2, 2
	add	n2, a4, n2
	lw	n2, 0(n2)
	sub	n3, n3, n4
	slli	n3, n3, 2
	add	n3, a4, n3
	lw	n3, 0(n3)
	add	a1, a1, n2
	add	a2, a2, n3
	addi	n1, n1, 8
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	bne	n1, t2, .LBB7_28
# %bb.29:                               #   in Loop: Header=BB7_27 Depth=1
	addi	t1, t1, 1
	bne	t1, a3, .LBB7_27
	j	.LBB7_32
.LBB7_30:
	li	a0, 0
	lw	a4, 1364(a1)
	bnez	a4, .LBB7_24
.LBB7_31:
	li	a1, 0
	li	a2, 0
.LBB7_32:
	lui	a3, %hi(snr)
	ld	a3, %lo(snr)(a3)
	fcvt.s.l	fa5, a0
	fsw	fa5, 0(a3)
	fcvt.s.l	fa5, a1
	fsw	fa5, 4(a3)
	fcvt.s.l	fa5, a2
	fsw	fa5, 8(a3)
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
	lui	a1, 2
	addiw	s5, a1, -1800
	add	s5, a0, s5
	ld	a1, 56(s5)
	bnez	a1, .LBB9_145
# %bb.1:
	ld	a1, 40(s5)
	bnez	a1, .LBB9_145
# %bb.2:
	mv	s2, a0
	lw	s1, 4(s5)
	lw	s7, 0(s5)
	ld	s6, 32(s5)
	addi	s0, s5, 56
	mulw	a0, s7, s1
	slli	a0, a0, 1
	call	malloc
	sd	a0, 40(s5)
	mv	a2, s7
	mv	a1, s1
	bnez	a0, .LBB9_4
# %bb.3:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
	lw	a1, 4(s5)
	lw	a2, 0(s5)
.LBB9_4:
	slli	a1, a1, 2
	addiw	a1, a1, 32
	slli	a2, a2, 2
	addiw	a2, a2, 32
	mv	a0, s0
	call	get_mem2Dpel
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 1904(a0)
	bnez	a1, .LBB9_7
# %bb.5:
	lw	a1, 1908(a0)
	bnez	a1, .LBB9_7
# %bb.6:
	lw	a0, 64(a0)
	beqz	a0, .LBB9_10
.LBB9_7:
	lw	s0, 0(s5)
	lw	s3, 4(s5)
	mulw	a0, s3, s0
	slli	a0, a0, 1
	call	malloc
	sd	a0, 48(s5)
	bnez	a0, .LBB9_9
# %bb.8:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
	lw	s3, 4(s5)
	lw	s0, 0(s5)
.LBB9_9:
	lui	a0, 2
	addiw	a0, a0, -1736
	add	a0, s2, a0
	slli	s3, s3, 2
	addiw	a1, s3, 32
	slli	s0, s0, 2
	addiw	a2, s0, 32
	call	get_mem2Dpel
.LBB9_10:
	ld	s2, 56(s5)
	ld	s0, 40(s5)
	lw	s4, 4(s5)
	lw	s3, 0(s5)
	li	a0, -7
	blt	s4, a0, .LBB9_32
# %bb.11:
	blt	s3, a0, .LBB9_32
# %bb.12:                               # %.preheader9
	lui	a0, %hi(img4Y_tmp)
	ld	a2, %lo(img4Y_tmp)(a0)
	addiw	a0, s7, -1
	addiw	a1, s1, -1
	addi	a2, a2, 32
	li	a6, -4
	li	a3, -7
	li	a4, 20
	j	.LBB9_15
.LBB9_13:                               #   in Loop: Header=BB9_15 Depth=1
	lw	s4, 4(s5)
.LBB9_14:                               #   in Loop: Header=BB9_15 Depth=1
	addiw	a7, s4, 3
	addi	a6, a5, 1
	bge	a5, a7, .LBB9_32
.LBB9_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_20 Depth 2
	mv	a5, a6
	blt	s3, a3, .LBB9_14
# %bb.16:                               #   in Loop: Header=BB9_15 Depth=1
	sext.w	a7, a5
	mv	a6, a1
	blt	a1, a7, .LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_15 Depth=1
	mv	a6, a7
.LBB9_18:                               #   in Loop: Header=BB9_15 Depth=1
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	slli	a6, a6, 3
	add	a6, s6, a6
	ld	a6, 0(a6)
	slli	a7, a5, 3
	add	a7, a2, a7
	ld	a7, 0(a7)
	li	t0, -5
	li	t3, -3
	li	t1, 1
	j	.LBB9_20
.LBB9_19:                               #   in Loop: Header=BB9_20 Depth=2
	sgtz	n3, t6
	neg	n3, n3
	and	t6, n3, t6
	slli	t6, t6, 1
	add	t6, a6, t6
	lhu	t6, 0(t6)
	sgtz	n3, n1
	neg	n3, n3
	and	n1, n3, n1
	slli	n1, n1, 1
	add	n1, a6, n1
	lhu	n1, 0(n1)
	sgtz	n3, t5
	neg	n3, n3
	and	t5, n3, t5
	slli	t5, t5, 1
	add	t5, a6, t5
	lhu	t5, 0(t5)
	sgtz	n3, n2
	neg	n3, n3
	and	n2, n3, n2
	slli	n2, n2, 1
	add	n2, a6, n2
	lhu	n2, 0(n2)
	add	n1, n1, t6
	mul	n1, n1, a4
	add	t5, n2, t5
	slli	n2, t5, 2
	sgtz	n3, t4
	neg	n3, n3
	and	t4, n3, t4
	slli	t4, t4, 1
	add	t4, a6, t4
	lhu	t4, 0(t4)
	sgtz	n3, t3
	neg	n3, n3
	and	t3, n3, t3
	slli	t3, t3, 1
	add	t3, a6, t3
	lhu	t3, 0(t3)
	add	t5, n2, t5
	add	t4, n1, t4
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
	lw	s3, 0(s5)
	addiw	t4, s3, 3
	addi	t0, t0, 1
	addiw	t1, t1, 2
	mv	t3, t2
	bge	t0, t4, .LBB9_13
.LBB9_20:                               #   Parent Loop BB9_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	t2, t3, -1
	mv	t6, a0
	blt	a0, t2, .LBB9_26
# %bb.21:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t6, t2
	mv	n1, a0
	bge	a0, t3, .LBB9_27
.LBB9_22:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	t2, t3, -2
	mv	t5, a0
	blt	a0, t2, .LBB9_28
.LBB9_23:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t5, t2
	addiw	t2, t3, 1
	mv	n2, a0
	bge	a0, t2, .LBB9_29
.LBB9_24:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	n3, t3, -3
	mv	t4, a0
	blt	a0, n3, .LBB9_30
.LBB9_25:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t4, n3
	addiw	n3, t3, 2
	mv	t3, a0
	blt	a0, n3, .LBB9_19
	j	.LBB9_31
.LBB9_26:                               #   in Loop: Header=BB9_20 Depth=2
	mv	n1, a0
	blt	a0, t3, .LBB9_22
.LBB9_27:                               #   in Loop: Header=BB9_20 Depth=2
	mv	n1, t3
	addiw	t2, t3, -2
	mv	t5, a0
	bge	a0, t2, .LBB9_23
.LBB9_28:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	t2, t3, 1
	mv	n2, a0
	blt	a0, t2, .LBB9_24
.LBB9_29:                               #   in Loop: Header=BB9_20 Depth=2
	mv	n2, t2
	addiw	n3, t3, -3
	mv	t4, a0
	bge	a0, n3, .LBB9_25
.LBB9_30:                               #   in Loop: Header=BB9_20 Depth=2
	addiw	n3, t3, 2
	mv	t3, a0
	blt	a0, n3, .LBB9_19
.LBB9_31:                               #   in Loop: Header=BB9_20 Depth=2
	mv	t3, n3
	j	.LBB9_19
.LBB9_32:
	slli	a0, s3, 1
	addiw	a0, a0, 16
	blez	a0, .LBB9_96
# %bb.33:
	addiw	a1, s1, 5
	li	a2, 3
	addiw	n11, s1, 7
	mv	n15, a1
	blt	a2, a1, .LBB9_146
# %bb.34:
	li	n15, 3
	addiw	a3, a1, 1
	mv	a2, n11
	bge	n11, a3, .LBB9_147
.LBB9_35:
	addiw	a4, a1, 2
	mv	a3, n11
	blt	n11, a4, .LBB9_37
.LBB9_36:
	mv	a3, a4
.LBB9_37:
	lui	a5, %hi(img4Y_tmp)
	slliw	a6, a1, 2
	addiw	a7, s1, 8
	addi	a4, a1, 1
	mv	n3, n11
	blt	n11, a7, .LBB9_39
# %bb.38:
	mv	n3, a7
.LBB9_39:
	ld	n14, %lo(img4Y_tmp)(a5)
	lui	a5, %hi(img)
	lui	a7, 22
	slli	n2, a1, 3
	slli	t5, a2, 3
	slli	a3, a3, 3
	addi	a1, a1, 2
	slli	n3, n3, 3
	slli	n5, a6, 3
	slliw	a2, a4, 2
	addiw	a6, s1, 9
	slli	a4, a4, 3
	mv	t0, n11
	blt	n11, a6, .LBB9_41
# %bb.40:
	mv	t0, a6
.LBB9_41:
	ld	a6, %lo(img)(a5)
	addiw	a7, a7, 420
	add	n2, n14, n2
	add	t5, n14, t5
	add	n1, n14, a3
	add	n3, n14, n3
	add	n5, s2, n5
	add	n6, n14, a4
	addi	n16, n14, 24
	slli	t0, t0, 3
	add	n7, n14, t0
	slli	a2, a2, 3
	add	n9, s2, a2
	slliw	n12, a1, 2
	slli	n10, a1, 3
	addiw	a1, s1, 10
	add	n10, n14, n10
	blt	n11, a1, .LBB9_43
# %bb.42:
	mv	n11, a1
.LBB9_43:
	li	a1, 0
	ld	a2, 0(n14)
	ld	a3, 8(n14)
	ld	a4, 16(n14)
	ld	a5, 24(n14)
	add	a6, a6, a7
	ld	a7, 0(s2)
	ld	t0, 16(s2)
	ld	t1, 32(n14)
	ld	t2, 32(s2)
	ld	t3, 48(s2)
	ld	t4, 0(n2)
	ld	t5, 0(t5)
	ld	t6, -8(n2)
	ld	n1, 0(n1)
	ld	n2, -16(n2)
	ld	n3, 0(n3)
	ld	n4, 0(n5)
	ld	n5, 16(n5)
	ld	n6, 0(n6)
	ld	n7, 0(n7)
	ld	n8, 0(n9)
	ld	n9, 16(n9)
	ld	n10, 0(n10)
	slli	n11, n11, 3
	add	n11, n14, n11
	ld	n11, 0(n11)
	slli	n12, n12, 3
	add	n13, s2, n12
	ld	n12, 0(n13)
	ld	n13, 16(n13)
	addi	n14, n14, 40
	slli	n15, n15, 3
	add	n15, n16, n15
	li	n16, 20
	li	n17, -2
	lui	n18, %hi(img)
	lui	n19, 22
	addiw	n19, n19, 420
	j	.LBB9_46
.LBB9_44:                               #   in Loop: Header=BB9_46 Depth=1
	li	n21, 0
.LBB9_45:                               #   in Loop: Header=BB9_46 Depth=1
	add	n20, n13, n20
	addi	a1, a1, 1
	sh	n21, 0(n20)
	beq	a1, a0, .LBB9_96
.LBB9_46:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_66 Depth 2
	slli	n21, a1, 2
	add	n20, a2, n21
	lw	n23, 0(n20)
	addiw	n20, n23, 512
	bltz	n20, .LBB9_49
# %bb.47:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n22, 0(a6)
	sraiw	n26, n20, 10
	blt	n26, n22, .LBB9_50
# %bb.48:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n26, n22
	j	.LBB9_50
.LBB9_49:                               #   in Loop: Header=BB9_46 Depth=1
	li	n26, 0
.LBB9_50:                               #   in Loop: Header=BB9_46 Depth=1
	add	n20, a3, n21
	lw	n24, 0(n20)
	add	n20, n24, n23
	add	n22, a4, n21
	lw	n22, 0(n22)
	mul	n20, n20, n16
	add	n25, a5, n21
	lw	n25, 0(n25)
	add	n27, n22, n23
	slli	n28, n27, 2
	add	n27, n28, n27
	add	n25, n25, n23
	add	n20, n20, n25
	subw	n20, n20, n27
	sraiw	n27, n20, 5
	slliw	n20, a1, 1
	slli	n20, n20, 1
	add	n28, a7, n20
	addi	n27, n27, 512
	sh	n26, 0(n28)
	bltz	n27, .LBB9_53
# %bb.51:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n26, 0(a6)
	srai	n27, n27, 10
	blt	n27, n26, .LBB9_54
# %bb.52:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n27, n26
	j	.LBB9_54
.LBB9_53:                               #   in Loop: Header=BB9_46 Depth=1
	li	n27, 0
.LBB9_54:                               #   in Loop: Header=BB9_46 Depth=1
	add	n26, t1, n21
	lw	n26, 0(n26)
	add	n29, t0, n20
	addiw	n28, n24, 512
	sh	n27, 0(n29)
	bltz	n28, .LBB9_57
# %bb.55:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n29, 0(a6)
	sraiw	n27, n28, 10
	blt	n27, n29, .LBB9_58
# %bb.56:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n27, n29
	j	.LBB9_58
.LBB9_57:                               #   in Loop: Header=BB9_46 Depth=1
	li	n27, 0
.LBB9_58:                               #   in Loop: Header=BB9_46 Depth=1
	add	n24, n22, n24
	mul	n24, n24, n16
	slli	n28, n25, 2
	add	n25, n28, n25
	add	n23, n24, n23
	subw	n23, n23, n25
	add	n23, n23, n26
	sraiw	n23, n23, 5
	add	n24, t2, n20
	addi	n23, n23, 512
	sh	n27, 0(n24)
	bltz	n23, .LBB9_62
# %bb.59:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n24, 0(a6)
	srai	n23, n23, 10
	blt	n23, n24, .LBB9_61
# %bb.60:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n23, n24
.LBB9_61:                               #   in Loop: Header=BB9_46 Depth=1
	add	n24, t3, n20
	sh	n23, 0(n24)
	bge	s1, n17, .LBB9_63
	j	.LBB9_73
.LBB9_62:                               #   in Loop: Header=BB9_46 Depth=1
	add	n24, t3, n20
	sh	zero, 0(n24)
	blt	s1, n17, .LBB9_73
.LBB9_63:                               #   in Loop: Header=BB9_46 Depth=1
	ld	n23, %lo(img)(n18)
	add	n23, n23, n19
	li	n24, 8
	mv	n25, n14
	j	.LBB9_66
.LBB9_64:                               #   in Loop: Header=BB9_66 Depth=2
	li	n22, 0
.LBB9_65:                               #   in Loop: Header=BB9_66 Depth=2
	addiw	n27, n24, 2
	slli	n27, n27, 3
	add	n27, s2, n27
	ld	n27, 0(n27)
	add	n27, n27, n20
	sh	n22, 0(n27)
	addi	n25, n25, 8
	addiw	n24, n24, 4
	mv	n22, n26
	beq	n25, n15, .LBB9_73
.LBB9_66:                               #   Parent Loop BB9_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	n26, n22, 512
	bltz	n26, .LBB9_69
# %bb.67:                               #   in Loop: Header=BB9_66 Depth=2
	lw	n28, 0(n23)
	sraiw	n27, n26, 10
	blt	n27, n28, .LBB9_70
# %bb.68:                               #   in Loop: Header=BB9_66 Depth=2
	mv	n27, n28
	j	.LBB9_70
.LBB9_69:                               #   in Loop: Header=BB9_66 Depth=2
	li	n27, 0
.LBB9_70:                               #   in Loop: Header=BB9_66 Depth=2
	ld	n26, -16(n25)
	ld	n28, -32(n25)
	add	n26, n26, n21
	ld	n29, -8(n25)
	lw	n26, 0(n26)
	add	n28, n28, n21
	lw	n28, 0(n28)
	add	n29, n29, n21
	lw	n29, 0(n29)
	add	n22, n26, n22
	add	n28, n29, n28
	ld	n29, -40(n25)
	slli	n30, n28, 2
	add	n28, n30, n28
	ld	n30, 0(n25)
	add	n29, n29, n21
	lw	n29, 0(n29)
	mul	n22, n22, n16
	add	n30, n30, n21
	lw	n30, 0(n30)
	add	n22, n22, n29
	slli	n29, n24, 3
	add	n29, s2, n29
	ld	n29, 0(n29)
	subw	n22, n22, n28
	add	n22, n22, n30
	sraiw	n22, n22, 5
	add	n29, n29, n20
	addi	n22, n22, 512
	sh	n27, 0(n29)
	bltz	n22, .LBB9_64
# %bb.71:                               #   in Loop: Header=BB9_66 Depth=2
	lw	n27, 0(n23)
	srai	n22, n22, 10
	blt	n22, n27, .LBB9_65
# %bb.72:                               #   in Loop: Header=BB9_66 Depth=2
	mv	n22, n27
	j	.LBB9_65
.LBB9_73:                               #   in Loop: Header=BB9_46 Depth=1
	ld	n23, %lo(img)(n18)
	add	n22, t4, n21
	lw	n22, 0(n22)
	add	n24, t5, n21
	lw	n26, 0(n24)
	add	n24, t6, n21
	lw	n25, 0(n24)
	add	n24, n1, n21
	lw	n27, 0(n24)
	add	n24, n2, n21
	lw	n28, 0(n24)
	add	n24, n3, n21
	lw	n24, 0(n24)
	addiw	n29, n22, 512
	add	n23, n23, n19
	bltz	n29, .LBB9_76
# %bb.74:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n30, 0(n23)
	sraiw	n29, n29, 10
	blt	n29, n30, .LBB9_77
# %bb.75:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n29, n30
	j	.LBB9_77
.LBB9_76:                               #   in Loop: Header=BB9_46 Depth=1
	li	n29, 0
.LBB9_77:                               #   in Loop: Header=BB9_46 Depth=1
	add	n26, n26, n22
	mul	n26, n26, n16
	add	n30, n27, n25
	slli	n31, n30, 2
	add	n30, n31, n30
	add	n26, n26, n28
	subw	n26, n26, n30
	add	n26, n26, n24
	sraiw	n26, n26, 5
	add	n28, n4, n20
	addi	n26, n26, 512
	sh	n29, 0(n28)
	bltz	n26, .LBB9_80
# %bb.78:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n28, 0(n23)
	srai	n29, n26, 10
	blt	n29, n28, .LBB9_81
# %bb.79:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n29, n28
	j	.LBB9_81
.LBB9_80:                               #   in Loop: Header=BB9_46 Depth=1
	li	n29, 0
.LBB9_81:                               #   in Loop: Header=BB9_46 Depth=1
	add	n26, n6, n21
	lw	n26, 0(n26)
	add	n28, n7, n21
	lw	n28, 0(n28)
	add	n31, n5, n20
	addiw	n30, n26, 512
	sh	n29, 0(n31)
	bltz	n30, .LBB9_84
# %bb.82:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n31, 0(n23)
	sraiw	n29, n30, 10
	blt	n29, n31, .LBB9_85
# %bb.83:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n29, n31
	j	.LBB9_85
.LBB9_84:                               #   in Loop: Header=BB9_46 Depth=1
	li	n29, 0
.LBB9_85:                               #   in Loop: Header=BB9_46 Depth=1
	add	n27, n27, n26
	mul	n27, n27, n16
	add	n30, n24, n22
	slli	n31, n30, 2
	add	n30, n31, n30
	add	n25, n27, n25
	subw	n25, n25, n30
	add	n25, n25, n28
	sraiw	n25, n25, 5
	add	n27, n8, n20
	addi	n25, n25, 512
	sh	n29, 0(n27)
	bltz	n25, .LBB9_88
# %bb.86:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n29, 0(n23)
	srai	n27, n25, 10
	blt	n27, n29, .LBB9_89
# %bb.87:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n27, n29
	j	.LBB9_89
.LBB9_88:                               #   in Loop: Header=BB9_46 Depth=1
	li	n27, 0
.LBB9_89:                               #   in Loop: Header=BB9_46 Depth=1
	add	n25, n10, n21
	lw	n25, 0(n25)
	add	n21, n11, n21
	lw	n21, 0(n21)
	add	n30, n9, n20
	addiw	n29, n25, 512
	sh	n27, 0(n30)
	bltz	n29, .LBB9_92
# %bb.90:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n30, 0(n23)
	sraiw	n27, n29, 10
	blt	n27, n30, .LBB9_93
# %bb.91:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n27, n30
	j	.LBB9_93
.LBB9_92:                               #   in Loop: Header=BB9_46 Depth=1
	li	n27, 0
.LBB9_93:                               #   in Loop: Header=BB9_46 Depth=1
	add	n24, n24, n25
	mul	n24, n24, n16
	add	n26, n28, n26
	slli	n25, n26, 2
	add	n25, n25, n26
	add	n22, n24, n22
	subw	n22, n22, n25
	add	n21, n22, n21
	sraiw	n21, n21, 5
	add	n22, n12, n20
	addi	n21, n21, 512
	sh	n27, 0(n22)
	bltz	n21, .LBB9_44
# %bb.94:                               #   in Loop: Header=BB9_46 Depth=1
	lw	n22, 0(n23)
	srai	n21, n21, 10
	blt	n21, n22, .LBB9_45
# %bb.95:                               #   in Loop: Header=BB9_46 Depth=1
	mv	n21, n22
	j	.LBB9_45
.LBB9_96:
	slli	a4, s3, 2
	addiw	a0, a4, 30
	slli	a7, s4, 2
	addiw	a5, a7, 32
	addiw	a1, a4, 32
	blez	a5, .LBB9_108
# %bb.97:
	addiw	a2, a4, 28
	addi	t3, a2, 2
	mv	t1, a0
	blt	a0, t3, .LBB9_99
# %bb.98:
	mv	t1, t3
.LBB9_99:
	addi	t2, a2, 1
	mv	t4, a0
	blt	a0, a1, .LBB9_101
# %bb.100:
	mv	t4, a1
.LBB9_101:
	li	a3, 0
	addiw	a4, a4, 31
	addi	t5, a2, 3
	slli	a6, a2, 1
	addi	t0, a6, -2
	andi	t0, t0, -4
	addi	t0, t0, 8
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	j	.LBB9_103
.LBB9_102:                              #   in Loop: Header=BB9_103 Depth=1
	addi	a3, a3, 2
	bgeu	a3, a5, .LBB9_108
.LBB9_103:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_105 Depth 2
	slli	t6, a3, 3
	blez	a2, .LBB9_106
# %bb.104:                              #   in Loop: Header=BB9_103 Depth=1
	add	n1, s2, t6
	ld	n2, 0(n1)
	lhu	n3, 0(n2)
	addi	n1, n2, 4
	add	n2, n2, t0
.LBB9_105:                              #   Parent Loop BB9_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	n4, 0(n1)
	add	n3, n3, n4
	addi	n3, n3, 1
	srli	n3, n3, 1
	sh	n3, -2(n1)
	addi	n1, n1, 4
	mv	n3, n4
	bne	n1, n2, .LBB9_105
.LBB9_106:                              #   in Loop: Header=BB9_103 Depth=1
	bge	a2, a4, .LBB9_102
# %bb.107:                              #   in Loop: Header=BB9_103 Depth=1
	add	t6, s2, t6
	ld	t6, 0(t6)
	add	n1, t6, a6
	lhu	n1, 0(n1)
	add	n2, t6, t1
	lhu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	add	n2, t6, t2
	sh	n1, 0(n2)
	add	n1, t6, t3
	lhu	n1, 0(n1)
	add	n2, t6, t4
	lhu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	add	t6, t6, t5
	sh	n1, 0(t6)
	j	.LBB9_102
.LBB9_108:
	blez	a1, .LBB9_139
# %bb.109:
	addiw	a2, a7, 28
	addiw	a3, a7, 30
	addi	a4, a2, 2
	mv	t0, a3
	blt	a3, a5, .LBB9_111
# %bb.110:
	mv	t0, a5
.LBB9_111:
	slli	t0, t0, 3
	slli	t5, a2, 3
	add	a5, s2, t5
	mv	t1, a3
	blt	a3, a4, .LBB9_113
# %bb.112:
	mv	t1, a4
.LBB9_113:
	li	a6, 0
	addiw	a7, a7, 31
	add	t0, s2, t0
	slli	t1, t1, 3
	add	t1, s2, t1
	slli	t2, a4, 3
	add	t2, s2, t2
	addi	t3, a2, 3
	addi	t4, s2, 8
	addi	t5, t5, -8
	andi	t5, t5, -16
	add	t5, t5, s2
	addi	t5, t5, 24
	li	t6, 1
	addi	n1, a4, 1
	li	n2, 3
	j	.LBB9_117
.LBB9_114:                              #   in Loop: Header=BB9_117 Depth=1
	ld	n3, 0(a5)
	ld	n4, 0(t1)
	add	n3, n3, n5
	lhu	n3, 0(n3)
	add	n4, n4, n5
	lhu	n4, 0(n4)
	add	n3, n3, n4
	ld	n4, 8(a5)
	addi	n3, n3, 1
	ld	n6, 0(t2)
	srli	n3, n3, 1
	add	n4, n4, n5
	sh	n3, 0(n4)
	add	n6, n6, n5
	mv	n3, a6
	mv	n4, t3
.LBB9_115:                              #   in Loop: Header=BB9_117 Depth=1
	ld	n7, 0(t0)
	lhu	n6, 0(n6)
	slli	n3, n3, 1
	add	n3, n7, n3
	lhu	n3, 0(n3)
	slli	n4, n4, 3
	add	n4, s2, n4
	ld	n4, 0(n4)
	add	n3, n6, n3
	addi	n3, n3, 1
	srli	n3, n3, 1
	add	n4, n4, n5
	sh	n3, 0(n4)
.LBB9_116:                              #   in Loop: Header=BB9_117 Depth=1
	addi	a6, a6, 1
	beq	a6, a1, .LBB9_139
.LBB9_117:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_133 Depth 2
                                        #     Child Loop BB9_122 Depth 2
	addiw	n4, a6, 1
	mv	n3, a0
	blt	a0, n4, .LBB9_119
# %bb.118:                              #   in Loop: Header=BB9_117 Depth=1
	mv	n3, n4
.LBB9_119:                              #   in Loop: Header=BB9_117 Depth=1
	addi	n4, a6, -1
	andi	n6, a6, 1
	blez	a2, .LBB9_123
# %bb.120:                              #   in Loop: Header=BB9_117 Depth=1
	bnez	n6, .LBB9_131
# %bb.121:                              # %.preheader
                                        #   in Loop: Header=BB9_117 Depth=1
	slli	n5, a6, 1
	mv	n7, t4
.LBB9_122:                              #   Parent Loop BB9_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n8, -8(n7)
	ld	n9, 8(n7)
	add	n8, n8, n5
	lhu	n8, 0(n8)
	add	n9, n9, n5
	lhu	n9, 0(n9)
	ld	n10, 0(n7)
	add	n8, n8, n9
	addi	n8, n8, 1
	srli	n8, n8, 1
	add	n10, n10, n5
	addi	n7, n7, 16
	sh	n8, 0(n10)
	bne	n7, t5, .LBB9_122
.LBB9_123:                              #   in Loop: Header=BB9_117 Depth=1
	bge	a2, a7, .LBB9_116
# %bb.124:                              #   in Loop: Header=BB9_117 Depth=1
	slli	n5, a6, 1
	beqz	n6, .LBB9_114
# %bb.125:                              #   in Loop: Header=BB9_117 Depth=1
	andi	n6, a6, 3
	mv	n7, n3
	beq	n6, t6, .LBB9_135
# %bb.126:                              #   in Loop: Header=BB9_117 Depth=1
	mv	n7, n4
	mv	n9, a4
	bge	a4, a3, .LBB9_136
.LBB9_127:                              #   in Loop: Header=BB9_117 Depth=1
	mv	n8, n4
	beq	n6, t6, .LBB9_129
.LBB9_128:                              #   in Loop: Header=BB9_117 Depth=1
	mv	n8, n3
.LBB9_129:                              #   in Loop: Header=BB9_117 Depth=1
	slli	n9, n9, 3
	ld	n10, 0(a5)
	add	n9, s2, n9
	slli	n7, n7, 1
	ld	n9, 0(n9)
	add	n7, n10, n7
	lhu	n7, 0(n7)
	slli	n8, n8, 1
	add	n8, n9, n8
	lhu	n8, 0(n8)
	add	n7, n7, n8
	ld	n8, 8(a5)
	addi	n9, n7, 1
	ld	n7, 0(t2)
	srli	n9, n9, 1
	add	n8, n8, n5
	sh	n9, 0(n8)
	bne	n6, n2, .LBB9_137
# %bb.130:                              #   in Loop: Header=BB9_117 Depth=1
	slli	n3, n3, 1
	add	n6, n7, n3
	mv	n3, n4
	j	.LBB9_138
.LBB9_131:                              # %.preheader2
                                        #   in Loop: Header=BB9_117 Depth=1
	li	n5, 0
	andi	n8, a6, 3
	addi	n7, n8, -3
	seqz	n7, n7
	xori	n8, n8, 1
	slli	n9, a6, 1
	mv	n10, t4
	j	.LBB9_133
.LBB9_132:                              #   in Loop: Header=BB9_133 Depth=2
	ld	n13, -8(n10)
	ld	n14, 8(n10)
	ld	n15, 0(n10)
	slli	n12, n12, 1
	add	n12, n13, n12
	lhu	n12, 0(n12)
	slli	n11, n11, 1
	add	n11, n14, n11
	lhu	n11, 0(n11)
	add	n15, n15, n9
	add	n11, n12, n11
	addi	n11, n11, 1
	srli	n11, n11, 1
	sh	n11, 0(n15)
	addi	n10, n10, 16
	addi	n5, n5, 2
	beq	n10, t5, .LBB9_123
.LBB9_133:                              #   Parent Loop BB9_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	n11, n5, 2
	or	n12, n8, n11
	seqz	n12, n12
	srli	n11, n11, 1
	and	n11, n7, n11
	or	n13, n12, n11
	mv	n12, n3
	mv	n11, n4
	bnez	n13, .LBB9_132
# %bb.134:                              #   in Loop: Header=BB9_133 Depth=2
	mv	n12, n4
	mv	n11, n3
	j	.LBB9_132
.LBB9_135:                              #   in Loop: Header=BB9_117 Depth=1
	mv	n9, a4
	blt	a4, a3, .LBB9_127
.LBB9_136:                              #   in Loop: Header=BB9_117 Depth=1
	mv	n9, a3
	mv	n8, n4
	bne	n6, t6, .LBB9_128
	j	.LBB9_129
.LBB9_137:                              #   in Loop: Header=BB9_117 Depth=1
	slli	n4, n4, 1
	add	n6, n7, n4
.LBB9_138:                              #   in Loop: Header=BB9_117 Depth=1
	mv	n4, n1
	j	.LBB9_115
.LBB9_139:
	blez	s4, .LBB9_145
# %bb.140:
	blez	s3, .LBB9_145
# %bb.141:
	li	s5, 0
	li	s6, 0
.LBB9_142:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_143 Depth 2
	slli	a0, s6, 2
	addiw	a0, a0, 16
	slli	a0, a0, 3
	add	s7, s2, a0
	li	s8, 16
	mv	s1, s5
	mv	s9, s3
.LBB9_143:                              #   Parent Loop BB9_142 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s7)
	slli	a1, s8, 1
	add	a0, a0, a1
	lhu	a2, 0(a0)
	mv	a0, s0
	mv	a1, s1
	call	PutPel_11
	addi	s9, s9, -1
	addiw	s8, s8, 4
	addiw	s1, s1, 1
	bnez	s9, .LBB9_143
# %bb.144:                              #   in Loop: Header=BB9_142 Depth=1
	addi	s6, s6, 1
	addw	s5, s5, s3
	bne	s6, s4, .LBB9_142
.LBB9_145:
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
	ret
.LBB9_146:
	addiw	a3, a1, 1
	mv	a2, n11
	blt	n11, a3, .LBB9_35
.LBB9_147:
	mv	a2, a3
	addiw	a4, a1, 2
	mv	a3, n11
	bge	n11, a4, .LBB9_36
	j	.LBB9_37
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
	lui	s4, %hi(img)
	ld	a0, %lo(img)(s4)
	lui	s6, 22
	addiw	a1, s6, 84
	add	a2, a0, a1
	lui	a1, 8
	add	a3, a0, a1
	lw	a4, 12(a0)
	lui	s5, %hi(rdopt)
	ld	a1, %lo(rdopt)(s5)
	ld	s1, -1192(a3)
	li	a3, 528
	mul	a3, a4, a3
	lw	a4, 1560(a1)
	lw	a5, 1624(a1)
	add	s1, s1, a3
	lw	s0, 24(a0)
	sw	a4, 72(s1)
	sw	a5, 364(s1)
	ld	a3, 1632(a1)
	lh	a4, 1564(a1)
	lw	a5, 1696(a1)
	lw	a6, 1716(a1)
	sd	a3, 368(s1)
	sh	a4, 476(s1)
	sw	a5, 0(a2)
	sw	a6, 488(s1)
	lw	a3, 1720(a1)
	lw	a4, 1728(a1)
	lw	a5, 1724(a1)
	lw	s3, 428(s1)
	sw	a3, 492(s1)
	sw	a4, 496(s1)
	sw	a5, 8(s1)
	lw	a3, 1712(a1)
	lw	a4, 1700(a1)
	lw	a2, 344(a2)
	lw	s2, 1640(a1)
	sw	a3, 12(s1)
	li	a3, -3
	sw	a4, 416(s1)
	blt	a2, a3, .LBB11_4
# %bb.1:                                # %.preheader6
	li	s7, 0
	li	s8, -1
	lui	s9, 3
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
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
	ld	a0, %lo(img)(s4)
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
	lui	s6, 3
	add	a0, a0, s6
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
	add	a0, a0, s6
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
	add	a0, a0, s6
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
	add	a0, a0, s6
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
	add	a0, a0, s6
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s4)
	ld	a1, %lo(rdopt)(s5)
	add	a0, a0, s6
	ld	a0, 1856(a0)
	ld	a1, 1552(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	lui	a1, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a1)
	ld	a3, %lo(img)(s4)
	lui	a0, 2
	add	a2, a2, a0
	ld	a2, -1712(a2)
	lw	a4, 148(a3)
	ld	a2, 0(a2)
	slli	a5, a4, 3
	ld	a4, %lo(rdopt)(s5)
	add	a2, a2, a5
	ld	a2, 0(a2)
	lw	a3, 144(a3)
	lw	a4, 1664(a4)
	add	a2, a2, a3
	srli	a3, a4, 24
	sb	a3, 3(a2)
	srli	a3, a4, 16
	sb	a3, 2(a2)
	srli	a3, a4, 8
	sb	a3, 1(a2)
	sb	a4, 0(a2)
	ld	a6, %lo(enc_picture)(a1)
	addiw	a2, a0, -1712
	add	a4, a6, a2
	ld	a3, 0(a4)
	ld	a7, 0(a3)
	li	a3, 264
	ld	t0, %lo(img)(s4)
	add	t1, a7, a5
	ld	t2, 8(a4)
	ld	t1, 0(t1)
	lw	t3, 144(t0)
	mul	a4, s3, a3
	ld	t2, 0(t2)
	add	a6, a6, a4
	add	t4, t1, t3
	lbu	t4, 0(t4)
	add	a5, t2, a5
	ld	a5, 0(a5)
	addi	a6, a6, 24
	slli	t4, t4, 3
	add	t4, a6, t4
	ld	t2, 0(t4)
	slli	t4, t3, 3
	add	t4, a5, t4
	sd	t2, 0(t4)
	addi	t2, t3, 1
	add	t4, t1, t2
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a6, t4
	ld	t4, 0(t4)
	slli	t2, t2, 3
	add	t2, a5, t2
	sd	t4, 0(t2)
	addi	t2, t3, 2
	add	t4, t1, t2
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a6, t4
	ld	t4, 0(t4)
	slli	t2, t2, 3
	add	t2, a5, t2
	sd	t4, 0(t2)
	addi	t2, t3, 3
	add	t1, t1, t2
	lbu	t1, 0(t1)
	slli	t1, t1, 3
	add	a6, a6, t1
	ld	a6, 0(a6)
	lw	t0, 148(t0)
	slli	t2, t2, 3
	add	a5, a5, t2
	sd	a6, 0(a5)
	slli	t0, t0, 3
	ld	a5, %lo(rdopt)(s5)
	addi	t0, t0, 8
	add	a7, a7, t0
	ld	a6, 0(a7)
	lw	a5, 1668(a5)
	add	a6, a6, t3
	srli	a7, a5, 24
	sb	a7, 3(a6)
	srli	a7, a5, 16
	sb	a7, 2(a6)
	srli	a7, a5, 8
	sb	a7, 1(a6)
	sb	a5, 0(a6)
	ld	a5, %lo(enc_picture)(a1)
	add	a6, a5, a2
	ld	a7, 0(a6)
	ld	a7, 0(a7)
	ld	t1, %lo(img)(s4)
	add	t2, a7, t0
	ld	a6, 8(a6)
	ld	t2, 0(t2)
	lw	t3, 144(t1)
	ld	a6, 0(a6)
	add	a5, a5, a4
	add	t4, t2, t3
	lbu	t4, 0(t4)
	add	a6, a6, t0
	ld	a6, 0(a6)
	addi	a5, a5, 24
	slli	t4, t4, 3
	add	t4, a5, t4
	ld	t0, 0(t4)
	slli	t4, t3, 3
	add	t4, a6, t4
	sd	t0, 0(t4)
	addi	t0, t3, 1
	add	t4, t2, t0
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a5, t4
	ld	t4, 0(t4)
	slli	t0, t0, 3
	add	t0, a6, t0
	sd	t4, 0(t0)
	addi	t0, t3, 2
	add	t4, t2, t0
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a5, t4
	ld	t4, 0(t4)
	slli	t0, t0, 3
	add	t0, a6, t0
	sd	t4, 0(t0)
	addi	t0, t3, 3
	add	t2, t2, t0
	lbu	t2, 0(t2)
	slli	t2, t2, 3
	add	a5, a5, t2
	ld	a5, 0(a5)
	lw	t1, 148(t1)
	slli	t0, t0, 3
	add	a6, a6, t0
	sd	a5, 0(a6)
	slli	t1, t1, 3
	ld	a5, %lo(rdopt)(s5)
	addi	t1, t1, 16
	add	a7, a7, t1
	ld	a6, 0(a7)
	lw	a5, 1672(a5)
	add	a6, a6, t3
	srli	a7, a5, 24
	sb	a7, 3(a6)
	srli	a7, a5, 16
	sb	a7, 2(a6)
	srli	a7, a5, 8
	sb	a7, 1(a6)
	sb	a5, 0(a6)
	ld	a5, %lo(enc_picture)(a1)
	add	a6, a5, a2
	ld	a7, 0(a6)
	ld	a7, 0(a7)
	ld	t0, %lo(img)(s4)
	add	t2, a7, t1
	ld	a6, 8(a6)
	ld	t2, 0(t2)
	lw	t3, 144(t0)
	ld	a6, 0(a6)
	add	a5, a5, a4
	add	t4, t2, t3
	lbu	t4, 0(t4)
	add	a6, a6, t1
	ld	a6, 0(a6)
	addi	a5, a5, 24
	slli	t4, t4, 3
	add	t4, a5, t4
	ld	t1, 0(t4)
	slli	t4, t3, 3
	add	t4, a6, t4
	sd	t1, 0(t4)
	addi	t1, t3, 1
	add	t4, t2, t1
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a5, t4
	ld	t4, 0(t4)
	slli	t1, t1, 3
	add	t1, a6, t1
	sd	t4, 0(t1)
	addi	t1, t3, 2
	add	t4, t2, t1
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a5, t4
	ld	t4, 0(t4)
	slli	t1, t1, 3
	add	t1, a6, t1
	sd	t4, 0(t1)
	addi	t1, t3, 3
	add	t2, t2, t1
	lbu	t2, 0(t2)
	slli	t2, t2, 3
	add	a5, a5, t2
	ld	a5, 0(a5)
	lw	t0, 148(t0)
	slli	t1, t1, 3
	add	a6, a6, t1
	sd	a5, 0(a6)
	slli	t0, t0, 3
	ld	a5, %lo(rdopt)(s5)
	addi	t1, t0, 24
	add	a7, a7, t1
	ld	a6, 0(a7)
	lw	a5, 1676(a5)
	add	a6, a6, t3
	srli	a7, a5, 24
	sb	a7, 3(a6)
	srli	a7, a5, 16
	sb	a7, 2(a6)
	srli	a7, a5, 8
	sb	a7, 1(a6)
	sb	a5, 0(a6)
	ld	a6, %lo(enc_picture)(a1)
	add	a7, a6, a2
	ld	t0, 0(a7)
	ld	t2, 0(t0)
	ld	a5, %lo(img)(s4)
	add	t2, t2, t1
	ld	t3, 8(a7)
	ld	t2, 0(t2)
	lw	a7, 144(a5)
	ld	t3, 0(t3)
	add	a4, a6, a4
	add	t4, t2, a7
	lbu	t4, 0(t4)
	add	t1, t3, t1
	ld	t1, 0(t1)
	addi	a4, a4, 24
	slli	t4, t4, 3
	add	t4, a4, t4
	ld	t3, 0(t4)
	slli	t4, a7, 3
	add	t4, t1, t4
	sd	t3, 0(t4)
	addi	t3, a7, 1
	add	t4, t2, t3
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a4, t4
	ld	t4, 0(t4)
	slli	t3, t3, 3
	add	t3, t1, t3
	sd	t4, 0(t3)
	addi	t3, a7, 2
	add	t4, t2, t3
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a4, t4
	ld	t4, 0(t4)
	slli	t3, t3, 3
	add	t3, t1, t3
	sd	t4, 0(t3)
	addi	t3, a7, 3
	add	t2, t2, t3
	lbu	t2, 0(t2)
	slli	t2, t2, 3
	add	a4, a4, t2
	ld	a4, 0(a4)
	slli	t3, t3, 3
	add	t1, t1, t3
	li	t2, 1
	sd	a4, 0(t1)
	bne	s0, t2, .LBB11_6
# %bb.5:
	lw	a5, 148(a5)
	ld	a6, 8(t0)
	lui	a4, %hi(rdopt)
	ld	t0, %lo(rdopt)(a4)
	slli	t1, a5, 3
	add	a6, a6, t1
	ld	a5, 0(a6)
	lw	a6, 1680(t0)
	add	a5, a5, a7
	srli	a7, a6, 24
	sb	a7, 3(a5)
	srli	a7, a6, 16
	sb	a7, 2(a5)
	srli	a7, a6, 8
	sb	a7, 1(a5)
	sb	a6, 0(a5)
	ld	a6, %lo(enc_picture)(a1)
	add	a7, a6, a2
	ld	a5, 0(a7)
	ld	t0, 8(a5)
	addiw	s3, s3, 1
	lui	a5, %hi(img)
	ld	t2, %lo(img)(a5)
	add	t3, t0, t1
	ld	a7, 8(a7)
	ld	t3, 0(t3)
	lw	t4, 144(t2)
	mul	a3, s3, a3
	ld	a7, 8(a7)
	add	a6, a6, a3
	add	t5, t3, t4
	lbu	t5, 0(t5)
	add	a7, a7, t1
	ld	a7, 0(a7)
	addi	a6, a6, 24
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t1, 0(t5)
	slli	t5, t4, 3
	add	t5, a7, t5
	sd	t1, 0(t5)
	addi	t1, t4, 1
	add	t5, t3, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t5, 0(t5)
	slli	t1, t1, 3
	add	t1, a7, t1
	sd	t5, 0(t1)
	addi	t1, t4, 2
	add	t5, t3, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t5, 0(t5)
	slli	t1, t1, 3
	add	t1, a7, t1
	sd	t5, 0(t1)
	addi	t1, t4, 3
	add	t3, t3, t1
	lbu	t3, 0(t3)
	slli	t3, t3, 3
	add	a6, a6, t3
	ld	a6, 0(a6)
	lw	t2, 148(t2)
	slli	t1, t1, 3
	add	a7, a7, t1
	sd	a6, 0(a7)
	slli	t2, t2, 3
	ld	a6, %lo(rdopt)(a4)
	addi	t2, t2, 8
	add	t0, t0, t2
	ld	a7, 0(t0)
	lw	a6, 1684(a6)
	add	a7, a7, t4
	srli	t0, a6, 24
	sb	t0, 3(a7)
	srli	t0, a6, 16
	sb	t0, 2(a7)
	srli	t0, a6, 8
	sb	t0, 1(a7)
	sb	a6, 0(a7)
	ld	a6, %lo(enc_picture)(a1)
	add	a7, a6, a2
	ld	t0, 0(a7)
	ld	t0, 8(t0)
	ld	t1, %lo(img)(a5)
	add	t3, t0, t2
	ld	a7, 8(a7)
	ld	t3, 0(t3)
	lw	t4, 144(t1)
	ld	a7, 8(a7)
	add	a6, a6, a3
	add	t5, t3, t4
	lbu	t5, 0(t5)
	add	a7, a7, t2
	ld	a7, 0(a7)
	addi	a6, a6, 24
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t2, 0(t5)
	slli	t5, t4, 3
	add	t5, a7, t5
	sd	t2, 0(t5)
	addi	t2, t4, 1
	add	t5, t3, t2
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t5, 0(t5)
	slli	t2, t2, 3
	add	t2, a7, t2
	sd	t5, 0(t2)
	addi	t2, t4, 2
	add	t5, t3, t2
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t5, 0(t5)
	slli	t2, t2, 3
	add	t2, a7, t2
	sd	t5, 0(t2)
	addi	t2, t4, 3
	add	t3, t3, t2
	lbu	t3, 0(t3)
	slli	t3, t3, 3
	add	a6, a6, t3
	ld	a6, 0(a6)
	lw	t1, 148(t1)
	slli	t2, t2, 3
	add	a7, a7, t2
	sd	a6, 0(a7)
	slli	t1, t1, 3
	ld	a6, %lo(rdopt)(a4)
	addi	t1, t1, 16
	add	t0, t0, t1
	ld	a7, 0(t0)
	lw	a6, 1688(a6)
	add	a7, a7, t4
	srli	t0, a6, 24
	sb	t0, 3(a7)
	srli	t0, a6, 16
	sb	t0, 2(a7)
	srli	t0, a6, 8
	sb	t0, 1(a7)
	sb	a6, 0(a7)
	ld	a6, %lo(enc_picture)(a1)
	add	a7, a6, a2
	ld	t0, 0(a7)
	ld	t0, 8(t0)
	ld	t2, %lo(img)(a5)
	add	t3, t0, t1
	ld	a7, 8(a7)
	ld	t3, 0(t3)
	lw	t4, 144(t2)
	ld	a7, 8(a7)
	add	a6, a6, a3
	add	t5, t3, t4
	lbu	t5, 0(t5)
	add	a7, a7, t1
	ld	a7, 0(a7)
	addi	a6, a6, 24
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t1, 0(t5)
	slli	t5, t4, 3
	add	t5, a7, t5
	sd	t1, 0(t5)
	addi	t1, t4, 1
	add	t5, t3, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t5, 0(t5)
	slli	t1, t1, 3
	add	t1, a7, t1
	sd	t5, 0(t1)
	addi	t1, t4, 2
	add	t5, t3, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t5, 0(t5)
	slli	t1, t1, 3
	add	t1, a7, t1
	sd	t5, 0(t1)
	addi	t1, t4, 3
	add	t3, t3, t1
	lbu	t3, 0(t3)
	slli	t3, t3, 3
	add	a6, a6, t3
	ld	a6, 0(a6)
	lw	t2, 148(t2)
	slli	t1, t1, 3
	add	a7, a7, t1
	sd	a6, 0(a7)
	slli	t2, t2, 3
	ld	a4, %lo(rdopt)(a4)
	addi	t2, t2, 24
	add	t0, t0, t2
	ld	a6, 0(t0)
	lw	a4, 1692(a4)
	add	a6, a6, t4
	srli	a7, a4, 24
	sb	a7, 3(a6)
	srli	a7, a4, 16
	sb	a7, 2(a6)
	srli	a7, a4, 8
	sb	a7, 1(a6)
	sb	a4, 0(a6)
	ld	a6, %lo(enc_picture)(a1)
	add	a2, a6, a2
	ld	a1, 0(a2)
	ld	a1, 8(a1)
	ld	a5, %lo(img)(a5)
	add	a1, a1, t2
	ld	a2, 8(a2)
	ld	a1, 0(a1)
	lw	a4, 144(a5)
	ld	a2, 8(a2)
	add	a3, a6, a3
	add	a7, a1, a4
	lbu	a7, 0(a7)
	add	a2, a2, t2
	ld	a2, 0(a2)
	addi	a3, a3, 24
	slli	a7, a7, 3
	add	a7, a3, a7
	ld	a7, 0(a7)
	slli	t0, a4, 3
	add	t0, a2, t0
	sd	a7, 0(t0)
	addi	a7, a4, 1
	add	t0, a1, a7
	lbu	t0, 0(t0)
	slli	t0, t0, 3
	add	t0, a3, t0
	ld	t0, 0(t0)
	slli	a7, a7, 3
	add	a7, a2, a7
	sd	t0, 0(a7)
	addi	a7, a4, 2
	add	t0, a1, a7
	lbu	t0, 0(t0)
	slli	t0, t0, 3
	add	t0, a3, t0
	ld	t0, 0(t0)
	slli	a7, a7, 3
	add	a7, a2, a7
	sd	t0, 0(a7)
	addi	a4, a4, 3
	add	a1, a1, a4
	lbu	a1, 0(a1)
	slli	a1, a1, 3
	add	a1, a3, a1
	ld	a1, 0(a1)
	slli	a4, a4, 3
	add	a2, a2, a4
	sd	a1, 0(a2)
.LBB11_6:
	add	s4, a6, a0
	lw	a0, 156(a5)
	ld	a1, -1768(s4)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	lw	a1, 152(a5)
	lui	s3, %hi(rdopt)
	ld	a2, %lo(rdopt)(s3)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, a2, 8
	li	a2, 32
	call	memcpy
	lui	s5, %hi(img)
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 8(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 40
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 16(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 72
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 24(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 104
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 32(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 136
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 40(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 168
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 48(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 200
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 56(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 232
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 64(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 264
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 72(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 296
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 80(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 328
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 88(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 360
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 96(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 392
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 104(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 424
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 112(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 456
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lw	a1, 156(a0)
	ld	a2, -1768(s4)
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 120(a1)
	ld	a2, %lo(rdopt)(s3)
	slli	a0, a0, 1
	add	a0, a1, a0
	addi	a1, a2, 488
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s5)
	lui	a1, 22
	addiw	a1, a1, 436
	add	a1, a0, a1
	lw	a2, 0(a1)
	beqz	a2, .LBB11_10
# %bb.7:
	lw	a1, 12(a1)
	blez	a1, .LBB11_10
# %bb.8:                                # %.preheader
	li	s4, 0
	li	s5, 0
	lui	s6, %hi(enc_picture)
	lui	s7, 2
	lui	s8, %hi(rdopt)
	lui	s9, 22
	lui	s10, %hi(img)
.LBB11_9:                               # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(enc_picture)(s6)
	add	a1, a1, s7
	ld	a1, -1728(a1)
	lw	a2, 164(a0)
	ld	a1, 0(a1)
	add	a2, s5, a2
	lw	a3, 160(a0)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a3, a3, 1
	ld	a2, %lo(rdopt)(s8)
	add	a0, a0, s9
	lw	a4, 444(a0)
	add	a0, a1, a3
	add	a2, a2, s4
	addi	a1, a2, 520
	slli	a2, a4, 1
	call	memcpy
	ld	a0, %lo(enc_picture)(s6)
	ld	a1, %lo(img)(s10)
	add	a0, a0, s7
	ld	a0, -1728(a0)
	lw	a2, 164(a1)
	ld	a0, 8(a0)
	add	a2, s5, a2
	lw	a3, 160(a1)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	a3, a3, 1
	ld	a2, %lo(rdopt)(s8)
	add	a1, a1, s9
	lw	a4, 444(a1)
	add	a0, a0, a3
	add	a2, a2, s4
	addi	a1, a2, 1032
	slli	a2, a4, 1
	call	memcpy
	ld	a0, %lo(img)(s10)
	add	a1, a0, s9
	lw	a1, 448(a1)
	addi	s5, s5, 1
	addi	s4, s4, 32
	blt	s5, a1, .LBB11_9
.LBB11_10:
	ld	a0, %lo(rdopt)(s3)
	ld	a1, 1576(a0)
	sd	a1, 384(s1)
	ld	a0, 1568(a0)
	sd	a0, 376(s1)
	ld	a0, %lo(rdopt)(s3)
	ld	a1, 1592(a0)
	sd	a1, 400(s1)
	ld	a0, 1584(a0)
	sd	a0, 392(s1)
	ld	a0, %lo(rdopt)(s3)
	lw	a1, 1704(a0)
	li	a2, 8
	sw	a1, 468(s1)
	bne	s2, a2, .LBB11_13
# %bb.11:
	lw	a1, 1620(a0)
	sw	a1, 344(s1)
	lw	a1, 1616(a0)
	sw	a1, 340(s1)
	lw	a1, 1612(a0)
	sw	a1, 336(s1)
	lw	a0, 1608(a0)
	sw	a0, 332(s1)
	lui	a1, %hi(img)
	ld	a0, %lo(img)(a1)
	lw	a3, 148(a0)
	addi	a2, a3, -1
	slli	a3, a3, 3
	lui	a4, %hi(rdopt)
.LBB11_12:                              # =>This Inner Loop Header: Depth=1
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
	blt	a2, a5, .LBB11_12
	j	.LBB11_18
.LBB11_13:
	andi	a1, s2, -5
	li	a2, 9
	bne	a1, a2, .LBB11_16
# %bb.14:
	lw	a1, 1620(a0)
	sw	a1, 344(s1)
	lw	a1, 1616(a0)
	sw	a1, 340(s1)
	lw	a1, 1612(a0)
	sw	a1, 336(s1)
	lw	a0, 1608(a0)
	sw	a0, 332(s1)
	lui	a1, %hi(img)
	ld	a0, %lo(img)(a1)
	lw	a3, 148(a0)
	addi	a2, a3, -1
	slli	a3, a3, 3
	lui	a4, %hi(rdopt)
.LBB11_15:                              # =>This Inner Loop Header: Depth=1
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
	blt	a2, a5, .LBB11_15
	j	.LBB11_18
.LBB11_16:
	lui	a0, 8224
	addi	a0, a0, 514
	sw	a0, 344(s1)
	sw	a0, 340(s1)
	sw	a0, 336(s1)
	sw	a0, 332(s1)
	lui	a1, %hi(img)
	ld	a0, %lo(img)(a1)
	lw	a3, 148(a0)
	addi	a2, a3, -1
	slli	a3, a3, 3
	li	a4, 2
.LBB11_17:                              # =>This Inner Loop Header: Depth=1
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
	blt	a2, a5, .LBB11_17
.LBB11_18:
	lui	a1, 22
	addiw	a3, a1, -784
	add	a3, a0, a3
	lw	a1, 892(a3)
	beqz	a1, .LBB11_30
# %bb.19:
	lw	a4, 36(a0)
	blez	a4, .LBB11_26
# %bb.20:
	li	a1, 0
	ld	a2, 8(a3)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	lui	a5, %hi(rdopt)
	li	a6, 4
.LBB11_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_22 Depth 2
                                        #       Child Loop BB11_23 Depth 3
	ld	t0, %lo(rdopt)(a5)
	ld	a7, 1656(t0)
	ld	t0, 1648(t0)
	li	t1, 0
	slli	t2, a1, 3
.LBB11_22:                              #   Parent Loop BB11_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_23 Depth 3
	slli	t4, t1, 3
	add	t3, a7, t4
	ld	t3, 0(t3)
	add	t3, t3, t2
	ld	t5, 0(t3)
	add	t3, a2, t4
	ld	t6, 0(t3)
	ld	t3, 0(t5)
	add	t6, t6, t2
	ld	t6, 0(t6)
	add	n1, t0, t4
	ld	n1, 0(n1)
	add	t4, a3, t4
	ld	n2, 0(t4)
	ld	t4, 0(t6)
	add	n1, n1, t2
	ld	n4, 0(n1)
	add	n2, n2, t2
	ld	n3, 0(n2)
	ld	t5, 8(t5)
	ld	t6, 8(t6)
	ld	n1, 0(n4)
	ld	n2, 0(n3)
	ld	n3, 8(n3)
	ld	n4, 8(n4)
	add	n5, n3, a4
.LBB11_23:                              #   Parent Loop BB11_21 Depth=1
                                        #     Parent Loop BB11_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n6, 0(t3)
	ld	n9, 0(n6)
	ld	n8, 0(t4)
	lh	n10, 0(n9)
	ld	n11, 0(n8)
	ld	n7, 0(t5)
	sh	n10, 0(n11)
	lh	n10, 2(n9)
	ld	n12, 0(n7)
	ld	n9, 0(t6)
	sh	n10, 2(n11)
	lh	n11, 0(n12)
	ld	n13, 0(n9)
	ld	n10, 0(n1)
	sh	n11, 0(n13)
	lh	n12, 2(n12)
	ld	n14, 0(n10)
	ld	n11, 0(n2)
	sh	n12, 2(n13)
	lh	n13, 0(n14)
	ld	n15, 0(n11)
	ld	n12, 0(n4)
	sh	n13, 0(n15)
	lh	n14, 2(n14)
	ld	n16, 0(n12)
	ld	n13, 0(n3)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 0(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 8(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 8(n8)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 8(n7)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 8(n9)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 8(n10)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 8(n11)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 8(n12)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 8(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 16(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 16(n8)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 16(n7)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 16(n9)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 16(n10)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 16(n11)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 16(n12)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 16(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 24(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 24(n8)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 24(n7)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 24(n9)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 24(n10)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 24(n11)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 24(n12)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 24(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 32(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 32(n8)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 32(n7)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 32(n9)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 32(n10)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 32(n11)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 32(n12)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 32(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 40(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 40(n8)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 40(n7)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 40(n9)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 40(n10)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 40(n11)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 40(n12)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 40(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 48(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 48(n8)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 48(n7)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 48(n9)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 48(n10)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 48(n11)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 48(n12)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 48(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 56(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 56(n8)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 56(n7)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 56(n9)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 56(n10)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 56(n11)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n16, 56(n12)
	sh	n14, 2(n15)
	lh	n14, 0(n16)
	ld	n15, 56(n13)
	sh	n14, 0(n15)
	lh	n14, 2(n16)
	ld	n6, 64(n6)
	sh	n14, 2(n15)
	lh	n14, 0(n6)
	ld	n8, 64(n8)
	sh	n14, 0(n8)
	lh	n6, 2(n6)
	ld	n7, 64(n7)
	sh	n6, 2(n8)
	lh	n6, 0(n7)
	ld	n8, 64(n9)
	sh	n6, 0(n8)
	lh	n6, 2(n7)
	ld	n7, 64(n10)
	sh	n6, 2(n8)
	lh	n6, 0(n7)
	ld	n8, 64(n11)
	sh	n6, 0(n8)
	lh	n6, 2(n7)
	ld	n7, 64(n12)
	sh	n6, 2(n8)
	lh	n6, 0(n7)
	ld	n8, 64(n13)
	sh	n6, 0(n8)
	lh	n6, 2(n7)
	sh	n6, 2(n8)
	addi	n3, n3, 8
	addi	n4, n4, 8
	addi	n2, n2, 8
	addi	n1, n1, 8
	addi	t6, t6, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	addi	t3, t3, 8
	bne	n3, n5, .LBB11_23
# %bb.24:                               #   in Loop: Header=BB11_22 Depth=2
	addi	t1, t1, 1
	bne	t1, a6, .LBB11_22
# %bb.25:                               #   in Loop: Header=BB11_21 Depth=1
	addi	a1, a1, 1
	bne	a1, a6, .LBB11_21
.LBB11_26:
	lw	a1, 72(s1)
	li	a2, 14
	bltu	a2, a1, .LBB11_31
# %bb.27:
	lui	a2, 6
	addiw	a2, a2, 1536
	srl	a1, a2, a1
	andi	a1, a1, 1
	beqz	a1, .LBB11_31
# %bb.28:
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
	bne	s0, a3, .LBB11_30
# %bb.29:
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
.LBB11_30:
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
.LBB11_31:
	li	a1, 0
	addi	a2, s1, 376
	addi	a3, s1, 392
	li	a4, 1664
	lui	a5, %hi(rdopt)
	lui	a6, %hi(enc_picture)
	lui	a7, 2
	addiw	a7, a7, -1688
	li	t0, 1
	li	t1, 4
	j	.LBB11_33
.LBB11_32:                              #   in Loop: Header=BB11_33 Depth=1
	addi	a1, a1, 1
	addi	a4, a4, 4
	beq	a1, t1, .LBB11_30
.LBB11_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_38 Depth 2
	ld	t6, %lo(enc_picture)(a6)
	ld	t2, %lo(rdopt)(a5)
	li	t3, 0
	li	t4, 0
	andi	t5, a1, 2
	add	t6, t6, a7
	add	n1, t2, a4
	slli	n2, a1, 3
	j	.LBB11_38
.LBB11_34:                              #   in Loop: Header=BB11_38 Depth=2
	addw	n7, t4, n9
.LBB11_35:                              #   in Loop: Header=BB11_38 Depth=2
	add	n8, n1, t4
	lbu	n9, 16(n8)
	ld	n6, 8(n6)
	slli	n9, n9, 3
	add	n9, n6, n9
	ld	n9, 0(n9)
	slli	n10, n3, 3
	ld	n3, 8(n4)
	add	n9, n9, n10
	ld	n4, 0(n9)
	slli	n5, n5, 3
	add	n3, n3, n5
	ld	n3, 0(n3)
	lh	n4, 0(n4)
	slli	n7, n7, 3
	add	n3, n3, n7
	ld	n3, 0(n3)
	sh	n4, 0(n3)
	lbu	n4, 16(n8)
	slli	n4, n4, 3
	add	n4, n6, n4
	ld	n4, 0(n4)
	add	n4, n4, n10
	ld	n4, 0(n4)
	lhu	n4, 2(n4)
.LBB11_36:                              #   in Loop: Header=BB11_38 Depth=2
	sh	n4, 2(n3)
.LBB11_37:                              #   in Loop: Header=BB11_38 Depth=2
	addi	t4, t4, 1
	addi	t3, t3, 8
	beq	t4, t1, .LBB11_32
.LBB11_38:                              #   Parent Loop BB11_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	n3, t4, 1
	or	n3, n3, t5
	slli	n3, n3, 2
	add	n4, a2, n3
	add	n3, a3, n3
	lw	n7, 0(n3)
	lw	n3, 0(n4)
	bne	n7, t0, .LBB11_41
# %bb.39:                               #   in Loop: Header=BB11_38 Depth=2
	ld	n4, 0(t6)
	lw	n5, 148(a0)
	ld	n6, 0(n4)
	addw	n5, n5, a1
	slli	n7, n5, 3
	lw	n8, 144(a0)
	add	n6, n6, n7
	ld	n6, 0(n6)
	add	n7, t4, n8
	slli	n8, n7, 3
	add	n6, n6, n8
	ld	n6, 0(n6)
	sh	zero, 0(n6)
	sh	zero, 2(n6)
	bne	s0, t0, .LBB11_37
# %bb.40:                               #   in Loop: Header=BB11_38 Depth=2
	ld	n6, 1656(t2)
	add	n6, n6, n2
	ld	n6, 0(n6)
	add	n6, n6, t3
	ld	n6, 0(n6)
	j	.LBB11_35
.LBB11_41:                              #   in Loop: Header=BB11_38 Depth=2
	ld	n4, 1656(t2)
	add	n4, n4, n2
	ld	n4, 0(n4)
	add	n4, n4, t3
	ld	n6, 0(n4)
	add	n11, n1, t4
	lbu	n4, 0(n11)
	ld	n12, 0(n6)
	slli	n4, n4, 3
	add	n4, n12, n4
	ld	n5, 0(n4)
	slli	n13, n3, 3
	ld	n4, 0(t6)
	lw	n8, 148(a0)
	add	n5, n5, n13
	ld	n10, 0(n5)
	ld	n14, 0(n4)
	addw	n5, n8, a1
	slli	n8, n5, 3
	lw	n9, 144(a0)
	add	n14, n14, n8
	ld	n14, 0(n14)
	lh	n15, 0(n10)
	add	n10, t4, n9
	slli	n10, n10, 3
	add	n14, n14, n10
	ld	n14, 0(n14)
	sh	n15, 0(n14)
	lbu	n11, 0(n11)
	slli	n11, n11, 3
	add	n11, n12, n11
	ld	n11, 0(n11)
	add	n11, n11, n13
	ld	n11, 0(n11)
	lh	n11, 2(n11)
	sh	n11, 2(n14)
	bne	s0, t0, .LBB11_37
# %bb.42:                               #   in Loop: Header=BB11_38 Depth=2
	bnez	n7, .LBB11_34
# %bb.43:                               #   in Loop: Header=BB11_38 Depth=2
	ld	n3, 8(n4)
	add	n3, n3, n8
	ld	n3, 0(n3)
	add	n3, n3, n10
	ld	n3, 0(n3)
	li	n4, 0
	sh	zero, 0(n3)
	j	.LBB11_36
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
	li	a5, 3
	mv	s4, a4
	mv	s0, a3
	mv	s3, a2
	mv	s1, a1
	mv	s2, a0
	bltu	a4, a5, .LBB12_2
# %bb.1:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, 500
	call	error
.LBB12_2:
	call	testEndian
	beqz	a0, .LBB12_13
# %bb.3:
	li	a0, 1
	beq	s4, a0, .LBB12_25
# %bb.4:
	li	a0, 2
	beq	s4, a0, .LBB12_19
# %bb.5:
	li	a0, 4
	bne	s4, a0, .LBB12_12
# %bb.6:
	blez	s0, .LBB12_12
# %bb.7:
	blez	s3, .LBB12_12
# %bb.8:
	li	a0, 0
	li	a1, 0
	slli	a2, s3, 2
	slli	s3, s3, 1
.LBB12_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_10 Depth 2
	slli	a3, a1, 3
	add	a3, s2, a3
	ld	a3, 0(a3)
	add	a4, a3, s3
	mv	a5, a0
.LBB12_10:                              #   Parent Loop BB12_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a6, a5, 2
	slli	a6, a6, 2
	add	a6, s1, a6
	lbu	a7, 2(a6)
	lbu	a6, 3(a6)
	slli	a7, a7, 8
	or	a6, a7, a6
	sh	a6, 0(a3)
	addi	a3, a3, 2
	addi	a5, a5, 4
	bne	a3, a4, .LBB12_10
# %bb.11:                               #   in Loop: Header=BB12_9 Depth=1
	addi	a1, a1, 1
	add	a0, a0, a2
	bne	a1, s0, .LBB12_9
.LBB12_12:
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
	addi	sp, sp, 96
	tail	error
.LBB12_13:
	blez	s0, .LBB12_31
# %bb.14:
	blez	s3, .LBB12_31
# %bb.15:
	li	s5, 0
	slli	s6, s3, 1
	mul	s7, s4, s3
.LBB12_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
	li	s8, 0
	slli	s9, s5, 3
	add	s9, s2, s9
	mv	s3, s1
.LBB12_17:                              #   Parent Loop BB12_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s9)
	add	a0, a0, s8
	sh	zero, 0(a0)
	mv	a1, s3
	mv	a2, s4
	call	memcpy
	addi	s8, s8, 2
	add	s3, s3, s4
	bne	s6, s8, .LBB12_17
# %bb.18:                               #   in Loop: Header=BB12_16 Depth=1
	addi	s5, s5, 1
	add	s1, s1, s7
	bne	s5, s0, .LBB12_16
	j	.LBB12_31
.LBB12_19:
	blez	s0, .LBB12_31
# %bb.20:
	blez	s3, .LBB12_31
# %bb.21:
	li	a0, 0
	slli	s3, s3, 1
.LBB12_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_23 Depth 2
	slli	a1, a0, 3
	add	a1, s2, a1
	ld	a1, 0(a1)
	add	a2, a1, s3
	mv	a3, s1
.LBB12_23:                              #   Parent Loop BB12_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a4, 0(a3)
	lbu	a5, 1(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	sh	a4, 0(a1)
	addi	a1, a1, 2
	addi	a3, a3, 2
	bne	a1, a2, .LBB12_23
# %bb.24:                               #   in Loop: Header=BB12_22 Depth=1
	addi	a0, a0, 1
	add	s1, s1, s3
	bne	a0, s0, .LBB12_22
	j	.LBB12_31
.LBB12_25:
	blez	s0, .LBB12_31
# %bb.26:
	blez	s3, .LBB12_31
# %bb.27:
	li	a0, 0
	slli	a1, s3, 1
.LBB12_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_29 Depth 2
	slli	a2, a0, 3
	add	a2, s2, a2
	ld	a2, 0(a2)
	add	a3, a2, a1
	mv	a4, s1
.LBB12_29:                              #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, 0(a4)
	sh	a5, 0(a2)
	addi	a2, a2, 2
	addi	a4, a4, 1
	bne	a2, a3, .LBB12_29
# %bb.30:                               #   in Loop: Header=BB12_28 Depth=1
	addi	a0, a0, 1
	add	s1, s1, s3
	bne	a0, s0, .LBB12_28
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
	call	fopen
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
	call	fopen
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
	call	fopen
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
	call	fopen
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
