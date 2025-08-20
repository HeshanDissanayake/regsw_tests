	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcphuff.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_phuff_encoder             # -- Begin function jinit_phuff_encoder
	.p2align	2
	.type	jinit_phuff_encoder,@function
jinit_phuff_encoder:                    # @jinit_phuff_encoder
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 184
	mv	a0, s0
	jalr	a3
	sd	a0, 496(s0)
	lui	a1, %hi(start_pass_phuff)
	addi	a1, a1, %lo(start_pass_phuff)
	sd	a1, 0(a0)
	sd	zero, 104(a0)
	sd	zero, 176(a0)
	sd	zero, 168(a0)
	sd	zero, 160(a0)
	sd	zero, 152(a0)
	sd	zero, 144(a0)
	sd	zero, 136(a0)
	sd	zero, 128(a0)
	sd	zero, 120(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	jinit_phuff_encoder, .Lfunc_end0-jinit_phuff_encoder
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_phuff
	.type	start_pass_phuff,@function
start_pass_phuff:                       # @start_pass_phuff
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
	ld	s2, 496(a0)
	lw	a0, 420(a0)
	lw	s6, 412(s0)
	sd	s0, 64(s2)
	sw	a1, 24(s2)
	beqz	a0, .LBB1_4
# %bb.1:
	beqz	s6, .LBB1_6
# %bb.2:
	ld	a0, 104(s2)
	lui	a2, %hi(encode_mcu_AC_refine)
	addi	a2, a2, %lo(encode_mcu_AC_refine)
	sd	a2, 8(s2)
	bnez	a0, .LBB1_7
# %bb.3:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	mv	s1, a1
	li	a1, 1
	li	a2, 1000
	mv	a0, s0
	jalr	a3
	sd	a0, 104(s2)
	bnez	s1, .LBB1_8
	j	.LBB1_25
.LBB1_4:
	beqz	s6, .LBB1_24
# %bb.5:
	lui	a0, %hi(encode_mcu_AC_first)
	addi	a0, a0, %lo(encode_mcu_AC_first)
	sd	a0, 8(s2)
	bnez	a1, .LBB1_8
	j	.LBB1_25
.LBB1_6:
	lui	a0, %hi(encode_mcu_DC_refine)
	addi	a0, a0, %lo(encode_mcu_DC_refine)
	sd	a0, 8(s2)
.LBB1_7:
	beqz	a1, .LBB1_25
.LBB1_8:
	lui	a0, %hi(finish_pass_gather_phuff)
	addi	a0, a0, %lo(finish_pass_gather_phuff)
	sd	a0, 16(s2)
	lw	a0, 324(s0)
	blez	a0, .LBB1_29
# %bb.9:
	addi	s3, s0, 328
	addi	s4, s2, 72
	addi	s5, s2, 152
	beqz	s6, .LBB1_16
# %bb.10:                               # %.preheader5
	li	s6, 0
	li	s7, 4
	li	s8, 50
	lui	a0, 1
	addiw	s1, a0, -2040
	j	.LBB1_13
.LBB1_11:                               #   in Loop: Header=BB1_13 Depth=1
	slli	s9, s9, 3
	add	s9, s5, s9
	ld	a0, 0(s9)
	beqz	a0, .LBB1_15
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=1
	li	a1, 0
	mv	a2, s1
	call	memset
	lw	a0, 324(s0)
	addi	s6, s6, 1
	addi	s4, s4, 4
	addi	s3, s3, 8
	bge	s6, a0, .LBB1_29
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	sw	zero, 0(s4)
	lw	s9, 24(a0)
	sw	s9, 88(s2)
	bltu	s9, s7, .LBB1_11
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	ld	a0, 0(s0)
	sw	s9, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_11
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 0(s9)
	j	.LBB1_12
.LBB1_16:                               # %.preheader3
	li	s7, 4
	li	s8, 50
	lui	a0, 1
	addiw	s1, a0, -2040
	j	.LBB1_20
.LBB1_17:                               #   in Loop: Header=BB1_20 Depth=1
	slli	s9, s9, 3
	add	s9, s5, s9
	ld	a0, 0(s9)
	beqz	a0, .LBB1_23
.LBB1_18:                               #   in Loop: Header=BB1_20 Depth=1
	li	a1, 0
	mv	a2, s1
	call	memset
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=1
	lw	a0, 324(s0)
	addi	s6, s6, 1
	addi	s4, s4, 4
	addi	s3, s3, 8
	bge	s6, a0, .LBB1_29
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(s4)
	lw	a1, 420(s0)
	ld	a0, 0(s3)
	bnez	a1, .LBB1_19
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	lw	s9, 20(a0)
	bltu	s9, s7, .LBB1_17
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	ld	a0, 0(s0)
	sw	s9, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_17
.LBB1_23:                               #   in Loop: Header=BB1_20 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 0(s9)
	j	.LBB1_18
.LBB1_24:
	lui	a0, %hi(encode_mcu_DC_first)
	addi	a0, a0, %lo(encode_mcu_DC_first)
	sd	a0, 8(s2)
	bnez	a1, .LBB1_8
.LBB1_25:
	lui	a0, %hi(finish_pass_phuff)
	addi	a0, a0, %lo(finish_pass_phuff)
	sd	a0, 16(s2)
	lw	a0, 324(s0)
	blez	a0, .LBB1_29
# %bb.26:
	seqz	s1, s6
	addi	s3, s0, 328
	addi	s4, s2, 72
	addi	s5, s2, 120
	beqz	s6, .LBB1_31
# %bb.27:                               # %.preheader1
	li	s6, 0
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	sw	zero, 0(s4)
	lw	a2, 24(a0)
	sw	a2, 88(s2)
	slli	a3, a2, 3
	add	a3, s5, a3
	mv	a0, s0
	mv	a1, s1
	call	jpeg_make_c_derived_tbl
	lw	a0, 324(s0)
	addi	s6, s6, 1
	addi	s4, s4, 4
	addi	s3, s3, 8
	blt	s6, a0, .LBB1_28
.LBB1_29:
	sw	zero, 92(s2)
	lw	a0, 280(s0)
	sw	zero, 96(s2)
	sd	zero, 48(s2)
	sw	zero, 56(s2)
	sw	a0, 112(s2)
	sw	zero, 116(s2)
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
.LBB1_30:                               #   in Loop: Header=BB1_31 Depth=1
	lw	a0, 324(s0)
	addi	s6, s6, 1
	addi	s4, s4, 4
	addi	s3, s3, 8
	bge	s6, a0, .LBB1_29
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(s4)
	lw	a1, 420(s0)
	ld	a0, 0(s3)
	bnez	a1, .LBB1_30
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	lw	a2, 20(a0)
	slli	a3, a2, 3
	add	a3, s5, a3
	mv	a0, s0
	mv	a1, s1
	call	jpeg_make_c_derived_tbl
	j	.LBB1_30
.Lfunc_end1:
	.size	start_pass_phuff, .Lfunc_end1-start_pass_phuff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function encode_mcu_DC_first
	.type	encode_mcu_DC_first,@function
encode_mcu_DC_first:                    # @encode_mcu_DC_first
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 40(a0)
	ld	s0, 496(s1)
	ld	a2, 0(a0)
	ld	a0, 8(a0)
	lw	a3, 280(s1)
	lw	s4, 424(s1)
	mv	s2, a1
	sd	a2, 32(s0)
	sd	a0, 40(s0)
	beqz	a3, .LBB2_3
# %bb.1:
	lw	a0, 112(s0)
	bnez	a0, .LBB2_3
# %bb.2:
	lw	a1, 116(s0)
	mv	a0, s0
	call	emit_restart
.LBB2_3:
	lw	a0, 368(s1)
	blez	a0, .LBB2_16
# %bb.4:
	li	s5, 0
	addi	s6, s1, 372
	addi	s7, s1, 328
	addi	s8, s0, 72
	addi	a0, s0, 152
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, s0, 120
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	j	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	lw	a0, 368(s1)
	addi	s5, s5, 1
	bge	s5, a0, .LBB2_16
.LBB2_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	slli	a0, s5, 3
	add	a0, s2, a0
	slli	a1, s5, 2
	add	a1, s6, a1
	lw	a1, 0(a1)
	ld	a0, 0(a0)
	slli	a2, a1, 3
	lh	a0, 0(a0)
	slli	a1, a1, 2
	add	a1, s8, a1
	lw	a3, 0(a1)
	add	a2, s7, a2
	ld	s9, 0(a2)
	sraw	a0, a0, s4
	subw	s11, a0, a3
	sw	a0, 0(a1)
	sraiw	s10, s11, 31
	bne	a0, a3, .LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	li	s3, 0
	j	.LBB2_12
.LBB2_8:                                #   in Loop: Header=BB2_6 Depth=1
	xor	a0, s11, s10
	subw	a1, a0, s10
	li	a0, -1
.LBB2_9:                                #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a1, a1, 1
	addiw	a0, a0, 1
	bnez	a1, .LBB2_9
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	addiw	s3, a0, 1
	li	a1, 11
	bltu	a0, a1, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 6
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB2_12:                               #   in Loop: Header=BB2_6 Depth=1
	lw	a0, 20(s9)
	lw	a1, 24(s0)
	slli	a0, a0, 3
	beqz	a1, .LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a0, 0(a0)
	slli	a1, s3, 3
	add	a0, a0, a1
	ld	a1, 0(a0)
	addi	a1, a1, 1
	sd	a1, 0(a0)
	bnez	s3, .LBB2_15
	j	.LBB2_5
.LBB2_14:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a0, 0(a0)
	slli	a1, s3, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	add	a0, a0, s3
	lbu	a2, 1024(a0)
	mv	a0, s0
	call	emit_bits
	beqz	s3, .LBB2_5
.LBB2_15:                               #   in Loop: Header=BB2_6 Depth=1
	addw	a1, s10, s11
	mv	a0, s0
	mv	a2, s3
	call	emit_bits
	j	.LBB2_5
.LBB2_16:
	ld	a1, 32(s0)
	ld	a2, 40(s1)
	ld	a3, 40(s0)
	lw	a0, 280(s1)
	sd	a1, 0(a2)
	sd	a3, 8(a2)
	beqz	a0, .LBB2_20
# %bb.17:
	lw	a1, 112(s0)
	bnez	a1, .LBB2_19
# %bb.18:
	lw	a1, 116(s0)
	addi	a1, a1, 1
	andi	a1, a1, 7
	sw	a1, 116(s0)
	mv	a1, a0
.LBB2_19:
	addi	a1, a1, -1
	sw	a1, 112(s0)
.LBB2_20:
	li	a0, 1
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end2:
	.size	encode_mcu_DC_first, .Lfunc_end2-encode_mcu_DC_first
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function encode_mcu_AC_first
	.type	encode_mcu_AC_first,@function
encode_mcu_AC_first:                    # @encode_mcu_AC_first
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
	ld	a3, 40(a0)
	ld	s0, 496(a0)
	lw	s1, 416(a0)
	ld	a2, 0(a3)
	ld	a4, 8(a3)
	lw	a3, 280(a0)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lw	a0, 424(a0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	sd	a2, 32(s0)
	sd	a4, 40(s0)
	beqz	a3, .LBB3_2
# %bb.1:
	lw	a0, 112(s0)
	beqz	a0, .LBB3_45
.LBB3_2:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	lw	s5, 412(a0)
	blt	s1, s5, .LBB3_46
.LBB3_3:
	li	a0, 0
	ld	a2, 0(a1)
	addi	s7, s0, 152
	addi	a1, s0, 120
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	addiw	s1, s1, 1
	lui	a3, %hi(jpeg_natural_order)
	addi	a3, a3, %lo(jpeg_natural_order)
	lui	s10, 4080
	li	s4, 15
	li	s6, 3
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	j	.LBB3_5
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	addiw	a0, s8, 1
	beq	s1, s9, .LBB3_42
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
                                        #       Child Loop BB3_27 Depth 3
                                        #     Child Loop BB3_16 Depth 2
	slli	a1, s5, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	slli	a1, a1, 1
	add	a1, a2, a1
	lh	a1, 0(a1)
	mv	s8, a0
	addiw	s9, s5, 1
	addi	s5, s5, 1
	beqz	a1, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	bltz	a1, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	srlw	a0, a1, a0
	mv	s2, a0
	bnez	a0, .LBB3_9
	j	.LBB3_4
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	negw	a0, a1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	srlw	s2, a0, a1
	not	a0, s2
	beqz	s2, .LBB3_4
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lw	a0, 92(s0)
	beqz	a0, .LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	mv	a0, s0
	call	emit_eobrun
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	li	a0, 16
	blt	s8, a0, .LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_5 Depth=1
	lw	a0, 24(s0)
	beqz	a0, .LBB3_20
# %bb.13:                               #   in Loop: Header=BB3_5 Depth=1
	lw	a0, 88(s0)
	slli	a0, a0, 3
	add	a0, s7, a0
	ld	a0, 0(a0)
	ld	a1, 1920(a0)
	addiw	a2, s8, -31
	sltu	a3, s8, a2
	addi	a3, a3, -1
	and	a2, a3, a2
	addi	a2, a2, 15
	srliw	a3, a2, 4
	add	a1, a1, a3
	andi	a2, a2, -16
	addi	a1, a1, 1
	subw	s8, s8, a2
	addi	s8, s8, -16
	sd	a1, 1920(a0)
.LBB3_14:                               #   in Loop: Header=BB3_5 Depth=1
	li	s3, 1
	beq	s2, s3, .LBB3_38
.LBB3_15:                               # %.preheader1
                                        #   in Loop: Header=BB3_5 Depth=1
	li	a0, 0
.LBB3_16:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a1, s2
	srliw	s2, s2, 1
	addiw	a0, a0, 1
	bltu	s6, a1, .LBB3_16
# %bb.17:                               #   in Loop: Header=BB3_5 Depth=1
	addiw	s3, a0, 1
	li	a1, 10
	bltu	a0, a1, .LBB3_38
# %bb.18:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a2, 0(a0)
	ld	a1, 0(a2)
	li	a3, 6
	sw	a3, 40(a2)
	jalr	a1
	j	.LBB3_38
.LBB3_19:                               #   in Loop: Header=BB3_20 Depth=2
	lw	a0, 24(s0)
	mv	s8, a1
.LBB3_20:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_27 Depth 3
	lw	a1, 88(s0)
	slli	a1, a1, 3
	beqz	a0, .LBB3_22
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=2
	add	a1, s7, a1
	ld	a0, 0(a1)
	ld	a1, 1920(a0)
	addi	a1, a1, 1
	sd	a1, 1920(a0)
	j	.LBB3_36
.LBB3_22:                               #   in Loop: Header=BB3_20 Depth=2
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	ld	a0, 0(a1)
	lwu	s1, 960(a0)
	lbu	s3, 1264(a0)
	lw	s11, 56(s0)
	beqz	s3, .LBB3_35
.LBB3_23:                               #   in Loop: Header=BB3_20 Depth=2
	li	a0, -1
	sll	a0, a0, s3
	not	a0, a0
	and	s1, a0, s1
	ld	a1, 48(s0)
	addw	a0, s11, s3
	li	a2, 24
	subw	a2, a2, a0
	sll	a2, s1, a2
	or	s3, a1, a2
	li	a1, 8
	bge	a0, a1, .LBB3_27
.LBB3_24:                               #   in Loop: Header=BB3_20 Depth=2
	sd	s3, 48(s0)
	sw	a0, 56(s0)
	j	.LBB3_36
.LBB3_25:                               #   in Loop: Header=BB3_27 Depth=3
	ld	a0, 0(s1)
	ld	a1, 8(s1)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB3_26:                               #   in Loop: Header=BB3_27 Depth=3
	slli	s3, s3, 8
	addiw	a0, s11, -8
	bge	s4, s11, .LBB3_24
.LBB3_27:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 32(s0)
	srli	a2, s3, 16
	addi	a3, a1, 1
	sd	a3, 32(s0)
	sb	a2, 0(a1)
	ld	a1, 40(s0)
	mv	s11, a0
	addi	a1, a1, -1
	sd	a1, 40(s0)
	beqz	a1, .LBB3_29
# %bb.28:                               #   in Loop: Header=BB3_27 Depth=3
	and	a0, s3, s10
	bne	a0, s10, .LBB3_26
	j	.LBB3_32
.LBB3_29:                               #   in Loop: Header=BB3_27 Depth=3
	ld	a0, 64(s0)
	ld	s1, 40(a0)
	ld	a1, 24(s1)
	jalr	a1
	bnez	a0, .LBB3_31
# %bb.30:                               #   in Loop: Header=BB3_27 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 24
	sw	a3, 40(a1)
	jalr	a2
.LBB3_31:                               #   in Loop: Header=BB3_27 Depth=3
	ld	a0, 0(s1)
	ld	a1, 8(s1)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s3, s10
	bne	a0, s10, .LBB3_26
.LBB3_32:                               #   in Loop: Header=BB3_27 Depth=3
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB3_26
# %bb.33:                               #   in Loop: Header=BB3_27 Depth=3
	ld	a0, 64(s0)
	ld	s1, 40(a0)
	ld	a1, 24(s1)
	jalr	a1
	bnez	a0, .LBB3_25
# %bb.34:                               #   in Loop: Header=BB3_27 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 24
	sw	a3, 40(a1)
	jalr	a2
	j	.LBB3_25
.LBB3_35:                               #   in Loop: Header=BB3_20 Depth=2
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
	lw	a0, 24(s0)
	beqz	a0, .LBB3_23
.LBB3_36:                               #   in Loop: Header=BB3_20 Depth=2
	addiw	a1, s8, -16
	li	a0, 31
	blt	a0, s8, .LBB3_19
# %bb.37:                               #   in Loop: Header=BB3_5 Depth=1
	mv	s8, a1
	li	s3, 1
	bne	s2, s3, .LBB3_15
.LBB3_38:                               #   in Loop: Header=BB3_5 Depth=1
	lw	a2, 24(s0)
	lw	a1, 88(s0)
	slli	s8, s8, 4
	addw	a0, s3, s8
	slli	a1, a1, 3
	beqz	a2, .LBB3_40
# %bb.39:                               #   in Loop: Header=BB3_5 Depth=1
	add	a1, s7, a1
	ld	a1, 0(a1)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a1, 0(a0)
	addi	a1, a1, 1
	sd	a1, 0(a0)
	j	.LBB3_41
.LBB3_40:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a2, 0(a1)
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	lbu	a2, 1024(a0)
	mv	a0, s0
	call	emit_bits
.LBB3_41:                               #   in Loop: Header=BB3_5 Depth=1
	mv	a0, s0
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mv	a2, s3
	call	emit_bits
	li	a0, 0
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	lui	a3, %hi(jpeg_natural_order)
	addi	a3, a3, %lo(jpeg_natural_order)
	bne	s1, s9, .LBB3_5
	j	.LBB3_46
.LBB3_42:
	bltz	s8, .LBB3_46
# %bb.43:
	lw	a0, 92(s0)
	addiw	a0, a0, 1
	lui	a1, 8
	addiw	a1, a1, -1
	sw	a0, 92(s0)
	bne	a0, a1, .LBB3_46
# %bb.44:
	mv	a0, s0
	call	emit_eobrun
	j	.LBB3_46
.LBB3_45:
	lw	a2, 116(s0)
	mv	a0, s0
	mv	s2, a1
	mv	a1, a2
	call	emit_restart
	mv	a1, s2
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	lw	s5, 412(a0)
	bge	s1, s5, .LBB3_3
.LBB3_46:
	ld	a1, 32(s0)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a2, 40(a0)
	ld	a3, 40(s0)
	lw	a0, 280(a0)
	sd	a1, 0(a2)
	sd	a3, 8(a2)
	beqz	a0, .LBB3_50
# %bb.47:
	lw	a1, 112(s0)
	bnez	a1, .LBB3_49
# %bb.48:
	lw	a1, 116(s0)
	addi	a1, a1, 1
	andi	a1, a1, 7
	sw	a1, 116(s0)
	mv	a1, a0
.LBB3_49:
	addi	a1, a1, -1
	sw	a1, 112(s0)
.LBB3_50:
	li	a0, 1
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
	.size	encode_mcu_AC_first, .Lfunc_end3-encode_mcu_AC_first
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function encode_mcu_DC_refine
	.type	encode_mcu_DC_refine,@function
encode_mcu_DC_refine:                   # @encode_mcu_DC_refine
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 40(a0)
	ld	s0, 496(s1)
	ld	a2, 0(a0)
	ld	a0, 8(a0)
	lw	a3, 280(s1)
	lw	s3, 424(s1)
	mv	s2, a1
	sd	a2, 32(s0)
	sd	a0, 40(s0)
	beqz	a3, .LBB4_3
# %bb.1:
	lw	a0, 112(s0)
	bnez	a0, .LBB4_3
# %bb.2:
	lw	a1, 116(s0)
	mv	a0, s0
	call	emit_restart
.LBB4_3:
	lw	a0, 368(s1)
	blez	a0, .LBB4_6
# %bb.4:                                # %.preheader
	li	s4, 0
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s2)
	lh	a0, 0(a0)
	sraw	a1, a0, s3
	li	a2, 1
	mv	a0, s0
	call	emit_bits
	lw	a0, 368(s1)
	addi	s4, s4, 1
	addi	s2, s2, 8
	blt	s4, a0, .LBB4_5
.LBB4_6:
	ld	a1, 32(s0)
	ld	a2, 40(s1)
	ld	a3, 40(s0)
	lw	a0, 280(s1)
	sd	a1, 0(a2)
	sd	a3, 8(a2)
	beqz	a0, .LBB4_10
# %bb.7:
	lw	a1, 112(s0)
	bnez	a1, .LBB4_9
# %bb.8:
	lw	a1, 116(s0)
	addi	a1, a1, 1
	andi	a1, a1, 7
	sw	a1, 116(s0)
	mv	a1, a0
.LBB4_9:
	addi	a1, a1, -1
	sw	a1, 112(s0)
.LBB4_10:
	li	a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	encode_mcu_DC_refine, .Lfunc_end4-encode_mcu_DC_refine
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function encode_mcu_AC_refine
	.type	encode_mcu_AC_refine,@function
encode_mcu_AC_refine:                   # @encode_mcu_AC_refine
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
	mv	s4, a0
	ld	a0, 40(a0)
	ld	s0, 496(s4)
	lw	s1, 416(s4)
	ld	a2, 0(a0)
	ld	a0, 8(a0)
	lw	a3, 280(s4)
	lw	s2, 424(s4)
	sd	a2, 32(s0)
	sd	a0, 40(s0)
	beqz	a3, .LBB5_2
# %bb.1:
	lw	a0, 112(s0)
	beqz	a0, .LBB5_141
.LBB5_2:
	lw	a3, 412(s4)
	blt	s1, a3, .LBB5_142
.LBB5_3:
	li	a4, 0
	ld	t0, 0(a1)
	addiw	t1, s1, 1
	slli	a1, a3, 2
	addi	a0, sp, 88
	add	a0, a0, a1
	lui	a2, %hi(jpeg_natural_order)
	addi	a2, a2, %lo(jpeg_natural_order)
	add	a1, a2, a1
	li	a2, 1
	mv	a7, a3
	j	.LBB5_5
.LBB5_4:                                #   in Loop: Header=BB5_5 Depth=1
	addiw	a3, a3, 1
	addi	a0, a0, 4
	addi	a1, a1, 4
	mv	a4, a6
	beq	t1, a3, .LBB5_7
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a1)
	slli	a5, a5, 1
	add	a5, t0, a5
	lh	a5, 0(a5)
	srai	a6, a5, 63
	xor	a5, a5, a6
	subw	a5, a5, a6
	srlw	a5, a5, s2
	sw	a5, 0(a0)
	mv	a6, a3
	beq	a5, a2, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	mv	a6, a4
	j	.LBB5_4
.LBB5_7:
	blt	s1, a7, .LBB5_142
# %bb.8:
	mv	a1, a7
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	sd	t1, 40(sp)                      # 8-byte Folded Spill
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	ld	s4, 104(s0)
	lwu	a0, 96(s0)
	li	s3, 0
	li	s6, 0
	add	s4, s4, a0
	addi	a0, s0, 152
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	addi	a0, s0, 120
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	li	s10, 24
	lui	s1, 4080
	li	s11, 15
	li	s9, 1
	j	.LBB5_10
.LBB5_9:                                #   in Loop: Header=BB5_10 Depth=1
	addiw	s3, s3, 1
	addiw	a0, a1, 1
	addi	a1, a1, 1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	beq	a2, a0, .LBB5_140
.LBB5_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_17 Depth 2
                                        #       Child Loop BB5_21 Depth 3
                                        #       Child Loop BB5_31 Depth 3
                                        #       Child Loop BB5_49 Depth 3
                                        #       Child Loop BB5_65 Depth 3
                                        #         Child Loop BB5_70 Depth 4
                                        #       Child Loop BB5_86 Depth 3
                                        #       Child Loop BB5_99 Depth 3
                                        #         Child Loop BB5_104 Depth 4
                                        #     Child Loop BB5_125 Depth 2
                                        #     Child Loop BB5_136 Depth 2
	slli	a2, a1, 2
	addi	a0, sp, 88
	add	a0, a0, a2
	lw	a0, 0(a0)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB5_9
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	li	a0, 16
	blt	s3, a0, .LBB5_114
# %bb.12:                               #   in Loop: Header=BB5_10 Depth=1
	mv	s2, s6
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB5_17
.LBB5_13:                               #   in Loop: Header=BB5_10 Depth=1
	li	a0, 2
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	blt	a1, a0, .LBB5_115
.LBB5_14:                               #   in Loop: Header=BB5_10 Depth=1
	andi	a0, a1, 1
	addiw	s6, s2, 1
	slli	s2, s2, 32
	srli	a1, s2, 32
	add	a1, s4, a1
	sb	a0, 0(a1)
	j	.LBB5_139
.LBB5_15:                               #   in Loop: Header=BB5_17 Depth=2
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a0, 0(a0)
	ld	a1, 1920(a0)
	addi	a1, a1, 1
	sd	a1, 1920(a0)
.LBB5_16:                               #   in Loop: Header=BB5_17 Depth=2
	ld	s4, 104(s0)
	li	s6, 0
	li	s2, 0
	addiw	s3, s7, -16
	li	a0, 31
	bge	a0, s7, .LBB5_13
.LBB5_17:                               #   Parent Loop BB5_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_21 Depth 3
                                        #       Child Loop BB5_31 Depth 3
                                        #       Child Loop BB5_49 Depth 3
                                        #       Child Loop BB5_65 Depth 3
                                        #         Child Loop BB5_70 Depth 4
                                        #       Child Loop BB5_86 Depth 3
                                        #       Child Loop BB5_99 Depth 3
                                        #         Child Loop BB5_104 Depth 4
	lw	a0, 92(s0)
	mv	s7, s3
	beqz	a0, .LBB5_80
# %bb.18:                               #   in Loop: Header=BB5_17 Depth=2
	bne	a0, s9, .LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_17 Depth=2
	li	s2, 0
	j	.LBB5_24
.LBB5_20:                               # %.preheader11
                                        #   in Loop: Header=BB5_17 Depth=2
	li	a1, -1
.LBB5_21:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sraiw	a0, a0, 1
	addiw	a1, a1, 1
	bltu	s9, a0, .LBB5_21
# %bb.22:                               #   in Loop: Header=BB5_17 Depth=2
	addiw	s2, a1, 1
	li	a0, 14
	bltu	a1, a0, .LBB5_24
# %bb.23:                               #   in Loop: Header=BB5_17 Depth=2
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
.LBB5_24:                               #   in Loop: Header=BB5_17 Depth=2
	sd	s7, 80(sp)                      # 8-byte Folded Spill
	lw	a0, 24(s0)
	lw	a2, 88(s0)
	slliw	a1, s2, 4
	slli	a2, a2, 3
	beqz	a0, .LBB5_26
# %bb.25:                               #   in Loop: Header=BB5_17 Depth=2
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	ld	a2, 0(a2)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a2, 0(a1)
	addi	a2, a2, 1
	sd	a2, 0(a1)
	j	.LBB5_42
.LBB5_26:                               #   in Loop: Header=BB5_17 Depth=2
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	add	a2, a0, a2
	ld	a0, 0(a2)
	slli	a2, a1, 2
	add	a2, a0, a2
	lwu	s7, 0(a2)
	add	a0, a0, a1
	lbu	s3, 1024(a0)
	lw	s5, 56(s0)
	beqz	s3, .LBB5_41
.LBB5_27:                               #   in Loop: Header=BB5_17 Depth=2
	li	a0, -1
	sll	a0, a0, s3
	not	a0, a0
	and	a0, a0, s7
	ld	a2, 48(s0)
	addw	a1, s5, s3
	subw	a3, s10, a1
	sll	a0, a0, a3
	or	s7, a2, a0
	li	a0, 8
	bge	a1, a0, .LBB5_31
# %bb.28:                               #   in Loop: Header=BB5_17 Depth=2
	li	a0, 0
	j	.LBB5_40
.LBB5_29:                               #   in Loop: Header=BB5_31 Depth=3
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB5_30:                               #   in Loop: Header=BB5_31 Depth=3
	slli	s7, s7, 8
	addiw	a1, s3, -8
	bge	s11, s3, .LBB5_39
.LBB5_31:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 32(s0)
	srli	a2, s7, 16
	addi	a3, a0, 1
	sd	a3, 32(s0)
	sb	a2, 0(a0)
	ld	a0, 40(s0)
	mv	s3, a1
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB5_33
# %bb.32:                               #   in Loop: Header=BB5_31 Depth=3
	and	a0, s7, s1
	bne	a0, s1, .LBB5_30
	j	.LBB5_36
.LBB5_33:                               #   in Loop: Header=BB5_31 Depth=3
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_35
# %bb.34:                               #   in Loop: Header=BB5_31 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB5_35:                               #   in Loop: Header=BB5_31 Depth=3
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s7, s1
	bne	a0, s1, .LBB5_30
.LBB5_36:                               #   in Loop: Header=BB5_31 Depth=3
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB5_30
# %bb.37:                               #   in Loop: Header=BB5_31 Depth=3
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_29
# %bb.38:                               #   in Loop: Header=BB5_31 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
	j	.LBB5_29
.LBB5_39:                               #   in Loop: Header=BB5_17 Depth=2
	lw	a0, 24(s0)
.LBB5_40:                               #   in Loop: Header=BB5_17 Depth=2
	sd	s7, 48(s0)
	sw	a1, 56(s0)
	j	.LBB5_42
.LBB5_41:                               #   in Loop: Header=BB5_17 Depth=2
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
	lw	a0, 24(s0)
	beqz	a0, .LBB5_27
.LBB5_42:                               #   in Loop: Header=BB5_17 Depth=2
	beqz	s2, .LBB5_59
# %bb.43:                               #   in Loop: Header=BB5_17 Depth=2
	beqz	a0, .LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_17 Depth=2
	sw	zero, 92(s0)
	j	.LBB5_79
.LBB5_45:                               #   in Loop: Header=BB5_17 Depth=2
	lwu	a0, 92(s0)
	lw	a1, 56(s0)
	li	a2, -1
	sll	a2, a2, s2
	not	a2, a2
	and	a0, a0, a2
	ld	a2, 48(s0)
	addw	a1, a1, s2
	subw	a3, s10, a1
	sll	a0, a0, a3
	or	s2, a0, a2
	li	a0, 8
	bge	a1, a0, .LBB5_49
# %bb.46:                               #   in Loop: Header=BB5_17 Depth=2
	li	a0, 0
	j	.LBB5_58
.LBB5_47:                               #   in Loop: Header=BB5_49 Depth=3
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB5_48:                               #   in Loop: Header=BB5_49 Depth=3
	slli	s2, s2, 8
	addiw	a1, s3, -8
	bge	s11, s3, .LBB5_57
.LBB5_49:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 32(s0)
	srli	a2, s2, 16
	addi	a3, a0, 1
	sd	a3, 32(s0)
	sb	a2, 0(a0)
	ld	a0, 40(s0)
	mv	s3, a1
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB5_51
# %bb.50:                               #   in Loop: Header=BB5_49 Depth=3
	and	a0, s2, s1
	bne	a0, s1, .LBB5_48
	j	.LBB5_54
.LBB5_51:                               #   in Loop: Header=BB5_49 Depth=3
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_53
# %bb.52:                               #   in Loop: Header=BB5_49 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB5_53:                               #   in Loop: Header=BB5_49 Depth=3
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s2, s1
	bne	a0, s1, .LBB5_48
.LBB5_54:                               #   in Loop: Header=BB5_49 Depth=3
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB5_48
# %bb.55:                               #   in Loop: Header=BB5_49 Depth=3
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_47
# %bb.56:                               #   in Loop: Header=BB5_49 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
	j	.LBB5_47
.LBB5_57:                               #   in Loop: Header=BB5_17 Depth=2
	lw	a0, 24(s0)
.LBB5_58:                               #   in Loop: Header=BB5_17 Depth=2
	sd	s2, 48(s0)
	sw	a1, 56(s0)
.LBB5_59:                               #   in Loop: Header=BB5_17 Depth=2
	lw	s2, 96(s0)
	sw	zero, 92(s0)
	beqz	s2, .LBB5_79
# %bb.60:                               #   in Loop: Header=BB5_17 Depth=2
	bnez	a0, .LBB5_79
# %bb.61:                               #   in Loop: Header=BB5_17 Depth=2
	ld	s7, 104(s0)
	j	.LBB5_65
.LBB5_62:                               # %.loopexit2
                                        #   in Loop: Header=BB5_65 Depth=3
	addi	s5, s5, -8
.LBB5_63:                               #   in Loop: Header=BB5_65 Depth=3
	sd	s3, 48(s0)
	sw	s5, 56(s0)
.LBB5_64:                               #   in Loop: Header=BB5_65 Depth=3
	addiw	s2, s2, -1
	addi	s7, s7, 1
	beqz	s2, .LBB5_79
.LBB5_65:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_70 Depth 4
	lw	a0, 24(s0)
	bnez	a0, .LBB5_64
# %bb.66:                               #   in Loop: Header=BB5_65 Depth=3
	lbu	a0, 0(s7)
	lw	s5, 56(s0)
	ld	a1, 48(s0)
	andi	a0, a0, 1
	li	a2, 23
	subw	a2, a2, s5
	sll	a0, a0, a2
	or	s3, a0, a1
	li	a0, 7
	blt	s5, a0, .LBB5_78
# %bb.67:                               # %.preheader1
                                        #   in Loop: Header=BB5_65 Depth=3
	addi	s5, s5, 9
	j	.LBB5_70
.LBB5_68:                               #   in Loop: Header=BB5_70 Depth=4
	ld	a0, 0(s8)
	ld	a1, 8(s8)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB5_69:                               #   in Loop: Header=BB5_70 Depth=4
	addiw	s5, s5, -8
	slli	s3, s3, 8
	bge	s11, s5, .LBB5_62
.LBB5_70:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        #       Parent Loop BB5_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a0, 32(s0)
	srli	a1, s3, 16
	addi	a2, a0, 1
	sd	a2, 32(s0)
	sb	a1, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB5_72
# %bb.71:                               #   in Loop: Header=BB5_70 Depth=4
	and	a0, s3, s1
	bne	a0, s1, .LBB5_69
	j	.LBB5_75
.LBB5_72:                               #   in Loop: Header=BB5_70 Depth=4
	ld	a0, 64(s0)
	ld	s8, 40(a0)
	ld	a1, 24(s8)
	jalr	a1
	bnez	a0, .LBB5_74
# %bb.73:                               #   in Loop: Header=BB5_70 Depth=4
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB5_74:                               #   in Loop: Header=BB5_70 Depth=4
	ld	a0, 0(s8)
	ld	a1, 8(s8)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s3, s1
	bne	a0, s1, .LBB5_69
.LBB5_75:                               #   in Loop: Header=BB5_70 Depth=4
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB5_69
# %bb.76:                               #   in Loop: Header=BB5_70 Depth=4
	ld	a0, 64(s0)
	ld	s8, 40(a0)
	ld	a1, 24(s8)
	jalr	a1
	bnez	a0, .LBB5_68
# %bb.77:                               #   in Loop: Header=BB5_70 Depth=4
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
	j	.LBB5_68
.LBB5_78:                               #   in Loop: Header=BB5_65 Depth=3
	addi	s5, s5, 1
	j	.LBB5_63
.LBB5_79:                               #   in Loop: Header=BB5_17 Depth=2
	sw	zero, 96(s0)
	ld	s7, 80(sp)                      # 8-byte Folded Reload
.LBB5_80:                               #   in Loop: Header=BB5_17 Depth=2
	lw	a1, 24(s0)
	lw	a0, 88(s0)
	slli	a0, a0, 3
	bnez	a1, .LBB5_15
# %bb.81:                               #   in Loop: Header=BB5_17 Depth=2
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a0, 0(a0)
	lwu	s5, 960(a0)
	lbu	s2, 1264(a0)
	lw	s3, 56(s0)
	beqz	s2, .LBB5_113
.LBB5_82:                               #   in Loop: Header=BB5_17 Depth=2
	li	a0, -1
	sll	a0, a0, s2
	not	a0, a0
	and	a1, a0, s5
	ld	a2, 48(s0)
	addw	a0, s3, s2
	subw	a3, s10, a0
	sll	a1, a1, a3
	or	s2, a2, a1
	li	a1, 8
	bge	a0, a1, .LBB5_86
# %bb.83:                               #   in Loop: Header=BB5_17 Depth=2
	li	a1, 0
	sd	s2, 48(s0)
	sw	a0, 56(s0)
	bnez	s6, .LBB5_95
	j	.LBB5_16
.LBB5_84:                               #   in Loop: Header=BB5_86 Depth=3
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB5_85:                               #   in Loop: Header=BB5_86 Depth=3
	slli	s2, s2, 8
	addiw	a0, s3, -8
	bge	s11, s3, .LBB5_94
.LBB5_86:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 32(s0)
	srli	a2, s2, 16
	addi	a3, a1, 1
	sd	a3, 32(s0)
	sb	a2, 0(a1)
	ld	a1, 40(s0)
	mv	s3, a0
	addi	a1, a1, -1
	sd	a1, 40(s0)
	beqz	a1, .LBB5_88
# %bb.87:                               #   in Loop: Header=BB5_86 Depth=3
	and	a0, s2, s1
	bne	a0, s1, .LBB5_85
	j	.LBB5_91
.LBB5_88:                               #   in Loop: Header=BB5_86 Depth=3
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_90
# %bb.89:                               #   in Loop: Header=BB5_86 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB5_90:                               #   in Loop: Header=BB5_86 Depth=3
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s2, s1
	bne	a0, s1, .LBB5_85
.LBB5_91:                               #   in Loop: Header=BB5_86 Depth=3
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB5_85
# %bb.92:                               #   in Loop: Header=BB5_86 Depth=3
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_84
# %bb.93:                               #   in Loop: Header=BB5_86 Depth=3
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
	j	.LBB5_84
.LBB5_94:                               #   in Loop: Header=BB5_17 Depth=2
	lw	a1, 24(s0)
	sd	s2, 48(s0)
	sw	a0, 56(s0)
	beqz	s6, .LBB5_16
.LBB5_95:                               #   in Loop: Header=BB5_17 Depth=2
	beqz	a1, .LBB5_99
	j	.LBB5_16
.LBB5_96:                               # %.loopexit
                                        #   in Loop: Header=BB5_99 Depth=3
	addi	s3, s3, -8
.LBB5_97:                               #   in Loop: Header=BB5_99 Depth=3
	sd	s2, 48(s0)
	sw	s3, 56(s0)
.LBB5_98:                               #   in Loop: Header=BB5_99 Depth=3
	addiw	s6, s6, -1
	addi	s4, s4, 1
	beqz	s6, .LBB5_16
.LBB5_99:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_104 Depth 4
	lw	a0, 24(s0)
	bnez	a0, .LBB5_98
# %bb.100:                              #   in Loop: Header=BB5_99 Depth=3
	lbu	a0, 0(s4)
	lw	s3, 56(s0)
	ld	a1, 48(s0)
	andi	a0, a0, 1
	li	a2, 23
	subw	a2, a2, s3
	sll	a0, a0, a2
	or	s2, a0, a1
	li	a0, 7
	blt	s3, a0, .LBB5_112
# %bb.101:                              # %.preheader
                                        #   in Loop: Header=BB5_99 Depth=3
	addi	s3, s3, 9
	j	.LBB5_104
.LBB5_102:                              #   in Loop: Header=BB5_104 Depth=4
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB5_103:                              #   in Loop: Header=BB5_104 Depth=4
	addiw	s3, s3, -8
	slli	s2, s2, 8
	bge	s11, s3, .LBB5_96
.LBB5_104:                              #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        #       Parent Loop BB5_99 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a0, 32(s0)
	srli	a1, s2, 16
	addi	a2, a0, 1
	sd	a2, 32(s0)
	sb	a1, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB5_106
# %bb.105:                              #   in Loop: Header=BB5_104 Depth=4
	and	a0, s2, s1
	bne	a0, s1, .LBB5_103
	j	.LBB5_109
.LBB5_106:                              #   in Loop: Header=BB5_104 Depth=4
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_108
# %bb.107:                              #   in Loop: Header=BB5_104 Depth=4
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB5_108:                              #   in Loop: Header=BB5_104 Depth=4
	ld	a0, 0(s5)
	ld	a1, 8(s5)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s2, s1
	bne	a0, s1, .LBB5_103
.LBB5_109:                              #   in Loop: Header=BB5_104 Depth=4
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB5_103
# %bb.110:                              #   in Loop: Header=BB5_104 Depth=4
	ld	a0, 64(s0)
	ld	s5, 40(a0)
	ld	a1, 24(s5)
	jalr	a1
	bnez	a0, .LBB5_102
# %bb.111:                              #   in Loop: Header=BB5_104 Depth=4
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
	j	.LBB5_102
.LBB5_112:                              #   in Loop: Header=BB5_99 Depth=3
	addi	s3, s3, 1
	j	.LBB5_97
.LBB5_113:                              #   in Loop: Header=BB5_17 Depth=2
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
	lw	a0, 24(s0)
	bnez	a0, .LBB5_16
	j	.LBB5_82
.LBB5_114:                              #   in Loop: Header=BB5_10 Depth=1
	mv	s2, s6
	li	a0, 2
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB5_14
.LBB5_115:                              #   in Loop: Header=BB5_10 Depth=1
	mv	a0, s0
	call	emit_eobrun
	lw	a2, 24(s0)
	lw	a1, 88(s0)
	slliw	a0, s3, 4
	addi	a0, a0, 1
	slli	a1, a1, 3
	beqz	a2, .LBB5_117
# %bb.116:                              #   in Loop: Header=BB5_10 Depth=1
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a1, 0(a0)
	addi	a1, a1, 1
	sd	a1, 0(a0)
	j	.LBB5_118
.LBB5_117:                              #   in Loop: Header=BB5_10 Depth=1
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a2, 0(a1)
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	lbu	a2, 1024(a0)
	mv	a0, s0
	call	emit_bits
.LBB5_118:                              #   in Loop: Header=BB5_10 Depth=1
	lui	a0, %hi(jpeg_natural_order)
	addi	a0, a0, %lo(jpeg_natural_order)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lw	a0, 0(a0)
	slli	a0, a0, 1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lh	a0, 0(a0)
	slti	a0, a0, 0
	xori	a1, a0, 1
	li	a2, 1
	mv	a0, s0
	call	emit_bits
	beqz	s2, .LBB5_138
# %bb.119:                              #   in Loop: Header=BB5_10 Depth=1
	lw	a0, 24(s0)
	bnez	a0, .LBB5_138
# %bb.120:                              #   in Loop: Header=BB5_10 Depth=1
	bnez	a0, .LBB5_136
.LBB5_121:                              #   in Loop: Header=BB5_10 Depth=1
	lbu	a0, 0(s4)
	lw	s5, 56(s0)
	ld	a1, 48(s0)
	andi	a0, a0, 1
	li	a2, 23
	subw	a2, a2, s5
	sll	a0, a0, a2
	or	s3, a0, a1
	li	a0, 7
	blt	s5, a0, .LBB5_133
# %bb.122:                              # %.preheader3
                                        #   in Loop: Header=BB5_10 Depth=1
	addi	s5, s5, 9
	j	.LBB5_125
.LBB5_123:                              #   in Loop: Header=BB5_125 Depth=2
	ld	a0, 0(s6)
	ld	a1, 8(s6)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB5_124:                              #   in Loop: Header=BB5_125 Depth=2
	addiw	s5, s5, -8
	slli	s3, s3, 8
	bge	s11, s5, .LBB5_134
.LBB5_125:                              #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 32(s0)
	srli	a1, s3, 16
	addi	a2, a0, 1
	sd	a2, 32(s0)
	sb	a1, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB5_127
# %bb.126:                              #   in Loop: Header=BB5_125 Depth=2
	and	a0, s3, s1
	bne	a0, s1, .LBB5_124
	j	.LBB5_130
.LBB5_127:                              #   in Loop: Header=BB5_125 Depth=2
	ld	a0, 64(s0)
	ld	s6, 40(a0)
	ld	a1, 24(s6)
	jalr	a1
	bnez	a0, .LBB5_129
# %bb.128:                              #   in Loop: Header=BB5_125 Depth=2
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB5_129:                              #   in Loop: Header=BB5_125 Depth=2
	ld	a0, 0(s6)
	ld	a1, 8(s6)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s3, s1
	bne	a0, s1, .LBB5_124
.LBB5_130:                              #   in Loop: Header=BB5_125 Depth=2
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB5_124
# %bb.131:                              #   in Loop: Header=BB5_125 Depth=2
	ld	a0, 64(s0)
	ld	s6, 40(a0)
	ld	a1, 24(s6)
	jalr	a1
	bnez	a0, .LBB5_123
# %bb.132:                              #   in Loop: Header=BB5_125 Depth=2
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
	j	.LBB5_123
.LBB5_133:                              #   in Loop: Header=BB5_10 Depth=1
	addi	s5, s5, 1
	j	.LBB5_135
.LBB5_134:                              # %.loopexit4
                                        #   in Loop: Header=BB5_10 Depth=1
	addi	s5, s5, -8
.LBB5_135:                              #   in Loop: Header=BB5_10 Depth=1
	sd	s3, 48(s0)
	sw	s5, 56(s0)
.LBB5_136:                              #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	s2, s2, -1
	beqz	s2, .LBB5_138
# %bb.137:                              #   in Loop: Header=BB5_136 Depth=2
	lw	a0, 24(s0)
	addi	s4, s4, 1
	bnez	a0, .LBB5_136
	j	.LBB5_121
.LBB5_138:                              #   in Loop: Header=BB5_10 Depth=1
	ld	s4, 104(s0)
	li	s6, 0
	li	s3, 0
.LBB5_139:                              #   in Loop: Header=BB5_10 Depth=1
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	addiw	a0, a1, 1
	addi	a1, a1, 1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	bne	a2, a0, .LBB5_10
.LBB5_140:
	sgtz	a0, s3
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB5_143
	j	.LBB5_144
.LBB5_141:
	lw	a2, 116(s0)
	mv	a0, s0
	mv	s3, a1
	mv	a1, a2
	call	emit_restart
	mv	a1, s3
	lw	a3, 412(s4)
	bge	s1, a3, .LBB5_3
.LBB5_142:
	li	s6, 0
	bnez	zero, .LBB5_144
.LBB5_143:
	beqz	s6, .LBB5_147
.LBB5_144:
	lw	a0, 92(s0)
	lw	a1, 96(s0)
	addiw	a2, a0, 1
	sw	a2, 92(s0)
	addw	a0, a1, s6
	lui	a1, 8
	addiw	a1, a1, -1
	sw	a0, 96(s0)
	beq	a2, a1, .LBB5_146
# %bb.145:
	li	a1, 938
	bltu	a0, a1, .LBB5_147
.LBB5_146:
	mv	a0, s0
	call	emit_eobrun
.LBB5_147:
	ld	a1, 32(s0)
	ld	a2, 40(s4)
	ld	a3, 40(s0)
	lw	a0, 280(s4)
	sd	a1, 0(a2)
	sd	a3, 8(a2)
	beqz	a0, .LBB5_151
# %bb.148:
	lw	a1, 112(s0)
	bnez	a1, .LBB5_150
# %bb.149:
	lw	a1, 116(s0)
	addi	a1, a1, 1
	andi	a1, a1, 7
	sw	a1, 116(s0)
	mv	a1, a0
.LBB5_150:
	addi	a1, a1, -1
	sw	a1, 112(s0)
.LBB5_151:
	li	a0, 1
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
.Lfunc_end5:
	.size	encode_mcu_AC_refine, .Lfunc_end5-encode_mcu_AC_refine
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass_gather_phuff
	.type	finish_pass_gather_phuff,@function
finish_pass_gather_phuff:               # @finish_pass_gather_phuff
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
	mv	s0, a0
	ld	s1, 496(a0)
	mv	a0, s1
	call	emit_eobrun
	lw	a0, 324(s0)
	lw	a1, 412(s0)
	sd	zero, 8(sp)
	sd	zero, 16(sp)
	blez	a0, .LBB6_11
# %bb.1:
	li	s3, 128
	beqz	a1, .LBB6_3
# %bb.2:
	li	s3, 160
.LBB6_3:
	addi	s2, s0, 328
	add	s3, s0, s3
	addi	s1, s1, 152
	beqz	a1, .LBB6_10
# %bb.4:                                # %.preheader1
	li	s4, 0
	addi	s5, sp, 8
	li	s6, 1
	j	.LBB6_7
.LBB6_5:                                #   in Loop: Header=BB6_7 Depth=1
	add	s8, s1, s8
	ld	a2, 0(s8)
	mv	a0, s0
	call	jpeg_gen_optimal_table
	lw	a0, 324(s0)
	sw	s6, 0(s7)
.LBB6_6:                                #   in Loop: Header=BB6_7 Depth=1
	addi	s4, s4, 1
	addi	s2, s2, 8
	bge	s4, a0, .LBB6_11
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 0(s2)
	lw	s8, 24(a1)
	slli	s7, s8, 2
	add	s7, s5, s7
	lw	a1, 0(s7)
	bnez	a1, .LBB6_6
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=1
	slli	s8, s8, 3
	add	s9, s3, s8
	ld	a1, 0(s9)
	bnez	a1, .LBB6_5
# %bb.9:                                #   in Loop: Header=BB6_7 Depth=1
	mv	a0, s0
	call	jpeg_alloc_huff_table
	mv	a1, a0
	sd	a0, 0(s9)
	j	.LBB6_5
.LBB6_10:
	lw	a1, 420(s0)
	beqz	a1, .LBB6_12
.LBB6_11:
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
	addi	sp, sp, 112
	ret
.LBB6_12:                               # %.preheader
	li	s4, 1
	addi	s5, sp, 8
	li	s6, 1
	bnez	a1, .LBB6_17
.LBB6_13:
	ld	a1, 0(s2)
	lw	s8, 20(a1)
	slli	s7, s8, 2
	add	s7, s5, s7
	lw	a1, 0(s7)
	bnez	a1, .LBB6_17
# %bb.14:
	slli	s8, s8, 3
	add	s9, s3, s8
	ld	a1, 0(s9)
	bnez	a1, .LBB6_16
# %bb.15:
	mv	a0, s0
	call	jpeg_alloc_huff_table
	mv	a1, a0
	sd	a0, 0(s9)
.LBB6_16:
	add	s8, s1, s8
	ld	a2, 0(s8)
	mv	a0, s0
	call	jpeg_gen_optimal_table
	lw	a0, 324(s0)
	sw	s4, 0(s7)
.LBB6_17:                               # =>This Inner Loop Header: Depth=1
	bge	s6, a0, .LBB6_11
# %bb.18:                               #   in Loop: Header=BB6_17 Depth=1
	lw	a1, 420(s0)
	addi	s6, s6, 1
	addi	s2, s2, 8
	bnez	a1, .LBB6_17
	j	.LBB6_13
.Lfunc_end6:
	.size	finish_pass_gather_phuff, .Lfunc_end6-finish_pass_gather_phuff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass_phuff
	.type	finish_pass_phuff,@function
finish_pass_phuff:                      # @finish_pass_phuff
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	ld	s1, 496(s0)
	ld	a1, 0(a0)
	ld	a0, 8(a0)
	sd	a1, 32(s1)
	sd	a0, 40(s1)
	mv	a0, s1
	call	emit_eobrun
	mv	a0, s1
	call	flush_bits
	ld	a0, 32(s1)
	ld	a1, 40(s0)
	ld	a2, 40(s1)
	sd	a0, 0(a1)
	sd	a2, 8(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	finish_pass_phuff, .Lfunc_end7-finish_pass_phuff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_restart
	.type	emit_restart,@function
emit_restart:                           # @emit_restart
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a1
	mv	s0, a0
	call	emit_eobrun
	lw	a0, 24(s0)
	bnez	a0, .LBB8_7
# %bb.1:
	mv	a0, s0
	call	flush_bits
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	li	a1, -1
	sb	a1, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB8_3
# %bb.2:
	ld	a0, 32(s0)
	j	.LBB8_6
.LBB8_3:
	ld	a0, 64(s0)
	ld	s2, 40(a0)
	ld	a1, 24(s2)
	jalr	a1
	bnez	a0, .LBB8_5
# %bb.4:
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 24
	sw	a3, 40(a1)
	jalr	a2
.LBB8_5:
	ld	a1, 8(s2)
	ld	a0, 0(s2)
	sd	a1, 40(s0)
.LBB8_6:
	addi	a1, s1, -48
	addi	a2, a0, 1
	sd	a2, 32(s0)
	sb	a1, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB8_9
.LBB8_7:
	ld	a0, 64(s0)
	lw	a1, 412(a0)
	beqz	a1, .LBB8_12
.LBB8_8:
	sw	zero, 92(s0)
	sw	zero, 96(s0)
	j	.LBB8_15
.LBB8_9:
	ld	a0, 64(s0)
	ld	s1, 40(a0)
	ld	a1, 24(s1)
	jalr	a1
	bnez	a0, .LBB8_11
# %bb.10:
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 24
	sw	a3, 40(a1)
	jalr	a2
.LBB8_11:
	ld	a0, 0(s1)
	ld	a1, 8(s1)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	ld	a0, 64(s0)
	lw	a1, 412(a0)
	bnez	a1, .LBB8_8
.LBB8_12:
	lw	a1, 324(a0)
	blez	a1, .LBB8_15
# %bb.13:
	li	a1, 0
	addi	a2, s0, 72
.LBB8_14:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a2)
	lw	a3, 324(a0)
	addi	a1, a1, 1
	addi	a2, a2, 4
	blt	a1, a3, .LBB8_14
.LBB8_15:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end8:
	.size	emit_restart, .Lfunc_end8-emit_restart
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_bits
	.type	emit_bits,@function
emit_bits:                              # @emit_bits
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
	lw	s3, 56(a0)
	mv	s1, a2
	mv	s2, a1
	beqz	a2, .LBB9_2
# %bb.1:
	lw	a0, 24(s0)
	bnez	a0, .LBB9_16
	j	.LBB9_3
.LBB9_2:
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
	lw	a0, 24(s0)
	bnez	a0, .LBB9_16
.LBB9_3:
	slli	s2, s2, 32
	srli	a0, s2, 32
	li	a1, -1
	sll	a1, a1, s1
	not	a1, a1
	and	a1, a1, a0
	addw	a0, s3, s1
	li	s1, 24
	ld	a2, 48(s0)
	subw	a3, s1, a0
	sll	a1, a1, a3
	li	a3, 8
	or	s2, a2, a1
	blt	a0, a3, .LBB9_15
# %bb.4:
	lui	s3, 4080
	li	s4, 15
	j	.LBB9_7
.LBB9_5:                                #   in Loop: Header=BB9_7 Depth=1
	ld	a0, 0(s6)
	ld	a1, 8(s6)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB9_6:                                #   in Loop: Header=BB9_7 Depth=1
	slli	s2, s2, 8
	addiw	a0, s5, -8
	bge	s4, s5, .LBB9_15
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 32(s0)
	srli	a2, s2, 16
	addi	a3, a1, 1
	sd	a3, 32(s0)
	sb	a2, 0(a1)
	ld	a1, 40(s0)
	mv	s5, a0
	addi	a1, a1, -1
	sd	a1, 40(s0)
	beqz	a1, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=1
	and	a0, s2, s3
	bne	a0, s3, .LBB9_6
	j	.LBB9_12
.LBB9_9:                                #   in Loop: Header=BB9_7 Depth=1
	ld	a0, 64(s0)
	ld	s6, 40(a0)
	ld	a1, 24(s6)
	jalr	a1
	bnez	a0, .LBB9_11
# %bb.10:                               #   in Loop: Header=BB9_7 Depth=1
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s1, 40(a1)
	jalr	a2
.LBB9_11:                               #   in Loop: Header=BB9_7 Depth=1
	ld	a0, 0(s6)
	ld	a1, 8(s6)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s2, s3
	bne	a0, s3, .LBB9_6
.LBB9_12:                               #   in Loop: Header=BB9_7 Depth=1
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB9_6
# %bb.13:                               #   in Loop: Header=BB9_7 Depth=1
	ld	a0, 64(s0)
	ld	s6, 40(a0)
	ld	a1, 24(s6)
	jalr	a1
	bnez	a0, .LBB9_5
# %bb.14:                               #   in Loop: Header=BB9_7 Depth=1
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s1, 40(a1)
	jalr	a2
	j	.LBB9_5
.LBB9_15:
	sd	s2, 48(s0)
	sw	a0, 56(s0)
.LBB9_16:
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
.Lfunc_end9:
	.size	emit_bits, .Lfunc_end9-emit_bits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_eobrun
	.type	emit_eobrun,@function
emit_eobrun:                            # @emit_eobrun
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 92(a0)
	beqz	a0, .LBB10_15
# %bb.1:
	li	a2, 1
	bne	a0, a2, .LBB10_3
# %bb.2:
	li	s1, 0
	j	.LBB10_7
.LBB10_3:                               # %.preheader
	li	a1, -1
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	sraiw	a0, a0, 1
	addiw	a1, a1, 1
	bltu	a2, a0, .LBB10_4
# %bb.5:
	li	a0, 14
	addiw	s1, a1, 1
	bltu	a1, a0, .LBB10_7
# %bb.6:
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
.LBB10_7:
	lw	a2, 24(s0)
	lw	a1, 88(s0)
	slliw	a0, s1, 4
	slli	a1, a1, 3
	add	a1, s0, a1
	beqz	a2, .LBB10_16
# %bb.8:
	ld	a1, 152(a1)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a1, 0(a0)
	addi	a1, a1, 1
	sd	a1, 0(a0)
	beqz	s1, .LBB10_10
.LBB10_9:
	lw	a1, 92(s0)
	mv	a0, s0
	mv	a2, s1
	call	emit_bits
.LBB10_10:
	lw	a0, 96(s0)
	sw	zero, 92(s0)
	beqz	a0, .LBB10_14
# %bb.11:
	lw	a1, 24(s0)
	bnez	a1, .LBB10_14
# %bb.12:
	ld	s1, 104(s0)
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, a0, s1
	addi	s2, a0, 1
.LBB10_13:                              # =>This Inner Loop Header: Depth=1
	lbu	a1, 0(s1)
	li	a2, 1
	mv	a0, s0
	call	emit_bits
	addi	s1, s1, 1
	bne	s1, s2, .LBB10_13
.LBB10_14:
	sw	zero, 96(s0)
.LBB10_15:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB10_16:
	ld	a2, 120(a1)
	slli	a1, a0, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	lbu	a2, 1024(a0)
	mv	a0, s0
	call	emit_bits
	bnez	s1, .LBB10_9
	j	.LBB10_10
.Lfunc_end10:
	.size	emit_eobrun, .Lfunc_end10-emit_eobrun
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function flush_bits
	.type	flush_bits,@function
flush_bits:                             # @flush_bits
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
	lw	a0, 24(a0)
	beqz	a0, .LBB11_2
.LBB11_1:
	sd	zero, 48(s0)
	sw	zero, 56(s0)
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
.LBB11_2:
	lw	s2, 56(s0)
	blez	s2, .LBB11_1
# %bb.3:
	li	a0, 17
	ld	a1, 48(s0)
	subw	a0, a0, s2
	li	a2, 127
	sll	s1, a2, a0
	or	s1, s1, a1
	addi	s2, s2, 15
	li	s3, 24
	lui	s4, 4080
	li	s5, 15
	j	.LBB11_6
.LBB11_4:                               #   in Loop: Header=BB11_6 Depth=1
	ld	a0, 0(s6)
	ld	a1, 8(s6)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
.LBB11_5:                               #   in Loop: Header=BB11_6 Depth=1
	addiw	s2, s2, -8
	slli	s1, s1, 8
	bge	s5, s2, .LBB11_1
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 32(s0)
	srli	a1, s1, 16
	addi	a2, a0, 1
	sd	a2, 32(s0)
	sb	a1, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	beqz	a0, .LBB11_8
# %bb.7:                                #   in Loop: Header=BB11_6 Depth=1
	and	a0, s1, s4
	bne	a0, s4, .LBB11_5
	j	.LBB11_11
.LBB11_8:                               #   in Loop: Header=BB11_6 Depth=1
	ld	a0, 64(s0)
	ld	s6, 40(a0)
	ld	a1, 24(s6)
	jalr	a1
	bnez	a0, .LBB11_10
# %bb.9:                                #   in Loop: Header=BB11_6 Depth=1
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s3, 40(a1)
	jalr	a2
.LBB11_10:                              #   in Loop: Header=BB11_6 Depth=1
	ld	a0, 0(s6)
	ld	a1, 8(s6)
	sd	a0, 32(s0)
	sd	a1, 40(s0)
	and	a0, s1, s4
	bne	a0, s4, .LBB11_5
.LBB11_11:                              #   in Loop: Header=BB11_6 Depth=1
	ld	a0, 32(s0)
	addi	a1, a0, 1
	sd	a1, 32(s0)
	sb	zero, 0(a0)
	ld	a0, 40(s0)
	addi	a0, a0, -1
	sd	a0, 40(s0)
	bnez	a0, .LBB11_5
# %bb.12:                               #   in Loop: Header=BB11_6 Depth=1
	ld	a0, 64(s0)
	ld	s6, 40(a0)
	ld	a1, 24(s6)
	jalr	a1
	bnez	a0, .LBB11_4
# %bb.13:                               #   in Loop: Header=BB11_6 Depth=1
	ld	a0, 64(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s3, 40(a1)
	jalr	a2
	j	.LBB11_4
.Lfunc_end11:
	.size	flush_bits, .Lfunc_end11-flush_bits
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
