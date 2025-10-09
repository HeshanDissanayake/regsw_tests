	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"biariencode.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	reset_pic_bin_count             # -- Begin function reset_pic_bin_count
	.p2align	2
	.type	reset_pic_bin_count,@function
reset_pic_bin_count:                    # @reset_pic_bin_count
# %bb.0:
	lui	a0, %hi(pic_bin_count)
	sw	zero, %lo(pic_bin_count)(a0)
	ret
.Lfunc_end0:
	.size	reset_pic_bin_count, .Lfunc_end0-reset_pic_bin_count
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_pic_bin_count               # -- Begin function get_pic_bin_count
	.p2align	2
	.type	get_pic_bin_count,@function
get_pic_bin_count:                      # @get_pic_bin_count
# %bb.0:
	lui	a0, %hi(pic_bin_count)
	lw	a0, %lo(pic_bin_count)(a0)
	ret
.Lfunc_end1:
	.size	get_pic_bin_count, .Lfunc_end1-get_pic_bin_count
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	arienco_create_encoding_environment # -- Begin function arienco_create_encoding_environment
	.p2align	2
	.type	arienco_create_encoding_environment,@function
arienco_create_encoding_environment:    # @arienco_create_encoding_environment
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 1
	li	a1, 96
	call	calloc
	beqz	a0, .LBB2_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB2_2:
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	s0, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	arienco_create_encoding_environment, .Lfunc_end2-arienco_create_encoding_environment
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	arienco_delete_encoding_environment # -- Begin function arienco_delete_encoding_environment
	.p2align	2
	.type	arienco_delete_encoding_environment,@function
arienco_delete_encoding_environment:    # @arienco_delete_encoding_environment
# %bb.0:
	beqz	a0, .LBB3_2
# %bb.1:
	tail	free
.LBB3_2:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	li	a2, 33
	mv	a0, s0
	call	memcpy
	li	a1, 200
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	error
.Lfunc_end3:
	.size	arienco_delete_encoding_environment, .Lfunc_end3-arienco_delete_encoding_environment
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	arienco_start_encoding          # -- Begin function arienco_start_encoding
	.p2align	2
	.type	arienco_start_encoding,@function
arienco_start_encoding:                 # @arienco_start_encoding
# %bb.0:
	li	a3, 255
	slli	a3, a3, 33
	sd	a3, 0(a0)
	sw	zero, 16(a0)
	li	a3, 9
	slli	a3, a3, 32
	sd	a3, 8(a0)
	sd	a1, 24(a0)
	sd	a2, 32(a0)
	sd	zero, 40(a0)
	ret
.Lfunc_end4:
	.size	arienco_start_encoding, .Lfunc_end4-arienco_start_encoding
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	arienco_bits_written            # -- Begin function arienco_bits_written
	.p2align	2
	.type	arienco_bits_written,@function
arienco_bits_written:                   # @arienco_bits_written
# %bb.0:
	ld	a1, 32(a0)
	lw	a1, 0(a1)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 3
	subw	a2, a2, a0
	add	a0, a2, a1
	addiw	a0, a0, 8
	ret
.Lfunc_end5:
	.size	arienco_bits_written, .Lfunc_end5-arienco_bits_written
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	arienco_done_encoding           # -- Begin function arienco_done_encoding
	.p2align	2
	.type	arienco_done_encoding,@function
arienco_done_encoding:                  # @arienco_done_encoding
# %bb.0:
	lw	a1, 8(a0)
	lw	a2, 0(a0)
	slli	a1, a1, 1
	slli	a2, a2, 54
	lw	a3, 12(a0)
	srli	a2, a2, 63
	or	a2, a2, a1
	sw	a2, 8(a0)
	addiw	a1, a3, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB6_3
# %bb.1:
	ld	a1, 32(a0)
	lw	a3, 0(a1)
	ld	a4, 24(a0)
	addi	a5, a3, 1
	sw	a5, 0(a1)
	add	a3, a4, a3
	sb	a2, 0(a3)
	lw	a2, 40(a0)
	li	a1, 8
	blt	a2, a1, .LBB6_3
.LBB6_2:
	lw	a3, 44(a0)
	addiw	a4, a2, -15
	sltu	a5, a2, a4
	addi	a5, a5, -1
	and	a4, a5, a4
	addi	a4, a4, 7
	andi	a5, a4, -8
	srliw	a4, a4, 3
	add	a3, a3, a4
	subw	a2, a2, a5
	addi	a2, a2, -8
	addi	a3, a3, 1
	sw	a2, 40(a0)
	sw	a3, 44(a0)
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	lw	a2, 16(a0)
	beqz	a2, .LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	lw	a3, 8(a0)
	lw	a4, 0(a0)
	addi	a2, a2, -1
	sw	a2, 16(a0)
	slli	a3, a3, 1
	slli	a4, a4, 54
	srli	a4, a4, 63
	or	a3, a4, a3
	xori	a2, a3, 1
	sw	a2, 8(a0)
	addiw	a1, a1, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB6_3
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	ld	a1, 32(a0)
	lw	a3, 0(a1)
	ld	a4, 24(a0)
	addi	a5, a3, 1
	sw	a5, 0(a1)
	add	a3, a4, a3
	sb	a2, 0(a3)
	lw	a2, 40(a0)
	li	a1, 8
	sw	a1, 12(a0)
	bge	a2, a1, .LBB6_2
	j	.LBB6_3
.LBB6_6:
	lw	a2, 8(a0)
	lw	a3, 0(a0)
	slli	a2, a2, 1
	slli	a3, a3, 55
	srli	a3, a3, 63
	or	a2, a3, a2
	sw	a2, 8(a0)
	addiw	a1, a1, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB6_9
# %bb.7:
	ld	a1, 32(a0)
	lw	a3, 0(a1)
	ld	a4, 24(a0)
	addi	a5, a3, 1
	sw	a5, 0(a1)
	add	a3, a4, a3
	sb	a2, 0(a3)
	lw	a2, 40(a0)
	li	a1, 8
	blt	a2, a1, .LBB6_9
# %bb.8:
	lw	a3, 44(a0)
	addiw	a4, a2, -15
	sltu	a5, a2, a4
	addi	a5, a5, -1
	and	a4, a5, a4
	addi	a4, a4, 7
	andi	a5, a4, -8
	srliw	a4, a4, 3
	add	a3, a3, a4
	subw	a2, a2, a5
	addi	a2, a2, -8
	addi	a3, a3, 1
	sw	a2, 40(a0)
	sw	a3, 44(a0)
.LBB6_9:
	lw	a2, 8(a0)
	slli	a2, a2, 1
	addi	a2, a2, 1
	sw	a2, 8(a0)
	addiw	a1, a1, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB6_12
# %bb.10:
	ld	a1, 32(a0)
	lw	a3, 0(a1)
	ld	a4, 24(a0)
	addi	a5, a3, 1
	sw	a5, 0(a1)
	add	a3, a4, a3
	sb	a2, 0(a3)
	lw	a2, 40(a0)
	li	a1, 8
	sw	a1, 12(a0)
	blt	a2, a1, .LBB6_12
# %bb.11:
	lw	a3, 44(a0)
	addiw	a4, a2, -15
	sltu	a5, a2, a4
	addi	a5, a5, -1
	and	a4, a5, a4
	addi	a4, a4, 7
	andi	a5, a4, -8
	srliw	a4, a4, 3
	add	a3, a3, a4
	subw	a2, a2, a5
	addi	a2, a2, -8
	addi	a3, a3, 1
	sw	a2, 40(a0)
	sw	a3, 44(a0)
.LBB6_12:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, %hi(stats)
	lw	a2, 24(a2)
	ld	a3, %lo(stats)(a3)
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a3, 1336(a2)
	subw	a3, a3, a1
	addi	a3, a3, 8
	sw	a3, 1336(a2)
	lw	a2, 12(a0)
	li	a1, 8
	beq	a2, a1, .LBB6_19
# %bb.13:
	lw	a1, 8(a0)
	li	a3, 9
	li	a4, 1
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	mv	a5, a2
	slli	a1, a1, 1
	addiw	a2, a2, -1
	beq	a5, a3, .LBB6_18
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=1
	bne	a5, a4, .LBB6_14
# %bb.16:
	ld	a3, 32(a0)
	sw	a1, 8(a0)
	sw	a2, 12(a0)
	lw	a2, 0(a3)
	ld	a4, 24(a0)
	addi	a5, a2, 1
	sw	a5, 0(a3)
	add	a2, a4, a2
	sb	a1, 0(a2)
	lw	a1, 40(a0)
	li	a2, 8
	sw	a2, 12(a0)
	blt	a1, a2, .LBB6_19
# %bb.17:
	lw	a2, 44(a0)
	addiw	a3, a1, -15
	sltu	a4, a1, a3
	addi	a4, a4, -1
	and	a3, a4, a3
	addi	a3, a3, 7
	andi	a4, a3, -8
	srliw	a3, a3, 3
	add	a2, a2, a3
	subw	a1, a1, a4
	addi	a1, a1, -8
	addi	a2, a2, 1
	sw	a1, 40(a0)
	sw	a2, 44(a0)
	j	.LBB6_19
.LBB6_18:
	sw	a1, 8(a0)
	sw	a2, 12(a0)
.LBB6_19:
	lw	a1, 44(a0)
	lw	a0, 40(a0)
	lui	a2, %hi(pic_bin_count)
	lw	a3, %lo(pic_bin_count)(a2)
	slli	a1, a1, 3
	add	a0, a1, a0
	add	a0, a0, a3
	sw	a0, %lo(pic_bin_count)(a2)
	ret
.Lfunc_end6:
	.size	arienco_done_encoding, .Lfunc_end6-arienco_done_encoding
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	biari_encode_symbol             # -- Begin function biari_encode_symbol
	.p2align	2
	.type	biari_encode_symbol,@function
biari_encode_symbol:                    # @biari_encode_symbol
# %bb.0:
	lwu	a6, 4(a0)
	lhu	a4, 0(a2)
	slli	a3, a6, 56
	srli	a3, a3, 62
	slli	a5, a4, 2
	lui	a7, %hi(rLPS_table_64x4)
	addi	a7, a7, %lo(rLPS_table_64x4)
	add	a5, a7, a5
	add	a3, a5, a3
	lbu	a5, 0(a3)
	lui	a3, %hi(cabac_encoding)
	lw	t0, %lo(cabac_encoding)(a3)
	ld	t1, 8(a2)
	lw	a3, 0(a0)
	lbu	a7, 2(a2)
	subw	a6, a6, a5
	add	t0, t1, t0
	snez	a1, a1
	sd	t0, 8(a2)
	bne	a7, a1, .LBB7_3
# %bb.1:
	slli	a4, a4, 1
	lui	a1, %hi(AC_next_state_MPS_64)
	addi	a1, a1, %lo(AC_next_state_MPS_64)
	add	a1, a1, a4
	lh	a1, 0(a1)
	li	a4, 255
	sh	a1, 0(a2)
	bgeu	a4, a6, .LBB7_6
.LBB7_2:
	lw	a1, 40(a0)
	sw	a6, 4(a0)
	sw	a3, 0(a0)
	addi	a1, a1, 1
	sw	a1, 40(a0)
	ret
.LBB7_3:
	bnez	a4, .LBB7_5
# %bb.4:
	xori	a1, a7, 1
	sb	a1, 2(a2)
.LBB7_5:
	slli	a4, a4, 1
	lui	a1, %hi(AC_next_state_LPS_64)
	addi	a1, a1, %lo(AC_next_state_LPS_64)
	add	a1, a1, a4
	lh	a1, 0(a1)
	addw	a3, a6, a3
	sh	a1, 0(a2)
	mv	a6, a5
.LBB7_6:
	li	a1, 512
	li	a2, 128
	li	a4, 255
	j	.LBB7_9
.LBB7_7:                                #   in Loop: Header=BB7_9 Depth=1
	addi	a3, a3, -512
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=1
	slliw	a3, a3, 1
	slliw	a6, a5, 1
	bgeu	a5, a2, .LBB7_2
.LBB7_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
                                        #     Child Loop BB7_13 Depth 2
	mv	a5, a6
	bltu	a3, a1, .LBB7_15
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	lw	a6, 8(a0)
	lw	t0, 12(a0)
	slli	a6, a6, 1
	addi	a7, a6, 1
	sw	a7, 8(a0)
	addiw	a6, t0, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB7_13
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=1
	ld	a6, 32(a0)
	lw	t0, 0(a6)
	ld	t1, 24(a0)
	addi	t2, t0, 1
	sw	t2, 0(a6)
	add	t0, t1, t0
	sb	a7, 0(t0)
	lw	a7, 40(a0)
	li	a6, 8
	sw	a6, 12(a0)
	blt	a7, a6, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_9 Depth=1
	lw	t0, 44(a0)
	addiw	t1, a7, -15
	sltu	t2, a7, t1
	addi	t2, t2, -1
	and	t1, t2, t1
	addi	t1, t1, 7
	andi	t2, t1, -8
	srliw	t1, t1, 3
	add	t0, t0, t1
	subw	a7, a7, t2
	addi	a7, a7, -8
	addi	t0, t0, 1
	sw	a7, 40(a0)
	sw	t0, 44(a0)
.LBB7_13:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 16(a0)
	beqz	a7, .LBB7_7
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=2
	lw	t0, 8(a0)
	addi	a7, a7, -1
	sw	a7, 16(a0)
	slli	a7, t0, 1
	sw	a7, 8(a0)
	addiw	a6, a6, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB7_13
	j	.LBB7_11
.LBB7_15:                               #   in Loop: Header=BB7_9 Depth=1
	bltu	a4, a3, .LBB7_21
# %bb.16:                               #   in Loop: Header=BB7_9 Depth=1
	lw	a7, 8(a0)
	lw	a6, 12(a0)
	slli	a7, a7, 1
	sw	a7, 8(a0)
	addiw	a6, a6, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB7_19
.LBB7_17:                               #   in Loop: Header=BB7_9 Depth=1
	ld	a6, 32(a0)
	lw	t0, 0(a6)
	ld	t1, 24(a0)
	addi	t2, t0, 1
	sw	t2, 0(a6)
	add	t0, t1, t0
	sb	a7, 0(t0)
	lw	a7, 40(a0)
	li	a6, 8
	sw	a6, 12(a0)
	blt	a7, a6, .LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_9 Depth=1
	lw	t0, 44(a0)
	addiw	t1, a7, -15
	sltu	t2, a7, t1
	addi	t2, t2, -1
	and	t1, t2, t1
	addi	t1, t1, 7
	andi	t2, t1, -8
	srliw	t1, t1, 3
	add	t0, t0, t1
	subw	a7, a7, t2
	addi	a7, a7, -8
	addi	t0, t0, 1
	sw	a7, 40(a0)
	sw	t0, 44(a0)
.LBB7_19:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 16(a0)
	beqz	a7, .LBB7_8
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=2
	lw	t0, 8(a0)
	addi	a7, a7, -1
	sw	a7, 16(a0)
	slli	a7, t0, 1
	addi	a7, a7, 1
	sw	a7, 8(a0)
	addiw	a6, a6, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB7_19
	j	.LBB7_17
.LBB7_21:                               #   in Loop: Header=BB7_9 Depth=1
	lw	a6, 16(a0)
	addi	a6, a6, 1
	sw	a6, 16(a0)
	addi	a3, a3, -256
	j	.LBB7_8
.Lfunc_end7:
	.size	biari_encode_symbol, .Lfunc_end7-biari_encode_symbol
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	biari_encode_symbol_eq_prob     # -- Begin function biari_encode_symbol_eq_prob
	.p2align	2
	.type	biari_encode_symbol_eq_prob,@function
biari_encode_symbol_eq_prob:            # @biari_encode_symbol_eq_prob
# %bb.0:
	lw	a2, 0(a0)
	slliw	a2, a2, 1
	beqz	a1, .LBB8_2
# %bb.1:
	lw	a1, 4(a0)
	addw	a2, a1, a2
.LBB8_2:
	li	a1, 1024
	bltu	a2, a1, .LBB8_8
# %bb.3:
	lw	a1, 8(a0)
	lw	a4, 12(a0)
	slli	a1, a1, 1
	addi	a3, a1, 1
	sw	a3, 8(a0)
	addiw	a1, a4, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB8_6
.LBB8_4:
	ld	a1, 32(a0)
	lw	a4, 0(a1)
	ld	a5, 24(a0)
	addi	a6, a4, 1
	sw	a6, 0(a1)
	add	a4, a5, a4
	sb	a3, 0(a4)
	lw	a3, 40(a0)
	li	a1, 8
	sw	a1, 12(a0)
	blt	a3, a1, .LBB8_6
# %bb.5:
	lw	a4, 44(a0)
	addiw	a5, a3, -15
	sltu	a6, a3, a5
	addi	a6, a6, -1
	and	a5, a6, a5
	addi	a5, a5, 7
	andi	a6, a5, -8
	srliw	a5, a5, 3
	add	a4, a4, a5
	subw	a3, a3, a6
	addi	a3, a3, -8
	addi	a4, a4, 1
	sw	a3, 40(a0)
	sw	a4, 44(a0)
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 16(a0)
	beqz	a3, .LBB8_14
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	lw	a4, 8(a0)
	addi	a3, a3, -1
	sw	a3, 16(a0)
	slli	a3, a4, 1
	sw	a3, 8(a0)
	addiw	a1, a1, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB8_6
	j	.LBB8_4
.LBB8_8:
	li	a1, 511
	bltu	a1, a2, .LBB8_15
# %bb.9:
	lw	a3, 8(a0)
	lw	a1, 12(a0)
	slli	a3, a3, 1
	sw	a3, 8(a0)
	addiw	a1, a1, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB8_12
.LBB8_10:
	ld	a1, 32(a0)
	lw	a4, 0(a1)
	ld	a5, 24(a0)
	addi	a6, a4, 1
	sw	a6, 0(a1)
	add	a4, a5, a4
	sb	a3, 0(a4)
	lw	a3, 40(a0)
	li	a1, 8
	sw	a1, 12(a0)
	blt	a3, a1, .LBB8_12
# %bb.11:
	lw	a4, 44(a0)
	addiw	a5, a3, -15
	sltu	a6, a3, a5
	addi	a6, a6, -1
	and	a5, a6, a5
	addi	a5, a5, 7
	andi	a6, a5, -8
	srliw	a5, a5, 3
	add	a4, a4, a5
	subw	a3, a3, a6
	addi	a3, a3, -8
	addi	a4, a4, 1
	sw	a3, 40(a0)
	sw	a4, 44(a0)
.LBB8_12:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 16(a0)
	beqz	a3, .LBB8_16
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=1
	lw	a4, 8(a0)
	addi	a3, a3, -1
	sw	a3, 16(a0)
	slli	a3, a4, 1
	addi	a3, a3, 1
	sw	a3, 8(a0)
	addiw	a1, a1, -1
	sw	a1, 12(a0)
	bnez	a1, .LBB8_12
	j	.LBB8_10
.LBB8_14:
	addi	a2, a2, -1024
	j	.LBB8_16
.LBB8_15:
	lw	a1, 16(a0)
	addi	a1, a1, 1
	sw	a1, 16(a0)
	addi	a2, a2, -512
.LBB8_16:
	lw	a1, 40(a0)
	sw	a2, 0(a0)
	addi	a1, a1, 1
	sw	a1, 40(a0)
	ret
.Lfunc_end8:
	.size	biari_encode_symbol_eq_prob, .Lfunc_end8-biari_encode_symbol_eq_prob
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	biari_encode_symbol_final       # -- Begin function biari_encode_symbol_final
	.p2align	2
	.type	biari_encode_symbol_final,@function
biari_encode_symbol_final:              # @biari_encode_symbol_final
# %bb.0:
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	addiw	a3, a3, -2
	seqz	a2, a1
	mv	a6, a3
	beqz	a1, .LBB9_2
# %bb.1:
	li	a6, 2
.LBB9_2:
	addi	a2, a2, -1
	and	a1, a2, a3
	li	a2, 255
	addw	a1, a1, a4
	bltu	a2, a6, .LBB9_19
# %bb.3:
	li	a3, 512
	li	a4, 128
	j	.LBB9_6
.LBB9_4:                                #   in Loop: Header=BB9_6 Depth=1
	addi	a1, a1, -512
.LBB9_5:                                #   in Loop: Header=BB9_6 Depth=1
	slliw	a1, a1, 1
	slliw	a6, a5, 1
	bgeu	a5, a4, .LBB9_20
.LBB9_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_10 Depth 2
	mv	a5, a6
	bltu	a1, a3, .LBB9_12
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	lw	a6, 8(a0)
	lw	t0, 12(a0)
	slli	a6, a6, 1
	addi	a7, a6, 1
	sw	a7, 8(a0)
	addiw	a6, t0, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB9_10
.LBB9_8:                                #   in Loop: Header=BB9_6 Depth=1
	ld	a6, 32(a0)
	lw	t0, 0(a6)
	ld	t1, 24(a0)
	addi	t2, t0, 1
	sw	t2, 0(a6)
	add	t0, t1, t0
	sb	a7, 0(t0)
	lw	a7, 40(a0)
	li	a6, 8
	sw	a6, 12(a0)
	blt	a7, a6, .LBB9_10
# %bb.9:                                #   in Loop: Header=BB9_6 Depth=1
	lw	t0, 44(a0)
	addiw	t1, a7, -15
	sltu	t2, a7, t1
	addi	t2, t2, -1
	and	t1, t2, t1
	addi	t1, t1, 7
	andi	t2, t1, -8
	srliw	t1, t1, 3
	add	t0, t0, t1
	subw	a7, a7, t2
	addi	a7, a7, -8
	addi	t0, t0, 1
	sw	a7, 40(a0)
	sw	t0, 44(a0)
.LBB9_10:                               #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 16(a0)
	beqz	a7, .LBB9_4
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=2
	lw	t0, 8(a0)
	addi	a7, a7, -1
	sw	a7, 16(a0)
	slli	a7, t0, 1
	sw	a7, 8(a0)
	addiw	a6, a6, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB9_10
	j	.LBB9_8
.LBB9_12:                               #   in Loop: Header=BB9_6 Depth=1
	bltu	a2, a1, .LBB9_18
# %bb.13:                               #   in Loop: Header=BB9_6 Depth=1
	lw	a7, 8(a0)
	lw	a6, 12(a0)
	slli	a7, a7, 1
	sw	a7, 8(a0)
	addiw	a6, a6, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB9_16
.LBB9_14:                               #   in Loop: Header=BB9_6 Depth=1
	ld	a6, 32(a0)
	lw	t0, 0(a6)
	ld	t1, 24(a0)
	addi	t2, t0, 1
	sw	t2, 0(a6)
	add	t0, t1, t0
	sb	a7, 0(t0)
	lw	a7, 40(a0)
	li	a6, 8
	sw	a6, 12(a0)
	blt	a7, a6, .LBB9_16
# %bb.15:                               #   in Loop: Header=BB9_6 Depth=1
	lw	t0, 44(a0)
	addiw	t1, a7, -15
	sltu	t2, a7, t1
	addi	t2, t2, -1
	and	t1, t2, t1
	addi	t1, t1, 7
	andi	t2, t1, -8
	srliw	t1, t1, 3
	add	t0, t0, t1
	subw	a7, a7, t2
	addi	a7, a7, -8
	addi	t0, t0, 1
	sw	a7, 40(a0)
	sw	t0, 44(a0)
.LBB9_16:                               #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 16(a0)
	beqz	a7, .LBB9_5
# %bb.17:                               #   in Loop: Header=BB9_16 Depth=2
	lw	t0, 8(a0)
	addi	a7, a7, -1
	sw	a7, 16(a0)
	slli	a7, t0, 1
	addi	a7, a7, 1
	sw	a7, 8(a0)
	addiw	a6, a6, -1
	sw	a6, 12(a0)
	bnez	a6, .LBB9_16
	j	.LBB9_14
.LBB9_18:                               #   in Loop: Header=BB9_6 Depth=1
	lw	a6, 16(a0)
	addi	a6, a6, 1
	sw	a6, 16(a0)
	addi	a1, a1, -256
	j	.LBB9_5
.LBB9_19:
	mv	a6, a3
.LBB9_20:
	lw	a2, 40(a0)
	sw	a6, 4(a0)
	sw	a1, 0(a0)
	addi	a2, a2, 1
	sw	a2, 40(a0)
	ret
.Lfunc_end9:
	.size	biari_encode_symbol_final, .Lfunc_end9-biari_encode_symbol_final
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	biari_init_context              # -- Begin function biari_init_context
	.p2align	2
	.type	biari_init_context,@function
biari_init_context:                     # @biari_init_context
# %bb.0:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 40(a2)
	lw	a3, 0(a1)
	sgtz	a4, a2
	negw	a4, a4
	lw	a1, 4(a1)
	and	a2, a4, a2
	mul	a2, a2, a3
	sraiw	a2, a2, 4
	addw	a1, a2, a1
	mv	a2, a1
	blez	a1, .LBB10_4
# %bb.1:
	li	a3, 126
	bge	a2, a3, .LBB10_5
.LBB10_2:
	slti	a3, a1, 64
	li	a4, 63
	xori	a3, a3, 1
	blt	a4, a1, .LBB10_6
.LBB10_3:
	sub	a1, a4, a2
	sh	a1, 0(a0)
	sb	a3, 2(a0)
	sd	zero, 8(a0)
	ret
.LBB10_4:
	li	a2, 1
	li	a3, 126
	blt	a2, a3, .LBB10_2
.LBB10_5:
	li	a2, 126
	slti	a3, a1, 64
	li	a4, 63
	xori	a3, a3, 1
	bge	a4, a1, .LBB10_3
.LBB10_6:
	addi	a1, a2, -64
	sh	a1, 0(a0)
	sb	a3, 2(a0)
	sd	zero, 8(a0)
	ret
.Lfunc_end10:
	.size	biari_init_context, .Lfunc_end10-biari_init_context
                                        # -- End function
	.option	pop
	.type	rLPS_table_64x4,@object         # @rLPS_table_64x4
	.section	.rodata,"a",@progbits
	.globl	rLPS_table_64x4
rLPS_table_64x4:
	.ascii	"\200\260\320\360"
	.ascii	"\200\247\305\343"
	.ascii	"\200\236\273\330"
	.ascii	"{\226\262\315"
	.ascii	"t\216\251\303"
	.ascii	"o\207\240\271"
	.ascii	"i\200\230\257"
	.ascii	"dz\220\246"
	.ascii	"_t\211\236"
	.ascii	"Zn\202\226"
	.ascii	"Uh{\216"
	.ascii	"Qcu\207"
	.ascii	"M^o\200"
	.ascii	"IYiz"
	.ascii	"EUdt"
	.ascii	"BP_n"
	.ascii	">LZh"
	.ascii	";HVc"
	.ascii	"8EQ^"
	.ascii	"5AMY"
	.ascii	"3>IU"
	.ascii	"0;EP"
	.ascii	".8BL"
	.ascii	"+5?H"
	.ascii	")2;E"
	.ascii	"'08A"
	.ascii	"%-6>"
	.ascii	"#+3;"
	.ascii	"!)08"
	.ascii	" '.5"
	.ascii	"\036%+2"
	.ascii	"\035#)0"
	.ascii	"\033!'-"
	.ascii	"\032\037%+"
	.ascii	"\030\036#)"
	.ascii	"\027\034!'"
	.ascii	"\026\033 %"
	.ascii	"\025\032\036#"
	.ascii	"\024\030\035!"
	.ascii	"\023\027\033\037"
	.ascii	"\022\026\032\036"
	.ascii	"\021\025\031\034"
	.ascii	"\020\024\027\033"
	.ascii	"\017\023\026\031"
	.ascii	"\016\022\025\030"
	.ascii	"\016\021\024\027"
	.ascii	"\r\020\023\026"
	.ascii	"\f\017\022\025"
	.ascii	"\f\016\021\024"
	.ascii	"\013\016\020\023"
	.ascii	"\013\r\017\022"
	.ascii	"\n\f\017\021"
	.ascii	"\n\f\016\020"
	.ascii	"\t\013\r\017"
	.ascii	"\t\013\f\016"
	.ascii	"\b\n\f\016"
	.ascii	"\b\t\013\r"
	.ascii	"\007\t\013\f"
	.ascii	"\007\t\n\f"
	.ascii	"\007\b\n\013"
	.ascii	"\006\b\t\013"
	.ascii	"\006\007\t\n"
	.ascii	"\006\007\b\t"
	.zero	4,2
	.size	rLPS_table_64x4, 256

	.type	AC_next_state_MPS_64,@object    # @AC_next_state_MPS_64
	.globl	AC_next_state_MPS_64
	.p2align	1, 0x0
AC_next_state_MPS_64:
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
	.half	19                              # 0x13
	.half	20                              # 0x14
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	23                              # 0x17
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	26                              # 0x1a
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	29                              # 0x1d
	.half	30                              # 0x1e
	.half	31                              # 0x1f
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	34                              # 0x22
	.half	35                              # 0x23
	.half	36                              # 0x24
	.half	37                              # 0x25
	.half	38                              # 0x26
	.half	39                              # 0x27
	.half	40                              # 0x28
	.half	41                              # 0x29
	.half	42                              # 0x2a
	.half	43                              # 0x2b
	.half	44                              # 0x2c
	.half	45                              # 0x2d
	.half	46                              # 0x2e
	.half	47                              # 0x2f
	.half	48                              # 0x30
	.half	49                              # 0x31
	.half	50                              # 0x32
	.half	51                              # 0x33
	.half	52                              # 0x34
	.half	53                              # 0x35
	.half	54                              # 0x36
	.half	55                              # 0x37
	.half	56                              # 0x38
	.half	57                              # 0x39
	.half	58                              # 0x3a
	.half	59                              # 0x3b
	.half	60                              # 0x3c
	.half	61                              # 0x3d
	.half	62                              # 0x3e
	.half	62                              # 0x3e
	.half	63                              # 0x3f
	.size	AC_next_state_MPS_64, 128

	.type	AC_next_state_LPS_64,@object    # @AC_next_state_LPS_64
	.globl	AC_next_state_LPS_64
	.p2align	1, 0x0
AC_next_state_LPS_64:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	11                              # 0xb
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	18                              # 0x12
	.half	19                              # 0x13
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	23                              # 0x17
	.half	24                              # 0x18
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	26                              # 0x1a
	.half	26                              # 0x1a
	.half	27                              # 0x1b
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	29                              # 0x1d
	.half	29                              # 0x1d
	.half	30                              # 0x1e
	.half	30                              # 0x1e
	.half	30                              # 0x1e
	.half	31                              # 0x1f
	.half	32                              # 0x20
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	33                              # 0x21
	.half	33                              # 0x21
	.half	34                              # 0x22
	.half	34                              # 0x22
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	36                              # 0x24
	.half	36                              # 0x24
	.half	36                              # 0x24
	.half	37                              # 0x25
	.half	37                              # 0x25
	.half	37                              # 0x25
	.half	38                              # 0x26
	.half	38                              # 0x26
	.half	63                              # 0x3f
	.size	AC_next_state_LPS_64, 128

	.type	binCount,@object                # @binCount
	.section	.sbss,"aw",@nobits
	.globl	binCount
	.p2align	2, 0x0
binCount:
	.word	0                               # 0x0
	.size	binCount, 4

	.type	pic_bin_count,@object           # @pic_bin_count
	.globl	pic_bin_count
	.p2align	2, 0x0
pic_bin_count:
	.word	0                               # 0x0
	.size	pic_bin_count, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"arienco_create_encoding_environment: eep"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error freeing eep (NULL pointer)"
	.size	.L.str.1, 33

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
