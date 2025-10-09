	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"sei.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitSEIMessages                 # -- Begin function InitSEIMessages
	.p2align	2
	.type	InitSEIMessages,@function
InitSEIMessages:                        # @InitSEIMessages
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	a0, 16
	addiw	s0, a0, -40
	mv	a0, s0
	call	malloc
	lui	s1, %hi(sei_message)
	addi	s1, s1, %lo(sei_message)
	sd	a0, 16(s1)
	bnez	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
	ld	a0, 16(s1)
.LBB0_2:
	lui	s3, %hi(sei_message)
	addi	s4, s3, %lo(sei_message)
	li	s2, 5
	sb	s2, 8(s4)
	li	a1, 0
	mv	a2, s0
	call	memset
	sd	zero, %lo(sei_message)(s3)
	mv	a0, s0
	call	malloc
	sd	a0, 40(s4)
	bnez	a0, .LBB0_4
# %bb.3:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
	ld	a0, 40(s1)
.LBB0_4:
	sb	s2, 32(s1)
	lui	a1, 16
	addiw	a2, a1, -40
	li	a1, 0
	call	memset
	sd	zero, 24(s1)
	lui	a0, %hi(seiSparePicturePayload+16)
	sd	zero, %lo(seiSparePicturePayload+16)(a0)
	call	InitSparePicture
	call	InitSubseqChar
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1537(a0)
	beqz	a0, .LBB0_6
# %bb.5:
	lui	a0, %hi(seiHasSubseqLayerInfo)
	li	a1, 1
	sw	a1, %lo(seiHasSubseqLayerInfo)(a0)
	lui	a0, %hi(seiSubseqLayerInfo)
	sw	zero, %lo(seiSubseqLayerInfo)(a0)
	addi	a0, a0, %lo(seiSubseqLayerInfo)
	sw	zero, 4(a0)
	li	a1, 2
	sw	a1, 16(a0)
.LBB0_6:
	lui	a0, %hi(seiHasSceneInformation)
	li	a1, 1
	sw	a1, %lo(seiHasSceneInformation)(a0)
	lui	a0, %hi(seiSceneInformation)
	sd	zero, %lo(seiSceneInformation)(a0)
	addi	s1, a0, %lo(seiSceneInformation)
	li	a0, -1
	sw	a0, 8(s1)
	li	a0, 48
	call	malloc
	mv	s0, a0
	sd	a0, 16(s1)
	bnez	a0, .LBB0_8
# %bb.7:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	no_mem_exit
	lui	a0, %hi(seiSceneInformation+16)
	ld	s0, %lo(seiSceneInformation+16)(a0)
.LBB0_8:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB0_10
# %bb.9:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	no_mem_exit
	lui	a0, %hi(seiSceneInformation+16)
	ld	s0, %lo(seiSceneInformation+16)(a0)
	ld	a0, 32(s0)
.LBB0_10:
	li	a1, 1
	slli	a1, a1, 35
	sd	a1, 0(s0)
	sb	zero, 8(s0)
	li	a1, 0
	mv	a2, s1
	call	memset
	li	a0, 48
	call	malloc
	mv	s0, a0
	lui	s2, %hi(seiPanScanRectInfo+24)
	sd	a0, %lo(seiPanScanRectInfo+24)(s2)
	bnez	a0, .LBB0_12
# %bb.11:
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	call	no_mem_exit
	ld	s0, %lo(seiPanScanRectInfo+24)(s2)
.LBB0_12:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB0_14
# %bb.13:
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	call	no_mem_exit
	ld	s0, %lo(seiPanScanRectInfo+24)(s2)
	ld	a0, 32(s0)
.LBB0_14:
	li	a1, 0
	mv	a2, s1
	call	memset
	li	a0, 1
	slli	a1, a0, 35
	sd	a1, 0(s0)
	sb	zero, 8(s0)
	lui	a1, %hi(seiPanScanRectInfo)
	addi	a2, a1, %lo(seiPanScanRectInfo)
	sw	zero, 32(a2)
	lui	a3, %hi(seiHasPanScanRectInfo)
	sw	a0, %lo(seiHasPanScanRectInfo)(a3)
	sw	zero, 8(a2)
	sw	zero, 12(a2)
	sw	zero, 16(a2)
	sw	zero, %lo(seiPanScanRectInfo+4)(a1)
	call	InitUser_data_unregistered
	call	InitUser_data_registered_itu_t_t35
	li	a0, 48
	call	malloc
	mv	s0, a0
	lui	s2, %hi(seiRecoveryPoint+8)
	sd	a0, %lo(seiRecoveryPoint+8)(s2)
	bnez	a0, .LBB0_16
# %bb.15:
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	call	no_mem_exit
	ld	s0, %lo(seiRecoveryPoint+8)(s2)
.LBB0_16:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB0_18
# %bb.17:
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	call	no_mem_exit
	ld	s0, %lo(seiRecoveryPoint+8)(s2)
	ld	a0, 32(s0)
.LBB0_18:
	li	a1, 0
	mv	a2, s1
	call	memset
	li	a0, 1
	slli	a0, a0, 35
	sd	a0, 0(s0)
	sb	zero, 8(s0)
	lui	a0, %hi(seiRecoveryPoint)
	addi	a1, a0, %lo(seiRecoveryPoint)
	sw	zero, 16(a1)
	sw	zero, %lo(seiRecoveryPoint)(a0)
	sh	zero, %lo(seiRecoveryPoint+4)(a0)
	lui	a0, %hi(seiHasRecoveryPoint_info)
	sw	zero, %lo(seiHasRecoveryPoint_info)(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	InitSEIMessages, .Lfunc_end0-InitSEIMessages
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_sei_message               # -- Begin function clear_sei_message
	.p2align	2
	.type	clear_sei_message,@function
clear_sei_message:                      # @clear_sei_message
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a1, 24
	mul	a0, a0, a1
	lui	a1, %hi(sei_message)
	addi	a1, a1, %lo(sei_message)
	add	s0, a1, a0
	ld	a0, 16(s0)
	lui	a1, 16
	addiw	a2, a1, -40
	li	a1, 0
	call	memset
	sd	zero, 0(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	clear_sei_message, .Lfunc_end1-clear_sei_message
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseSEIMessages                # -- Begin function CloseSEIMessages
	.p2align	2
	.type	CloseSEIMessages,@function
CloseSEIMessages:                       # @CloseSEIMessages
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiSubseqChar+72)
	ld	a0, %lo(seiSubseqChar+72)(s0)
	beqz	a0, .LBB2_2
# %bb.1:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiSubseqChar+72)(s0)
	call	free
.LBB2_2:
	lui	s1, %hi(seiSparePicturePayload+16)
	ld	a0, %lo(seiSparePicturePayload+16)(s1)
	ld	a1, 32(a0)
	sd	zero, %lo(seiSubseqChar+72)(s0)
	beqz	a1, .LBB2_4
# %bb.3:
	mv	a0, a1
	call	free
	ld	a0, %lo(seiSparePicturePayload+16)(s1)
.LBB2_4:
	call	free
	lui	s0, %hi(seiSceneInformation+16)
	ld	a0, %lo(seiSceneInformation+16)(s0)
	lui	a1, %hi(seiSparePicturePayload)
	addi	a2, a1, %lo(seiSparePicturePayload)
	sd	zero, 16(a2)
	sd	zero, %lo(seiSparePicturePayload)(a1)
	beqz	a0, .LBB2_6
# %bb.5:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiSceneInformation+16)(s0)
	call	free
.LBB2_6:
	lui	s1, %hi(seiPanScanRectInfo+24)
	ld	a0, %lo(seiPanScanRectInfo+24)(s1)
	sd	zero, %lo(seiSceneInformation+16)(s0)
	beqz	a0, .LBB2_8
# %bb.7:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiPanScanRectInfo+24)(s1)
	call	free
.LBB2_8:
	lui	s0, %hi(seiUser_data_unregistered+16)
	ld	a0, %lo(seiUser_data_unregistered+16)(s0)
	sd	zero, %lo(seiPanScanRectInfo+24)(s1)
	beqz	a0, .LBB2_10
# %bb.9:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiUser_data_unregistered+16)(s0)
	call	free
.LBB2_10:
	lui	a1, %hi(seiUser_data_unregistered)
	ld	a0, %lo(seiUser_data_unregistered)(a1)
	addi	a1, a1, %lo(seiUser_data_unregistered)
	sd	zero, 16(a1)
	beqz	a0, .LBB2_12
# %bb.11:
	call	free
.LBB2_12:
	lui	s0, %hi(seiUser_data_registered_itu_t_t35+24)
	ld	a0, %lo(seiUser_data_registered_itu_t_t35+24)(s0)
	beqz	a0, .LBB2_14
# %bb.13:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiUser_data_registered_itu_t_t35+24)(s0)
	call	free
.LBB2_14:
	lui	a1, %hi(seiUser_data_registered_itu_t_t35)
	ld	a0, %lo(seiUser_data_registered_itu_t_t35)(a1)
	addi	a1, a1, %lo(seiUser_data_registered_itu_t_t35)
	sd	zero, 24(a1)
	beqz	a0, .LBB2_16
# %bb.15:
	call	free
.LBB2_16:
	lui	s1, %hi(seiRecoveryPoint+8)
	ld	a0, %lo(seiRecoveryPoint+8)(s1)
	beqz	a0, .LBB2_18
# %bb.17:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiRecoveryPoint+8)(s1)
	call	free
.LBB2_18:
	lui	s0, %hi(sei_message)
	addi	s0, s0, %lo(sei_message)
	ld	a0, 16(s0)
	sd	zero, %lo(seiRecoveryPoint+8)(s1)
	beqz	a0, .LBB2_20
# %bb.19:
	call	free
.LBB2_20:
	ld	a0, 40(s0)
	sd	zero, 16(s0)
	beqz	a0, .LBB2_22
# %bb.21:
	call	free
.LBB2_22:
	sd	zero, 40(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	CloseSEIMessages, .Lfunc_end2-CloseSEIMessages
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	HaveAggregationSEI              # -- Begin function HaveAggregationSEI
	.p2align	2
	.type	HaveAggregationSEI,@function
HaveAggregationSEI:                     # @HaveAggregationSEI
# %bb.0:
	lui	a0, %hi(sei_message+24)
	lw	a0, %lo(sei_message+24)(a0)
	beqz	a0, .LBB3_4
# %bb.1:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a0, 1
	bne	a1, a0, .LBB3_3
# %bb.2:
	lui	a1, %hi(seiHasSubseqInfo)
	lw	a1, %lo(seiHasSubseqInfo)(a1)
	beqz	a1, .LBB3_5
.LBB3_3:
	ret
.LBB3_4:
	lui	a0, %hi(seiHasSubseqInfo)
	lw	a1, %lo(seiHasSubseqInfo)(a0)
	li	a0, 1
	bnez	a1, .LBB3_3
.LBB3_5:
	lui	a0, %hi(seiHasSubseqLayerInfo)
	lw	a0, %lo(seiHasSubseqLayerInfo)(a0)
	beqz	a0, .LBB3_8
# %bb.6:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 0(a0)
	li	a0, 1
	beqz	a1, .LBB3_3
# %bb.7:
	lui	a1, %hi(seiHasSubseqChar)
	lw	a1, %lo(seiHasSubseqChar)(a1)
	beqz	a1, .LBB3_9
	j	.LBB3_3
.LBB3_8:
	lui	a0, %hi(seiHasSubseqChar)
	lw	a1, %lo(seiHasSubseqChar)(a0)
	li	a0, 1
	bnez	a1, .LBB3_3
.LBB3_9:
	lui	a0, %hi(seiHasSceneInformation)
	lw	a1, %lo(seiHasSceneInformation)(a0)
	li	a0, 1
	bnez	a1, .LBB3_3
# %bb.10:
	lui	a1, %hi(seiHasPanScanRectInfo)
	lw	a1, %lo(seiHasPanScanRectInfo)(a1)
	bnez	a1, .LBB3_3
# %bb.11:
	lui	a1, %hi(seiHasUser_data_unregistered_info)
	lw	a1, %lo(seiHasUser_data_unregistered_info)(a1)
	bnez	a1, .LBB3_3
# %bb.12:
	lui	a1, %hi(seiHasUser_data_registered_itu_t_t35_info)
	lw	a1, %lo(seiHasUser_data_registered_itu_t_t35_info)(a1)
	bnez	a1, .LBB3_3
# %bb.13:
	lui	a0, %hi(seiHasRecoveryPoint_info)
	lw	a0, %lo(seiHasRecoveryPoint_info)(a0)
	snez	a0, a0
	ret
.Lfunc_end3:
	.size	HaveAggregationSEI, .Lfunc_end3-HaveAggregationSEI
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_sei_message               # -- Begin function write_sei_message
	.p2align	2
	.type	write_sei_message,@function
write_sei_message:                      # @write_sei_message
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	li	a4, 22
	bgeu	a3, a4, .LBB4_7
# %bb.1:
	mv	s0, a2
	li	a2, 24
	mul	s1, a0, a2
	lui	a0, %hi(sei_message)
	addi	a0, a0, %lo(sei_message)
	add	s1, a0, s1
	lw	a0, 4(s1)
	ld	a2, 16(s1)
	add	a2, a2, a0
	sb	a3, 0(a2)
	li	a3, 256
	addiw	a2, a0, 1
	blt	s0, a3, .LBB4_5
# %bb.2:
	li	a4, -1
	li	a5, 510
	mv	a3, s0
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ld	a6, 16(s1)
	mv	a7, a3
	add	a6, a6, a2
	sb	a4, 0(a6)
	addiw	a3, a3, -255
	addi	a2, a2, 1
	addi	a0, a0, 1
	bltu	a5, a7, .LBB4_3
# %bb.4:
	addiw	a2, a0, 1
	j	.LBB4_6
.LBB4_5:
	mv	a3, s0
.LBB4_6:
	ld	a4, 16(s1)
	add	a2, a4, a2
	sb	a3, 0(a2)
	ld	a2, 16(s1)
	addiw	s2, a0, 2
	add	a0, a2, s2
	mv	a2, s0
	call	memcpy
	add	s0, s2, s0
	sw	s0, 4(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB4_7:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.write_sei_message)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.write_sei_message)
	li	a2, 153
	call	__assert_fail
.Lfunc_end4:
	.size	write_sei_message, .Lfunc_end4-write_sei_message
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	finalize_sei_message            # -- Begin function finalize_sei_message
	.p2align	2
	.type	finalize_sei_message,@function
finalize_sei_message:                   # @finalize_sei_message
# %bb.0:
	li	a1, 24
	mul	a0, a0, a1
	lui	a1, %hi(sei_message)
	addi	a1, a1, %lo(sei_message)
	add	a0, a1, a0
	lw	a1, 4(a0)
	ld	a2, 16(a0)
	add	a1, a2, a1
	li	a2, 128
	sb	a2, 0(a1)
	lw	a1, 4(a0)
	addi	a1, a1, 1
	sw	a1, 4(a0)
	li	a1, 1
	sw	a1, 0(a0)
	ret
.Lfunc_end5:
	.size	finalize_sei_message, .Lfunc_end5-finalize_sei_message
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AppendTmpbits2Buf               # -- Begin function AppendTmpbits2Buf
	.p2align	2
	.type	AppendTmpbits2Buf,@function
AppendTmpbits2Buf:                      # @AppendTmpbits2Buf
# %bb.0:
	lw	a2, 0(a1)
	blez	a2, .LBB6_9
# %bb.1:
	lbu	a2, 8(a0)
	li	a3, 0
	li	a4, 8
	j	.LBB6_3
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	lw	a5, 0(a1)
	addi	a3, a3, 1
	bge	a3, a5, .LBB6_9
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	li	a5, 128
	li	a6, 8
	j	.LBB6_5
.LBB6_4:                                #   in Loop: Header=BB6_5 Depth=2
	addiw	a6, a6, -1
	srliw	a5, a5, 1
	beqz	a6, .LBB6_2
.LBB6_5:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 32(a1)
	slli	a2, a2, 1
	sb	a2, 8(a0)
	add	a7, a7, a3
	lbu	a7, 0(a7)
	and	a7, a5, a7
	beqz	a7, .LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=2
	ori	a2, a2, 1
	sb	a2, 8(a0)
.LBB6_7:                                #   in Loop: Header=BB6_5 Depth=2
	lw	a7, 4(a0)
	addiw	a7, a7, -1
	sw	a7, 4(a0)
	bnez	a7, .LBB6_4
# %bb.8:                                #   in Loop: Header=BB6_5 Depth=2
	lw	a7, 0(a0)
	ld	t0, 32(a0)
	sw	a4, 4(a0)
	addi	t1, a7, 1
	sw	t1, 0(a0)
	add	a7, t0, a7
	sb	a2, 0(a7)
	sb	zero, 8(a0)
	li	a2, 0
	j	.LBB6_4
.LBB6_9:
	lw	a4, 4(a1)
	li	a5, 7
	blt	a5, a4, .LBB6_18
# %bb.10:
	li	a2, 8
	subw	a3, a2, a4
	subw	a4, a5, a4
	li	a6, 1
	bgtz	a3, .LBB6_12
# %bb.11:
	li	a3, 1
.LBB6_12:
	lbu	a5, 8(a0)
	sllw	a4, a6, a4
	j	.LBB6_14
.LBB6_13:                               #   in Loop: Header=BB6_14 Depth=1
	slli	a4, a4, 56
	addiw	a3, a3, -1
	srli	a4, a4, 57
	beqz	a3, .LBB6_18
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	slli	a5, a5, 1
	sb	a5, 8(a0)
	lbu	a6, 8(a1)
	and	a6, a4, a6
	beqz	a6, .LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=1
	ori	a5, a5, 1
	sb	a5, 8(a0)
.LBB6_16:                               #   in Loop: Header=BB6_14 Depth=1
	lw	a6, 4(a0)
	addiw	a6, a6, -1
	sw	a6, 4(a0)
	bnez	a6, .LBB6_13
# %bb.17:                               #   in Loop: Header=BB6_14 Depth=1
	lw	a6, 0(a0)
	ld	a7, 32(a0)
	sw	a2, 4(a0)
	addi	t0, a6, 1
	sw	t0, 0(a0)
	add	a6, a7, a6
	sb	a5, 0(a6)
	sb	zero, 8(a0)
	li	a5, 0
	j	.LBB6_13
.LBB6_18:
	ret
.Lfunc_end6:
	.size	AppendTmpbits2Buf, .Lfunc_end6-AppendTmpbits2Buf
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitSparePicture                # -- Begin function InitSparePicture
	.p2align	2
	.type	InitSparePicture,@function
InitSparePicture:                       # @InitSparePicture
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(seiSparePicturePayload+16)
	ld	a0, %lo(seiSparePicturePayload+16)(s2)
	beqz	a0, .LBB7_4
# %bb.1:
	ld	a1, 32(a0)
	beqz	a1, .LBB7_3
# %bb.2:
	mv	a0, a1
	call	free
	ld	a0, %lo(seiSparePicturePayload+16)(s2)
.LBB7_3:
	call	free
	lui	a0, %hi(seiSparePicturePayload)
	sd	zero, %lo(seiSparePicturePayload)(a0)
.LBB7_4:
	li	a0, 48
	call	malloc
	mv	s0, a0
	sd	a0, %lo(seiSparePicturePayload+16)(s2)
	bnez	a0, .LBB7_6
# %bb.5:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
	ld	s0, %lo(seiSparePicturePayload+16)(s2)
.LBB7_6:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB7_8
# %bb.7:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
	ld	s0, %lo(seiSparePicturePayload+16)(s2)
	ld	a0, 32(s0)
.LBB7_8:
	li	a1, 0
	mv	a2, s1
	call	memset
	lui	a0, %hi(seiSparePicturePayload)
	sd	zero, %lo(seiSparePicturePayload)(a0)
	li	a0, 1
	slli	a0, a0, 35
	sd	a0, 0(s0)
	sb	zero, 8(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	InitSparePicture, .Lfunc_end7-InitSparePicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseSparePicture               # -- Begin function CloseSparePicture
	.p2align	2
	.type	CloseSparePicture,@function
CloseSparePicture:                      # @CloseSparePicture
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiSparePicturePayload+16)
	ld	a0, %lo(seiSparePicturePayload+16)(s0)
	ld	a1, 32(a0)
	beqz	a1, .LBB8_2
# %bb.1:
	mv	a0, a1
	call	free
	ld	a0, %lo(seiSparePicturePayload+16)(s0)
.LBB8_2:
	call	free
	lui	a0, %hi(seiSparePicturePayload)
	addi	a1, a0, %lo(seiSparePicturePayload)
	sd	zero, 16(a1)
	sd	zero, %lo(seiSparePicturePayload)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end8:
	.size	CloseSparePicture, .Lfunc_end8-CloseSparePicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CalculateSparePicture           # -- Begin function CalculateSparePicture
	.p2align	2
	.type	CalculateSparePicture,@function
CalculateSparePicture:                  # @CalculateSparePicture
# %bb.0:
	ret
.Lfunc_end9:
	.size	CalculateSparePicture, .Lfunc_end9-CalculateSparePicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ComposeSparePictureMessage      # -- Begin function ComposeSparePictureMessage
	.p2align	2
	.type	ComposeSparePictureMessage,@function
ComposeSparePictureMessage:             # @ComposeSparePictureMessage
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	mv	s0, a2
	mv	s1, a1
	lui	a1, %hi(seiSparePicturePayload+16)
	ld	s2, %lo(seiSparePicturePayload+16)(a1)
	sw	zero, 0(sp)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 32(sp)
	sw	a0, 4(sp)
	mv	a0, sp
	mv	a1, s2
	call	writeSyntaxElement2Buf_UVLC
	sw	s1, 4(sp)
	mv	a0, sp
	mv	a1, s2
	call	writeSyntaxElement2Buf_UVLC
	mv	a0, s2
	mv	a1, s0
	call	AppendTmpbits2Buf
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end10:
	.size	ComposeSparePictureMessage, .Lfunc_end10-ComposeSparePictureMessage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CompressSpareMBMap              # -- Begin function CompressSpareMBMap
	.p2align	2
	.type	CompressSpareMBMap,@function
CompressSpareMBMap:                     # @CompressSpareMBMap
# %bb.0:
	addi	sp, sp, -192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a4, 60(a2)
	mv	s0, a1
	mv	s1, a0
	li	s3, 0
	slli	a0, a4, 1
	lw	a1, 52(a2)
	srli	a0, a0, 60
	add	a0, a4, a0
	sraiw	a0, a0, 4
	slli	a3, a1, 1
	srli	a3, a3, 60
	add	a1, a1, a3
	sraiw	a3, a1, 4
	mulw	t2, a3, a0
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 72(sp)
	li	a1, 16
	sw	zero, 40(sp)
	blt	a4, a1, .LBB11_47
# %bb.1:
	sd	t2, 0(sp)                       # 8-byte Folded Spill
	li	a5, 0
	li	s3, 0
	li	s8, 0
	li	a1, 0
	addi	a0, a0, -1
	srliw	a4, a0, 31
	add	a0, a0, a4
	srai	s6, a0, 1
	addi	a3, a3, -1
	srliw	a0, a3, 31
	add	a0, a3, a0
	srai	s2, a0, 1
	li	s9, -1
	li	s5, 1
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	mv	s4, s2
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	j	.LBB11_3
.LBB11_2:                               #   in Loop: Header=BB11_3 Depth=1
	lw	a0, 60(a2)
	ld	a5, 8(sp)                       # 8-byte Folded Reload
	addiw	a5, a5, 1
	slli	a3, a0, 1
	srli	a3, a3, 60
	add	a0, a0, a3
	sraiw	a0, a0, 4
	bge	a5, a0, .LBB11_44
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	lw	a0, 52(a2)
	li	a3, 16
	blt	a0, a3, .LBB11_2
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	li	s7, 0
	j	.LBB11_7
.LBB11_5:                               #   in Loop: Header=BB11_7 Depth=2
	li	s5, 0
	addi	s2, s2, 1
	li	s8, 1
.LBB11_6:                               #   in Loop: Header=BB11_7 Depth=2
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lw	a0, 52(a2)
	addiw	s7, s7, 1
	slli	a3, a0, 1
	srli	a3, a3, 60
	add	a0, a0, a3
	sraiw	a0, a0, 4
	bge	s7, a0, .LBB11_2
.LBB11_7:                               #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sext.w	s11, s6
	slli	a0, s11, 3
	add	a0, s1, a0
	ld	a0, 0(a0)
	sext.w	s10, s2
	add	a0, a0, s10
	lbu	a0, 0(a0)
	beqz	a0, .LBB11_9
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=2
	sw	a1, 44(sp)
	addi	a0, sp, 40
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	li	a1, 0
	addw	s3, a0, s3
	beq	s8, s9, .LBB11_10
	j	.LBB11_13
.LBB11_9:                               #   in Loop: Header=BB11_7 Depth=2
	addiw	a1, a1, 1
	bne	s8, s9, .LBB11_13
.LBB11_10:                              #   in Loop: Header=BB11_7 Depth=2
	bnez	s5, .LBB11_13
# %bb.11:                               #   in Loop: Header=BB11_7 Depth=2
	sext.w	a0, s4
	bge	a0, s10, .LBB11_23
# %bb.12:                               #   in Loop: Header=BB11_7 Depth=2
	li	s5, 0
	addi	s2, s2, -1
	j	.LBB11_26
.LBB11_13:                              #   in Loop: Header=BB11_7 Depth=2
	li	a0, 1
	bne	s8, a0, .LBB11_19
# %bb.14:                               #   in Loop: Header=BB11_7 Depth=2
	bnez	s5, .LBB11_19
# %bb.15:                               #   in Loop: Header=BB11_7 Depth=2
	lw	a0, 32(sp)                      # 8-byte Folded Reload
	blt	s10, a0, .LBB11_5
# %bb.16:                               #   in Loop: Header=BB11_7 Depth=2
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 52(a2)
	slli	a3, a2, 1
	srli	a3, a3, 60
	add	a2, a2, a3
	sraiw	a2, a2, 4
	addi	a2, a2, -1
	beq	s10, a2, .LBB11_36
# %bb.17:                               #   in Loop: Header=BB11_7 Depth=2
	beq	s10, a0, .LBB11_38
# %bb.18:                               #   in Loop: Header=BB11_7 Depth=2
	li	s5, 0
	li	s8, 1
	j	.LBB11_6
.LBB11_19:                              #   in Loop: Header=BB11_7 Depth=2
	bnez	s8, .LBB11_27
# %bb.20:                               #   in Loop: Header=BB11_7 Depth=2
	bne	s5, s9, .LBB11_27
# %bb.21:                               #   in Loop: Header=BB11_7 Depth=2
	lw	a0, 24(sp)                      # 8-byte Folded Reload
	bge	a0, s11, .LBB11_34
# %bb.22:                               #   in Loop: Header=BB11_7 Depth=2
	li	s8, 0
	addi	s6, s6, -1
	li	s5, -1
	j	.LBB11_6
.LBB11_23:                              #   in Loop: Header=BB11_7 Depth=2
	beqz	s10, .LBB11_32
# %bb.24:                               #   in Loop: Header=BB11_7 Depth=2
	beq	s10, a0, .LBB11_40
# %bb.25:                               #   in Loop: Header=BB11_7 Depth=2
	li	s5, 0
.LBB11_26:                              #   in Loop: Header=BB11_7 Depth=2
	li	s8, -1
	j	.LBB11_6
.LBB11_27:                              #   in Loop: Header=BB11_7 Depth=2
	bnez	s8, .LBB11_6
# %bb.28:                               #   in Loop: Header=BB11_7 Depth=2
	li	a0, 1
	bne	s5, a0, .LBB11_6
# %bb.29:                               #   in Loop: Header=BB11_7 Depth=2
	lw	a0, 16(sp)                      # 8-byte Folded Reload
	bge	s11, a0, .LBB11_37
# %bb.30:                               #   in Loop: Header=BB11_7 Depth=2
	li	s8, 0
	addi	s6, s6, 1
.LBB11_31:                              #   in Loop: Header=BB11_7 Depth=2
	li	s5, 1
	j	.LBB11_6
.LBB11_32:                              #   in Loop: Header=BB11_7 Depth=2
	li	s2, 0
.LBB11_33:                              #   in Loop: Header=BB11_7 Depth=2
	li	s5, 0
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	addi	s6, s6, 1
	li	s8, 1
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	j	.LBB11_6
.LBB11_34:                              #   in Loop: Header=BB11_7 Depth=2
	beqz	s11, .LBB11_39
# %bb.35:                               #   in Loop: Header=BB11_7 Depth=2
	bne	s11, a0, .LBB11_41
.LBB11_36:                              #   in Loop: Header=BB11_7 Depth=2
	li	s5, 0
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	addi	s6, s6, -1
	li	s8, -1
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	j	.LBB11_6
.LBB11_37:                              #   in Loop: Header=BB11_7 Depth=2
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 60(a2)
	slli	a3, a2, 1
	srli	a3, a3, 60
	add	a2, a2, a3
	sraiw	a2, a2, 4
	addi	a2, a2, -1
	bne	s11, a2, .LBB11_42
.LBB11_38:                              #   in Loop: Header=BB11_7 Depth=2
	li	s8, 0
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	addi	s2, s2, 1
	li	s5, -1
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	j	.LBB11_6
.LBB11_39:                              #   in Loop: Header=BB11_7 Depth=2
	li	s6, 0
.LBB11_40:                              #   in Loop: Header=BB11_7 Depth=2
	li	s8, 0
	addi	s2, s4, -1
	li	s5, 1
	mv	s4, s2
	j	.LBB11_6
.LBB11_41:                              #   in Loop: Header=BB11_7 Depth=2
	li	s8, 0
	li	s5, -1
	j	.LBB11_6
.LBB11_42:                              #   in Loop: Header=BB11_7 Depth=2
	beq	s11, a0, .LBB11_33
# %bb.43:                               #   in Loop: Header=BB11_7 Depth=2
	li	s8, 0
	j	.LBB11_31
.LBB11_44:
	beqz	a1, .LBB11_46
# %bb.45:
	sw	a1, 44(sp)
	addi	a0, sp, 40
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	addw	s3, a0, s3
.LBB11_46:
	ld	t2, 0(sp)                       # 8-byte Folded Reload
.LBB11_47:
	blt	s3, t2, .LBB11_58
# %bb.48:
	li	a0, 1
	slli	a0, a0, 35
	sd	a0, 0(s0)
	lui	a0, %hi(img)
	ld	a3, %lo(img)(a0)
	lw	a2, 60(a3)
	li	a1, 16
	sb	zero, 8(s0)
	blt	a2, a1, .LBB11_58
# %bb.49:
	li	a5, 0
	li	a2, 0
	li	a4, 8
	j	.LBB11_51
.LBB11_50:                              #   in Loop: Header=BB11_51 Depth=1
	lw	a6, 60(a3)
	addi	a2, a2, 1
	slli	a7, a6, 1
	srli	a7, a7, 60
	add	a6, a6, a7
	sraiw	a6, a6, 4
	bge	a2, a6, .LBB11_58
.LBB11_51:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_54 Depth 2
	lw	a6, 52(a3)
	blt	a6, a1, .LBB11_50
# %bb.52:                               #   in Loop: Header=BB11_51 Depth=1
	li	a6, 0
	slli	a7, a2, 3
	add	a7, s1, a7
	j	.LBB11_54
.LBB11_53:                              #   in Loop: Header=BB11_54 Depth=2
	lw	t0, 52(a3)
	addi	a6, a6, 1
	slli	t1, t0, 1
	srli	t1, t1, 60
	add	t0, t0, t1
	sraiw	t0, t0, 4
	bge	a6, t0, .LBB11_50
.LBB11_54:                              #   Parent Loop BB11_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	slli	a5, a5, 1
	sb	a5, 8(s0)
	add	t0, t0, a6
	lbu	t0, 0(t0)
	beqz	t0, .LBB11_56
# %bb.55:                               #   in Loop: Header=BB11_54 Depth=2
	ori	a5, a5, 1
	sb	a5, 8(s0)
.LBB11_56:                              #   in Loop: Header=BB11_54 Depth=2
	lw	t0, 4(s0)
	addiw	t0, t0, -1
	sw	t0, 4(s0)
	bnez	t0, .LBB11_53
# %bb.57:                               #   in Loop: Header=BB11_54 Depth=2
	lw	a3, 0(s0)
	ld	t0, 32(s0)
	sw	a4, 4(s0)
	addi	t1, a3, 1
	sw	t1, 0(s0)
	add	a3, t0, a3
	sb	a5, 0(a3)
	ld	a3, %lo(img)(a0)
	sb	zero, 8(s0)
	li	a5, 0
	j	.LBB11_53
.LBB11_58:
	slt	a0, s3, t2
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end11:
	.size	CompressSpareMBMap, .Lfunc_end11-CompressSpareMBMap
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeSpareMBMap              # -- Begin function FinalizeSpareMBMap
	.p2align	2
	.type	FinalizeSpareMBMap,@function
FinalizeSpareMBMap:                     # @FinalizeSpareMBMap
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s2, 0(a0)
	slli	a0, s2, 1
	srli	a0, a0, 56
	add	a0, s2, a0
	andi	s4, a0, -256
	lui	s3, %hi(seiSparePicturePayload)
	addi	s3, s3, %lo(seiSparePicturePayload)
	ld	s0, 16(s3)
	sw	zero, 8(sp)
	lui	a0, %hi(ue_linfo)
	addi	a0, a0, %lo(ue_linfo)
	sd	a0, 40(sp)
	li	a0, 48
	call	malloc
	mv	s1, a0
	bnez	a0, .LBB12_2
# %bb.1:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB12_2:
	subw	s4, s2, s4
	lui	a0, 16
	addiw	s2, a0, -40
	mv	a0, s2
	call	malloc
	sd	a0, 32(s1)
	bnez	a0, .LBB12_4
# %bb.3:
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	mv	s5, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s5
.LBB12_4:
	li	a1, 1
	slli	a1, a1, 35
	sd	a1, 0(s1)
	sb	zero, 8(s1)
	li	a1, 0
	mv	a2, s2
	call	memset
	lui	s2, %hi(seiSparePicturePayload)
	lw	a0, %lo(seiSparePicturePayload)(s2)
	subw	a0, s4, a0
	srliw	a1, a0, 31
	slli	a1, a1, 8
	add	a0, a1, a0
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s1
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, %lo(seiSparePicturePayload+4)(s2)
	addi	a0, a0, -1
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s1
	call	writeSyntaxElement2Buf_UVLC
	mv	a0, s1
	mv	a1, s0
	call	AppendTmpbits2Buf
	lw	a0, 4(s1)
	li	a1, 8
	beq	a0, a1, .LBB12_8
# %bb.5:
	lbu	a1, 8(s1)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB12_7
# %bb.6:
	sllw	a0, a0, a1
.LBB12_7:
	lw	a1, 0(s1)
	li	a2, 8
	ld	a3, 32(s1)
	sw	a2, 4(s1)
	addi	a2, a1, 1
	sw	a2, 0(s1)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s1)
.LBB12_8:
	lw	a1, 0(s1)
	ld	a0, 32(s0)
	sw	a1, 8(s3)
	sd	s1, 16(s3)
	call	free
	mv	a0, s0
	call	free
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end12:
	.size	FinalizeSpareMBMap, .Lfunc_end12-FinalizeSpareMBMap
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitSubseqInfo                  # -- Begin function InitSubseqInfo
	.p2align	2
	.type	InitSubseqInfo,@function
InitSubseqInfo:                         # @InitSubseqInfo
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(seiHasSubseqInfo)
	li	a2, 1
	sw	a2, %lo(seiHasSubseqInfo)(a1)
	slli	s2, a0, 5
	lui	a1, %hi(InitSubseqInfo.id)
	lhu	a2, %lo(InitSubseqInfo.id)(a1)
	lui	a3, %hi(seiSubseqInfo)
	addi	a3, a3, %lo(seiSubseqInfo)
	add	s2, a3, s2
	sw	a0, 0(s2)
	addi	a0, a2, 1
	sh	a0, %lo(InitSubseqInfo.id)(a1)
	sw	a2, 4(s2)
	li	a0, -1
	slli	a0, a0, 32
	sd	a0, 8(s2)
	sw	zero, 16(s2)
	li	a0, 48
	call	malloc
	mv	s0, a0
	sd	a0, 24(s2)
	bnez	a0, .LBB13_2
# %bb.1:
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	no_mem_exit
	ld	s0, 24(s2)
.LBB13_2:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB13_4
# %bb.3:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	call	no_mem_exit
	ld	s0, 24(s2)
	ld	a0, 32(s0)
.LBB13_4:
	li	a1, 1
	slli	a1, a1, 35
	sd	a1, 0(s0)
	sb	zero, 8(s0)
	li	a1, 0
	mv	a2, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	memset
.Lfunc_end13:
	.size	InitSubseqInfo, .Lfunc_end13-InitSubseqInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateSubseqInfo                # -- Begin function UpdateSubseqInfo
	.p2align	2
	.type	UpdateSubseqInfo,@function
UpdateSubseqInfo:                       # @UpdateSubseqInfo
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a3, 24(a1)
	li	a2, 1
	beq	a3, a2, .LBB14_2
# %bb.1:
	slli	a3, a0, 5
	lui	a4, %hi(seiSubseqInfo)
	addi	a4, a4, %lo(seiSubseqInfo)
	add	a3, a4, a3
	lw	a4, 12(a3)
	addi	a4, a4, 1
	andi	a4, a4, 255
	sw	a4, 12(a3)
.LBB14_2:
	beq	a0, a2, .LBB14_6
# %bb.3:
	bnez	a0, .LBB14_10
# %bb.4:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 8(a0)
	lw	a1, 0(a1)
	addiw	a0, a0, -1
	bne	a1, a0, .LBB14_11
# %bb.5:
	lui	a0, %hi(seiSubseqInfo+8)
	li	a1, 1
	sw	a1, %lo(seiSubseqInfo+8)(a0)
	ret
.LBB14_6:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a2, 0(a1)
	lui	a1, %hi(start_frame_no_in_this_IGOP)
	lw	a3, %lo(start_frame_no_in_this_IGOP)(a1)
	addi	a1, a0, 2047
	lw	a1, 1537(a1)
	subw	a3, a2, a3
	addi	a2, a1, 1
	remw	a2, a3, a2
	beqz	a2, .LBB14_12
.LBB14_7:
	bne	a2, a1, .LBB14_9
# %bb.8:
	lw	a0, 1244(a0)
	beqz	a0, .LBB14_14
.LBB14_9:
	lui	a0, %hi(seiSubseqInfo+40)
	sw	zero, %lo(seiSubseqInfo+40)(a0)
.LBB14_10:
	ret
.LBB14_11:
	lui	a0, %hi(seiSubseqInfo+8)
	sw	zero, %lo(seiSubseqInfo+8)(a0)
	ret
.LBB14_12:
	blez	a3, .LBB14_7
# %bb.13:
	lw	a3, 1244(a0)
	beqz	a3, .LBB14_7
.LBB14_14:
	lui	a0, %hi(seiSubseqInfo+40)
	li	a1, 1
	sw	a1, %lo(seiSubseqInfo+40)(a0)
	ret
.Lfunc_end14:
	.size	UpdateSubseqInfo, .Lfunc_end14-UpdateSubseqInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeSubseqInfo              # -- Begin function FinalizeSubseqInfo
	.p2align	2
	.type	FinalizeSubseqInfo,@function
FinalizeSubseqInfo:                     # @FinalizeSubseqInfo
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	slli	a0, a0, 5
	lui	s1, %hi(seiSubseqInfo)
	addi	s1, s1, %lo(seiSubseqInfo)
	add	s1, s1, a0
	ld	s0, 24(s1)
	lw	a0, 0(s1)
	sw	zero, 8(sp)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 40(sp)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 4(s1)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 8(s1)
	sw	a0, 28(sp)
	li	a0, 1
	sw	a0, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 12(s1)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 4(s0)
	li	a1, 8
	beq	a0, a1, .LBB15_4
# %bb.1:
	lbu	a1, 8(s0)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB15_3
# %bb.2:
	sllw	a0, a0, a1
.LBB15_3:
	lw	a1, 0(s0)
	li	a2, 8
	ld	a3, 32(s0)
	sw	a2, 4(s0)
	addi	a2, a1, 1
	sw	a2, 0(s0)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s0)
.LBB15_4:
	lw	a0, 0(s0)
	sw	a0, 16(s1)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end15:
	.size	FinalizeSubseqInfo, .Lfunc_end15-FinalizeSubseqInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClearSubseqInfoPayload          # -- Begin function ClearSubseqInfoPayload
	.p2align	2
	.type	ClearSubseqInfoPayload,@function
ClearSubseqInfoPayload:                 # @ClearSubseqInfoPayload
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	slli	a0, a0, 5
	lui	a1, %hi(seiSubseqInfo)
	addi	a1, a1, %lo(seiSubseqInfo)
	add	s0, a1, a0
	ld	a1, 24(s0)
	li	a2, 1
	ld	a0, 32(a1)
	slli	a2, a2, 35
	sd	a2, 0(a1)
	sb	zero, 8(a1)
	lui	a1, 16
	addiw	a2, a1, -40
	li	a1, 0
	call	memset
	sw	zero, 16(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end16:
	.size	ClearSubseqInfoPayload, .Lfunc_end16-ClearSubseqInfoPayload
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseSubseqInfo                 # -- Begin function CloseSubseqInfo
	.p2align	2
	.type	CloseSubseqInfo,@function
CloseSubseqInfo:                        # @CloseSubseqInfo
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	slli	a0, a0, 5
	lui	a1, %hi(seiSubseqInfo)
	addi	a1, a1, %lo(seiSubseqInfo)
	add	s0, a1, a0
	ld	a0, 24(s0)
	ld	a0, 32(a0)
	li	a1, -1
	sw	a1, 12(s0)
	sw	zero, 16(s0)
	call	free
	ld	a0, 24(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end17:
	.size	CloseSubseqInfo, .Lfunc_end17-CloseSubseqInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitSubseqLayerInfo             # -- Begin function InitSubseqLayerInfo
	.p2align	2
	.type	InitSubseqLayerInfo,@function
InitSubseqLayerInfo:                    # @InitSubseqLayerInfo
# %bb.0:
	lui	a0, %hi(seiHasSubseqLayerInfo)
	li	a1, 1
	sw	a1, %lo(seiHasSubseqLayerInfo)(a0)
	lui	a0, %hi(seiSubseqLayerInfo)
	sw	zero, %lo(seiSubseqLayerInfo)(a0)
	addi	a0, a0, %lo(seiSubseqLayerInfo)
	sw	zero, 4(a0)
	li	a1, 2
	sw	a1, 16(a0)
	ret
.Lfunc_end18:
	.size	InitSubseqLayerInfo, .Lfunc_end18-InitSubseqLayerInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseSubseqLayerInfo            # -- Begin function CloseSubseqLayerInfo
	.p2align	2
	.type	CloseSubseqLayerInfo,@function
CloseSubseqLayerInfo:                   # @CloseSubseqLayerInfo
# %bb.0:
	ret
.Lfunc_end19:
	.size	CloseSubseqLayerInfo, .Lfunc_end19-CloseSubseqLayerInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeSubseqLayerInfo         # -- Begin function FinalizeSubseqLayerInfo
	.p2align	2
	.type	FinalizeSubseqLayerInfo,@function
FinalizeSubseqLayerInfo:                # @FinalizeSubseqLayerInfo
# %bb.0:
	lui	a0, %hi(seiSubseqLayerInfo)
	addi	a0, a0, %lo(seiSubseqLayerInfo)
	lw	a1, 16(a0)
	sw	zero, 20(a0)
	blez	a1, .LBB20_4
# %bb.1:
	slli	a3, a1, 1
	addi	a2, a0, 4
	add	a3, a2, a3
	addi	a4, a0, 10
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	lh	a5, -4(a2)
	sh	a5, -2(a4)
	lh	a5, 0(a2)
	sh	a5, 0(a4)
	addi	a2, a2, 2
	addi	a4, a4, 4
	bne	a2, a3, .LBB20_2
# %bb.3:
	slli	a1, a1, 2
	sw	a1, 20(a0)
.LBB20_4:
	ret
.Lfunc_end20:
	.size	FinalizeSubseqLayerInfo, .Lfunc_end20-FinalizeSubseqLayerInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitSubseqChar                  # -- Begin function InitSubseqChar
	.p2align	2
	.type	InitSubseqChar,@function
InitSubseqChar:                         # @InitSubseqChar
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	li	a0, 48
	call	malloc
	mv	s0, a0
	lui	s2, %hi(seiSubseqChar+72)
	sd	a0, %lo(seiSubseqChar+72)(s2)
	bnez	a0, .LBB21_2
# %bb.1:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	no_mem_exit
	ld	s0, %lo(seiSubseqChar+72)(s2)
.LBB21_2:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB21_4
# %bb.3:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	call	no_mem_exit
	ld	s0, %lo(seiSubseqChar+72)(s2)
	ld	a0, 32(s0)
.LBB21_4:
	li	a1, 0
	mv	a2, s1
	call	memset
	li	a0, 1
	slli	a0, a0, 35
	sd	a0, 0(s0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sb	zero, 8(s0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 88(a0)
	lui	a1, %hi(seiSubseqChar)
	lui	a2, %hi(seiHasSubseqChar)
	sw	zero, %lo(seiHasSubseqChar)(a2)
	slli	a2, a0, 5
	lui	a3, %hi(seiSubseqInfo)
	addi	a3, a3, %lo(seiSubseqInfo)
	add	a2, a3, a2
	lw	a2, 4(a2)
	addi	a3, a1, %lo(seiSubseqChar)
	sw	zero, 80(a3)
	sw	a0, %lo(seiSubseqChar)(a1)
	sw	a2, %lo(seiSubseqChar+4)(a1)
	sw	zero, 8(a3)
	sw	zero, 16(a3)
	sw	zero, 28(a3)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end21:
	.size	InitSubseqChar, .Lfunc_end21-InitSubseqChar
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClearSubseqCharPayload          # -- Begin function ClearSubseqCharPayload
	.p2align	2
	.type	ClearSubseqCharPayload,@function
ClearSubseqCharPayload:                 # @ClearSubseqCharPayload
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiSubseqChar)
	addi	s0, s0, %lo(seiSubseqChar)
	ld	s1, 72(s0)
	ld	a0, 32(s1)
	lui	a1, 16
	addiw	a2, a1, -40
	li	a1, 0
	call	memset
	li	a0, 1
	slli	a0, a0, 35
	sd	a0, 0(s1)
	sb	zero, 8(s1)
	sw	zero, 80(s0)
	lui	a0, %hi(seiHasSubseqChar)
	sw	zero, %lo(seiHasSubseqChar)(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end22:
	.size	ClearSubseqCharPayload, .Lfunc_end22-ClearSubseqCharPayload
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateSubseqChar                # -- Begin function UpdateSubseqChar
	.p2align	2
	.type	UpdateSubseqChar,@function
UpdateSubseqChar:                       # @UpdateSubseqChar
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 88(a0)
	slli	a1, a0, 5
	lui	a2, %hi(seiSubseqInfo)
	addi	a2, a2, %lo(seiSubseqInfo)
	add	a1, a2, a1
	lw	a1, 4(a1)
	lui	a2, %hi(seiSubseqChar)
	sw	a0, %lo(seiSubseqChar)(a2)
	addi	a0, a2, %lo(seiSubseqChar)
	sw	a1, %lo(seiSubseqChar+4)(a2)
	sw	zero, 8(a0)
	li	a1, 25
	slli	a1, a1, 34
	sd	a1, 16(a0)
	li	a1, 30
	sd	a1, 24(a0)
	li	a1, 3
	slli	a1, a1, 32
	addi	a1, a1, 1
	sd	a1, 32(a0)
	li	a1, 2
	sw	a1, 52(a0)
	li	a1, 4
	sw	a1, 56(a0)
	lui	a0, %hi(seiHasSubseqChar)
	li	a1, 1
	sw	a1, %lo(seiHasSubseqChar)(a0)
	ret
.Lfunc_end23:
	.size	UpdateSubseqChar, .Lfunc_end23-UpdateSubseqChar
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeSubseqChar              # -- Begin function FinalizeSubseqChar
	.p2align	2
	.type	FinalizeSubseqChar,@function
FinalizeSubseqChar:                     # @FinalizeSubseqChar
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	lui	s1, %hi(seiSubseqChar)
	addi	s3, s1, %lo(seiSubseqChar)
	ld	s0, 72(s3)
	lw	a0, %lo(seiSubseqChar)(s1)
	sw	zero, 8(sp)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 40(sp)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, %lo(seiSubseqChar+4)(s1)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 8(s3)
	sw	a0, 28(sp)
	li	s2, 1
	sw	s2, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 8(s3)
	lui	s1, %hi(seiSubseqChar)
	addi	s1, s1, %lo(seiSubseqChar)
	beqz	a0, .LBB24_2
# %bb.1:
	lw	a0, 12(s1)
	sw	a0, 28(sp)
	li	a0, 32
	sw	a0, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
.LBB24_2:
	lw	a0, 16(s1)
	sw	a0, 28(sp)
	sw	s2, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 16(s1)
	beqz	a0, .LBB24_4
# %bb.3:
	lw	a0, 20(s1)
	sw	a0, 28(sp)
	li	s2, 16
	sw	s2, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 24(s1)
	sw	a0, 28(sp)
	sw	s2, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
.LBB24_4:
	lw	a0, 28(s1)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 28(s1)
	blez	a0, .LBB24_7
# %bb.5:                                # %.preheader
	li	s2, 0
	addi	s3, s1, 52
.LBB24_6:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s3)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 0(s3)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 28(s1)
	addi	s2, s2, 1
	addi	s3, s3, 4
	blt	s2, a0, .LBB24_6
.LBB24_7:
	lw	a0, 4(s0)
	li	a1, 8
	beq	a0, a1, .LBB24_11
# %bb.8:
	lbu	a1, 8(s0)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB24_10
# %bb.9:
	sllw	a0, a0, a1
.LBB24_10:
	lw	a1, 0(s0)
	li	a2, 8
	ld	a3, 32(s0)
	sw	a2, 4(s0)
	addi	a2, a1, 1
	sw	a2, 0(s0)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s0)
.LBB24_11:
	lw	a0, 0(s0)
	sw	a0, 80(s1)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end24:
	.size	FinalizeSubseqChar, .Lfunc_end24-FinalizeSubseqChar
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseSubseqChar                 # -- Begin function CloseSubseqChar
	.p2align	2
	.type	CloseSubseqChar,@function
CloseSubseqChar:                        # @CloseSubseqChar
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiSubseqChar+72)
	ld	a0, %lo(seiSubseqChar+72)(s0)
	beqz	a0, .LBB25_2
# %bb.1:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiSubseqChar+72)(s0)
	call	free
.LBB25_2:
	sd	zero, %lo(seiSubseqChar+72)(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end25:
	.size	CloseSubseqChar, .Lfunc_end25-CloseSubseqChar
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitSceneInformation            # -- Begin function InitSceneInformation
	.p2align	2
	.type	InitSceneInformation,@function
InitSceneInformation:                   # @InitSceneInformation
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(seiHasSceneInformation)
	li	a1, 1
	sw	a1, %lo(seiHasSceneInformation)(a0)
	lui	a0, %hi(seiSceneInformation)
	sd	zero, %lo(seiSceneInformation)(a0)
	addi	s1, a0, %lo(seiSceneInformation)
	li	a0, -1
	sw	a0, 8(s1)
	li	a0, 48
	call	malloc
	mv	s0, a0
	sd	a0, 16(s1)
	bnez	a0, .LBB26_2
# %bb.1:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	no_mem_exit
	lui	a0, %hi(seiSceneInformation+16)
	ld	s0, %lo(seiSceneInformation+16)(a0)
.LBB26_2:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB26_4
# %bb.3:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	no_mem_exit
	lui	a0, %hi(seiSceneInformation+16)
	ld	s0, %lo(seiSceneInformation+16)(a0)
	ld	a0, 32(s0)
.LBB26_4:
	li	a1, 1
	slli	a1, a1, 35
	sd	a1, 0(s0)
	sb	zero, 8(s0)
	li	a1, 0
	mv	a2, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	memset
.Lfunc_end26:
	.size	InitSceneInformation, .Lfunc_end26-InitSceneInformation
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseSceneInformation           # -- Begin function CloseSceneInformation
	.p2align	2
	.type	CloseSceneInformation,@function
CloseSceneInformation:                  # @CloseSceneInformation
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiSceneInformation+16)
	ld	a0, %lo(seiSceneInformation+16)(s0)
	beqz	a0, .LBB27_2
# %bb.1:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiSceneInformation+16)(s0)
	call	free
.LBB27_2:
	sd	zero, %lo(seiSceneInformation+16)(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end27:
	.size	CloseSceneInformation, .Lfunc_end27-CloseSceneInformation
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeSceneInformation        # -- Begin function FinalizeSceneInformation
	.p2align	2
	.type	FinalizeSceneInformation,@function
FinalizeSceneInformation:               # @FinalizeSceneInformation
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	lui	s1, %hi(seiSceneInformation)
	addi	a0, s1, %lo(seiSceneInformation)
	ld	s0, 16(a0)
	lw	a0, %lo(seiSceneInformation)(s1)
	sw	zero, 0(sp)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 32(sp)
	sw	a0, 20(sp)
	li	s2, 8
	sw	s2, 12(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, %lo(seiSceneInformation+4)(s1)
	sw	a0, 4(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, %lo(seiSceneInformation+4)(s1)
	li	a1, 4
	lui	s1, %hi(seiSceneInformation)
	addi	s1, s1, %lo(seiSceneInformation)
	blt	a0, a1, .LBB28_2
# %bb.1:
	lw	a0, 8(s1)
	sw	a0, 20(sp)
	sw	s2, 12(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
.LBB28_2:
	lw	a0, 4(s0)
	beq	a0, s2, .LBB28_6
# %bb.3:
	lbu	a1, 8(s0)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB28_5
# %bb.4:
	sllw	a0, a0, a1
.LBB28_5:
	lw	a1, 0(s0)
	li	a2, 8
	ld	a3, 32(s0)
	sw	a2, 4(s0)
	addi	a2, a1, 1
	sw	a2, 0(s0)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s0)
.LBB28_6:
	lw	a0, 0(s0)
	sw	a0, 24(s1)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end28:
	.size	FinalizeSceneInformation, .Lfunc_end28-FinalizeSceneInformation
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateSceneInformation          # -- Begin function UpdateSceneInformation
	.p2align	2
	.type	UpdateSceneInformation,@function
UpdateSceneInformation:                 # @UpdateSceneInformation
# %bb.0:
	lui	a4, %hi(seiHasSceneInformation)
	li	a5, 256
	sw	a0, %lo(seiHasSceneInformation)(a4)
	bge	a1, a5, .LBB29_6
# %bb.1:
	lui	a0, %hi(seiSceneInformation)
	li	a4, 7
	sw	a1, %lo(seiSceneInformation)(a0)
	bge	a2, a4, .LBB29_7
# %bb.2:
	li	a1, 4
	sw	a2, %lo(seiSceneInformation+4)(a0)
	blt	a2, a1, .LBB29_5
# %bb.3:
	li	a0, 256
	bge	a3, a0, .LBB29_8
# %bb.4:
	lui	a0, %hi(seiSceneInformation+8)
	sw	a3, %lo(seiSceneInformation+8)(a0)
.LBB29_5:
	ret
.LBB29_6:
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.UpdateSceneInformation)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.UpdateSceneInformation)
	li	a2, 1187
	call	__assert_fail
.LBB29_7:
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.UpdateSceneInformation)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.UpdateSceneInformation)
	li	a2, 1190
	call	__assert_fail
.LBB29_8:
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.UpdateSceneInformation)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.UpdateSceneInformation)
	li	a2, 1195
	call	__assert_fail
.Lfunc_end29:
	.size	UpdateSceneInformation, .Lfunc_end29-UpdateSceneInformation
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitPanScanRectInfo             # -- Begin function InitPanScanRectInfo
	.p2align	2
	.type	InitPanScanRectInfo,@function
InitPanScanRectInfo:                    # @InitPanScanRectInfo
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	li	a0, 48
	call	malloc
	mv	s0, a0
	lui	s2, %hi(seiPanScanRectInfo+24)
	sd	a0, %lo(seiPanScanRectInfo+24)(s2)
	bnez	a0, .LBB30_2
# %bb.1:
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	call	no_mem_exit
	ld	s0, %lo(seiPanScanRectInfo+24)(s2)
.LBB30_2:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB30_4
# %bb.3:
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	call	no_mem_exit
	ld	s0, %lo(seiPanScanRectInfo+24)(s2)
	ld	a0, 32(s0)
.LBB30_4:
	li	a1, 0
	mv	a2, s1
	call	memset
	li	a0, 1
	slli	a1, a0, 35
	sd	a1, 0(s0)
	sb	zero, 8(s0)
	lui	a1, %hi(seiPanScanRectInfo)
	addi	a2, a1, %lo(seiPanScanRectInfo)
	sw	zero, 32(a2)
	lui	a3, %hi(seiHasPanScanRectInfo)
	sw	a0, %lo(seiHasPanScanRectInfo)(a3)
	sw	zero, 8(a2)
	sw	zero, 12(a2)
	sw	zero, 16(a2)
	sw	zero, %lo(seiPanScanRectInfo+4)(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end30:
	.size	InitPanScanRectInfo, .Lfunc_end30-InitPanScanRectInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClearPanScanRectInfoPayload     # -- Begin function ClearPanScanRectInfoPayload
	.p2align	2
	.type	ClearPanScanRectInfoPayload,@function
ClearPanScanRectInfoPayload:            # @ClearPanScanRectInfoPayload
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiPanScanRectInfo)
	addi	s0, s0, %lo(seiPanScanRectInfo)
	ld	s1, 24(s0)
	ld	a0, 32(s1)
	lui	a1, 16
	addiw	a2, a1, -40
	li	a1, 0
	call	memset
	li	a0, 1
	slli	a1, a0, 35
	sd	a1, 0(s1)
	sb	zero, 8(s1)
	sw	zero, 32(s0)
	lui	a1, %hi(seiHasPanScanRectInfo)
	sw	a0, %lo(seiHasPanScanRectInfo)(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end31:
	.size	ClearPanScanRectInfoPayload, .Lfunc_end31-ClearPanScanRectInfoPayload
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdatePanScanRectInfo           # -- Begin function UpdatePanScanRectInfo
	.p2align	2
	.type	UpdatePanScanRectInfo,@function
UpdatePanScanRectInfo:                  # @UpdatePanScanRectInfo
# %bb.0:
	lui	a0, %hi(seiPanScanRectInfo)
	li	a1, 5
	slli	a2, a1, 33
	addi	a2, a2, 3
	sd	a2, %lo(seiPanScanRectInfo)(a0)
	addi	a0, a0, %lo(seiPanScanRectInfo)
	slli	a1, a1, 34
	addi	a1, a1, 40
	sd	a1, 8(a0)
	li	a1, 32
	sw	a1, 16(a0)
	lui	a0, %hi(seiHasPanScanRectInfo)
	li	a1, 1
	sw	a1, %lo(seiHasPanScanRectInfo)(a0)
	ret
.Lfunc_end32:
	.size	UpdatePanScanRectInfo, .Lfunc_end32-UpdatePanScanRectInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizePanScanRectInfo         # -- Begin function FinalizePanScanRectInfo
	.p2align	2
	.type	FinalizePanScanRectInfo,@function
FinalizePanScanRectInfo:                # @FinalizePanScanRectInfo
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	lui	s1, %hi(seiPanScanRectInfo)
	addi	s2, s1, %lo(seiPanScanRectInfo)
	ld	s0, 24(s2)
	lw	a0, %lo(seiPanScanRectInfo)(s1)
	sw	zero, 0(sp)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 32(sp)
	sw	a0, 4(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, %lo(seiPanScanRectInfo+4)(s1)
	sw	a0, 4(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 8(s2)
	sw	a0, 4(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 12(s2)
	sw	a0, 4(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 16(s2)
	sw	a0, 4(sp)
	mv	a0, sp
	mv	a1, s0
	call	writeSyntaxElement2Buf_UVLC
	lw	a0, 4(s0)
	li	a1, 8
	beq	a0, a1, .LBB33_4
# %bb.1:
	lbu	a1, 8(s0)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB33_3
# %bb.2:
	sllw	a0, a0, a1
.LBB33_3:
	lw	a1, 0(s0)
	li	a2, 8
	ld	a3, 32(s0)
	sw	a2, 4(s0)
	addi	a2, a1, 1
	sw	a2, 0(s0)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s0)
.LBB33_4:
	lw	a0, 0(s0)
	lui	a1, %hi(seiPanScanRectInfo+32)
	sw	a0, %lo(seiPanScanRectInfo+32)(a1)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end33:
	.size	FinalizePanScanRectInfo, .Lfunc_end33-FinalizePanScanRectInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClosePanScanRectInfo            # -- Begin function ClosePanScanRectInfo
	.p2align	2
	.type	ClosePanScanRectInfo,@function
ClosePanScanRectInfo:                   # @ClosePanScanRectInfo
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiPanScanRectInfo+24)
	ld	a0, %lo(seiPanScanRectInfo+24)(s0)
	beqz	a0, .LBB34_2
# %bb.1:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiPanScanRectInfo+24)(s0)
	call	free
.LBB34_2:
	sd	zero, %lo(seiPanScanRectInfo+24)(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end34:
	.size	ClosePanScanRectInfo, .Lfunc_end34-ClosePanScanRectInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitUser_data_unregistered      # -- Begin function InitUser_data_unregistered
	.p2align	2
	.type	InitUser_data_unregistered,@function
InitUser_data_unregistered:             # @InitUser_data_unregistered
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	li	a0, 48
	call	malloc
	mv	s0, a0
	lui	s2, %hi(seiUser_data_unregistered)
	addi	s2, s2, %lo(seiUser_data_unregistered)
	sd	a0, 16(s2)
	bnez	a0, .LBB35_2
# %bb.1:
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	call	no_mem_exit
	ld	s0, 16(s2)
.LBB35_2:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB35_4
# %bb.3:
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	call	no_mem_exit
.LBB35_4:
	mv	a0, s1
	call	malloc
	mv	s0, a0
	lui	s1, %hi(seiUser_data_unregistered)
	sd	a0, %lo(seiUser_data_unregistered)(s1)
	bnez	a0, .LBB35_6
# %bb.5:
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	call	no_mem_exit
	ld	s0, %lo(seiUser_data_unregistered)(s1)
.LBB35_6:
	ld	s3, 16(s2)
	ld	a0, 32(s3)
	lui	a1, 16
	addiw	s1, a1, -40
	li	a1, 0
	mv	a2, s1
	call	memset
	li	s4, 1
	slli	a0, s4, 35
	sd	a0, 0(s3)
	sb	zero, 8(s3)
	sw	zero, 24(s2)
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	call	memset
	sw	zero, 8(s2)
	lui	a0, %hi(seiHasUser_data_unregistered_info)
	sw	s4, %lo(seiHasUser_data_unregistered_info)(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end35:
	.size	InitUser_data_unregistered, .Lfunc_end35-InitUser_data_unregistered
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClearUser_data_unregistered     # -- Begin function ClearUser_data_unregistered
	.p2align	2
	.type	ClearUser_data_unregistered,@function
ClearUser_data_unregistered:            # @ClearUser_data_unregistered
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(seiUser_data_unregistered)
	addi	s2, s1, %lo(seiUser_data_unregistered)
	ld	s3, 16(s2)
	ld	a0, 32(s3)
	lui	a1, 16
	addiw	s0, a1, -40
	li	a1, 0
	mv	a2, s0
	call	memset
	li	s4, 1
	slli	a0, s4, 35
	sd	a0, 0(s3)
	ld	a0, %lo(seiUser_data_unregistered)(s1)
	sb	zero, 8(s3)
	sw	zero, 24(s2)
	li	a1, 0
	mv	a2, s0
	call	memset
	sw	zero, 8(s2)
	lui	a0, %hi(seiHasUser_data_unregistered_info)
	sw	s4, %lo(seiHasUser_data_unregistered_info)(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end36:
	.size	ClearUser_data_unregistered, .Lfunc_end36-ClearUser_data_unregistered
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateUser_data_unregistered    # -- Begin function UpdateUser_data_unregistered
	.p2align	2
	.type	UpdateUser_data_unregistered,@function
UpdateUser_data_unregistered:           # @UpdateUser_data_unregistered
# %bb.0:
	lui	a0, %hi(seiUser_data_unregistered)
	ld	a1, %lo(seiUser_data_unregistered)(a0)
	sb	zero, 0(a1)
	ld	a1, %lo(seiUser_data_unregistered)(a0)
	li	a2, 4
	sb	a2, 1(a1)
	ld	a1, %lo(seiUser_data_unregistered)(a0)
	li	a2, 8
	sb	a2, 2(a1)
	ld	a1, %lo(seiUser_data_unregistered)(a0)
	li	a2, 12
	sb	a2, 3(a1)
	ld	a1, %lo(seiUser_data_unregistered)(a0)
	li	a2, 16
	sb	a2, 4(a1)
	ld	a1, %lo(seiUser_data_unregistered)(a0)
	li	a2, 20
	sb	a2, 5(a1)
	ld	a1, %lo(seiUser_data_unregistered)(a0)
	addi	a0, a0, %lo(seiUser_data_unregistered)
	li	a2, 24
	sb	a2, 6(a1)
	li	a1, 7
	sw	a1, 8(a0)
	ret
.Lfunc_end37:
	.size	UpdateUser_data_unregistered, .Lfunc_end37-UpdateUser_data_unregistered
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeUser_data_unregistered  # -- Begin function FinalizeUser_data_unregistered
	.p2align	2
	.type	FinalizeUser_data_unregistered,@function
FinalizeUser_data_unregistered:         # @FinalizeUser_data_unregistered
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	lui	s1, %hi(seiUser_data_unregistered)
	addi	s1, s1, %lo(seiUser_data_unregistered)
	lw	a0, 8(s1)
	ld	s0, 16(s1)
	sw	zero, 8(sp)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 40(sp)
	blez	a0, .LBB38_3
# %bb.1:
	li	s2, 0
	lui	s3, %hi(seiUser_data_unregistered)
	addi	s4, s3, %lo(seiUser_data_unregistered)
	li	s5, 8
.LBB38_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(seiUser_data_unregistered)(s3)
	add	a0, a0, s2
	lbu	a0, 0(a0)
	sw	a0, 28(sp)
	sw	s5, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 8(s4)
	addi	s2, s2, 1
	blt	s2, a0, .LBB38_2
.LBB38_3:
	lw	a0, 4(s0)
	li	a1, 8
	beq	a0, a1, .LBB38_7
# %bb.4:
	lbu	a1, 8(s0)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB38_6
# %bb.5:
	sllw	a0, a0, a1
.LBB38_6:
	lw	a1, 0(s0)
	li	a2, 8
	ld	a3, 32(s0)
	sw	a2, 4(s0)
	addi	a2, a1, 1
	sw	a2, 0(s0)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s0)
.LBB38_7:
	lw	a0, 0(s0)
	sw	a0, 24(s1)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end38:
	.size	FinalizeUser_data_unregistered, .Lfunc_end38-FinalizeUser_data_unregistered
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseUser_data_unregistered     # -- Begin function CloseUser_data_unregistered
	.p2align	2
	.type	CloseUser_data_unregistered,@function
CloseUser_data_unregistered:            # @CloseUser_data_unregistered
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiUser_data_unregistered+16)
	ld	a0, %lo(seiUser_data_unregistered+16)(s0)
	beqz	a0, .LBB39_2
# %bb.1:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiUser_data_unregistered+16)(s0)
	call	free
.LBB39_2:
	lui	a1, %hi(seiUser_data_unregistered)
	ld	a0, %lo(seiUser_data_unregistered)(a1)
	addi	a1, a1, %lo(seiUser_data_unregistered)
	sd	zero, 16(a1)
	beqz	a0, .LBB39_4
# %bb.3:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB39_4:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end39:
	.size	CloseUser_data_unregistered, .Lfunc_end39-CloseUser_data_unregistered
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitUser_data_registered_itu_t_t35 # -- Begin function InitUser_data_registered_itu_t_t35
	.p2align	2
	.type	InitUser_data_registered_itu_t_t35,@function
InitUser_data_registered_itu_t_t35:     # @InitUser_data_registered_itu_t_t35
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	li	a0, 48
	call	malloc
	mv	s0, a0
	lui	s3, %hi(seiUser_data_registered_itu_t_t35)
	addi	s3, s3, %lo(seiUser_data_registered_itu_t_t35)
	sd	a0, 24(s3)
	bnez	a0, .LBB40_2
# %bb.1:
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	call	no_mem_exit
	ld	s0, 24(s3)
.LBB40_2:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	beqz	a0, .LBB40_4
# %bb.3:
	mv	a0, s1
	call	malloc
	mv	s1, a0
	lui	a0, %hi(seiUser_data_registered_itu_t_t35)
	sd	s1, %lo(seiUser_data_registered_itu_t_t35)(a0)
	j	.LBB40_6
.LBB40_4:
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	call	no_mem_exit
	lui	s2, %hi(seiUser_data_registered_itu_t_t35)
	addi	s4, s2, %lo(seiUser_data_registered_itu_t_t35)
	ld	s0, 24(s4)
	mv	a0, s1
	call	malloc
	mv	s1, a0
	sd	a0, %lo(seiUser_data_registered_itu_t_t35)(s2)
	bnez	s0, .LBB40_6
# %bb.5:
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	call	no_mem_exit
	ld	s0, 24(s4)
	ld	s1, %lo(seiUser_data_registered_itu_t_t35)(s2)
.LBB40_6:
	ld	a0, 32(s0)
	lui	a1, 16
	addiw	s2, a1, -40
	li	a1, 0
	mv	a2, s2
	call	memset
	li	s4, 1
	slli	a0, s4, 35
	sd	a0, 0(s0)
	sb	zero, 8(s0)
	sw	zero, 32(s3)
	mv	a0, s1
	li	a1, 0
	mv	a2, s2
	call	memset
	sd	zero, 8(s3)
	sw	zero, 16(s3)
	lui	a0, %hi(seiHasUser_data_registered_itu_t_t35_info)
	sw	s4, %lo(seiHasUser_data_registered_itu_t_t35_info)(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end40:
	.size	InitUser_data_registered_itu_t_t35, .Lfunc_end40-InitUser_data_registered_itu_t_t35
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClearUser_data_registered_itu_t_t35 # -- Begin function ClearUser_data_registered_itu_t_t35
	.p2align	2
	.type	ClearUser_data_registered_itu_t_t35,@function
ClearUser_data_registered_itu_t_t35:    # @ClearUser_data_registered_itu_t_t35
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(seiUser_data_registered_itu_t_t35)
	addi	s2, s1, %lo(seiUser_data_registered_itu_t_t35)
	ld	s3, 24(s2)
	ld	a0, 32(s3)
	lui	a1, 16
	addiw	s0, a1, -40
	li	a1, 0
	mv	a2, s0
	call	memset
	li	s4, 1
	slli	a0, s4, 35
	sd	a0, 0(s3)
	ld	a0, %lo(seiUser_data_registered_itu_t_t35)(s1)
	sb	zero, 8(s3)
	sw	zero, 32(s2)
	li	a1, 0
	mv	a2, s0
	call	memset
	sd	zero, 8(s2)
	sw	zero, 16(s2)
	lui	a0, %hi(seiHasUser_data_registered_itu_t_t35_info)
	sw	s4, %lo(seiHasUser_data_registered_itu_t_t35_info)(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end41:
	.size	ClearUser_data_registered_itu_t_t35, .Lfunc_end41-ClearUser_data_registered_itu_t_t35
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateUser_data_registered_itu_t_t35 # -- Begin function UpdateUser_data_registered_itu_t_t35
	.p2align	2
	.type	UpdateUser_data_registered_itu_t_t35,@function
UpdateUser_data_registered_itu_t_t35:   # @UpdateUser_data_registered_itu_t_t35
# %bb.0:
	lui	a0, %hi(seiUser_data_registered_itu_t_t35)
	ld	a1, %lo(seiUser_data_registered_itu_t_t35)(a0)
	addi	a2, a0, %lo(seiUser_data_registered_itu_t_t35)
	li	a3, 82
	sw	a3, 12(a2)
	sb	zero, 0(a1)
	ld	a1, %lo(seiUser_data_registered_itu_t_t35)(a0)
	li	a3, 3
	sb	a3, 1(a1)
	ld	a1, %lo(seiUser_data_registered_itu_t_t35)(a0)
	li	a3, 6
	sb	a3, 2(a1)
	ld	a1, %lo(seiUser_data_registered_itu_t_t35)(a0)
	li	a3, 9
	sb	a3, 3(a1)
	ld	a1, %lo(seiUser_data_registered_itu_t_t35)(a0)
	li	a3, 12
	sb	a3, 4(a1)
	ld	a1, %lo(seiUser_data_registered_itu_t_t35)(a0)
	li	a3, 15
	sb	a3, 5(a1)
	ld	a0, %lo(seiUser_data_registered_itu_t_t35)(a0)
	li	a1, 18
	sb	a1, 6(a0)
	li	a0, 7
	sw	a0, 8(a2)
	ret
.Lfunc_end42:
	.size	UpdateUser_data_registered_itu_t_t35, .Lfunc_end42-UpdateUser_data_registered_itu_t_t35
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeUser_data_registered_itu_t_t35 # -- Begin function FinalizeUser_data_registered_itu_t_t35
	.p2align	2
	.type	FinalizeUser_data_registered_itu_t_t35,@function
FinalizeUser_data_registered_itu_t_t35: # @FinalizeUser_data_registered_itu_t_t35
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	lui	s1, %hi(seiUser_data_registered_itu_t_t35)
	addi	s1, s1, %lo(seiUser_data_registered_itu_t_t35)
	ld	s0, 24(s1)
	lw	a0, 12(s1)
	sw	zero, 8(sp)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 40(sp)
	sw	a0, 28(sp)
	li	s2, 8
	sw	s2, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 12(s1)
	li	a1, 255
	bne	a0, a1, .LBB43_2
# %bb.1:
	lw	a0, 16(s1)
	sw	a0, 28(sp)
	sw	s2, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
.LBB43_2:
	lw	a0, 8(s1)
	blez	a0, .LBB43_5
# %bb.3:                                # %.preheader
	li	s2, 0
	lui	s3, %hi(seiUser_data_registered_itu_t_t35)
	addi	s4, s3, %lo(seiUser_data_registered_itu_t_t35)
	li	s5, 8
.LBB43_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(seiUser_data_registered_itu_t_t35)(s3)
	add	a0, a0, s2
	lbu	a0, 0(a0)
	sw	a0, 28(sp)
	sw	s5, 20(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 8(s4)
	addi	s2, s2, 1
	blt	s2, a0, .LBB43_4
.LBB43_5:
	lw	a0, 4(s0)
	li	a1, 8
	beq	a0, a1, .LBB43_9
# %bb.6:
	lbu	a1, 8(s0)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB43_8
# %bb.7:
	sllw	a0, a0, a1
.LBB43_8:
	lw	a1, 0(s0)
	li	a2, 8
	ld	a3, 32(s0)
	sw	a2, 4(s0)
	addi	a2, a1, 1
	sw	a2, 0(s0)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s0)
.LBB43_9:
	lw	a0, 0(s0)
	sw	a0, 32(s1)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end43:
	.size	FinalizeUser_data_registered_itu_t_t35, .Lfunc_end43-FinalizeUser_data_registered_itu_t_t35
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseUser_data_registered_itu_t_t35 # -- Begin function CloseUser_data_registered_itu_t_t35
	.p2align	2
	.type	CloseUser_data_registered_itu_t_t35,@function
CloseUser_data_registered_itu_t_t35:    # @CloseUser_data_registered_itu_t_t35
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiUser_data_registered_itu_t_t35+24)
	ld	a0, %lo(seiUser_data_registered_itu_t_t35+24)(s0)
	beqz	a0, .LBB44_2
# %bb.1:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiUser_data_registered_itu_t_t35+24)(s0)
	call	free
.LBB44_2:
	lui	a1, %hi(seiUser_data_registered_itu_t_t35)
	ld	a0, %lo(seiUser_data_registered_itu_t_t35)(a1)
	addi	a1, a1, %lo(seiUser_data_registered_itu_t_t35)
	sd	zero, 24(a1)
	beqz	a0, .LBB44_4
# %bb.3:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB44_4:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end44:
	.size	CloseUser_data_registered_itu_t_t35, .Lfunc_end44-CloseUser_data_registered_itu_t_t35
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitRandomAccess                # -- Begin function InitRandomAccess
	.p2align	2
	.type	InitRandomAccess,@function
InitRandomAccess:                       # @InitRandomAccess
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	li	a0, 48
	call	malloc
	mv	s0, a0
	lui	s2, %hi(seiRecoveryPoint+8)
	sd	a0, %lo(seiRecoveryPoint+8)(s2)
	bnez	a0, .LBB45_2
# %bb.1:
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	call	no_mem_exit
	ld	s0, %lo(seiRecoveryPoint+8)(s2)
.LBB45_2:
	lui	a0, 16
	addiw	s1, a0, -40
	mv	a0, s1
	call	malloc
	sd	a0, 32(s0)
	bnez	a0, .LBB45_4
# %bb.3:
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	call	no_mem_exit
	ld	s0, %lo(seiRecoveryPoint+8)(s2)
	ld	a0, 32(s0)
.LBB45_4:
	li	a1, 0
	mv	a2, s1
	call	memset
	li	a0, 1
	slli	a0, a0, 35
	sd	a0, 0(s0)
	sb	zero, 8(s0)
	lui	a0, %hi(seiRecoveryPoint)
	addi	a1, a0, %lo(seiRecoveryPoint)
	sw	zero, 16(a1)
	sw	zero, %lo(seiRecoveryPoint)(a0)
	sh	zero, %lo(seiRecoveryPoint+4)(a0)
	lui	a0, %hi(seiHasRecoveryPoint_info)
	sw	zero, %lo(seiHasRecoveryPoint_info)(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end45:
	.size	InitRandomAccess, .Lfunc_end45-InitRandomAccess
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClearRandomAccess               # -- Begin function ClearRandomAccess
	.p2align	2
	.type	ClearRandomAccess,@function
ClearRandomAccess:                      # @ClearRandomAccess
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiRecoveryPoint)
	addi	s1, s0, %lo(seiRecoveryPoint)
	ld	s2, 8(s1)
	ld	a0, 32(s2)
	lui	a1, 16
	addiw	a2, a1, -40
	li	a1, 0
	call	memset
	li	a0, 1
	slli	a0, a0, 35
	sd	a0, 0(s2)
	sb	zero, 8(s2)
	sw	zero, 16(s1)
	sw	zero, %lo(seiRecoveryPoint)(s0)
	sh	zero, %lo(seiRecoveryPoint+4)(s0)
	lui	a0, %hi(seiHasRecoveryPoint_info)
	sw	zero, %lo(seiHasRecoveryPoint_info)(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end46:
	.size	ClearRandomAccess, .Lfunc_end46-ClearRandomAccess
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateRandomAccess              # -- Begin function UpdateRandomAccess
	.p2align	2
	.type	UpdateRandomAccess,@function
UpdateRandomAccess:                     # @UpdateRandomAccess
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 2
	bne	a0, a1, .LBB47_2
# %bb.1:
	lui	a1, %hi(seiRecoveryPoint)
	sw	zero, %lo(seiRecoveryPoint)(a1)
	li	a0, 1
	sh	a0, %lo(seiRecoveryPoint+4)(a1)
	lui	a1, %hi(seiHasRecoveryPoint_info)
	sw	a0, %lo(seiHasRecoveryPoint_info)(a1)
	ret
.LBB47_2:
	lui	a1, %hi(seiHasRecoveryPoint_info)
	sw	zero, %lo(seiHasRecoveryPoint_info)(a1)
	ret
.Lfunc_end47:
	.size	UpdateRandomAccess, .Lfunc_end47-UpdateRandomAccess
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FinalizeRandomAccess            # -- Begin function FinalizeRandomAccess
	.p2align	2
	.type	FinalizeRandomAccess,@function
FinalizeRandomAccess:                   # @FinalizeRandomAccess
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(seiRecoveryPoint)
	addi	a0, s1, %lo(seiRecoveryPoint)
	ld	s0, 8(a0)
	lw	a1, %lo(seiRecoveryPoint)(s1)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	mv	a2, s0
	call	ue_v
	lbu	a1, %lo(seiRecoveryPoint+4)(s1)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	mv	a2, s0
	call	u_1
	lbu	a1, %lo(seiRecoveryPoint+5)(s1)
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	mv	a2, s0
	call	u_1
	lbu	a2, %lo(seiRecoveryPoint+6)(s1)
	lui	a1, %hi(.L.str.29)
	addi	a1, a1, %lo(.L.str.29)
	li	a0, 2
	mv	a3, s0
	call	u_v
	lw	a0, 4(s0)
	li	a1, 8
	beq	a0, a1, .LBB48_4
# %bb.1:
	lbu	a1, 8(s0)
	slli	a2, a1, 1
	addiw	a1, a0, -1
	addi	a0, a2, 1
	beqz	a1, .LBB48_3
# %bb.2:
	sllw	a0, a0, a1
.LBB48_3:
	lw	a1, 0(s0)
	li	a2, 8
	ld	a3, 32(s0)
	sw	a2, 4(s0)
	addi	a2, a1, 1
	sw	a2, 0(s0)
	add	a1, a3, a1
	sb	a0, 0(a1)
	sb	zero, 8(s0)
.LBB48_4:
	lw	a0, 0(s0)
	lui	a1, %hi(seiRecoveryPoint+16)
	sw	a0, %lo(seiRecoveryPoint+16)(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end48:
	.size	FinalizeRandomAccess, .Lfunc_end48-FinalizeRandomAccess
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseRandomAccess               # -- Begin function CloseRandomAccess
	.p2align	2
	.type	CloseRandomAccess,@function
CloseRandomAccess:                      # @CloseRandomAccess
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(seiRecoveryPoint+8)
	ld	a0, %lo(seiRecoveryPoint+8)(s0)
	beqz	a0, .LBB49_2
# %bb.1:
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(seiRecoveryPoint+8)(s0)
	call	free
.LBB49_2:
	sd	zero, %lo(seiRecoveryPoint+8)(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end49:
	.size	CloseRandomAccess, .Lfunc_end49-CloseRandomAccess
                                        # -- End function
	.option	pop
	.type	seiHasTemporal_reference,@object # @seiHasTemporal_reference
	.section	.sbss,"aw",@nobits
	.globl	seiHasTemporal_reference
	.p2align	2, 0x0
seiHasTemporal_reference:
	.word	0                               # 0x0
	.size	seiHasTemporal_reference, 4

	.type	seiHasClock_timestamp,@object   # @seiHasClock_timestamp
	.globl	seiHasClock_timestamp
	.p2align	2, 0x0
seiHasClock_timestamp:
	.word	0                               # 0x0
	.size	seiHasClock_timestamp, 4

	.type	seiHasPanscan_rect,@object      # @seiHasPanscan_rect
	.globl	seiHasPanscan_rect
	.p2align	2, 0x0
seiHasPanscan_rect:
	.word	0                               # 0x0
	.size	seiHasPanscan_rect, 4

	.type	seiHasBuffering_period,@object  # @seiHasBuffering_period
	.globl	seiHasBuffering_period
	.p2align	2, 0x0
seiHasBuffering_period:
	.word	0                               # 0x0
	.size	seiHasBuffering_period, 4

	.type	seiHasHrd_picture,@object       # @seiHasHrd_picture
	.globl	seiHasHrd_picture
	.p2align	2, 0x0
seiHasHrd_picture:
	.word	0                               # 0x0
	.size	seiHasHrd_picture, 4

	.type	seiHasFiller_payload,@object    # @seiHasFiller_payload
	.globl	seiHasFiller_payload
	.p2align	2, 0x0
seiHasFiller_payload:
	.word	0                               # 0x0
	.size	seiHasFiller_payload, 4

	.type	seiHasUser_data_registered_itu_t_t35,@object # @seiHasUser_data_registered_itu_t_t35
	.globl	seiHasUser_data_registered_itu_t_t35
	.p2align	2, 0x0
seiHasUser_data_registered_itu_t_t35:
	.word	0                               # 0x0
	.size	seiHasUser_data_registered_itu_t_t35, 4

	.type	seiHasUser_data_unregistered,@object # @seiHasUser_data_unregistered
	.globl	seiHasUser_data_unregistered
	.p2align	2, 0x0
seiHasUser_data_unregistered:
	.word	0                               # 0x0
	.size	seiHasUser_data_unregistered, 4

	.type	seiHasRandom_access_point,@object # @seiHasRandom_access_point
	.globl	seiHasRandom_access_point
	.p2align	2, 0x0
seiHasRandom_access_point:
	.word	0                               # 0x0
	.size	seiHasRandom_access_point, 4

	.type	seiHasRef_pic_buffer_management_repetition,@object # @seiHasRef_pic_buffer_management_repetition
	.globl	seiHasRef_pic_buffer_management_repetition
	.p2align	2, 0x0
seiHasRef_pic_buffer_management_repetition:
	.word	0                               # 0x0
	.size	seiHasRef_pic_buffer_management_repetition, 4

	.type	seiHasSpare_picture,@object     # @seiHasSpare_picture
	.globl	seiHasSpare_picture
	.p2align	2, 0x0
seiHasSpare_picture:
	.word	0                               # 0x0
	.size	seiHasSpare_picture, 4

	.type	seiHasSceneInformation,@object  # @seiHasSceneInformation
	.globl	seiHasSceneInformation
	.p2align	2, 0x0
seiHasSceneInformation:
	.word	0                               # 0x0
	.size	seiHasSceneInformation, 4

	.type	seiHasSubseq_information,@object # @seiHasSubseq_information
	.globl	seiHasSubseq_information
	.p2align	2, 0x0
seiHasSubseq_information:
	.word	0                               # 0x0
	.size	seiHasSubseq_information, 4

	.type	seiHasSubseq_layer_characteristics,@object # @seiHasSubseq_layer_characteristics
	.globl	seiHasSubseq_layer_characteristics
	.p2align	2, 0x0
seiHasSubseq_layer_characteristics:
	.word	0                               # 0x0
	.size	seiHasSubseq_layer_characteristics, 4

	.type	seiHasSubseq_characteristics,@object # @seiHasSubseq_characteristics
	.globl	seiHasSubseq_characteristics
	.p2align	2, 0x0
seiHasSubseq_characteristics:
	.word	0                               # 0x0
	.size	seiHasSubseq_characteristics, 4

	.type	sei_message,@object             # @sei_message
	.bss
	.globl	sei_message
	.p2align	3, 0x0
sei_message:
	.zero	48
	.size	sei_message, 48

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"InitSEIMessages: sei_message[i].data"
	.size	.L.str, 37

	.type	seiSparePicturePayload,@object  # @seiSparePicturePayload
	.bss
	.globl	seiSparePicturePayload
	.p2align	3, 0x0
seiSparePicturePayload:
	.zero	24
	.size	seiSparePicturePayload, 24

	.type	seiHasSubseqInfo,@object        # @seiHasSubseqInfo
	.section	.sbss,"aw",@nobits
	.globl	seiHasSubseqInfo
	.p2align	2, 0x0
seiHasSubseqInfo:
	.word	0                               # 0x0
	.size	seiHasSubseqInfo, 4

	.type	seiHasSubseqLayerInfo,@object   # @seiHasSubseqLayerInfo
	.globl	seiHasSubseqLayerInfo
	.p2align	2, 0x0
seiHasSubseqLayerInfo:
	.word	0                               # 0x0
	.size	seiHasSubseqLayerInfo, 4

	.type	seiHasSubseqChar,@object        # @seiHasSubseqChar
	.globl	seiHasSubseqChar
	.p2align	2, 0x0
seiHasSubseqChar:
	.word	0                               # 0x0
	.size	seiHasSubseqChar, 4

	.type	seiHasPanScanRectInfo,@object   # @seiHasPanScanRectInfo
	.globl	seiHasPanScanRectInfo
	.p2align	2, 0x0
seiHasPanScanRectInfo:
	.word	0                               # 0x0
	.size	seiHasPanScanRectInfo, 4

	.type	seiHasUser_data_unregistered_info,@object # @seiHasUser_data_unregistered_info
	.globl	seiHasUser_data_unregistered_info
	.p2align	2, 0x0
seiHasUser_data_unregistered_info:
	.word	0                               # 0x0
	.size	seiHasUser_data_unregistered_info, 4

	.type	seiHasUser_data_registered_itu_t_t35_info,@object # @seiHasUser_data_registered_itu_t_t35_info
	.globl	seiHasUser_data_registered_itu_t_t35_info
	.p2align	2, 0x0
seiHasUser_data_registered_itu_t_t35_info:
	.word	0                               # 0x0
	.size	seiHasUser_data_registered_itu_t_t35_info, 4

	.type	seiHasRecoveryPoint_info,@object # @seiHasRecoveryPoint_info
	.globl	seiHasRecoveryPoint_info
	.p2align	2, 0x0
seiHasRecoveryPoint_info:
	.word	0                               # 0x0
	.size	seiHasRecoveryPoint_info, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"payload_type >= 0 && payload_type < SEI_MAX_ELEMENTS"
	.size	.L.str.1, 53

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"src/sei.c"
	.size	.L.str.2, 10

	.type	.L__PRETTY_FUNCTION__.write_sei_message,@object # @__PRETTY_FUNCTION__.write_sei_message
.L__PRETTY_FUNCTION__.write_sei_message:
	.asciz	"void write_sei_message(int, byte *, int, int)"
	.size	.L__PRETTY_FUNCTION__.write_sei_message, 46

	.type	seiHasSparePicture,@object      # @seiHasSparePicture
	.section	.sbss,"aw",@nobits
	.globl	seiHasSparePicture
	.p2align	2, 0x0
seiHasSparePicture:
	.word	0                               # 0x0
	.size	seiHasSparePicture, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"InitSparePicture: seiSparePicturePayload.data"
	.size	.L.str.3, 46

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"InitSparePicture: seiSparePicturePayload.data->streamBuffer"
	.size	.L.str.4, 60

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"FinalizeSpareMBMap: dest"
	.size	.L.str.5, 25

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"FinalizeSpareMBMap: dest->streamBuffer"
	.size	.L.str.6, 39

	.type	InitSubseqInfo.id,@object       # @InitSubseqInfo.id
	.section	.sbss,"aw",@nobits
	.p2align	1, 0x0
InitSubseqInfo.id:
	.half	0                               # 0x0
	.size	InitSubseqInfo.id, 2

	.type	seiSubseqInfo,@object           # @seiSubseqInfo
	.bss
	.globl	seiSubseqInfo
	.p2align	3, 0x0
seiSubseqInfo:
	.zero	64
	.size	seiSubseqInfo, 64

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"InitSubseqInfo: seiSubseqInfo[currLayer].data"
	.size	.L.str.7, 46

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"InitSubseqInfo: seiSubseqInfo[currLayer].data->streamBuffer"
	.size	.L.str.8, 60

	.type	seiSubseqLayerInfo,@object      # @seiSubseqLayerInfo
	.bss
	.globl	seiSubseqLayerInfo
	.p2align	2, 0x0
seiSubseqLayerInfo:
	.zero	24
	.size	seiSubseqLayerInfo, 24

	.type	seiSubseqChar,@object           # @seiSubseqChar
	.globl	seiSubseqChar
	.p2align	3, 0x0
seiSubseqChar:
	.zero	88
	.size	seiSubseqChar, 88

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"InitSubseqChar: seiSubseqChar.data"
	.size	.L.str.9, 35

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"InitSubseqChar: seiSubseqChar.data->streamBuffer"
	.size	.L.str.10, 49

	.type	seiSceneInformation,@object     # @seiSceneInformation
	.bss
	.globl	seiSceneInformation
	.p2align	3, 0x0
seiSceneInformation:
	.zero	32
	.size	seiSceneInformation, 32

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"InitSceneInformation: seiSceneInformation.data"
	.size	.L.str.11, 47

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"InitSceneInformation: seiSceneInformation.data->streamBuffer"
	.size	.L.str.12, 61

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"sceneID < 256"
	.size	.L.str.13, 14

	.type	.L__PRETTY_FUNCTION__.UpdateSceneInformation,@object # @__PRETTY_FUNCTION__.UpdateSceneInformation
.L__PRETTY_FUNCTION__.UpdateSceneInformation:
	.asciz	"void UpdateSceneInformation(Boolean, int, int, int)"
	.size	.L__PRETTY_FUNCTION__.UpdateSceneInformation, 52

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"sceneTransType <= 6"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"secondSceneID < 256"
	.size	.L.str.15, 20

	.type	seiPanScanRectInfo,@object      # @seiPanScanRectInfo
	.bss
	.globl	seiPanScanRectInfo
	.p2align	3, 0x0
seiPanScanRectInfo:
	.zero	40
	.size	seiPanScanRectInfo, 40

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"InitPanScanRectInfo: seiPanScanRectInfo.data"
	.size	.L.str.16, 45

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"InitPanScanRectInfo: seiPanScanRectInfo.data->streamBuffer"
	.size	.L.str.17, 59

	.type	seiUser_data_unregistered,@object # @seiUser_data_unregistered
	.bss
	.globl	seiUser_data_unregistered
	.p2align	3, 0x0
seiUser_data_unregistered:
	.zero	32
	.size	seiUser_data_unregistered, 32

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"InitUser_data_unregistered: seiUser_data_unregistered.data"
	.size	.L.str.18, 59

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"InitUser_data_unregistered: seiUser_data_unregistered.data->streamBuffer"
	.size	.L.str.19, 73

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"InitUser_data_unregistered: seiUser_data_unregistered.byte"
	.size	.L.str.20, 59

	.type	seiUser_data_registered_itu_t_t35,@object # @seiUser_data_registered_itu_t_t35
	.bss
	.globl	seiUser_data_registered_itu_t_t35
	.p2align	3, 0x0
seiUser_data_registered_itu_t_t35:
	.zero	40
	.size	seiUser_data_registered_itu_t_t35, 40

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data"
	.size	.L.str.21, 67

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data->streamBuffer"
	.size	.L.str.22, 81

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.byte"
	.size	.L.str.23, 67

	.type	seiRecoveryPoint,@object        # @seiRecoveryPoint
	.bss
	.globl	seiRecoveryPoint
	.p2align	3, 0x0
seiRecoveryPoint:
	.zero	24
	.size	seiRecoveryPoint, 24

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"InitRandomAccess: seiRandomAccess.data"
	.size	.L.str.24, 39

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"InitRandomAccess: seiRandomAccess.data->streamBuffer"
	.size	.L.str.25, 53

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SEI: recovery_frame_cnt"
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SEI: exact_match_flag"
	.size	.L.str.27, 22

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SEI: broken_link_flag"
	.size	.L.str.28, 22

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SEI: changing_slice_group_idc"
	.size	.L.str.29, 30

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
