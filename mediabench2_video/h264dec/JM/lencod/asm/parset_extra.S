	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"parset.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GenerateParameterSets           # -- Begin function GenerateParameterSets
	.p2align	2
	.type	GenerateParameterSets,@function
GenerateParameterSets:                  # @GenerateParameterSets
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	call	AllocSPS
	mv	s0, a0
	lui	s2, %hi(PicParSet)
	addi	s1, s2, %lo(PicParSet)
	li	a2, 1
	slli	a2, a2, 11
	mv	a0, s1
	li	a1, 0
	call	memset
	mv	a0, s0
	li	a1, 0
	call	GenerateSequenceParameterSet
	lui	s3, %hi(input)
	ld	a0, %lo(input)(s3)
	lw	s4, 64(a0)
	call	AllocPPS
	sd	a0, %lo(PicParSet)(s2)
	beqz	s4, .LBB0_3
# %bb.1:
	call	AllocPPS
	sd	a0, 8(s1)
	call	AllocPPS
	mv	a1, a0
	lw	a2, 4(s0)
	ld	a3, %lo(input)(s3)
	ld	a0, %lo(PicParSet)(s2)
	sd	a1, 16(s1)
	li	a4, 100
	addi	a1, a3, 2047
	bltu	a2, a4, .LBB0_5
# %bb.2:
	lw	a5, 1941(a1)
	lw	a6, 1945(a1)
	mv	a1, s0
	li	a2, 0
	li	a3, 0
	li	a4, 0
	call	GeneratePictureParameterSet
	lui	s1, %hi(PicParSet)
	addi	s1, s1, %lo(PicParSet)
	lui	s2, %hi(input)
	ld	a1, %lo(input)(s2)
	ld	a0, 8(s1)
	lui	a2, 1
	addiw	s3, a2, -108
	add	a2, a1, s3
	addi	a1, a1, 2047
	lw	a5, 1941(a1)
	lw	a6, 4(a2)
	li	a2, 1
	li	a3, 1
	li	a4, 1
	mv	a1, s0
	call	GeneratePictureParameterSet
	ld	a1, %lo(input)(s2)
	ld	a0, 16(s1)
	add	s3, a1, s3
	addi	a1, a1, 2047
	lw	a5, 1941(a1)
	lw	a6, 4(s3)
	li	a2, 2
	li	a3, 1
	li	a4, 2
	mv	a1, s0
	j	.LBB0_8
.LBB0_3:
	ld	a1, %lo(input)(s3)
	lw	a2, 4(s0)
	lw	a3, 1904(a1)
	lw	a4, 1908(a1)
	li	a5, 100
	addi	a1, a1, 2047
	bltu	a2, a5, .LBB0_6
# %bb.4:
	lw	a5, 1941(a1)
	lw	a6, 1945(a1)
	mv	a1, s0
	li	a2, 0
	j	.LBB0_8
.LBB0_5:
	lw	a5, 1057(a1)
	mv	a1, s0
	li	a2, 0
	li	a3, 0
	li	a4, 0
	li	a6, 0
	call	GeneratePictureParameterSet
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	lui	s2, %hi(PicParSet)
	addi	s2, s2, %lo(PicParSet)
	ld	a0, 8(s2)
	addi	a1, a1, 2047
	lw	a5, 1057(a1)
	li	a2, 1
	li	a3, 1
	li	a4, 1
	mv	a1, s0
	li	a6, 0
	call	GeneratePictureParameterSet
	ld	a1, %lo(input)(s1)
	ld	a0, 16(s2)
	addi	a1, a1, 2047
	lw	a5, 1057(a1)
	li	a2, 2
	li	a3, 1
	li	a4, 2
	mv	a1, s0
	j	.LBB0_7
.LBB0_6:
	lw	a5, 1057(a1)
	mv	a1, s0
	li	a2, 0
.LBB0_7:
	li	a6, 0
.LBB0_8:
	call	GeneratePictureParameterSet
	lui	a0, %hi(PicParSet)
	ld	a0, %lo(PicParSet)(a0)
	lui	a1, %hi(active_sps)
	sd	s0, %lo(active_sps)(a1)
	lui	a1, %hi(active_pps)
	sd	a0, %lo(active_pps)(a1)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	GenerateParameterSets, .Lfunc_end0-GenerateParameterSets
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GenerateSequenceParameterSet    # -- Begin function GenerateSequenceParameterSet
	.p2align	2
	.type	GenerateSequenceParameterSet,@function
GenerateSequenceParameterSet:           # @GenerateSequenceParameterSet
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB1_18
# %bb.1:
	mv	s0, a0
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a2, 0(a0)
	addi	a1, a0, 2047
	addiw	a3, a2, -100
	sltiu	a4, a3, 45
	lui	a5, 1024
	addiw	a5, a5, 1
	slli	a5, a5, 22
	addi	a5, a5, 1025
	srl	s1, a5, a3
	lw	a3, 4(a0)
	sw	zero, 20(s0)
	sw	zero, 16(s0)
	sw	zero, 12(s0)
	sw	zero, 8(s0)
	lw	a5, 1921(a1)
	and	s1, a4, s1
	sw	a2, 4(s0)
	sw	a3, 24(s0)
	addi	a5, a5, -8
	sw	a5, 72(s0)
	lw	a3, 1949(a1)
	lw	a4, 1925(a1)
	addi	a2, a2, -144
	seqz	a2, a2
	and	a3, a2, a3
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a5, 22
	addiw	a5, a5, 116
	lw	a6, 1953(a1)
	add	a2, a2, a5
	addi	a4, a4, -8
	sw	a3, 324(a2)
	sw	a6, 344(a2)
	lui	a3, %hi(log2_max_frame_num_minus4)
	lw	a3, %lo(log2_max_frame_num_minus4)(a3)
	lui	a5, %hi(log2_max_pic_order_cnt_lsb_minus4)
	lw	a5, %lo(log2_max_pic_order_cnt_lsb_minus4)(a5)
	sw	a4, 76(s0)
	lw	a4, 1833(a1)
	sw	a3, 80(s0)
	sw	a5, 88(s0)
	lw	a3, 0(a2)
	sw	a4, 84(s0)
	lw	a4, 4(a2)
	lw	a5, 12(a2)
	sw	a3, 92(s0)
	lw	a3, 8(a2)
	sw	a4, 96(s0)
	sw	zero, 28(s0)
	sw	a5, 104(s0)
	sw	a3, 100(s0)
	beqz	a5, .LBB1_4
# %bb.2:
	li	a3, 0
	addi	a4, a2, 16
	addi	a5, s0, 108
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a4)
	sw	a6, 0(a5)
	lwu	a6, 12(a2)
	addi	a3, a3, 1
	addi	a5, a5, 4
	addi	a4, a4, 4
	bltu	a3, a6, .LBB1_3
.LBB1_4:
	lw	a3, 36(a0)
	lw	a4, 1505(a1)
	lw	a5, 1509(a1)
	sw	a3, 1132(s0)
	sw	zero, 1136(s0)
	or	a4, a4, a5
	lw	a3, 68(a0)
	lw	a6, 348(a2)
	snez	a7, a4
	seqz	a4, a4
	sw	a4, 1148(s0)
	add	a3, a6, a3
	sraiw	a6, a3, 31
	srliw	a6, a6, 28
	add	a3, a3, a6
	lw	a6, 72(a0)
	lw	a2, 352(a2)
	sraiw	a3, a3, 4
	addi	a3, a3, -1
	sw	a3, 1140(s0)
	add	a2, a2, a6
	sraiw	a6, a2, 31
	srliw	a6, a6, 28
	add	a2, a2, a6
	sraiw	a2, a2, 4
	srlw	a6, a2, a7
	addi	a2, a6, -1
	sw	a2, 1144(s0)
	snez	a2, a5
	lw	a5, 1260(a0)
	lw	a1, 1937(a1)
	lw	a0, 76(a0)
	sw	a2, 1152(s0)
	sw	a5, 1156(s0)
	snez	a1, a1
	addi	a5, a0, -3
	seqz	a5, a5
	and	a1, a1, a5
	sw	a1, 1180(s0)
	sw	a0, 32(s0)
	slli	a0, a3, 4
	addiw	a0, a0, 16
	xori	a1, a4, 5
	sllw	a1, a6, a1
	call	alloc_colocated
	lui	a1, %hi(Co_located)
	sd	a0, %lo(Co_located)(a1)
	beqz	s1, .LBB1_9
# %bb.5:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lwu	a1, 1881(a0)
	andi	a1, a1, 1
	sw	a1, 36(s0)
	lwu	a1, 1885(a0)
	andi	a1, a1, 1
	sw	a1, 40(s0)
	lwu	a1, 1889(a0)
	andi	a1, a1, 1
	sw	a1, 44(s0)
	lwu	a1, 1893(a0)
	andi	a1, a1, 1
	sw	a1, 48(s0)
	lwu	a1, 1897(a0)
	andi	a1, a1, 1
	sw	a1, 52(s0)
	lwu	a1, 1901(a0)
	andi	a1, a1, 1
	sw	a1, 56(s0)
	lwu	a1, 1905(a0)
	andi	a1, a1, 1
	sw	a1, 60(s0)
	lw	a1, 1845(a0)
	beqz	a1, .LBB1_7
# %bb.6:
	lwu	a1, 1909(a0)
	andi	a1, a1, 1
.LBB1_7:
	sw	a1, 64(s0)
	lw	a1, 1845(a0)
	beqz	a1, .LBB1_10
# %bb.8:
	lwu	a0, 1913(a0)
	andi	a0, a0, 1
	sw	a0, 68(s0)
	j	.LBB1_11
.LBB1_9:
	addi	a0, s0, 36
	li	a2, 36
	li	a1, 0
	call	memset
	j	.LBB1_11
.LBB1_10:
	sw	zero, 68(s0)
.LBB1_11:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, 464
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, 4(a0)
	or	a2, a1, a0
	bnez	a2, .LBB1_13
# %bb.12:
	sw	zero, 1160(s0)
	j	.LBB1_17
.LBB1_13:
	li	a2, 1
	lwu	a3, 32(s0)
	sw	a2, 1160(s0)
	sw	zero, 1164(s0)
	sw	zero, 1172(s0)
	slli	a3, a3, 2
	lui	a2, %hi(.L__const.GenerateSequenceParameterSet.SubWidthC)
	addi	a2, a2, %lo(.L__const.GenerateSequenceParameterSet.SubWidthC)
	add	a2, a2, a3
	lw	a4, 0(a2)
	divw	a5, a1, a4
	sw	a5, 1168(s0)
	lui	s1, %hi(.L__const.GenerateSequenceParameterSet.SubHeightC)
	addi	s1, s1, %lo(.L__const.GenerateSequenceParameterSet.SubHeightC)
	add	a3, s1, a3
	lw	a2, 1148(s0)
	lw	a3, 0(a3)
	li	s2, 2
	subw	a2, s2, a2
	mul	a2, a2, a3
	divuw	a3, a0, a2
	mul	a4, a5, a4
	subw	a1, a1, a4
	sw	a3, 1176(s0)
	beqz	a1, .LBB1_15
# %bb.14:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	li	a1, 500
	call	error
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lwu	a1, 32(s0)
	lui	a2, 22
	add	a0, a0, a2
	slli	a1, a1, 2
	add	a1, s1, a1
	lw	a2, 1148(s0)
	lw	a1, 0(a1)
	lw	a0, 468(a0)
	subw	a2, s2, a2
	mul	a2, a2, a1
.LBB1_15:
	remuw	a0, a0, a2
	beqz	a0, .LBB1_17
# %bb.16:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	li	a1, 500
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	error
.LBB1_17:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB1_18:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.GenerateSequenceParameterSet)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.GenerateSequenceParameterSet)
	li	a2, 224
	call	__assert_fail
.Lfunc_end1:
	.size	GenerateSequenceParameterSet, .Lfunc_end1-GenerateSequenceParameterSet
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GeneratePictureParameterSet     # -- Begin function GeneratePictureParameterSet
	.p2align	2
	.type	GeneratePictureParameterSet,@function
GeneratePictureParameterSet:            # @GeneratePictureParameterSet
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	lui	a7, %hi(input)
	ld	s7, %lo(input)(a7)
	lw	a7, 0(s7)
	mv	s1, a6
	mv	s2, a5
	mv	s3, a4
	mv	s4, a3
	mv	s5, a1
	mv	s0, a0
	addi	s8, s7, 2047
	addiw	a0, a7, -100
	sltiu	a1, a0, 45
	lui	a3, 1024
	addiw	a3, a3, 1
	slli	a3, a3, 22
	addi	a3, a3, 1025
	lw	a4, 28(s5)
	srl	a0, a3, a0
	lw	a3, 937(s8)
	and	s6, a1, a0
	sw	a4, 8(s0)
	sw	a2, 4(s0)
	snez	a0, a3
	sw	a0, 12(s0)
	beqz	s6, .LBB2_3
# %bb.1:
	lw	a0, 1845(s8)
	lw	a1, 1881(s8)
	snez	a2, a0
	sw	a2, 16(s0)
	slli	a1, a1, 62
	srli	a1, a1, 63
	sw	a1, 20(s0)
	lw	a1, 1885(s8)
	slli	a1, a1, 62
	srli	a1, a1, 63
	sw	a1, 24(s0)
	lw	a1, 1889(s8)
	slli	a1, a1, 62
	srli	a1, a1, 63
	sw	a1, 28(s0)
	lw	a1, 1893(s8)
	slli	a1, a1, 62
	srli	a1, a1, 63
	sw	a1, 32(s0)
	lw	a1, 1897(s8)
	slli	a1, a1, 62
	srli	a1, a1, 63
	sw	a1, 36(s0)
	lw	a1, 1901(s8)
	slli	a1, a1, 62
	srli	a1, a1, 63
	sw	a1, 40(s0)
	lw	a1, 1905(s8)
	slli	a1, a1, 62
	srli	a1, a1, 63
	sw	a1, 44(s0)
	beqz	a0, .LBB2_4
# %bb.2:
	lw	a0, 1909(s8)
	slli	a0, a0, 62
	srli	a0, a0, 63
	sw	a0, 48(s0)
	lw	a0, 1913(s8)
	slli	a0, a0, 62
	srli	a0, a0, 63
	sw	a0, 52(s0)
	j	.LBB2_5
.LBB2_3:
	addi	a0, s0, 20
	li	a2, 36
	li	a1, 0
	call	memset
	sw	zero, 1845(s8)
	sw	zero, 16(s0)
	j	.LBB2_5
.LBB2_4:
	sw	zero, 48(s0)
	sw	zero, 52(s0)
.LBB2_5:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 200(a0)
	lw	a1, 1777(s8)
	sw	a0, 56(s0)
	sw	a1, 60(s0)
	beqz	a1, .LBB2_12
# %bb.6:
	lw	a0, 1144(s5)
	lw	a1, 1140(s5)
	addi	a0, a0, 1
	addi	a1, a1, 1
	mul	a0, a1, a0
	slli	a0, a0, 32
	srli	a0, a0, 32
	li	a1, 1
	call	calloc
	sd	a0, 176(s0)
	bnez	a0, .LBB2_8
# %bb.7:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
	lui	a0, %hi(input)
	ld	s7, %lo(input)(a0)
.LBB2_8:
	addi	a0, s7, 2047
	lw	a1, 1781(a0)
	li	a2, 6
	bltu	a2, a1, .LBB2_22
# %bb.9:
	slli	a2, a1, 2
	lui	a3, %hi(.LJTI2_0)
	addi	a3, a3, %lo(.LJTI2_0)
	add	a2, a2, a3
	lw	a3, 0(a2)
	li	a2, 64
	jr	a3
.LBB2_10:
	lw	a2, 1817(a0)
	sw	a1, 64(s0)
	lw	a1, 1821(a0)
	sw	a2, 164(s0)
	li	a2, 168
.LBB2_11:
	add	a2, s0, a2
	sw	a1, 0(a2)
.LBB2_12:
	lw	a0, 1148(s5)
	lw	a1, 1132(s5)
	seqz	a0, a0
	sllw	a0, a1, a0
	addi	a0, a0, -1
	sw	a0, 184(s0)
	sw	a0, 188(s0)
	sw	s4, 192(s0)
	sw	s3, 196(s0)
	sd	zero, 200(s0)
	sw	s2, 208(s0)
	bnez	s6, .LBB2_14
# %bb.13:
	mv	s1, s2
.LBB2_14:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	sw	s2, 212(s0)
	sw	s1, 216(s0)
	addi	a1, a0, 2047
	lw	a1, 1549(a1)
	lw	a0, 220(a0)
	sw	a1, 220(s0)
	sw	a0, 224(s0)
	sw	zero, 228(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.LBB2_15:
	lwu	a3, 60(s0)
	li	a1, 2
	sw	a1, 64(s0)
	beqz	a3, .LBB2_12
# %bb.16:
	ld	a1, 1785(a0)
	ld	a0, 1793(a0)
	addi	a2, s0, 132
	slli	a3, a3, 2
	add	a3, a2, a3
.LBB2_17:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	sw	a4, -32(a2)
	lw	a4, 0(a0)
	sw	a4, 0(a2)
	addi	a2, a2, 4
	addi	a0, a0, 4
	addi	a1, a1, 4
	bne	a2, a3, .LBB2_17
	j	.LBB2_12
.LBB2_18:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 72(s7)
	lui	a2, 22
	addiw	a2, a2, 464
	add	a2, a0, a2
	lw	a3, 4(a2)
	li	a0, 0
	li	a4, 6
	sw	a4, 64(s0)
	add	a1, a3, a1
	sraiw	a3, a1, 31
	srliw	a3, a3, 28
	add	a1, a1, a3
	lw	a3, 1148(s5)
	li	a4, 2
	lw	a5, 68(s7)
	lw	a2, 0(a2)
	subw	a4, a4, a3
	sraiw	a1, a1, 4
	divuw	a1, a1, a4
	add	a2, a2, a5
	sraiw	a3, a2, 31
	srliw	a3, a3, 28
	add	a2, a2, a3
	sraiw	a2, a2, 4
	mul	a1, a2, a1
	addi	a1, a1, -1
	sw	a1, 172(s0)
	lui	a1, %hi(input)
.LBB2_19:                               # =>This Inner Loop Header: Depth=1
	ld	a2, %lo(input)(a1)
	addi	a2, a2, 2047
	ld	a2, 1801(a2)
	slli	a3, a0, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	ld	a4, 176(s0)
	lbu	a2, 0(a2)
	add	a3, a4, a3
	sb	a2, 0(a3)
	lw	a2, 172(s0)
	addiw	a0, a0, 1
	bgeu	a2, a0, .LBB2_19
	j	.LBB2_12
.LBB2_20:
	lw	a1, 60(s0)
	ld	a0, 1809(a0)
	li	a2, 0
	sw	zero, 64(s0)
	addi	a3, s0, 68
.LBB2_21:                               # =>This Inner Loop Header: Depth=1
	slli	a4, a2, 32
	srli	a4, a4, 30
	add	a5, a0, a4
	lw	a5, 0(a5)
	add	a4, a3, a4
	addiw	a2, a2, 1
	sw	a5, 0(a4)
	bgeu	a1, a2, .LBB2_21
	j	.LBB2_12
.LBB2_22:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.GeneratePictureParameterSet)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.GeneratePictureParameterSet)
	li	a2, 473
	call	__assert_fail
.Lfunc_end2:
	.size	GeneratePictureParameterSet, .Lfunc_end2-GeneratePictureParameterSet
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_20
	.word	.LBB2_11
	.word	.LBB2_15
	.word	.LBB2_10
	.word	.LBB2_10
	.word	.LBB2_10
	.word	.LBB2_18
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	FreeParameterSets               # -- Begin function FreeParameterSets
	.p2align	2
	.type	FreeParameterSets,@function
FreeParameterSets:                      # @FreeParameterSets
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(PicParSet)
	addi	s0, s0, %lo(PicParSet)
	addi	s1, s0, 2047
	addi	s1, s1, 1
	j	.LBB3_2
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	addi	s0, s0, 8
	beq	s0, s1, .LBB3_4
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	beqz	a0, .LBB3_1
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	call	FreePPS
	sd	zero, 0(s0)
	j	.LBB3_1
.LBB3_4:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	FreeSPS
.Lfunc_end3:
	.size	FreeParameterSets, .Lfunc_end3-FreeParameterSets
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GenerateSeq_parameter_set_NALU  # -- Begin function GenerateSeq_parameter_set_NALU
	.p2align	2
	.type	GenerateSeq_parameter_set_NALU,@function
GenerateSeq_parameter_set_NALU:         # @GenerateSeq_parameter_set_NALU
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	lui	a0, 15
	addiw	a0, a0, 560
	sub	sp, sp, a0
	lui	a0, 16
	addiw	a0, a0, -1536
	call	AllocNALU
	lui	a1, %hi(active_sps)
	ld	a2, %lo(active_sps)(a1)
	mv	s0, a0
	addi	a1, sp, 16
	mv	a0, a2
	call	GenerateSeq_parameter_set_rbsp
	mv	a2, a0
	addi	a0, sp, 16
	li	a3, 7
	li	a4, 3
	li	a6, 1
	mv	a1, s0
	li	a5, 0
	call	RBSPtoNALU
	li	a0, 4
	sw	a0, 0(s0)
	mv	a0, s0
	lui	a1, 15
	addiw	a1, a1, 560
	add	sp, sp, a1
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.Lfunc_end4:
	.size	GenerateSeq_parameter_set_NALU, .Lfunc_end4-GenerateSeq_parameter_set_NALU
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GenerateSeq_parameter_set_rbsp  # -- Begin function GenerateSeq_parameter_set_rbsp
	.p2align	2
	.type	GenerateSeq_parameter_set_rbsp,@function
GenerateSeq_parameter_set_rbsp:         # @GenerateSeq_parameter_set_rbsp
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
	beqz	a1, .LBB5_44
# %bb.1:
	mv	s2, a1
	mv	s1, a0
	li	a0, 1
	li	a1, 48
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB5_3
# %bb.2:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	no_mem_exit
.LBB5_3:
	lw	a2, 4(s1)
	sd	s2, 32(s0)
	li	a0, 8
	sw	a0, 4(s0)
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	li	a0, 8
	mv	a3, s0
	call	u_v
	lw	a1, 8(s1)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	mv	a2, s0
	call	u_1
	lw	a1, 12(s1)
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	mv	a2, s0
	call	u_1
	lw	a1, 16(s1)
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	mv	a2, s0
	call	u_1
	lw	a1, 20(s1)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	mv	a2, s0
	call	u_1
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	li	a0, 4
	li	a2, 0
	mv	a3, s0
	call	u_v
	lw	a2, 24(s1)
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	li	a0, 8
	mv	a3, s0
	call	u_v
	lw	a1, 28(s1)
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	mv	a2, s0
	call	ue_v
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lw	a0, 4(s1)
	addi	a0, a0, -100
	li	a1, 44
	bltu	a1, a0, .LBB5_28
# %bb.4:
	lui	a1, 1024
	addiw	a1, a1, 1
	slli	a1, a1, 22
	addi	a1, a1, 1025
	srl	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB5_28
# %bb.5:
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	lw	a1, 32(s3)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	mv	a2, s0
	call	ue_v
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	s2, 22
	addiw	a1, s2, 436
	add	a0, a0, a1
	lw	a1, 0(a0)
	li	a2, 3
	bne	a1, a2, .LBB5_7
# %bb.6:
	lw	a1, 24(a0)
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	mv	a2, s0
	call	u_1
.LBB5_7:
	lw	a1, 72(s3)
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	mv	a2, s0
	call	ue_v
	lw	a1, 76(s3)
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	mv	a2, s0
	call	ue_v
	ld	a0, %lo(img)(s1)
	add	a0, a0, s2
	lw	a1, 440(a0)
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	mv	a2, s0
	call	u_1
	lw	a1, 36(s3)
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	mv	a2, s0
	call	u_1
	lw	a0, 36(s3)
	beqz	a0, .LBB5_28
# %bb.8:
	li	s4, 0
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	addi	a0, a0, 40
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	li	s8, 127
	lui	s3, %hi(.L.str.7)
	addi	s3, s3, %lo(.L.str.7)
	j	.LBB5_10
.LBB5_9:                                #   in Loop: Header=BB5_10 Depth=1
	addi	s4, s4, 1
	li	a0, 8
	beq	s4, a0, .LBB5_28
.LBB5_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_14 Depth 2
	slli	a0, s4, 2
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	add	s1, s1, a0
	lw	a1, 0(s1)
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	mv	a2, s0
	call	u_1
	lw	a0, 0(s1)
	beqz	a0, .LBB5_9
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	li	a0, 5
	bltu	a0, s4, .LBB5_20
# %bb.12:                               #   in Loop: Header=BB5_10 Depth=1
	slli	s11, s4, 5
	lui	s10, %hi(ScalingList4x4input)
	addi	s10, s10, %lo(ScalingList4x4input)
	add	s10, s10, s11
	lui	a0, %hi(ScalingList4x4)
	addi	a0, a0, %lo(ScalingList4x4)
	add	s11, a0, s11
	slli	s9, s4, 1
	lui	a0, %hi(UseDefaultScalingMatrix4x4Flag)
	addi	a0, a0, %lo(UseDefaultScalingMatrix4x4Flag)
	add	s9, a0, s9
	li	a0, 8
	li	s7, 16
	lui	s6, %hi(ZZ_SCAN)
	addi	s6, s6, %lo(ZZ_SCAN)
	li	s2, 8
	j	.LBB5_14
.LBB5_13:                               #   in Loop: Header=BB5_14 Depth=2
	add	s1, s11, s1
	sh	s2, 0(s1)
	addi	s7, s7, -1
	addi	s6, s6, 1
	beqz	s7, .LBB5_9
.LBB5_14:                               #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s1, 0(s6)
	slli	s1, s1, 1
	beqz	a0, .LBB5_13
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=2
	add	s5, s10, s1
	lh	a0, 0(s5)
	subw	a0, a0, s2
	bge	s8, a0, .LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_14 Depth=2
	li	a1, -256
	j	.LBB5_18
.LBB5_17:                               #   in Loop: Header=BB5_14 Depth=2
	slti	a1, a0, -128
	slli	a1, a1, 8
.LBB5_18:                               #   in Loop: Header=BB5_14 Depth=2
	addw	a1, a0, a1
	mv	a0, s3
	mv	a2, s0
	call	se_v
	lh	a0, 0(s5)
	slli	a1, a0, 48
	srli	a2, a1, 48
	srai	a0, a1, 48
	lh	a3, 0(s9)
	xori	a4, s7, 16
	or	a2, a4, a2
	seqz	a2, a2
	or	a2, a3, a2
	sh	a2, 0(s9)
	beqz	a1, .LBB5_13
# %bb.19:                               #   in Loop: Header=BB5_14 Depth=2
	mv	s2, a0
	j	.LBB5_13
.LBB5_20:                               #   in Loop: Header=BB5_10 Depth=1
	addi	a0, s4, -6
	slli	s11, a0, 7
	lui	s10, %hi(ScalingList8x8input)
	addi	s10, s10, %lo(ScalingList8x8input)
	add	s10, s10, s11
	lui	a1, %hi(ScalingList8x8)
	addi	a1, a1, %lo(ScalingList8x8)
	add	s11, a1, s11
	slli	a0, a0, 1
	lui	s9, %hi(UseDefaultScalingMatrix8x8Flag)
	addi	s9, s9, %lo(UseDefaultScalingMatrix8x8Flag)
	add	s9, s9, a0
	li	a0, 8
	li	s7, 64
	lui	s6, %hi(ZZ_SCAN8)
	addi	s6, s6, %lo(ZZ_SCAN8)
	li	s2, 8
	j	.LBB5_22
.LBB5_21:                               #   in Loop: Header=BB5_22 Depth=2
	add	s5, s11, s5
	sh	s2, 0(s5)
	addi	s7, s7, -1
	addi	s6, s6, 1
	beqz	s7, .LBB5_9
.LBB5_22:                               #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s5, 0(s6)
	slli	s5, s5, 1
	beqz	a0, .LBB5_21
# %bb.23:                               #   in Loop: Header=BB5_22 Depth=2
	add	s1, s10, s5
	lh	a0, 0(s1)
	subw	a0, a0, s2
	bge	s8, a0, .LBB5_25
# %bb.24:                               #   in Loop: Header=BB5_22 Depth=2
	li	a1, -256
	j	.LBB5_26
.LBB5_25:                               #   in Loop: Header=BB5_22 Depth=2
	slti	a1, a0, -128
	slli	a1, a1, 8
.LBB5_26:                               #   in Loop: Header=BB5_22 Depth=2
	addw	a1, a0, a1
	mv	a0, s3
	mv	a2, s0
	call	se_v
	lh	a0, 0(s1)
	slli	a1, a0, 48
	srli	a2, a1, 48
	srai	a0, a1, 48
	lh	a3, 0(s9)
	xori	a4, s7, 64
	or	a2, a4, a2
	seqz	a2, a2
	or	a2, a3, a2
	sh	a2, 0(s9)
	beqz	a1, .LBB5_21
# %bb.27:                               #   in Loop: Header=BB5_22 Depth=2
	mv	s2, a0
	j	.LBB5_21
.LBB5_28:
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	lw	a1, 80(s4)
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	mv	a2, s0
	call	ue_v
	lw	a1, 84(s4)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	mv	a2, s0
	call	ue_v
	lw	a0, 84(s4)
	li	a1, 1
	beq	a0, a1, .LBB5_31
# %bb.29:
	bnez	a0, .LBB5_34
# %bb.30:
	lw	a1, 88(s4)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	mv	a2, s0
	call	ue_v
	j	.LBB5_34
.LBB5_31:
	lw	a1, 92(s4)
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	mv	a2, s0
	call	u_1
	lw	a1, 96(s4)
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	mv	a2, s0
	call	se_v
	lw	a1, 100(s4)
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	mv	a2, s0
	call	se_v
	lw	a1, 104(s4)
	lui	a0, %hi(.L.str.31)
	addi	a0, a0, %lo(.L.str.31)
	mv	a2, s0
	call	ue_v
	lw	a0, 104(s4)
	beqz	a0, .LBB5_34
# %bb.32:
	li	s1, 0
	addi	s3, s4, 108
	lui	s2, %hi(.L.str.32)
	addi	s2, s2, %lo(.L.str.32)
.LBB5_33:                               # =>This Inner Loop Header: Depth=1
	lw	a1, 0(s3)
	mv	a0, s2
	mv	a2, s0
	call	se_v
	lwu	a0, 104(s4)
	addi	s1, s1, 1
	addi	s3, s3, 4
	bltu	s1, a0, .LBB5_33
.LBB5_34:
	lw	a1, 1132(s4)
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	mv	a2, s0
	call	ue_v
	lw	a1, 1136(s4)
	lui	a0, %hi(.L.str.34)
	addi	a0, a0, %lo(.L.str.34)
	mv	a2, s0
	call	u_1
	lw	a1, 1140(s4)
	lui	a0, %hi(.L.str.35)
	addi	a0, a0, %lo(.L.str.35)
	mv	a2, s0
	call	ue_v
	lw	a1, 1144(s4)
	lui	a0, %hi(.L.str.36)
	addi	a0, a0, %lo(.L.str.36)
	mv	a2, s0
	call	ue_v
	lw	a1, 1148(s4)
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	mv	a2, s0
	call	u_1
	lw	a0, 1148(s4)
	bnez	a0, .LBB5_36
# %bb.35:
	lw	a1, 1152(s4)
	lui	a0, %hi(.L.str.38)
	addi	a0, a0, %lo(.L.str.38)
	mv	a2, s0
	call	u_1
.LBB5_36:
	lw	a1, 1156(s4)
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	mv	a2, s0
	call	u_1
	lw	a1, 1160(s4)
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	mv	a2, s0
	call	u_1
	lw	a0, 1160(s4)
	beqz	a0, .LBB5_38
# %bb.37:
	lw	a1, 1164(s4)
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	mv	a2, s0
	call	ue_v
	lw	a1, 1168(s4)
	lui	a0, %hi(.L.str.42)
	addi	a0, a0, %lo(.L.str.42)
	mv	a2, s0
	call	ue_v
	lw	a1, 1172(s4)
	lui	a0, %hi(.L.str.43)
	addi	a0, a0, %lo(.L.str.43)
	mv	a2, s0
	call	ue_v
	lw	a1, 1176(s4)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	mv	a2, s0
	call	ue_v
.LBB5_38:
	lw	a1, 1180(s4)
	lui	a0, %hi(.L.str.45)
	addi	a0, a0, %lo(.L.str.45)
	mv	a2, s0
	call	u_1
	lw	a0, 1180(s4)
	beqz	a0, .LBB5_42
# %bb.39:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1937(a1)
	beqz	a1, .LBB5_43
# %bb.40:
	lw	a0, 76(a0)
	li	a1, 3
	bne	a0, a1, .LBB5_43
# %bb.41:
	lui	a0, %hi(.Lstr.92)
	addi	a0, a0, %lo(.Lstr.92)
	call	puts
	lui	a0, %hi(.L.str.75)
	addi	a0, a0, %lo(.L.str.75)
	li	a1, 0
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.76)
	addi	a0, a0, %lo(.L.str.76)
	li	a1, 0
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.77)
	addi	a0, a0, %lo(.L.str.77)
	li	a1, 1
	mv	a2, s0
	call	u_1
	lui	a1, %hi(.L.str.78)
	addi	a1, a1, %lo(.L.str.78)
	li	a0, 3
	li	a2, 2
	mv	a3, s0
	call	u_v
	lui	a0, %hi(.L.str.79)
	addi	a0, a0, %lo(.L.str.79)
	li	a1, 1
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.80)
	addi	a0, a0, %lo(.L.str.80)
	li	a1, 1
	mv	a2, s0
	call	u_1
	lui	a1, %hi(.L.str.81)
	addi	a1, a1, %lo(.L.str.81)
	li	a0, 8
	li	a2, 2
	mv	a3, s0
	call	u_v
	lui	a1, %hi(.L.str.82)
	addi	a1, a1, %lo(.L.str.82)
	li	a0, 8
	li	a2, 2
	mv	a3, s0
	call	u_v
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	li	a0, 8
	li	a2, 0
	mv	a3, s0
	call	u_v
	lui	a0, %hi(.L.str.84)
	addi	a0, a0, %lo(.L.str.84)
	li	a1, 0
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.85)
	addi	a0, a0, %lo(.L.str.85)
	li	a1, 0
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.86)
	addi	a0, a0, %lo(.L.str.86)
	li	a1, 0
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.87)
	addi	a0, a0, %lo(.L.str.87)
	li	a1, 0
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.88)
	addi	a0, a0, %lo(.L.str.88)
	li	a1, 0
	mv	a2, s0
	call	u_1
	lui	a0, %hi(.L.str.89)
	addi	a0, a0, %lo(.L.str.89)
	li	a1, 0
	mv	a2, s0
	call	u_1
.LBB5_42:
	mv	a0, s0
	call	SODBtoRBSP
	lw	s1, 0(s0)
	mv	a0, s0
	call	free
	mv	a0, s1
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
.LBB5_43:
	lui	a0, %hi(.Lstr.91)
	addi	a0, a0, %lo(.Lstr.91)
	call	puts
	li	a0, -1
	call	exit
.LBB5_44:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp)
	li	a2, 581
	call	__assert_fail
.Lfunc_end5:
	.size	GenerateSeq_parameter_set_rbsp, .Lfunc_end5-GenerateSeq_parameter_set_rbsp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GeneratePic_parameter_set_NALU  # -- Begin function GeneratePic_parameter_set_NALU
	.p2align	2
	.type	GeneratePic_parameter_set_NALU,@function
GeneratePic_parameter_set_NALU:         # @GeneratePic_parameter_set_NALU
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	lui	a1, 15
	addiw	a1, a1, 560
	sub	sp, sp, a1
	mv	s0, a0
	lui	a0, 16
	addiw	a0, a0, -1536
	call	AllocNALU
	slli	s0, s0, 3
	lui	a1, %hi(PicParSet)
	addi	a1, a1, %lo(PicParSet)
	add	a1, a1, s0
	ld	a2, 0(a1)
	mv	s0, a0
	addi	a1, sp, 16
	mv	a0, a2
	call	GeneratePic_parameter_set_rbsp
	mv	a2, a0
	addi	a0, sp, 16
	li	a3, 8
	li	a4, 3
	li	a6, 1
	mv	a1, s0
	li	a5, 0
	call	RBSPtoNALU
	li	a0, 4
	sw	a0, 0(s0)
	mv	a0, s0
	lui	a1, 15
	addiw	a1, a1, 560
	add	sp, sp, a1
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.Lfunc_end6:
	.size	GeneratePic_parameter_set_NALU, .Lfunc_end6-GeneratePic_parameter_set_NALU
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GeneratePic_parameter_set_rbsp  # -- Begin function GeneratePic_parameter_set_rbsp
	.p2align	2
	.type	GeneratePic_parameter_set_rbsp,@function
GeneratePic_parameter_set_rbsp:         # @GeneratePic_parameter_set_rbsp
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
	beqz	a1, .LBB7_50
# %bb.1:
	mv	s2, a1
	mv	s6, a0
	li	a0, 1
	li	a1, 48
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB7_3
# %bb.2:
	lui	a0, %hi(.L.str.46)
	addi	a0, a0, %lo(.L.str.46)
	call	no_mem_exit
.LBB7_3:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sd	s2, 32(s0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 200(a0)
	lw	a1, 4(s6)
	li	a2, 8
	sw	a2, 4(s0)
	sw	a0, 56(s6)
	lui	a0, %hi(.L.str.47)
	addi	a0, a0, %lo(.L.str.47)
	mv	a2, s0
	call	ue_v
	lw	a1, 8(s6)
	lui	a0, %hi(.L.str.48)
	addi	a0, a0, %lo(.L.str.48)
	mv	a2, s0
	call	ue_v
	lw	a1, 12(s6)
	lui	a0, %hi(.L.str.49)
	addi	a0, a0, %lo(.L.str.49)
	mv	a2, s0
	call	u_1
	lw	a1, 56(s6)
	lui	a0, %hi(.L.str.50)
	addi	a0, a0, %lo(.L.str.50)
	mv	a2, s0
	call	u_1
	lw	a1, 60(s6)
	lui	a0, %hi(.L.str.51)
	addi	a0, a0, %lo(.L.str.51)
	mv	a2, s0
	call	ue_v
	lw	a0, 60(s6)
	beqz	a0, .LBB7_21
# %bb.4:
	lw	a1, 64(s6)
	lui	a0, %hi(.L.str.52)
	addi	a0, a0, %lo(.L.str.52)
	mv	a2, s0
	call	ue_v
	lw	a0, 64(s6)
	li	a1, 2
	bge	a1, a0, .LBB7_7
# %bb.5:
	addi	a1, a0, -3
	li	a2, 3
	bgeu	a1, a2, .LBB7_12
# %bb.6:
	lw	a1, 164(s6)
	lui	a0, %hi(.L.str.56)
	addi	a0, a0, %lo(.L.str.56)
	mv	a2, s0
	call	u_1
	lw	a1, 168(s6)
	lui	a0, %hi(.L.str.57)
	addi	a0, a0, %lo(.L.str.57)
	mv	a2, s0
	call	ue_v
	j	.LBB7_21
.LBB7_7:
	beqz	a0, .LBB7_19
# %bb.8:
	li	a1, 2
	bne	a0, a1, .LBB7_21
# %bb.9:
	lw	a0, 60(s6)
	beqz	a0, .LBB7_21
# %bb.10:
	li	s4, 0
	addi	s5, s6, 132
	lui	s2, %hi(.L.str.54)
	addi	s2, s2, %lo(.L.str.54)
	lui	s3, %hi(.L.str.55)
	addi	s3, s3, %lo(.L.str.55)
.LBB7_11:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -32(s5)
	mv	a0, s2
	mv	a2, s0
	call	ue_v
	lw	a1, 0(s5)
	mv	a0, s3
	mv	a2, s0
	call	ue_v
	lwu	a0, 60(s6)
	addi	s4, s4, 1
	addi	s5, s5, 4
	bltu	s4, a0, .LBB7_11
	j	.LBB7_21
.LBB7_12:
	li	a1, 6
	bne	a0, a1, .LBB7_21
# %bb.13:
	lw	a0, 60(s6)
	li	a1, 2
	mv	s2, a0
	bltu	a0, a1, .LBB7_15
# %bb.14:
	li	s2, 2
.LBB7_15:
	li	a1, 3
	bgeu	a1, a0, .LBB7_17
# %bb.16:
	li	s2, 3
.LBB7_17:
	lw	a1, 172(s6)
	lui	a0, %hi(.L.str.58)
	addi	a0, a0, %lo(.L.str.58)
	mv	a2, s0
	call	ue_v
	li	s4, 0
	lui	s3, %hi(.L.str.59)
	addi	s3, s3, %lo(.L.str.59)
.LBB7_18:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 176(s6)
	slli	a1, s4, 32
	srli	a1, a1, 32
	add	a0, a0, a1
	lbu	a2, 0(a0)
	mv	a0, s2
	mv	a1, s3
	mv	a3, s0
	call	u_v
	lw	a0, 172(s6)
	addiw	s4, s4, 1
	bgeu	a0, s4, .LBB7_18
	j	.LBB7_21
.LBB7_19:
	li	s1, 0
	addi	s3, s6, 68
	lui	s2, %hi(.L.str.53)
	addi	s2, s2, %lo(.L.str.53)
.LBB7_20:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s1, 32
	srli	a0, a0, 30
	add	a0, s3, a0
	lw	a1, 0(a0)
	mv	a0, s2
	mv	a2, s0
	call	ue_v
	lw	a0, 60(s6)
	addiw	s1, s1, 1
	bgeu	a0, s1, .LBB7_20
.LBB7_21:
	lw	a1, 184(s6)
	lui	a0, %hi(.L.str.60)
	addi	a0, a0, %lo(.L.str.60)
	mv	a2, s0
	call	ue_v
	lw	a1, 188(s6)
	lui	a0, %hi(.L.str.61)
	addi	a0, a0, %lo(.L.str.61)
	mv	a2, s0
	call	ue_v
	lw	a1, 192(s6)
	lui	a0, %hi(.L.str.62)
	addi	a0, a0, %lo(.L.str.62)
	mv	a2, s0
	call	u_1
	lw	a2, 196(s6)
	lui	a1, %hi(.L.str.63)
	addi	a1, a1, %lo(.L.str.63)
	li	a0, 2
	mv	a3, s0
	call	u_v
	lw	a1, 200(s6)
	lui	a0, %hi(.L.str.64)
	addi	a0, a0, %lo(.L.str.64)
	mv	a2, s0
	call	se_v
	lw	a1, 204(s6)
	lui	a0, %hi(.L.str.65)
	addi	a0, a0, %lo(.L.str.65)
	mv	a2, s0
	call	se_v
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 0(a0)
	addi	s2, a0, -100
	li	a0, 44
	bltu	a0, s2, .LBB7_49
# %bb.22:
	lui	a0, 1024
	addiw	a0, a0, 1
	slli	a0, a0, 22
	addi	a0, a0, 1025
	srl	a0, a0, s2
	andi	a1, a0, 1
	li	a0, 212
	beqz	a1, .LBB7_49
.LBB7_23:
	add	a0, s6, a0
	lw	a1, 0(a0)
	lui	a0, %hi(.L.str.66)
	addi	a0, a0, %lo(.L.str.66)
	mv	a2, s0
	call	se_v
	lw	a1, 220(s6)
	lui	a0, %hi(.L.str.67)
	addi	a0, a0, %lo(.L.str.67)
	mv	a2, s0
	call	u_1
	lw	a1, 224(s6)
	lui	a0, %hi(.L.str.68)
	addi	a0, a0, %lo(.L.str.68)
	mv	a2, s0
	call	u_1
	lw	a1, 228(s6)
	lui	a0, %hi(.L.str.69)
	addi	a0, a0, %lo(.L.str.69)
	mv	a2, s0
	call	u_1
	li	a0, 44
	bltu	a0, s2, .LBB7_28
# %bb.24:
	lui	a0, 1024
	addiw	a0, a0, 1
	slli	a0, a0, 22
	addi	a0, a0, 1025
	srl	a0, a0, s2
	andi	a0, a0, 1
	beqz	a0, .LBB7_28
# %bb.25:
	lw	a1, 16(s6)
	lui	a0, %hi(.L.str.70)
	addi	a0, a0, %lo(.L.str.70)
	mv	a2, s0
	call	u_1
	lw	a1, 20(s6)
	lui	a0, %hi(.L.str.71)
	addi	a0, a0, %lo(.L.str.71)
	mv	a2, s0
	call	u_1
	lw	a0, 20(s6)
	beqz	a0, .LBB7_27
# %bb.26:
	lwu	a0, 16(s6)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 524288
	addiw	a1, a1, -3
	bne	a0, a1, .LBB7_29
.LBB7_27:
	lw	a1, 216(s6)
	lui	a0, %hi(.L.str.73)
	addi	a0, a0, %lo(.L.str.73)
	mv	a2, s0
	call	se_v
.LBB7_28:
	mv	a0, s0
	call	SODBtoRBSP
	lw	s1, 0(s0)
	mv	a0, s0
	call	free
	mv	a0, s1
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
.LBB7_29:
	li	s4, 0
	addi	a0, s6, 24
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	s11, 127
	lui	s3, %hi(.L.str.7)
	addi	s3, s3, %lo(.L.str.7)
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	j	.LBB7_31
.LBB7_30:                               #   in Loop: Header=BB7_31 Depth=1
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	lw	a0, 16(s6)
	addi	s4, s4, 1
	slli	a0, a0, 1
	addi	a0, a0, 6
	slli	a0, a0, 32
	srli	a0, a0, 32
	bgeu	s4, a0, .LBB7_27
.LBB7_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_43 Depth 2
                                        #     Child Loop BB7_35 Depth 2
	slli	a0, s4, 2
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	add	s1, s1, a0
	lw	a1, 0(s1)
	lui	a0, %hi(.L.str.72)
	addi	a0, a0, %lo(.L.str.72)
	mv	a2, s0
	call	u_1
	lw	a0, 0(s1)
	beqz	a0, .LBB7_30
# %bb.32:                               #   in Loop: Header=BB7_31 Depth=1
	li	a0, 5
	bltu	a0, s4, .LBB7_41
# %bb.33:                               #   in Loop: Header=BB7_31 Depth=1
	slli	s8, s4, 5
	lui	s7, %hi(ScalingList4x4input)
	addi	s7, s7, %lo(ScalingList4x4input)
	add	s7, s7, s8
	lui	a0, %hi(ScalingList4x4)
	addi	a0, a0, %lo(ScalingList4x4)
	add	s8, a0, s8
	slli	s9, s4, 1
	lui	a0, %hi(UseDefaultScalingMatrix4x4Flag)
	addi	a0, a0, %lo(UseDefaultScalingMatrix4x4Flag)
	add	s9, a0, s9
	li	a0, 8
	li	s10, 16
	lui	s6, %hi(ZZ_SCAN)
	addi	s6, s6, %lo(ZZ_SCAN)
	li	s2, 8
	j	.LBB7_35
.LBB7_34:                               #   in Loop: Header=BB7_35 Depth=2
	add	s5, s8, s5
	sh	s2, 0(s5)
	addi	s10, s10, -1
	addi	s6, s6, 1
	beqz	s10, .LBB7_30
.LBB7_35:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s5, 0(s6)
	slli	s5, s5, 1
	beqz	a0, .LBB7_34
# %bb.36:                               #   in Loop: Header=BB7_35 Depth=2
	add	s1, s7, s5
	lh	a0, 0(s1)
	subw	a0, a0, s2
	bge	s11, a0, .LBB7_38
# %bb.37:                               #   in Loop: Header=BB7_35 Depth=2
	li	a1, -256
	j	.LBB7_39
.LBB7_38:                               #   in Loop: Header=BB7_35 Depth=2
	slti	a1, a0, -128
	slli	a1, a1, 8
.LBB7_39:                               #   in Loop: Header=BB7_35 Depth=2
	addw	a1, a0, a1
	mv	a0, s3
	mv	a2, s0
	call	se_v
	lh	a0, 0(s1)
	slli	a1, a0, 48
	srli	a2, a1, 48
	srai	a0, a1, 48
	lh	a3, 0(s9)
	xori	a4, s10, 16
	or	a2, a4, a2
	seqz	a2, a2
	or	a2, a3, a2
	sh	a2, 0(s9)
	beqz	a1, .LBB7_34
# %bb.40:                               #   in Loop: Header=BB7_35 Depth=2
	mv	s2, a0
	j	.LBB7_34
.LBB7_41:                               #   in Loop: Header=BB7_31 Depth=1
	addi	a0, s4, -6
	slli	s8, a0, 7
	lui	s7, %hi(ScalingList8x8input)
	addi	s7, s7, %lo(ScalingList8x8input)
	add	s7, s7, s8
	lui	a1, %hi(ScalingList8x8)
	addi	a1, a1, %lo(ScalingList8x8)
	add	s8, a1, s8
	slli	a0, a0, 1
	lui	s9, %hi(UseDefaultScalingMatrix8x8Flag)
	addi	s9, s9, %lo(UseDefaultScalingMatrix8x8Flag)
	add	s9, s9, a0
	li	a0, 8
	li	s10, 64
	lui	s6, %hi(ZZ_SCAN8)
	addi	s6, s6, %lo(ZZ_SCAN8)
	li	s2, 8
	j	.LBB7_43
.LBB7_42:                               #   in Loop: Header=BB7_43 Depth=2
	add	s1, s8, s1
	sh	s2, 0(s1)
	addi	s10, s10, -1
	addi	s6, s6, 1
	beqz	s10, .LBB7_30
.LBB7_43:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s1, 0(s6)
	slli	s1, s1, 1
	beqz	a0, .LBB7_42
# %bb.44:                               #   in Loop: Header=BB7_43 Depth=2
	add	s5, s7, s1
	lh	a0, 0(s5)
	subw	a0, a0, s2
	bge	s11, a0, .LBB7_46
# %bb.45:                               #   in Loop: Header=BB7_43 Depth=2
	li	a1, -256
	j	.LBB7_47
.LBB7_46:                               #   in Loop: Header=BB7_43 Depth=2
	slti	a1, a0, -128
	slli	a1, a1, 8
.LBB7_47:                               #   in Loop: Header=BB7_43 Depth=2
	addw	a1, a0, a1
	mv	a0, s3
	mv	a2, s0
	call	se_v
	lh	a0, 0(s5)
	slli	a1, a0, 48
	srli	a2, a1, 48
	srai	a0, a1, 48
	lh	a3, 0(s9)
	xori	a4, s10, 64
	or	a2, a4, a2
	seqz	a2, a2
	or	a2, a3, a2
	sh	a2, 0(s9)
	beqz	a1, .LBB7_42
# %bb.48:                               #   in Loop: Header=BB7_43 Depth=2
	mv	s2, a0
	j	.LBB7_42
.LBB7_49:
	li	a0, 208
	j	.LBB7_23
.LBB7_50:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp)
	li	a2, 709
	call	__assert_fail
.Lfunc_end7:
	.size	GeneratePic_parameter_set_rbsp, .Lfunc_end7-GeneratePic_parameter_set_rbsp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Scaling_List                    # -- Begin function Scaling_List
	.p2align	2
	.type	Scaling_List,@function
Scaling_List:                           # @Scaling_List
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
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	blez	a2, .LBB8_11
# %bb.1:
	mv	s0, a4
	mv	s1, a3
	mv	s2, a1
	mv	s5, a0
	li	s6, 16
	bne	a2, s6, .LBB8_13
# %bb.2:                                # %.preheader
	li	s4, 0
	li	a1, 8
	lui	s7, %hi(ZZ_SCAN)
	addi	s7, s7, %lo(ZZ_SCAN)
	li	s8, 127
	lui	s3, %hi(.L.str.7)
	addi	s3, s3, %lo(.L.str.7)
	li	s9, 8
	j	.LBB8_5
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	addw	s4, a0, s4
.LBB8_4:                                #   in Loop: Header=BB8_5 Depth=1
	add	s10, s2, s10
	sh	s9, 0(s10)
	addi	s6, s6, -1
	addi	s7, s7, 1
	beqz	s6, .LBB8_12
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	lbu	s10, 0(s7)
	slli	s10, s10, 1
	beqz	a1, .LBB8_4
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	add	s11, s5, s10
	lh	a0, 0(s11)
	subw	a0, a0, s9
	bge	s8, a0, .LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	li	a1, -256
	j	.LBB8_9
.LBB8_8:                                #   in Loop: Header=BB8_5 Depth=1
	slti	a1, a0, -128
	slli	a1, a1, 8
.LBB8_9:                                #   in Loop: Header=BB8_5 Depth=1
	addw	a1, a0, a1
	mv	a0, s3
	mv	a2, s0
	call	se_v
	lh	a1, 0(s11)
	slli	a2, a1, 48
	srli	a3, a2, 48
	srai	a1, a2, 48
	lh	a4, 0(s1)
	xori	a5, s6, 16
	or	a3, a5, a3
	seqz	a3, a3
	or	a3, a4, a3
	sh	a3, 0(s1)
	beqz	a2, .LBB8_3
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	mv	s9, a1
	j	.LBB8_3
.LBB8_11:
	li	s4, 0
.LBB8_12:
	mv	a0, s4
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
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.LBB8_13:
	li	s6, 0
	li	s4, 0
	slli	a2, a2, 32
	srli	a2, a2, 32
	neg	s7, a2
	li	a1, 8
	lui	s8, %hi(ZZ_SCAN8)
	addi	s8, s8, %lo(ZZ_SCAN8)
	lui	s9, %hi(.L.str.7)
	addi	s9, s9, %lo(.L.str.7)
	li	s10, 8
	j	.LBB8_16
.LBB8_14:                               #   in Loop: Header=BB8_16 Depth=1
	addw	s4, a0, s4
.LBB8_15:                               #   in Loop: Header=BB8_16 Depth=1
	add	s11, s2, s11
	sh	s10, 0(s11)
	addi	s6, s6, -1
	addi	s8, s8, 1
	beq	s7, s6, .LBB8_12
.LBB8_16:                               # =>This Inner Loop Header: Depth=1
	lbu	s11, 0(s8)
	slli	s11, s11, 1
	beqz	a1, .LBB8_15
# %bb.17:                               #   in Loop: Header=BB8_16 Depth=1
	add	s3, s5, s11
	lh	a0, 0(s3)
	subw	a0, a0, s10
	li	a1, 127
	bge	a1, a0, .LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_16 Depth=1
	li	a1, -256
	j	.LBB8_20
.LBB8_19:                               #   in Loop: Header=BB8_16 Depth=1
	slti	a1, a0, -128
	slli	a1, a1, 8
.LBB8_20:                               #   in Loop: Header=BB8_16 Depth=1
	addw	a1, a0, a1
	mv	a0, s9
	mv	a2, s0
	call	se_v
	lh	a1, 0(s3)
	slli	a1, a1, 48
	srli	a2, a1, 48
	lh	a3, 0(s1)
	srai	a1, a1, 48
	or	a4, s6, a2
	seqz	a4, a4
	or	a3, a3, a4
	sh	a3, 0(s1)
	beqz	a2, .LBB8_14
# %bb.21:                               #   in Loop: Header=BB8_16 Depth=1
	mv	s10, a1
	j	.LBB8_14
.Lfunc_end8:
	.size	Scaling_List, .Lfunc_end8-Scaling_List
                                        # -- End function
	.option	pop
	.type	PicParSet,@object               # @PicParSet
	.bss
	.globl	PicParSet
	.p2align	3, 0x0
PicParSet:
	.zero	2048
	.size	PicParSet, 2048

	.type	.L__const.GenerateSequenceParameterSet.SubWidthC,@object # @__const.GenerateSequenceParameterSet.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.GenerateSequenceParameterSet.SubWidthC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.L__const.GenerateSequenceParameterSet.SubWidthC, 16

	.type	.L__const.GenerateSequenceParameterSet.SubHeightC,@object # @__const.GenerateSequenceParameterSet.SubHeightC
	.p2align	2, 0x0
.L__const.GenerateSequenceParameterSet.SubHeightC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.GenerateSequenceParameterSet.SubHeightC, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sps != NULL"
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/parset.c"
	.size	.L.str.1, 13

	.type	.L__PRETTY_FUNCTION__.GenerateSequenceParameterSet,@object # @__PRETTY_FUNCTION__.GenerateSequenceParameterSet
.L__PRETTY_FUNCTION__.GenerateSequenceParameterSet:
	.asciz	"void GenerateSequenceParameterSet(seq_parameter_set_rbsp_t *, int)"
	.size	.L__PRETTY_FUNCTION__.GenerateSequenceParameterSet, 67

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"automatic frame cropping (width) not possible"
	.size	.L.str.2, 46

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"automatic frame cropping (height) not possible"
	.size	.L.str.3, 47

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"GeneratePictureParameterSet: slice_group_id"
	.size	.L.str.4, 44

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"0==1"
	.size	.L.str.6, 5

	.type	.L__PRETTY_FUNCTION__.GeneratePictureParameterSet,@object # @__PRETTY_FUNCTION__.GeneratePictureParameterSet
.L__PRETTY_FUNCTION__.GeneratePictureParameterSet:
	.asciz	"void GeneratePictureParameterSet(pic_parameter_set_rbsp_t *, seq_parameter_set_rbsp_t *, int, int, int, int, int)"
	.size	.L__PRETTY_FUNCTION__.GeneratePictureParameterSet, 114

	.type	ZZ_SCAN,@object                 # @ZZ_SCAN
	.section	.rodata.cst16,"aM",@progbits,16
ZZ_SCAN:
	.ascii	"\000\001\004\b\005\002\003\006\t\f\r\n\007\013\016\017"
	.size	ZZ_SCAN, 16

	.type	ZZ_SCAN8,@object                # @ZZ_SCAN8
	.section	.rodata,"a",@progbits
ZZ_SCAN8:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>?"
	.size	ZZ_SCAN8, 64

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"   : delta_sl   "
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"rbsp != NULL"
	.size	.L.str.8, 13

	.type	.L__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp,@object # @__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp
.L__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp:
	.asciz	"int GenerateSeq_parameter_set_rbsp(seq_parameter_set_rbsp_t *, unsigned char *)"
	.size	.L__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp, 80

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SeqParameterSet:bitstream"
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SPS: profile_idc"
	.size	.L.str.10, 17

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SPS: constrained_set0_flag"
	.size	.L.str.11, 27

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SPS: constrained_set1_flag"
	.size	.L.str.12, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SPS: constrained_set2_flag"
	.size	.L.str.13, 27

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SPS: constrained_set3_flag"
	.size	.L.str.14, 27

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SPS: reserved_zero_4bits"
	.size	.L.str.15, 25

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SPS: level_idc"
	.size	.L.str.16, 15

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SPS: seq_parameter_set_id"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SPS: chroma_format_idc"
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SPS: residue_transform_flag"
	.size	.L.str.19, 28

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SPS: bit_depth_luma_minus8"
	.size	.L.str.20, 27

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SPS: bit_depth_chroma_minus8"
	.size	.L.str.21, 29

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"SPS: lossless_qpprime_y_zero_flag"
	.size	.L.str.22, 34

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SPS: seq_scaling_matrix_present_flag"
	.size	.L.str.23, 37

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SPS: seq_scaling_list_present_flag"
	.size	.L.str.24, 35

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"SPS: log2_max_frame_num_minus4"
	.size	.L.str.25, 31

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SPS: pic_order_cnt_type"
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SPS: log2_max_pic_order_cnt_lsb_minus4"
	.size	.L.str.27, 39

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SPS: delta_pic_order_always_zero_flag"
	.size	.L.str.28, 38

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SPS: offset_for_non_ref_pic"
	.size	.L.str.29, 28

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SPS: offset_for_top_to_bottom_field"
	.size	.L.str.30, 36

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SPS: num_ref_frames_in_pic_order_cnt_cycle"
	.size	.L.str.31, 43

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"SPS: offset_for_ref_frame"
	.size	.L.str.32, 26

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SPS: num_ref_frames"
	.size	.L.str.33, 20

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"SPS: gaps_in_frame_num_value_allowed_flag"
	.size	.L.str.34, 42

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"SPS: pic_width_in_mbs_minus1"
	.size	.L.str.35, 29

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"SPS: pic_height_in_map_units_minus1"
	.size	.L.str.36, 36

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"SPS: frame_mbs_only_flag"
	.size	.L.str.37, 25

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"SPS: mb_adaptive_frame_field_flag"
	.size	.L.str.38, 34

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"SPS: direct_8x8_inference_flag"
	.size	.L.str.39, 31

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"SPS: frame_cropping_flag"
	.size	.L.str.40, 25

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"SPS: frame_cropping_rect_left_offset"
	.size	.L.str.41, 37

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"SPS: frame_cropping_rect_right_offset"
	.size	.L.str.42, 38

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"SPS: frame_cropping_rect_top_offset"
	.size	.L.str.43, 36

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"SPS: frame_cropping_rect_bottom_offset"
	.size	.L.str.44, 39

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"SPS: vui_parameters_present_flag"
	.size	.L.str.45, 33

	.type	.L__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp,@object # @__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp
.L__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp:
	.asciz	"int GeneratePic_parameter_set_rbsp(pic_parameter_set_rbsp_t *, unsigned char *)"
	.size	.L__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp, 80

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"PicParameterSet:bitstream"
	.size	.L.str.46, 26

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"PPS: pic_parameter_set_id"
	.size	.L.str.47, 26

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"PPS: seq_parameter_set_id"
	.size	.L.str.48, 26

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"PPS: entropy_coding_mode_flag"
	.size	.L.str.49, 30

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"PPS: pic_order_present_flag"
	.size	.L.str.50, 28

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"PPS: num_slice_groups_minus1"
	.size	.L.str.51, 29

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"PPS: slice_group_map_type"
	.size	.L.str.52, 26

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"PPS: run_length_minus1[i]"
	.size	.L.str.53, 26

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"PPS: top_left[i]"
	.size	.L.str.54, 17

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"PPS: bottom_right[i]"
	.size	.L.str.55, 21

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"PPS: slice_group_change_direction_flag"
	.size	.L.str.56, 39

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"PPS: slice_group_change_rate_minus1"
	.size	.L.str.57, 36

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"PPS: pic_size_in_map_units_minus1"
	.size	.L.str.58, 34

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"PPS: >slice_group_id[i]"
	.size	.L.str.59, 24

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"PPS: num_ref_idx_l0_active_minus1"
	.size	.L.str.60, 34

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"PPS: num_ref_idx_l1_active_minus1"
	.size	.L.str.61, 34

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"PPS: weighted_pred_flag"
	.size	.L.str.62, 24

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"PPS: weighted_bipred_idc"
	.size	.L.str.63, 25

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"PPS: pic_init_qp_minus26"
	.size	.L.str.64, 25

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"PPS: pic_init_qs_minus26"
	.size	.L.str.65, 25

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"PPS: chroma_qp_index_offset"
	.size	.L.str.66, 28

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"PPS: deblocking_filter_control_present_flag"
	.size	.L.str.67, 44

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"PPS: constrained_intra_pred_flag"
	.size	.L.str.68, 33

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"PPS: redundant_pic_cnt_present_flag"
	.size	.L.str.69, 36

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"PPS: transform_8x8_mode_flag"
	.size	.L.str.70, 29

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"PPS: pic_scaling_matrix_present_flag"
	.size	.L.str.71, 37

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"PPS: pic_scaling_list_present_flag"
	.size	.L.str.72, 35

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"PPS: second_chroma_qp_index_offset"
	.size	.L.str.73, 35

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"VUI: aspect_ratio_info_present_flag"
	.size	.L.str.75, 36

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"VUI: overscan_info_present_flag"
	.size	.L.str.76, 32

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"VUI: video_signal_type_present_flag"
	.size	.L.str.77, 36

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"VUI: video format"
	.size	.L.str.78, 18

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"VUI: video_full_range_flag"
	.size	.L.str.79, 27

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"VUI: color_description_present_flag"
	.size	.L.str.80, 36

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"VUI: colour primaries"
	.size	.L.str.81, 22

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"VUI: transfer characteristics"
	.size	.L.str.82, 30

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"VUI: matrix coefficients"
	.size	.L.str.83, 25

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"VUI: chroma_loc_info_present_flag"
	.size	.L.str.84, 34

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"VUI: timing_info_present_flag"
	.size	.L.str.85, 30

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"VUI: nal_hrd_parameters_present_flag"
	.size	.L.str.86, 37

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"VUI: vcl_hrd_parameters_present_flag"
	.size	.L.str.87, 37

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"VUI: pic_struc_present_flag"
	.size	.L.str.88, 28

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"VUI: bitstream_restriction_flag"
	.size	.L.str.89, 32

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Parset.c: slice_group_map_type invalid, default"
	.size	.Lstr, 48

	.type	.Lstr.91,@object                # @str.91
.Lstr.91:
	.asciz	"Sequence Parameter VUI not yet implemented, this should never happen, exit"
	.size	.Lstr.91, 75

	.type	.Lstr.92,@object                # @str.92
.Lstr.92:
	.asciz	"test: writing Sequence Parameter VUI to signal RGB format"
	.size	.Lstr.92, 58

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
