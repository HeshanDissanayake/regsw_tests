	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"slice.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_ref_pic_list_reordering    # -- Begin function init_ref_pic_list_reordering
	.p2align	2
	.type	init_ref_pic_list_reordering,@function
init_ref_pic_list_reordering:           # @init_ref_pic_list_reordering
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a0, a0, a1
	ld	a0, -1200(a0)
	sw	zero, 56(a0)
	sw	zero, 88(a0)
	ret
.Lfunc_end0:
	.size	init_ref_pic_list_reordering, .Lfunc_end0-init_ref_pic_list_reordering
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	start_slice                     # -- Begin function start_slice
	.p2align	2
	.type	start_slice,@function
start_slice:                            # @start_slice
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lui	a2, 8
	addiw	a2, a2, -1208
	lui	s0, %hi(input)
	ld	a3, %lo(input)(s0)
	add	a0, a0, a2
	ld	a2, 0(a0)
	ld	s3, 8(a0)
	addi	a0, a3, 2047
	lw	s4, 945(a0)
	lw	s5, 4(a2)
	lw	a0, -912(a1)
	call	RTPUpdateTimestamp
	ld	a0, 24(s3)
	ld	s1, 0(a0)
	sw	zero, 40(s1)
	li	a0, 0
	call	SliceHeader
	ld	a1, %lo(input)(s0)
	addi	a1, a1, 2047
	lw	a1, 937(a1)
	li	a2, 1
	mv	s0, a0
	bne	a1, a2, .LBB1_2
# %bb.1:
	ld	s2, 24(s3)
	lw	a0, 4(s1)
	addi	s2, s2, 8
	addi	a1, a0, -8
	seqz	a1, a1
	addi	a1, a1, -1
	and	a0, a1, a0
	addw	s0, a0, s0
	mv	a0, s1
	call	writeVlcByteAlign
	ld	a1, 32(s1)
	mv	a0, s2
	mv	a2, s1
	call	arienco_start_encoding
	call	cabac_new_slice
	beqz	s5, .LBB1_3
	j	.LBB1_10
.LBB1_2:
	call	CAVLC_init
	bnez	s5, .LBB1_10
.LBB1_3:
	beqz	s4, .LBB1_10
# %bb.4:
	ld	a0, 24(s3)
	ld	s1, 112(a0)
	sw	zero, 40(s1)
	li	a0, 1
	li	s4, 1
	call	Partition_BC_Header
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 937(a1)
	add	s2, a0, s0
	bne	a1, s4, .LBB1_6
# %bb.5:
	ld	a0, 24(s3)
	lw	a1, 4(s1)
	addi	s0, a0, 120
	addi	a0, a1, -8
	seqz	a0, a0
	addi	a0, a0, -1
	and	a0, a0, a1
	add	s2, a0, s2
	mv	a0, s1
	call	writeVlcByteAlign
	ld	a1, 32(s1)
	mv	a0, s0
	mv	a2, s1
	call	arienco_start_encoding
	call	cabac_new_slice
	j	.LBB1_7
.LBB1_6:
	call	CAVLC_init
.LBB1_7:
	ld	a0, 24(s3)
	ld	s1, 224(a0)
	sw	zero, 40(s1)
	li	a0, 2
	call	Partition_BC_Header
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 937(a1)
	li	a2, 1
	addw	s0, a0, s2
	bne	a1, a2, .LBB1_9
# %bb.8:
	ld	a0, 24(s3)
	lw	a1, 4(s1)
	addi	s2, a0, 232
	addi	a0, a1, -8
	seqz	a0, a0
	addi	a0, a0, -1
	and	a0, a0, a1
	addw	s0, a0, s0
	mv	a0, s1
	call	writeVlcByteAlign
	ld	a1, 32(s1)
	mv	a0, s2
	mv	a2, s1
	call	arienco_start_encoding
	call	cabac_new_slice
	j	.LBB1_10
.LBB1_9:
	call	CAVLC_init
.LBB1_10:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	li	a1, 1
	bne	a0, a1, .LBB1_12
# %bb.11:
	call	init_contexts
.LBB1_12:
	mv	a0, s0
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
	.size	start_slice, .Lfunc_end1-start_slice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	terminate_slice                 # -- Begin function terminate_slice
	.p2align	2
	.type	terminate_slice,@function
terminate_slice:                        # @terminate_slice
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
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	lui	a3, 8
	add	a1, a1, a3
	addi	a2, a2, 2047
	lw	a2, 937(a2)
	ld	s0, -1200(a1)
	li	a1, 1
	mv	s1, a0
	bne	a2, a1, .LBB2_2
# %bb.1:
	li	a0, 1
	call	write_terminating_bit
.LBB2_2:
	lw	a0, 16(s0)
	blez	a0, .LBB2_12
# %bb.3:
	li	s5, 0
	li	s6, 0
	li	s8, 0
	lui	s7, %hi(input)
	lui	s9, %hi(stats)
	lui	s10, %hi(img)
	lui	a0, 22
	addiw	s11, a0, 372
	addiw	a0, a0, 192
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	a0, 349525
	addiw	a0, a0, 1366
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	j	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=1
	lw	a2, 0(s3)
	ld	a0, 32(s3)
	addw	a3, a2, s8
	li	a1, 0
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	call	RBSPtoEBSP
	sw	a0, 0(s3)
	subw	a0, a0, s4
	ld	a1, %lo(stats)(s9)
	ld	a1, 1488(a1)
	lw	a2, 0(a1)
	slli	a0, a0, 3
	add	a0, a2, a0
	sw	a0, 0(a1)
	lw	a0, 16(s0)
	addi	s6, s6, 1
	addi	s5, s5, 112
	bge	s6, a0, .LBB2_12
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	ld	s4, 24(s0)
	ld	a0, %lo(input)(s7)
	add	s4, s4, s5
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	ld	s3, 0(s4)
	beqz	a0, .LBB2_11
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	addi	a0, s4, 8
	call	arienco_done_encoding
	ld	a0, %lo(img)(s10)
	lw	a1, 20(s4)
	lw	s4, 0(s3)
	add	a0, a0, s11
	lw	a2, 108(a0)
	sw	a1, 4(s3)
	sb	zero, 8(s3)
	add	a2, a2, s4
	sw	a2, 108(a0)
	beqz	s1, .LBB2_4
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	lw	a1, 16(s0)
	addi	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 32
	bne	s6, a1, .LBB2_4
# %bb.9:                                #   in Loop: Header=BB2_6 Depth=1
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lwu	a1, 32(a1)
	lw	a2, 0(a0)
	slli	a1, a1, 2
	lui	a3, %hi(terminate_slice.MbWidthC)
	addi	a3, a3, %lo(terminate_slice.MbWidthC)
	add	a3, a3, a1
	lw	a3, 0(a3)
	lui	a4, %hi(terminate_slice.MbHeightC)
	addi	a4, a4, %lo(terminate_slice.MbHeightC)
	add	a1, a4, a1
	lw	a1, 0(a1)
	lw	a0, 4(a0)
	slli	a2, a2, 8
	mul	a1, a3, a1
	mul	a0, a1, a0
	slli	a0, a0, 1
	add	s2, a0, a2
	call	get_pic_bin_count
	ld	a1, %lo(img)(s10)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	lw	a2, 0(a1)
	li	a3, 96
	mul	a0, a0, a3
	mul	a2, s2, a2
	slli	a3, a2, 1
	subw	a0, a0, a2
	subw	a0, a0, a3
	addi	a2, a0, 1023
	sraiw	a3, a2, 31
	lw	a0, 288(a1)
	srliw	a1, a3, 22
	add	a1, a2, a1
	sraiw	a1, a1, 10
	bge	a0, a1, .LBB2_4
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	subw	s8, a1, a0
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	mul	a0, s8, a0
	srli	a1, a0, 63
	srli	a0, a0, 32
	addw	a1, a0, a1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	j	.LBB2_4
.LBB2_11:                               #   in Loop: Header=BB2_6 Depth=1
	mv	a0, s3
	call	SODBtoRBSP
	lw	s4, 0(s3)
	ld	a0, 32(s3)
	li	a1, 0
	mv	a2, s4
	li	a3, 0
	j	.LBB2_5
.LBB2_12:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	li	a1, 1
	bne	a0, a1, .LBB2_14
# %bb.13:
	call	store_contexts
.LBB2_14:
	mv	a0, s0
	call	free_ref_pic_list_reordering_buffer
	li	a0, 0
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
	.size	terminate_slice, .Lfunc_end2-terminate_slice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function encode_one_slice
.LCPI3_0:
	.quad	0x7fefffffffffffff              # double 1.7976931348623157E+308
	.text
	.globl	encode_one_slice
	.p2align	2
	.type	encode_one_slice,@function
encode_one_slice:                       # @encode_one_slice
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
	fsd	fs0, 32(sp)                     # 8-byte Folded Spill
	fsd	fs1, 24(sp)                     # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	mv	s9, a2
	sw	zero, 20(sp)
	sw	zero, 120(a1)
	call	FmoGetFirstMacroblockInSlice
	ld	a1, %lo(img)(s0)
	lui	a2, 8
	add	a2, a1, a2
	ld	s0, -1208(a2)
	sw	a0, 12(a1)
	bnez	s0, .LBB3_1
	j	.LBB3_166
.LBB3_1:
	mv	s1, a0
	lw	a0, 0(s0)
	addi	a2, a0, 1
	li	a3, 99
	sw	a2, 0(s0)
	blt	a0, a3, .LBB3_3
# %bb.2:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, -1
	call	error
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
.LBB3_3:
	lui	a0, 22
	addiw	a0, a0, 196
	add	a0, a1, a0
	lw	s3, 0(a0)
	lw	s4, 176(a0)
	lw	s5, 180(a0)
	li	a0, 1
	li	a1, 152
	li	s6, 1
	call	calloc
	mv	s2, a0
	bnez	a0, .LBB3_5
# %bb.4:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB3_5:
	lui	s7, %hi(input)
	ld	a1, %lo(input)(s7)
	addi	a0, a1, 2047
	lw	a0, 937(a0)
	slli	s4, s4, 8
	slli	s5, s5, 9
	bne	a0, s6, .LBB3_7
# %bb.6:
	call	create_contexts_MotionInfo
	sd	a0, 32(s2)
	call	create_contexts_TextureInfo
	ld	a1, %lo(input)(s7)
	sd	a0, 40(s2)
.LBB3_7:
	addi	a0, a1, 2047
	lw	a0, 945(a0)
	add	s4, s5, s4
	li	s5, 1
	beqz	a0, .LBB3_9
# %bb.8:
	li	s5, 3
.LBB3_9:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a1, a1, a2
	ld	a1, -1208(a1)
	lw	a2, 4(a1)
	addi	a1, s4, 128
	beqz	a2, .LBB3_11
# %bb.10:
	li	s5, 1
.LBB3_11:
	mul	a1, a1, s3
	sw	s5, 16(s2)
	lui	a4, %hi(assignSE2partition)
	lui	a3, %hi(assignSE2partition_NoDP)
	addi	a3, a3, %lo(assignSE2partition_NoDP)
	sd	a3, %lo(assignSE2partition)(a4)
	xori	a0, a0, 1
	or	a2, a2, a0
	addi	a0, a4, %lo(assignSE2partition)
	bnez	a2, .LBB3_13
# %bb.12:
	lui	a3, %hi(assignSE2partition_DP)
	addi	a3, a3, %lo(assignSE2partition_DP)
.LBB3_13:
	addiw	s3, a1, 500
	sd	a3, 8(a0)
	li	a1, 112
	li	s6, 112
	mv	a0, s5
	call	calloc
	mv	s4, a0
	sd	a0, 24(s2)
	bnez	a0, .LBB3_15
# %bb.14:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB3_15:
	mul	s8, s5, s6
	add	s8, s4, s8
	lui	s5, %hi(.L.str.7)
	addi	s5, s5, %lo(.L.str.7)
	lui	s6, %hi(.L.str.8)
	addi	s6, s6, %lo(.L.str.8)
	j	.LBB3_17
.LBB3_16:                               #   in Loop: Header=BB3_17 Depth=1
	addi	s4, s4, 112
	beq	s4, s8, .LBB3_21
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	li	a0, 1
	li	a1, 48
	call	calloc
	mv	s7, a0
	sd	a0, 0(s4)
	bnez	a0, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=1
	mv	a0, s5
	call	no_mem_exit
	ld	s7, 0(s4)
.LBB3_19:                               #   in Loop: Header=BB3_17 Depth=1
	li	a1, 1
	mv	a0, s3
	call	calloc
	sd	a0, 32(s7)
	bnez	a0, .LBB3_16
# %bb.20:                               #   in Loop: Header=BB3_17 Depth=1
	mv	a0, s6
	call	no_mem_exit
	j	.LBB3_16
.LBB3_21:
	lw	a0, 0(s0)
	slli	a0, a0, 3
	add	a0, a0, s0
	sd	s2, 0(a0)
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	lui	a0, 22
	add	a2, a1, a0
	lw	a2, -912(a2)
	lui	a3, 8
	add	a3, a1, a3
	sd	s2, -1200(a3)
	slli	a3, a2, 1
	srli	a3, a3, 56
	add	a3, a2, a3
	andi	a3, a3, -256
	lw	a4, 40(a1)
	subw	a2, a2, a3
	sw	a2, 0(s2)
	lw	a2, 16(s2)
	sw	a4, 4(s2)
	sw	s1, 12(s2)
	lui	a3, %hi(dummy_slice_too_big)
	addi	a3, a3, %lo(dummy_slice_too_big)
	sd	a3, 120(s2)
	blez	a2, .LBB3_27
# %bb.22:
	ld	a1, 24(s2)
	li	a3, 112
	mul	a2, a2, a3
	add	a2, a1, a2
	lui	a3, %hi(input)
	lui	a4, %hi(writeSyntaxElement_CABAC)
	addi	a4, a4, %lo(writeSyntaxElement_CABAC)
	lui	a5, %hi(writeSyntaxElement_UVLC)
	addi	a5, a5, %lo(writeSyntaxElement_UVLC)
	li	a6, 1
	slli	a6, a6, 35
	j	.LBB3_24
.LBB3_23:                               #   in Loop: Header=BB3_24 Depth=1
	ld	t0, 0(a1)
	sd	a7, 104(a1)
	sd	a6, 0(t0)
	addi	a1, a1, 112
	sb	zero, 8(t0)
	beq	a1, a2, .LBB3_26
.LBB3_24:                               # =>This Inner Loop Header: Depth=1
	ld	a7, %lo(input)(a3)
	addi	a7, a7, 2047
	lw	t0, 937(a7)
	mv	a7, a5
	beqz	t0, .LBB3_23
# %bb.25:                               #   in Loop: Header=BB3_24 Depth=1
	mv	a7, a4
	j	.LBB3_23
.LBB3_26:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
.LBB3_27:
	lui	a2, %hi(active_pps)
	ld	a2, %lo(active_pps)(a2)
	lw	a3, 184(a2)
	addiw	s3, a0, -704
	add	a4, a1, s3
	addi	a3, a3, 1
	lw	a2, 188(a2)
	lw	a0, 24(a1)
	lw	a1, 28(a1)
	sw	a3, 0(a4)
	addi	a2, a2, 1
	sw	a2, 4(a4)
	call	init_lists
	lui	a0, %hi(listXsize)
	ld	a3, %lo(img)(s0)
	lw	a4, %lo(listXsize)(a0)
	addi	a1, a0, %lo(listXsize)
	add	a0, a3, s3
	sw	a4, 0(a0)
	lw	a2, 4(a1)
	lw	a5, 24(a3)
	sw	a2, 4(a0)
	beqz	a5, .LBB3_29
# %bb.28:
	li	a1, 3
	bne	a5, a1, .LBB3_34
.LBB3_29:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a6, 40(a1)
	beqz	a6, .LBB3_33
# %bb.30:
	lw	a7, 28(a3)
	snez	a7, a7
	sllw	a6, a6, a7
	blt	a4, a6, .LBB3_32
# %bb.31:
	mv	a4, a6
.LBB3_32:
	sw	a4, 0(a0)
	lui	a6, %hi(listXsize)
	sw	a4, %lo(listXsize)(a6)
.LBB3_33:
	li	a6, 1
	lui	s4, %hi(listXsize)
	addi	s4, s4, %lo(listXsize)
	beq	a5, a6, .LBB3_35
	j	.LBB3_43
.LBB3_34:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	li	a6, 1
	lui	s4, %hi(listXsize)
	addi	s4, s4, %lo(listXsize)
	bne	a5, a6, .LBB3_43
.LBB3_35:
	lw	a5, 44(a1)
	beqz	a5, .LBB3_39
# %bb.36:
	lw	a6, 28(a3)
	snez	a6, a6
	sllw	a5, a5, a6
	blt	a4, a5, .LBB3_38
# %bb.37:
	mv	a4, a5
.LBB3_38:
	sw	a4, 0(a0)
	lui	a5, %hi(listXsize)
	sw	a4, %lo(listXsize)(a5)
.LBB3_39:
	lw	a4, 48(a1)
	beqz	a4, .LBB3_43
# %bb.40:
	lw	a3, 28(a3)
	snez	a3, a3
	sllw	a3, a4, a3
	blt	a2, a3, .LBB3_42
# %bb.41:
	mv	a2, a3
.LBB3_42:
	sw	a2, 4(a0)
	sw	a2, 4(s4)
.LBB3_43:
	lw	a2, 908(a0)
	beqz	a2, .LBB3_48
# %bb.44:
	lw	a2, 1944(a1)
	beqz	a2, .LBB3_48
# %bb.45:
	addi	a2, a1, 2047
	lw	a2, 933(a2)
	beqz	a2, .LBB3_48
# %bb.46:
	lui	a2, %hi(active_sps)
	ld	a2, %lo(active_sps)(a2)
	lui	a3, %hi(dpb+32)
	lw	a3, %lo(dpb+32)(a3)
	lw	a2, 1132(a2)
	bne	a3, a2, .LBB3_48
# %bb.47:
	lw	a0, 876(a0)
	call	poc_based_ref_management
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
.LBB3_48:
	lw	a0, 1232(a1)
	lui	s5, %hi(listX)
	addi	s5, s5, %lo(listX)
	beqz	a0, .LBB3_61
# %bb.49:
	lui	a0, %hi(listXsize)
	lw	a3, %lo(listXsize)(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a2, 22
	addiw	a2, a2, -704
	add	a2, a0, a2
	blez	a3, .LBB3_55
# %bb.50:
	lui	a4, %hi(listX)
	ld	a4, %lo(listX)(a4)
	lw	a5, 1180(a2)
	li	a6, 0
	j	.LBB3_52
.LBB3_51:                               #   in Loop: Header=BB3_52 Depth=1
	addi	a3, a3, -1
	addiw	a6, a6, 1
	addi	a4, a4, 8
	beqz	a3, .LBB3_55
.LBB3_52:                               # =>This Inner Loop Header: Depth=1
	ld	a7, 0(a4)
	lw	a7, 4(a7)
	bge	a7, a5, .LBB3_51
# %bb.53:                               #   in Loop: Header=BB3_52 Depth=1
	lw	a7, 872(a2)
	bge	a5, a7, .LBB3_51
# %bb.54:
	seqz	a3, a6
	add	a3, a6, a3
	sw	a3, 0(a2)
	lui	a4, %hi(listXsize)
	sw	a3, %lo(listXsize)(a4)
.LBB3_55:
	lw	a3, 4(s4)
	blez	a3, .LBB3_62
# %bb.56:
	ld	a4, 8(s5)
	lw	a5, 1180(a2)
	li	a6, 0
	j	.LBB3_58
.LBB3_57:                               #   in Loop: Header=BB3_58 Depth=1
	addi	a3, a3, -1
	addiw	a6, a6, 1
	addi	a4, a4, 8
	beqz	a3, .LBB3_62
.LBB3_58:                               # =>This Inner Loop Header: Depth=1
	ld	a7, 0(a4)
	lw	a7, 4(a7)
	bge	a7, a5, .LBB3_57
# %bb.59:                               #   in Loop: Header=BB3_58 Depth=1
	lw	a7, 872(a2)
	bge	a5, a7, .LBB3_57
# %bb.60:
	seqz	a3, a6
	add	a3, a6, a3
	sw	a3, 4(a2)
	sw	a3, 4(s4)
	j	.LBB3_62
.LBB3_61:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB3_62:
	lui	a2, 8
	add	a2, a0, a2
	ld	a2, -1200(a2)
	lw	a3, 24(a0)
	sw	zero, 56(a2)
	sw	zero, 88(a2)
	beqz	a3, .LBB3_65
.LBB3_63:
	lw	a1, 28(a0)
	beqz	a1, .LBB3_82
# %bb.64:
	lw	a0, 24(a0)
	li	a1, 2
	bne	a0, a1, .LBB3_83
	j	.LBB3_95
.LBB3_65:
	addi	a1, a1, 2047
	lw	a1, 929(a1)
	beqz	a1, .LBB3_63
# %bb.66:
	mv	a0, s2
	call	alloc_ref_pic_list_reordering_buffer
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a4, 24(a0)
	lui	a1, 22
	addiw	a2, a1, -704
	li	a3, 2
	add	a2, a0, a2
	beq	a4, a3, .LBB3_77
# %bb.67:
	li	a1, 4
	beq	a4, a1, .LBB3_77
# %bb.68:
	lw	a1, 0(a2)
	bltz	a1, .LBB3_72
# %bb.69:
	ld	a4, 64(s2)
	ld	a5, 72(s2)
	ld	a6, 80(s2)
	li	a7, -1
	li	t0, 3
.LBB3_70:                               # =>This Inner Loop Header: Depth=1
	sw	t0, 0(a4)
	sw	zero, 0(a5)
	sw	zero, 0(a6)
	lw	a1, 0(a2)
	addi	a7, a7, 1
	addi	a6, a6, 4
	addi	a5, a5, 4
	addi	a4, a4, 4
	blt	a7, a1, .LBB3_70
# %bb.71:
	lw	a4, 24(a0)
.LBB3_72:
	li	a5, 1
	bne	a4, a5, .LBB3_77
# %bb.73:
	lw	a4, 4(a2)
	bltz	a4, .LBB3_80
# %bb.74:
	ld	a1, 96(s2)
	ld	a4, 104(s2)
	ld	a5, 112(s2)
	li	a6, -1
	li	a7, 3
.LBB3_75:                               # =>This Inner Loop Header: Depth=1
	sw	a7, 0(a1)
	sw	zero, 0(a4)
	sw	zero, 0(a5)
	lw	t0, 4(a2)
	addi	a6, a6, 1
	addi	a5, a5, 4
	addi	a4, a4, 4
	addi	a1, a1, 4
	blt	a6, t0, .LBB3_75
# %bb.76:
	lw	a4, 24(a0)
.LBB3_77:
	beq	a4, a3, .LBB3_63
# %bb.78:
	li	a1, 4
	beq	a4, a1, .LBB3_63
# %bb.79:
	lw	a1, 0(a2)
.LBB3_80:
	lui	s3, %hi(listX)
	ld	a0, %lo(listX)(s3)
	ld	a2, 64(s2)
	ld	a3, 72(s2)
	li	a5, 0
	li	a6, 0
	call	poc_ref_pic_reorder
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	ld	a0, %lo(listX)(s3)
	lui	s6, 22
	add	a1, a1, s6
	lw	a2, -704(a1)
	ld	a3, 64(s2)
	ld	a4, 72(s2)
	ld	a5, 80(s2)
	addiw	a2, a2, -1
	lui	s3, %hi(listXsize)
	addi	s3, s3, %lo(listXsize)
	mv	a1, s3
	call	reorder_ref_pic_list
	ld	a0, %lo(img)(s0)
	lw	a1, 24(a0)
	li	a2, 1
	bne	a1, a2, .LBB3_63
# %bb.81:
	add	a0, a0, s6
	lw	a1, -700(a0)
	ld	a0, 8(s5)
	ld	a2, 96(s2)
	ld	a3, 104(s2)
	li	a6, 1
	li	a5, 0
	call	poc_ref_pic_reorder
	ld	a1, %lo(img)(s0)
	ld	a0, 8(s5)
	add	a1, a1, s6
	lw	a2, -700(a1)
	ld	a3, 96(s2)
	ld	a4, 104(s2)
	ld	a5, 112(s2)
	addiw	a2, a2, -1
	addi	a1, s3, 4
	call	reorder_ref_pic_list
	ld	a0, %lo(img)(s0)
	j	.LBB3_63
.LBB3_82:
	call	init_mbaff_lists
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 2
	beq	a0, a1, .LBB3_95
.LBB3_83:
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a3, 192(a1)
	li	a2, 1
	bne	a3, a2, .LBB3_90
# %bb.84:
	li	a1, 3
	beq	a0, a1, .LBB3_86
# %bb.85:
	bnez	a0, .LBB3_92
.LBB3_86:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 64(a0)
	beqz	a1, .LBB3_93
# %bb.87:
	lw	a0, 1916(a0)
	beqz	a0, .LBB3_93
# %bb.88:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, %hi(enc_frame_picture2)
	ld	a1, %lo(enc_frame_picture2)(a1)
	beq	a0, a1, .LBB3_93
# %bb.89:
	li	a0, 1
	j	.LBB3_94
.LBB3_90:
	bne	a0, a2, .LBB3_95
# %bb.91:
	lw	a0, 196(a1)
	beqz	a0, .LBB3_95
.LBB3_92:
	call	estimate_weighting_factor_B_slice
	j	.LBB3_95
.LBB3_93:
	li	a0, 0
.LBB3_94:
	call	estimate_weighting_factor_P_slice
.LBB3_95:
	lui	a0, %hi(listXsize)
	lw	a4, %lo(listXsize)(a0)
	lui	a0, 1
	addiw	a0, a0, -904
	blez	a4, .LBB3_98
# %bb.96:
	lui	a1, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a1)
	lui	a1, %hi(listX)
	ld	a1, %lo(listX)(a1)
	addi	a2, a5, 24
	addi	a3, a5, 2047
	addi	a3, a3, 1145
	slli	a4, a4, 3
	add	a5, a5, a0
	add	a4, a5, a4
.LBB3_97:                               # =>This Inner Loop Header: Depth=1
	ld	a5, 0(a1)
	lw	a6, 4(a5)
	lw	a7, 0(a5)
	slliw	a6, a6, 1
	addi	a7, a7, -2
	seqz	a7, a7
	lw	t0, 16(a5)
	or	a6, a6, a7
	sd	a6, 0(a2)
	lw	a6, 8(a5)
	slliw	a7, t0, 1
	lw	a5, 12(a5)
	sd	a7, -1584(a3)
	slliw	a6, a6, 1
	sd	a6, 0(a3)
	slliw	a5, a5, 1
	addi	a5, a5, 1
	sd	a5, 1584(a3)
	addi	a3, a3, 8
	addi	a2, a2, 8
	addi	a1, a1, 8
	bne	a3, a4, .LBB3_97
.LBB3_98:
	lw	a4, 4(s4)
	blez	a4, .LBB3_101
# %bb.99:
	lui	a1, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a1)
	ld	a1, 8(s5)
	addi	a2, a5, 288
	addi	a3, a5, 2047
	addi	a3, a3, 1409
	slli	a4, a4, 3
	add	a0, a0, a4
	add	a0, a0, a5
	addi	a0, a0, 264
.LBB3_100:                              # =>This Inner Loop Header: Depth=1
	ld	a4, 0(a1)
	lw	a5, 4(a4)
	lw	a6, 0(a4)
	slliw	a5, a5, 1
	addi	a6, a6, -2
	seqz	a6, a6
	lw	a7, 16(a4)
	or	a5, a5, a6
	sd	a5, 0(a2)
	lw	a5, 8(a4)
	slliw	a6, a7, 1
	lw	a4, 12(a4)
	sd	a6, -1584(a3)
	slliw	a5, a5, 1
	sd	a5, 0(a3)
	slliw	a4, a4, 1
	addi	a4, a4, 1
	sd	a4, 1584(a3)
	addi	a3, a3, 8
	addi	a2, a2, 8
	addi	a1, a1, 8
	bne	a3, a0, .LBB3_100
.LBB3_101:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a1, 1148(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	bnez	a1, .LBB3_103
# %bb.102:
	lw	a1, 28(a0)
	beqz	a1, .LBB3_161
.LBB3_103:
	lw	a1, 24(a0)
	li	a2, 1
	bne	a1, a2, .LBB3_105
# %bb.104:
	lui	a0, %hi(Co_located)
	ld	a0, %lo(Co_located)(a0)
	lui	a1, %hi(listX)
	addi	a1, a1, %lo(listX)
	call	compute_colocated
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
.LBB3_105:
	li	a2, 2
	beq	a1, a2, .LBB3_108
# %bb.106:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1917(a1)
	li	a2, 3
	bne	a1, a2, .LBB3_108
# %bb.107:
	lui	a0, %hi(EPZSCo_located)
	ld	a0, %lo(EPZSCo_located)(a0)
	lui	a1, %hi(listX)
	addi	a1, a1, %lo(listX)
	call	EPZSSliceInit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB3_108:
	lui	a1, 8
	add	a0, a0, a1
	ld	a0, -1200(a0)
	ld	a0, 24(a0)
	ld	a0, 0(a0)
	lw	a0, 0(a0)
	lui	a1, %hi(Bytes_After_Header)
	sw	a0, %lo(Bytes_After_Header)(a1)
	call	SetLagrangianMultipliers
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 2047
	lw	a1, 937(a1)
	li	a2, 1
	bne	a1, a2, .LBB3_110
# %bb.109:
	call	SetCtxModelNumber
	ld	a0, %lo(input)(s0)
.LBB3_110:
	addi	a0, a0, 2047
	lw	a1, 1089(a0)
	beqz	a1, .LBB3_113
# %bb.111:
	lw	a1, 1533(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	beqz	a1, .LBB3_114
# %bb.112:
	lw	a1, 24(a0)
	seqz	a2, a1
	addi	a1, a1, -3
	seqz	a1, a1
	or	a1, a2, a1
	j	.LBB3_114
.LBB3_113:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB3_114:
	lui	s0, 22
	add	a0, a0, s0
	sh	a1, 472(a0)
	call	start_slice
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	addiw	a2, s0, 236
	add	a2, a1, a2
	lw	a3, 0(a2)
	lw	a4, 96(a2)
	lw	a5, 84(a2)
	add	a3, a3, a0
	sw	a3, 0(a2)
	bge	a4, a5, .LBB3_116
# %bb.115:
	lw	a3, 8(a2)
	add	a3, a3, a0
	sw	a3, 8(a2)
.LBB3_116:
	lui	a2, %hi(stats)
	ld	a2, %lo(stats)(a2)
	lw	a3, 24(a2)
	lw	a4, 24(a1)
	add	a3, a3, a0
	sw	a3, 24(a2)
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a3, 1376(a2)
	add	a0, a3, a0
	sw	a0, 1376(a2)
	lw	a0, 20(sp)
	beqz	a0, .LBB3_118
# %bb.117:
	li	s2, 0
	j	.LBB3_160
.LBB3_118:                              # %.preheader
	sd	s9, 0(sp)                       # 8-byte Folded Spill
	li	s2, 0
	lui	a0, %hi(.LCPI3_0)
	fld	fs0, %lo(.LCPI3_0)(a0)
	lui	s6, %hi(img)
	lui	s7, 22
	addiw	s8, s7, -696
	lui	s9, %hi(rdopt)
	li	s11, 1
	li	s5, -1
	lui	s4, %hi(input)
	li	s3, 2
	addiw	s0, s7, -704
	slli	a0, s11, 32
	addi	a0, a0, 1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	addiw	s10, s7, -692
	j	.LBB3_121
.LBB3_119:                              #   in Loop: Header=BB3_121 Depth=1
	sd	zero, 8(a0)
	mv	a0, s1
	call	FmoMB2SliceGroup
	call	FmoGetLastCodedMBOfSliceGroup
	beq	s1, a0, .LBB3_158
.LBB3_120:                              #   in Loop: Header=BB3_121 Depth=1
	lw	a0, 20(sp)
	bnez	a0, .LBB3_159
.LBB3_121:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s6)
	add	a1, a0, s7
	lw	a1, 100(a1)
	beqz	a1, .LBB3_126
# %bb.122:                              #   in Loop: Header=BB3_121 Depth=1
	ld	a1, %lo(input)(s4)
	lui	a2, 1
	add	a1, a1, a2
	lw	a1, 168(a1)
	beqz	a1, .LBB3_126
# %bb.123:                              #   in Loop: Header=BB3_121 Depth=1
	lw	a0, 12(a0)
	remw	a0, a0, a1
	bnez	a0, .LBB3_126
# %bb.124:                              #   in Loop: Header=BB3_121 Depth=1
	call	CalculateOffsetParam
	ld	a0, %lo(input)(s4)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	beqz	a0, .LBB3_126
# %bb.125:                              #   in Loop: Header=BB3_121 Depth=1
	call	CalculateOffset8Param
.LBB3_126:                              #   in Loop: Header=BB3_121 Depth=1
	ld	a0, %lo(img)(s6)
	add	a3, a0, s8
	lw	a1, 804(a3)
	beqz	a1, .LBB3_133
# %bb.127:                              #   in Loop: Header=BB3_121 Depth=1
	ld	a1, %lo(input)(s4)
	addi	a2, a1, 2047
	lw	a2, 1509(a2)
	addiw	s5, s1, 1
	bne	a2, s3, .LBB3_129
# %bb.128:                              #   in Loop: Header=BB3_121 Depth=1
	sw	zero, 16(sp)
	sd	zero, 0(a3)
	sd	zero, 1032(a3)
	mv	a0, s1
	li	a1, 0
	call	start_macroblock
	lui	a0, %hi(rddata_top_frame_mb)
	addi	a0, a0, %lo(rddata_top_frame_mb)
	sd	a0, %lo(rdopt)(s9)
	call	encode_one_macroblock
	ld	a0, %lo(rdopt)(s9)
	ld	a1, %lo(img)(s6)
	fld	fs0, 0(a0)
	add	a1, a1, s8
	sw	s11, 1036(a1)
	sw	zero, 0(a1)
	mv	a0, s5
	li	a1, 0
	call	start_macroblock
	lui	a0, %hi(rddata_bot_frame_mb)
	addi	a0, a0, %lo(rddata_bot_frame_mb)
	sd	a0, %lo(rdopt)(s9)
	call	encode_one_macroblock
	ld	a0, %lo(rdopt)(s9)
	ld	a1, %lo(input)(s4)
	fld	fa5, 0(a0)
	addi	a0, a1, 2047
	lw	a2, 1509(a0)
	ld	a0, %lo(img)(s6)
	fadd.d	fs0, fs0, fa5
.LBB3_129:                              #   in Loop: Header=BB3_121 Depth=1
	addiw	a3, a2, -1
	add	a2, a0, s0
	bgeu	a3, s3, .LBB3_136
# %bb.130:                              #   in Loop: Header=BB3_121 Depth=1
	lw	a0, 784(a2)
	sw	zero, 1044(a2)
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	sd	a3, 8(a2)
	lw	a3, 36(a1)
	slli	a0, a0, 1
	lw	a4, 0(a2)
	sw	a0, 784(a2)
	slli	a3, a3, 1
	sw	a3, 36(a1)
	slli	a4, a4, 1
	addi	a4, a4, 1
	sw	a4, 0(a2)
	li	a1, 1
	mv	a0, s1
	call	start_macroblock
	lui	a0, %hi(rddata_top_field_mb)
	addi	a0, a0, %lo(rddata_top_field_mb)
	sd	a0, %lo(rdopt)(s9)
	call	encode_one_macroblock
	ld	a0, %lo(rdopt)(s9)
	ld	a1, %lo(img)(s6)
	fld	fs1, 0(a0)
	add	a1, a1, s10
	sw	s11, 1032(a1)
	sw	zero, 0(a1)
	li	a1, 1
	mv	a0, s5
	call	start_macroblock
	lui	a0, %hi(rddata_bot_field_mb)
	addi	a0, a0, %lo(rddata_bot_field_mb)
	sd	a0, %lo(rdopt)(s9)
	call	encode_one_macroblock
	ld	a2, %lo(input)(s4)
	ld	a1, %lo(rdopt)(s9)
	ld	a0, %lo(img)(s6)
	addi	a3, a2, 2047
	lw	a4, 1509(a3)
	fld	fa5, 0(a1)
	add	a3, a0, s0
	sw	zero, 1048(a3)
	bne	a4, s3, .LBB3_137
# %bb.131:                              #   in Loop: Header=BB3_121 Depth=1
	fadd.d	fa5, fs1, fa5
	flt.d	a1, fs0, fa5
	li	s5, -1
	beqz	a1, .LBB3_138
# %bb.132:                              #   in Loop: Header=BB3_121 Depth=1
	lw	a1, 784(a3)
	sw	zero, 8(a3)
	srli	a1, a1, 1
	sw	a1, 784(a3)
	lw	a4, 36(a2)
	lui	a1, %hi(MBPairIsField)
	sw	zero, %lo(MBPairIsField)(a1)
	lw	a5, 0(a3)
	li	a1, 0
	srli	a4, a4, 1
	sw	a4, 36(a2)
	addi	a5, a5, -1
	sraiw	a2, a5, 1
	sw	a2, 0(a3)
	sw	s11, 1048(a3)
	j	.LBB3_139
.LBB3_133:                              #   in Loop: Header=BB3_121 Depth=1
	sw	zero, 16(sp)
	lui	a0, %hi(rddata_top_frame_mb)
	addi	a0, a0, %lo(rddata_top_frame_mb)
	sd	a0, %lo(rdopt)(s9)
	mv	a0, s1
	call	start_macroblock
	call	encode_one_macroblock
	li	a0, 1
	call	write_one_macroblock
	addi	a0, sp, 20
	addi	a1, sp, 16
	call	terminate_macroblock
	lw	a0, 16(sp)
	beqz	a0, .LBB3_150
# %bb.134:                              #   in Loop: Header=BB3_121 Depth=1
	ld	a0, %lo(img)(s6)
	lw	a0, 12(a0)
	call	FmoGetPreviousMBNr
	ld	a1, %lo(img)(s6)
	sw	a0, 12(a1)
	bne	a0, s5, .LBB3_120
# %bb.135:                              #   in Loop: Header=BB3_121 Depth=1
	li	a2, 84
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	mv	a0, s3
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	call	memcpy
	li	a1, 300
	mv	a0, s3
	li	s3, 2
	call	error
	j	.LBB3_120
.LBB3_136:                              #   in Loop: Header=BB3_121 Depth=1
	sw	zero, 1048(a2)
.LBB3_137:                              #   in Loop: Header=BB3_121 Depth=1
	li	s5, -1
.LBB3_138:                              #   in Loop: Header=BB3_121 Depth=1
	add	a2, a0, s7
	li	a1, 1
	sw	a1, -696(a2)
	lui	a2, %hi(MBPairIsField)
	sw	a1, %lo(MBPairIsField)(a2)
.LBB3_139:                              #   in Loop: Header=BB3_121 Depth=1
	add	a0, a0, s10
	sd	s11, 1028(a0)
	sw	a1, 0(a0)
	mv	a0, s1
	call	start_macroblock
	ld	a0, %lo(img)(s6)
	add	a0, a0, s7
	lw	a1, -696(a0)
	lui	a0, %hi(rddata_top_frame_mb)
	addi	a0, a0, %lo(rddata_top_frame_mb)
	beqz	a1, .LBB3_141
# %bb.140:                              #   in Loop: Header=BB3_121 Depth=1
	lui	a0, %hi(rddata_top_field_mb)
	addi	a0, a0, %lo(rddata_top_field_mb)
.LBB3_141:                              #   in Loop: Header=BB3_121 Depth=1
	sd	a0, %lo(rdopt)(s9)
	li	a0, 0
	call	copy_rdopt_data
	li	a0, 1
	call	write_one_macroblock
	addi	a0, sp, 20
	addi	a1, sp, 16
	call	terminate_macroblock
	lw	a0, 16(sp)
	beqz	a0, .LBB3_143
# %bb.142:                              #   in Loop: Header=BB3_121 Depth=1
	ld	a0, %lo(img)(s6)
	lw	a0, 12(a0)
	call	FmoGetPreviousMBNr
	ld	a1, %lo(img)(s6)
	sw	a0, 12(a1)
	bne	a0, s5, .LBB3_156
	j	.LBB3_149
.LBB3_143:                              #   in Loop: Header=BB3_121 Depth=1
	mv	a0, s1
	call	FmoGetNextMBNr
	mv	s1, a0
	bne	a0, s5, .LBB3_145
# %bb.144:                              #   in Loop: Header=BB3_121 Depth=1
	sw	s11, 20(sp)
.LBB3_145:                              #   in Loop: Header=BB3_121 Depth=1
	call	proceed2nextMacroblock
	ld	a0, %lo(img)(s6)
	add	a0, a0, s8
	lw	a1, 0(a0)
	sw	s11, 1036(a0)
	sw	zero, 4(a0)
	mv	a0, s1
	call	start_macroblock
	ld	a0, %lo(img)(s6)
	add	a0, a0, s7
	lw	a1, -696(a0)
	lui	a0, %hi(rddata_bot_frame_mb)
	addi	a0, a0, %lo(rddata_bot_frame_mb)
	beqz	a1, .LBB3_147
# %bb.146:                              #   in Loop: Header=BB3_121 Depth=1
	lui	a0, %hi(rddata_bot_field_mb)
	addi	a0, a0, %lo(rddata_bot_field_mb)
.LBB3_147:                              #   in Loop: Header=BB3_121 Depth=1
	sd	a0, %lo(rdopt)(s9)
	li	a0, 1
	call	copy_rdopt_data
	li	a0, 0
	call	write_one_macroblock
	addi	a0, sp, 20
	addi	a1, sp, 16
	call	terminate_macroblock
	lw	a0, 16(sp)
	beqz	a0, .LBB3_153
# %bb.148:                              #   in Loop: Header=BB3_121 Depth=1
	ld	a0, %lo(img)(s6)
	lw	a0, 12(a0)
	addiw	s2, s2, 1
	call	FmoGetPreviousMBNr
	ld	a1, %lo(img)(s6)
	sw	a0, 12(a1)
	call	FmoGetPreviousMBNr
	ld	a1, %lo(img)(s6)
	sw	a0, 12(a1)
	bne	a0, s5, .LBB3_156
.LBB3_149:                              #   in Loop: Header=BB3_121 Depth=1
	li	a2, 84
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	mv	a0, s3
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	call	memcpy
	li	a1, 300
	mv	a0, s3
	li	s3, 2
	call	error
	j	.LBB3_156
.LBB3_150:                              #   in Loop: Header=BB3_121 Depth=1
	mv	a0, s1
	call	FmoGetNextMBNr
	mv	s1, a0
	bne	a0, s5, .LBB3_152
# %bb.151:                              #   in Loop: Header=BB3_121 Depth=1
	sw	s11, 20(sp)
.LBB3_152:                              #   in Loop: Header=BB3_121 Depth=1
	addiw	s2, s2, 1
	call	proceed2nextMacroblock
	j	.LBB3_120
.LBB3_153:                              #   in Loop: Header=BB3_121 Depth=1
	mv	a0, s1
	call	FmoGetNextMBNr
	mv	s1, a0
	bne	a0, s5, .LBB3_155
# %bb.154:                              #   in Loop: Header=BB3_121 Depth=1
	sw	s11, 20(sp)
.LBB3_155:                              #   in Loop: Header=BB3_121 Depth=1
	addiw	s2, s2, 2
	call	proceed2nextMacroblock
.LBB3_156:                              #   in Loop: Header=BB3_121 Depth=1
	lui	a0, %hi(MBPairIsField)
	lw	a1, %lo(MBPairIsField)(a0)
	ld	a0, %lo(img)(s6)
	add	a0, a0, s0
	beqz	a1, .LBB3_119
# %bb.157:                              #   in Loop: Header=BB3_121 Depth=1
	ld	a1, %lo(input)(s4)
	lw	a2, 784(a0)
	lw	a3, 36(a1)
	srli	a2, a2, 1
	lw	a4, 0(a0)
	sw	a2, 784(a0)
	srli	a3, a3, 1
	sw	a3, 36(a1)
	addi	a4, a4, -1
	sraiw	a1, a4, 1
	sw	a1, 0(a0)
	j	.LBB3_119
.LBB3_158:
	li	a0, 1
	sw	a0, 20(sp)
.LBB3_159:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	ld	s9, 0(sp)                       # 8-byte Folded Reload
.LBB3_160:
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 192(a0)
	addw	a1, s2, s9
	slt	a0, a1, a0
	xori	a0, a0, 1
	call	terminate_slice
	mv	a0, s2
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
	fld	fs0, 32(sp)                     # 8-byte Folded Reload
	fld	fs1, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB3_161:
	lui	a1, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a1)
	addi	a1, a2, 2047
	addi	a1, a1, 1673
	addi	a2, a2, 552
	li	a3, 2
	li	a4, 6
	j	.LBB3_163
.LBB3_162:                              #   in Loop: Header=BB3_163 Depth=1
	addi	a3, a3, 1
	addi	a1, a1, 264
	addi	a2, a2, 264
	beq	a3, a4, .LBB3_103
.LBB3_163:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_165 Depth 2
	slli	a5, a3, 2
	add	a5, s4, a5
	lw	a6, 0(a5)
	blez	a6, .LBB3_162
# %bb.164:                              #   in Loop: Header=BB3_163 Depth=1
	slli	a5, a3, 3
	add	a5, s5, a5
	ld	a5, 0(a5)
	slli	a6, a6, 3
	add	a6, a5, a6
	mv	a7, a2
	mv	t0, a1
.LBB3_165:                              #   Parent Loop BB3_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t1, 0(a5)
	lw	t2, 4(t1)
	lw	t3, 0(t1)
	slliw	t2, t2, 1
	addi	t3, t3, -2
	seqz	t3, t3
	lw	t4, 16(t1)
	or	t2, t2, t3
	sd	t2, 0(a7)
	lw	t2, 8(t1)
	slliw	t3, t4, 1
	lw	t1, 12(t1)
	sd	t3, -1584(t0)
	slliw	t2, t2, 1
	sd	t2, 0(t0)
	slliw	t1, t1, 1
	addi	t1, t1, 1
	sd	t1, 1584(t0)
	addi	a5, a5, 8
	addi	t0, t0, 8
	addi	a7, a7, 8
	bne	a5, a6, .LBB3_165
	j	.LBB3_162
.LBB3_166:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.init_slice)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.init_slice)
	li	a2, 574
	call	__assert_fail
.Lfunc_end3:
	.size	encode_one_slice, .Lfunc_end3-encode_one_slice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_slice_list                 # -- Begin function free_slice_list
	.p2align	2
	.type	free_slice_list,@function
free_slice_list:                        # @free_slice_list
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
	lw	a0, 0(a0)
	blez	a0, .LBB4_16
# %bb.1:
	li	s2, 0
	addi	s3, s0, 8
	lui	s4, %hi(input)
	li	s5, 1
	j	.LBB4_4
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	mv	a0, s1
	call	free
	lw	a0, 0(s0)
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	addi	s2, s2, 1
	sd	zero, 0(s6)
	bge	s2, a0, .LBB4_16
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	slli	s6, s2, 3
	add	s6, s3, s6
	ld	s1, 0(s6)
	beqz	s1, .LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	lw	a0, 16(s1)
	blez	a0, .LBB4_12
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
	li	s7, 0
	li	s8, 0
	j	.LBB4_9
.LBB4_7:                                #   in Loop: Header=BB4_9 Depth=2
	call	free
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=2
	lw	a0, 16(s1)
	addi	s8, s8, 1
	addi	s7, s7, 112
	bge	s8, a0, .LBB4_12
.LBB4_9:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s9, 24(s1)
	beqz	s9, .LBB4_8
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	add	s9, s9, s7
	ld	a0, 0(s9)
	ld	a1, 32(a0)
	beqz	a1, .LBB4_7
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=2
	mv	a0, a1
	call	free
	ld	a0, 0(s9)
	bnez	a0, .LBB4_7
	j	.LBB4_8
.LBB4_12:                               #   in Loop: Header=BB4_4 Depth=1
	ld	a0, 24(s1)
	beqz	a0, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_4 Depth=1
	call	free
.LBB4_14:                               #   in Loop: Header=BB4_4 Depth=1
	ld	a0, %lo(input)(s4)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	bne	a0, s5, .LBB4_2
# %bb.15:                               #   in Loop: Header=BB4_4 Depth=1
	ld	a0, 32(s1)
	call	delete_contexts_MotionInfo
	ld	a0, 40(s1)
	call	delete_contexts_TextureInfo
	j	.LBB4_2
.LBB4_16:
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
.Lfunc_end4:
	.size	free_slice_list, .Lfunc_end4-free_slice_list
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	modify_redundant_pic_cnt        # -- Begin function modify_redundant_pic_cnt
	.p2align	2
	.type	modify_redundant_pic_cnt,@function
modify_redundant_pic_cnt:               # @modify_redundant_pic_cnt
# %bb.0:
	lui	a1, %hi(rpc_bytes_to_go)
	lw	a1, %lo(rpc_bytes_to_go)(a1)
	lui	a2, %hi(rpc_bits_to_go)
	lw	a2, %lo(rpc_bits_to_go)(a2)
	add	a0, a0, a1
	lbu	a1, 0(a0)
	addi	a2, a2, -1
	li	a3, 1
	sllw	a2, a3, a2
	or	a1, a1, a2
	sb	a1, 0(a0)
	ret
.Lfunc_end5:
	.size	modify_redundant_pic_cnt, .Lfunc_end5-modify_redundant_pic_cnt
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	poc_ref_pic_reorder             # -- Begin function poc_ref_pic_reorder
	.p2align	2
	.type	poc_ref_pic_reorder,@function
poc_ref_pic_reorder:                    # @poc_ref_pic_reorder
# %bb.0:
	addi	sp, sp, -784
	sd	ra, 776(sp)                     # 8-byte Folded Spill
	sd	s0, 768(sp)                     # 8-byte Folded Spill
	sd	s1, 760(sp)                     # 8-byte Folded Spill
	sd	s2, 752(sp)                     # 8-byte Folded Spill
	sd	s3, 744(sp)                     # 8-byte Folded Spill
	sd	s4, 736(sp)                     # 8-byte Folded Spill
	sd	s5, 728(sp)                     # 8-byte Folded Spill
	sd	s6, 720(sp)                     # 8-byte Folded Spill
	sd	s7, 712(sp)                     # 8-byte Folded Spill
	sd	s8, 704(sp)                     # 8-byte Folded Spill
	sd	s9, 696(sp)                     # 8-byte Folded Spill
	sd	s10, 688(sp)                    # 8-byte Folded Spill
	sd	s11, 680(sp)                    # 8-byte Folded Spill
	lui	a4, %hi(img)
	ld	a5, %lo(img)(a4)
	lui	a4, 22
	add	a4, a5, a4
	lw	s0, 28(a5)
	lw	a4, 172(a4)
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	beqz	s0, .LBB6_2
# %bb.1:
	slli	a4, a4, 1
	addiw	a4, a4, 1
.LBB6_2:
	sd	a4, 8(sp)                       # 8-byte Folded Spill
	lui	t1, %hi(log2_max_frame_num_minus4)
	slli	a6, a1, 32
	beqz	a1, .LBB6_5
# %bb.3:
	srli	a3, a6, 30
	addi	a2, sp, 552
	add	a3, a2, a3
	lui	t0, 2
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	ld	t2, 0(a0)
	add	t2, t2, t0
	lw	t2, -1828(t2)
	sw	t2, 0(a2)
	addi	a2, a2, 4
	addi	a0, a0, 8
	bne	a2, a3, .LBB6_4
.LBB6_5:
	lui	a0, %hi(dpb)
	addi	a0, a0, %lo(dpb)
	lwu	t0, 32(a0)
	lw	a7, %lo(log2_max_frame_num_minus4)(t1)
	beqz	t0, .LBB6_35
# %bb.6:
	ld	t1, 8(a0)
	lui	a0, %hi(enc_picture)
	ld	t2, %lo(enc_picture)(a0)
	slli	t4, t0, 2
	addi	t3, sp, 424
	add	t4, t3, t4
	addi	t5, sp, 168
	addi	t6, sp, 40
	lui	a0, 2
	addiw	s1, a0, -1828
	li	s2, 3
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	j	.LBB6_10
.LBB6_7:                                #   in Loop: Header=BB6_10 Depth=1
	slt	a0, a0, a3
.LBB6_8:                                #   in Loop: Header=BB6_10 Depth=1
	addi	a0, a0, -1
	ori	a0, a0, 1
	sw	a0, 0(t5)
.LBB6_9:                                #   in Loop: Header=BB6_10 Depth=1
	addi	t5, t5, 4
	addi	t6, t6, 4
	addi	t3, t3, 4
	addi	t1, t1, 8
	beq	t3, t4, .LBB6_15
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ld	s3, 0(t1)
	ld	a0, 40(s3)
	add	a3, a0, s1
	lw	s4, 0(a3)
	sw	s4, 0(t3)
	lw	s3, 0(s3)
	bne	s3, s2, .LBB6_9
# %bb.11:                               #   in Loop: Header=BB6_10 Depth=1
	lw	s3, 16(a3)
	beqz	s3, .LBB6_9
# %bb.12:                               #   in Loop: Header=BB6_10 Depth=1
	lw	a3, 12(a3)
	bnez	a3, .LBB6_9
# %bb.13:                               #   in Loop: Header=BB6_10 Depth=1
	lw	a0, 4(a0)
	lw	a3, 4(t2)
	sub	s3, a0, a3
	sraiw	s4, s3, 31
	xor	s3, s3, s4
	subw	s3, s3, s4
	sw	s3, 0(t6)
	bnez	a2, .LBB6_7
# %bb.14:                               #   in Loop: Header=BB6_10 Depth=1
	slt	a0, a3, a0
	j	.LBB6_8
.LBB6_15:
	addiw	t1, t0, -1
	bnez	t1, .LBB6_36
.LBB6_16:
	beqz	a1, .LBB6_51
# %bb.17:
	lui	a0, 8
	snez	a3, s0
	addi	a2, a7, 4
	addiw	s1, a0, -1200
	addi	a3, a3, 1
	add	s8, a5, s1
	sllw	s3, a3, a2
	srli	a0, a6, 32
	srli	s0, a6, 30
	addi	a5, sp, 424
	add	t0, a5, s0
	li	a7, 1
	addi	a2, sp, 552
.LBB6_18:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(a5)
	xor	a3, a3, a4
	snez	a3, a3
	addiw	a3, a3, -1
	and	a7, a3, a7
	addi	a5, a5, 4
	addi	a2, a2, 4
	bne	a5, t0, .LBB6_18
# %bb.19:
	bnez	a7, .LBB6_51
# %bb.20:
	beqz	a1, .LBB6_48
# %bb.21:
	li	s2, 0
	addi	s3, s3, -1
	addi	s6, a1, -1
	slli	a2, s6, 32
	srli	s5, a2, 32
	slli	a0, a0, 2
	addi	s1, sp, 552
	add	s7, s1, a0
	addi	s9, sp, 428
	addi	s4, sp, 300
	addi	a2, sp, 424
	addi	s11, sp, 296
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	sd	s3, 0(sp)                       # 8-byte Folded Spill
.LBB6_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_32 Depth 2
	slli	a0, s2, 2
	add	a2, a2, a0
	lw	s10, 0(a2)
	sub	a3, s10, a4
	mv	a2, s3
	beq	s10, a4, .LBB6_24
# %bb.23:                               #   in Loop: Header=BB6_22 Depth=1
	not	a2, a3
.LBB6_24:                               #   in Loop: Header=BB6_22 Depth=1
	subw	a4, s10, a4
	blez	a4, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_22 Depth=1
	addi	a2, a3, -1
.LBB6_26:                               #   in Loop: Header=BB6_22 Depth=1
	sgtz	a4, a4
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	add	a3, a3, a0
	sw	a4, 0(a3)
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	add	a3, a3, a0
	sw	a2, 0(a3)
	add	a0, s11, a0
	sw	s10, 0(a0)
	mv	a0, s1
	mv	a3, s2
	j	.LBB6_28
.LBB6_27:                               #   in Loop: Header=BB6_28 Depth=2
	addi	a0, a0, 4
	beq	a0, s7, .LBB6_30
.LBB6_28:                               #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 0(a0)
	beq	a2, s10, .LBB6_27
# %bb.29:                               #   in Loop: Header=BB6_28 Depth=2
	addi	a3, a3, 1
	slli	a4, a3, 32
	srli	a4, a4, 30
	add	a4, s11, a4
	sw	a2, 0(a4)
	j	.LBB6_27
.LBB6_30:                               #   in Loop: Header=BB6_22 Depth=1
	beq	s2, s5, .LBB6_47
# %bb.31:                               #   in Loop: Header=BB6_22 Depth=1
	mv	s3, a1
	addi	s2, s2, 1
	mv	a0, s6
	mv	a1, s4
	mv	a2, s9
.LBB6_32:                               #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 0(a1)
	lw	a4, 0(a2)
	bne	a3, a4, .LBB6_34
# %bb.33:                               #   in Loop: Header=BB6_32 Depth=2
	addi	a2, a2, 4
	addiw	a0, a0, -1
	addi	a1, a1, 4
	bnez	a0, .LBB6_32
	j	.LBB6_46
.LBB6_34:                               #   in Loop: Header=BB6_22 Depth=1
	addi	a0, sp, 552
	addi	a1, sp, 296
	mv	a2, s0
	call	memcpy
	addi	s1, s1, 4
	addi	s9, s9, 4
	addi	s4, s4, 4
	addi	s6, s6, -1
	mv	a4, s10
	mv	a1, s3
	ld	s3, 0(sp)                       # 8-byte Folded Reload
	addi	a2, sp, 424
	j	.LBB6_22
.LBB6_35:
	li	t1, -1
.LBB6_36:
	li	t6, 0
	slli	a0, t1, 32
	srli	t2, a0, 32
	addi	t3, sp, 172
	addi	t4, sp, 428
	addi	t5, sp, 44
	addi	s1, sp, 40
	addi	s2, sp, 168
	addi	s3, sp, 424
	j	.LBB6_38
.LBB6_37:                               #   in Loop: Header=BB6_38 Depth=1
	addi	t1, t1, -1
	addi	t3, t3, 4
	addi	t4, t4, 4
	addi	t5, t5, 4
	beq	t6, t2, .LBB6_16
.LBB6_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
	mv	a0, t6
	addi	t6, t6, 1
	bgeu	t6, t0, .LBB6_37
# %bb.39:                               #   in Loop: Header=BB6_38 Depth=1
	slli	a0, a0, 2
	add	s4, s1, a0
	add	s5, s2, a0
	add	s6, s3, a0
	mv	s7, t5
	mv	s8, t4
	mv	s9, t3
	mv	s10, t1
	j	.LBB6_43
.LBB6_40:                               #   in Loop: Header=BB6_43 Depth=2
	lw	a0, 0(s5)
	lw	a3, 0(s9)
.LBB6_41:                               #   in Loop: Header=BB6_43 Depth=2
	lw	a2, 0(s8)
	lw	a4, 0(s6)
	sw	ra, 0(s4)
	sw	s11, 0(s7)
	sw	a2, 0(s6)
	sw	a4, 0(s8)
	sw	a3, 0(s5)
	sw	a0, 0(s9)
.LBB6_42:                               #   in Loop: Header=BB6_43 Depth=2
	addiw	s10, s10, -1
	addi	s9, s9, 4
	addi	s8, s8, 4
	addi	s7, s7, 4
	beqz	s10, .LBB6_37
.LBB6_43:                               #   Parent Loop BB6_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s11, 0(s4)
	lw	ra, 0(s7)
	blt	ra, s11, .LBB6_40
# %bb.44:                               #   in Loop: Header=BB6_43 Depth=2
	bne	s11, ra, .LBB6_42
# %bb.45:                               #   in Loop: Header=BB6_43 Depth=2
	lw	a3, 0(s9)
	lw	a0, 0(s5)
	blt	a0, a3, .LBB6_41
	j	.LBB6_42
.LBB6_46:
	mv	a1, s2
.LBB6_47:
	slli	a1, a1, 32
	srli	a1, a1, 30
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
.LBB6_48:
	ld	a0, 0(s8)
	li	a2, 3
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a1)
	li	a1, 56
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	beqz	a2, .LBB6_50
# %bb.49:
	li	a1, 88
.LBB6_50:
	add	a0, a0, a1
	li	a1, 1
	sw	a1, 0(a0)
.LBB6_51:
	ld	ra, 776(sp)                     # 8-byte Folded Reload
	ld	s0, 768(sp)                     # 8-byte Folded Reload
	ld	s1, 760(sp)                     # 8-byte Folded Reload
	ld	s2, 752(sp)                     # 8-byte Folded Reload
	ld	s3, 744(sp)                     # 8-byte Folded Reload
	ld	s4, 736(sp)                     # 8-byte Folded Reload
	ld	s5, 728(sp)                     # 8-byte Folded Reload
	ld	s6, 720(sp)                     # 8-byte Folded Reload
	ld	s7, 712(sp)                     # 8-byte Folded Reload
	ld	s8, 704(sp)                     # 8-byte Folded Reload
	ld	s9, 696(sp)                     # 8-byte Folded Reload
	ld	s10, 688(sp)                    # 8-byte Folded Reload
	ld	s11, 680(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 784
	ret
.Lfunc_end6:
	.size	poc_ref_pic_reorder, .Lfunc_end6-poc_ref_pic_reorder
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function SetLagrangianMultipliers
.LCPI7_0:
	.quad	0x3fa999999999999a              # double 0.050000000000000003
.LCPI7_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI7_2:
	.quad	0x3ff0000000000000              # double 1
.LCPI7_3:
	.quad	0xc028000000000000              # double -12
.LCPI7_4:
	.quad	0x4008000000000000              # double 3
.LCPI7_6:
	.quad	0x40f0000000000000              # double 65536
.LCPI7_7:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI7_8:
	.quad	0x4010000000000000              # double 4
.LCPI7_9:
	.quad	0x4028000000000000              # double 12
.LCPI7_10:
	.quad	0x3ff6666666666666              # double 1.3999999999999999
.LCPI7_11:
	.quad	0x3fe5c28f5c28f5c3              # double 0.68000000000000005
.LCPI7_12:
	.quad	0x4018000000000000              # double 6
.LCPI7_13:
	.quad	0x4000000000000000              # double 2
.LCPI7_15:
	.quad	0x3fe999999999999a              # double 0.80000000000000004
.LCPI7_16:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI7_17:
	.quad	0x3fd999999999999a              # double 0.40000000000000002
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI7_5:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3fee666666666666              # double 0.94999999999999996
.LCPI7_14:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	SetLagrangianMultipliers
	.p2align	2
	.type	SetLagrangianMultipliers,@function
SetLagrangianMultipliers:               # @SetLagrangianMultipliers
# %bb.0:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 20(a0)
	lui	a2, %hi(.LCPI7_0)
	fld	fa5, %lo(.LCPI7_0)(a2)
	fcvt.d.w	fa4, a1
	fmul.d	fa4, fa4, fa5
	fmv.d.x	fa5, zero
	flt.d	a1, fa4, fa5
	bnez	a1, .LBB7_3
# %bb.1:
	lui	a1, %hi(.LCPI7_1)
	fld	fa5, %lo(.LCPI7_1)(a1)
	flt.d	a1, fa5, fa4
	bnez	a1, .LBB7_3
# %bb.2:
	fmv.d	fa5, fa4
.LBB7_3:
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
	fsd	fs3, 136(sp)                    # 8-byte Folded Spill
	fsd	fs4, 128(sp)                    # 8-byte Folded Spill
	fsd	fs5, 120(sp)                    # 8-byte Folded Spill
	fsd	fs6, 112(sp)                    # 8-byte Folded Spill
	fsd	fs7, 104(sp)                    # 8-byte Folded Spill
	fsd	fs8, 96(sp)                     # 8-byte Folded Spill
	fsd	fs9, 88(sp)                     # 8-byte Folded Spill
	fsd	fs10, 80(sp)                    # 8-byte Folded Spill
	fsd	fs11, 72(sp)                    # 8-byte Folded Spill
	addi	a0, a0, 2047
	lw	a1, 1089(a0)
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	li	s0, -1
	srli	s0, s0, 32
	lui	s1, 22
	beqz	a1, .LBB7_47
# %bb.4:                                # %.preheader
	lui	a1, %hi(.LCPI7_2)
	fld	fs1, %lo(.LCPI7_2)(a1)
	li	s6, 0
	fsub.d	fs2, fs1, fa5
	li	s3, 1
	lui	a1, %hi(.LCPI7_3)
	fld	fs3, %lo(.LCPI7_3)(a1)
	lui	s7, %hi(input)
	lui	a1, %hi(.LCPI7_4)
	fld	fs4, %lo(.LCPI7_4)(a1)
	lui	a1, %hi(.LCPI7_11)
	fld	fs5, %lo(.LCPI7_11)(a1)
	lui	a1, %hi(.LCPI7_9)
	fld	fa5, %lo(.LCPI7_9)(a1)
	fsd	fa5, 32(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(.LCPI7_10)
	fld	fa5, %lo(.LCPI7_10)(a1)
	fsd	fa5, 16(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(.LCPI7_12)
	fld	fa5, %lo(.LCPI7_12)(a1)
	fsd	fa5, 8(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(.LCPI7_13)
	fld	fs9, %lo(.LCPI7_13)(a1)
	lui	a1, %hi(.LCPI7_8)
	fld	fa5, %lo(.LCPI7_8)(a1)
	fsd	fa5, 0(sp)                      # 8-byte Folded Spill
	addiw	a1, s1, -796
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(.LCPI7_15)
	fld	fs11, %lo(.LCPI7_15)(a1)
	lui	a1, %hi(.LCPI7_16)
	fld	fa5, %lo(.LCPI7_16)(a1)
	fsd	fa5, 24(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(.LCPI7_17)
	fld	fs10, %lo(.LCPI7_17)(a1)
	addiw	a1, s1, 392
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(.LCPI7_1)
	fld	fs8, %lo(.LCPI7_1)(a1)
	lui	a1, %hi(.LCPI7_6)
	fld	fs6, %lo(.LCPI7_6)(a1)
	lui	a1, %hi(.LCPI7_7)
	fld	fa5, %lo(.LCPI7_7)(a1)
	fsd	fa5, 40(sp)                     # 8-byte Folded Spill
	addiw	s11, s1, 400
	j	.LBB7_6
.LBB7_5:                                #   in Loop: Header=BB7_6 Depth=1
	addi	s6, s6, 1
	li	a1, 5
	beq	s6, a1, .LBB7_54
.LBB7_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	add	a1, a0, s1
	lw	a1, 380(a1)
	li	a2, -51
	blt	a1, a2, .LBB7_5
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	negw	s10, a1
	sub	s5, s3, a1
	slli	a2, a1, 2
	neg	s8, a2
	slli	a1, a1, 3
	neg	s9, a1
	sext.w	a1, s6
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	slli	s4, s6, 3
	j	.LBB7_10
.LBB7_8:                                #   in Loop: Header=BB7_10 Depth=2
	fmul.d	fa5, fs2, fa5
	fsd	fa5, 0(a3)
	fsqrt.d	fa0, fa5
	feq.d	a0, fa0, fa0
	bnez	a0, .LBB7_41
.LBB7_9:                                # %call.sqrt40
                                        #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa0, fa5
	call	sqrt
	j	.LBB7_41
.LBB7_10:                               #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(input)(s7)
	add	a0, a0, s1
	lw	a0, 380(a0)
	fcvt.d.w	fa5, s10
	addi	a2, a1, 2047
	lw	a2, 1957(a2)
	fcvt.d.w	fa4, a0
	fadd.d	fa5, fa5, fa4
	fadd.d	fs7, fa5, fs3
	fdiv.d	fs0, fs7, fs4
	beqz	a2, .LBB7_15
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=2
	add	a1, a1, s4
	addi	a0, a1, 2047
	fld	fs7, 1961(a0)
	fmv.d	fa0, fs0
	call	exp2
	ld	a0, %lo(img)(s2)
	ld	a1, %lo(input)(s7)
	add	a0, a0, s1
	ld	a0, 392(a0)
	lw	a1, 24(a1)
	add	a0, a0, s4
	ld	a0, 0(a0)
	addi	a1, a1, -2
	seqz	a1, a1
	slli	a1, a1, 3
	lui	a2, %hi(.LCPI7_5)
	addi	a2, a2, %lo(.LCPI7_5)
	add	a1, a2, a1
	fld	fa5, 0(a1)
	fmul.d	fa4, fs7, fa0
	add	a0, a0, s9
	fmul.d	fa5, fa4, fa5
	fsqrt.d	fa0, fa5
	feq.d	a1, fa0, fa0
	fsd	fa5, 0(a0)
	beqz	a1, .LBB7_44
.LBB7_12:                               # %.split
                                        #   in Loop: Header=BB7_10 Depth=2
	ld	a0, %lo(img)(s2)
	add	a1, a0, s11
	ld	a2, 0(a1)
	add	a2, a2, s4
	ld	a2, 0(a2)
	ld	a1, 8(a1)
	add	a2, a2, s9
	add	a1, a1, s4
	ld	a1, 0(a1)
	fsd	fa0, 0(a2)
	fmadd.d	fa5, fa0, fs6, fs8
	fcvt.w.d	a2, fa5, rtz
	add	a1, a1, s8
	sw	a2, 0(a1)
	bne	s6, s3, .LBB7_43
# %bb.13:                               #   in Loop: Header=BB7_10 Depth=2
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	fld	fs7, 2001(a0)
	fmv.d	fa0, fs0
	call	exp2
	ld	a0, %lo(img)(s2)
	ld	a1, %lo(input)(s7)
	add	a0, a0, s1
	ld	a0, 392(a0)
	lw	a1, 24(a1)
	ld	a0, 40(a0)
	addi	a1, a1, -2
	seqz	a1, a1
	slli	a1, a1, 3
	lui	a2, %hi(.LCPI7_5)
	addi	a2, a2, %lo(.LCPI7_5)
	add	a1, a2, a1
	fld	fa5, 0(a1)
	fmul.d	fa4, fs7, fa0
	add	a0, a0, s9
	fmul.d	fa5, fa4, fa5
	fsqrt.d	fa0, fa5
	feq.d	a1, fa0, fa0
	fsd	fa5, 0(a0)
	beqz	a1, .LBB7_45
.LBB7_14:                               # %.split35
                                        #   in Loop: Header=BB7_10 Depth=2
	ld	a0, %lo(img)(s2)
	add	a1, a0, s11
	ld	a2, 0(a1)
	ld	a2, 40(a2)
	ld	a1, 8(a1)
	add	a2, a2, s9
	fsd	fa0, 0(a2)
	fmadd.d	fa5, fa0, fs6, fs8
	addi	a1, a1, 40
	j	.LBB7_42
.LBB7_15:                               #   in Loop: Header=BB7_10 Depth=2
	lw	s3, 1244(a1)
	fmv.d	fa0, fs0
	call	exp2
	blez	s3, .LBB7_20
# %bb.16:                               #   in Loop: Header=BB7_10 Depth=2
	li	a0, 3
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	beq	a1, a0, .LBB7_25
# %bb.17:                               #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa5, fs1
	li	s3, 1
	bne	a1, s3, .LBB7_28
# %bb.18:                               #   in Loop: Header=BB7_10 Depth=2
	fld	fa5, 8(sp)                      # 8-byte Folded Reload
	fdiv.d	fa4, fs7, fa5
	flt.d	a0, fa4, fs9
	fmv.d	fa5, fs9
	bnez	a0, .LBB7_28
# %bb.19:                               #   in Loop: Header=BB7_10 Depth=2
	fld	fa5, 0(sp)                      # 8-byte Folded Reload
	flt.d	a0, fa5, fa4
	beqz	a0, .LBB7_27
	j	.LBB7_28
.LBB7_20:                               #   in Loop: Header=BB7_10 Depth=2
	li	s3, 1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	beq	a1, s3, .LBB7_29
# %bb.21:                               #   in Loop: Header=BB7_10 Depth=2
	li	a0, 3
	bne	a1, a0, .LBB7_30
# %bb.22:                               #   in Loop: Header=BB7_10 Depth=2
	lui	a0, %hi(.LCPI7_10)
	fld	fa5, %lo(.LCPI7_10)(a0)
	fld	fa4, 32(sp)                     # 8-byte Folded Reload
	fdiv.d	fa4, fs7, fa4
	flt.d	a0, fa4, fa5
	bnez	a0, .LBB7_31
# %bb.23:                               #   in Loop: Header=BB7_10 Depth=2
	lui	a0, %hi(.LCPI7_4)
	fld	fa5, %lo(.LCPI7_4)(a0)
	flt.d	a0, fa5, fa4
	bnez	a0, .LBB7_31
# %bb.24:                               #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa5, fa4
	j	.LBB7_31
.LBB7_25:                               #   in Loop: Header=BB7_10 Depth=2
	fld	fa5, 32(sp)                     # 8-byte Folded Reload
	fdiv.d	fa4, fs7, fa5
	fld	fa5, 16(sp)                     # 8-byte Folded Reload
	flt.d	a0, fa4, fa5
	li	s3, 1
	bnez	a0, .LBB7_28
# %bb.26:                               #   in Loop: Header=BB7_10 Depth=2
	flt.d	a0, fs4, fa4
	fmv.d	fa5, fs4
	bnez	a0, .LBB7_28
.LBB7_27:                               #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa5, fa4
.LBB7_28:                               #   in Loop: Header=BB7_10 Depth=2
	fmul.d	fa4, fa0, fs5
	j	.LBB7_32
.LBB7_29:                               #   in Loop: Header=BB7_10 Depth=2
	lui	a0, %hi(.LCPI7_8)
	fld	fa5, %lo(.LCPI7_8)(a0)
	j	.LBB7_31
.LBB7_30:                               #   in Loop: Header=BB7_10 Depth=2
	lui	a0, %hi(.LCPI7_2)
	fld	fa5, %lo(.LCPI7_2)(a0)
.LBB7_31:                               #   in Loop: Header=BB7_10 Depth=2
	fld	fa4, 40(sp)                     # 8-byte Folded Reload
	fmul.d	fa4, fa0, fa4
.LBB7_32:                               #   in Loop: Header=BB7_10 Depth=2
	fmul.d	fa5, fa4, fa5
	ld	a1, %lo(img)(s2)
	ld	a2, %lo(input)(s7)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	a0, 1188(a1)
	lw	a3, 24(a2)
	add	a4, a0, s4
	ld	a4, 0(a4)
	addi	a3, a3, -2
	seqz	a3, a3
	slli	a3, a3, 3
	lui	a5, %hi(.LCPI7_5)
	addi	a5, a5, %lo(.LCPI7_5)
	add	a3, a5, a3
	fld	fa4, 0(a3)
	add	a3, a4, s9
	fsd	fa5, 0(a3)
	fmul.d	fa5, fa4, fa5
	bne	s6, s3, .LBB7_8
# %bb.33:                               #   in Loop: Header=BB7_10 Depth=2
	lw	a4, 1940(a2)
	fmv.d	fa4, fs1
	li	a5, 2
	bne	a4, a5, .LBB7_35
# %bb.34:                               #   in Loop: Header=BB7_10 Depth=2
	lw	a4, 0(a1)
	seqz	a4, a4
	slli	a4, a4, 3
	lui	a5, %hi(.LCPI7_14)
	addi	a5, a5, %lo(.LCPI7_14)
	add	a4, a5, a4
	fld	fa4, 0(a4)
.LBB7_35:                               #   in Loop: Header=BB7_10 Depth=2
	lw	a2, 1944(a2)
	fmul.d	fa5, fa5, fa4
	fsd	fa5, 0(a3)
	fmv.d	fa4, fs11
	li	a3, 2
	bne	a2, a3, .LBB7_39
# %bb.36:                               #   in Loop: Header=BB7_10 Depth=2
	lw	a1, 0(a1)
	lui	a2, %hi(gop_structure)
	ld	a2, %lo(gop_structure)(a2)
	li	a3, 24
	mul	a1, a1, a3
	add	a1, a2, a1
	lw	a1, -8(a1)
	fcvt.d.w	fa4, a1
	fld	fa3, 24(sp)                     # 8-byte Folded Reload
	fmul.d	fa4, fa4, fa3
	flt.d	a1, fs10, fa4
	fmv.d	fa3, fs10
	bnez	a1, .LBB7_38
# %bb.37:                               #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa3, fa4
.LBB7_38:                               #   in Loop: Header=BB7_10 Depth=2
	fsub.d	fa4, fs1, fa3
.LBB7_39:                               #   in Loop: Header=BB7_10 Depth=2
	ld	a0, 40(a0)
	add	a0, a0, s9
	fmul.d	fa5, fa5, fa4
	fmul.d	fa5, fs2, fa5
	fsqrt.d	fa0, fa5
	feq.d	a1, fa0, fa0
	fsd	fa5, 0(a0)
	beqz	a1, .LBB7_46
.LBB7_40:                               # %.split37
                                        #   in Loop: Header=BB7_10 Depth=2
	ld	a0, %lo(img)(s2)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 8(a0)
	ld	a1, 40(a1)
	ld	a2, 0(a0)
	add	a1, a1, s9
	ld	a0, 16(a0)
	ld	a2, 8(a2)
	fsd	fa0, 0(a1)
	fmadd.d	fa4, fa0, fs6, fs8
	ld	a0, 40(a0)
	add	a2, a2, s9
	fld	fa5, 0(a2)
	fcvt.w.d	a1, fa4, rtz
	add	a0, a0, s8
	sw	a1, 0(a0)
	fsqrt.d	fa0, fa5
	feq.d	a0, fa0, fa0
	beqz	a0, .LBB7_9
.LBB7_41:                               # %.split39
                                        #   in Loop: Header=BB7_10 Depth=2
	ld	a0, %lo(img)(s2)
	add	a1, a0, s11
	ld	a2, 0(a1)
	add	a2, a2, s4
	ld	a2, 0(a2)
	ld	a1, 8(a1)
	add	a2, a2, s9
	fsd	fa0, 0(a2)
	fmadd.d	fa5, fa0, fs6, fs8
	add	a1, a1, s4
.LBB7_42:                               #   in Loop: Header=BB7_10 Depth=2
	ld	a1, 0(a1)
	fcvt.w.d	a2, fa5, rtz
	add	a1, a1, s8
	sw	a2, 0(a1)
.LBB7_43:                               #   in Loop: Header=BB7_10 Depth=2
	and	a1, s5, s0
	addi	s5, s5, 1
	addi	s8, s8, 4
	addi	s9, s9, 8
	addi	s10, s10, 1
	li	a2, 52
	bne	a1, a2, .LBB7_10
	j	.LBB7_5
.LBB7_44:                               # %call.sqrt
                                        #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa0, fa5
	call	sqrt
	j	.LBB7_12
.LBB7_45:                               # %call.sqrt36
                                        #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa0, fa5
	call	sqrt
	j	.LBB7_14
.LBB7_46:                               # %call.sqrt38
                                        #   in Loop: Header=BB7_10 Depth=2
	fmv.d	fa0, fa5
	call	sqrt
	j	.LBB7_40
.LBB7_47:
	addiw	a2, s1, 380
	add	a0, a0, a2
	li	a2, -51
	li	a3, 1
	lui	a4, %hi(.LCPI7_1)
	fld	fa5, %lo(.LCPI7_1)(a4)
	lui	a4, %hi(.LCPI7_6)
	fld	fa4, %lo(.LCPI7_6)(a4)
	lui	a4, %hi(QP2QUANT)
	addi	a4, a4, %lo(QP2QUANT)
	li	a5, 52
	li	a6, 6
	j	.LBB7_49
.LBB7_48:                               #   in Loop: Header=BB7_49 Depth=1
	addi	a1, a1, 1
	beq	a1, a6, .LBB7_54
.LBB7_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_52 Depth 2
	lw	t2, 0(a0)
	blt	t2, a2, .LBB7_48
# %bb.50:                               #   in Loop: Header=BB7_49 Depth=1
	negw	a7, t2
	ld	t0, 20(a0)
	slli	t1, a1, 3
	ld	t3, 12(a0)
	ld	t4, 28(a0)
	add	t0, t0, t1
	ld	t5, 0(t0)
	add	t3, t3, t1
	add	t1, t4, t1
	ld	t1, 0(t1)
	ld	t3, 0(t3)
	sub	t0, a3, t2
	slli	t4, t2, 2
	sub	t1, t1, t4
	slli	t4, t2, 3
	sub	t2, t3, t4
	sub	t3, t5, t4
	j	.LBB7_52
.LBB7_51:                               #   in Loop: Header=BB7_52 Depth=2
	slli	t4, t4, 2
	add	t4, t4, a4
	lw	t4, -48(t4)
	fcvt.d.w	fa3, t4
	fsd	fa3, 0(t3)
	fsd	fa3, 0(t2)
	fld	fa3, 0(t3)
	fmadd.d	fa3, fa3, fa4, fa5
	fcvt.w.d	t4, fa3, rtz
	sw	t4, 0(t1)
	and	t4, t0, s0
	addi	t0, t0, 1
	addi	t1, t1, 4
	addi	t2, t2, 8
	addi	t3, t3, 8
	addiw	a7, a7, 1
	beq	t4, a5, .LBB7_48
.LBB7_52:                               #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	t5, 12
	mv	t4, a7
	blt	t5, a7, .LBB7_51
# %bb.53:                               #   in Loop: Header=BB7_52 Depth=2
	li	t4, 12
	j	.LBB7_51
.LBB7_54:
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
	fld	fs3, 136(sp)                    # 8-byte Folded Reload
	fld	fs4, 128(sp)                    # 8-byte Folded Reload
	fld	fs5, 120(sp)                    # 8-byte Folded Reload
	fld	fs6, 112(sp)                    # 8-byte Folded Reload
	fld	fs7, 104(sp)                    # 8-byte Folded Reload
	fld	fs8, 96(sp)                     # 8-byte Folded Reload
	fld	fs9, 88(sp)                     # 8-byte Folded Reload
	fld	fs10, 80(sp)                    # 8-byte Folded Reload
	fld	fs11, 72(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 272
	ret
.Lfunc_end7:
	.size	SetLagrangianMultipliers, .Lfunc_end7-SetLagrangianMultipliers
                                        # -- End function
	.option	pop
	.type	terminate_slice.MbWidthC,@object # @terminate_slice.MbWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
terminate_slice.MbWidthC:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	terminate_slice.MbWidthC, 16

	.type	terminate_slice.MbHeightC,@object # @terminate_slice.MbHeightC
	.p2align	2, 0x0
terminate_slice.MbHeightC:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	terminate_slice.MbHeightC, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CABAC stuffing words = %6d\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error encoding first MB with specified parameter, bits of current MB may be too big"
	.size	.L.str.1, 84

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"currPic != NULL"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"src/slice.c"
	.size	.L.str.3, 12

	.type	.L__PRETTY_FUNCTION__.init_slice,@object # @__PRETTY_FUNCTION__.init_slice
.L__PRETTY_FUNCTION__.init_slice:
	.asciz	"void init_slice(int)"
	.size	.L__PRETTY_FUNCTION__.init_slice, 21

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Too many slices per picture, increase MAXSLICEPERPICTURE in global.h."
	.size	.L.str.4, 70

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"malloc_slice: slice structure"
	.size	.L.str.5, 30

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"malloc_slice: partArr"
	.size	.L.str.6, 22

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"malloc_slice: Bitstream"
	.size	.L.str.7, 24

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"malloc_slice: StreamBuffer"
	.size	.L.str.8, 27

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
