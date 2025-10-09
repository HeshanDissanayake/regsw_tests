	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getpic.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getpicture                      # -- Begin function getpicture
	.p2align	2
	.type	getpicture,@function
getpicture:                             # @getpicture
# %bb.0:
	addi	sp, sp, -464
	sd	ra, 456(sp)                     # 8-byte Folded Spill
	sd	s0, 448(sp)                     # 8-byte Folded Spill
	sd	s1, 440(sp)                     # 8-byte Folded Spill
	sd	s2, 432(sp)                     # 8-byte Folded Spill
	sd	s3, 424(sp)                     # 8-byte Folded Spill
	sd	s4, 416(sp)                     # 8-byte Folded Spill
	sd	s5, 408(sp)                     # 8-byte Folded Spill
	sd	s6, 400(sp)                     # 8-byte Folded Spill
	sd	s7, 392(sp)                     # 8-byte Folded Spill
	sd	s8, 384(sp)                     # 8-byte Folded Spill
	sd	s9, 376(sp)                     # 8-byte Folded Spill
	sd	s10, 368(sp)                    # 8-byte Folded Spill
	sd	s11, 360(sp)                    # 8-byte Folded Spill
	mv	s4, a0
	lui	a1, %hi(oldrefframe)
	lui	a2, %hi(refframe)
	ld	a0, %lo(refframe)(a2)
	ld	a3, %lo(oldrefframe)(a1)
	addi	a4, a1, %lo(oldrefframe)
	addi	a5, a2, %lo(refframe)
	sd	a0, %lo(oldrefframe)(a1)
	sd	a3, %lo(refframe)(a2)
	lui	a1, %hi(newframe)
	sd	a3, %lo(newframe)(a1)
	ld	a2, 8(a5)
	ld	a3, 8(a4)
	addi	a1, a1, %lo(newframe)
	ld	a6, 16(a5)
	sd	a2, 8(a4)
	sd	a3, 8(a5)
	ld	a2, 16(a4)
	sd	a6, 16(a4)
	lui	a4, %hi(mv_outside_frame)
	lw	a4, %lo(mv_outside_frame)(a4)
	lw	a6, 0(s4)
	sd	a3, 8(a1)
	sd	a2, 16(a5)
	sd	a2, 16(a1)
	beqz	a4, .LBB0_3
# %bb.1:
	blez	a6, .LBB0_3
# %bb.2:
	lui	a4, %hi(edgeframe)
	ld	a1, %lo(edgeframe)(a4)
	lui	a2, %hi(coded_picture_width)
	lw	a2, %lo(coded_picture_width)(a2)
	lui	a3, %hi(coded_picture_height)
	lw	a3, %lo(coded_picture_height)(a3)
	addi	s0, a4, %lo(edgeframe)
	li	a4, 32
	call	make_edge_image
	lui	s1, %hi(oldrefframe)
	addi	s1, s1, %lo(oldrefframe)
	ld	a0, 8(s1)
	ld	a1, 8(s0)
	lui	s2, %hi(chrom_width)
	lw	a2, %lo(chrom_width)(s2)
	lui	s3, %hi(chrom_height)
	lw	a3, %lo(chrom_height)(s3)
	li	a4, 16
	call	make_edge_image
	ld	a0, 16(s1)
	ld	a1, 16(s0)
	lw	a2, %lo(chrom_width)(s2)
	lw	a3, %lo(chrom_height)(s3)
	li	a4, 16
	call	make_edge_image
	lw	a6, 0(s4)
.LBB0_3:
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 24(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	lui	a1, %hi(mb_height)
	lw	a1, %lo(mb_height)(a1)
	lui	a2, %hi(newgob)
	sw	zero, %lo(newgob)(a2)
	lui	s11, %hi(modemap)
	addi	s11, s11, %lo(modemap)
	lui	s10, %hi(MV)
	addi	s10, s10, %lo(MV)
	blez	a0, .LBB0_6
# %bb.4:
	li	a2, 0
	addi	a3, a0, 1
	slli	a3, a3, 32
	srli	a3, a3, 30
	addi	a3, a3, -4
	lui	a4, 32
	li	a5, 999
	lui	a6, 6
	lui	a7, 38
	lui	t0, 13
	lui	t1, 45
	lui	t2, 19
	lui	t3, 51
	lui	t4, 26
	lui	t5, 58
	li	t6, 3
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	add	s0, s10, a2
	add	s1, s0, a4
	sw	a5, 4(s0)
	sw	a5, 332(s1)
	add	s1, s0, a6
	sw	a5, 1708(s1)
	add	s1, s0, a7
	sw	a5, 2036(s1)
	add	s1, s0, t0
	sw	a5, -684(s1)
	add	s1, s0, t1
	sw	a5, -356(s1)
	add	s1, s0, t2
	sw	a5, 1020(s1)
	add	s1, s0, t3
	sw	a5, 1348(s1)
	add	s1, s0, t4
	sw	a5, -1372(s1)
	add	s0, s0, t5
	sw	a5, -1044(s0)
	add	s0, s11, a2
	addi	a2, a2, 4
	sw	t6, 4(s0)
	bne	a3, a2, .LBB0_5
.LBB0_6:
	lui	a2, 6
	addiw	a3, a2, 1704
	sd	a3, 352(sp)                     # 8-byte Folded Spill
	bltz	a1, .LBB0_9
# %bb.7:
	li	a3, 0
	slli	a4, a0, 2
	addi	s6, a4, 4
	addi	a4, a1, 1
	li	a5, 45
	slli	a5, a5, 35
	slli	a4, a4, 32
	mulhu	a4, a4, a5
	add	a5, s11, s6
	add	a6, s10, s6
	lui	a7, 58
	addiw	t0, a7, -1048
	add	t0, a6, t0
	lui	t1, 26
	addiw	t2, t1, -1376
	add	t2, a6, t2
	lui	t3, 51
	addiw	t4, t3, 1344
	add	t4, a6, t4
	lui	t5, 19
	addiw	t6, t5, 1016
	add	t6, a6, t6
	lui	s0, 45
	addiw	s1, s0, -360
	add	s1, a6, s1
	lui	s2, 13
	addiw	s3, s2, -688
	add	s3, a6, s3
	lui	s4, 38
	addiw	s5, s4, 2032
	add	s5, a6, s5
	ld	s7, 352(sp)                     # 8-byte Folded Reload
	add	s6, s6, s7
	add	s6, s10, s6
	lui	s7, 32
	addiw	s8, s7, 328
	add	s8, a6, s8
	li	s9, 3
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lui	s10, %hi(MV)
	addi	s10, s10, %lo(MV)
	add	s10, s10, a3
	sw	zero, 0(s10)
	add	s11, s10, s7
	sw	zero, 328(s11)
	add	s11, a6, a3
	sw	zero, 0(s11)
	add	s11, s8, a3
	sw	zero, 0(s11)
	add	s11, s10, a2
	sw	zero, 1704(s11)
	add	s11, s10, s4
	sw	zero, 2032(s11)
	add	s11, s6, a3
	sw	zero, 0(s11)
	add	s11, s5, a3
	sw	zero, 0(s11)
	add	s11, s10, s2
	sw	zero, -688(s11)
	add	s11, s10, s0
	sw	zero, -360(s11)
	add	s11, s3, a3
	sw	zero, 0(s11)
	add	s11, s1, a3
	sw	zero, 0(s11)
	add	s11, s10, t5
	sw	zero, 1016(s11)
	add	s11, s10, t3
	sw	zero, 1344(s11)
	add	s11, t6, a3
	sw	zero, 0(s11)
	add	s11, t4, a3
	sw	zero, 0(s11)
	add	s11, s10, t1
	sw	zero, -1376(s11)
	lui	s11, %hi(modemap)
	addi	s11, s11, %lo(modemap)
	add	s10, s10, a7
	sw	zero, -1048(s10)
	add	s10, t2, a3
	sw	zero, 0(s10)
	add	s10, t0, a3
	sw	zero, 0(s10)
	add	s10, s11, a3
	sw	s9, 0(s10)
	add	s10, a5, a3
	addi	a3, a3, 360
	sw	s9, 0(s10)
	lui	s10, %hi(MV)
	addi	s10, s10, %lo(MV)
	bne	a4, a3, .LBB0_8
.LBB0_9:
	sd	zero, 88(sp)                    # 8-byte Folded Spill
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	sd	zero, 160(sp)                   # 8-byte Folded Spill
	li	s9, 0
	li	a3, 0
	sd	zero, 144(sp)                   # 8-byte Folded Spill
	sd	zero, 192(sp)                   # 8-byte Folded Spill
	sd	zero, 248(sp)                   # 8-byte Folded Spill
	mulw	a0, a1, a0
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	lui	a0, 1
	addiw	a0, a0, -1880
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	lui	a0, 65536
	addi	a0, a0, -2
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	lui	s7, %hi(fault)
	sw	zero, %lo(fault)(s7)
	lui	a1, %hi(trace)
	lui	s2, %hi(syntax_arith_coding)
	lui	a0, 38
	addiw	a0, a0, 2032
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	lui	a0, 13
	addiw	a0, a0, -688
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lui	a0, 45
	addiw	a0, a0, -360
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lui	a0, 19
	addiw	a0, a0, 1016
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, 51
	addiw	a0, a0, 1344
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, 26
	addiw	a0, a0, -1376
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lui	a0, 58
	addiw	a0, a0, -1048
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 699051
	addi	a0, a0, -1365
	slli	a0, a0, 32
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	li	s3, 1
	lui	s1, %hi(blk_cnt)
	lui	s8, %hi(clp)
	lui	a0, %hi(bframe)
	addi	a0, a0, %lo(bframe)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_207 Depth 2
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_14 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_60 Depth 5
                                        #         Child Loop BB0_26 Depth 4
                                        #           Child Loop BB0_41 Depth 5
                                        #           Child Loop BB0_37 Depth 5
                                        #         Child Loop BB0_66 Depth 4
                                        #           Child Loop BB0_142 Depth 5
                                        #             Child Loop BB0_143 Depth 6
                                        #           Child Loop BB0_136 Depth 5
                                        #             Child Loop BB0_137 Depth 6
                                        #           Child Loop BB0_157 Depth 5
                                        #             Child Loop BB0_158 Depth 6
                                        #           Child Loop BB0_150 Depth 5
                                        #             Child Loop BB0_151 Depth 6
                                        #           Child Loop BB0_85 Depth 5
                                        #         Child Loop BB0_164 Depth 4
                                        #         Child Loop BB0_193 Depth 4
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	lui	s6, %hi(trace)
	lw	a0, %lo(trace)(a1)
	beqz	a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	mv	a2, s9
	call	printf
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, %lo(fault)(s7)
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	sd	a1, 240(sp)                     # 8-byte Folded Spill
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	beqz	a0, .LBB0_379
	j	.LBB0_206
.LBB0_379:                              #   in Loop: Header=BB0_10 Depth=1
	j	.LBB0_207
.LBB0_13:                               #   in Loop: Header=BB0_207 Depth=2
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	lui	s6, %hi(trace)
	lui	s2, %hi(syntax_arith_coding)
	li	s3, 1
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	beqz	a0, .LBB0_380
	j	.LBB0_206
.LBB0_380:                              #   in Loop: Header=BB0_207 Depth=2
	j	.LBB0_207
.LBB0_14:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_60 Depth 5
                                        #         Child Loop BB0_26 Depth 4
                                        #           Child Loop BB0_41 Depth 5
                                        #           Child Loop BB0_37 Depth 5
                                        #         Child Loop BB0_66 Depth 4
                                        #           Child Loop BB0_142 Depth 5
                                        #             Child Loop BB0_143 Depth 6
                                        #           Child Loop BB0_136 Depth 5
                                        #             Child Loop BB0_137 Depth 6
                                        #           Child Loop BB0_157 Depth 5
                                        #             Child Loop BB0_158 Depth 6
                                        #           Child Loop BB0_150 Depth 5
                                        #             Child Loop BB0_151 Depth 6
                                        #           Child Loop BB0_85 Depth 5
                                        #         Child Loop BB0_164 Depth 4
                                        #         Child Loop BB0_193 Depth 4
	mv	a1, a3
	sd	s5, 296(sp)                     # 8-byte Folded Spill
	bgtz	s6, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a0, %hi(coded_picture_width)
	lw	s0, %lo(coded_picture_width)(a0)
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	bgtz	s9, .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=3
	lw	a0, %lo(blk_cnt)(s1)
	j	.LBB0_161
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=3
	slli	s0, s6, 4
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	blez	s9, .LBB0_16
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=3
	sgtz	a0, s6
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 4
	addi	a0, a0, -1
	andi	a0, a0, -16
	addw	s5, a1, a0
	addiw	s0, s0, -16
	srai	a0, s5, 4
	addi	a0, a0, 1
	slli	a1, s0, 1
	srli	a1, a1, 60
	add	a1, s0, a1
	sraiw	a1, a1, 4
	addi	a1, a1, 1
	li	a2, 360
	mul	a0, a0, a2
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	add	a0, s4, a0
	slli	a1, a1, 2
	sd	a1, 256(sp)                     # 8-byte Folded Spill
	add	a0, a0, a1
	lui	a1, %hi(pb_frame)
	lw	a1, %lo(pb_frame)(a1)
	lw	a0, 0(a0)
	sd	a0, 320(sp)                     # 8-byte Folded Spill
	lw	ra, 232(sp)                     # 8-byte Folded Reload
	lw	a4, 224(sp)                     # 8-byte Folded Reload
	mv	s11, ra
	sd	a4, 312(sp)                     # 8-byte Folded Spill
	beqz	a1, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=3
	mv	a0, s0
	mv	a1, s5
	li	a2, 0
	mv	a3, ra
	call	reconstruct
	mv	ra, s11
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=3
	li	a0, 2
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	bltu	a0, a1, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=3
	li	a2, 1
	mv	a0, s0
	mv	a1, s5
	li	a3, 0
	li	a4, 0
	call	reconstruct
	mv	ra, s11
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=3
	lw	a0, %lo(blk_cnt)(s1)
	bgtz	a0, .LBB0_23
	j	.LBB0_187
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=3
	lui	s4, %hi(blk_cnt)
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	addiw	a1, a1, -3
	srai	s10, s0, 1
	srai	a2, s5, 1
	sd	a2, 344(sp)                     # 8-byte Folded Spill
	li	s1, 0
	li	a2, 2
	bgeu	a1, a2, .LBB0_42
# %bb.24:                               # %.preheader12
                                        #   in Loop: Header=BB0_14 Depth=3
	li	s3, 5
	j	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=4
	lw	a0, %lo(blk_cnt)(s4)
	addi	s1, s1, 1
	bge	s1, a0, .LBB0_62
.LBB0_26:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_41 Depth 5
                                        #           Child Loop BB0_37 Depth 5
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	lui	a1, %hi(refidct)
	lw	a1, %lo(refidct)(a1)
	slli	s2, s1, 7
	add	a0, a0, s2
	addi	a0, a0, 2047
	addi	a0, a0, 41
	beqz	a1, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=4
	call	idctref
	j	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_26 Depth=4
	call	idct
.LBB0_29:                               #   in Loop: Header=BB0_26 Depth=4
	lui	a0, %hi(ld)
	ld	a2, %lo(ld)(a0)
	addi	a4, s1, -6
	mv	a1, s1
	li	a0, 6
	bltu	s1, a0, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_26 Depth=4
	mv	a1, a4
.LBB0_31:                               #   in Loop: Header=BB0_26 Depth=4
	ld	a3, 304(sp)                     # 8-byte Folded Reload
	add	a3, s2, a3
	sext.w	a0, s1
	slli	a0, a0, 7
	add	a0, a2, a0
	addi	a0, a0, 2047
	addi	a0, a0, 41
	sext.w	a6, a1
	andi	a5, a1, 1
	li	a1, 3
	mv	ra, s11
	blt	a1, a6, .LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_26 Depth=4
	lui	a1, %hi(coded_picture_width)
	lw	a1, %lo(coded_picture_width)(a1)
	slli	a5, a5, 3
	bltu	s3, s1, .LBB0_38
# %bb.33:                               #   in Loop: Header=BB0_26 Depth=4
	lui	a4, %hi(newframe)
	ld	a4, %lo(newframe)(a4)
	slli	a6, s1, 2
	andi	a6, a6, 8
	or	a6, a6, s5
	mulw	a6, a1, a6
	add	a4, a4, a6
	add	a5, s0, a5
	add	a4, a4, a5
	j	.LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_26 Depth=4
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	addi	a5, a5, 1
	ld	a4, 344(sp)                     # 8-byte Folded Reload
	mulw	a4, a1, a4
	slli	a5, a5, 3
	bltu	s3, s1, .LBB0_39
# %bb.35:                               #   in Loop: Header=BB0_26 Depth=4
	lui	a6, %hi(newframe)
	addi	a6, a6, %lo(newframe)
	add	a5, a6, a5
	ld	a5, 0(a5)
	add	a4, a4, s10
	add	a4, a5, a4
.LBB0_36:                               #   in Loop: Header=BB0_26 Depth=4
	addi	a4, a4, 3
	add	a2, a2, a3
.LBB0_37:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_26 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a3, %lo(clp)(s8)
	lh	a5, 0(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, -3(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 2(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, -2(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 4(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, -1(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 6(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 0(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 8(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 1(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 10(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 2(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 12(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 3(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 14(a0)
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 4(a4)
	addi	a0, a0, 16
	add	a4, a4, a1
	bne	a0, a2, .LBB0_37
	j	.LBB0_25
.LBB0_38:                               #   in Loop: Header=BB0_26 Depth=4
	lui	a6, %hi(bframe)
	ld	a6, %lo(bframe)(a6)
	slli	a4, a4, 2
	andi	a4, a4, 8
	or	a4, a4, s5
	mulw	a4, a1, a4
	add	a4, a6, a4
	add	a5, s0, a5
	add	a4, a4, a5
	j	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_26 Depth=4
	lui	a6, %hi(bframe)
	addi	a6, a6, %lo(bframe)
	add	a5, a6, a5
	ld	a5, 0(a5)
	add	a4, a4, s10
	add	a4, a5, a4
.LBB0_40:                               #   in Loop: Header=BB0_26 Depth=4
	addi	a4, a4, 3
	add	a2, a2, a3
.LBB0_41:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_26 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a3, %lo(clp)(s8)
	lh	a5, 0(a0)
	lbu	a6, -3(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, -3(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 2(a0)
	lbu	a6, -2(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, -2(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 4(a0)
	lbu	a6, -1(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, -1(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 6(a0)
	lbu	a6, 0(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, 0(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 8(a0)
	lbu	a6, 1(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, 1(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 10(a0)
	lbu	a6, 2(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, 2(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 12(a0)
	lbu	a6, 3(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, 3(a4)
	ld	a3, %lo(clp)(s8)
	lh	a5, 14(a0)
	lbu	a6, 4(a4)
	add	a3, a3, a5
	add	a3, a3, a6
	lbu	a3, 0(a3)
	sb	a3, 4(a4)
	addi	a0, a0, 16
	add	a4, a4, a1
	bne	a0, a2, .LBB0_41
	j	.LBB0_25
.LBB0_42:                               # %.preheader14
                                        #   in Loop: Header=BB0_14 Depth=3
	li	s2, 0
	li	s7, 5
	ld	s9, 144(sp)                     # 8-byte Folded Reload
	j	.LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_44 Depth=4
	addi	s1, s1, 1
	addi	s2, s2, 1
	bge	s1, a0, .LBB0_62
.LBB0_44:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_60 Depth 5
	not	a1, s1
	add	a1, a0, a1
	srlw	a1, s9, a1
	andi	a1, a1, 1
	beqz	a1, .LBB0_43
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	lui	a1, %hi(refidct)
	lw	a1, %lo(refidct)(a1)
	slli	s3, s1, 7
	add	a0, a0, s3
	addi	a0, a0, 2047
	addi	a0, a0, 41
	beqz	a1, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_44 Depth=4
	call	idctref
	j	.LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_44 Depth=4
	call	idct
.LBB0_48:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a0, %hi(ld)
	ld	a1, %lo(ld)(a0)
	mv	a2, s1
	li	a0, 6
	bltu	s1, a0, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_44 Depth=4
	addi	a2, s2, -6
.LBB0_50:                               #   in Loop: Header=BB0_44 Depth=4
	sext.w	a0, a2
	andi	a2, a2, 1
	li	a3, 3
	mv	ra, s11
	blt	a3, a0, .LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a0, %hi(coded_picture_width)
	lw	a0, %lo(coded_picture_width)(a0)
	slli	a2, a2, 3
	slli	a3, s1, 2
	andi	a3, a3, 8
	or	a3, a3, s5
	bltu	s7, s1, .LBB0_55
# %bb.52:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a4, %hi(newframe)
	ld	a4, %lo(newframe)(a4)
	j	.LBB0_56
.LBB0_53:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a0, %hi(chrom_width)
	lw	a0, %lo(chrom_width)(a0)
	addi	a3, a2, 1
	ld	a2, 344(sp)                     # 8-byte Folded Reload
	mulw	a2, a0, a2
	slli	a3, a3, 3
	bltu	s7, s1, .LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a4, %hi(newframe)
	addi	a4, a4, %lo(newframe)
	j	.LBB0_58
.LBB0_55:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a4, %hi(bframe)
	ld	a4, %lo(bframe)(a4)
	xori	a3, a3, 8
.LBB0_56:                               #   in Loop: Header=BB0_44 Depth=4
	mulw	a3, a0, a3
	add	a3, a4, a3
	add	a2, s0, a2
	j	.LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_44 Depth=4
	lui	a4, %hi(bframe)
	addi	a4, a4, %lo(bframe)
.LBB0_58:                               #   in Loop: Header=BB0_44 Depth=4
	add	a3, a4, a3
	ld	a3, 0(a3)
	add	a2, a2, s10
.LBB0_59:                               #   in Loop: Header=BB0_44 Depth=4
	add	a3, a3, a2
	ld	a4, 304(sp)                     # 8-byte Folded Reload
	add	a4, s3, a4
	add	s3, a1, s3
	addi	a2, s3, 2047
	addi	a2, a2, 41
	addi	a3, a3, 3
	add	a1, a1, a4
.LBB0_60:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_44 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a4, %lo(clp)(s8)
	lh	a5, 0(a2)
	lbu	a6, -3(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -3(a3)
	ld	a4, %lo(clp)(s8)
	lh	a5, 2(a2)
	lbu	a6, -2(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -2(a3)
	ld	a4, %lo(clp)(s8)
	lh	a5, 4(a2)
	lbu	a6, -1(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -1(a3)
	ld	a4, %lo(clp)(s8)
	lh	a5, 6(a2)
	lbu	a6, 0(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 0(a3)
	ld	a4, %lo(clp)(s8)
	lh	a5, 8(a2)
	lbu	a6, 1(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 1(a3)
	ld	a4, %lo(clp)(s8)
	lh	a5, 10(a2)
	lbu	a6, 2(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 2(a3)
	ld	a4, %lo(clp)(s8)
	lh	a5, 12(a2)
	lbu	a6, 3(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 3(a3)
	ld	a4, %lo(clp)(s8)
	lh	a5, 14(a2)
	lbu	a6, 4(a3)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 4(a3)
	addi	a2, a2, 16
	add	a3, a3, a0
	bne	a2, a1, .LBB0_60
# %bb.61:                               #   in Loop: Header=BB0_44 Depth=4
	lw	a0, %lo(blk_cnt)(s4)
	j	.LBB0_43
.LBB0_62:                               #   in Loop: Header=BB0_14 Depth=3
	blez	a0, .LBB0_160
# %bb.63:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a1, %hi(pb_frame)
	lw	a1, %lo(pb_frame)(a1)
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	lui	s1, %hi(blk_cnt)
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	beqz	a1, .LBB0_161
# %bb.64:                               #   in Loop: Header=BB0_14 Depth=3
	li	s9, 0
	lui	a0, %hi(MV)
	addi	a0, a0, %lo(MV)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	lui	a0, 32
	addiw	a0, a0, 328
	add	a0, a1, a0
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	ld	a0, 352(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	add	a0, a1, a0
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	li	a1, 6
	li	s2, 6
	j	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=4
	addi	a1, s7, 1
	addi	s2, s2, 1
	addiw	a2, a0, 5
	addi	s9, s9, 1
	bge	s7, a2, .LBB0_161
.LBB0_66:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_142 Depth 5
                                        #             Child Loop BB0_143 Depth 6
                                        #           Child Loop BB0_136 Depth 5
                                        #             Child Loop BB0_137 Depth 6
                                        #           Child Loop BB0_157 Depth 5
                                        #             Child Loop BB0_158 Depth 6
                                        #           Child Loop BB0_150 Depth 5
                                        #             Child Loop BB0_151 Depth 6
                                        #           Child Loop BB0_85 Depth 5
	mv	s7, a1
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_71
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a0, %hi(adv_pred_mode)
	lw	a0, %lo(adv_pred_mode)(a0)
	bnez	a0, .LBB0_71
.LBB0_68:                               #   in Loop: Header=BB0_66 Depth=4
	lw	a0, %lo(blk_cnt)(s1)
	slli	a1, s7, 32
	mulhu	a1, a1, s3
	srli	a1, a1, 34
	li	a2, 6
	mul	a1, a1, a2
	subw	a1, s7, a1
	not	a1, a1
	add	a1, a0, a1
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	srlw	a1, a2, a1
	andi	a1, a1, 1
	beqz	a1, .LBB0_65
# %bb.69:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	lui	a1, %hi(refidct)
	lw	a1, %lo(refidct)(a1)
	slli	s1, s7, 7
	add	a0, a0, s1
	addi	a0, a0, 2047
	addi	a0, a0, 41
	beqz	a1, .LBB0_80
# %bb.70:                               #   in Loop: Header=BB0_66 Depth=4
	call	idctref
	j	.LBB0_81
.LBB0_71:                               #   in Loop: Header=BB0_66 Depth=4
	addi	a5, s7, -6
	slli	a1, a5, 2
	li	a0, 2
	ld	a2, 320(sp)                     # 8-byte Folded Reload
	bne	a2, a0, .LBB0_76
# %bb.72:                               #   in Loop: Header=BB0_66 Depth=4
	li	a0, 10
	ld	t5, 312(sp)                     # 8-byte Folded Reload
	bgeu	s7, a0, .LBB0_87
# %bb.73:                               #   in Loop: Header=BB0_66 Depth=4
	addi	a0, s7, -5
	ld	a2, 352(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a2
	lui	a2, %hi(MV)
	addi	a2, a2, %lo(MV)
	add	a0, a2, a0
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
	lw	a4, 0(a3)
	lui	a0, %hi(trb)
	lw	a0, %lo(trb)(a0)
	lui	a2, %hi(trd)
	beqz	ra, .LBB0_99
# %bb.74:                               #   in Loop: Header=BB0_66 Depth=4
	lw	a2, %lo(trd)(a2)
	mul	a5, a0, a4
	divw	a5, a5, a2
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	subw	a4, a6, a4
	addw	a6, a4, a5
	lui	a4, 32
	add	a3, a3, a4
	lw	a3, 328(a3)
	beqz	t5, .LBB0_100
.LBB0_75:                               #   in Loop: Header=BB0_66 Depth=4
	mul	a0, a0, a3
	divw	a0, a0, a2
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	addw	a7, a2, a0
	j	.LBB0_103
.LBB0_76:                               #   in Loop: Header=BB0_66 Depth=4
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	lw	a3, 0(a0)
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	lui	a2, %hi(trb)
	lw	a2, %lo(trb)(a2)
	li	a4, 9
	ld	t0, 312(sp)                     # 8-byte Folded Reload
	bltu	a4, s7, .LBB0_96
# %bb.77:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a4, %hi(trd)
	beqz	ra, .LBB0_101
# %bb.78:                               #   in Loop: Header=BB0_66 Depth=4
	lw	a4, %lo(trd)(a4)
	mul	a5, a2, a3
	divw	a5, a5, a4
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	subw	a3, a6, a3
	addw	a6, a3, a5
	beqz	t0, .LBB0_102
.LBB0_79:                               #   in Loop: Header=BB0_66 Depth=4
	mul	a2, a2, a0
	divw	a2, a2, a4
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a0, a3, a0
	addw	a7, a0, a2
	j	.LBB0_103
.LBB0_80:                               #   in Loop: Header=BB0_66 Depth=4
	call	idct
.LBB0_81:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a0, %hi(ld)
	ld	a3, %lo(ld)(a0)
	addiw	a0, s2, -6
	andi	a1, s2, 1
	slli	a1, a1, 3
	li	a2, 3
	bltu	a2, a0, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a0, %hi(coded_picture_width)
	lw	a0, %lo(coded_picture_width)(a0)
	lui	a2, %hi(bframe)
	ld	a2, %lo(bframe)(a2)
	slli	a4, s7, 2
	andi	a4, a4, 8
	or	a4, a4, s5
	xori	a4, a4, 8
	mulw	a4, a0, a4
	add	a2, a2, a4
	add	a1, s0, a1
	j	.LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a0, %hi(chrom_width)
	lw	a0, %lo(chrom_width)(a0)
	lui	a2, %hi(bframe)
	addi	a2, a2, %lo(bframe)
	add	a1, a1, a2
	ld	a2, 8(a1)
	ld	a1, 344(sp)                     # 8-byte Folded Reload
	mulw	a1, a0, a1
	add	a1, a1, s10
.LBB0_84:                               #   in Loop: Header=BB0_66 Depth=4
	add	a2, a2, a1
	mv	ra, s11
	slli	a1, s9, 7
	ld	a4, 304(sp)                     # 8-byte Folded Reload
	add	a1, a4, a1
	addi	a4, a1, 768
	add	s1, a3, s1
	addi	a1, s1, 2047
	addi	a1, a1, 41
	addi	a2, a2, 3
	add	a3, a3, a4
.LBB0_85:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a4, %lo(clp)(s8)
	lh	a5, 0(a1)
	lbu	a6, -3(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -3(a2)
	ld	a4, %lo(clp)(s8)
	lh	a5, 2(a1)
	lbu	a6, -2(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -2(a2)
	ld	a4, %lo(clp)(s8)
	lh	a5, 4(a1)
	lbu	a6, -1(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -1(a2)
	ld	a4, %lo(clp)(s8)
	lh	a5, 6(a1)
	lbu	a6, 0(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 0(a2)
	ld	a4, %lo(clp)(s8)
	lh	a5, 8(a1)
	lbu	a6, 1(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 1(a2)
	ld	a4, %lo(clp)(s8)
	lh	a5, 10(a1)
	lbu	a6, 2(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 2(a2)
	ld	a4, %lo(clp)(s8)
	lh	a5, 12(a1)
	lbu	a6, 3(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 3(a2)
	ld	a4, %lo(clp)(s8)
	lh	a5, 14(a1)
	lbu	a6, 4(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 4(a2)
	addi	a1, a1, 16
	add	a2, a2, a0
	bne	a1, a3, .LBB0_85
# %bb.86:                               #   in Loop: Header=BB0_66 Depth=4
	lui	s1, %hi(blk_cnt)
	lw	a0, %lo(blk_cnt)(s1)
	j	.LBB0_65
.LBB0_87:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a0, %hi(trb)
	lw	a3, %lo(trb)(a0)
	lui	a0, %hi(trd)
	lw	a2, %lo(trd)(a0)
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	subw	a6, a3, a2
	beqz	ra, .LBB0_109
# %bb.88:                               #   in Loop: Header=BB0_66 Depth=4
	mul	a4, a0, a3
	divw	a4, a4, a2
	ld	a7, 232(sp)                     # 8-byte Folded Reload
	subw	a0, a7, a0
	add	a4, a0, a4
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	beqz	t5, .LBB0_110
.LBB0_89:                               #   in Loop: Header=BB0_66 Depth=4
	mul	a7, a0, a3
	divw	a7, a7, a2
	ld	t0, 224(sp)                     # 8-byte Folded Reload
	subw	a0, t0, a0
	add	a0, a0, a7
	ld	a7, 136(sp)                     # 8-byte Folded Reload
	lw	a7, 0(a7)
	beqz	ra, .LBB0_111
.LBB0_90:                               #   in Loop: Header=BB0_66 Depth=4
	mul	t0, a7, a3
	divw	t0, t0, a2
	ld	t1, 232(sp)                     # 8-byte Folded Reload
	subw	a7, t1, a7
	add	t0, a7, t0
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	lw	a7, 0(a7)
	beqz	t5, .LBB0_112
.LBB0_91:                               #   in Loop: Header=BB0_66 Depth=4
	mul	t1, a7, a3
	divw	t1, t1, a2
	ld	t2, 224(sp)                     # 8-byte Folded Reload
	subw	a7, t2, a7
	add	a7, a7, t1
	ld	t1, 120(sp)                     # 8-byte Folded Reload
	lw	t1, 0(t1)
	beqz	ra, .LBB0_113
.LBB0_92:                               #   in Loop: Header=BB0_66 Depth=4
	mul	t2, t1, a3
	divw	t2, t2, a2
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	subw	t1, t3, t1
	add	t2, t1, t2
	ld	t1, 112(sp)                     # 8-byte Folded Reload
	lw	t1, 0(t1)
	beqz	t5, .LBB0_114
.LBB0_93:                               #   in Loop: Header=BB0_66 Depth=4
	mul	t3, t1, a3
	divw	t3, t3, a2
	ld	t4, 224(sp)                     # 8-byte Folded Reload
	subw	t1, t4, t1
	add	t1, t1, t3
	ld	t3, 104(sp)                     # 8-byte Folded Reload
	lw	t3, 0(t3)
	beqz	ra, .LBB0_115
.LBB0_94:                               #   in Loop: Header=BB0_66 Depth=4
	mul	t4, t3, a3
	divw	t4, t4, a2
	ld	t5, 232(sp)                     # 8-byte Folded Reload
	subw	t3, t5, t3
	ld	t5, 312(sp)                     # 8-byte Folded Reload
	add	t3, t3, t4
	ld	t4, 96(sp)                      # 8-byte Folded Reload
	lw	t4, 0(t4)
	beqz	t5, .LBB0_116
.LBB0_95:                               #   in Loop: Header=BB0_66 Depth=4
	mul	a3, t4, a3
	divw	a2, a3, a2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a3, a3, t4
	add	a2, a3, a2
	j	.LBB0_117
.LBB0_96:                               #   in Loop: Header=BB0_66 Depth=4
	lui	a4, %hi(trd)
	beqz	ra, .LBB0_120
# %bb.97:                               #   in Loop: Header=BB0_66 Depth=4
	lw	a4, %lo(trd)(a4)
	mul	a6, a2, a3
	divw	a6, a6, a4
	ld	a7, 232(sp)                     # 8-byte Folded Reload
	subw	a3, a7, a3
	addw	a3, a3, a6
	beqz	t0, .LBB0_121
.LBB0_98:                               #   in Loop: Header=BB0_66 Depth=4
	mul	a2, a2, a0
	divw	a2, a2, a4
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	subw	a0, a4, a0
	addw	a0, a0, a2
	j	.LBB0_122
.LBB0_99:                               #   in Loop: Header=BB0_66 Depth=4
	lw	a2, %lo(trd)(a2)
	subw	a5, a0, a2
	mul	a4, a5, a4
	divw	a6, a4, a2
	lui	a4, 32
	add	a3, a3, a4
	lw	a3, 328(a3)
	bnez	t5, .LBB0_75
.LBB0_100:                              #   in Loop: Header=BB0_66 Depth=4
	subw	a0, a0, a2
	mul	a0, a0, a3
	divw	a7, a0, a2
	j	.LBB0_103
.LBB0_101:                              #   in Loop: Header=BB0_66 Depth=4
	lw	a4, %lo(trd)(a4)
	subw	a5, a2, a4
	mul	a3, a5, a3
	divw	a6, a3, a4
	bnez	t0, .LBB0_79
.LBB0_102:                              #   in Loop: Header=BB0_66 Depth=4
	subw	a2, a2, a4
	mul	a0, a2, a0
	divw	a7, a0, a4
.LBB0_103:                              #   in Loop: Header=BB0_66 Depth=4
	slli	a5, s7, 3
	andi	a5, a5, 8
	addi	a0, a6, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	xori	a4, a5, 15
	subw	a4, a4, a0
	li	a0, 8
	blt	a4, a0, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_66 Depth=4
	li	a4, 8
	j	.LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_66 Depth=4
	addiw	a4, a4, 1
.LBB0_106:                              #   in Loop: Header=BB0_66 Depth=4
	andi	a1, a1, 8
	addi	a2, a7, 1
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	xori	a3, a1, 15
	subw	a2, a3, a2
	bge	a2, a0, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_66 Depth=4
	addiw	a0, a2, 1
.LBB0_108:                              #   in Loop: Header=BB0_66 Depth=4
	li	t0, 1
	subw	a2, t0, a6
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	sub	a2, a2, a5
	sgtz	a3, a2
	neg	a3, a3
	and	t2, a3, a2
	subw	a2, t0, a7
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	sub	a2, a2, a1
	sgtz	a3, a2
	neg	t0, a3
	lui	a3, %hi(coded_picture_width)
	lw	a3, %lo(coded_picture_width)(a3)
	lui	t1, %hi(bframe)
	ld	t1, %lo(bframe)(t1)
	and	a2, t0, a2
	or	a1, a1, s5
	mulw	t0, a3, a1
	add	a1, t1, t0
	add	t1, s0, a5
	add	a1, a1, t1
	lui	t3, %hi(newframe)
	addi	t3, t3, %lo(newframe)
	mv	t1, s0
	j	.LBB0_130
.LBB0_109:                              #   in Loop: Header=BB0_66 Depth=4
	mul	a0, a6, a0
	divw	a4, a0, a2
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	bnez	t5, .LBB0_89
.LBB0_110:                              #   in Loop: Header=BB0_66 Depth=4
	mul	a0, a0, a6
	divw	a0, a0, a2
	ld	a7, 136(sp)                     # 8-byte Folded Reload
	lw	a7, 0(a7)
	bnez	ra, .LBB0_90
.LBB0_111:                              #   in Loop: Header=BB0_66 Depth=4
	mul	a7, a7, a6
	divw	t0, a7, a2
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	lw	a7, 0(a7)
	bnez	t5, .LBB0_91
.LBB0_112:                              #   in Loop: Header=BB0_66 Depth=4
	mul	a7, a7, a6
	divw	a7, a7, a2
	ld	t1, 120(sp)                     # 8-byte Folded Reload
	lw	t1, 0(t1)
	bnez	ra, .LBB0_92
.LBB0_113:                              #   in Loop: Header=BB0_66 Depth=4
	mul	t1, t1, a6
	divw	t2, t1, a2
	ld	t1, 112(sp)                     # 8-byte Folded Reload
	lw	t1, 0(t1)
	bnez	t5, .LBB0_93
.LBB0_114:                              #   in Loop: Header=BB0_66 Depth=4
	mul	t1, t1, a6
	divw	t1, t1, a2
	ld	t3, 104(sp)                     # 8-byte Folded Reload
	lw	t3, 0(t3)
	bnez	ra, .LBB0_94
.LBB0_115:                              #   in Loop: Header=BB0_66 Depth=4
	mul	t3, t3, a6
	divw	t3, t3, a2
	ld	t4, 96(sp)                      # 8-byte Folded Reload
	lw	t4, 0(t4)
	bnez	t5, .LBB0_95
.LBB0_116:                              #   in Loop: Header=BB0_66 Depth=4
	mul	a3, t4, a6
	divw	a2, a3, a2
.LBB0_117:                              #   in Loop: Header=BB0_66 Depth=4
	add	a4, t0, a4
	add	t2, t2, t3
	addw	a3, a4, t2
	sraiw	a4, a3, 31
	xor	a6, a3, a4
	sub	a4, a6, a4
	andi	a6, a4, 15
	slli	a6, a6, 2
	lui	t0, %hi(roundtab)
	addi	t0, t0, %lo(roundtab)
	add	a6, t0, a6
	lw	a6, 0(a6)
	srli	a4, a4, 3
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	and	a4, a4, t0
	addw	a6, a6, a4
	bgez	a3, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_66 Depth=4
	negw	a6, a6
.LBB0_119:                              #   in Loop: Header=BB0_66 Depth=4
	add	a0, a7, a0
	add	a2, t1, a2
	addw	a0, a0, a2
	sraiw	a2, a0, 31
	xor	a3, a0, a2
	sub	a2, a3, a2
	andi	a3, a2, 15
	slli	a3, a3, 2
	lui	a4, %hi(roundtab)
	addi	a4, a4, %lo(roundtab)
	add	a3, a4, a3
	lw	a3, 0(a3)
	srli	a2, a2, 3
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	and	a2, a2, a4
	addw	a7, a3, a2
	bltz	a0, .LBB0_125
	j	.LBB0_126
.LBB0_120:                              #   in Loop: Header=BB0_66 Depth=4
	lw	a4, %lo(trd)(a4)
	subw	a6, a2, a4
	mul	a3, a6, a3
	divw	a3, a3, a4
	bnez	t0, .LBB0_98
.LBB0_121:                              #   in Loop: Header=BB0_66 Depth=4
	subw	a2, a2, a4
	mul	a0, a2, a0
	divw	a0, a0, a4
.LBB0_122:                              #   in Loop: Header=BB0_66 Depth=4
	slliw	a2, a3, 2
	sraiw	a4, a2, 31
	xor	a2, a2, a4
	sub	a2, a2, a4
	andi	a4, a2, 12
	slli	a4, a4, 2
	lui	a6, %hi(roundtab)
	addi	a6, a6, %lo(roundtab)
	add	a4, a6, a4
	lw	a4, 0(a4)
	srli	a2, a2, 3
	ld	a6, 200(sp)                     # 8-byte Folded Reload
	and	a2, a2, a6
	addw	a6, a4, a2
	bgez	a3, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_66 Depth=4
	negw	a6, a6
.LBB0_124:                              #   in Loop: Header=BB0_66 Depth=4
	slliw	a2, a0, 2
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	sub	a3, a2, a3
	andi	a2, a3, 12
	slli	a2, a2, 2
	lui	a4, %hi(roundtab)
	addi	a4, a4, %lo(roundtab)
	add	a2, a4, a2
	lw	a2, 0(a2)
	srli	a3, a3, 3
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	and	a3, a3, a4
	addw	a7, a3, a2
	bgez	a0, .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_66 Depth=4
	negw	a7, a7
.LBB0_126:                              #   in Loop: Header=BB0_66 Depth=4
	li	a0, 8
	li	a4, 8
	li	a2, -2
	bge	a6, a2, .LBB0_153
# %bb.127:                              #   in Loop: Header=BB0_66 Depth=4
	li	a2, -2
	blt	a7, a2, .LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_66 Depth=4
	addi	a0, a7, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	li	a2, 8
	sub	a0, a2, a0
.LBB0_129:                              #   in Loop: Header=BB0_66 Depth=4
	andi	a2, s7, 1
	addi	a3, a2, 1
	li	t3, 1
	subw	a2, t3, a6
	slti	t0, a2, -1
	srliw	t1, a2, 31
	add	a2, a2, t1
	sraiw	a2, a2, 1
	addi	t0, t0, -1
	and	t2, t0, a2
	subw	a2, t3, a7
	slti	t0, a2, -1
	srliw	t1, a2, 31
	add	a2, a2, t1
	sraiw	a2, a2, 1
	addi	t0, t0, -1
	and	a2, t0, a2
	slli	t3, a3, 3
	lui	t0, %hi(bframe)
	addi	t0, t0, %lo(bframe)
	add	t0, t0, t3
	lui	a3, %hi(chrom_width)
	lw	a3, %lo(chrom_width)(a3)
	ld	t1, 0(t0)
	andi	a1, a1, 8
	ld	t0, 344(sp)                     # 8-byte Folded Reload
	add	a1, a1, t0
	mulw	t0, a3, a1
	add	a1, t0, s10
	andi	a5, a5, 8
	add	a1, a1, a5
	add	a1, t1, a1
	lui	t1, %hi(newframe)
	addi	t1, t1, %lo(newframe)
	add	t3, t1, t3
	mv	t1, s10
.LBB0_130:                              #   in Loop: Header=BB0_66 Depth=4
	ld	t3, 0(t3)
	srli	t6, a6, 1
	andi	t5, a6, 1
	srli	a6, a7, 1
	andi	t4, a7, 1
	add	a6, a2, a6
	mul	a6, a3, a6
	addw	a6, a6, t6
	or	t6, t5, t4
	mulw	a7, a3, a2
	beqz	t6, .LBB0_139
# %bb.131:                              #   in Loop: Header=BB0_66 Depth=4
	beqz	t5, .LBB0_145
# %bb.132:                              #   in Loop: Header=BB0_66 Depth=4
	bnez	t4, .LBB0_145
# %bb.133:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	t4, a2
	bge	t4, a0, .LBB0_68
# %bb.134:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	t5, t2
	bge	t5, a4, .LBB0_68
# %bb.135:                              #   in Loop: Header=BB0_66 Depth=4
	li	t2, 0
	add	t4, t5, a7
	add	t4, a1, t4
	add	t0, t0, t1
	add	a5, t0, a5
	add	a5, a5, t5
	add	a5, t3, a5
	add	a5, a5, a6
	addi	a5, a5, 1
	add	a4, a4, a7
.LBB0_136:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_137 Depth 6
	mul	a6, a3, t2
	add	a6, a4, a6
	add	a6, a1, a6
	mv	a7, a5
	mv	t0, t4
.LBB0_137:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        #           Parent Loop BB0_136 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	lbu	t1, -1(a7)
	lbu	t3, 0(a7)
	lbu	t5, 0(t0)
	add	t1, t1, t3
	addi	t1, t1, 1
	srli	t1, t1, 1
	add	t1, t1, t5
	srli	t1, t1, 1
	sb	t1, 0(t0)
	addi	t0, t0, 1
	addi	a7, a7, 1
	bne	t0, a6, .LBB0_137
# %bb.138:                              #   in Loop: Header=BB0_136 Depth=5
	addiw	a2, a2, 1
	add	t4, t4, a3
	add	a5, a5, a3
	addi	t2, t2, 1
	bne	a2, a0, .LBB0_136
	j	.LBB0_68
.LBB0_139:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	t4, a2
	bge	t4, a0, .LBB0_68
# %bb.140:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	t5, t2
	bge	t5, a4, .LBB0_68
# %bb.141:                              #   in Loop: Header=BB0_66 Depth=4
	li	t2, 0
	add	t4, t5, a7
	add	t4, a1, t4
	add	t0, t0, t1
	add	a5, t0, a5
	add	a5, a5, t5
	add	a5, t3, a5
	add	a6, a5, a6
	add	a4, a4, a7
.LBB0_142:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_143 Depth 6
	mul	a5, a3, t2
	add	a5, a4, a5
	add	a5, a1, a5
	mv	a7, a6
	mv	t0, t4
.LBB0_143:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        #           Parent Loop BB0_142 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	lbu	t1, 0(a7)
	lbu	t3, 0(t0)
	add	t1, t3, t1
	srli	t1, t1, 1
	sb	t1, 0(t0)
	addi	t0, t0, 1
	addi	a7, a7, 1
	bne	t0, a5, .LBB0_143
# %bb.144:                              #   in Loop: Header=BB0_142 Depth=5
	addiw	a2, a2, 1
	add	t4, t4, a3
	add	a6, a6, a3
	addi	t2, t2, 1
	bne	a2, a0, .LBB0_142
	j	.LBB0_68
.LBB0_145:                              #   in Loop: Header=BB0_66 Depth=4
	add	a1, a1, a7
	bnez	t5, .LBB0_154
# %bb.146:                              #   in Loop: Header=BB0_66 Depth=4
	beqz	t4, .LBB0_154
# %bb.147:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	a7, a2
	bge	a7, a0, .LBB0_68
# %bb.148:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	t2, t2
	bge	t2, a4, .LBB0_68
# %bb.149:                              #   in Loop: Header=BB0_66 Depth=4
	add	a7, t3, t0
	add	t4, t1, a5
	add	a7, a7, t4
	add	a7, a7, a6
	add	t0, t0, t1
	add	a5, a5, a3
	add	a5, t0, a5
	add	a5, t3, a5
	add	a6, a5, a6
.LBB0_150:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_151 Depth 6
	mv	a5, a7
	mv	t0, a6
	mv	t1, a1
	mv	t3, a4
.LBB0_151:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        #           Parent Loop BB0_150 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	add	t4, a5, t2
	lbu	t4, 0(t4)
	add	t5, t0, t2
	lbu	t5, 0(t5)
	add	t6, t1, t2
	lbu	s1, 0(t6)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, s1
	srli	t4, t4, 1
	sb	t4, 0(t6)
	addi	t3, t3, -1
	addi	t1, t1, 1
	addi	t0, t0, 1
	addi	a5, a5, 1
	bne	t2, t3, .LBB0_151
# %bb.152:                              #   in Loop: Header=BB0_150 Depth=5
	add	a1, a1, a3
	add	a7, a7, a3
	addiw	a2, a2, 1
	add	a6, a6, a3
	lui	s1, %hi(blk_cnt)
	bne	a2, a0, .LBB0_150
	j	.LBB0_68
.LBB0_153:                              #   in Loop: Header=BB0_66 Depth=4
	addi	a2, a6, 1
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	li	a4, 8
	sub	a4, a4, a2
	li	a2, -2
	bge	a7, a2, .LBB0_128
	j	.LBB0_129
.LBB0_154:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	a7, a2
	bge	a7, a0, .LBB0_68
# %bb.155:                              #   in Loop: Header=BB0_66 Depth=4
	sext.w	t2, t2
	bge	t2, a4, .LBB0_68
# %bb.156:                              #   in Loop: Header=BB0_66 Depth=4
	add	t0, t0, t1
	add	a5, t0, a5
	add	a6, a5, a6
	add	a5, t3, a6
	addi	a5, a5, 1
	add	t3, t3, a3
	add	a6, t3, a6
.LBB0_157:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_158 Depth 6
	mv	a7, a4
	mv	t0, a6
	mv	t1, a5
	mv	t3, a1
.LBB0_158:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_66 Depth=4
                                        #           Parent Loop BB0_157 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	add	t4, t1, t2
	lbu	t5, -1(t4)
	lbu	t4, 0(t4)
	add	t6, t0, t2
	lbu	s1, 0(t6)
	lbu	t6, 1(t6)
	add	t4, t5, t4
	add	t6, s1, t6
	add	t5, t3, t2
	lbu	s1, 0(t5)
	add	t4, t4, t6
	addi	t4, t4, 2
	srli	t4, t4, 2
	add	t4, t4, s1
	srli	t4, t4, 1
	sb	t4, 0(t5)
	addi	t3, t3, 1
	addi	t1, t1, 1
	addi	a7, a7, -1
	addi	t0, t0, 1
	bne	t2, a7, .LBB0_158
# %bb.159:                              #   in Loop: Header=BB0_157 Depth=5
	add	a1, a1, a3
	addiw	a2, a2, 1
	add	a5, a5, a3
	add	a6, a6, a3
	lui	s1, %hi(blk_cnt)
	bne	a2, a0, .LBB0_157
	j	.LBB0_68
.LBB0_160:                              #   in Loop: Header=BB0_14 Depth=3
	lui	s1, %hi(blk_cnt)
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
.LBB0_161:                              #   in Loop: Header=BB0_14 Depth=3
	lui	s10, %hi(MV)
	addi	s10, s10, %lo(MV)
	lui	s7, %hi(fault)
	lui	s2, %hi(syntax_arith_coding)
	li	s3, 1
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB0_187
# %bb.162:                              #   in Loop: Header=BB0_14 Depth=3
	blez	a0, .LBB0_187
# %bb.163:                              #   in Loop: Header=BB0_14 Depth=3
	li	s9, 1
	lui	s11, %hi(syntax_arith_coding)
	ld	a2, 328(sp)                     # 8-byte Folded Reload
	mv	a0, s6
	lui	s6, %hi(trace)
	addi	a2, a2, 1
	slli	a0, a0, 2
	li	a1, 360
	sd	a2, 328(sp)                     # 8-byte Folded Spill
	mul	a1, a2, a1
	add	a1, s4, a1
	add	a0, a0, a1
	lw	s3, 4(a0)
	li	s0, 0
	li	s2, 0
	addiw	s3, s3, -3
	li	s4, -1
	lui	a0, 1
	addiw	s5, a0, -2008
.LBB0_164:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lui	a0, %hi(ld)
	ld	s1, %lo(ld)(a0)
	add	s1, s1, s5
	li	a2, 128
	mv	a0, s1
	li	a1, 0
	call	memset
	bltu	s9, s3, .LBB0_168
# %bb.165:                              #   in Loop: Header=BB0_164 Depth=4
	lw	a0, %lo(syntax_arith_coding)(s11)
	beqz	a0, .LBB0_171
# %bb.166:                              #   in Loop: Header=BB0_164 Depth=4
	lui	a0, %hi(cumf_INTRADC)
	addi	a0, a0, %lo(cumf_INTRADC)
	call	decode_a_symbol
	mv	a1, a0
	slli	a0, a0, 2
	lui	a2, %hi(intradctab)
	addi	a2, a2, %lo(intradctab)
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a2, %lo(trace)(s6)
	sh	a0, 0(s1)
	beqz	a2, .LBB0_173
# %bb.167:                              #   in Loop: Header=BB0_164 Depth=4
	slli	a0, a0, 48
	srai	a2, a0, 48
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	call	printf
	j	.LBB0_173
.LBB0_168:                              #   in Loop: Header=BB0_164 Depth=4
	lui	s1, %hi(blk_cnt)
	lw	a0, %lo(blk_cnt)(s1)
	add	a0, s4, a0
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	srlw	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB0_184
# %bb.169:                              #   in Loop: Header=BB0_164 Depth=4
	lw	a0, %lo(syntax_arith_coding)(s11)
	beqz	a0, .LBB0_177
# %bb.170:                              #   in Loop: Header=BB0_164 Depth=4
	li	a1, 1
	mv	a0, s0
	j	.LBB0_183
.LBB0_171:                              #   in Loop: Header=BB0_164 Depth=4
	li	a0, 8
	call	getbits
	lw	a1, %lo(trace)(s6)
	sh	a0, 0(s1)
	beqz	a1, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_164 Depth=4
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	mv	a1, s0
	call	printf
	lh	a0, 0(s1)
	li	a1, 8
	li	a2, 8
	call	printbits
	lh	a1, 0(s1)
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	call	printf
.LBB0_173:                              #   in Loop: Header=BB0_164 Depth=4
	lhu	a0, 0(s1)
	li	a1, 128
	bne	a0, a1, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_164 Depth=4
	lui	a1, %hi(quiet)
	lw	a1, %lo(quiet)(a1)
	beqz	a1, .LBB0_178
.LBB0_175:                              #   in Loop: Header=BB0_164 Depth=4
	li	a1, 255
	bne	a0, a1, .LBB0_179
.LBB0_176:                              #   in Loop: Header=BB0_164 Depth=4
	li	a0, 1024
	j	.LBB0_180
.LBB0_177:                              #   in Loop: Header=BB0_164 Depth=4
	li	a1, 1
	mv	a0, s0
	call	getblock
	lw	a0, %lo(fault)(s7)
	beqz	a0, .LBB0_185
	j	.LBB0_13
.LBB0_178:                              #   in Loop: Header=BB0_164 Depth=4
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	li	a1, 26
	li	a2, 1
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	call	fwrite
	lhu	a0, 0(s1)
	li	a1, 255
	beq	a0, a1, .LBB0_176
.LBB0_179:                              #   in Loop: Header=BB0_164 Depth=4
	slli	a0, a0, 3
.LBB0_180:                              #   in Loop: Header=BB0_164 Depth=4
	lui	a1, %hi(blk_cnt)
	lw	a1, %lo(blk_cnt)(a1)
	add	a1, s4, a1
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	srlw	a1, a2, a1
	andi	a1, a1, 1
	sh	a0, 0(s1)
	lui	s1, %hi(blk_cnt)
	beqz	a1, .LBB0_184
# %bb.181:                              #   in Loop: Header=BB0_164 Depth=4
	lw	a0, %lo(syntax_arith_coding)(s11)
	beqz	a0, .LBB0_186
# %bb.182:                              #   in Loop: Header=BB0_164 Depth=4
	mv	a0, s0
	li	a1, 0
.LBB0_183:                              #   in Loop: Header=BB0_164 Depth=4
	call	get_sac_block
.LBB0_184:                              #   in Loop: Header=BB0_164 Depth=4
	lw	a0, %lo(fault)(s7)
	beqz	a0, .LBB0_185
	j	.LBB0_13
.LBB0_185:                              #   in Loop: Header=BB0_164 Depth=4
	lw	a0, %lo(blk_cnt)(s1)
	addi	s2, s2, 1
	addiw	s0, s0, 1
	addi	s4, s4, -1
	addi	s5, s5, 128
	blt	s2, a0, .LBB0_164
	j	.LBB0_190
.LBB0_186:                              #   in Loop: Header=BB0_164 Depth=4
	mv	a0, s0
	li	a1, 0
	call	getblock
	lw	a0, %lo(fault)(s7)
	beqz	a0, .LBB0_185
	j	.LBB0_13
.LBB0_187:                              #   in Loop: Header=BB0_14 Depth=3
	ld	a0, 328(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 1
	sd	a0, 328(sp)                     # 8-byte Folded Spill
	ld	s9, 184(sp)                     # 8-byte Folded Reload
.LBB0_188:                              #   in Loop: Header=BB0_14 Depth=3
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	addiw	s9, s9, 1
	call	fflush
	li	s5, 1
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bge	s9, a0, .LBB0_189
	j	.LBB0_366
.LBB0_189:                              #   in Loop: Header=BB0_14 Depth=3
	li	s6, 0
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sd	a1, 224(sp)                     # 8-byte Folded Spill
	li	a3, 1
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	sd	a1, 240(sp)                     # 8-byte Folded Spill
	ld	a2, 296(sp)                     # 8-byte Folded Reload
	sd	a2, 248(sp)                     # 8-byte Folded Spill
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB0_381
	j	.LBB0_14
.LBB0_381:                              #   in Loop: Header=BB0_10 Depth=1
	j	.LBB0_365
.LBB0_190:                              #   in Loop: Header=BB0_14 Depth=3
	blez	a0, .LBB0_200
# %bb.191:                              #   in Loop: Header=BB0_14 Depth=3
	lui	a0, %hi(pb_frame)
	lw	a0, %lo(pb_frame)(a0)
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_199
# %bb.192:                              # %.preheader7
                                        #   in Loop: Header=BB0_14 Depth=3
	li	s0, 6
	lui	s5, %hi(blk_cnt)
	li	s1, -7
	li	s2, 5
	lui	a0, 1
	addiw	s3, a0, -1240
.LBB0_193:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli	a0, s0, 32
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mulhu	a0, a0, a1
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	srli	a0, a0, 34
	li	a2, 6
	mul	a0, a0, a2
	add	s4, s1, a0
	add	a0, a1, s3
	li	a2, 128
	li	a1, 0
	call	memset
	lw	a0, %lo(blk_cnt)(s5)
	add	a0, a0, s4
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	srlw	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB0_196
# %bb.194:                              #   in Loop: Header=BB0_193 Depth=4
	lw	a0, %lo(syntax_arith_coding)(s11)
	beqz	a0, .LBB0_198
# %bb.195:                              #   in Loop: Header=BB0_193 Depth=4
	li	a1, 1
	mv	a0, s0
	call	get_sac_block
.LBB0_196:                              #   in Loop: Header=BB0_193 Depth=4
	lw	a0, %lo(fault)(s7)
	bnez	a0, .LBB0_202
.LBB0_197:                              #   in Loop: Header=BB0_193 Depth=4
	lui	s5, %hi(blk_cnt)
	lw	a0, %lo(blk_cnt)(s5)
	addiw	a0, a0, 5
	addiw	s0, s0, 1
	addi	s1, s1, -1
	addi	s2, s2, 1
	addi	s3, s3, 128
	blt	s2, a0, .LBB0_193
	j	.LBB0_201
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=4
	li	a1, 1
	mv	a0, s0
	call	getblock
	lw	a0, %lo(fault)(s7)
	beqz	a0, .LBB0_197
	j	.LBB0_202
.LBB0_199:                              #   in Loop: Header=BB0_14 Depth=3
	lui	s2, %hi(syntax_arith_coding)
	li	s3, 1
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	j	.LBB0_188
.LBB0_200:                              #   in Loop: Header=BB0_14 Depth=3
	lui	s2, %hi(syntax_arith_coding)
	li	s3, 1
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	j	.LBB0_188
.LBB0_201:                              #   in Loop: Header=BB0_14 Depth=3
	lui	s2, %hi(syntax_arith_coding)
	li	s3, 1
	lui	s1, %hi(blk_cnt)
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	j	.LBB0_188
.LBB0_202:                              #   in Loop: Header=BB0_207 Depth=2
	lui	s6, %hi(trace)
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	lui	s2, %hi(syntax_arith_coding)
	li	s3, 1
	lui	s1, %hi(blk_cnt)
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	bnez	a0, .LBB0_206
	j	.LBB0_207
.LBB0_203:                              #   in Loop: Header=BB0_207 Depth=2
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	sd	zero, 160(sp)                   # 8-byte Folded Spill
.LBB0_204:                              #   in Loop: Header=BB0_207 Depth=2
	lw	a0, %lo(fault)(s7)
	beqz	a0, .LBB0_364
# %bb.205:                              #   in Loop: Header=BB0_207 Depth=2
	beqz	a0, .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_10 Depth=1
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	call	startcode
	sw	zero, %lo(fault)(s7)
.LBB0_207:                              #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_14 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_60 Depth 5
                                        #         Child Loop BB0_26 Depth 4
                                        #           Child Loop BB0_41 Depth 5
                                        #           Child Loop BB0_37 Depth 5
                                        #         Child Loop BB0_66 Depth 4
                                        #           Child Loop BB0_142 Depth 5
                                        #             Child Loop BB0_143 Depth 6
                                        #           Child Loop BB0_136 Depth 5
                                        #             Child Loop BB0_137 Depth 6
                                        #           Child Loop BB0_157 Depth 5
                                        #             Child Loop BB0_158 Depth 6
                                        #           Child Loop BB0_150 Depth 5
                                        #             Child Loop BB0_151 Depth 6
                                        #           Child Loop BB0_85 Depth 5
                                        #         Child Loop BB0_164 Depth 4
                                        #         Child Loop BB0_193 Depth 4
	li	a0, 22
	call	showbits
	li	a1, 63
	bltu	a1, a0, .LBB0_213
# %bb.208:                              #   in Loop: Header=BB0_207 Depth=2
	call	startcode
	li	a0, 22
	call	showbits
	li	a1, 63
	bne	a0, a1, .LBB0_210
# %bb.209:                              #   in Loop: Header=BB0_207 Depth=2
	lw	a0, %lo(syntax_arith_coding)(s2)
	bnez	a0, .LBB0_212
	j	.LBB0_369
.LBB0_210:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 22
	call	showbits
	lw	a1, %lo(syntax_arith_coding)(s2)
	li	a2, 32
	bne	a0, a2, .LBB0_244
# %bb.211:                              #   in Loop: Header=BB0_207 Depth=2
	bnez	a1, .LBB0_212
	j	.LBB0_369
.LBB0_212:                              #   in Loop: Header=BB0_207 Depth=2
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bge	s9, a0, .LBB0_369
.LBB0_213:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	divw	a1, s9, a0
	mul	a0, a1, a0
	subw	a0, s9, a0
	sd	a0, 320(sp)                     # 8-byte Folded Spill
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	bnez	a0, .LBB0_216
# %bb.214:                              #   in Loop: Header=BB0_207 Depth=2
	blez	a1, .LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_207 Depth=2
	sd	zero, 320(sp)                   # 8-byte Folded Spill
	lui	a0, %hi(newgob)
	sw	zero, %lo(newgob)(a0)
.LBB0_216:                              #   in Loop: Header=BB0_207 Depth=2
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bge	s9, a0, .LBB0_369
.LBB0_217:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, %lo(syntax_arith_coding)(s2)
	lui	a1, %hi(pict_type)
	lw	a1, %lo(pict_type)(a1)
	beqz	a0, .LBB0_222
# %bb.218:                              #   in Loop: Header=BB0_217 Depth=3
	bne	a1, s3, .LBB0_226
# %bb.219:                              #   in Loop: Header=BB0_217 Depth=3
	lui	a0, %hi(cumf_COD)
	addi	a0, a0, %lo(cumf_COD)
	call	decode_a_symbol
	mv	s0, a0
	slli	a0, a0, 2
	lui	a1, %hi(codtab)
	addi	a1, a1, %lo(codtab)
	add	a0, a1, a0
	lw	a1, %lo(trace)(s6)
	lw	s5, 0(a0)
	beqz	a1, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_217 Depth=3
	lui	a0, %hi(.Lstr.28)
	addi	a0, a0, %lo(.Lstr.28)
	call	puts
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	mv	a1, s0
	mv	a2, s5
	call	printf
.LBB0_221:                              #   in Loop: Header=BB0_217 Depth=3
	lw	a0, %lo(syntax_arith_coding)(s2)
	lui	a1, %hi(pict_type)
	lw	a1, %lo(pict_type)(a1)
	beqz	s5, .LBB0_224
	j	.LBB0_356
.LBB0_222:                              #   in Loop: Header=BB0_217 Depth=3
	bne	a1, s3, .LBB0_233
# %bb.223:                              #   in Loop: Header=BB0_217 Depth=3
	li	a0, 1
	call	showbits
	mv	s5, a0
	lw	a0, %lo(syntax_arith_coding)(s2)
	lui	a1, %hi(pict_type)
	lw	a1, %lo(pict_type)(a1)
	bnez	s5, .LBB0_356
.LBB0_224:                              #   in Loop: Header=BB0_217 Depth=3
	beqz	a0, .LBB0_231
# %bb.225:                              #   in Loop: Header=BB0_217 Depth=3
	lui	a0, %hi(cumf_MCBPC)
	addi	a0, a0, %lo(cumf_MCBPC)
	lui	s0, %hi(mcbpctab)
	addi	s0, s0, %lo(mcbpctab)
	beq	a1, s3, .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_217 Depth=3
	lui	a0, %hi(cumf_MCBPC_intra)
	addi	a0, a0, %lo(cumf_MCBPC_intra)
	lui	s0, %hi(mcbpc_intratab)
	addi	s0, s0, %lo(mcbpc_intratab)
.LBB0_227:                              #   in Loop: Header=BB0_217 Depth=3
	call	decode_a_symbol
	mv	a1, a0
	slli	a0, a0, 2
	add	a0, s0, a0
	lw	a2, %lo(trace)(s6)
	lw	s11, 0(a0)
	beqz	a2, .LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_217 Depth=3
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	mv	a2, s11
	call	printf
.LBB0_229:                              #   in Loop: Header=BB0_217 Depth=3
	lw	a0, %lo(fault)(s7)
	bnez	a0, .LBB0_236
.LBB0_230:                              #   in Loop: Header=BB0_217 Depth=3
	li	a0, 255
	beq	s11, a0, .LBB0_217
	j	.LBB0_237
.LBB0_231:                              #   in Loop: Header=BB0_217 Depth=3
	bne	a1, s3, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_217 Depth=3
	li	a0, 1
	call	flushbits
	lui	a0, %hi(pict_type)
	lw	a1, %lo(pict_type)(a0)
.LBB0_233:                              #   in Loop: Header=BB0_217 Depth=3
	beqz	a1, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_217 Depth=3
	call	getMCBPC
	mv	s11, a0
	lw	a0, %lo(fault)(s7)
	beqz	a0, .LBB0_230
	j	.LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_217 Depth=3
	call	getMCBPCintra
	mv	s11, a0
	lw	a0, %lo(fault)(s7)
	beqz	a0, .LBB0_230
.LBB0_236:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 1
	bnez	a0, .LBB0_206
	j	.LBB0_207
.LBB0_237:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(pb_frame)
	lw	a0, %lo(pb_frame)(a0)
	beqz	a0, .LBB0_258
# %bb.238:                              #   in Loop: Header=BB0_207 Depth=2
	lw	a0, %lo(syntax_arith_coding)(s2)
	beqz	a0, .LBB0_254
# %bb.239:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(cumf_MODB)
	addi	a0, a0, %lo(cumf_MODB)
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	a1, %hi(modb_tab)
	addi	a1, a1, %lo(modb_tab)
	add	a0, a1, a0
	lw	s0, 0(a0)
	lw	a0, %lo(trace)(s6)
	beqz	a0, .LBB0_241
.LBB0_240:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	mv	a1, s0
	call	printf
.LBB0_241:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 2
	bne	s0, a0, .LBB0_253
# %bb.242:                              #   in Loop: Header=BB0_207 Depth=2
	lw	a0, %lo(syntax_arith_coding)(s2)
	beqz	a0, .LBB0_255
# %bb.243:                              #   in Loop: Header=BB0_207 Depth=2
	lui	s4, %hi(cumf_YCBPB)
	addi	s4, s4, %lo(cumf_YCBPB)
	mv	a0, s4
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	s5, %hi(ycbpb_tab)
	addi	s5, s5, %lo(ycbpb_tab)
	add	a0, s5, a0
	lw	a0, 0(a0)
	slliw	s0, a0, 5
	mv	a0, s4
	call	decode_a_symbol
	slli	a0, a0, 2
	add	a0, s5, a0
	lw	a0, 0(a0)
	slliw	a0, a0, 4
	or	s0, a0, s0
	mv	a0, s4
	call	decode_a_symbol
	slli	a0, a0, 2
	add	a0, s5, a0
	lw	a0, 0(a0)
	slliw	s1, a0, 3
	mv	a0, s4
	call	decode_a_symbol
	slli	a0, a0, 2
	add	a0, s5, a0
	lw	a0, 0(a0)
	slliw	a0, a0, 2
	or	a0, s1, a0
	or	s0, s0, a0
	lui	s1, %hi(cumf_UVCBPB)
	addi	s1, s1, %lo(cumf_UVCBPB)
	mv	a0, s1
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	s4, %hi(uvcbpb_tab)
	addi	s4, s4, %lo(uvcbpb_tab)
	add	a0, s4, a0
	lw	a0, 0(a0)
	slliw	a0, a0, 1
	or	s0, s0, a0
	mv	a0, s1
	lui	s1, %hi(blk_cnt)
	call	decode_a_symbol
	slli	a0, a0, 2
	add	a0, s4, a0
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	lw	a0, 0(a0)
	or	a0, s0, a0
	j	.LBB0_256
.LBB0_244:                              #   in Loop: Header=BB0_207 Depth=2
	beqz	a1, .LBB0_247
# %bb.245:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	remw	a0, s9, a0
	bnez	a0, .LBB0_213
# %bb.246:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 22
	call	showbits
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	andi	a0, a0, 31
	mulw	a0, a0, a1
	bne	a0, s9, .LBB0_213
.LBB0_247:                              #   in Loop: Header=BB0_207 Depth=2
	call	getheader
	lui	a1, %hi(mb_height)
	lw	a1, %lo(mb_height)(a1)
	addiw	s0, a0, -1
	blt	a1, s0, .LBB0_367
# %bb.248:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 2
	call	getbits
	li	a0, 5
	call	getbits
	lw	a2, %lo(trace)(s6)
	mv	a1, a0
	lui	a0, %hi(quant)
	sw	a1, %lo(quant)(a0)
	beqz	a2, .LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
.LBB0_250:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	lw	a1, %lo(syntax_arith_coding)(s2)
	sd	s0, 328(sp)                     # 8-byte Folded Spill
	mulw	s9, a0, s0
	lui	a0, %hi(newgob)
	sw	s3, %lo(newgob)(a0)
	beqz	a1, .LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_207 Depth=2
	call	decoder_reset
.LBB0_252:                              #   in Loop: Header=BB0_207 Depth=2
	sd	zero, 320(sp)                   # 8-byte Folded Spill
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	blt	s9, a0, .LBB0_217
	j	.LBB0_369
.LBB0_253:                              #   in Loop: Header=BB0_207 Depth=2
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	zero, 192(sp)                   # 8-byte Folded Spill
	j	.LBB0_258
.LBB0_254:                              #   in Loop: Header=BB0_207 Depth=2
	call	getMODB
	mv	s0, a0
	lw	a0, %lo(trace)(s6)
	bnez	a0, .LBB0_240
	j	.LBB0_241
.LBB0_255:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 6
	call	getbits
.LBB0_256:                              #   in Loop: Header=BB0_207 Depth=2
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	lw	a0, %lo(trace)(s6)
	li	a1, 2
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	call	printf
.LBB0_258:                              #   in Loop: Header=BB0_207 Depth=2
	lw	a0, %lo(syntax_arith_coding)(s2)
	andi	s5, s11, 7
	beqz	a0, .LBB0_263
# %bb.259:                              #   in Loop: Header=BB0_207 Depth=2
	addi	a1, s5, -3
	lui	a0, %hi(cumf_CBPY_intra)
	addi	a0, a0, %lo(cumf_CBPY_intra)
	lui	s0, %hi(cbpy_intratab)
	addi	s0, s0, %lo(cbpy_intratab)
	li	a2, 2
	bltu	a1, a2, .LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(cumf_CBPY)
	addi	a0, a0, %lo(cumf_CBPY)
	lui	s0, %hi(cbpytab)
	addi	s0, s0, %lo(cbpytab)
.LBB0_261:                              #   in Loop: Header=BB0_207 Depth=2
	call	decode_a_symbol
	mv	a1, a0
	slli	a0, a0, 2
	add	a0, s0, a0
	lw	a2, %lo(trace)(s6)
	lw	s0, 0(a0)
	beqz	a2, .LBB0_264
# %bb.262:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	mv	a2, s0
	call	printf
	j	.LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_207 Depth=2
	call	getCBPY
	mv	s0, a0
.LBB0_264:                              #   in Loop: Header=BB0_207 Depth=2
	lw	a0, %lo(syntax_arith_coding)(s2)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	li	a0, 2
	sd	s5, 296(sp)                     # 8-byte Folded Spill
	bne	s5, a0, .LBB0_332
# %bb.265:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(adv_pred_mode)
	lw	a0, %lo(adv_pred_mode)(a0)
	bnez	a0, .LBB0_332
# %bb.266:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_332
# %bb.267:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.Lstr.29)
	addi	a0, a0, %lo(.Lstr.29)
	call	puts
.LBB0_268:                              #   in Loop: Header=BB0_207 Depth=2
	sd	s0, 136(sp)                     # 8-byte Folded Spill
	sd	s11, 128(sp)                    # 8-byte Folded Spill
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	addi	a0, s5, -2
	seqz	s9, a0
	ld	a2, 320(sp)                     # 8-byte Folded Reload
	addiw	s1, a2, 1
	ld	a3, 328(sp)                     # 8-byte Folded Reload
	addiw	a0, a3, 1
	li	a1, 360
	sd	a0, 344(sp)                     # 8-byte Folded Spill
	mul	a4, a0, a1
	slli	a0, a2, 2
	add	a0, s4, a0
	add	a0, a0, a4
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	mul	a0, a3, a1
	add	a0, s4, a0
	slli	a5, s1, 2
	add	a1, a0, a5
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	addiw	a1, a2, 2
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 2
	add	a0, a0, a1
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 4
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 4
	sd	a3, 208(sp)                     # 8-byte Folded Spill
	ld	a0, 352(sp)                     # 8-byte Folded Reload
	mul	s11, s9, a0
	sd	a4, 336(sp)                     # 8-byte Folded Spill
	sd	a5, 264(sp)                     # 8-byte Folded Spill
	add	a0, a4, a5
	add	a0, s10, a0
	add	s11, a0, s11
	lui	a0, 32
	addiw	s2, a0, 328
	sd	s2, 256(sp)                     # 8-byte Folded Spill
	add	s2, s11, s2
	slli	s3, s9, 2
	addi	s3, s3, -4
	slli	s0, s9, 3
	addi	s0, s0, -8
	mv	a0, s9
.LBB0_269:                              #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lui	a1, %hi(syntax_arith_coding)
	lw	a1, %lo(syntax_arith_coding)(a1)
	mv	s6, a0
	beqz	a1, .LBB0_273
# %bb.270:                              #   in Loop: Header=BB0_269 Depth=3
	lui	s5, %hi(cumf_MVD)
	addi	s5, s5, %lo(cumf_MVD)
	mv	a0, s5
	call	decode_a_symbol
	mv	s10, a0
	slli	a0, a0, 2
	lui	s4, %hi(mvdtab)
	addi	s4, s4, %lo(mvdtab)
	add	a0, s4, a0
	lw	s7, 0(a0)
	mv	a0, s5
	call	decode_a_symbol
	mv	a1, a0
	slli	a0, a0, 2
	add	a0, s4, a0
	lui	a2, %hi(trace)
	lw	a2, %lo(trace)(a2)
	lw	s5, 0(a0)
	beqz	a2, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	mv	a2, s10
	call	printf
.LBB0_272:                              #   in Loop: Header=BB0_269 Depth=3
	lui	s10, %hi(MV)
	addi	s10, s10, %lo(MV)
	li	t4, 360
	li	a0, 4
	bgeu	a0, s9, .LBB0_274
	j	.LBB0_378
.LBB0_273:                              #   in Loop: Header=BB0_269 Depth=3
	call	getTMNMV
	mv	s7, a0
	call	getTMNMV
	mv	s5, a0
	li	t4, 360
	li	a0, 4
	bltu	a0, s9, .LBB0_378
.LBB0_274:                              #   in Loop: Header=BB0_269 Depth=3
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	lw	a3, 0(a0)
	slli	t0, s9, 2
	lui	a0, %hi(.LJTI0_0)
	addi	a0, a0, %lo(.LJTI0_0)
	add	a0, t0, a0
	lw	t2, 0(a0)
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	lw	a6, 0(a0)
	li	a5, 2
	li	a2, 1
	li	a0, 3
	mv	a7, s1
	ld	t1, 344(sp)                     # 8-byte Folded Reload
	mv	a4, s1
	jr	t2
.LBB0_275:                              #   in Loop: Header=BB0_269 Depth=3
	addi	a0, a6, -2
	snez	a4, a0
	addi	a0, a3, -2
	snez	a2, a0
	addi	a0, a1, -2
	seqz	a0, a0
	slli	a0, a0, 1
	addi	a2, a2, -1
	andi	a2, a2, 3
	addi	a4, a4, -1
	andi	a5, a4, 3
	ld	a7, 312(sp)                     # 8-byte Folded Reload
	ld	t1, 328(sp)                     # 8-byte Folded Reload
	j	.LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_269 Depth=3
	addi	a0, a1, -2
	seqz	a0, a0
	slli	a0, a0, 2
	mv	a7, s1
	ld	t1, 344(sp)                     # 8-byte Folded Reload
.LBB0_277:                              #   in Loop: Header=BB0_269 Depth=3
	ld	a4, 320(sp)                     # 8-byte Folded Reload
	j	.LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_269 Depth=3
	addi	a0, a6, -2
	snez	a0, a0
	addi	a2, a3, -2
	seqz	a2, a2
	slli	a2, a2, 2
	addi	a0, a0, -1
	andi	a5, a0, 3
	li	a0, 1
	ld	a7, 312(sp)                     # 8-byte Folded Reload
	ld	t1, 328(sp)                     # 8-byte Folded Reload
	mv	a4, s1
.LBB0_279:                              #   in Loop: Header=BB0_269 Depth=3
	lui	t2, %hi(newgob)
	lw	t3, %lo(newgob)(t2)
	mul	t2, t1, t4
	snez	t1, t3
	sltiu	t3, s6, 3
	and	t1, t3, t1
	li	t4, 999
	li	t3, 999
	bnez	t1, .LBB0_281
# %bb.280:                              #   in Loop: Header=BB0_269 Depth=3
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	mul	a2, a2, t3
	add	t3, s10, t2
	add	a2, t3, a2
	ld	t3, 264(sp)                     # 8-byte Folded Reload
	add	a2, a2, t3
	lw	t3, 0(a2)
.LBB0_281:                              #   in Loop: Header=BB0_269 Depth=3
	ld	a2, 352(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a2
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	add	a2, s10, a2
	slli	a4, a4, 2
	add	a2, a2, a4
	add	a0, a2, a0
	lw	a0, 0(a0)
	mv	a2, a0
	mv	a4, a0
	beq	t3, t4, .LBB0_287
# %bb.282:                              #   in Loop: Header=BB0_269 Depth=3
	ld	a2, 352(sp)                     # 8-byte Folded Reload
	mul	a2, a5, a2
	add	t2, s10, t2
	add	a2, t2, a2
	slli	a7, a7, 2
	add	a2, a2, a7
	lw	a2, 0(a2)
	mv	a4, t3
	mv	a7, a4
	bge	a2, t3, .LBB0_288
.LBB0_283:                              #   in Loop: Header=BB0_269 Depth=3
	mv	a5, a0
	blt	a7, a0, .LBB0_289
.LBB0_284:                              #   in Loop: Header=BB0_269 Depth=3
	mv	a5, a7
	mv	t2, a4
	bge	a4, a2, .LBB0_290
.LBB0_285:                              #   in Loop: Header=BB0_269 Depth=3
	mv	a7, a0
	blt	a0, t2, .LBB0_291
.LBB0_286:                              #   in Loop: Header=BB0_269 Depth=3
	mv	a7, t2
	li	ra, 360
	li	t2, 4
	bgeu	t2, s9, .LBB0_292
	j	.LBB0_378
.LBB0_287:                              #   in Loop: Header=BB0_269 Depth=3
	mv	a7, a4
	blt	a2, a4, .LBB0_283
.LBB0_288:                              #   in Loop: Header=BB0_269 Depth=3
	mv	a7, a2
	mv	a5, a0
	bge	a2, a0, .LBB0_284
.LBB0_289:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t2, a4
	blt	a4, a2, .LBB0_285
.LBB0_290:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t2, a2
	mv	a7, a0
	bge	a0, a2, .LBB0_286
.LBB0_291:                              #   in Loop: Header=BB0_269 Depth=3
	li	ra, 360
	li	t2, 4
	bltu	t2, s9, .LBB0_378
.LBB0_292:                              #   in Loop: Header=BB0_269 Depth=3
	lui	t2, %hi(.LJTI0_1)
	addi	t2, t2, %lo(.LJTI0_1)
	add	t0, t0, t2
	lw	s4, 0(t0)
	li	t0, 2
	li	t4, 1
	li	t3, 3
	mv	t2, s1
	ld	t6, 344(sp)                     # 8-byte Folded Reload
	mv	t5, s1
	jr	s4
.LBB0_293:                              #   in Loop: Header=BB0_269 Depth=3
	addi	a6, a6, -2
	snez	a6, a6
	addi	a3, a3, -2
	snez	a3, a3
	addi	a1, a1, -2
	seqz	t3, a1
	slli	t3, t3, 1
	addi	a3, a3, -1
	andi	t4, a3, 3
	addi	a6, a6, -1
	andi	t0, a6, 3
	ld	t2, 312(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	j	.LBB0_295
.LBB0_294:                              #   in Loop: Header=BB0_269 Depth=3
	addi	a1, a1, -2
	seqz	t3, a1
	slli	t3, t3, 2
	mv	t2, s1
	ld	t6, 344(sp)                     # 8-byte Folded Reload
.LBB0_295:                              #   in Loop: Header=BB0_269 Depth=3
	ld	t5, 320(sp)                     # 8-byte Folded Reload
	j	.LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_269 Depth=3
	addi	a6, a6, -2
	snez	a1, a6
	addi	a3, a3, -2
	seqz	t4, a3
	slli	t4, t4, 2
	addi	a1, a1, -1
	andi	t0, a1, 3
	li	t3, 1
	ld	t2, 312(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	mv	t5, s1
.LBB0_297:                              #   in Loop: Header=BB0_269 Depth=3
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	add	s4, s10, s4
	mul	t6, t6, ra
	li	ra, 999
	li	s10, 999
	bnez	t1, .LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_269 Depth=3
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mul	a1, t4, a1
	add	a3, s4, t6
	add	a1, a3, a1
	ld	a3, 264(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	lw	s10, 0(a1)
.LBB0_299:                              #   in Loop: Header=BB0_269 Depth=3
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mul	a1, t3, a1
	ld	a3, 336(sp)                     # 8-byte Folded Reload
	add	a3, s4, a3
	add	a1, a3, a1
	slli	t5, t5, 2
	add	a1, a1, t5
	lw	a1, 0(a1)
	mv	a3, a1
	mv	a6, a1
	beq	s10, ra, .LBB0_323
# %bb.300:                              #   in Loop: Header=BB0_269 Depth=3
	ld	a3, 352(sp)                     # 8-byte Folded Reload
	mul	a3, t0, a3
	add	t6, s4, t6
	add	a3, t6, a3
	slli	t2, t2, 2
	add	a3, a3, t2
	lw	a3, 0(a3)
	mv	a6, s10
	mv	t1, a6
	bge	a3, s10, .LBB0_324
.LBB0_301:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t0, a1
	lui	t3, %hi(trace)
	blt	t1, a1, .LBB0_325
.LBB0_302:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t0, t1
	mv	t2, a6
	bge	a6, a3, .LBB0_326
.LBB0_303:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t1, a1
	blt	a1, t2, .LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t1, t2
.LBB0_305:                              #   in Loop: Header=BB0_269 Depth=3
	add	a0, a4, a0
	add	a0, a0, a2
	add	a5, a7, a5
	subw	a2, a0, a5
	add	a1, a6, a1
	add	a1, a1, a3
	add	t0, t1, t0
	subw	a0, a1, t0
	slti	a1, s7, 32
	lui	a3, %hi(long_vectors)
	lw	a3, %lo(long_vectors)(a3)
	addi	a1, a1, -1
	andi	a1, a1, -64
	add	a1, s7, a1
	addw	a1, a2, a1
	beqz	a3, .LBB0_327
# %bb.306:                              #   in Loop: Header=BB0_269 Depth=3
	slti	a3, a2, -31
	slti	a4, a1, -63
	and	a3, a3, a4
	slli	a3, a3, 6
	addw	a1, a1, a3
	slti	a2, a2, 33
	slti	a3, a1, 64
	or	a2, a2, a3
	xori	a2, a2, 1
	negw	a2, a2
	andi	a2, a2, -64
	addw	s7, a1, a2
	slti	a1, s5, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	add	a1, s5, a1
	addw	a1, a0, a1
	slti	a2, a0, -31
	slti	a3, a1, -63
	and	a2, a2, a3
	slli	a2, a2, 6
	addw	a1, a1, a2
	slti	a0, a0, 33
	slti	a2, a1, 64
	or	a0, a0, a2
	xori	a0, a0, 1
	negw	a0, a0
	andi	a0, a0, -64
	addw	s5, a1, a0
	lw	a0, %lo(trace)(t3)
	beqz	a0, .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	mv	a1, s7
	call	printf
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	mv	a1, s5
	call	printf
.LBB0_308:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(mv_outside_frame)
	lw	a0, %lo(mv_outside_frame)(a0)
	bnez	a0, .LBB0_321
# %bb.309:                              #   in Loop: Header=BB0_269 Depth=3
	li	s10, 16
	beqz	s6, .LBB0_311
# %bb.310:                              #   in Loop: Header=BB0_269 Depth=3
	li	s10, 8
.LBB0_311:                              #   in Loop: Header=BB0_269 Depth=3
	seqz	s4, s6
	addi	s4, s4, -1
	and	a0, s0, s4
	andi	a0, a0, 8
	srliw	a1, s7, 31
	add	a1, s7, a1
	sraiw	a1, a1, 1
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	bltz	a0, .LBB0_313
# %bb.312:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	slli	a1, a1, 4
	subw	a1, a1, s10
	bge	a1, a0, .LBB0_316
.LBB0_313:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_315
# %bb.314:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(.Lstr.31)
	addi	a0, a0, %lo(.Lstr.31)
	call	puts
.LBB0_315:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(fault)
	li	a1, 1
	sw	a1, %lo(fault)(a0)
.LBB0_316:                              #   in Loop: Header=BB0_269 Depth=3
	and	a0, s3, s4
	andi	a0, a0, 8
	srliw	a1, s5, 31
	add	a1, s5, a1
	sraiw	a1, a1, 1
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	bltz	a0, .LBB0_318
# %bb.317:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a1, %hi(mb_height)
	lw	a1, %lo(mb_height)(a1)
	slli	a1, a1, 4
	subw	a1, a1, s10
	bge	a1, a0, .LBB0_321
.LBB0_318:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_320
# %bb.319:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(.Lstr.32)
	addi	a0, a0, %lo(.Lstr.32)
	call	puts
.LBB0_320:                              #   in Loop: Header=BB0_269 Depth=3
	lui	a0, %hi(fault)
	li	a1, 1
	sw	a1, %lo(fault)(a0)
.LBB0_321:                              #   in Loop: Header=BB0_269 Depth=3
	sw	s7, 0(s11)
	sw	s5, 0(s2)
	lui	s10, %hi(MV)
	addi	s10, s10, %lo(MV)
	li	a0, 2
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	bne	s5, a0, .LBB0_328
# %bb.322:                              #   in Loop: Header=BB0_269 Depth=3
	addi	a0, s6, 1
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	add	s2, s2, a1
	add	s11, s11, a1
	addi	s3, s3, 4
	addi	s0, s0, 8
	addiw	s9, s9, 1
	li	a1, 4
	bltu	s6, a1, .LBB0_269
	j	.LBB0_328
.LBB0_323:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t1, a6
	blt	a3, a6, .LBB0_301
.LBB0_324:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t1, a3
	mv	t0, a1
	lui	t3, %hi(trace)
	bge	a3, a1, .LBB0_302
.LBB0_325:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t2, a6
	blt	a6, a3, .LBB0_303
.LBB0_326:                              #   in Loop: Header=BB0_269 Depth=3
	mv	t2, a3
	mv	t1, a1
	bge	a1, a3, .LBB0_304
	j	.LBB0_305
.LBB0_327:                              #   in Loop: Header=BB0_269 Depth=3
	slti	a2, a1, 32
	addi	a2, a2, -1
	andi	a2, a2, -64
	addw	a1, a1, a2
	slti	a2, a1, -32
	slli	a2, a2, 6
	addw	s7, a1, a2
	slti	a1, s5, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	add	a1, s5, a1
	addw	a0, a0, a1
	slti	a1, a0, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	addw	a0, a0, a1
	slti	a1, a0, -32
	slli	a1, a1, 6
	addw	s5, a0, a1
	lw	a0, %lo(trace)(t3)
	bnez	a0, .LBB0_307
	j	.LBB0_308
.LBB0_328:                              #   in Loop: Header=BB0_207 Depth=2
	lui	s6, %hi(trace)
	lui	a0, %hi(pb_frame)
	lw	a0, %lo(pb_frame)(a0)
	lui	s4, %hi(modemap)
	addi	s4, s4, %lo(modemap)
	lui	s7, %hi(fault)
	lui	s2, %hi(syntax_arith_coding)
	li	s3, 1
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	lui	s1, %hi(blk_cnt)
	ld	s11, 128(sp)                    # 8-byte Folded Reload
	ld	s0, 136(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_204
# %bb.329:                              #   in Loop: Header=BB0_207 Depth=2
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	addiw	a0, a0, -1
	bltu	s3, a0, .LBB0_203
# %bb.330:                              #   in Loop: Header=BB0_207 Depth=2
	lw	a0, %lo(syntax_arith_coding)(s2)
	beqz	a0, .LBB0_344
# %bb.331:                              #   in Loop: Header=BB0_207 Depth=2
	lui	s0, %hi(cumf_MVD)
	addi	s0, s0, %lo(cumf_MVD)
	mv	a0, s0
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	s1, %hi(mvdtab)
	addi	s1, s1, %lo(mvdtab)
	add	a0, s1, a0
	lw	s5, 0(a0)
	mv	a0, s0
	call	decode_a_symbol
	slli	a0, a0, 2
	add	a0, s1, a0
	lw	a0, 0(a0)
	j	.LBB0_345
.LBB0_332:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 4
	beq	s5, a0, .LBB0_334
# %bb.333:                              #   in Loop: Header=BB0_207 Depth=2
	bne	s5, s3, .LBB0_354
.LBB0_334:                              #   in Loop: Header=BB0_207 Depth=2
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_337
# %bb.335:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(cumf_DQUANT)
	addi	a0, a0, %lo(cumf_DQUANT)
	call	decode_a_symbol
	mv	a1, a0
	slli	a0, a0, 2
	lui	a2, %hi(dquanttab)
	addi	a2, a2, %lo(dquanttab)
	add	a0, a2, a0
	lw	a2, 0(a0)
	lui	a4, %hi(quant)
	lw	a0, %lo(quant)(a4)
	lw	a3, %lo(trace)(s6)
	addiw	a2, a2, -2
	add	a0, a0, a2
	sw	a0, %lo(quant)(a4)
	beqz	a3, .LBB0_340
# %bb.336:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	j	.LBB0_339
.LBB0_337:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 2
	call	getbits
	mv	s5, a0
	slli	a0, a0, 2
	lui	a1, %hi(.L__const.getMBs.DQ_tab)
	addi	a1, a1, %lo(.L__const.getMBs.DQ_tab)
	add	a0, a1, a0
	lw	s7, 0(a0)
	lui	a2, %hi(quant)
	lw	a0, %lo(quant)(a2)
	lw	a1, %lo(trace)(s6)
	add	a0, a0, s7
	sw	a0, %lo(quant)(a2)
	beqz	a1, .LBB0_340
# %bb.338:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	printf
	li	a1, 2
	li	a2, 2
	mv	a0, s5
	call	printbits
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	mv	a1, s5
	mv	a2, s7
.LBB0_339:                              #   in Loop: Header=BB0_207 Depth=2
	call	printf
.LBB0_340:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(quant)
	lw	a0, %lo(quant)(a0)
	addiw	a1, a0, -32
	lui	s7, %hi(fault)
	li	a2, -32
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	bltu	a2, a1, .LBB0_354
# %bb.341:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a1, %hi(quiet)
	lw	a1, %lo(quiet)(a1)
	beqz	a1, .LBB0_350
# %bb.342:                              #   in Loop: Header=BB0_207 Depth=2
	li	a1, 31
	blt	a0, a1, .LBB0_351
.LBB0_343:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 31
	blez	a0, .LBB0_352
	j	.LBB0_353
.LBB0_344:                              #   in Loop: Header=BB0_207 Depth=2
	call	getTMNMV
	mv	s5, a0
	call	getTMNMV
.LBB0_345:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a1, %hi(long_vectors)
	lw	a1, %lo(long_vectors)(a1)
	slti	a2, s5, 32
	addi	a2, a2, -1
	andi	a2, a2, -64
	addw	a2, s5, a2
	beqz	a1, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_207 Depth=2
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	slti	a1, a0, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	j	.LBB0_348
.LBB0_347:                              #   in Loop: Header=BB0_207 Depth=2
	slti	a1, a2, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	addw	a1, a2, a1
	slti	a2, a1, -32
	slli	a2, a2, 6
	addw	a1, a1, a2
	sd	a1, 152(sp)                     # 8-byte Folded Spill
	slti	a1, a0, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	addw	a0, a0, a1
	slti	a1, a0, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	addw	a0, a0, a1
	slti	a1, a0, -32
	slli	a1, a1, 6
.LBB0_348:                              #   in Loop: Header=BB0_207 Depth=2
	addw	a0, a0, a1
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	lui	s1, %hi(blk_cnt)
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 136(sp)                     # 8-byte Folded Reload
	lw	a0, %lo(trace)(s6)
	beqz	a0, .LBB0_204
# %bb.349:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	call	printf
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	call	printf
	j	.LBB0_204
.LBB0_350:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(.Lstr.30)
	addi	a0, a0, %lo(.Lstr.30)
	call	puts
	lui	a0, %hi(quant)
	lw	a0, %lo(quant)(a0)
	li	a1, 31
	bge	a0, a1, .LBB0_343
.LBB0_351:                              #   in Loop: Header=BB0_207 Depth=2
	bgtz	a0, .LBB0_353
.LBB0_352:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 1
.LBB0_353:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a1, %hi(quant)
	sw	a0, %lo(quant)(a1)
.LBB0_354:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 3
	bltu	s5, a0, .LBB0_268
# %bb.355:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a0, %hi(pb_frame)
	lw	a0, %lo(pb_frame)(a0)
	beqz	a0, .LBB0_204
	j	.LBB0_268
.LBB0_356:                              #   in Loop: Header=BB0_207 Depth=2
	bnez	a0, .LBB0_359
# %bb.357:                              #   in Loop: Header=BB0_207 Depth=2
	bne	a1, s3, .LBB0_359
# %bb.358:                              #   in Loop: Header=BB0_207 Depth=2
	li	a0, 1
	call	flushbits
.LBB0_359:                              #   in Loop: Header=BB0_207 Depth=2
	li	a5, 0
	sd	zero, 192(sp)                   # 8-byte Folded Spill
	sd	zero, 336(sp)                   # 8-byte Folded Spill
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	sd	zero, 160(sp)                   # 8-byte Folded Spill
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	addiw	a1, a1, 1
	ld	s6, 320(sp)                     # 8-byte Folded Reload
	addiw	a0, s6, 1
	li	a4, 360
	mul	a2, a1, a4
	add	a2, s10, a2
	slli	a3, a0, 2
	add	a2, a2, a3
	sw	zero, 0(a2)
	lui	a3, 32
	add	a2, a2, a3
	sw	zero, 328(a2)
.LBB0_360:                              #   in Loop: Header=BB0_207 Depth=2
	mul	a1, a1, a4
	add	a2, s4, a1
	slli	a0, a0, 2
	add	a2, a2, a0
	addi	a3, a5, -5
	sw	a5, 0(a2)
	li	a2, -2
	bltu	a3, a2, .LBB0_363
# %bb.361:                              #   in Loop: Header=BB0_207 Depth=2
	lui	a2, %hi(pb_frame)
	lw	a2, %lo(pb_frame)(a2)
	bnez	a2, .LBB0_363
# %bb.362:                              #   in Loop: Header=BB0_207 Depth=2
	add	a1, s10, a1
	add	a0, a1, a0
	lui	a1, 32
	add	a1, a0, a1
	sw	zero, 328(a1)
	sw	zero, 0(a0)
.LBB0_363:                              #   in Loop: Header=BB0_207 Depth=2
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	j	.LBB0_14
.LBB0_364:                              #   in Loop: Header=BB0_207 Depth=2
	mv	a5, s5
	li	s5, 0
	addi	a0, a5, -5
	sltiu	a0, a0, -2
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	snez	a1, a1
	or	a0, a0, a1
	slli	a1, s0, 2
	addi	a0, a0, -1
	andi	a0, a0, 60
	xor	a0, a1, a0
	srai	a1, s11, 4
	or	a0, a0, a1
	sd	a0, 336(sp)                     # 8-byte Folded Spill
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	addiw	a1, a1, 1
	ld	s6, 320(sp)                     # 8-byte Folded Reload
	addiw	a0, s6, 1
	li	a4, 360
	j	.LBB0_360
.LBB0_365:                              #   in Loop: Header=BB0_10 Depth=1
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	mv	a3, a1
	ld	a0, 336(sp)                     # 8-byte Folded Reload
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	sd	a2, 248(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(trace)
	j	.LBB0_10
.LBB0_366:                              #   in Loop: Header=BB0_10 Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	ld	a0, 336(sp)                     # 8-byte Folded Reload
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(trace)
	j	.LBB0_10
.LBB0_367:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_369
# %bb.368:
	lui	a0, %hi(.Lstr.27)
	addi	a0, a0, %lo(.Lstr.27)
	call	puts
.LBB0_369:
	lui	a0, %hi(pb_frame)
	lw	a0, %lo(pb_frame)(a0)
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB0_374
# %bb.370:
	lui	a0, %hi(expand)
	lw	a0, %lo(expand)(a0)
	beqz	a0, .LBB0_373
# %bb.371:
	lui	a0, %hi(outtype)
	lw	a0, %lo(outtype)(a0)
	li	a1, 4
	bne	a0, a1, .LBB0_373
# %bb.372:
	lui	a4, %hi(bframe)
	ld	a0, %lo(bframe)(a4)
	lui	a5, %hi(exnewframe)
	ld	a1, %lo(exnewframe)(a5)
	lui	a2, %hi(coded_picture_width)
	lw	a2, %lo(coded_picture_width)(a2)
	lui	a3, %hi(coded_picture_height)
	lw	a3, %lo(coded_picture_height)(a3)
	addi	s0, a4, %lo(bframe)
	addi	s3, a5, %lo(exnewframe)
	call	interpolate_image
	ld	a0, 8(s0)
	ld	a1, 8(s3)
	lui	s1, %hi(chrom_width)
	lw	a2, %lo(chrom_width)(s1)
	lui	s2, %hi(chrom_height)
	lw	a3, %lo(chrom_height)(s2)
	call	interpolate_image
	ld	a0, 16(s0)
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 16(s3)
	lw	a2, %lo(chrom_width)(s1)
	lw	a3, %lo(chrom_height)(s2)
	call	interpolate_image
.LBB0_373:
	lw	a1, 0(s4)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	call	storeframe
	lui	a0, %hi(pb_frame)
	lw	a0, %lo(pb_frame)(a0)
	lw	a1, 0(s4)
	add	a0, a1, a0
	sw	a0, 0(s4)
.LBB0_374:
	lui	a0, %hi(expand)
	lw	a0, %lo(expand)(a0)
	lui	s0, %hi(newframe)
	addi	s0, s0, %lo(newframe)
	beqz	a0, .LBB0_377
# %bb.375:
	lui	a0, %hi(outtype)
	lw	a0, %lo(outtype)(a0)
	li	a1, 4
	bne	a0, a1, .LBB0_377
# %bb.376:
	lui	a4, %hi(newframe)
	ld	a0, %lo(newframe)(a4)
	lui	a5, %hi(exnewframe)
	ld	a1, %lo(exnewframe)(a5)
	lui	a2, %hi(coded_picture_width)
	lw	a2, %lo(coded_picture_width)(a2)
	lui	a3, %hi(coded_picture_height)
	lw	a3, %lo(coded_picture_height)(a3)
	addi	s1, a4, %lo(newframe)
	addi	s0, a5, %lo(exnewframe)
	call	interpolate_image
	ld	a0, 8(s1)
	ld	a1, 8(s0)
	lui	s2, %hi(chrom_width)
	lw	a2, %lo(chrom_width)(s2)
	lui	s3, %hi(chrom_height)
	lw	a3, %lo(chrom_height)(s3)
	call	interpolate_image
	ld	a0, 16(s1)
	ld	a1, 16(s0)
	lw	a2, %lo(chrom_width)(s2)
	lw	a3, %lo(chrom_height)(s3)
	call	interpolate_image
.LBB0_377:
	lw	a1, 0(s4)
	mv	a0, s0
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s0, 448(sp)                     # 8-byte Folded Reload
	ld	s1, 440(sp)                     # 8-byte Folded Reload
	ld	s2, 432(sp)                     # 8-byte Folded Reload
	ld	s3, 424(sp)                     # 8-byte Folded Reload
	ld	s4, 416(sp)                     # 8-byte Folded Reload
	ld	s5, 408(sp)                     # 8-byte Folded Reload
	ld	s6, 400(sp)                     # 8-byte Folded Reload
	ld	s7, 392(sp)                     # 8-byte Folded Reload
	ld	s8, 384(sp)                     # 8-byte Folded Reload
	ld	s9, 376(sp)                     # 8-byte Folded Reload
	ld	s10, 368(sp)                    # 8-byte Folded Reload
	ld	s11, 360(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 464
	tail	storeframe
.LBB0_378:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	li	a1, 44
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.Lfunc_end0:
	.size	getpicture, .Lfunc_end0-getpicture
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_275
	.word	.LBB0_275
	.word	.LBB0_278
	.word	.LBB0_276
	.word	.LBB0_279
.LJTI0_1:
	.word	.LBB0_293
	.word	.LBB0_293
	.word	.LBB0_296
	.word	.LBB0_294
	.word	.LBB0_297
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function make_edge_image
	.type	make_edge_image,@function
make_edge_image:                        # @make_edge_image
# %bb.0:
	addi	sp, sp, -64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	s4, 24(sp)                      # 8-byte Folded Spill
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	blez	a3, .LBB1_13
# %bb.1:
	slli	a6, a4, 1
	addw	a5, a6, a2
	blez	a2, .LBB1_7
# %bb.2:
	li	a7, 0
	li	t0, 0
	mv	t1, a0
	mv	t2, a1
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	mul	t3, a5, a7
	add	t4, a1, a2
	add	t3, t4, t3
	mv	t4, t1
	mv	t5, t2
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t6, 0(t4)
	sb	t6, 0(t5)
	addi	t5, t5, 1
	addi	t4, t4, 1
	bne	t5, t3, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	add	t2, t2, a5
	add	t1, t1, a2
	addiw	t0, t0, 1
	addi	a7, a7, 1
	bne	t0, a3, .LBB1_3
# %bb.6:
	blez	a3, .LBB1_13
.LBB1_7:
	blez	a4, .LBB1_24
# %bb.8:
	li	a7, 0
	li	t0, 0
	addi	t1, a1, -1
	add	t2, a1, a2
	add	t3, a2, a4
	mv	t4, a0
.LBB1_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	mul	t5, a5, a7
	add	t5, t3, t5
	add	t6, a1, t5
	add	t5, t4, a2
	mv	s0, t1
	mv	s1, t2
.LBB1_10:                               #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s2, 0(t4)
	sb	s2, 0(s0)
	lbu	s2, -1(t5)
	sb	s2, 0(s1)
	addi	s1, s1, 1
	addi	s0, s0, -1
	bne	s1, t6, .LBB1_10
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	add	t1, t1, a5
	addiw	t0, t0, 1
	add	t2, t2, a5
	addi	a7, a7, 1
	mv	t4, t5
	bne	t0, a3, .LBB1_9
# %bb.12:
	bgtz	a4, .LBB1_14
	j	.LBB1_24
.LBB1_13:
	slli	a6, a4, 1
	addw	a5, a6, a2
	blez	a4, .LBB1_24
.LBB1_14:
	addi	t3, a3, -1
	mulw	a7, t3, a2
	add	a7, a0, a7
	blez	a2, .LBB1_20
# %bb.15:
	li	t0, 0
	li	t1, 0
	neg	t2, a5
	mulw	t3, a5, t3
	add	t5, a5, t3
	add	t3, a1, t5
	add	t4, a1, t2
	add	t5, t5, a2
.LBB1_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	mul	t6, a5, t0
	add	t6, t5, t6
	add	t6, a1, t6
	mv	s0, a0
	mv	s1, t4
	mv	s2, a7
	mv	s3, t3
.LBB1_17:                               #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s4, 0(s0)
	sb	s4, 0(s1)
	lbu	s4, 0(s2)
	sb	s4, 0(s3)
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	s1, s1, 1
	addi	s0, s0, 1
	bne	s3, t6, .LBB1_17
# %bb.18:                               #   in Loop: Header=BB1_16 Depth=1
	addiw	t1, t1, 1
	add	t3, t3, a5
	add	t4, t4, t2
	addi	t0, t0, 1
	bne	t1, a4, .LBB1_16
# %bb.19:
	blez	a4, .LBB1_24
.LBB1_20:
	li	t0, 0
	li	t1, 0
	add	t2, a0, a2
	add	t3, a7, a2
	mulw	t4, a5, a3
	slli	a6, a6, 32
	srli	a6, a6, 32
	slli	a3, a4, 32
	srli	t6, a3, 32
	add	a3, a2, t4
	add	a6, a2, a6
	sub	a2, a2, a5
	addi	t4, t4, -1
	not	t5, a5
	add	t6, a3, t6
.LBB1_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	mul	s0, a6, t0
	add	s0, t6, s0
	mv	s1, t5
	mv	s2, t4
	mv	s3, a2
	mv	s4, a3
.LBB1_22:                               #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s5, 0(a0)
	add	s6, a1, s1
	sb	s5, 0(s6)
	lbu	s5, -1(t2)
	add	s6, a1, s3
	sb	s5, 0(s6)
	lbu	s5, 0(a7)
	add	s6, a1, s2
	sb	s5, 0(s6)
	lbu	s5, -1(t3)
	add	s6, a1, s4
	sb	s5, 0(s6)
	addi	s4, s4, 1
	addi	s3, s3, 1
	addi	s2, s2, -1
	addi	s1, s1, -1
	bne	s4, s0, .LBB1_22
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=1
	addiw	t1, t1, 1
	add	a3, a3, a6
	sub	a2, a2, a5
	add	t4, t4, a6
	sub	t5, t5, a5
	addi	t0, t0, 1
	bne	t1, a4, .LBB1_21
.LBB1_24:
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	ld	s6, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	make_edge_image, .Lfunc_end1-make_edge_image
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	interpolate_image               # -- Begin function interpolate_image
	.p2align	2
	.type	interpolate_image,@function
interpolate_image:                      # @interpolate_image
# %bb.0:
	addi	sp, sp, -96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	slliw	a5, a2, 1
	addi	a6, a2, -1
	li	a7, 2
	slliw	a4, a2, 2
	blt	a3, a7, .LBB2_6
# %bb.1:
	li	t0, 1
	addiw	a3, a3, -1
	bge	t0, a2, .LBB2_7
# %bb.2:
	li	t1, 0
	li	t2, 0
	slli	t0, a6, 32
	srli	s0, t0, 32
	add	t3, a0, a2
	addi	t4, a1, 1
	add	t5, t4, a5
	addi	t6, a0, 1
	add	s0, a2, s0
	mv	t0, a0
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	mul	s1, a2, t1
	add	s1, s0, s1
	add	s2, a0, s1
	add	s1, a1, a5
	mv	s3, t4
	mv	s4, t6
	mv	s5, t5
	mv	s6, t3
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s7, -1(s4)
	sb	s7, -1(s3)
	lbu	s8, 0(s4)
	add	s7, s8, s7
	srli	s7, s7, 1
	sb	s7, 0(s3)
	lbu	s7, -1(s4)
	lbu	s8, 0(s6)
	add	s7, s8, s7
	srli	s7, s7, 1
	sb	s7, -1(s5)
	lbu	s7, -1(s4)
	lbu	s8, 0(s4)
	lbu	s9, 0(s6)
	lbu	s10, 1(s6)
	add	s7, s8, s7
	addi	s8, s6, 1
	add	s9, s9, s10
	add	s7, s7, s9
	srli	s6, s7, 2
	sb	s6, 0(s5)
	addi	s5, s5, 2
	addi	s4, s4, 1
	addi	s3, s3, 2
	mv	s6, s8
	bne	s8, s2, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	add	t0, t0, a2
	lbu	s2, -1(t0)
	sb	s2, -2(s1)
	sb	s2, -1(s1)
	add	s2, t0, a2
	lbu	s2, -1(s2)
	add	s1, s1, a5
	sb	s2, -2(s1)
	sb	s2, -1(s1)
	add	a1, a1, a4
	addiw	t2, t2, 1
	add	t3, t3, a2
	add	t5, t5, a4
	add	t6, t6, a2
	add	t4, t4, a4
	addi	t1, t1, 1
	bne	t2, a3, .LBB2_3
	j	.LBB2_9
.LBB2_6:
	mv	t0, a0
	j	.LBB2_9
.LBB2_7:
	add	t0, a0, a2
	lbu	t3, -1(t0)
	slli	t1, a2, 1
	addi	t1, t1, -1
	addi	t2, a2, -1
	slli	t4, a5, 1
	addi	t4, t4, -2
	addi	t5, a5, -2
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	add	t0, a0, t2
	add	t6, a1, t5
	sb	t3, 0(t6)
	lbu	t0, 0(t0)
	sb	t0, 1(t6)
	add	t0, a0, t1
	lbu	t3, 0(t0)
	add	t0, a0, a2
	add	a0, a1, t4
	sb	t3, 0(a0)
	sb	t3, 1(a0)
	addiw	a3, a3, -1
	add	a1, a1, a4
	mv	a0, t0
	bnez	a3, .LBB2_8
.LBB2_9:
	blt	a2, a7, .LBB2_12
# %bb.10:
	addi	a0, a1, 1
	add	a3, a0, a5
	addi	a7, t0, 1
	slli	a6, a6, 32
	srli	a6, a6, 31
	add	t1, a0, a5
	add	a6, t1, a6
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	lbu	t1, -1(a7)
	sb	t1, -1(a0)
	lbu	t2, 0(a7)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, 0(a0)
	lbu	t1, -1(a7)
	sb	t1, -1(a3)
	lbu	t2, 0(a7)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, 0(a3)
	addi	a3, a3, 2
	addi	a0, a0, 2
	addi	a7, a7, 1
	bne	a3, a6, .LBB2_11
.LBB2_12:
	add	a2, t0, a2
	lbu	a0, -1(a2)
	add	a5, a1, a5
	sb	a0, -2(a5)
	sb	a0, -1(a5)
	lbu	a0, -1(a2)
	add	a1, a1, a4
	sb	a0, -2(a1)
	sb	a0, -1(a1)
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end2:
	.size	interpolate_image, .Lfunc_end2-interpolate_image
                                        # -- End function
	.option	pop
	.type	.L__const.getMBs.DQ_tab,@object # @__const.getMBs.DQ_tab
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.getMBs.DQ_tab:
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	1                               # 0x1
	.word	2                               # 0x2
	.size	.L__const.getMBs.DQ_tab, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"frame %d, MB %d\n"
	.size	.L.str, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"GQUANT: %d\n"
	.size	.L.str.3, 12

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"COD Index: %d COD: %d \n"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MCBPC Index: %d MCBPC: %d \n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"MODB: %d\n"
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"CBPB = %d\n"
	.size	.L.str.8, 11

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"CBPY Index: %d CBPY %d \n"
	.size	.L.str.9, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"DQUANT Index: %d DQUANT %d \n"
	.size	.L.str.11, 29

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"DQUANT ("
	.size	.L.str.12, 9

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"): %d = %d\n"
	.size	.L.str.13, 12

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"mvx_index: %d mvy_index: %d \n"
	.size	.L.str.15, 30

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"mvx: %d\n"
	.size	.L.str.16, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"mvy: %d\n"
	.size	.L.str.17, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"MVDB x: %d\n"
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"MVDB y: %d\n"
	.size	.L.str.21, 12

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"INTRADC Index: %d INTRADC: %d \n"
	.size	.L.str.22, 32

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"DC[%d]: ("
	.size	.L.str.23, 10

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"): %d\n"
	.size	.L.str.24, 7

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Illegal DC-coeff: 1000000\n"
	.size	.L.str.25, 27

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Illegal block number in find_pmv (getpic.c)\n"
	.size	.L.str.26, 45

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Warning: A Fault Condition Has Occurred - Resyncing "
	.size	.Lstr, 53

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"GN out of range"
	.size	.Lstr.27, 16

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"Arithmetic Decoding Debug "
	.size	.Lstr.28, 27

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"8x8 vectors not allowed in normal prediction mode"
	.size	.Lstr.29, 50

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"Quantizer out of range: clipping"
	.size	.Lstr.30, 33

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	"mvx out of range: searching for sync"
	.size	.Lstr.31, 37

	.type	.Lstr.32,@object                # @str.32
.Lstr.32:
	.asciz	"mvy out of range: searching for sync"
	.size	.Lstr.32, 37

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
