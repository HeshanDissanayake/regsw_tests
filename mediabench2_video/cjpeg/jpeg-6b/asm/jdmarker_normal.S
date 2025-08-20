	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdmarker.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_resync_to_restart          # -- Begin function jpeg_resync_to_restart
	.p2align	2
	.type	jpeg_resync_to_restart,@function
jpeg_resync_to_restart:                 # @jpeg_resync_to_restart
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
	lw	s2, 540(a0)
	ld	a0, 0(a0)
	sw	s2, 44(a0)
	ld	a2, 0(s0)
	mv	s1, a1
	li	a1, 121
	sw	a1, 40(a0)
	sw	s1, 48(a2)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	addi	a0, s1, 1
	andi	a0, a0, 7
	addi	s3, a0, 208
	addi	a0, s1, 2
	andi	a0, a0, 7
	addi	s4, a0, 208
	addi	a0, s1, -1
	andi	a0, a0, 7
	addi	s5, a0, 208
	addi	s1, s1, 6
	andi	s1, s1, 7
	addi	s1, s1, 208
	li	s6, 192
	li	s7, 97
	li	s8, 2
	li	s9, -8
	blt	s2, s6, .LBB0_6
.LBB0_1:
	addiw	a0, s2, -216
	bltu	a0, s9, .LBB0_8
# %bb.2:
	beq	s2, s3, .LBB0_8
# %bb.3:
	beq	s2, s4, .LBB0_8
# %bb.4:
	beq	s2, s5, .LBB0_6
# %bb.5:
	bne	s2, s1, .LBB0_9
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	sw	s2, 44(a0)
	ld	a1, 0(s0)
	sw	s7, 40(a0)
	sw	s8, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 4
	mv	a0, s0
	jalr	a2
	mv	a0, s0
	call	next_marker
	beqz	a0, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	lw	s2, 540(s0)
	bge	s2, s6, .LBB0_1
	j	.LBB0_6
.LBB0_8:
	ld	a0, 0(s0)
	sw	s2, 44(a0)
	ld	a1, 0(s0)
	li	a2, 97
	sw	a2, 40(a0)
	li	a0, 3
	sw	a0, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 4
	mv	a0, s0
	jalr	a2
	li	a0, 1
	j	.LBB0_10
.LBB0_9:
	ld	a0, 0(s0)
	sw	s2, 44(a0)
	ld	a1, 0(s0)
	li	a2, 97
	sw	a2, 40(a0)
	li	a0, 1
	sw	a0, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 4
	mv	a0, s0
	jalr	a2
	li	a0, 1
	sw	zero, 540(s0)
.LBB0_10:
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
.Lfunc_end0:
	.size	jpeg_resync_to_restart, .Lfunc_end0-jpeg_resync_to_restart
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function next_marker
	.type	next_marker,@function
next_marker:                            # @next_marker
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 40(a0)
	ld	s4, 0(s1)
	ld	s3, 8(s1)
	li	s2, 255
	beqz	s3, .LBB1_2
.LBB1_1:
	lbu	a1, 0(s4)
	addi	a0, s4, 1
	addi	s3, s3, -1
	bne	a1, s2, .LBB1_7
	j	.LBB1_4
.LBB1_2:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB1_18
# %bb.3:
	ld	s4, 0(s1)
	ld	s3, 8(s1)
	lbu	a1, 0(s4)
	addi	a0, s4, 1
	addi	s3, s3, -1
	bne	a1, s2, .LBB1_7
.LBB1_4:
	mv	s4, a0
	j	.LBB1_10
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	ld	a0, 0(s1)
	ld	s3, 8(s1)
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	lbu	a1, 0(a0)
	addi	s4, a0, 1
	addi	s3, s3, -1
	mv	a0, s4
	beq	a1, s2, .LBB1_10
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 584(s0)
	lw	a2, 36(a1)
	addi	a2, a2, 1
	sw	a2, 36(a1)
	sd	a0, 0(s1)
	sd	s3, 8(s1)
	bnez	s3, .LBB1_6
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_5
	j	.LBB1_18
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	lbu	s5, 0(s4)
	addi	s3, s3, -1
	addi	s4, s4, 1
	bne	s5, s2, .LBB1_13
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	bnez	s3, .LBB1_9
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB1_18
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=1
	ld	s4, 0(s1)
	ld	s3, 8(s1)
	j	.LBB1_9
.LBB1_13:
	bnez	s5, .LBB1_15
# %bb.14:
	ld	a0, 584(s0)
	lw	a1, 36(a0)
	addi	a1, a1, 2
	sw	a1, 36(a0)
	sd	s4, 0(s1)
	sd	s3, 8(s1)
	bnez	s3, .LBB1_1
	j	.LBB1_2
.LBB1_15:
	ld	a0, 584(s0)
	lw	a0, 36(a0)
	beqz	a0, .LBB1_17
# %bb.16:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 116
	sw	a2, 40(a1)
	sw	s5, 48(a0)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	ld	a0, 584(s0)
	sw	zero, 36(a0)
.LBB1_17:
	sw	s5, 540(s0)
	sd	s4, 0(s1)
	sd	s3, 8(s1)
	li	a0, 1
.LBB1_18:
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
	.size	next_marker, .Lfunc_end1-next_marker
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_marker_reader             # -- Begin function jinit_marker_reader
	.p2align	2
	.type	jinit_marker_reader,@function
jinit_marker_reader:                    # @jinit_marker_reader
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a2, 264
	mv	a0, s0
	li	a1, 0
	jalr	a3
	sd	a0, 584(s0)
	lui	a1, %hi(reset_marker_reader)
	addi	a1, a1, %lo(reset_marker_reader)
	sd	a1, 0(a0)
	lui	a1, %hi(read_markers)
	addi	a1, a1, %lo(read_markers)
	sd	a1, 8(a0)
	lui	a1, %hi(read_restart_marker)
	addi	a1, a1, %lo(read_restart_marker)
	sd	a1, 16(a0)
	lui	a1, %hi(skip_variable)
	addi	a1, a1, %lo(skip_variable)
	sd	a1, 40(a0)
	sd	zero, 176(a0)
	sd	a1, 56(a0)
	sw	zero, 184(a0)
	sd	a1, 64(a0)
	sw	zero, 188(a0)
	sd	a1, 72(a0)
	sw	zero, 192(a0)
	sd	a1, 80(a0)
	sw	zero, 196(a0)
	sd	a1, 88(a0)
	sw	zero, 200(a0)
	sd	a1, 96(a0)
	sw	zero, 204(a0)
	sd	a1, 104(a0)
	sw	zero, 208(a0)
	sd	a1, 112(a0)
	sw	zero, 212(a0)
	sd	a1, 120(a0)
	sw	zero, 216(a0)
	sd	a1, 128(a0)
	sw	zero, 220(a0)
	sd	a1, 136(a0)
	sw	zero, 224(a0)
	sd	a1, 144(a0)
	sw	zero, 228(a0)
	sd	a1, 152(a0)
	sw	zero, 232(a0)
	sw	zero, 236(a0)
	sd	a1, 168(a0)
	sw	zero, 240(a0)
	lui	a1, %hi(get_interesting_appn)
	addi	a1, a1, %lo(get_interesting_appn)
	sd	a1, 48(a0)
	sd	a1, 160(a0)
	ld	a0, 584(s0)
	sd	zero, 304(s0)
	sw	zero, 172(s0)
	sw	zero, 540(s0)
	sd	zero, 24(a0)
	sw	zero, 36(a0)
	sd	zero, 248(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	jinit_marker_reader, .Lfunc_end2-jinit_marker_reader
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function reset_marker_reader
	.type	reset_marker_reader,@function
reset_marker_reader:                    # @reset_marker_reader
# %bb.0:
	ld	a1, 584(a0)
	sd	zero, 304(a0)
	sw	zero, 172(a0)
	sw	zero, 540(a0)
	sd	zero, 24(a1)
	sw	zero, 36(a1)
	sd	zero, 248(a1)
	ret
.Lfunc_end3:
	.size	reset_marker_reader, .Lfunc_end3-reset_marker_reader
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_markers
	.type	read_markers,@function
read_markers:                           # @read_markers
# %bb.0:
	addi	sp, sp, -528
	sd	ra, 520(sp)                     # 8-byte Folded Spill
	sd	s0, 512(sp)                     # 8-byte Folded Spill
	sd	s1, 504(sp)                     # 8-byte Folded Spill
	sd	s2, 496(sp)                     # 8-byte Folded Spill
	sd	s3, 488(sp)                     # 8-byte Folded Spill
	sd	s4, 480(sp)                     # 8-byte Folded Spill
	sd	s5, 472(sp)                     # 8-byte Folded Spill
	sd	s6, 464(sp)                     # 8-byte Folded Spill
	sd	s7, 456(sp)                     # 8-byte Folded Spill
	sd	s8, 448(sp)                     # 8-byte Folded Spill
	sd	s9, 440(sp)                     # 8-byte Folded Spill
	sd	s10, 432(sp)                    # 8-byte Folded Spill
	sd	s11, 424(sp)                    # 8-byte Folded Spill
	mv	s0, a0
	addi	s10, a0, 200
	addi	s11, a0, 264
	addi	a0, a0, 232
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	a0, s0, 320
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	addi	a0, s0, 336
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	addi	a0, s0, 352
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lw	s1, 540(s0)
	li	s6, 255
	li	s7, 53
	li	s8, 216
	li	s5, 253
	lui	s3, %hi(.LJTI4_0)
	addi	s3, s3, %lo(.LJTI4_0)
	lui	a0, 16
	addi	a0, a0, 1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB4_3
.LBB4_1:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 584(s0)
	slli	s1, s1, 3
	add	a0, s1, a0
	ld	a1, -1744(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	li	s1, 0
	sw	zero, 540(s0)
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_59 Depth 2
                                        #       Child Loop BB4_73 Depth 3
                                        #       Child Loop BB4_68 Depth 3
                                        #       Child Loop BB4_81 Depth 3
                                        #     Child Loop BB4_103 Depth 2
                                        #       Child Loop BB4_161 Depth 3
	beqz	s1, .LBB4_8
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	addi	a0, s1, -1
	bltu	s5, a0, .LBB4_23
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	slli	a0, a0, 2
	add	a0, a0, s3
	lw	a0, 0(a0)
	jr	a0
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a2, 8(a1)
	li	a1, 92
	sw	a1, 40(a0)
	li	a1, 1
	mv	a0, s0
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	jalr	a2
	j	.LBB4_2
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 584(s0)
	lw	a0, 24(a0)
	beqz	a0, .LBB4_13
# %bb.9:                                #   in Loop: Header=BB4_3 Depth=1
	mv	a0, s0
	call	next_marker
	beqz	a0, .LBB4_177
# %bb.10:                               #   in Loop: Header=BB4_3 Depth=1
	lw	s1, 540(s0)
	addi	a0, s1, -1
	bgeu	s5, a0, .LBB4_5
	j	.LBB4_23
.LBB4_11:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 60
.LBB4_12:                               #   in Loop: Header=BB4_3 Depth=1
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB4_2
.LBB4_13:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s2, 40(s0)
	ld	s4, 8(s2)
	beqz	s4, .LBB4_16
# %bb.14:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s5, 0(s2)
	lbu	s3, 0(s5)
	addi	s4, s4, -1
	beqz	s4, .LBB4_18
.LBB4_15:                               #   in Loop: Header=BB4_3 Depth=1
	addi	s5, s5, 1
	lbu	s1, 0(s5)
	beq	s3, s6, .LBB4_20
	j	.LBB4_21
.LBB4_16:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s2)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.17:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s4, 8(s2)
	ld	s5, 0(s2)
	lbu	s3, 0(s5)
	addi	s4, s4, -1
	bnez	s4, .LBB4_15
.LBB4_18:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s2)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.19:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s5, 0(s2)
	ld	s4, 8(s2)
	lbu	s1, 0(s5)
	bne	s3, s6, .LBB4_21
.LBB4_20:                               #   in Loop: Header=BB4_3 Depth=1
	beq	s1, s8, .LBB4_22
.LBB4_21:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	sw	s3, 44(a0)
	ld	a1, 0(s0)
	sw	s7, 40(a0)
	sw	s1, 48(a1)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB4_22:                               #   in Loop: Header=BB4_3 Depth=1
	addi	s4, s4, -1
	addi	s5, s5, 1
	sw	s1, 540(s0)
	sd	s5, 0(s2)
	sd	s4, 8(s2)
	li	s5, 253
	lui	s3, %hi(.LJTI4_0)
	addi	s3, s3, %lo(.LJTI4_0)
	addi	a0, s1, -1
	bgeu	s5, a0, .LBB4_5
.LBB4_23:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 68
	j	.LBB4_12
.LBB4_24:                               #   in Loop: Header=BB4_3 Depth=1
	mv	a0, s0
	li	a1, 0
	li	a2, 0
	call	get_sof
	bnez	a0, .LBB4_2
	j	.LBB4_177
.LBB4_25:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s1, 40(s0)
	ld	a0, 8(s1)
	beqz	a0, .LBB4_44
# %bb.26:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 0(s1)
	lbu	s2, 0(a1)
	addi	a0, a0, -1
	beqz	a0, .LBB4_46
.LBB4_27:                               #   in Loop: Header=BB4_3 Depth=1
	addi	a1, a1, 1
	j	.LBB4_48
.LBB4_28:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s1, 40(s0)
	ld	s5, 8(s1)
	beqz	s5, .LBB4_50
# %bb.29:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s3, 0(s1)
	lbu	s2, 0(s3)
	addi	s5, s5, -1
	beqz	s5, .LBB4_52
.LBB4_30:                               #   in Loop: Header=BB4_3 Depth=1
	addi	s3, s3, 1
	j	.LBB4_54
.LBB4_31:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s1, 40(s0)
	ld	s3, 8(s1)
	beqz	s3, .LBB4_84
# %bb.32:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s2, 0(s1)
	lbu	s4, 0(s2)
	addi	s3, s3, -1
	beqz	s3, .LBB4_86
.LBB4_33:                               #   in Loop: Header=BB4_3 Depth=1
	addi	s2, s2, 1
	j	.LBB4_88
.LBB4_34:                               #   in Loop: Header=BB4_3 Depth=1
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	ld	s4, 40(s0)
	ld	s7, 8(s4)
	beqz	s7, .LBB4_93
# %bb.35:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s11, 0(s4)
	lbu	s1, 0(s11)
	addi	s7, s7, -1
	beqz	s7, .LBB4_95
.LBB4_36:                               #   in Loop: Header=BB4_3 Depth=1
	addi	s11, s11, 1
	j	.LBB4_97
.LBB4_37:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 584(s0)
	ld	a1, 40(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB4_2
	j	.LBB4_177
.LBB4_38:                               #   in Loop: Header=BB4_3 Depth=1
	li	a1, 1
	li	a2, 1
	mv	a0, s0
	call	get_sof
	bnez	a0, .LBB4_2
	j	.LBB4_177
.LBB4_39:                               #   in Loop: Header=BB4_3 Depth=1
	li	a1, 1
	mv	a0, s0
	li	a2, 0
	call	get_sof
	bnez	a0, .LBB4_2
	j	.LBB4_177
.LBB4_40:                               #   in Loop: Header=BB4_3 Depth=1
	li	a2, 1
	mv	a0, s0
	li	a1, 0
	call	get_sof
	bnez	a0, .LBB4_2
	j	.LBB4_177
.LBB4_41:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 102
	sw	a1, 40(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	ld	s1, 584(s0)
	lw	a0, 24(s1)
	beqz	a0, .LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 61
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	ld	s1, 584(s0)
.LBB4_43:                               #   in Loop: Header=BB4_3 Depth=1
	li	a2, 16
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	li	a1, 0
	call	memset
	li	a1, 1
	li	a2, 16
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	call	memset
	li	a1, 5
	li	a2, 16
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	call	memset
	sd	zero, 368(s0)
	sw	zero, 60(s0)
	sw	zero, 392(s0)
	li	a0, 257
	sh	a0, 376(s0)
	sb	zero, 378(s0)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	sw	a0, 380(s0)
	sw	zero, 384(s0)
	sb	zero, 388(s0)
	li	a0, 1
	sw	a0, 24(s1)
	j	.LBB4_2
.LBB4_44:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.45:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 8(s1)
	ld	a1, 0(s1)
	lbu	s2, 0(a1)
	addi	a0, a0, -1
	bnez	a0, .LBB4_27
.LBB4_46:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.47:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 0(s1)
	ld	a0, 8(s1)
.LBB4_48:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a2, 0(s0)
	lw	a3, 540(s0)
	lbu	a4, 0(a1)
	slli	s2, s2, 8
	sw	a3, 44(a2)
	ld	a3, 0(s0)
	or	s2, s2, a4
	addi	s4, s2, -2
	li	a4, 91
	sw	a4, 40(a2)
	sw	s4, 48(a3)
	ld	a2, 0(s0)
	ld	a2, 8(a2)
	addi	s3, a0, -1
	addi	s5, a1, 1
	li	a1, 1
	mv	a0, s0
	jalr	a2
	sd	s5, 0(s1)
	sd	s3, 8(s1)
	li	s5, 253
	lui	s3, %hi(.LJTI4_0)
	addi	s3, s3, %lo(.LJTI4_0)
	li	a0, 3
	bltu	s2, a0, .LBB4_2
# %bb.49:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 40(s0)
	ld	a2, 32(a0)
	mv	a0, s0
	mv	a1, s4
	j	.LBB4_7
.LBB4_50:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.51:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s5, 8(s1)
	ld	s3, 0(s1)
	lbu	s2, 0(s3)
	addi	s5, s5, -1
	bnez	s5, .LBB4_30
.LBB4_52:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.53:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s3, 0(s1)
	ld	s5, 8(s1)
.LBB4_54:                               #   in Loop: Header=BB4_3 Depth=1
	lbu	a0, 0(s3)
	slli	s2, s2, 8
	addi	s5, s5, -1
	addi	s3, s3, 1
	or	a0, s2, a0
	addi	s2, a0, -2
	li	a1, 3
	bgeu	a0, a1, .LBB4_59
.LBB4_55:                               #   in Loop: Header=BB4_3 Depth=1
	beqz	s2, .LBB4_57
# %bb.56:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 11
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_57:                               #   in Loop: Header=BB4_3 Depth=1
	sd	s3, 0(s1)
	sd	s5, 8(s1)
	j	.LBB4_101
.LBB4_58:                               #   in Loop: Header=BB4_59 Depth=2
	add	s2, a0, s2
	li	s6, 255
	li	s7, 53
	blez	s2, .LBB4_55
.LBB4_59:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_73 Depth 3
                                        #       Child Loop BB4_68 Depth 3
                                        #       Child Loop BB4_81 Depth 3
	bnez	s5, .LBB4_62
# %bb.60:                               #   in Loop: Header=BB4_59 Depth=2
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.61:                               #   in Loop: Header=BB4_59 Depth=2
	ld	s3, 0(s1)
	ld	s5, 8(s1)
.LBB4_62:                               #   in Loop: Header=BB4_59 Depth=2
	lbu	s7, 0(s3)
	ld	a0, 0(s0)
	andi	s4, s7, 15
	sw	s4, 44(a0)
	ld	a1, 0(s0)
	srli	a2, s7, 4
	li	a3, 81
	sw	a3, 40(a0)
	sw	a2, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	li	a0, 4
	bltu	s4, a0, .LBB4_64
# %bb.63:                               #   in Loop: Header=BB4_59 Depth=2
	ld	a0, 0(s0)
	sw	s4, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 31
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_64:                               #   in Loop: Header=BB4_59 Depth=2
	slli	s4, s4, 3
	add	s6, s10, s4
	ld	s4, 0(s6)
	bnez	s4, .LBB4_66
# %bb.65:                               #   in Loop: Header=BB4_59 Depth=2
	mv	a0, s0
	call	jpeg_alloc_quant_table
	mv	s4, a0
	sd	a0, 0(s6)
.LBB4_66:                               #   in Loop: Header=BB4_59 Depth=2
	addi	s5, s5, -1
	addi	s3, s3, 1
	li	s6, 64
	lui	s8, %hi(jpeg_natural_order)
	addi	s8, s8, %lo(jpeg_natural_order)
	li	a0, 16
	bltu	s7, a0, .LBB4_68
	j	.LBB4_73
.LBB4_67:                               #   in Loop: Header=BB4_68 Depth=3
	lw	a0, 0(s8)
	lbu	a1, 0(s3)
	slli	a0, a0, 1
	add	a0, s4, a0
	sh	a1, 0(a0)
	addi	s5, s5, -1
	addi	s3, s3, 1
	addi	s6, s6, -1
	addi	s8, s8, 4
	beqz	s6, .LBB4_79
.LBB4_68:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	s5, .LBB4_67
# %bb.69:                               #   in Loop: Header=BB4_68 Depth=3
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.70:                               #   in Loop: Header=BB4_68 Depth=3
	ld	s3, 0(s1)
	ld	s5, 8(s1)
	j	.LBB4_67
.LBB4_71:                               #   in Loop: Header=BB4_73 Depth=3
	addi	s3, s3, 1
.LBB4_72:                               #   in Loop: Header=BB4_73 Depth=3
	lbu	a0, 0(s3)
	lw	a1, 0(s8)
	slli	s9, s9, 8
	or	a0, s9, a0
	slli	a1, a1, 1
	add	a1, s4, a1
	sh	a0, 0(a1)
	addi	s5, s5, -1
	addi	s3, s3, 1
	addi	s6, s6, -1
	addi	s8, s8, 4
	beqz	s6, .LBB4_79
.LBB4_73:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	s5, .LBB4_75
# %bb.74:                               #   in Loop: Header=BB4_73 Depth=3
	lbu	s9, 0(s3)
	addi	s5, s5, -1
	bnez	s5, .LBB4_71
	j	.LBB4_77
.LBB4_75:                               #   in Loop: Header=BB4_73 Depth=3
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.76:                               #   in Loop: Header=BB4_73 Depth=3
	ld	s3, 0(s1)
	ld	s5, 8(s1)
	lbu	s9, 0(s3)
	addi	s5, s5, -1
	bnez	s5, .LBB4_71
.LBB4_77:                               #   in Loop: Header=BB4_73 Depth=3
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.78:                               #   in Loop: Header=BB4_73 Depth=3
	ld	s3, 0(s1)
	ld	s5, 8(s1)
	j	.LBB4_72
.LBB4_79:                               #   in Loop: Header=BB4_59 Depth=2
	ld	a0, 0(s0)
	lw	a0, 124(a0)
	li	a1, 2
	li	s8, 93
	blt	a0, a1, .LBB4_82
# %bb.80:                               # %.preheader7
                                        #   in Loop: Header=BB4_59 Depth=2
	addi	s6, s4, 8
	addi	s4, s4, 136
.LBB4_81:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s0)
	lhu	a1, -8(s6)
	lhu	a2, -6(s6)
	sw	a1, 44(a0)
	lhu	a1, -4(s6)
	lhu	a3, -2(s6)
	sw	a2, 48(a0)
	lhu	a2, 0(s6)
	sw	a1, 52(a0)
	sw	a3, 56(a0)
	lhu	a1, 2(s6)
	sw	a2, 60(a0)
	lhu	a2, 4(s6)
	lhu	a3, 6(s6)
	sw	a1, 64(a0)
	ld	a4, 8(a0)
	sw	a2, 68(a0)
	sw	a3, 72(a0)
	sw	s8, 40(a0)
	li	a1, 2
	mv	a0, s0
	jalr	a4
	addi	s6, s6, 16
	bne	s6, s4, .LBB4_81
.LBB4_82:                               #   in Loop: Header=BB4_59 Depth=2
	li	a0, -65
	li	s8, 216
	li	a1, 16
	bltu	s7, a1, .LBB4_58
# %bb.83:                               #   in Loop: Header=BB4_59 Depth=2
	li	a0, -129
	j	.LBB4_58
.LBB4_84:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.85:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s3, 8(s1)
	ld	s2, 0(s1)
	lbu	s4, 0(s2)
	addi	s3, s3, -1
	bnez	s3, .LBB4_33
.LBB4_86:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.87:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s2, 0(s1)
	ld	s3, 8(s1)
.LBB4_88:                               #   in Loop: Header=BB4_3 Depth=1
	lbu	a0, 0(s2)
	slli	s4, s4, 8
	or	a0, s4, a0
	li	a1, 4
	beq	a0, a1, .LBB4_90
# %bb.89:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 11
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_90:                               #   in Loop: Header=BB4_3 Depth=1
	addi	a0, s3, -1
	beqz	a0, .LBB4_171
# %bb.91:                               #   in Loop: Header=BB4_3 Depth=1
	addi	a1, s2, 1
	lbu	s2, 0(a1)
	addi	a0, a0, -1
	beqz	a0, .LBB4_173
.LBB4_92:                               #   in Loop: Header=BB4_3 Depth=1
	addi	a1, a1, 1
	j	.LBB4_175
.LBB4_93:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.94:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s7, 8(s4)
	li	s8, 216
	ld	s11, 0(s4)
	lbu	s1, 0(s11)
	addi	s7, s7, -1
	bnez	s7, .LBB4_36
.LBB4_95:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.96:                               #   in Loop: Header=BB4_3 Depth=1
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	li	s8, 216
.LBB4_97:                               #   in Loop: Header=BB4_3 Depth=1
	lbu	a0, 0(s11)
	slli	s1, s1, 8
	addi	s7, s7, -1
	addi	s11, s11, 1
	or	a0, s1, a0
	addi	s6, a0, -2
	li	a1, 19
	bgeu	a0, a1, .LBB4_103
.LBB4_98:                               #   in Loop: Header=BB4_3 Depth=1
	beqz	s6, .LBB4_100
# %bb.99:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 11
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_100:                              #   in Loop: Header=BB4_3 Depth=1
	sd	s11, 0(s4)
	sd	s7, 8(s4)
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	li	s6, 255
	li	s7, 53
.LBB4_101:                              #   in Loop: Header=BB4_3 Depth=1
	li	s5, 253
	lui	s3, %hi(.LJTI4_0)
	addi	s3, s3, %lo(.LJTI4_0)
	j	.LBB4_2
.LBB4_102:                              #   in Loop: Header=BB4_103 Depth=2
	sb	zero, 0(a0)
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sb	a1, 1(a0)
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	sb	a1, 2(a0)
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	sb	a1, 3(a0)
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	sb	a1, 4(a0)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	sb	a1, 5(a0)
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	sb	a1, 6(a0)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sb	a1, 7(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	sb	a1, 8(a0)
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	sb	a1, 9(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	sb	a1, 10(a0)
	sb	s2, 11(a0)
	sb	s1, 12(a0)
	sb	s3, 13(a0)
	sb	s5, 14(a0)
	sb	s8, 15(a0)
	sb	s10, 16(a0)
	ld	a0, 0(s9)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	sub	s6, a1, s6
	addi	a0, a0, 17
	addi	a1, sp, 168
	li	a2, 256
	call	memcpy
	li	s8, 216
	li	a0, 16
	bge	a0, s6, .LBB4_98
.LBB4_103:                              #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_161 Depth 3
	bnez	s7, .LBB4_106
# %bb.104:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.105:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
.LBB4_106:                              #   in Loop: Header=BB4_103 Depth=2
	lbu	a1, 0(s11)
	ld	a0, 0(s0)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	sw	a1, 44(a0)
	ld	a1, 0(s0)
	ld	a2, 8(a1)
	li	a1, 80
	sw	a1, 40(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	addi	s7, s7, -1
	beqz	s7, .LBB4_123
# %bb.107:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_125
.LBB4_108:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_127
.LBB4_109:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_129
.LBB4_110:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_131
.LBB4_111:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_133
.LBB4_112:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_135
.LBB4_113:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_137
.LBB4_114:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_139
.LBB4_115:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_141
.LBB4_116:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	a0, 0(s11)
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	addi	s7, s7, -1
	beqz	s7, .LBB4_143
.LBB4_117:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	s2, 0(s11)
	addi	s7, s7, -1
	beqz	s7, .LBB4_145
.LBB4_118:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	s1, 0(s11)
	addi	s7, s7, -1
	beqz	s7, .LBB4_147
.LBB4_119:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	s3, 0(s11)
	addi	s7, s7, -1
	beqz	s7, .LBB4_149
.LBB4_120:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	s5, 0(s11)
	addi	s7, s7, -1
	beqz	s7, .LBB4_151
.LBB4_121:                              #   in Loop: Header=BB4_103 Depth=2
	addi	s11, s11, 1
	lbu	s8, 0(s11)
	addi	s7, s7, -1
	beqz	s7, .LBB4_153
.LBB4_122:                              #   in Loop: Header=BB4_103 Depth=2
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	mv	t2, s6
	addi	s6, s11, 1
	j	.LBB4_155
.LBB4_123:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.124:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_108
.LBB4_125:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.126:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_109
.LBB4_127:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.128:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_110
.LBB4_129:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.130:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_111
.LBB4_131:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.132:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_112
.LBB4_133:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.134:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_113
.LBB4_135:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.136:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_114
.LBB4_137:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.138:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_115
.LBB4_139:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.140:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_116
.LBB4_141:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.142:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	a0, 0(s11)
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	addi	s7, s7, -1
	bnez	s7, .LBB4_117
.LBB4_143:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.144:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	s2, 0(s11)
	addi	s7, s7, -1
	bnez	s7, .LBB4_118
.LBB4_145:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.146:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	s1, 0(s11)
	addi	s7, s7, -1
	bnez	s7, .LBB4_119
.LBB4_147:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.148:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	s3, 0(s11)
	addi	s7, s7, -1
	bnez	s7, .LBB4_120
.LBB4_149:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.150:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	s5, 0(s11)
	addi	s7, s7, -1
	bnez	s7, .LBB4_121
.LBB4_151:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.152:                              #   in Loop: Header=BB4_103 Depth=2
	ld	s11, 0(s4)
	ld	s7, 8(s4)
	lbu	s8, 0(s11)
	addi	s7, s7, -1
	bnez	s7, .LBB4_122
.LBB4_153:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.154:                              #   in Loop: Header=BB4_103 Depth=2
	mv	t2, s6
	ld	s6, 0(s4)
	ld	a0, 8(s4)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
.LBB4_155:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	add	a0, a3, a2
	ld	a4, 144(sp)                     # 8-byte Folded Reload
	add	a0, a0, a4
	ld	a5, 136(sp)                     # 8-byte Folded Reload
	add	a0, a0, a5
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, a6
	ld	a7, 120(sp)                     # 8-byte Folded Reload
	add	a0, a0, a7
	ld	t0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a0, t0
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	add	a0, a0, t1
	ld	s9, 96(sp)                      # 8-byte Folded Reload
	add	a0, a0, s9
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	add	a0, a0, s11
	add	a0, a0, s2
	add	a0, a0, s1
	ld	a1, 0(s0)
	add	a0, a0, s3
	add	a0, a0, s5
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	lbu	s10, 0(s6)
	sw	a2, 44(a1)
	sw	a3, 48(a1)
	sw	a4, 52(a1)
	sw	a5, 56(a1)
	sw	a6, 60(a1)
	sw	a7, 64(a1)
	sw	t0, 68(a1)
	sw	t1, 72(a1)
	li	s7, 86
	sw	s7, 40(a1)
	ld	a2, 8(a1)
	add	a0, a0, s8
	add	s6, a0, s10
	addi	t2, t2, -17
	sd	t2, 48(sp)                      # 8-byte Folded Spill
	li	a1, 2
	mv	a0, s0
	jalr	a2
	ld	a0, 0(s0)
	sw	s9, 44(a0)
	sw	s11, 48(a0)
	sw	s2, 52(a0)
	sw	s1, 56(a0)
	sw	s3, 60(a0)
	sw	s5, 64(a0)
	ld	a2, 8(a0)
	sw	s8, 68(a0)
	sw	s10, 72(a0)
	sw	s7, 40(a0)
	li	a1, 2
	mv	a0, s0
	jalr	a2
	li	a0, 256
	bltu	a0, s6, .LBB4_157
# %bb.156:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	bgeu	a0, s6, .LBB4_158
.LBB4_157:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 8
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_158:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 1
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	addi	s7, s7, -1
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	beqz	s6, .LBB4_164
# %bb.159:                              # %.preheader4
                                        #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	add	a1, a1, s2
	add	a1, a1, s1
	add	a1, a1, s3
	add	a1, a1, s5
	add	a1, a1, s8
	addw	s9, a1, s10
	addi	s6, sp, 168
	j	.LBB4_161
.LBB4_160:                              #   in Loop: Header=BB4_161 Depth=3
	lbu	a1, 0(a0)
	addi	s7, s7, -1
	addi	s11, a0, 1
	sb	a1, 0(s6)
	addi	s9, s9, -1
	addi	s6, s6, 1
	mv	a0, s11
	beqz	s9, .LBB4_165
.LBB4_161:                              #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	s7, .LBB4_160
# %bb.162:                              #   in Loop: Header=BB4_161 Depth=3
	ld	a1, 24(s4)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_176
# %bb.163:                              #   in Loop: Header=BB4_161 Depth=3
	ld	a0, 0(s4)
	ld	s7, 8(s4)
	j	.LBB4_160
.LBB4_164:                              #   in Loop: Header=BB4_103 Depth=2
	mv	s11, a0
.LBB4_165:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	andi	a0, a1, 16
	beqz	a0, .LBB4_167
# %bb.166:                              #   in Loop: Header=BB4_103 Depth=2
	addi	a1, a1, -16
	slli	s9, a1, 3
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	s9, a0, s9
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	li	a0, 4
	bge	a1, a0, .LBB4_168
	j	.LBB4_169
.LBB4_167:                              #   in Loop: Header=BB4_103 Depth=2
	slli	s9, a1, 3
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s9, a0, s9
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	li	a0, 4
	blt	a1, a0, .LBB4_169
.LBB4_168:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a0, 0(s0)
	sw	a1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 30
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_169:                              #   in Loop: Header=BB4_103 Depth=2
	ld	a0, 0(s9)
	bnez	a0, .LBB4_102
# %bb.170:                              #   in Loop: Header=BB4_103 Depth=2
	mv	a0, s0
	call	jpeg_alloc_huff_table
	sd	a0, 0(s9)
	j	.LBB4_102
.LBB4_171:                              #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.172:                              #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 0(s1)
	ld	a0, 8(s1)
	lbu	s2, 0(a1)
	addi	a0, a0, -1
	bnez	a0, .LBB4_92
.LBB4_173:                              #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.174:                              #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 0(s1)
	ld	a0, 8(s1)
.LBB4_175:                              #   in Loop: Header=BB4_3 Depth=1
	lbu	a2, 0(a1)
	ld	a3, 0(s0)
	slli	s2, s2, 8
	or	s2, s2, a2
	sw	s2, 44(a3)
	ld	a2, 0(s0)
	ld	a2, 8(a2)
	addi	s3, a0, -1
	addi	s4, a1, 1
	li	a0, 82
	sw	a0, 40(a3)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	sw	s2, 368(s0)
	sd	s4, 0(s1)
	sd	s3, 8(s1)
	lui	s3, %hi(.LJTI4_0)
	addi	s3, s3, %lo(.LJTI4_0)
	j	.LBB4_2
.LBB4_176:
	li	a0, 0
.LBB4_177:
	ld	ra, 520(sp)                     # 8-byte Folded Reload
	ld	s0, 512(sp)                     # 8-byte Folded Reload
	ld	s1, 504(sp)                     # 8-byte Folded Reload
	ld	s2, 496(sp)                     # 8-byte Folded Reload
	ld	s3, 488(sp)                     # 8-byte Folded Reload
	ld	s4, 480(sp)                     # 8-byte Folded Reload
	ld	s5, 472(sp)                     # 8-byte Folded Reload
	ld	s6, 464(sp)                     # 8-byte Folded Reload
	ld	s7, 456(sp)                     # 8-byte Folded Reload
	ld	s8, 448(sp)                     # 8-byte Folded Reload
	ld	s9, 440(sp)                     # 8-byte Folded Reload
	ld	s10, 432(sp)                    # 8-byte Folded Reload
	ld	s11, 424(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 528
	ret
.LBB4_178:
	ld	s1, 40(s0)
	ld	a0, 584(s0)
	ld	s2, 0(s1)
	lw	a0, 28(a0)
	ld	s4, 8(s1)
	bnez	a0, .LBB4_180
# %bb.179:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 62
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_180:
	bnez	s4, .LBB4_183
# %bb.181:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.182:
	ld	s2, 0(s1)
	ld	s4, 8(s1)
.LBB4_183:
	lbu	s3, 0(s2)
	addi	s7, s4, -1
	beqz	s7, .LBB4_186
# %bb.184:
	addi	s2, s2, 1
	j	.LBB4_188
.LBB4_185:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 85
	sw	a1, 40(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	sw	zero, 540(s0)
	li	a0, 2
	j	.LBB4_177
.LBB4_186:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.187:
	ld	s2, 0(s1)
	ld	s7, 8(s1)
.LBB4_188:
	lbu	s4, 0(s2)
	addi	s7, s7, -1
	beqz	s7, .LBB4_190
# %bb.189:
	addi	s8, s2, 1
	j	.LBB4_192
.LBB4_190:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.191:
	ld	s8, 0(s1)
	ld	s7, 8(s1)
.LBB4_192:
	lbu	s2, 0(s8)
	ld	a0, 0(s0)
	sw	s2, 44(a0)
	ld	a1, 0(s0)
	slli	s3, s3, 8
	ld	a2, 8(a1)
	or	s3, s3, s4
	li	a1, 103
	sw	a1, 40(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	slli	a0, s2, 1
	addi	a0, a0, 6
	bne	s3, a0, .LBB4_195
# %bb.193:
	addi	a0, s2, -5
	li	a1, -4
	bltu	a0, a1, .LBB4_195
# %bb.194:
	sw	s2, 432(s0)
	addi	s8, s8, 1
	addi	s7, s7, -1
	j	.LBB4_196
.LBB4_195:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 11
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	sw	s2, 432(s0)
	addi	s8, s8, 1
	addi	s7, s7, -1
	beqz	s2, .LBB4_208
.LBB4_196:
	li	s3, 0
	addi	s4, s0, 440
	li	s5, 104
	li	s6, 5
	j	.LBB4_199
.LBB4_197:                              #   in Loop: Header=BB4_199 Depth=1
	ld	a0, 0(s0)
	sw	s9, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s6, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_198:                              #   in Loop: Header=BB4_199 Depth=1
	srli	a0, s11, 4
	ld	a1, 0(s0)
	sw	a0, 20(s10)
	andi	a0, s11, 15
	sw	a0, 24(s10)
	sw	s9, 44(a1)
	lw	a0, 20(s10)
	slli	a2, s3, 3
	add	a2, s4, a2
	sw	a0, 48(a1)
	lw	a0, 24(s10)
	sd	s10, 0(a2)
	ld	a2, 8(a1)
	sw	a0, 52(a1)
	sw	s5, 40(a1)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	addi	s3, s3, 1
	addi	s8, s8, 1
	addi	s7, s7, -1
	beq	s3, s2, .LBB4_208
.LBB4_199:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_206 Depth 2
	beqz	s7, .LBB4_202
# %bb.200:                              #   in Loop: Header=BB4_199 Depth=1
	lbu	s9, 0(s8)
	addi	s7, s7, -1
	beqz	s7, .LBB4_204
.LBB4_201:                              #   in Loop: Header=BB4_199 Depth=1
	addi	s8, s8, 1
	lbu	s11, 0(s8)
	lw	a0, 56(s0)
	ld	s10, 304(s0)
	bgtz	a0, .LBB4_206
	j	.LBB4_197
.LBB4_202:                              #   in Loop: Header=BB4_199 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.203:                              #   in Loop: Header=BB4_199 Depth=1
	ld	s8, 0(s1)
	ld	s7, 8(s1)
	lbu	s9, 0(s8)
	addi	s7, s7, -1
	bnez	s7, .LBB4_201
.LBB4_204:                              #   in Loop: Header=BB4_199 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.205:                              #   in Loop: Header=BB4_199 Depth=1
	ld	s8, 0(s1)
	ld	s7, 8(s1)
	lbu	s11, 0(s8)
	lw	a0, 56(s0)
	ld	s10, 304(s0)
	blez	a0, .LBB4_197
.LBB4_206:                              #   Parent Loop BB4_199 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, 0(s10)
	beq	a1, s9, .LBB4_198
# %bb.207:                              #   in Loop: Header=BB4_206 Depth=2
	addiw	a0, a0, -1
	addi	s10, s10, 96
	bnez	a0, .LBB4_206
	j	.LBB4_197
.LBB4_208:
	bnez	s7, .LBB4_211
# %bb.209:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.210:
	ld	s8, 0(s1)
	ld	s7, 8(s1)
.LBB4_211:
	lbu	a1, 0(s8)
	addi	a0, s7, -1
	sw	a1, 524(s0)
	beqz	a0, .LBB4_213
# %bb.212:
	addi	a1, s8, 1
	j	.LBB4_215
.LBB4_213:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.214:
	ld	a1, 0(s1)
	ld	a0, 8(s1)
.LBB4_215:
	lbu	a2, 0(a1)
	addi	a0, a0, -1
	sw	a2, 528(s0)
	beqz	a0, .LBB4_217
# %bb.216:
	addi	a1, a1, 1
	j	.LBB4_219
.LBB4_217:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_177
# %bb.218:
	ld	a1, 0(s1)
	ld	a0, 8(s1)
.LBB4_219:
	lbu	a2, 0(a1)
	srli	a3, a2, 4
	ld	a4, 0(s0)
	lw	a5, 524(s0)
	sw	a3, 532(s0)
	andi	a2, a2, 15
	sw	a2, 536(s0)
	sw	a5, 44(a4)
	lw	a2, 528(s0)
	sw	a2, 48(a4)
	lw	a2, 532(s0)
	sw	a2, 52(a4)
	lw	a2, 536(s0)
	sw	a2, 56(a4)
	li	a2, 105
	ld	a3, 8(a4)
	sw	a2, 40(a4)
	addi	s2, a0, -1
	addi	s3, a1, 1
	li	a1, 1
	mv	a0, s0
	jalr	a3
	li	a0, 1
	ld	a1, 584(s0)
	lw	a2, 172(s0)
	sw	zero, 32(a1)
	addi	a2, a2, 1
	sw	a2, 172(s0)
	sd	s3, 0(s1)
	sd	s2, 8(s1)
	sw	zero, 540(s0)
	j	.LBB4_177
.Lfunc_end4:
	.size	read_markers, .Lfunc_end4-read_markers
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_6
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_24
	.word	.LBB4_24
	.word	.LBB4_39
	.word	.LBB4_11
	.word	.LBB4_34
	.word	.LBB4_11
	.word	.LBB4_11
	.word	.LBB4_11
	.word	.LBB4_11
	.word	.LBB4_40
	.word	.LBB4_38
	.word	.LBB4_11
	.word	.LBB4_25
	.word	.LBB4_11
	.word	.LBB4_11
	.word	.LBB4_11
	.word	.LBB4_6
	.word	.LBB4_6
	.word	.LBB4_6
	.word	.LBB4_6
	.word	.LBB4_6
	.word	.LBB4_6
	.word	.LBB4_6
	.word	.LBB4_6
	.word	.LBB4_41
	.word	.LBB4_185
	.word	.LBB4_178
	.word	.LBB4_28
	.word	.LBB4_25
	.word	.LBB4_31
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_1
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_23
	.word	.LBB4_37
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function read_restart_marker
	.type	read_restart_marker,@function
read_restart_marker:                    # @read_restart_marker
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 540(a0)
	beqz	a0, .LBB5_3
# %bb.1:
	ld	a1, 584(s0)
	lw	a1, 32(a1)
	addiw	a2, a1, 208
	bne	a0, a2, .LBB5_5
.LBB5_2:
	ld	a0, 0(s0)
	sw	a1, 44(a0)
	ld	a1, 0(s0)
	ld	a2, 8(a1)
	li	a1, 98
	sw	a1, 40(a0)
	li	a1, 3
	mv	a0, s0
	jalr	a2
	sw	zero, 540(s0)
	j	.LBB5_6
.LBB5_3:
	mv	a0, s0
	call	next_marker
	beqz	a0, .LBB5_7
# %bb.4:
	lw	a0, 540(s0)
	ld	a1, 584(s0)
	lw	a1, 32(a1)
	addiw	a2, a1, 208
	beq	a0, a2, .LBB5_2
.LBB5_5:
	ld	a0, 40(s0)
	ld	a2, 40(a0)
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB5_7
.LBB5_6:
	ld	a0, 584(s0)
	lw	a1, 32(a0)
	addi	a1, a1, 1
	andi	a1, a1, 7
	sw	a1, 32(a0)
	li	a0, 1
.LBB5_7:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	read_restart_marker, .Lfunc_end5-read_restart_marker
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function skip_variable
	.type	skip_variable,@function
skip_variable:                          # @skip_variable
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
	mv	s0, a0
	ld	s3, 40(a0)
	ld	a0, 8(s3)
	beqz	a0, .LBB6_3
# %bb.1:
	ld	a1, 0(s3)
	lbu	s1, 0(a1)
	addi	a0, a0, -1
	beqz	a0, .LBB6_5
.LBB6_2:
	addi	a1, a1, 1
	j	.LBB6_7
.LBB6_3:
	ld	a1, 24(s3)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB6_9
# %bb.4:
	ld	a0, 8(s3)
	ld	a1, 0(s3)
	lbu	s1, 0(a1)
	addi	a0, a0, -1
	bnez	a0, .LBB6_2
.LBB6_5:
	ld	a1, 24(s3)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB6_9
# %bb.6:
	ld	a1, 0(s3)
	ld	a0, 8(s3)
.LBB6_7:
	lbu	a2, 0(a1)
	ld	a3, 0(s0)
	lw	a4, 540(s0)
	slli	s1, s1, 8
	or	s4, s1, a2
	sw	a4, 44(a3)
	ld	a2, 0(s0)
	li	a4, 91
	sw	a4, 40(a3)
	addi	s2, s4, -2
	sw	s2, 48(a2)
	ld	a2, 0(s0)
	ld	a2, 8(a2)
	addi	s5, a0, -1
	addi	s6, a1, 1
	li	a1, 1
	li	s1, 1
	mv	a0, s0
	jalr	a2
	sd	s6, 0(s3)
	li	a0, 3
	sd	s5, 8(s3)
	bltu	s4, a0, .LBB6_10
# %bb.8:
	ld	a0, 40(s0)
	ld	a2, 32(a0)
	mv	a0, s0
	mv	a1, s2
	jalr	a2
	j	.LBB6_10
.LBB6_9:
	li	s1, 0
.LBB6_10:
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
.Lfunc_end6:
	.size	skip_variable, .Lfunc_end6-skip_variable
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_interesting_appn
	.type	get_interesting_appn,@function
get_interesting_appn:                   # @get_interesting_appn
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
	mv	s0, a0
	ld	s2, 40(a0)
	ld	s4, 8(s2)
	beqz	s4, .LBB7_3
# %bb.1:
	ld	s3, 0(s2)
	lbu	s1, 0(s3)
	addi	s4, s4, -1
	beqz	s4, .LBB7_5
.LBB7_2:
	addi	s3, s3, 1
	j	.LBB7_7
.LBB7_3:
	ld	a1, 24(s2)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB7_14
# %bb.4:
	ld	s4, 8(s2)
	ld	s3, 0(s2)
	lbu	s1, 0(s3)
	addi	s4, s4, -1
	bnez	s4, .LBB7_2
.LBB7_5:
	ld	a1, 24(s2)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB7_14
# %bb.6:
	ld	s3, 0(s2)
	ld	s4, 8(s2)
.LBB7_7:
	lbu	a0, 0(s3)
	slli	s1, s1, 8
	or	a0, s1, a0
	li	a1, 15
	addi	s1, a0, -2
	bgeu	a1, a0, .LBB7_15
# %bb.8:
	li	s5, 14
	addi	s3, s3, 1
	addi	s4, s4, -1
	beqz	s5, .LBB7_16
.LBB7_9:
	slli	a0, s5, 32
	srli	s6, a0, 32
	addi	s7, sp, 2
	mv	s8, s6
	j	.LBB7_11
.LBB7_10:                               #   in Loop: Header=BB7_11 Depth=1
	lbu	a0, 0(s3)
	sb	a0, 0(s7)
	addi	s3, s3, 1
	addi	s4, s4, -1
	addi	s8, s8, -1
	addi	s7, s7, 1
	beqz	s8, .LBB7_17
.LBB7_11:                               # =>This Inner Loop Header: Depth=1
	bnez	s4, .LBB7_10
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	ld	a1, 24(s2)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_11 Depth=1
	ld	s3, 0(s2)
	ld	s4, 8(s2)
	j	.LBB7_10
.LBB7_14:
	li	s2, 0
	j	.LBB7_21
.LBB7_15:
	sltiu	a0, a0, 3
	addi	a0, a0, -1
	and	s5, a0, s1
	addi	s3, s3, 1
	addi	s4, s4, -1
	bnez	s5, .LBB7_9
.LBB7_16:
	li	s6, 0
.LBB7_17:
	lw	a0, 540(s0)
	li	a1, 238
	sub	s1, s1, s6
	beq	a0, a1, .LBB7_22
# %bb.18:
	li	a1, 224
	bne	a0, a1, .LBB7_29
# %bb.19:
	sext.w	a2, s5
	addi	a1, sp, 2
	mv	a0, s0
	mv	a3, s1
	call	examine_app0
	sd	s3, 0(s2)
	sd	s4, 8(s2)
	li	s2, 1
	blez	s1, .LBB7_21
.LBB7_20:
	ld	a0, 40(s0)
	ld	a2, 32(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
.LBB7_21:
	mv	a0, s2
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
	addi	sp, sp, 96
	ret
.LBB7_22:
	sext.w	a0, s5
	li	a1, 12
	bltu	a0, a1, .LBB7_30
# %bb.23:
	lbu	a0, 2(sp)
	li	a1, 65
	bne	a0, a1, .LBB7_30
# %bb.24:
	lbu	a0, 3(sp)
	li	a1, 100
	bne	a0, a1, .LBB7_30
# %bb.25:
	lbu	a0, 4(sp)
	li	a1, 111
	bne	a0, a1, .LBB7_30
# %bb.26:
	lbu	a0, 5(sp)
	li	a1, 98
	bne	a0, a1, .LBB7_30
# %bb.27:
	lbu	a0, 6(sp)
	li	a1, 101
	bne	a0, a1, .LBB7_30
# %bb.28:
	lbu	a0, 7(sp)
	lbu	a1, 8(sp)
	lbu	a2, 9(sp)
	slli	a0, a0, 8
	or	a0, a0, a1
	lbu	a1, 10(sp)
	slli	a2, a2, 8
	lbu	a3, 11(sp)
	lbu	a4, 12(sp)
	or	a1, a2, a1
	ld	a2, 0(s0)
	slli	a3, a3, 8
	or	a3, a3, a4
	lbu	s5, 13(sp)
	sw	a0, 44(a2)
	sw	a1, 48(a2)
	sw	a3, 52(a2)
	ld	a3, 8(a2)
	sw	s5, 56(a2)
	li	a0, 76
	sw	a0, 40(a2)
	li	a1, 1
	li	s6, 1
	mv	a0, s0
	jalr	a3
	sw	s6, 384(s0)
	sb	s5, 388(s0)
	sd	s3, 0(s2)
	sd	s4, 8(s2)
	li	s2, 1
	bgtz	s1, .LBB7_20
	j	.LBB7_21
.LBB7_29:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 68
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	sd	s3, 0(s2)
	sd	s4, 8(s2)
	li	s2, 1
	bgtz	s1, .LBB7_20
	j	.LBB7_21
.LBB7_30:
	ld	a0, 0(s0)
	add	s5, s5, s1
	sw	s5, 44(a0)
	ld	a1, 0(s0)
	ld	a2, 8(a1)
	li	a1, 78
	sw	a1, 40(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	sd	s3, 0(s2)
	sd	s4, 8(s2)
	li	s2, 1
	bgtz	s1, .LBB7_20
	j	.LBB7_21
.Lfunc_end7:
	.size	get_interesting_appn, .Lfunc_end7-get_interesting_appn
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_save_markers               # -- Begin function jpeg_save_markers
	.p2align	2
	.type	jpeg_save_markers,@function
jpeg_save_markers:                      # @jpeg_save_markers
# %bb.0:
	ld	a3, 8(a0)
	ld	a4, 96(a3)
	addi	a4, a4, -32
	slli	a3, a2, 32
	srli	a3, a3, 32
	blt	a4, a3, .LBB8_2
# %bb.1:
	mv	a4, a2
.LBB8_2:
	ld	a2, 584(a0)
	sext.w	a3, a4
	beqz	a3, .LBB8_6
# %bb.3:
	li	a5, 224
	bne	a1, a5, .LBB8_8
# %bb.4:
	sext.w	a5, a4
	li	a6, 14
	bgeu	a5, a6, .LBB8_8
# %bb.5:
	lui	a4, %hi(save_marker)
	addi	a4, a4, %lo(save_marker)
	li	a3, 14
	j	.LBB8_14
.LBB8_6:
	addi	a3, a1, -224
	seqz	a3, a3
	addi	a4, a1, -238
	seqz	a4, a4
	or	a3, a3, a4
	bnez	a3, .LBB8_15
# %bb.7:
	lui	a4, %hi(skip_variable)
	addi	a4, a4, %lo(skip_variable)
	j	.LBB8_16
.LBB8_8:
	li	a5, 12
	bltu	a5, a3, .LBB8_10
# %bb.9:
	li	a3, 12
.LBB8_10:
	li	a5, 238
	beq	a1, a5, .LBB8_12
# %bb.11:
	mv	a3, a4
.LBB8_12:
	lui	a4, %hi(save_marker)
	addi	a4, a4, %lo(save_marker)
	li	a5, 254
	beq	a1, a5, .LBB8_17
.LBB8_13:
	andi	a5, a1, -16
	li	a6, 224
	bne	a5, a6, .LBB8_18
.LBB8_14:
	addiw	a0, a1, -224
	slli	a1, a0, 3
	add	a1, a2, a1
	sd	a4, 48(a1)
	slli	a0, a0, 2
	add	a0, a2, a0
	sw	a3, 180(a0)
	ret
.LBB8_15:
	lui	a4, %hi(get_interesting_appn)
	addi	a4, a4, %lo(get_interesting_appn)
.LBB8_16:
	li	a3, 0
	li	a5, 254
	bne	a1, a5, .LBB8_13
.LBB8_17:
	sd	a4, 40(a2)
	sw	a3, 176(a2)
	ret
.LBB8_18:
	ld	a2, 0(a0)
	sw	a1, 44(a2)
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a1, 68
	sw	a1, 40(a2)
	jr	t1
.Lfunc_end8:
	.size	jpeg_save_markers, .Lfunc_end8-jpeg_save_markers
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function save_marker
	.type	save_marker,@function
save_marker:                            # @save_marker
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
	ld	s6, 584(a0)
	ld	s3, 40(a0)
	ld	s2, 248(s6)
	ld	s4, 0(s3)
	ld	s5, 8(s3)
	beqz	s2, .LBB9_15
# %bb.1:
	lwu	s8, 256(s6)
	ld	s1, 24(s2)
	lw	s7, 16(s2)
	add	s1, s1, s8
.LBB9_2:
	sext.w	s9, s7
	j	.LBB9_4
.LBB9_3:                                # %.loopexit2
                                        #   in Loop: Header=BB9_4 Depth=1
	sub	s5, s5, a1
	add	s4, s4, a1
	add	s1, s1, a1
.LBB9_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	sext.w	a0, s8
	bgeu	a0, s9, .LBB9_13
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	sd	s4, 0(s3)
	sd	s5, 8(s3)
	sw	s8, 256(s6)
	bnez	s5, .LBB9_8
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	ld	a1, 24(s3)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB9_30
# %bb.7:                                #   in Loop: Header=BB9_4 Depth=1
	ld	s4, 0(s3)
	ld	s5, 8(s3)
.LBB9_8:                                #   in Loop: Header=BB9_4 Depth=1
	sext.w	a0, s8
	bgeu	a0, s9, .LBB9_4
# %bb.9:                                #   in Loop: Header=BB9_4 Depth=1
	beqz	s5, .LBB9_4
# %bb.10:                               # %.preheader1
                                        #   in Loop: Header=BB9_4 Depth=1
	li	a1, 0
	addi	a0, s5, -1
.LBB9_11:                               #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a2, a1
	add	a1, s4, a1
	lbu	a1, 0(a1)
	add	a3, s1, a2
	sb	a1, 0(a3)
	addiw	s8, s8, 1
	addi	a1, a2, 1
	bgeu	s8, s9, .LBB9_3
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=2
	bne	a0, a2, .LBB9_11
	j	.LBB9_3
.LBB9_13:
	ld	a1, 400(s0)
	beqz	a1, .LBB9_18
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
	mv	a0, a1
	ld	a1, 0(a1)
	bnez	a1, .LBB9_14
	j	.LBB9_19
.LBB9_15:
	beqz	s5, .LBB9_23
# %bb.16:
	lbu	s1, 0(s4)
	addi	s5, s5, -1
	beqz	s5, .LBB9_25
.LBB9_17:
	addi	s4, s4, 1
	j	.LBB9_27
.LBB9_18:
	addi	a0, s0, 400
.LBB9_19:
	lw	a2, 12(s2)
	sd	s2, 0(a0)
	ld	a1, 24(s2)
	subw	a0, a2, s7
	slli	a0, a0, 32
	srli	s1, a0, 32
	lw	a0, 540(s0)
	li	a2, 238
	sd	zero, 248(s6)
	beq	a0, a2, .LBB9_32
.LBB9_20:
	li	a2, 224
	bne	a0, a2, .LBB9_22
# %bb.21:
	sext.w	a2, s7
	mv	a0, s0
	mv	a3, s1
	call	examine_app0
	j	.LBB9_41
.LBB9_22:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 91
	sw	a2, 40(a1)
	add	s7, s7, s1
	sw	s7, 48(a0)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	j	.LBB9_40
.LBB9_23:
	ld	a1, 24(s3)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB9_30
# %bb.24:
	ld	s4, 0(s3)
	ld	s5, 8(s3)
	lbu	s1, 0(s4)
	addi	s5, s5, -1
	bnez	s5, .LBB9_17
.LBB9_25:
	ld	a1, 24(s3)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB9_30
# %bb.26:
	ld	s4, 0(s3)
	ld	s5, 8(s3)
.LBB9_27:
	lbu	a0, 0(s4)
	slli	s1, s1, 8
	addi	s5, s5, -1
	addi	s4, s4, 1
	or	a0, s1, a0
	li	a1, 2
	addi	s1, a0, -2
	bltu	a0, a1, .LBB9_31
# %bb.28:
	lw	a0, 540(s0)
	li	a1, 254
	beq	a0, a1, .LBB9_44
# %bb.29:
	slli	a0, a0, 2
	add	a0, a0, s6
	addi	a0, a0, -716
	lw	s7, 0(a0)
	bgeu	s7, s1, .LBB9_45
	j	.LBB9_46
.LBB9_30:
	li	s2, 0
	j	.LBB9_43
.LBB9_31:
	li	s7, 0
	li	a1, 0
	lw	a0, 540(s0)
	li	a2, 238
	sd	zero, 248(s6)
	bne	a0, a2, .LBB9_20
.LBB9_32:
	sext.w	a0, s7
	li	a2, 12
	bltu	a0, a2, .LBB9_39
# %bb.33:
	lbu	a0, 0(a1)
	li	a2, 65
	bne	a0, a2, .LBB9_39
# %bb.34:
	lbu	a0, 1(a1)
	li	a2, 100
	bne	a0, a2, .LBB9_39
# %bb.35:
	lbu	a0, 2(a1)
	li	a2, 111
	bne	a0, a2, .LBB9_39
# %bb.36:
	lbu	a0, 3(a1)
	li	a2, 98
	bne	a0, a2, .LBB9_39
# %bb.37:
	lbu	a0, 4(a1)
	li	a2, 101
	bne	a0, a2, .LBB9_39
# %bb.38:
	lbu	a0, 5(a1)
	lbu	a2, 6(a1)
	lbu	a3, 7(a1)
	slli	a0, a0, 8
	or	a0, a0, a2
	lbu	a2, 8(a1)
	slli	a3, a3, 8
	lbu	a4, 9(a1)
	lbu	a5, 10(a1)
	or	a2, a3, a2
	ld	a3, 0(s0)
	slli	a4, a4, 8
	or	a4, a4, a5
	lbu	s2, 11(a1)
	sw	a0, 44(a3)
	sw	a2, 48(a3)
	sw	a4, 52(a3)
	ld	a2, 8(a3)
	sw	s2, 56(a3)
	li	a0, 76
	sw	a0, 40(a3)
	li	a1, 1
	li	s6, 1
	mv	a0, s0
	jalr	a2
	sw	s6, 384(s0)
	sb	s2, 388(s0)
	j	.LBB9_41
.LBB9_39:
	ld	a0, 0(s0)
	add	s7, s7, s1
	sw	s7, 44(a0)
	ld	a1, 0(s0)
	ld	a2, 8(a1)
	li	a1, 78
	sw	a1, 40(a0)
.LBB9_40:
	li	a1, 1
	mv	a0, s0
	jalr	a2
.LBB9_41:
	sd	s4, 0(s3)
	sd	s5, 8(s3)
	li	s2, 1
	blez	s1, .LBB9_43
# %bb.42:
	ld	a0, 40(s0)
	ld	a2, 32(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
.LBB9_43:
	mv	a0, s2
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
.LBB9_44:
	addi	a0, s6, 176
	lw	s7, 0(a0)
	bltu	s7, s1, .LBB9_46
.LBB9_45:
	mv	s7, s1
.LBB9_46:
	ld	a0, 8(s0)
	ld	a3, 8(a0)
	addi	a2, s7, 32
	li	a1, 1
	mv	a0, s0
	jalr	a3
	lbu	a1, 540(s0)
	mv	s2, a0
	li	s8, 0
	sd	zero, 0(a0)
	sb	a1, 8(a0)
	sw	s1, 12(a0)
	sw	s7, 16(a0)
	addi	s1, a0, 32
	sd	s1, 24(a0)
	sd	a0, 248(s6)
	sw	zero, 256(s6)
	j	.LBB9_2
.Lfunc_end9:
	.size	save_marker, .Lfunc_end9-save_marker
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_set_marker_processor       # -- Begin function jpeg_set_marker_processor
	.p2align	2
	.type	jpeg_set_marker_processor,@function
jpeg_set_marker_processor:              # @jpeg_set_marker_processor
# %bb.0:
	ld	a3, 584(a0)
	li	a4, 254
	bne	a1, a4, .LBB10_2
# %bb.1:
	sd	a2, 40(a3)
	ret
.LBB10_2:
	andi	a4, a1, -16
	li	a5, 224
	bne	a4, a5, .LBB10_4
# %bb.3:
	slli	a1, a1, 3
	add	a1, a1, a3
	sd	a2, -1744(a1)
	ret
.LBB10_4:
	ld	a2, 0(a0)
	sw	a1, 44(a2)
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a1, 68
	sw	a1, 40(a2)
	jr	t1
.Lfunc_end10:
	.size	jpeg_set_marker_processor, .Lfunc_end10-jpeg_set_marker_processor
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_sof
	.type	get_sof,@function
get_sof:                                # @get_sof
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
	mv	s0, a0
	ld	s1, 40(a0)
	ld	a3, 8(s1)
	ld	a0, 0(s1)
	sw	a1, 312(s0)
	sw	a2, 316(s0)
	beqz	a3, .LBB11_5
# %bb.1:
	lbu	s2, 0(a0)
	addi	a3, a3, -1
	beqz	a3, .LBB11_7
.LBB11_2:
	addi	a0, a0, 1
	lbu	s3, 0(a0)
	addi	a1, a3, -1
	beqz	a1, .LBB11_9
.LBB11_3:
	addi	a0, a0, 1
	lbu	a2, 0(a0)
	addi	a1, a1, -1
	sw	a2, 296(s0)
	beqz	a1, .LBB11_11
.LBB11_4:
	addi	a0, a0, 1
	j	.LBB11_13
.LBB11_5:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.6:
	ld	a0, 0(s1)
	ld	a3, 8(s1)
	lbu	s2, 0(a0)
	addi	a3, a3, -1
	bnez	a3, .LBB11_2
.LBB11_7:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.8:
	ld	a0, 0(s1)
	ld	a3, 8(s1)
	lbu	s3, 0(a0)
	addi	a1, a3, -1
	bnez	a1, .LBB11_3
.LBB11_9:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.10:
	ld	a0, 0(s1)
	ld	a1, 8(s1)
	lbu	a2, 0(a0)
	addi	a1, a1, -1
	sw	a2, 296(s0)
	bnez	a1, .LBB11_4
.LBB11_11:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.12:
	ld	a0, 0(s1)
	ld	a1, 8(s1)
.LBB11_13:
	lbu	a2, 0(a0)
	addi	a1, a1, -1
	slli	a2, a2, 8
	sw	a2, 52(s0)
	beqz	a1, .LBB11_15
# %bb.14:
	addi	a0, a0, 1
	j	.LBB11_17
.LBB11_15:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.16:
	ld	a0, 0(s1)
	ld	a1, 8(s1)
	lw	a2, 52(s0)
.LBB11_17:
	lbu	a3, 0(a0)
	addi	a1, a1, -1
	add	a2, a2, a3
	sw	a2, 52(s0)
	beqz	a1, .LBB11_19
# %bb.18:
	addi	s5, a0, 1
	j	.LBB11_21
.LBB11_19:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.20:
	ld	s5, 0(s1)
	ld	a1, 8(s1)
.LBB11_21:
	lbu	a0, 0(s5)
	addi	s4, a1, -1
	slli	a0, a0, 8
	sw	a0, 48(s0)
	beqz	s4, .LBB11_23
# %bb.22:
	addi	s5, s5, 1
	j	.LBB11_25
.LBB11_23:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.24:
	ld	s5, 0(s1)
	ld	s4, 8(s1)
	lw	a0, 48(s0)
.LBB11_25:
	lbu	a1, 0(s5)
	addi	s4, s4, -1
	add	a0, a0, a1
	sw	a0, 48(s0)
	beqz	s4, .LBB11_27
# %bb.26:
	addi	s5, s5, 1
	j	.LBB11_29
.LBB11_27:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.28:
	ld	s5, 0(s1)
	ld	s4, 8(s1)
.LBB11_29:
	lbu	a0, 0(s5)
	ld	a1, 0(s0)
	lw	a2, 540(s0)
	sw	a0, 56(s0)
	sw	a2, 44(a1)
	lw	a0, 48(s0)
	sw	a0, 48(a1)
	lw	a0, 52(s0)
	sw	a0, 52(a1)
	lw	a0, 56(s0)
	sw	a0, 56(a1)
	li	a0, 100
	ld	a2, 8(a1)
	sw	a0, 40(a1)
	slli	s2, s2, 8
	or	s2, s2, s3
	li	a1, 1
	mv	a0, s0
	jalr	a2
	ld	a0, 584(s0)
	lw	a0, 28(a0)
	beqz	a0, .LBB11_31
# %bb.30:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 58
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB11_31:
	lw	a0, 52(s0)
	addi	s2, s2, -8
	beqz	a0, .LBB11_37
# %bb.32:
	lw	a0, 48(s0)
	beqz	a0, .LBB11_37
# %bb.33:
	lw	a2, 56(s0)
	blez	a2, .LBB11_37
# %bb.34:
	slli	a0, a2, 1
	addw	a0, a0, a2
	bne	s2, a0, .LBB11_38
.LBB11_35:
	ld	a0, 304(s0)
	beqz	a0, .LBB11_39
.LBB11_36:
	addi	s5, s5, 1
	addi	a1, s4, -1
	bgtz	a2, .LBB11_40
	j	.LBB11_53
.LBB11_37:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 32
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a2, 56(s0)
	slli	a0, a2, 1
	addw	a0, a0, a2
	beq	s2, a0, .LBB11_35
.LBB11_38:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 11
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a2, 56(s0)
	ld	a0, 304(s0)
	bnez	a0, .LBB11_36
.LBB11_39:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a0, 96
	mul	a2, a2, a0
	li	a1, 1
	mv	a0, s0
	jalr	a3
	lw	a2, 56(s0)
	sd	a0, 304(s0)
	addi	s5, s5, 1
	addi	a1, s4, -1
	blez	a2, .LBB11_53
.LBB11_40:
	li	s2, 0
	addi	s3, a0, 16
	li	s4, 101
	j	.LBB11_43
.LBB11_41:                              #   in Loop: Header=BB11_43 Depth=1
	addi	s5, s5, 1
.LBB11_42:                              #   in Loop: Header=BB11_43 Depth=1
	lbu	a0, 0(s5)
	ld	a1, 0(s0)
	lw	a2, -16(s3)
	sw	a0, 0(s3)
	sw	a2, 44(a1)
	lw	a0, -8(s3)
	sw	a0, 48(a1)
	lw	a0, -4(s3)
	sw	a0, 52(a1)
	lw	a0, 0(s3)
	ld	a2, 8(a1)
	sw	a0, 56(a1)
	sw	s4, 40(a1)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	lw	a0, 56(s0)
	addiw	s2, s2, 1
	addi	s5, s5, 1
	addi	a1, s6, -1
	addi	s3, s3, 96
	bge	s2, a0, .LBB11_53
.LBB11_43:                              # =>This Inner Loop Header: Depth=1
	sw	s2, -12(s3)
	beqz	a1, .LBB11_46
# %bb.44:                               #   in Loop: Header=BB11_43 Depth=1
	lbu	a0, 0(s5)
	addi	a1, a1, -1
	sw	a0, -16(s3)
	beqz	a1, .LBB11_48
.LBB11_45:                              #   in Loop: Header=BB11_43 Depth=1
	addi	s5, s5, 1
	j	.LBB11_50
.LBB11_46:                              #   in Loop: Header=BB11_43 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.47:                               #   in Loop: Header=BB11_43 Depth=1
	ld	s5, 0(s1)
	ld	a1, 8(s1)
	lbu	a0, 0(s5)
	addi	a1, a1, -1
	sw	a0, -16(s3)
	bnez	a1, .LBB11_45
.LBB11_48:                              #   in Loop: Header=BB11_43 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.49:                               #   in Loop: Header=BB11_43 Depth=1
	ld	s5, 0(s1)
	ld	a1, 8(s1)
.LBB11_50:                              #   in Loop: Header=BB11_43 Depth=1
	lbu	a0, 0(s5)
	addi	s6, a1, -1
	srli	a1, a0, 4
	sw	a1, -8(s3)
	andi	a0, a0, 15
	sw	a0, -4(s3)
	bnez	s6, .LBB11_41
# %bb.51:                               #   in Loop: Header=BB11_43 Depth=1
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB11_54
# %bb.52:                               #   in Loop: Header=BB11_43 Depth=1
	ld	s5, 0(s1)
	ld	s6, 8(s1)
	j	.LBB11_42
.LBB11_53:
	ld	a2, 584(s0)
	li	a0, 1
	sw	a0, 28(a2)
	sd	s5, 0(s1)
	sd	a1, 8(s1)
.LBB11_54:
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
.Lfunc_end11:
	.size	get_sof, .Lfunc_end11-get_sof
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function examine_app0
	.type	examine_app0,@function
examine_app0:                           # @examine_app0
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	slli	a4, a2, 32
	srli	a4, a4, 32
	li	a5, 14
	add	s1, a4, a3
	bltu	a2, a5, .LBB12_12
# %bb.1:
	lbu	a2, 0(a1)
	li	a3, 74
	bne	a2, a3, .LBB12_18
# %bb.2:
	lbu	a2, 1(a1)
	li	a3, 70
	bne	a2, a3, .LBB12_14
# %bb.3:
	lbu	a2, 2(a1)
	li	a3, 73
	bne	a2, a3, .LBB12_14
# %bb.4:
	lbu	a2, 3(a1)
	li	a3, 70
	bne	a2, a3, .LBB12_14
# %bb.5:
	lbu	a2, 4(a1)
	bnez	a2, .LBB12_14
# %bb.6:
	li	a3, 1
	sw	a3, 372(a0)
	lbu	a6, 5(a1)
	sb	a6, 376(a0)
	lbu	a4, 6(a1)
	sb	a4, 377(a0)
	lbu	a2, 7(a1)
	sb	a2, 378(a0)
	lbu	a5, 8(a1)
	lbu	a7, 9(a1)
	slli	a5, a5, 8
	or	a5, a5, a7
	sh	a5, 380(a0)
	lbu	a7, 10(a1)
	mv	s2, a1
	lbu	a1, 11(a1)
	slli	a7, a7, 8
	or	a1, a7, a1
	sh	a1, 382(a0)
	mv	s0, a0
	beq	a6, a3, .LBB12_8
# %bb.7:
	ld	a1, 0(a0)
	sw	a6, 44(a1)
	lbu	a2, 377(a0)
	ld	a3, 0(a0)
	li	a4, 119
	sw	a4, 40(a1)
	sw	a2, 48(a3)
	ld	a0, 0(a0)
	ld	a2, 8(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	mv	a0, s0
	lbu	a3, 376(s0)
	lbu	a4, 377(s0)
	lhu	a5, 380(s0)
	lhu	a1, 382(s0)
	lbu	a2, 378(s0)
.LBB12_8:
	ld	a6, 0(a0)
	sw	a3, 44(a6)
	sw	a4, 48(a6)
	lui	a3, 16
	addi	a3, a3, -1
	and	a5, a5, a3
	sw	a5, 52(a6)
	and	a1, a1, a3
	sw	a1, 56(a6)
	ld	a3, 8(a6)
	sw	a2, 60(a6)
	li	a1, 87
	sw	a1, 40(a6)
	li	a1, 1
	jalr	a3
	lbu	a0, 12(s2)
	lbu	a1, 13(s2)
	or	a2, a1, a0
	beqz	a2, .LBB12_10
# %bb.9:
	mv	a0, s0
	ld	a1, 0(s0)
	li	a2, 90
	sw	a2, 40(a1)
	lbu	a2, 12(s2)
	sw	a2, 44(a1)
	lbu	a1, 13(s2)
	ld	a2, 0(s0)
	sw	a1, 48(a2)
	ld	a1, 0(s0)
	ld	a2, 8(a1)
	li	a1, 1
	jalr	a2
	lbu	a0, 12(s2)
	lbu	a1, 13(s2)
.LBB12_10:
	addi	s1, s1, -14
	mul	a0, a0, a1
	slli	a1, a0, 1
	add	a0, a1, a0
	bne	s1, a0, .LBB12_25
# %bb.11:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB12_12:
	li	a3, 6
	bltu	a2, a3, .LBB12_18
# %bb.13:
	lbu	a2, 0(a1)
	li	a3, 74
	bne	a2, a3, .LBB12_18
.LBB12_14:
	lbu	a2, 1(a1)
	li	a3, 70
	bne	a2, a3, .LBB12_18
# %bb.15:
	lbu	a3, 2(a1)
	li	a2, 88
	bne	a3, a2, .LBB12_18
# %bb.16:
	lbu	a3, 3(a1)
	bne	a3, a2, .LBB12_18
# %bb.17:
	lbu	a2, 4(a1)
	beqz	a2, .LBB12_21
.LBB12_18:
	ld	a1, 0(a0)
	li	a2, 77
.LBB12_19:
	sw	a2, 40(a1)
	sw	s1, 44(a1)
.LBB12_20:
	ld	a1, 0(a0)
	ld	t1, 8(a1)
	li	a1, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.LBB12_21:
	lbu	a3, 5(a1)
	ld	a2, 0(a0)
	li	a4, 19
	beq	a3, a4, .LBB12_27
# %bb.22:
	li	a4, 17
	beq	a3, a4, .LBB12_26
# %bb.23:
	li	a4, 16
	bne	a3, a4, .LBB12_29
# %bb.24:
	li	a1, 108
	j	.LBB12_28
.LBB12_25:
	mv	a0, s0
	ld	a1, 0(s0)
	li	a2, 88
	j	.LBB12_19
.LBB12_26:
	li	a1, 109
	j	.LBB12_28
.LBB12_27:
	li	a1, 110
.LBB12_28:
	sw	a1, 40(a2)
	sw	s1, 44(a2)
	j	.LBB12_20
.LBB12_29:
	li	a3, 89
	sw	a3, 40(a2)
	lbu	a1, 5(a1)
	sw	a1, 44(a2)
	ld	a1, 0(a0)
	sw	s1, 48(a1)
	j	.LBB12_20
.Lfunc_end12:
	.size	examine_app0, .Lfunc_end12-examine_app0
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
