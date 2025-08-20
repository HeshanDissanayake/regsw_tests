	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdphuff.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_phuff_decoder             # -- Begin function jinit_phuff_decoder
	.p2align	2
	.type	jinit_phuff_decoder,@function
jinit_phuff_decoder:                    # @jinit_phuff_decoder
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 104
	mv	a0, s0
	jalr	a3
	sd	a0, 592(s0)
	sd	zero, 88(a0)
	sd	zero, 80(a0)
	sd	zero, 72(a0)
	sd	zero, 64(a0)
	ld	a1, 8(s0)
	lw	a2, 56(s0)
	lui	a3, %hi(start_pass_phuff_decoder)
	addi	a3, a3, %lo(start_pass_phuff_decoder)
	ld	a4, 0(a1)
	sd	a3, 0(a0)
	slliw	a2, a2, 6
	slli	a2, a2, 2
	li	a1, 1
	mv	a0, s0
	jalr	a4
	lw	a1, 56(s0)
	sd	a0, 192(s0)
	blez	a1, .LBB0_3
# %bb.1:                                # %.preheader
	mv	s1, a0
	li	s2, 0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	li	a1, 255
	li	a2, 256
	mv	a0, s1
	call	memset
	lw	a0, 56(s0)
	addiw	s2, s2, 1
	addi	s1, s1, 256
	blt	s2, a0, .LBB0_2
.LBB0_3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jinit_phuff_decoder, .Lfunc_end0-jinit_phuff_decoder
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_phuff_decoder
	.type	start_pass_phuff_decoder,@function
start_pass_phuff_decoder:               # @start_pass_phuff_decoder
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
	mv	s0, a0
	lw	s1, 524(a0)
	lw	a0, 528(a0)
	beqz	s1, .LBB1_2
# %bb.1:
	slt	a1, a0, s1
	lw	a2, 432(s0)
	slti	a0, a0, 64
	xori	a0, a0, 1
	or	a0, a1, a0
	addi	a2, a2, -1
	snez	a1, a2
	or	a0, a1, a0
	lw	a1, 536(s0)
	ld	s2, 592(s0)
	li	a2, 13
	bge	a2, a1, .LBB1_3
	j	.LBB1_6
.LBB1_2:
	snez	a0, a0
	lw	a1, 536(s0)
	ld	s2, 592(s0)
	li	a2, 13
	blt	a2, a1, .LBB1_6
.LBB1_3:
	lw	a2, 532(s0)
	snez	a3, a2
	addiw	a2, a2, -1
	xor	a1, a1, a2
	snez	a1, a1
	and	a1, a3, a1
	bnez	a1, .LBB1_6
# %bb.4:
	bnez	a0, .LBB1_6
# %bb.5:
	lw	a0, 432(s0)
	bgtz	a0, .LBB1_7
	j	.LBB1_27
.LBB1_6:
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	lw	a1, 528(s0)
	ld	a2, 0(s0)
	li	a3, 16
	sw	a3, 40(a0)
	sw	a1, 48(a2)
	lw	a0, 532(s0)
	ld	a1, 0(s0)
	sw	a0, 52(a1)
	lw	a0, 536(s0)
	ld	a1, 0(s0)
	sw	a0, 56(a1)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 432(s0)
	blez	a0, .LBB1_27
.LBB1_7:
	addi	s3, s0, 440
	beqz	s1, .LBB1_17
# %bb.8:                                # %.preheader6
	li	s4, 0
	li	s5, 115
	j	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	lw	a0, 432(s0)
	addi	s4, s4, 1
	bge	s4, a0, .LBB1_27
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	slli	a0, s4, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	s6, 4(a0)
	ld	s9, 192(s0)
	slli	s10, s6, 8
	add	a0, s9, s10
	lw	a0, 0(a0)
	bltz	a0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	lw	s7, 524(s0)
	lw	a0, 528(s0)
	blt	a0, s7, .LBB1_9
	j	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_10 Depth=1
	ld	a0, 0(s0)
	sw	s6, 44(a0)
	ld	a1, 0(s0)
	sw	s5, 40(a0)
	sw	zero, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	lw	s7, 524(s0)
	lw	a0, 528(s0)
	blt	a0, s7, .LBB1_9
.LBB1_13:                               #   in Loop: Header=BB1_10 Depth=1
	addi	s8, s7, -1
	slli	a0, s7, 2
	add	a0, s9, a0
	add	s9, a0, s10
	j	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=2
	lw	a0, 536(s0)
	sw	a0, 0(s9)
	lw	a0, 528(s0)
	addi	s8, s8, 1
	addi	s7, s7, 1
	addi	s9, s9, 4
	bge	s8, a0, .LBB1_9
.LBB1_15:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(s9)
	lw	a1, 532(s0)
	sgtz	a2, a0
	neg	a2, a2
	and	a0, a2, a0
	beq	a1, a0, .LBB1_14
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	ld	a0, 0(s0)
	sw	s6, 44(a0)
	ld	a1, 0(s0)
	sw	s5, 40(a0)
	sw	s7, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	j	.LBB1_14
.LBB1_17:
	lw	a2, 524(s0)
	lw	a1, 528(s0)
	bge	a1, a2, .LBB1_19
# %bb.18:
	lw	a1, 532(s0)
	beqz	a1, .LBB1_33
	j	.LBB1_30
.LBB1_19:                               # %.preheader3
	li	s4, 0
	li	s5, 115
	j	.LBB1_22
.LBB1_20:                               #   in Loop: Header=BB1_22 Depth=1
	lw	a0, 432(s0)
.LBB1_21:                               #   in Loop: Header=BB1_22 Depth=1
	addi	s4, s4, 1
	bge	s4, a0, .LBB1_27
.LBB1_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
	lw	s6, 524(s0)
	blt	a1, s6, .LBB1_21
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	slli	a0, s4, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	s7, 4(a0)
	ld	a0, 192(s0)
	addi	s8, s6, -1
	slli	s9, s7, 8
	slli	a1, s6, 2
	add	a0, a0, a1
	add	s9, a0, s9
	j	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_25 Depth=2
	lw	a0, 536(s0)
	sw	a0, 0(s9)
	lw	a1, 528(s0)
	addi	s8, s8, 1
	addi	s6, s6, 1
	addi	s9, s9, 4
	bge	s8, a1, .LBB1_20
.LBB1_25:                               #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(s9)
	lw	a1, 532(s0)
	sgtz	a2, a0
	neg	a2, a2
	and	a0, a2, a0
	beq	a1, a0, .LBB1_24
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=2
	ld	a0, 0(s0)
	sw	s7, 44(a0)
	ld	a1, 0(s0)
	sw	s5, 40(a0)
	sw	s6, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	j	.LBB1_24
.LBB1_27:
	lw	a1, 532(s0)
	beqz	a1, .LBB1_31
# %bb.28:
	beqz	s1, .LBB1_30
# %bb.29:
	lui	a1, %hi(decode_mcu_AC_refine)
	addi	a1, a1, %lo(decode_mcu_AC_refine)
	sd	a1, 8(s2)
	bgtz	a0, .LBB1_34
	j	.LBB1_37
.LBB1_30:
	lui	a1, %hi(decode_mcu_DC_refine)
	addi	a1, a1, %lo(decode_mcu_DC_refine)
	sd	a1, 8(s2)
	bgtz	a0, .LBB1_34
	j	.LBB1_37
.LBB1_31:
	beqz	s1, .LBB1_33
# %bb.32:
	lui	a1, %hi(decode_mcu_AC_first)
	addi	a1, a1, %lo(decode_mcu_AC_first)
	sd	a1, 8(s2)
	bgtz	a0, .LBB1_34
	j	.LBB1_37
.LBB1_33:
	lui	a1, %hi(decode_mcu_DC_first)
	addi	a1, a1, %lo(decode_mcu_DC_first)
	sd	a1, 8(s2)
	blez	a0, .LBB1_37
.LBB1_34:
	addi	s3, s0, 440
	addi	s4, s2, 64
	addi	s5, s2, 44
	beqz	s1, .LBB1_39
# %bb.35:                               # %.preheader1
	li	s6, 0
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	lw	a2, 24(a0)
	slli	s1, a2, 3
	add	s1, s4, s1
	mv	a0, s0
	li	a1, 0
	mv	a3, s1
	call	jpeg_make_d_derived_tbl
	ld	a0, 0(s1)
	sw	zero, 0(s5)
	lw	a1, 432(s0)
	sd	a0, 96(s2)
	addi	s6, s6, 1
	addi	s5, s5, 4
	addi	s3, s3, 8
	blt	s6, a1, .LBB1_36
.LBB1_37:
	sw	zero, 32(s2)
	lw	a0, 368(s0)
	sd	zero, 24(s2)
	sw	zero, 16(s2)
	sw	zero, 40(s2)
	sw	a0, 60(s2)
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
.LBB1_38:                               #   in Loop: Header=BB1_39 Depth=1
	sw	zero, 0(s5)
	lw	a0, 432(s0)
	addi	s1, s1, 1
	addi	s5, s5, 4
	addi	s3, s3, 8
	bge	s1, a0, .LBB1_37
.LBB1_39:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 532(s0)
	bnez	a0, .LBB1_38
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=1
	ld	a0, 0(s3)
	lw	a2, 20(a0)
	slli	a3, a2, 3
	add	a3, s4, a3
	li	a1, 1
	mv	a0, s0
	call	jpeg_make_d_derived_tbl
	j	.LBB1_38
.Lfunc_end1:
	.size	start_pass_phuff_decoder, .Lfunc_end1-start_pass_phuff_decoder
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decode_mcu_DC_first
	.type	decode_mcu_DC_first,@function
decode_mcu_DC_first:                    # @decode_mcu_DC_first
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
	mv	s0, a0
	ld	s3, 592(a0)
	lw	a0, 368(a0)
	lw	s4, 536(s0)
	mv	s1, a1
	beqz	a0, .LBB2_2
# %bb.1:
	lw	a0, 60(s3)
	beqz	a0, .LBB2_20
.LBB2_2:
	lw	a0, 16(s3)
	bnez	a0, .LBB2_28
# %bb.3:
	ld	a0, 40(s0)
	sd	s0, 64(sp)
	ld	a3, 0(a0)
	lw	a1, 56(s3)
	lwu	a2, 44(s3)
	lwu	a5, 40(s3)
	ld	a4, 8(a0)
	sw	a1, 24(sp)
	slli	a2, a2, 32
	or	a2, a2, a5
	lwu	a5, 52(s3)
	lwu	a6, 48(s3)
	ld	a1, 24(s3)
	sd	a2, 8(sp)
	slli	a5, a5, 32
	or	a5, a5, a6
	lw	a6, 480(s0)
	lw	a2, 32(s3)
	sd	a3, 32(sp)
	sd	a4, 40(sp)
	sd	a5, 16(sp)
	blez	a6, .LBB2_27
# %bb.4:
	li	s5, 0
	addi	s6, s0, 484
	addi	s7, s0, 440
	addi	s8, s3, 64
	li	s10, 7
	j	.LBB2_7
.LBB2_5:                                #   in Loop: Header=BB2_7 Depth=1
	li	a0, 0
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	slli	s9, s9, 2
	addi	a3, sp, 12
	add	s9, a3, s9
	lw	a3, 0(s9)
	add	a0, a3, a0
	sw	a0, 0(s9)
	sllw	a0, a0, s4
	lw	a3, 480(s0)
	sh	a0, 0(s11)
	addi	s5, s5, 1
	addi	s6, s6, 4
	addi	s1, s1, 8
	bge	s5, a3, .LBB2_26
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	lw	s9, 0(s6)
	slli	a0, s9, 3
	add	a0, s7, a0
	ld	a0, 0(a0)
	lw	a0, 20(a0)
	ld	s11, 0(s1)
	slli	a0, a0, 3
	add	a0, s8, a0
	ld	s2, 0(a0)
	blt	s10, a2, .LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	addi	a0, sp, 32
	li	a3, 0
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB2_29
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	lw	a2, 56(sp)
	ld	a1, 48(sp)
	li	a4, 1
	li	a0, 8
	blt	a2, a0, .LBB2_13
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	addi	a0, a2, -8
	sra	a0, a1, a0
	andi	a0, a0, 255
	slli	a3, a0, 2
	add	a3, s2, a3
	lw	a3, 288(a3)
	beqz	a3, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=1
	add	a0, s2, a0
	lbu	s2, 1312(a0)
	subw	a2, a2, a3
	bnez	s2, .LBB2_15
	j	.LBB2_5
.LBB2_12:                               #   in Loop: Header=BB2_7 Depth=1
	li	a4, 9
.LBB2_13:                               #   in Loop: Header=BB2_7 Depth=1
	addi	a0, sp, 32
	mv	a3, s2
	call	jpeg_huff_decode
	bltz	a0, .LBB2_30
# %bb.14:                               #   in Loop: Header=BB2_7 Depth=1
	mv	s2, a0
	ld	a1, 48(sp)
	lw	a2, 56(sp)
	beqz	a0, .LBB2_5
.LBB2_15:                               #   in Loop: Header=BB2_7 Depth=1
	bge	a2, s2, .LBB2_18
# %bb.16:                               #   in Loop: Header=BB2_7 Depth=1
	addi	a0, sp, 32
	mv	a3, s2
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB2_29
# %bb.17:                               #   in Loop: Header=BB2_7 Depth=1
	ld	a1, 48(sp)
	lw	a2, 56(sp)
.LBB2_18:                               #   in Loop: Header=BB2_7 Depth=1
	subw	a2, a2, s2
	sra	a0, a1, a2
	slli	a3, s2, 2
	lui	a4, %hi(extend_test)
	addi	a4, a4, %lo(extend_test)
	add	a4, a4, a3
	lw	a4, 0(a4)
	li	a5, -1
	sllw	a5, a5, s2
	not	a5, a5
	and	a0, a0, a5
	bge	a0, a4, .LBB2_6
# %bb.19:                               #   in Loop: Header=BB2_7 Depth=1
	lui	a4, %hi(extend_offset)
	addi	a4, a4, %lo(extend_offset)
	add	a3, a4, a3
	lw	a3, 0(a3)
	add	a0, a3, a0
	j	.LBB2_6
.LBB2_20:
	lw	a0, 32(s3)
	ld	a1, 584(s0)
	slli	a2, a0, 1
	srli	a2, a2, 61
	lw	a3, 36(a1)
	add	a0, a0, a2
	sraiw	a0, a0, 3
	ld	a2, 16(a1)
	add	a0, a3, a0
	sw	a0, 36(a1)
	sw	zero, 32(s3)
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB2_29
# %bb.21:
	lw	a0, 432(s0)
	blez	a0, .LBB2_24
# %bb.22:
	li	a0, 0
	addi	a1, s3, 44
.LBB2_23:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a2, 432(s0)
	addi	a0, a0, 1
	addi	a1, a1, 4
	blt	a0, a2, .LBB2_23
.LBB2_24:
	lw	a0, 368(s0)
	lw	a1, 540(s0)
	sw	zero, 40(s3)
	sw	a0, 60(s3)
	bnez	a1, .LBB2_2
# %bb.25:
	sw	zero, 16(s3)
	j	.LBB2_2
.LBB2_26:
	ld	a3, 32(sp)
	ld	a0, 40(s0)
	ld	a4, 40(sp)
.LBB2_27:
	sd	a3, 0(a0)
	lw	a3, 8(sp)
	sd	a4, 8(a0)
	sd	a1, 24(s3)
	sw	a2, 32(s3)
	sw	a3, 40(s3)
	lw	a0, 12(sp)
	lw	a1, 16(sp)
	lw	a2, 20(sp)
	lw	a3, 24(sp)
	sw	a0, 44(s3)
	sw	a1, 48(s3)
	sw	a2, 52(s3)
	sw	a3, 56(s3)
.LBB2_28:
	lw	a0, 60(s3)
	addi	a0, a0, -1
	sw	a0, 60(s3)
	li	a0, 1
.LBB2_29:
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
.LBB2_30:
	li	a0, 0
	j	.LBB2_29
.Lfunc_end2:
	.size	decode_mcu_DC_first, .Lfunc_end2-decode_mcu_DC_first
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decode_mcu_AC_first
	.type	decode_mcu_AC_first,@function
decode_mcu_AC_first:                    # @decode_mcu_AC_first
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
	mv	s0, a0
	ld	s4, 592(a0)
	lw	s5, 528(a0)
	lw	a0, 368(a0)
	lw	s6, 536(s0)
	beqz	a0, .LBB3_2
# %bb.1:
	lw	a0, 60(s4)
	beqz	a0, .LBB3_5
.LBB3_2:
	lw	a0, 16(s4)
	bnez	a0, .LBB3_15
# %bb.3:
	lw	s1, 40(s4)
	beqz	s1, .LBB3_11
# %bb.4:
	addi	s1, s1, -1
	j	.LBB3_14
.LBB3_5:
	mv	s1, a1
	lw	a0, 32(s4)
	ld	a1, 584(s0)
	slli	a2, a0, 1
	srli	a2, a2, 61
	lw	a3, 36(a1)
	add	a0, a0, a2
	sraiw	a0, a0, 3
	ld	a2, 16(a1)
	add	a0, a3, a0
	sw	a0, 36(a1)
	sw	zero, 32(s4)
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB3_16
# %bb.6:
	lw	a0, 432(s0)
	blez	a0, .LBB3_9
# %bb.7:
	li	a0, 0
	addi	a1, s4, 44
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a2, 432(s0)
	addi	a0, a0, 1
	addi	a1, a1, 4
	blt	a0, a2, .LBB3_8
.LBB3_9:
	lw	a0, 368(s0)
	lw	a2, 540(s0)
	sw	zero, 40(s4)
	sw	a0, 60(s4)
	mv	a1, s1
	bnez	a2, .LBB3_2
# %bb.10:
	sw	zero, 16(s4)
	j	.LBB3_2
.LBB3_11:
	mv	a0, a1
	ld	a1, 40(s0)
	ld	a3, 0(a1)
	ld	a4, 8(a1)
	ld	a1, 24(s4)
	lw	s11, 524(s0)
	lw	a2, 32(s4)
	sd	s0, 32(sp)
	sd	a3, 0(sp)
	sd	a4, 8(sp)
	bge	s5, s11, .LBB3_17
.LBB3_12:
	li	s1, 0
.LBB3_13:
	ld	a0, 0(sp)
	ld	a3, 40(s0)
	ld	a4, 8(sp)
	sd	a0, 0(a3)
	sd	a4, 8(a3)
	sd	a1, 24(s4)
	sw	a2, 32(s4)
.LBB3_14:
	sw	s1, 40(s4)
.LBB3_15:
	lw	a0, 60(s4)
	addi	a0, a0, -1
	sw	a0, 60(s4)
	li	a0, 1
.LBB3_16:
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
.LBB3_17:
	ld	s1, 96(s4)
	ld	s7, 0(a0)
	addi	s8, s1, 288
	addi	s9, s1, 1312
	li	s10, 7
	j	.LBB3_19
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=1
	addw	a0, s2, s11
	slli	a4, a0, 2
	lui	a5, %hi(jpeg_natural_order)
	addi	a5, a5, %lo(jpeg_natural_order)
	add	a4, a5, a4
	lw	a4, 0(a4)
	sllw	a3, a3, s6
	slli	a4, a4, 1
	add	a4, s7, a4
	sh	a3, 0(a4)
	addi	s11, a0, 1
	bge	a0, s5, .LBB3_12
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	blt	s10, a2, .LBB3_22
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=1
	mv	a0, sp
	li	a3, 0
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB3_16
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=1
	lw	a2, 24(sp)
	ld	a1, 16(sp)
	li	a4, 1
	li	a0, 8
	blt	a2, a0, .LBB3_27
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=1
	addi	a0, a2, -8
	sra	a0, a1, a0
	andi	a0, a0, 255
	slli	a3, a0, 2
	add	a3, s8, a3
	lw	a3, 0(a3)
	beqz	a3, .LBB3_26
# %bb.23:                               #   in Loop: Header=BB3_19 Depth=1
	add	a0, s9, a0
	lbu	a0, 0(a0)
	subw	a2, a2, a3
	andi	s3, a0, 15
	srliw	s2, a0, 4
	bnez	s3, .LBB3_29
.LBB3_24:                               #   in Loop: Header=BB3_19 Depth=1
	li	a3, 15
	bne	s2, a3, .LBB3_35
# %bb.25:                               #   in Loop: Header=BB3_19 Depth=1
	addiw	a0, s11, 15
	addi	s11, a0, 1
	blt	a0, s5, .LBB3_19
	j	.LBB3_12
.LBB3_26:                               #   in Loop: Header=BB3_19 Depth=1
	li	a4, 9
.LBB3_27:                               #   in Loop: Header=BB3_19 Depth=1
	mv	a0, sp
	mv	a3, s1
	call	jpeg_huff_decode
	bltz	a0, .LBB3_34
# %bb.28:                               #   in Loop: Header=BB3_19 Depth=1
	ld	a1, 16(sp)
	lw	a2, 24(sp)
	andi	s3, a0, 15
	srliw	s2, a0, 4
	beqz	s3, .LBB3_24
.LBB3_29:                               #   in Loop: Header=BB3_19 Depth=1
	bge	a2, s3, .LBB3_32
# %bb.30:                               #   in Loop: Header=BB3_19 Depth=1
	mv	a0, sp
	mv	a3, s3
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB3_16
# %bb.31:                               #   in Loop: Header=BB3_19 Depth=1
	ld	a1, 16(sp)
	lw	a2, 24(sp)
.LBB3_32:                               #   in Loop: Header=BB3_19 Depth=1
	subw	a2, a2, s3
	sra	a3, a1, a2
	slli	a0, s3, 2
	lui	a4, %hi(extend_test)
	addi	a4, a4, %lo(extend_test)
	add	a4, a4, a0
	lw	a4, 0(a4)
	li	a5, -1
	sllw	a5, a5, s3
	not	a5, a5
	and	a3, a3, a5
	bge	a3, a4, .LBB3_18
# %bb.33:                               #   in Loop: Header=BB3_19 Depth=1
	lui	a4, %hi(extend_offset)
	addi	a4, a4, %lo(extend_offset)
	add	a0, a4, a0
	lw	a0, 0(a0)
	add	a3, a0, a3
	j	.LBB3_18
.LBB3_34:
	li	a0, 0
	j	.LBB3_16
.LBB3_35:
	li	a3, 1
	li	a4, 16
	sllw	s1, a3, s2
	bltu	a0, a4, .LBB3_40
# %bb.36:
	bge	a2, s2, .LBB3_39
# %bb.37:
	mv	a0, sp
	mv	a3, s2
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB3_16
# %bb.38:
	ld	a1, 16(sp)
	lw	a2, 24(sp)
.LBB3_39:
	subw	a2, a2, s2
	sra	a0, a1, a2
	addi	a3, s1, -1
	and	a0, a3, a0
	add	s1, a0, s1
.LBB3_40:
	addi	s1, s1, -1
	j	.LBB3_13
.Lfunc_end3:
	.size	decode_mcu_AC_first, .Lfunc_end3-decode_mcu_AC_first
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decode_mcu_DC_refine
	.type	decode_mcu_DC_refine,@function
decode_mcu_DC_refine:                   # @decode_mcu_DC_refine
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	ld	s2, 592(a0)
	lw	a0, 368(a0)
	lwu	s3, 536(s0)
	mv	s1, a1
	beqz	a0, .LBB4_2
# %bb.1:
	lw	a0, 60(s2)
	beqz	a0, .LBB4_13
.LBB4_2:
	ld	a0, 40(s0)
	ld	a4, 0(a0)
	ld	a3, 8(a0)
	ld	a1, 24(s2)
	lw	a5, 480(s0)
	lw	a2, 32(s2)
	sd	s0, 32(sp)
	sd	a4, 0(sp)
	sd	a3, 8(sp)
	blez	a5, .LBB4_11
# %bb.3:
	li	s4, 0
	li	a0, 1
	sllw	s3, a0, s3
	j	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	lw	a0, 480(s0)
	addi	s4, s4, 1
	addi	s1, s1, 8
	bge	s4, a0, .LBB4_10
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	ld	s5, 0(s1)
	blez	a2, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	bnez	a0, .LBB4_9
	j	.LBB4_4
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	mv	a0, sp
	li	a3, 1
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB4_12
# %bb.8:                                #   in Loop: Header=BB4_5 Depth=1
	ld	a1, 16(sp)
	lw	a2, 24(sp)
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	beqz	a0, .LBB4_4
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=1
	lh	a0, 0(s5)
	or	a0, a0, s3
	sh	a0, 0(s5)
	j	.LBB4_4
.LBB4_10:
	ld	a4, 0(sp)
	ld	a0, 40(s0)
	ld	a3, 8(sp)
.LBB4_11:
	sd	a4, 0(a0)
	lw	a4, 60(s2)
	sd	a3, 8(a0)
	sd	a1, 24(s2)
	sw	a2, 32(s2)
	addi	a4, a4, -1
	sw	a4, 60(s2)
	li	a0, 1
.LBB4_12:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.LBB4_13:
	lw	a0, 32(s2)
	ld	a1, 584(s0)
	slli	a2, a0, 1
	srli	a2, a2, 61
	lw	a3, 36(a1)
	add	a0, a0, a2
	sraiw	a0, a0, 3
	ld	a2, 16(a1)
	add	a0, a3, a0
	sw	a0, 36(a1)
	sw	zero, 32(s2)
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB4_12
# %bb.14:
	lw	a0, 432(s0)
	blez	a0, .LBB4_17
# %bb.15:
	li	a0, 0
	addi	a1, s2, 44
.LBB4_16:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a2, 432(s0)
	addi	a0, a0, 1
	addi	a1, a1, 4
	blt	a0, a2, .LBB4_16
.LBB4_17:
	lw	a0, 368(s0)
	lw	a1, 540(s0)
	sw	zero, 40(s2)
	sw	a0, 60(s2)
	bnez	a1, .LBB4_2
# %bb.18:
	sw	zero, 16(s2)
	j	.LBB4_2
.Lfunc_end4:
	.size	decode_mcu_DC_refine, .Lfunc_end4-decode_mcu_DC_refine
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decode_mcu_AC_refine
	.type	decode_mcu_AC_refine,@function
decode_mcu_AC_refine:                   # @decode_mcu_AC_refine
# %bb.0:
	addi	sp, sp, -448
	sd	ra, 440(sp)                     # 8-byte Folded Spill
	sd	s0, 432(sp)                     # 8-byte Folded Spill
	sd	s1, 424(sp)                     # 8-byte Folded Spill
	sd	s2, 416(sp)                     # 8-byte Folded Spill
	sd	s3, 408(sp)                     # 8-byte Folded Spill
	sd	s4, 400(sp)                     # 8-byte Folded Spill
	sd	s5, 392(sp)                     # 8-byte Folded Spill
	sd	s6, 384(sp)                     # 8-byte Folded Spill
	sd	s7, 376(sp)                     # 8-byte Folded Spill
	sd	s8, 368(sp)                     # 8-byte Folded Spill
	sd	s9, 360(sp)                     # 8-byte Folded Spill
	sd	s10, 352(sp)                    # 8-byte Folded Spill
	sd	s11, 344(sp)                    # 8-byte Folded Spill
	mv	s0, a0
	ld	s3, 592(a0)
	lw	s11, 528(a0)
	lw	a0, 368(a0)
	lwu	s2, 536(s0)
	mv	s1, a1
	beqz	a0, .LBB5_2
# %bb.1:
	lw	a0, 60(s3)
	beqz	a0, .LBB5_42
.LBB5_2:
	lw	a0, 16(s3)
	bnez	a0, .LBB5_58
# %bb.3:
	sd	zero, 32(sp)                    # 8-byte Folded Spill
	li	a0, 1
	ld	a1, 40(s0)
	sllw	s7, a0, s2
	li	a0, -1
	sllw	a0, a0, s2
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a1)
	ld	a3, 8(a1)
	ld	a1, 24(s3)
	lw	a2, 32(s3)
	lw	s10, 40(s3)
	ld	s6, 0(s1)
	lw	s9, 524(s0)
	sd	a0, 304(sp)
	sd	a3, 312(sp)
	sd	s0, 336(sp)
	bnez	s10, .LBB5_54
# %bb.4:
	blt	s11, s9, .LBB5_54
# %bb.5:
	ld	a0, 96(s3)
	sd	zero, 32(sp)                    # 8-byte Folded Spill
	addi	a3, a0, 288
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 1312
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	j	.LBB5_7
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=1
	addiw	s9, s10, 1
	bge	s10, s11, .LBB5_48
.LBB5_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
	li	a0, 7
	blt	a0, a2, .LBB5_10
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	addi	a0, sp, 304
	li	a3, 0
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_71
# %bb.9:                                #   in Loop: Header=BB5_7 Depth=1
	lw	a2, 328(sp)
	ld	a1, 320(sp)
	li	a4, 1
	li	a0, 8
	blt	a2, a0, .LBB5_15
.LBB5_10:                               #   in Loop: Header=BB5_7 Depth=1
	addi	a0, a2, -8
	sra	a0, a1, a0
	andi	a0, a0, 255
	slli	a3, a0, 2
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	add	a3, a4, a3
	lw	a3, 0(a3)
	beqz	a3, .LBB5_14
# %bb.11:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	add	a0, a4, a0
	lbu	a0, 0(a0)
	subw	a2, a2, a3
	andi	a3, a0, 15
	srliw	s2, a0, 4
	bnez	a3, .LBB5_17
.LBB5_12:                               #   in Loop: Header=BB5_7 Depth=1
	li	a3, 15
	bne	s2, a3, .LBB5_49
# %bb.13:                               #   in Loop: Header=BB5_7 Depth=1
	li	s8, 0
	j	.LBB5_24
.LBB5_14:                               #   in Loop: Header=BB5_7 Depth=1
	li	a4, 9
.LBB5_15:                               #   in Loop: Header=BB5_7 Depth=1
	addi	a0, sp, 304
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	call	jpeg_huff_decode
	bltz	a0, .LBB5_71
# %bb.16:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a1, 320(sp)
	lw	a2, 328(sp)
	andi	a3, a0, 15
	srliw	s2, a0, 4
	beqz	a3, .LBB5_12
.LBB5_17:                               #   in Loop: Header=BB5_7 Depth=1
	li	a0, 1
	beq	a3, a0, .LBB5_19
# %bb.18:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a0, 0(s0)
	ld	a3, 8(a0)
	li	a4, 118
	sw	a4, 40(a0)
	mv	s1, a1
	li	a1, -1
	mv	a0, s0
	mv	s4, a2
	jalr	a3
	mv	a1, s1
	mv	a2, s4
.LBB5_19:                               #   in Loop: Header=BB5_7 Depth=1
	bgtz	a2, .LBB5_22
# %bb.20:                               #   in Loop: Header=BB5_7 Depth=1
	addi	a0, sp, 304
	li	a3, 1
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_71
# %bb.21:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a1, 320(sp)
	lw	a2, 328(sp)
.LBB5_22:                               #   in Loop: Header=BB5_7 Depth=1
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	ld	s8, 40(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB5_24
# %bb.23:                               #   in Loop: Header=BB5_7 Depth=1
	mv	s8, s7
.LBB5_24:                               #   in Loop: Header=BB5_7 Depth=1
	mv	a0, s9
	blt	s11, s9, .LBB5_26
# %bb.25:                               #   in Loop: Header=BB5_7 Depth=1
	mv	a0, s11
.LBB5_26:                               #   in Loop: Header=BB5_7 Depth=1
	addiw	s10, a0, 1
	sub	s1, a0, s9
	addi	s1, s1, 1
	slli	s5, s9, 2
	lui	a0, %hi(jpeg_natural_order)
	addi	a0, a0, %lo(jpeg_natural_order)
	add	s5, a0, s5
	j	.LBB5_29
.LBB5_27:                               #   in Loop: Header=BB5_29 Depth=2
	add	a0, a0, a3
	sh	a0, 0(s4)
.LBB5_28:                               #   in Loop: Header=BB5_29 Depth=2
	addiw	s9, s9, 1
	addi	s1, s1, -1
	addi	s5, s5, 4
	beqz	s1, .LBB5_40
.LBB5_29:                               #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(s5)
	slli	a0, a0, 1
	add	s4, s6, a0
	lhu	a0, 0(s4)
	beqz	a0, .LBB5_32
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=2
	blez	a2, .LBB5_34
# %bb.31:                               #   in Loop: Header=BB5_29 Depth=2
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	bnez	a0, .LBB5_36
	j	.LBB5_28
.LBB5_32:                               #   in Loop: Header=BB5_29 Depth=2
	blez	s2, .LBB5_39
# %bb.33:                               #   in Loop: Header=BB5_29 Depth=2
	addiw	s2, s2, -1
	j	.LBB5_28
.LBB5_34:                               #   in Loop: Header=BB5_29 Depth=2
	addi	a0, sp, 304
	li	a3, 1
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_71
# %bb.35:                               #   in Loop: Header=BB5_29 Depth=2
	ld	a1, 320(sp)
	lw	a2, 328(sp)
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	beqz	a0, .LBB5_28
.LBB5_36:                               #   in Loop: Header=BB5_29 Depth=2
	lh	a0, 0(s4)
	and	a3, s7, a0
	bnez	a3, .LBB5_28
# %bb.37:                               #   in Loop: Header=BB5_29 Depth=2
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	bltz	a0, .LBB5_27
# %bb.38:                               #   in Loop: Header=BB5_29 Depth=2
	mv	a3, s7
	j	.LBB5_27
.LBB5_39:                               #   in Loop: Header=BB5_7 Depth=1
	mv	s10, s9
.LBB5_40:                               #   in Loop: Header=BB5_7 Depth=1
	beqz	s8, .LBB5_6
# %bb.41:                               #   in Loop: Header=BB5_7 Depth=1
	slli	a0, s10, 2
	lui	a3, %hi(jpeg_natural_order)
	addi	a3, a3, %lo(jpeg_natural_order)
	add	a0, a3, a0
	lw	a0, 0(a0)
	slli	a3, a0, 1
	add	a3, s6, a3
	sh	s8, 0(a3)
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	slli	a3, a4, 2
	addiw	a4, a4, 1
	addi	a5, sp, 48
	add	a3, a5, a3
	sw	a0, 0(a3)
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	j	.LBB5_6
.LBB5_42:
	lw	a0, 32(s3)
	ld	a1, 584(s0)
	slli	a2, a0, 1
	srli	a2, a2, 61
	lw	a3, 36(a1)
	add	a0, a0, a2
	sraiw	a0, a0, 3
	ld	a2, 16(a1)
	add	a0, a3, a0
	sw	a0, 36(a1)
	sw	zero, 32(s3)
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB5_59
# %bb.43:
	lw	a0, 432(s0)
	blez	a0, .LBB5_46
# %bb.44:
	li	a0, 0
	addi	a1, s3, 44
.LBB5_45:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a2, 432(s0)
	addi	a0, a0, 1
	addi	a1, a1, 4
	blt	a0, a2, .LBB5_45
.LBB5_46:
	lw	a0, 368(s0)
	lw	a1, 540(s0)
	sw	zero, 40(s3)
	sw	a0, 60(s3)
	bnez	a1, .LBB5_2
# %bb.47:
	sw	zero, 16(s3)
	j	.LBB5_2
.LBB5_48:
	li	s10, 0
	j	.LBB5_57
.LBB5_49:
	li	a3, 1
	li	a4, 16
	sllw	s10, a3, s2
	bltu	a0, a4, .LBB5_55
# %bb.50:
	bge	a2, s2, .LBB5_53
# %bb.51:
	addi	a0, sp, 304
	mv	a3, s2
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_71
# %bb.52:
	ld	a1, 320(sp)
	lw	a2, 328(sp)
.LBB5_53:
	subw	a2, a2, s2
	sra	a0, a1, a2
	addi	a3, s10, -1
	and	a0, a3, a0
	addw	s10, a0, s10
.LBB5_54:
	beqz	s10, .LBB5_57
.LBB5_55:
	bge	s11, s9, .LBB5_60
.LBB5_56:
	addi	s10, s10, -1
.LBB5_57:
	ld	a0, 304(sp)
	ld	a3, 40(s0)
	ld	a4, 312(sp)
	sd	a0, 0(a3)
	sd	a4, 8(a3)
	sd	a1, 24(s3)
	sw	a2, 32(s3)
	sw	s10, 40(s3)
.LBB5_58:
	lw	a0, 60(s3)
	addi	a0, a0, -1
	sw	a0, 60(s3)
	li	a0, 1
.LBB5_59:
	ld	ra, 440(sp)                     # 8-byte Folded Reload
	ld	s0, 432(sp)                     # 8-byte Folded Reload
	ld	s1, 424(sp)                     # 8-byte Folded Reload
	ld	s2, 416(sp)                     # 8-byte Folded Reload
	ld	s3, 408(sp)                     # 8-byte Folded Reload
	ld	s4, 400(sp)                     # 8-byte Folded Reload
	ld	s5, 392(sp)                     # 8-byte Folded Reload
	ld	s6, 384(sp)                     # 8-byte Folded Reload
	ld	s7, 376(sp)                     # 8-byte Folded Reload
	ld	s8, 368(sp)                     # 8-byte Folded Reload
	ld	s9, 360(sp)                     # 8-byte Folded Reload
	ld	s10, 352(sp)                    # 8-byte Folded Reload
	ld	s11, 344(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 448
	ret
.LBB5_60:
	subw	s1, s11, s9
	addi	s1, s1, 1
	slli	s2, s9, 2
	lui	a0, %hi(jpeg_natural_order)
	addi	a0, a0, %lo(jpeg_natural_order)
	add	s2, a0, s2
	j	.LBB5_63
.LBB5_61:                               #   in Loop: Header=BB5_63 Depth=1
	add	a0, a0, a3
	sh	a0, 0(s4)
.LBB5_62:                               #   in Loop: Header=BB5_63 Depth=1
	addiw	s1, s1, -1
	addi	s2, s2, 4
	beqz	s1, .LBB5_56
.LBB5_63:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s2)
	slli	a0, a0, 1
	add	s4, s6, a0
	lhu	a0, 0(s4)
	beqz	a0, .LBB5_62
# %bb.64:                               #   in Loop: Header=BB5_63 Depth=1
	blez	a2, .LBB5_66
# %bb.65:                               #   in Loop: Header=BB5_63 Depth=1
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	bnez	a0, .LBB5_68
	j	.LBB5_62
.LBB5_66:                               #   in Loop: Header=BB5_63 Depth=1
	addi	a0, sp, 304
	li	a3, 1
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_71
# %bb.67:                               #   in Loop: Header=BB5_63 Depth=1
	ld	a1, 320(sp)
	lw	a2, 328(sp)
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	beqz	a0, .LBB5_62
.LBB5_68:                               #   in Loop: Header=BB5_63 Depth=1
	lh	a0, 0(s4)
	and	a3, s7, a0
	bnez	a3, .LBB5_62
# %bb.69:                               #   in Loop: Header=BB5_63 Depth=1
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	bltz	a0, .LBB5_61
# %bb.70:                               #   in Loop: Header=BB5_63 Depth=1
	mv	a3, s7
	j	.LBB5_61
.LBB5_71:
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	blez	a1, .LBB5_74
# %bb.72:
	slli	a1, a1, 2
	addi	a0, sp, 44
	add	a1, a0, a1
.LBB5_73:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	slli	a2, a2, 1
	add	a2, s6, a2
	addi	a1, a1, -4
	sh	zero, 0(a2)
	bne	a1, a0, .LBB5_73
.LBB5_74:
	li	a0, 0
	j	.LBB5_59
.Lfunc_end5:
	.size	decode_mcu_AC_refine, .Lfunc_end5-decode_mcu_AC_refine
                                        # -- End function
	.option	pop
	.type	extend_test,@object             # @extend_test
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
extend_test:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.word	256                             # 0x100
	.word	512                             # 0x200
	.word	1024                            # 0x400
	.word	2048                            # 0x800
	.word	4096                            # 0x1000
	.word	8192                            # 0x2000
	.word	16384                           # 0x4000
	.size	extend_test, 64

	.type	extend_offset,@object           # @extend_offset
	.p2align	2, 0x0
extend_offset:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967293                      # 0xfffffffd
	.word	4294967289                      # 0xfffffff9
	.word	4294967281                      # 0xfffffff1
	.word	4294967265                      # 0xffffffe1
	.word	4294967233                      # 0xffffffc1
	.word	4294967169                      # 0xffffff81
	.word	4294967041                      # 0xffffff01
	.word	4294966785                      # 0xfffffe01
	.word	4294966273                      # 0xfffffc01
	.word	4294965249                      # 0xfffff801
	.word	4294963201                      # 0xfffff001
	.word	4294959105                      # 0xffffe001
	.word	4294950913                      # 0xffffc001
	.word	4294934529                      # 0xffff8001
	.size	extend_offset, 64

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
