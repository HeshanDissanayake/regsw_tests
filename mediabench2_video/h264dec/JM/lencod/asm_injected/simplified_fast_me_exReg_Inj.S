	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"simplified_fast_me.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_init_FME             # -- Begin function simplified_init_FME
	.p2align	2
	.type	simplified_init_FME,@function
simplified_init_FME:                    # @simplified_init_FME
# %bb.0:
	lui	a0, %hi(SymmetricalCrossSearchThreshold1)
	li	a1, 800
	sh	a1, %lo(SymmetricalCrossSearchThreshold1)(a0)
	lui	a0, %hi(SymmetricalCrossSearchThreshold2)
	lui	a1, 2
	addi	a1, a1, -1192
	sh	a1, %lo(SymmetricalCrossSearchThreshold2)(a0)
	lui	a0, %hi(ConvergeThreshold)
	li	a1, 1000
	sh	a1, %lo(ConvergeThreshold)(a0)
	lui	a0, %hi(SubPelThreshold1)
	sh	a1, %lo(SubPelThreshold1)(a0)
	lui	a0, %hi(SubPelThreshold3)
	li	a1, 400
	sh	a1, %lo(SubPelThreshold3)(a0)
	ret
.Lfunc_end0:
	.size	simplified_init_FME, .Lfunc_end0-simplified_init_FME
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_get_mem_FME          # -- Begin function simplified_get_mem_FME
	.p2align	2
	.type	simplified_get_mem_FME,@function
simplified_get_mem_FME:                 # @simplified_get_mem_FME
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	s2, %lo(img)(s0)
	lw	s1, 52(s2)
	srai	a0, s1, 4
	addi	a0, a0, 1
	li	a1, 1
	call	calloc
	lui	a1, %hi(simplified_flag_intra)
	sd	a0, %lo(simplified_flag_intra)(a1)
	bnez	a0, .LBB1_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
	ld	s2, %lo(img)(s0)
	lw	s1, 52(s2)
.LBB1_2:
	lw	a0, 60(s2)
	slli	a1, a0, 1
	srli	a1, a1, 62
	add	a0, a0, a1
	sraiw	a2, a0, 2
	sraiw	a0, s1, 31
	srliw	a0, a0, 30
	add	a0, s1, a0
	sraiw	a3, a0, 2
	lui	a0, %hi(simplified_fastme_l0_cost)
	addi	a0, a0, %lo(simplified_fastme_l0_cost)
	li	a1, 9
	call	get_mem3Dint
	ld	a1, %lo(img)(s0)
	lw	a2, 60(a1)
	mv	s0, a0
	slli	a0, a2, 1
	lw	a1, 52(a1)
	srli	a0, a0, 62
	add	a0, a2, a0
	sraiw	a2, a0, 2
	slli	a0, a1, 1
	srli	a0, a0, 62
	add	a0, a1, a0
	sraiw	a3, a0, 2
	lui	a0, %hi(simplified_fastme_l1_cost)
	addi	a0, a0, %lo(simplified_fastme_l1_cost)
	li	a1, 9
	call	get_mem3Dint
	add	s0, a0, s0
	lui	a0, %hi(simplified_SearchState)
	addi	a0, a0, %lo(simplified_SearchState)
	li	a1, 7
	li	a2, 7
	call	get_mem2D
	addw	a0, s0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	simplified_get_mem_FME, .Lfunc_end1-simplified_get_mem_FME
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_free_mem_FME         # -- Begin function simplified_free_mem_FME
	.p2align	2
	.type	simplified_free_mem_FME,@function
simplified_free_mem_FME:                # @simplified_free_mem_FME
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(simplified_fastme_l0_cost)
	ld	a0, %lo(simplified_fastme_l0_cost)(a0)
	li	a1, 9
	call	free_mem3Dint
	lui	a0, %hi(simplified_fastme_l1_cost)
	ld	a0, %lo(simplified_fastme_l1_cost)(a0)
	li	a1, 9
	call	free_mem3Dint
	lui	a0, %hi(simplified_SearchState)
	ld	a0, %lo(simplified_SearchState)(a0)
	call	free_mem2D
	lui	a0, %hi(simplified_flag_intra)
	ld	a0, %lo(simplified_flag_intra)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end2:
	.size	simplified_free_mem_FME, .Lfunc_end2-simplified_free_mem_FME
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_partial_SAD_calculate # -- Begin function simplified_partial_SAD_calculate
	.p2align	2
	.type	simplified_partial_SAD_calculate,@function
simplified_partial_SAD_calculate:       # @simplified_partial_SAD_calculate
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
	mv	s0, a7
	blez	a4, .LBB3_11
# %bb.1:
	mv	s8, a6
	mv	s3, a5
	mv	s5, a4
	mv	s2, a3
	mv	s1, a2
	mv	s4, a0
	ld	s7, 128(sp)
	ld	s6, 120(sp)
	ld	s10, 112(sp)
	blez	a6, .LBB3_7
# %bb.2:                                # %.preheader
	mv	s9, a1
	li	a0, 0
	li	s11, 0
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a5, 52(a1)
	addw	a2, a0, s7
	mv	a0, s3
	mv	a1, s4
	mv	a3, s6
	mv	a4, s2
	jalr	s1
	slli	a1, s11, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	add	a1, s9, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	li	a3, 0
.LBB3_4:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a4, 0(a1)
	lhu	a5, 0(a0)
	lhu	a6, 2(a1)
	lhu	a7, 2(a0)
	lhu	t0, 4(a1)
	lhu	t1, 4(a0)
	lhu	t2, 6(a1)
	lhu	t3, 6(a0)
	sub	a4, a4, a5
	sub	a5, a6, a7
	sub	a6, t0, t1
	sub	a7, t2, t3
	slli	a4, a4, 2
	add	a4, a2, a4
	lw	a4, 0(a4)
	slli	a5, a5, 2
	add	a5, a2, a5
	lw	a5, 0(a5)
	slli	a6, a6, 2
	add	a6, a2, a6
	lw	a6, 0(a6)
	slli	a7, a7, 2
	add	a7, a2, a7
	lw	a7, 0(a7)
	add	a4, a4, s0
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s0, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	blt	a4, s8, .LBB3_4
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	bge	s0, s10, .LBB3_11
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	addi	s11, s11, 1
	slli	a0, s11, 48
	srli	a0, a0, 48
	blt	a0, s5, .LBB3_3
	j	.LBB3_11
.LBB3_7:
	bge	s0, s10, .LBB3_10
# %bb.8:                                # %.preheader1
	li	a0, 0
	li	s8, 0
	lui	s9, %hi(img)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(img)(s9)
	lw	a5, 52(a1)
	addw	a2, a0, s7
	mv	a0, s3
	mv	a1, s4
	mv	a3, s6
	mv	a4, s2
	jalr	s1
	addi	s8, s8, 1
	slli	a0, s8, 48
	srli	a0, a0, 48
	bltu	a0, s5, .LBB3_9
	j	.LBB3_11
.LBB3_10:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a5, 52(a0)
	mv	a0, s3
	mv	a1, s4
	mv	a2, s7
	mv	a3, s6
	mv	a4, s2
	jalr	s1
.LBB3_11:
	mv	a0, s0
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
.Lfunc_end3:
	.size	simplified_partial_SAD_calculate, .Lfunc_end3-simplified_partial_SAD_calculate
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_add_up_SAD_quarter_pel # -- Begin function simplified_add_up_SAD_quarter_pel
	.p2align	2
	.type	simplified_add_up_SAD_quarter_pel,@function
simplified_add_up_SAD_quarter_pel:      # @simplified_add_up_SAD_quarter_pel
# %bb.0:
	addi	sp, sp, -1328
	sd	ra, 1320(sp)                    # 8-byte Folded Spill
	sd	s0, 1312(sp)                    # 8-byte Folded Spill
	sd	s1, 1304(sp)                    # 8-byte Folded Spill
	sd	s2, 1296(sp)                    # 8-byte Folded Spill
	sd	s3, 1288(sp)                    # 8-byte Folded Spill
	sd	s4, 1280(sp)                    # 8-byte Folded Spill
	sd	s5, 1272(sp)                    # 8-byte Folded Spill
	sd	s6, 1264(sp)                    # 8-byte Folded Spill
	sd	s7, 1256(sp)                    # 8-byte Folded Spill
	sd	s8, 1248(sp)                    # 8-byte Folded Spill
	sd	s9, 1240(sp)                    # 8-byte Folded Spill
	sd	s10, 1232(sp)                   # 8-byte Folded Spill
	sd	s11, 1224(sp)                   # 8-byte Folded Spill
	ld	t0, 1352(sp)
	mv	s3, a4
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	li	a0, 3
	li	t1, 64
	beq	t0, a0, .LBB4_2
# %bb.1:
	li	t1, 128
.LBB4_2:
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a1, 192(a0)
	beqz	a1, .LBB4_5
# %bb.3:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	beqz	a1, .LBB4_7
# %bb.4:
	li	a2, 3
	beq	a1, a2, .LBB4_7
.LBB4_5:
	lw	a0, 196(a0)
	beqz	a0, .LBB4_9
# %bb.6:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 1
	bne	a0, a1, .LBB4_9
.LBB4_7:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1912(a0)
	beqz	a0, .LBB4_9
# %bb.8:
	lui	a0, 2
	addiw	a0, a0, -1736
	j	.LBB4_10
.LBB4_9:
	lui	a0, 2
	addiw	a0, a0, -1744
.LBB4_10:
	ld	a1, 1344(sp)
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	lw	s6, 1328(sp)
	sd	t0, 56(sp)                      # 8-byte Folded Spill
	blez	a3, .LBB4_19
# %bb.11:
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	blez	a1, .LBB4_19
# %bb.12:                               # %.preheader
	lui	a1, 2
	addiw	a1, a1, -1800
	add	a1, a6, a1
	lw	a2, 0(a1)
	lw	a1, 4(a1)
	li	t0, 0
	slli	a2, a2, 2
	slli	a1, a1, 2
	ld	t2, 1336(sp)
	sd	t2, 72(sp)                      # 8-byte Folded Spill
	addiw	s7, a2, 28
	addiw	s8, a1, 28
	add	a0, a6, a0
	ld	s9, 0(a0)
	lui	s11, %hi(get_line)
	sd	a7, 48(sp)                      # 8-byte Folded Spill
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	sd	t1, 16(sp)                      # 8-byte Folded Spill
	j	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	t0, a1, 4
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	ld	t1, 16(sp)                      # 8-byte Folded Reload
	bge	a0, a3, .LBB4_19
.LBB4_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	li	s0, 0
	li	s4, 0
	li	s5, 0
	sltiu	a0, t0, 8
	addi	a0, a0, -1
	and	a0, a0, t1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	slli	a0, t0, 2
	addw	s10, a0, a5
	addiw	a0, s10, 4
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 8
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 12
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	sd	t0, 64(sp)                      # 8-byte Folded Spill
	slli	a0, t0, 3
	add	s2, a7, a0
	andi	a0, a0, 32
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	j	.LBB4_17
.LBB4_15:                               #   in Loop: Header=BB4_17 Depth=2
	andi	a0, s4, 4
	sltiu	a1, s5, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 136
	add	a1, a6, a0
	lw	a2, 1172(sp)
	lw	a3, 1168(sp)
	lw	a4, 1164(sp)
	lw	a5, 1160(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 1176
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 64
	add	a1, a6, a1
	addi	a5, sp, 1192
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a0, a0, 96
	add	a0, a6, a0
	addi	a4, sp, 1208
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB4_16:                               #   in Loop: Header=BB4_17 Depth=2
	addi	s5, s5, 4
	addiw	s4, s4, 4
	addiw	s3, s3, 16
	addi	s0, s0, 8
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	bge	s4, a0, .LBB4_13
.LBB4_17:                               #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s1, 0(s2)
	ld	a5, %lo(get_line)(s11)
	mv	a0, s9
	mv	a1, s10
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s1)
	lhu	a3, 8(a0)
	lhu	a4, 4(s1)
	lhu	a5, 16(a0)
	sw	a1, 1160(sp)
	subw	a2, a2, a3
	sw	a2, 1164(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s1)
	lhu	a0, 24(a0)
	ld	s1, 8(s2)
	ld	a5, %lo(get_line)(s11)
	sw	a4, 1168(sp)
	subw	a1, a1, a0
	sw	a1, 1172(sp)
	mv	a0, s9
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s1)
	lhu	a3, 8(a0)
	lhu	a4, 4(s1)
	lhu	a5, 16(a0)
	sw	a1, 1176(sp)
	subw	a2, a2, a3
	sw	a2, 1180(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s1)
	lhu	a0, 24(a0)
	ld	s1, 16(s2)
	ld	a5, %lo(get_line)(s11)
	sw	a4, 1184(sp)
	subw	a1, a1, a0
	sw	a1, 1188(sp)
	mv	a0, s9
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s1)
	lhu	a3, 8(a0)
	lhu	a4, 4(s1)
	lhu	a5, 16(a0)
	sw	a1, 1192(sp)
	subw	a2, a2, a3
	sw	a2, 1196(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s1)
	lhu	a0, 24(a0)
	ld	s1, 24(s2)
	ld	a5, %lo(get_line)(s11)
	sw	a4, 1200(sp)
	subw	a1, a1, a0
	sw	a1, 1204(sp)
	mv	a0, s9
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, 2(s1)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 1208(sp)
	subw	a3, a3, a4
	lhu	a1, 4(s1)
	lhu	a2, 16(a0)
	lhu	a4, 6(s1)
	lhu	a0, 24(a0)
	sw	a3, 1212(sp)
	subw	a1, a1, a2
	sw	a1, 1216(sp)
	subw	a4, a4, a0
	sw	a4, 1220(sp)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB4_15
# %bb.18:                               #   in Loop: Header=BB4_17 Depth=2
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 1160
	call	SATD
	addw	s6, a0, s6
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	blt	s6, a0, .LBB4_16
	j	.LBB4_21
.LBB4_19:
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB4_21
# %bb.20:
	addi	a0, sp, 136
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s6, a0, s6
.LBB4_21:
	mv	a0, s6
	ld	ra, 1320(sp)                    # 8-byte Folded Reload
	ld	s0, 1312(sp)                    # 8-byte Folded Reload
	ld	s1, 1304(sp)                    # 8-byte Folded Reload
	ld	s2, 1296(sp)                    # 8-byte Folded Reload
	ld	s3, 1288(sp)                    # 8-byte Folded Reload
	ld	s4, 1280(sp)                    # 8-byte Folded Reload
	ld	s5, 1272(sp)                    # 8-byte Folded Reload
	ld	s6, 1264(sp)                    # 8-byte Folded Reload
	ld	s7, 1256(sp)                    # 8-byte Folded Reload
	ld	s8, 1248(sp)                    # 8-byte Folded Reload
	ld	s9, 1240(sp)                    # 8-byte Folded Reload
	ld	s10, 1232(sp)                   # 8-byte Folded Reload
	ld	s11, 1224(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1328
	ret
.Lfunc_end4:
	.size	simplified_add_up_SAD_quarter_pel, .Lfunc_end4-simplified_add_up_SAD_quarter_pel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_FastIntegerPelBlockMotionSearch # -- Begin function simplified_FastIntegerPelBlockMotionSearch
	.p2align	2
	.type	simplified_FastIntegerPelBlockMotionSearch,@function
simplified_FastIntegerPelBlockMotionSearch: # @simplified_FastIntegerPelBlockMotionSearch
# %bb.0:
	addi	sp, sp, -400
	sd	ra, 392(sp)                     # 8-byte Folded Spill
	sd	s0, 384(sp)                     # 8-byte Folded Spill
	sd	s1, 376(sp)                     # 8-byte Folded Spill
	sd	s2, 368(sp)                     # 8-byte Folded Spill
	sd	s3, 360(sp)                     # 8-byte Folded Spill
	sd	s4, 352(sp)                     # 8-byte Folded Spill
	sd	s5, 344(sp)                     # 8-byte Folded Spill
	sd	s6, 336(sp)                     # 8-byte Folded Spill
	sd	s7, 328(sp)                     # 8-byte Folded Spill
	sd	s8, 320(sp)                     # 8-byte Folded Spill
	sd	s9, 312(sp)                     # 8-byte Folded Spill
	sd	s10, 304(sp)                    # 8-byte Folded Spill
	sd	s11, 296(sp)                    # 8-byte Folded Spill
	ld	t4, 408(sp)
	ld	t3, 400(sp)
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, %hi(input)
	ld	t1, %lo(input)(t1)
	lui	t2, 22
	add	t2, t0, t2
	lw	t2, 108(t2)
	lh	s8, 0(t3)
	mv	s3, a7
	mv	s5, a6
	mv	s2, a4
	mv	s9, a3
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	sd	a5, 128(sp)                     # 8-byte Folded Spill
	slli	a3, a5, 3
	add	a3, t1, a3
	sd	t3, 80(sp)                      # 8-byte Folded Spill
	beqz	t2, .LBB5_5
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a4, t0, a0
	lw	a0, 12(t0)
	ld	a4, 0(a4)
	li	a5, 528
	mul	a5, a0, a5
	add	a4, a4, a5
	lw	a4, 424(a4)
	beqz	a4, .LBB5_5
# %bb.2:
	andi	a4, a0, 1
	li	a0, 2
	beqz	a4, .LBB5_4
# %bb.3:
	li	a0, 4
.LBB5_4:
	lw	a4, 60(t0)
	addi	a4, a4, 1
	sraiw	a4, a4, 1
	sd	a4, 272(sp)                     # 8-byte Folded Spill
	j	.LBB5_6
.LBB5_5:
	lw	a0, 60(t0)
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	li	a0, 0
.LBB5_6:
	lui	a4, %hi(active_pps)
	ld	a5, %lo(active_pps)(a4)
	lw	s7, 88(a3)
	lw	a3, 84(a3)
	sd	a3, 288(sp)                     # 8-byte Folded Spill
	lh	s10, 0(t4)
	lw	a6, 192(a5)
	ld	t3, 416(sp)
	slli	a3, s9, 2
	slli	a4, s2, 2
	addw	t2, s8, s9
	beqz	a6, .LBB5_9
# %bb.7:
	lw	a6, 24(t0)
	beqz	a6, .LBB5_11
# %bb.8:
	li	a7, 3
	beq	a6, a7, .LBB5_11
.LBB5_9:
	lw	a5, 196(a5)
	beqz	a5, .LBB5_13
# %bb.10:
	lw	a5, 24(t0)
	li	a6, 1
	bne	a5, a6, .LBB5_13
.LBB5_11:
	lw	a5, 1912(t1)
	beqz	a5, .LBB5_13
# %bb.12:
	lui	a5, 2
	addiw	a5, a5, -1752
	j	.LBB5_14
.LBB5_13:
	lui	a5, 2
	addiw	a5, a5, -1760
.LBB5_14:
	addw	a0, a0, a2
	slli	a0, a0, 3
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	add	a0, a2, a0
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	a1, 432(sp)
	sd	a1, 240(sp)                     # 8-byte Folded Spill
	ld	s0, 424(sp)
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	sraiw	s6, a1, 2
	add	a0, a0, a5
	ld	a0, 0(a0)
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	add	a3, a3, s5
	sd	a3, 232(sp)                     # 8-byte Folded Spill
	add	a4, a4, s3
	sd	a4, 224(sp)                     # 8-byte Folded Spill
	addw	a0, s10, s2
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	sd	t3, 216(sp)                     # 8-byte Folded Spill
	sd	t4, 88(sp)                      # 8-byte Folded Spill
	bge	t3, t2, .LBB5_19
# %bb.15:
	lw	a1, 52(t0)
	not	a0, t3
	add	a1, a0, a1
	ld	a2, 288(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	bge	t2, a1, .LBB5_19
# %bb.16:
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	bge	t3, a1, .LBB5_19
# %bb.17:
	subw	a0, a0, s7
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	bge	a1, a0, .LBB5_19
# %bb.18:
	lui	a2, %hi(FastLineX)
	addi	a2, a2, %lo(FastLineX)
	j	.LBB5_20
.LBB5_19:
	lui	a2, %hi(UMVLineX)
	addi	a2, a2, %lo(UMVLineX)
.LBB5_20:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, t2, 2
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	slli	a3, a5, 2
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	a5, 16(sp)
	sd	t2, 208(sp)                     # 8-byte Folded Spill
	sd	t2, 8(sp)
	sd	s0, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	slt	a1, a0, s0
	negw	a1, a1
	mv	a3, a0
	blt	a0, s0, .LBB5_22
# %bb.21:
	mv	a3, s0
.LBB5_22:
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	and	s1, a1, s1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	and	s4, a1, t5
	or	a0, s3, s5
	sraiw	a1, s8, 31
	xor	a2, s8, a1
	subw	a4, a2, a1
	sraiw	a1, s10, 31
	xor	a2, s10, a1
	subw	a2, a2, a1
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	sd	s10, 72(sp)                     # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB5_27
# %bb.23:
	blt	t6, a4, .LBB5_27
# %bb.24:
	bltu	t6, a2, .LBB5_27
# %bb.25:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s5, 2
	sub	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s3, 2
	sub	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s2, 16(sp)
	sd	s9, 8(sp)
	mv	s8, a3
	sd	a3, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	s10, s1
	mv	s0, s4
	bge	a0, s8, .LBB5_28
# %bb.26:
	mv	s10, s2
	mv	s0, s9
	mv	s8, a0
	j	.LBB5_28
.LBB5_27:
	mv	s10, s1
	mv	s0, s4
	mv	s8, a3
.LBB5_28:
	lui	a0, %hi(ConvergeThreshold)
	lhu	a0, %lo(ConvergeThreshold)(a0)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 1
	lui	a2, %hi(block_type_shift_factor)
	addi	a2, a2, %lo(block_type_shift_factor)
	add	a1, a2, a1
	lhu	a1, 0(a1)
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	srlw	a1, a0, a1
	addiw	s3, s4, -1
	subw	a0, s3, t5
	sraiw	a2, a0, 31
	xor	a0, a0, a2
	subw	a0, a0, a2
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	mv	s5, s8
	sd	s2, 104(sp)                     # 8-byte Folded Spill
	bge	s8, a1, .LBB5_43
# %bb.29:
	mv	s8, s0
	blt	t6, a0, .LBB5_31
# %bb.30:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, s1, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_55
.LBB5_31:
	mv	a2, s10
.LBB5_32:
	addiw	s2, s4, 1
	subw	a0, s2, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	t6, a0, .LBB5_36
# %bb.33:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, s1, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_36
# %bb.34:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	mv	s0, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s2, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s0
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s5, .LBB5_36
# %bb.35:
	mv	a2, s1
	mv	s8, s2
	mv	s5, a0
.LBB5_36:
	subw	a0, s4, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	bge	t6, a0, .LBB5_37
	j	.LBB5_255
.LBB5_37:
	addiw	s2, s1, -1
	sub	a0, s2, s3
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_40
# %bb.38:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s4, 2
	mv	s0, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s2, 16(sp)
	sd	s4, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s0
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	bge	a0, s5, .LBB5_40
# %bb.39:
	mv	a2, s2
	mv	s8, s4
	mv	s5, a0
.LBB5_40:
	addiw	s1, s1, 1
	subw	a0, s1, s3
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_41
	j	.LBB5_255
.LBB5_41:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s4, 2
	mv	s0, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s4, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s0
	blt	a0, s5, .LBB5_42
	j	.LBB5_255
.LBB5_42:
	mv	s8, s4
	j	.LBB5_254
.LBB5_43:
	addiw	s2, s4, 1
	blt	t6, a0, .LBB5_45
# %bb.44:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, s1, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_57
.LBB5_45:
	mv	a2, s10
.LBB5_46:
	subw	a0, s2, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	t6, a0, .LBB5_48
# %bb.47:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, s1, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_59
.LBB5_48:
	mv	s8, s0
.LBB5_49:
	subw	a0, s4, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	lui	s2, 16
	blt	t6, a0, .LBB5_63
# %bb.50:
	mv	s0, s8
	addiw	s3, s1, -1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sub	a0, s3, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_53
# %bb.51:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s4, 2
	mv	s9, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s3, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s3, 16(sp)
	sd	s4, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s9
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	bge	a0, s5, .LBB5_53
# %bb.52:
	mv	a2, s3
	mv	s0, s4
	mv	s5, a0
.LBB5_53:
	addiw	s1, s1, 1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, s1, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_61
# %bb.54:
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	s8, s0
	j	.LBB5_63
.LBB5_55:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s3, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s3, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	bge	a0, s5, .LBB5_32
# %bb.56:
	mv	a2, s1
	mv	s8, s3
	mv	s5, a0
	j	.LBB5_32
.LBB5_57:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s3, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s3, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	bge	a0, s5, .LBB5_46
# %bb.58:
	mv	a2, s1
	mv	s0, s3
	mv	s5, a0
	j	.LBB5_46
.LBB5_59:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	mv	s8, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s2, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s8
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	s8, s0
	bge	a0, s5, .LBB5_49
# %bb.60:
	mv	a2, s1
	mv	s8, s2
	mv	s5, a0
	j	.LBB5_49
.LBB5_61:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s4, 2
	mv	s8, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s4, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s8
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	s8, s0
	bge	a0, s5, .LBB5_63
# %bb.62:
	mv	a2, s1
	mv	s8, s4
	mv	s5, a0
.LBB5_63:
	li	a0, 1
	addiw	s2, s2, -1
	sd	s7, 248(sp)                     # 8-byte Folded Spill
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	bne	a1, a0, .LBB5_65
# %bb.64:
	lui	a0, %hi(SymmetricalCrossSearchThreshold1)
	lhu	a0, %lo(SymmetricalCrossSearchThreshold1)(a0)
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	srlw	a0, a0, a1
	blt	a0, s5, .LBB5_66
.LBB5_65:
	lui	a0, %hi(SymmetricalCrossSearchThreshold2)
	lhu	a0, %lo(SymmetricalCrossSearchThreshold2)(a0)
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	srlw	a0, a0, a1
	bge	a0, s5, .LBB5_117
.LBB5_66:
	li	a0, 2
	bge	t6, a0, .LBB5_70
# %bb.67:
	mv	s7, a2
	mv	s11, s8
	ld	s4, 200(sp)                     # 8-byte Folded Reload
.LBB5_68:
	addiw	t0, s11, -2
	subw	a0, t0, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bge	t6, a0, .LBB5_89
# %bb.69:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, s11
	ld	s3, 248(sp)                     # 8-byte Folded Reload
	ld	s4, 280(sp)                     # 8-byte Folded Reload
	ld	s1, 264(sp)                     # 8-byte Folded Reload
	j	.LBB5_94
.LBB5_70:
	srliw	a0, t6, 31
	add	a0, t6, a0
	sraiw	a0, a0, 1
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, a2, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	s9, a0, a1
	slli	a0, a2, 2
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	subw	s10, a0, a1
	subw	a0, s8, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	s1, a0, a1
	slli	a0, s8, 2
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a0, a1
	li	a0, 1
	slli	a1, a1, 2
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	slli	s10, s10, 2
	mv	s11, s8
	li	s0, 1
	mv	s7, a2
	j	.LBB5_73
.LBB5_71:                               #   in Loop: Header=BB5_73 Depth=1
	ld	s4, 200(sp)                     # 8-byte Folded Reload
.LBB5_72:                               #   in Loop: Header=BB5_73 Depth=1
	addi	s0, s0, 1
	slli	a0, s0, 48
	srli	a0, a0, 48
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB5_68
.LBB5_73:                               # =>This Inner Loop Header: Depth=1
	slli	a0, a0, 1
	addi	s2, a0, -1
	addw	s3, s2, s8
	subw	a0, s3, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	t6, a0, .LBB5_77
# %bb.74:                               #   in Loop: Header=BB5_73 Depth=1
	bltu	t6, s9, .LBB5_77
# %bb.75:                               #   in Loop: Header=BB5_73 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s3, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	add	a0, a0, s10
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	sd	a0, 16(sp)
	sd	s3, 8(sp)
	sext.w	s4, s5
	sd	s4, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s4, .LBB5_77
# %bb.76:                               #   in Loop: Header=BB5_73 Depth=1
	mv	s7, a2
	mv	s11, s3
	mv	s5, a0
.LBB5_77:                               #   in Loop: Header=BB5_73 Depth=1
	subw	s3, s8, s2
	sub	a0, s3, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	t6, a0, .LBB5_81
# %bb.78:                               #   in Loop: Header=BB5_73 Depth=1
	bltu	t6, s9, .LBB5_81
# %bb.79:                               #   in Loop: Header=BB5_73 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s3, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	add	a0, a0, s10
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	sd	a0, 16(sp)
	sd	s3, 8(sp)
	sext.w	s4, s5
	sd	s4, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s4, .LBB5_81
# %bb.80:                               #   in Loop: Header=BB5_73 Depth=1
	mv	s7, a2
	mv	s11, s3
	mv	s5, a0
.LBB5_81:                               #   in Loop: Header=BB5_73 Depth=1
	bltu	t6, s1, .LBB5_71
# %bb.82:                               #   in Loop: Header=BB5_73 Depth=1
	addw	s3, s2, a2
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sub	a0, s3, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_85
# %bb.83:                               #   in Loop: Header=BB5_73 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s3, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s3, 16(sp)
	sd	s8, 8(sp)
	sext.w	s4, s5
	sd	s4, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	bge	a0, s4, .LBB5_85
# %bb.84:                               #   in Loop: Header=BB5_73 Depth=1
	mv	s7, s3
	mv	s11, s8
	mv	s5, a0
.LBB5_85:                               #   in Loop: Header=BB5_73 Depth=1
	subw	s2, a2, s2
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	sub	a0, s2, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_87
# %bb.86:                               #   in Loop: Header=BB5_73 Depth=1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	j	.LBB5_72
.LBB5_87:                               #   in Loop: Header=BB5_73 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s2, 16(sp)
	sd	s8, 8(sp)
	sext.w	s3, s5
	sd	s3, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s3, .LBB5_72
# %bb.88:                               #   in Loop: Header=BB5_73 Depth=1
	mv	s7, s2
	mv	s11, s8
	mv	s5, a0
	j	.LBB5_72
.LBB5_89:
	subw	a0, s7, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	s3, 248(sp)                     # 8-byte Folded Reload
	ld	s4, 280(sp)                     # 8-byte Folded Reload
	ld	s1, 264(sp)                     # 8-byte Folded Reload
	bgeu	t6, a0, .LBB5_91
# %bb.90:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, s11
	j	.LBB5_94
.LBB5_91:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, t0, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s7, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s7, 16(sp)
	sd	t0, 8(sp)
	sext.w	s0, s5
	sd	s0, 0(sp)
	mv	a0, s4
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	mv	s2, t0
	call	simplified_partial_SAD_calculate
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, s2
	mv	s5, a0
	blt	a0, s0, .LBB5_93
# %bb.92:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, s11
	mv	s5, s0
.LBB5_93:
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_94:
	addiw	s0, s11, 2
	subw	a0, s0, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	t6, a0, .LBB5_99
# %bb.95:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, s7, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_99
# %bb.96:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s2, x1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s7, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s7, 16(sp)
	sd	s0, 8(sp)
	mv	a2, s1
	sext.w	s1, s5
	sd	s1, 0(sp)
	mv	a0, s4
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	blt	a0, s1, .LBB5_98
# %bb.97:
	mv	s0, s2
	mv	s5, s1
.LBB5_98:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, s0
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_99:
	addiw	s2, s11, -1
	addiw	s8, s7, -2
	subw	a0, s2, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	s9, a0, a1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sub	s0, s8, a0
	blt	t6, s9, .LBB5_101
# %bb.100:
	sraiw	a0, s0, 31
	xor	a1, s0, a0
	subw	a1, a1, a0
	bgeu	t6, a1, .LBB5_149
.LBB5_101:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x2, s7
.LBB5_102:
	addiw	s10, s11, 1
	addiw	s1, s7, 2
	subw	a0, s10, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	s11, a0, a1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sub	s3, s1, a0
	blt	t6, s11, .LBB5_106
# %bb.103:
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	bltu	t6, a1, .LBB5_106
# %bb.104:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s10, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s10, 8(sp)
	sext.w	s4, s5
	sd	s4, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	sd	s10, 192(sp)                    # 8-byte Folded Spill
	mv	s10, s2
	mv	s2, s0
	mv	s0, s8
	regsw_c	x1, 0x100(x9)		# 010010000100100000000
	mv	s8, x1
	mv	s7, x2
	call	simplified_partial_SAD_calculate
	mv	x2, s7
	mv	x1, s8
	mv	s8, s0
	mv	s0, s2
	mv	s2, s10
	ld	s10, 192(sp)                    # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s4, .LBB5_106
# %bb.105:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x2, s1
	mv	x1, s10
	mv	s5, a0
.LBB5_106:
	blt	t6, s9, .LBB5_110
# %bb.107:
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	bltu	t6, a1, .LBB5_110
# %bb.108:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s2, 8(sp)
	sext.w	s3, s5
	sd	s3, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	regsw_c	x1, 0x100(x9)		# 010010000100100000000
	mv	s4, x1
	mv	s7, x2
	call	simplified_partial_SAD_calculate
	mv	x2, s7
	mv	x1, s4
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s3, .LBB5_110
# %bb.109:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x2, s1
	mv	x1, s2
	mv	s5, a0
.LBB5_110:
	bge	t6, s11, .LBB5_112
# %bb.111:
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	j	.LBB5_115
.LBB5_112:
	sraiw	a0, s0, 31
	xor	s0, s0, a0
	subw	s0, s0, a0
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	bltu	t6, s0, .LBB5_115
# %bb.113:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s10, 2
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a3, s8, 2
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s8, 16(sp)
	sd	s10, 8(sp)
	sext.w	s0, s5
	sd	s0, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	regsw_c	x1, 0x100(x9)		# 010010000100100000000
	mv	s1, x1
	mv	s2, x2
	call	simplified_partial_SAD_calculate
	mv	x2, s2
	mv	x1, s1
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s0, .LBB5_115
# %bb.114:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x2, s8
	mv	x1, s10
	mv	s5, a0
.LBB5_115:
	li	a0, 4
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x1, 168(sp)                     # 8-byte Folded Spill
	sd	x2, 160(sp)                     # 8-byte Folded Spill
	bge	t6, a0, .LBB5_132
# %bb.116:
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	sd	x2, 184(sp)                     # 8-byte Folded Spill
	mv	s8, x1
.LBB5_117:
	mv	s11, s8
	mv	s8, s5
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	and	s0, a2, s1
	li	a0, 2
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	and	s1, a1, s1
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB5_124
# %bb.118:
	lui	a0, %hi(simplified_pred_MV_uplayer_X)
	lh	a0, %lo(simplified_pred_MV_uplayer_X)(a0)
	slli	a1, a0, 33
	srli	a1, a1, 62
	add	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 50
	sub	a1, a0, a2
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s7, 248(sp)                     # 8-byte Folded Reload
	ld	s10, 280(sp)                    # 8-byte Folded Reload
	blt	t6, a1, .LBB5_125
# %bb.119:
	lui	a1, %hi(simplified_pred_MV_uplayer_Y)
	lh	a1, %lo(simplified_pred_MV_uplayer_Y)(a1)
	slli	a2, a1, 33
	srli	a2, a2, 62
	add	a1, a1, a2
	slli	a1, a1, 48
	srai	a1, a1, 50
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	sub	a2, a1, a2
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	a2, a2, a3
	bltu	t6, a2, .LBB5_125
# %bb.120:
	addw	s2, a0, s5
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	addw	s3, a1, a0
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s3, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s3, 16(sp)
	sd	s2, 8(sp)
	sext.w	s4, s8
	sd	s4, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	bge	a0, s4, .LBB5_122
# %bb.121:
	mv	s9, s3
	mv	s11, s2
	mv	s8, a0
.LBB5_122:
	or	s0, s0, s1
	bnez	s0, .LBB5_126
.LBB5_123:
	mv	s1, s9
	mv	s0, s11
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	mv	s5, s8
	j	.LBB5_170
.LBB5_124:
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s7, 248(sp)                     # 8-byte Folded Reload
	ld	s10, 280(sp)                    # 8-byte Folded Reload
.LBB5_125:
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	or	s0, s0, s1
	beqz	s0, .LBB5_123
.LBB5_126:
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	blt	t6, a0, .LBB5_130
# %bb.127:
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	blt	t6, a0, .LBB5_130
# %bb.128:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	sub	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 2
	sub	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s5, 8(sp)
	sext.w	s0, s8
	sd	s0, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s0, .LBB5_130
# %bb.129:
	mv	s9, s1
	mv	s11, s5
	mv	s8, a0
.LBB5_130:
	addiw	s0, s11, -1
	subw	a0, s0, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bge	t6, a0, .LBB5_147
# %bb.131:
	mv	s0, s11
	mv	s5, s8
	mv	s8, s11
	j	.LBB5_154
.LBB5_132:
	slli	a0, t6, 1
	srli	a0, a0, 62
	add	a0, t6, a0
	sraiw	a0, a0, 2
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	bgtz	a0, .LBB5_133
	j	.LBB5_256
.LBB5_133:
	li	s11, 1
	bgtz	s6, .LBB5_134
	j	.LBB5_264
.LBB5_134:                              # %.preheader4
	lui	a3, %hi(Big_Hexagon_X)
	addi	a3, a3, %lo(Big_Hexagon_X)
	lui	a4, %hi(Big_Hexagon_Y)
	addi	a4, a4, %lo(Big_Hexagon_Y)
	li	a5, 16
	lui	s10, %hi(img)
	lui	s0, %hi(byte_abs)
	regsw_c	x2, 0x0(x8)		# 010000001000000000000
	mv	s8, x1
	li	a1, 1
	sd	x2, 184(sp)                     # 8-byte Folded Spill
	j	.LBB5_136
.LBB5_135:                              #   in Loop: Header=BB5_136 Depth=1
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 1
	slli	a0, a1, 48
	srli	s11, a0, 48
	ld	s5, 192(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	blt	a0, s11, .LBB5_117
.LBB5_136:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_138 Depth 2
                                        #       Child Loop BB5_141 Depth 3
                                        #         Child Loop BB5_142 Depth 4
	sd	a1, 152(sp)                     # 8-byte Folded Spill
	sd	s5, 192(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	li	s2, 0
	j	.LBB5_138
.LBB5_137:                              #   in Loop: Header=BB5_138 Depth=2
	addi	s2, s2, 1
	beq	s2, a5, .LBB5_135
.LBB5_138:                              #   Parent Loop BB5_136 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_141 Depth 3
                                        #         Child Loop BB5_142 Depth 4
	slli	a0, s2, 1
	add	a1, a3, a0
	lh	a1, 0(a1)
	mul	a1, s11, a1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	s1, a1, x1
	sub	a1, s1, t5
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	t6, a1, .LBB5_137
# %bb.139:                              #   in Loop: Header=BB5_138 Depth=2
	add	a0, a4, a0
	lh	a0, 0(a0)
	mul	a0, s11, a0
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	s9, a0, x2
	sub	a0, s9, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_137
# %bb.140:                              #   in Loop: Header=BB5_138 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	s7, x2
	mv	s8, x1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s9, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a2, 0(a0)
	li	a0, 0
	li	s4, 0
	add	a1, a2, a1
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	mul	a1, a1, a2
	sraiw	s5, a1, 16
	lw	s3, 192(sp)                     # 8-byte Folded Reload
.LBB5_141:                              #   Parent Loop BB5_136 Depth=1
                                        #     Parent Loop BB5_138 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_142 Depth 4
	ld	a1, %lo(img)(s10)
	lw	a5, 52(a1)
	addw	a2, a0, s9
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	mv	a3, s1
	ld	a4, 272(sp)                     # 8-byte Folded Reload
	ld	a6, 264(sp)                     # 8-byte Folded Reload
	jalr	a6
	slli	a1, s4, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s0)
	li	a3, 0
.LBB5_142:                              #   Parent Loop BB5_136 Depth=1
                                        #     Parent Loop BB5_138 Depth=2
                                        #       Parent Loop BB5_141 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lhu	a4, 0(a1)
	lhu	a5, 0(a0)
	lhu	a6, 2(a1)
	lhu	a7, 2(a0)
	lhu	t0, 4(a1)
	lhu	t1, 4(a0)
	lhu	t2, 6(a1)
	lhu	t3, 6(a0)
	sub	a4, a4, a5
	sub	a5, a6, a7
	sub	a6, t0, t1
	sub	a7, t2, t3
	slli	a4, a4, 2
	add	a4, a2, a4
	lw	a4, 0(a4)
	slli	a5, a5, 2
	add	a5, a2, a5
	lw	a5, 0(a5)
	slli	a6, a6, 2
	add	a6, a2, a6
	lw	a6, 0(a6)
	slli	a7, a7, 2
	add	a7, a2, a7
	lw	a7, 0(a7)
	add	a4, a4, s5
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s5, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	blt	a4, s6, .LBB5_142
# %bb.143:                              #   in Loop: Header=BB5_141 Depth=3
	bge	s5, s3, .LBB5_145
# %bb.144:                              #   in Loop: Header=BB5_141 Depth=3
	addi	s4, s4, 1
	slli	a0, s4, 48
	srli	a0, a0, 48
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB5_141
.LBB5_145:                              #   in Loop: Header=BB5_138 Depth=2
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x1, s8
	mv	x2, s7
	lui	a3, %hi(Big_Hexagon_X)
	addi	a3, a3, %lo(Big_Hexagon_X)
	lui	a4, %hi(Big_Hexagon_Y)
	addi	a4, a4, %lo(Big_Hexagon_Y)
	li	a5, 16
	bge	s5, s3, .LBB5_137
# %bb.146:                              #   in Loop: Header=BB5_138 Depth=2
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	sd	s1, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_137
.LBB5_147:
	mv	a2, s9
	subw	a0, s9, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	mv	s5, s8
	bgeu	t6, a0, .LBB5_151
# %bb.148:
	mv	s8, s11
	mv	s0, s11
	j	.LBB5_155
.LBB5_149:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s8, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s8, 16(sp)
	sd	s2, 8(sp)
	sext.w	s1, s5
	sd	s1, 0(sp)
	mv	a0, s4
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	regsw_c	x8, 0x20(x8)		# 010000100000000100000
	mv	s3, x1
	call	simplified_partial_SAD_calculate
	mv	x1, s3
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	x2, s7
	bge	a0, s1, .LBB5_102
# %bb.150:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x2, s8
	mv	x1, s2
	mv	s5, a0
	j	.LBB5_102
.LBB5_151:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	mv	a4, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, a4, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	a4, 16(sp)
	sd	s0, 8(sp)
	sext.w	s1, s5
	sd	s1, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	mv	s8, s11
	blt	a0, s1, .LBB5_153
# %bb.152:
	mv	s0, s8
	mv	s5, s1
.LBB5_153:
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_154:
	mv	a2, s9
.LBB5_155:
	addiw	s1, s8, 1
	subw	a0, s1, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	t6, a0, .LBB5_160
# %bb.156:
	subw	a0, a2, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_160
# %bb.157:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	mv	a4, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, a4, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	a4, 16(sp)
	sd	s1, 8(sp)
	sext.w	s2, s5
	sd	s2, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	blt	a0, s2, .LBB5_159
# %bb.158:
	mv	s1, s0
	mv	s5, s2
.LBB5_159:
	mv	s0, s1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	mv	a2, s9
.LBB5_160:
	subw	a0, s8, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bge	t6, a0, .LBB5_162
# %bb.161:
	mv	s1, a2
	j	.LBB5_170
.LBB5_162:
	addiw	s2, a2, -1
	sub	a0, s2, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_164
# %bb.163:
	mv	s1, a2
	j	.LBB5_166
.LBB5_164:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s2, 16(sp)
	sd	s8, 8(sp)
	sext.w	s3, s5
	sd	s3, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s9
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	mv	s1, s9
	bge	a0, s3, .LBB5_166
# %bb.165:
	mv	s1, s2
	mv	s0, s8
	mv	s5, a0
.LBB5_166:
	addiw	s2, a2, 1
	subw	a0, s2, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_168
# %bb.167:
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	j	.LBB5_170
.LBB5_168:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s2, 16(sp)
	sd	s8, 8(sp)
	sext.w	s3, s5
	sd	s3, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s3, .LBB5_170
# %bb.169:
	mv	s1, s2
	mv	s0, s8
	mv	s5, a0
.LBB5_170:
	lui	a0, %hi(ConvergeThreshold)
	lhu	a0, %lo(ConvergeThreshold)(a0)
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	srlw	a0, a0, a1
	sext.w	s2, s5
	bge	s2, a0, .LBB5_173
# %bb.171:
	addiw	s3, s0, -1
	subw	a0, s3, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bge	t6, a0, .LBB5_207
# %bb.172:
	mv	s8, s0
	j	.LBB5_211
.LBB5_173:
	blez	t6, .LBB5_220
# %bb.174:                              # %.preheader
	li	s9, 0
	mv	s8, s0
	mv	a2, s1
	j	.LBB5_177
.LBB5_175:                              #   in Loop: Header=BB5_177 Depth=1
	mv	s5, a4
	mv	a2, a3
.LBB5_176:                              #   in Loop: Header=BB5_177 Depth=1
	addi	s9, s9, 1
	slli	a0, s9, 48
	srli	a0, a0, 48
	bge	a0, t6, .LBB5_221
.LBB5_177:                              # =>This Inner Loop Header: Depth=1
	mv	s0, s8
	addiw	s7, s8, -2
	subw	a0, s7, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	mv	s10, a2
	bltu	t6, a0, .LBB5_179
# %bb.178:                              #   in Loop: Header=BB5_177 Depth=1
	subw	a0, s10, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_180
.LBB5_179:                              #   in Loop: Header=BB5_177 Depth=1
	mv	s7, s0
	j	.LBB5_183
.LBB5_180:                              #   in Loop: Header=BB5_177 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s7, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s10, 16(sp)
	sd	s7, 8(sp)
	sext.w	s1, s5
	sd	s1, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	blt	a0, s1, .LBB5_182
# %bb.181:                              #   in Loop: Header=BB5_177 Depth=1
	mv	s7, s0
	mv	s5, s1
.LBB5_182:                              #   in Loop: Header=BB5_177 Depth=1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_183:                              #   in Loop: Header=BB5_177 Depth=1
	addiw	s1, s0, 2
	subw	a0, s1, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_185
# %bb.184:                              #   in Loop: Header=BB5_177 Depth=1
	subw	a0, s10, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_186
.LBB5_185:                              #   in Loop: Header=BB5_177 Depth=1
	mv	a4, s5
	j	.LBB5_189
.LBB5_186:                              #   in Loop: Header=BB5_177 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s10, 16(sp)
	sd	s1, 8(sp)
	sext.w	s2, s5
	sd	s2, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a4, a0
	blt	a0, s2, .LBB5_188
# %bb.187:                              #   in Loop: Header=BB5_177 Depth=1
	mv	s1, s7
	mv	a4, s2
.LBB5_188:                              #   in Loop: Header=BB5_177 Depth=1
	mv	s7, s1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_189:                              #   in Loop: Header=BB5_177 Depth=1
	addiw	s2, s0, -1
	subw	a0, s2, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	s11, a0, a1
	addiw	a2, s10, -2
	bltu	t6, s11, .LBB5_191
# %bb.190:                              #   in Loop: Header=BB5_177 Depth=1
	sub	a0, a2, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_205
.LBB5_191:                              #   in Loop: Header=BB5_177 Depth=1
	mv	a3, s10
.LBB5_192:                              #   in Loop: Header=BB5_177 Depth=1
	sd	s7, 192(sp)                     # 8-byte Folded Spill
	addiw	s8, s0, 1
	subw	a0, s8, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	s1, a0, a1
	addiw	s5, s10, 2
	bltu	t6, s1, .LBB5_196
# %bb.193:                              #   in Loop: Header=BB5_177 Depth=1
	sub	a0, s5, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_196
# %bb.194:                              #   in Loop: Header=BB5_177 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	mv	s7, a3
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s5, 16(sp)
	sd	s8, 8(sp)
	sext.w	s3, a4
	sd	s3, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	s4, a4
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a3, s7
	mv	a4, s4
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s3, .LBB5_196
# %bb.195:                              #   in Loop: Header=BB5_177 Depth=1
	mv	a3, s5
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	mv	a4, a0
.LBB5_196:                              #   in Loop: Header=BB5_177 Depth=1
	bltu	t6, s11, .LBB5_200
# %bb.197:                              #   in Loop: Header=BB5_177 Depth=1
	sub	a0, s5, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_200
# %bb.198:                              #   in Loop: Header=BB5_177 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	mv	s4, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	mv	s7, a3
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s5, 16(sp)
	sd	s2, 8(sp)
	sext.w	s3, a4
	sd	s3, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	s11, a4
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a3, s7
	mv	a4, s11
	mv	a2, s4
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	bge	a0, s3, .LBB5_200
# %bb.199:                              #   in Loop: Header=BB5_177 Depth=1
	mv	a3, s5
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	mv	a4, a0
.LBB5_200:                              #   in Loop: Header=BB5_177 Depth=1
	bltu	t6, s1, .LBB5_203
# %bb.201:                              #   in Loop: Header=BB5_177 Depth=1
	sub	a0, a2, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_203
# %bb.202:                              #   in Loop: Header=BB5_177 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	mv	s2, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	mv	s5, a3
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s2, 16(sp)
	sd	s8, 8(sp)
	sext.w	s1, a4
	sd	s1, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	s3, a4
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a3, s5
	mv	a4, s3
	mv	a2, s2
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	s5, a0
	blt	a0, s1, .LBB5_176
.LBB5_203:                              #   in Loop: Header=BB5_177 Depth=1
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	bne	s8, s0, .LBB5_175
# %bb.204:                              #   in Loop: Header=BB5_177 Depth=1
	mv	s5, a4
	mv	a2, a3
	bne	a3, s10, .LBB5_176
	j	.LBB5_222
.LBB5_205:                              #   in Loop: Header=BB5_177 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	mv	s3, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s3, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s3, 16(sp)
	sd	s2, 8(sp)
	sext.w	s1, a4
	sd	s1, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	s5, a4
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a4, s5
	mv	a2, s3
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	a3, s10
	bge	a0, s1, .LBB5_192
# %bb.206:                              #   in Loop: Header=BB5_177 Depth=1
	mv	a3, a2
	mv	s7, s2
	mv	a4, a0
	j	.LBB5_192
.LBB5_207:
	subw	a0, s1, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	mv	s8, s0
	bltu	t6, a0, .LBB5_211
# %bb.208:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s3, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s3, 8(sp)
	sd	s2, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	blt	a0, s2, .LBB5_210
# %bb.209:
	mv	s3, s0
	mv	s5, s2
.LBB5_210:
	mv	s8, s3
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_211:
	addiw	s2, s0, 1
	subw	a0, s2, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	t6, a0, .LBB5_216
# %bb.212:
	subw	a0, s1, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_216
# %bb.213:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s2, 8(sp)
	sext.w	s3, s5
	sd	s3, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	blt	a0, s3, .LBB5_215
# %bb.214:
	mv	s2, s8
	mv	s5, s3
.LBB5_215:
	mv	s8, s2
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_216:
	subw	a0, s0, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bge	t6, a0, .LBB5_218
# %bb.217:
	mv	a2, s1
	j	.LBB5_255
.LBB5_218:
	addiw	s2, s1, -1
	sub	a0, s2, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	t6, a0, .LBB5_249
# %bb.219:
	mv	a2, s1
	j	.LBB5_251
.LBB5_220:
	mv	s8, s0
	mv	a2, s1
	j	.LBB5_255
.LBB5_221:
	mv	a4, s5
	mv	s0, s8
	mv	s10, a2
	blez	t6, .LBB5_255
.LBB5_222:
	li	s1, 0
	mv	s5, a4
	mv	s8, s0
	mv	a2, s10
	j	.LBB5_226
.LBB5_223:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s5, a0
	mv	s0, s11
	mv	s9, s4
	ld	t6, 216(sp)                     # 8-byte Folded Reload
.LBB5_224:                              #   in Loop: Header=BB5_226 Depth=1
	ld	s4, 200(sp)                     # 8-byte Folded Reload
.LBB5_225:                              #   in Loop: Header=BB5_226 Depth=1
	addi	s1, s1, 1
	slli	a0, s1, 48
	srli	a0, a0, 48
	mv	s8, s0
	mv	a2, s9
	bge	a0, t6, .LBB5_255
.LBB5_226:                              # =>This Inner Loop Header: Depth=1
	mv	s10, a2
	addiw	s0, s8, -1
	subw	a0, s0, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	mv	s11, s8
	bgeu	t6, a0, .LBB5_228
# %bb.227:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s0, s8
	mv	s2, s8
	ld	s9, 248(sp)                     # 8-byte Folded Reload
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	j	.LBB5_233
.LBB5_228:                              #   in Loop: Header=BB5_226 Depth=1
	subw	a0, s10, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	s9, 248(sp)                     # 8-byte Folded Reload
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	bgeu	t6, a0, .LBB5_230
# %bb.229:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s2, s11
	mv	s0, s11
	j	.LBB5_233
.LBB5_230:                              #   in Loop: Header=BB5_226 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s10, 16(sp)
	sd	s0, 8(sp)
	sext.w	s2, s5
	sd	s2, 0(sp)
	mv	a0, s7
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s9
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	blt	a0, s2, .LBB5_232
# %bb.231:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s0, s11
	mv	s5, s2
.LBB5_232:                              #   in Loop: Header=BB5_226 Depth=1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	s2, s11
.LBB5_233:                              #   in Loop: Header=BB5_226 Depth=1
	addiw	s2, s2, 1
	subw	a0, s2, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	bltu	a2, a0, .LBB5_238
# %bb.234:                              #   in Loop: Header=BB5_226 Depth=1
	subw	a0, s10, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a2, a0, .LBB5_238
# %bb.235:                              #   in Loop: Header=BB5_226 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s10, 16(sp)
	sd	s2, 8(sp)
	sext.w	s3, s5
	sd	s3, 0(sp)
	mv	a0, s7
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s9
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s5, a0
	blt	a0, s3, .LBB5_237
# %bb.236:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s2, s0
	mv	s5, s3
.LBB5_237:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s0, s2
	ld	t5, 208(sp)                     # 8-byte Folded Reload
.LBB5_238:                              #   in Loop: Header=BB5_226 Depth=1
	subw	a0, s11, t5
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	bgeu	a2, a0, .LBB5_240
# %bb.239:                              #   in Loop: Header=BB5_226 Depth=1
	mv	a2, s10
	mv	s9, s10
	j	.LBB5_247
.LBB5_240:                              #   in Loop: Header=BB5_226 Depth=1
	mv	a4, s11
	mv	s2, s10
	addiw	s4, s10, -1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sub	a0, s4, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	slli	a3, s11, 2
	bgeu	a2, a0, .LBB5_242
# %bb.241:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s8, a3
	mv	s7, s9
	mv	s3, s5
	mv	s9, s2
	mv	a2, s2
	j	.LBB5_244
.LBB5_242:                              #   in Loop: Header=BB5_226 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	s8, a3
	subw	a1, a3, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s4, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s4, 16(sp)
	sd	a4, 8(sp)
	mv	s3, s5
	sext.w	s5, s5
	sd	s5, 0(sp)
	mv	a0, s7
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	s7, s9
	mv	a4, s9
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	s9, s2
	mv	a2, s2
	bge	a0, s5, .LBB5_244
# %bb.243:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s9, s4
	mv	s0, s11
	mv	s3, a0
.LBB5_244:                              #   in Loop: Header=BB5_226 Depth=1
	addiw	s4, a2, 1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	a0, s4, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bgeu	a1, a0, .LBB5_246
# %bb.245:                              #   in Loop: Header=BB5_226 Depth=1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	mv	s5, s3
	j	.LBB5_247
.LBB5_246:                              #   in Loop: Header=BB5_226 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	subw	a1, s8, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s4, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s4, 16(sp)
	sd	s11, 8(sp)
	mv	s5, s3
	sext.w	s3, s3
	sd	s3, 0(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s10
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	blt	a0, s3, .LBB5_223
.LBB5_247:                              #   in Loop: Header=BB5_226 Depth=1
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	bne	s0, s11, .LBB5_224
# %bb.248:                              #   in Loop: Header=BB5_226 Depth=1
	mv	s8, s11
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	bne	s9, a2, .LBB5_225
	j	.LBB5_255
.LBB5_249:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s2, 16(sp)
	sd	s0, 8(sp)
	sext.w	s3, s5
	sd	s3, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	bge	a0, s3, .LBB5_251
# %bb.250:
	mv	a2, s2
	mv	s8, s0
	mv	s5, a0
.LBB5_251:
	addiw	s1, s1, 1
	subw	a0, s1, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_255
# %bb.252:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	mv	s3, a2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a7, a0, 16
	sd	s1, 16(sp)
	sd	s0, 8(sp)
	sext.w	s2, s5
	sd	s2, 0(sp)
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	mv	a6, s6
	call	simplified_partial_SAD_calculate
	mv	a2, s3
	bge	a0, s2, .LBB5_255
# %bb.253:
	mv	s8, s0
.LBB5_254:
	mv	a2, s1
	mv	s5, a0
.LBB5_255:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	subw	a0, s8, a0
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	sh	a0, 0(a1)
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a0
	sext.w	a0, s5
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	sh	a1, 0(a2)
	ld	ra, 392(sp)                     # 8-byte Folded Reload
	ld	s0, 384(sp)                     # 8-byte Folded Reload
	ld	s1, 376(sp)                     # 8-byte Folded Reload
	ld	s2, 368(sp)                     # 8-byte Folded Reload
	ld	s3, 360(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	ld	s5, 344(sp)                     # 8-byte Folded Reload
	ld	s6, 336(sp)                     # 8-byte Folded Reload
	ld	s7, 328(sp)                     # 8-byte Folded Reload
	ld	s8, 320(sp)                     # 8-byte Folded Reload
	ld	s9, 312(sp)                     # 8-byte Folded Reload
	ld	s10, 304(sp)                    # 8-byte Folded Reload
	ld	s11, 296(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 400
	ret
.LBB5_256:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	li	a3, 1
	lui	a1, %hi(Big_Hexagon_Y)
	addi	a1, a1, %lo(Big_Hexagon_Y)
	lui	a2, %hi(Big_Hexagon_X)
	addi	a2, a2, %lo(Big_Hexagon_X)
	addi	a4, a1, 32
	regsw_c	x2, 0x0(x8)		# 010000001000000000000
	mv	s8, x1
	li	a5, 1
	sd	x2, 184(sp)                     # 8-byte Folded Spill
	ld	t4, 224(sp)                     # 8-byte Folded Reload
	j	.LBB5_258
.LBB5_257:                              #   in Loop: Header=BB5_258 Depth=1
	addi	a5, a5, 1
	slli	a3, a5, 48
	srli	a3, a3, 48
	ld	a6, 136(sp)                     # 8-byte Folded Reload
	bge	a6, a3, .LBB5_258
	j	.LBB5_117
.LBB5_258:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_260 Depth 2
	mv	a6, a2
	mv	a7, a1
	j	.LBB5_260
.LBB5_259:                              #   in Loop: Header=BB5_260 Depth=2
	addi	a7, a7, 2
	addi	a6, a6, 2
	beq	a7, a4, .LBB5_257
.LBB5_260:                              #   Parent Loop BB5_258 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	t0, 0(a6)
	mul	t0, a3, t0
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	t0, t0, x1
	sub	t1, t0, t5
	sraiw	t2, t1, 31
	xor	t1, t1, t2
	subw	t1, t1, t2
	blt	t6, t1, .LBB5_259
# %bb.261:                              #   in Loop: Header=BB5_260 Depth=2
	lh	t1, 0(a7)
	mul	t1, a3, t1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	t1, t1, x2
	sub	t2, t1, s4
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	subw	t2, t2, t3
	bltu	t6, t2, .LBB5_259
# %bb.262:                              #   in Loop: Header=BB5_260 Depth=2
	slli	t2, t0, 2
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	subw	t2, t2, t3
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	t2, 0(t2)
	slli	t3, t1, 2
	subw	t3, t3, t4
	slli	t3, t3, 2
	add	t3, a0, t3
	lw	t3, 0(t3)
	add	t2, t3, t2
	ld	t3, 240(sp)                     # 8-byte Folded Reload
	mul	t2, t2, t3
	sraiw	t2, t2, 16
	sext.w	t3, s5
	bge	t2, t3, .LBB5_259
# %bb.263:                              #   in Loop: Header=BB5_260 Depth=2
	sd	t1, 184(sp)                     # 8-byte Folded Spill
	mv	s8, t0
	mv	s5, t2
	j	.LBB5_259
.LBB5_264:                              # %.preheader7
	lui	s2, %hi(Big_Hexagon_X)
	addi	s2, s2, %lo(Big_Hexagon_X)
	lui	s7, %hi(Big_Hexagon_Y)
	addi	s7, s7, %lo(Big_Hexagon_Y)
	li	a3, 16
	lui	s0, %hi(img)
	regsw_c	x2, 0x0(x8)		# 010000001000000000000
	mv	s8, x1
	li	a1, 1
	sd	x2, 184(sp)                     # 8-byte Folded Spill
	j	.LBB5_266
.LBB5_265:                              #   in Loop: Header=BB5_266 Depth=1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 1
	slli	a0, a1, 48
	srli	s11, a0, 48
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	bge	a0, s11, .LBB5_266
	j	.LBB5_117
.LBB5_266:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_269 Depth 2
                                        #       Child Loop BB5_273 Depth 3
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	li	s9, 0
	sd	s11, 144(sp)                    # 8-byte Folded Spill
	j	.LBB5_269
.LBB5_267:                              #   in Loop: Header=BB5_269 Depth=2
	ld	a0, %lo(img)(s0)
	lw	a5, 52(a0)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s1
	ld	a4, 272(sp)                     # 8-byte Folded Reload
	ld	a6, 264(sp)                     # 8-byte Folded Reload
	mv	s1, t6
	jalr	a6
	mv	t6, s1
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 168(sp)                     # 8-byte Folded Reload
	ld	x2, 160(sp)                     # 8-byte Folded Reload
	li	a3, 16
.LBB5_268:                              #   in Loop: Header=BB5_269 Depth=2
	addi	s9, s9, 1
	beq	s9, a3, .LBB5_265
.LBB5_269:                              #   Parent Loop BB5_266 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_273 Depth 3
	slli	a0, s9, 1
	add	a1, s2, a0
	lh	a1, 0(a1)
	mul	a1, s11, a1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	s1, a1, x1
	sub	a1, s1, t5
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	t6, a1, .LBB5_268
# %bb.270:                              #   in Loop: Header=BB5_269 Depth=2
	add	a0, s7, a0
	lh	a0, 0(a0)
	mul	a0, s11, a0
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	s10, a0, x2
	sub	a0, s10, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB5_268
# %bb.271:                              #   in Loop: Header=BB5_269 Depth=2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s3, a0, 16
	sext.w	a0, s5
	bge	s3, a0, .LBB5_267
# %bb.272:                              # %.preheader6
                                        #   in Loop: Header=BB5_269 Depth=2
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 192(sp)                     # 8-byte Folded Spill
	li	a0, 0
	li	s5, 0
	ld	s2, 288(sp)                     # 8-byte Folded Reload
	ld	s7, 272(sp)                     # 8-byte Folded Reload
	ld	s8, 248(sp)                     # 8-byte Folded Reload
	ld	s11, 280(sp)                    # 8-byte Folded Reload
	ld	s4, 264(sp)                     # 8-byte Folded Reload
.LBB5_273:                              #   Parent Loop BB5_266 Depth=1
                                        #     Parent Loop BB5_269 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, %lo(img)(s0)
	lw	a5, 52(a1)
	addw	a2, a0, s10
	mv	a0, s2
	mv	a1, s11
	mv	a3, s1
	mv	a4, s7
	jalr	s4
	addi	s5, s5, 1
	slli	a0, s5, 48
	srli	a0, a0, 48
	bltu	a0, s8, .LBB5_273
# %bb.274:                              #   in Loop: Header=BB5_269 Depth=2
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	ld	s4, 200(sp)                     # 8-byte Folded Reload
	ld	t5, 208(sp)                     # 8-byte Folded Reload
	ld	s5, 192(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 168(sp)                     # 8-byte Folded Reload
	ld	x2, 160(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(Big_Hexagon_X)
	addi	s2, s2, %lo(Big_Hexagon_X)
	lui	s7, %hi(Big_Hexagon_Y)
	addi	s7, s7, %lo(Big_Hexagon_Y)
	ld	s11, 144(sp)                    # 8-byte Folded Reload
	li	a3, 16
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	bge	s3, a0, .LBB5_268
# %bb.275:                              #   in Loop: Header=BB5_269 Depth=2
	sd	s10, 184(sp)                    # 8-byte Folded Spill
	mv	s8, s1
	mv	s5, s3
	j	.LBB5_268
.Lfunc_end5:
	.size	simplified_FastIntegerPelBlockMotionSearch, .Lfunc_end5-simplified_FastIntegerPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_FastSubPelBlockMotionSearch # -- Begin function simplified_FastSubPelBlockMotionSearch
	.p2align	2
	.type	simplified_FastSubPelBlockMotionSearch,@function
simplified_FastSubPelBlockMotionSearch: # @simplified_FastSubPelBlockMotionSearch
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
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, 22
	add	t1, t0, t1
	lw	t1, 108(t1)
	ld	s8, 272(sp)
	mv	s2, a7
	mv	s6, a6
	sd	a5, 160(sp)                     # 8-byte Folded Spill
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	beqz	t1, .LBB6_4
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a5, t0, a0
	lw	a0, 12(t0)
	ld	a5, 0(a5)
	li	t0, 528
	mul	t0, a0, t0
	add	a5, a5, t0
	lw	a5, 424(a5)
	beqz	a5, .LBB6_4
# %bb.2:
	andi	a5, a0, 1
	li	a0, 2
	beqz	a5, .LBB6_5
# %bb.3:
	li	a0, 4
	j	.LBB6_5
.LBB6_4:
	li	a0, 0
.LBB6_5:
	ld	s9, 280(sp)
	addw	a0, a0, a2
	slli	a0, a0, 3
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	add	a0, a2, a0
	ld	a0, 0(a0)
	slli	a1, a1, 3
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	add	a0, a0, a1
	ld	t1, 0(a0)
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	add	a0, a2, a0
	lw	a5, 84(a0)
	lw	a2, 88(a0)
	slli	a3, a3, 2
	addi	a3, a3, 16
	lh	t2, 0(s8)
	slli	a4, a4, 2
	addi	a4, a4, 16
	sd	a4, 152(sp)                     # 8-byte Folded Spill
	slli	a0, a5, 48
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	addw	t0, a3, t2
	li	a3, 1
	slli	a1, a2, 48
	sd	t1, 128(sp)                     # 8-byte Folded Spill
	bge	a3, t0, .LBB6_10
# %bb.6:
	lui	a3, 2
	addiw	a4, a3, -1800
	add	a4, t1, a4
	lw	a3, 0(a4)
	subw	a3, a3, a5
	slli	a3, a3, 2
	addi	a3, a3, 32
	slli	a5, a3, 48
	lhu	a3, 0(s9)
	srai	a5, a5, 48
	addi	a5, a5, -1
	bge	t0, a5, .LBB6_11
# %bb.7:
	slli	s1, a3, 48
	srai	t1, s1, 48
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	addw	a5, a5, t1
	li	t0, 2
	blt	a5, t0, .LBB6_11
# %bb.8:
	lw	a4, 4(a4)
	subw	a4, a4, a2
	slli	a4, a4, 2
	addi	a2, a4, 32
	slli	a2, a2, 48
	srai	a2, a2, 48
	addi	a2, a2, -1
	bge	a5, a2, .LBB6_11
# %bb.9:
	lui	a2, %hi(FastLine4X)
	addi	a2, a2, %lo(FastLine4X)
	j	.LBB6_12
.LBB6_10:
	lhu	a3, 0(s9)
.LBB6_11:
	slli	a3, a3, 48
	srai	t1, a3, 48
	lui	a2, %hi(UMVLine4X)
	addi	a2, a2, %lo(UMVLine4X)
.LBB6_12:
	ld	a3, 320(sp)
	sd	a3, 120(sp)                     # 8-byte Folded Spill
	ld	s0, 312(sp)
	ld	s1, 304(sp)
	srai	s5, a0, 48
	srai	s10, a1, 48
	lui	a0, %hi(get_line)
	sd	a2, %lo(get_line)(a0)
	sd	t2, 56(sp)                      # 8-byte Folded Spill
	sub	s4, s6, t2
	srliw	a0, s4, 30
	add	a0, s4, a0
	andi	a0, a0, -4
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	sd	t1, 40(sp)                      # 8-byte Folded Spill
	sub	s7, s2, t1
	lui	a0, %hi(simplified_pred_MV_uplayer_X)
	lui	a1, %hi(simplified_SearchState)
	ld	s3, %lo(simplified_SearchState)(a1)
	lhu	a0, %lo(simplified_pred_MV_uplayer_X)(a0)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(simplified_pred_MV_uplayer_Y)
	lhu	a0, %lo(simplified_pred_MV_uplayer_Y)(a0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	ld	a0, 0(s3)
	srliw	a1, s7, 30
	add	a1, s7, a1
	andi	a1, a1, -4
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	li	a2, 49
	li	a1, 0
	call	memset
	ld	a0, 24(s3)
	li	a1, 1
	sb	a1, 3(a0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lhu	a1, 0(s8)
	lw	a0, 24(a0)
	lh	s3, 0(s9)
	slli	a2, a1, 48
	srai	s11, a2, 48
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s6, 104(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB6_16
# %bb.13:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	sub	a1, s11, s6
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	sub	a2, s3, s2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, s0
	sraiw	a0, a0, 16
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	addw	a4, a1, s11
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	a5, a1, s3
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	ld	s6, 120(sp)                     # 8-byte Folded Reload
	sd	s6, 16(sp)
	sd	s1, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	mv	a2, s5
	mv	a3, s10
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	call	simplified_add_up_SAD_quarter_pel
	mv	t0, a0
	slt	a1, a0, s1
	neg	a2, a1
	mv	a6, s6
	mv	a5, s0
	mv	a7, s5
	blt	a0, s1, .LBB6_15
# %bb.14:
	mv	t0, s1
.LBB6_15:
	lhu	a1, 0(s8)
	and	s11, a2, s11
	and	s3, a2, s3
	j	.LBB6_17
.LBB6_16:
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	mv	a5, s0
	mv	a7, s5
	mv	t0, s1
.LBB6_17:
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	sub	a2, s4, a0
	sub	a0, s7, a3
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	slli	s4, s4, 1
	lui	s5, %hi(block_type_shift_factor)
	addi	s5, s5, %lo(block_type_shift_factor)
	beqz	a1, .LBB6_31
.LBB6_18:
	or	a3, a2, a0
	sd	a5, 96(sp)                      # 8-byte Folded Spill
	sd	a7, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	beqz	a3, .LBB6_21
# %bb.19:
	slli	a1, a1, 48
	srai	a1, a1, 48
	lh	s1, 0(s9)
	add	s0, a2, a1
	lui	a1, %hi(mvbits)
	ld	a1, %lo(mvbits)(a1)
	add	s1, a0, s1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	sub	a0, s0, a0
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	sub	a2, s1, a2
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a1, a0
	mul	a0, a0, a5
	sraiw	a0, a0, 16
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	addw	a4, s0, a4
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	addw	a5, s1, a5
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	a6, 16(sp)
	sd	t0, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	mv	a2, a7
	mv	a3, s10
	mv	a6, s2
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	mv	s2, t0
	call	simplified_add_up_SAD_quarter_pel
	mv	t0, s2
	lh	a1, 0(s9)
	lui	a2, %hi(simplified_SearchState)
	ld	a2, %lo(simplified_SearchState)(a2)
	sub	a1, s1, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s8)
	ld	a1, 24(a1)
	sub	a2, s0, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s2, .LBB6_21
# %bb.20:
	mv	s11, s0
	mv	s3, s1
	mv	t0, a0
.LBB6_21:
	add	s4, s5, s4
	sd	s4, 72(sp)                      # 8-byte Folded Spill
	li	s6, 4
	lui	s10, %hi(Diamond_Y)
	addi	s10, s10, %lo(Diamond_Y)
	lui	s4, %hi(Diamond_X)
	addi	s4, s4, %lo(Diamond_X)
	li	s5, 3
	lui	a5, %hi(simplified_SearchState)
	li	a0, 1
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	mv	s7, s3
	mv	a4, s11
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	j	.LBB6_24
.LBB6_22:                               #   in Loop: Header=BB6_24 Depth=1
	lui	a0, %hi(SubPelThreshold3)
	lhu	a0, %lo(SubPelThreshold3)(a0)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	lhu	a1, 0(a1)
	srlw	a0, a0, a1
	sext.w	a1, t0
	mv	s1, a4
	mv	s0, s7
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB6_49
.LBB6_23:                               #   in Loop: Header=BB6_24 Depth=1
	addi	s6, s6, -1
	addi	s10, s10, 2
	addi	s4, s4, 2
	beqz	s6, .LBB6_29
.LBB6_24:                               # =>This Inner Loop Header: Depth=1
	lh	s0, 0(s4)
	lh	a0, 0(s8)
	add	s0, s11, s0
	subw	a0, s0, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s5, a2, .LBB6_23
# %bb.25:                               #   in Loop: Header=BB6_24 Depth=1
	lh	s1, 0(s10)
	lh	a1, 0(s9)
	add	s1, s3, s1
	subw	a1, s1, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s5, a3, .LBB6_23
# %bb.26:                               #   in Loop: Header=BB6_24 Depth=1
	ld	a2, %lo(simplified_SearchState)(a5)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	bnez	a0, .LBB6_23
# %bb.27:                               #   in Loop: Header=BB6_24 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	subw	a1, s0, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	subw	a2, s1, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a0, a0, 16
	mv	s11, s8
	mv	s8, a4
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	addw	a4, s0, a4
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	addw	a5, s1, a5
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	sd	a1, 16(sp)
	sext.w	s2, t0
	sd	s2, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	mv	s3, s7
	mv	s7, s9
	mv	s9, t0
	call	simplified_add_up_SAD_quarter_pel
	lui	a5, %hi(simplified_SearchState)
	mv	a4, s8
	mv	s8, s11
	mv	t0, s9
	mv	s9, s7
	mv	s7, s3
	lh	a1, 0(s9)
	ld	a2, %lo(simplified_SearchState)(a5)
	subw	a1, s1, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s11)
	ld	a1, 24(a1)
	subw	a2, s0, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s2, .LBB6_22
# %bb.28:                               #   in Loop: Header=BB6_24 Depth=1
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	mv	a4, s0
	mv	s7, s1
	mv	t0, a0
	j	.LBB6_22
.LBB6_29:
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB6_38
# %bb.30:
	mv	s1, a4
	mv	s0, s7
	j	.LBB6_49
.LBB6_31:
	lhu	a3, 0(s9)
	bnez	a3, .LBB6_18
# %bb.32:
	bnez	a2, .LBB6_18
# %bb.33:
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	sub	a3, a4, a3
	andi	a3, a3, 3
	bnez	a3, .LBB6_18
# %bb.34:
	bnez	a0, .LBB6_18
# %bb.35:
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	sub	a3, a4, a3
	andi	a3, a3, 3
	bnez	a3, .LBB6_18
# %bb.36:
	lui	a3, %hi(SubPelThreshold1)
	lhu	a3, %lo(SubPelThreshold1)(a3)
	add	a4, s5, s4
	lhu	a4, 0(a4)
	srlw	a3, a3, a4
	bge	t0, a3, .LBB6_18
# %bb.37:
	mv	s1, s11
	j	.LBB6_48
.LBB6_38:                               # %.preheader3
	li	s5, 4
	lui	s6, %hi(Diamond_Y)
	addi	s6, s6, %lo(Diamond_Y)
	lui	s10, %hi(Diamond_X)
	addi	s10, s10, %lo(Diamond_X)
	li	a7, 3
	lui	t1, %hi(simplified_SearchState)
	li	a0, 1
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	mv	s3, s7
	mv	a6, a4
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	j	.LBB6_41
.LBB6_39:                               #   in Loop: Header=BB6_41 Depth=1
	lui	a0, %hi(SubPelThreshold3)
	lhu	a0, %lo(SubPelThreshold3)(a0)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	lhu	a1, 0(a1)
	srlw	a0, a0, a1
	sext.w	a1, t0
	mv	s1, a6
	mv	s0, s3
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	li	a7, 3
	blt	a1, a0, .LBB6_49
.LBB6_40:                               #   in Loop: Header=BB6_41 Depth=1
	addi	s5, s5, -1
	addi	s6, s6, 2
	addi	s10, s10, 2
	beqz	s5, .LBB6_46
.LBB6_41:                               # =>This Inner Loop Header: Depth=1
	lh	s0, 0(s10)
	lh	a0, 0(s8)
	add	s0, a4, s0
	subw	a0, s0, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	a7, a2, .LBB6_40
# %bb.42:                               #   in Loop: Header=BB6_41 Depth=1
	lh	s1, 0(s6)
	lh	a1, 0(s9)
	add	s1, s7, s1
	subw	a1, s1, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	a7, a3, .LBB6_40
# %bb.43:                               #   in Loop: Header=BB6_41 Depth=1
	ld	a2, %lo(simplified_SearchState)(t1)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	bnez	a0, .LBB6_40
# %bb.44:                               #   in Loop: Header=BB6_41 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	subw	a1, s0, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	subw	a2, s1, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a0, a0, 16
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	addw	a4, s0, a4
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	addw	a5, s1, a5
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	sd	a1, 16(sp)
	sext.w	s11, t0
	sd	s11, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	mv	s4, a6
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	mv	s2, t0
	call	simplified_add_up_SAD_quarter_pel
	lui	t1, %hi(simplified_SearchState)
	mv	a6, s4
	mv	t0, s2
	lh	a1, 0(s9)
	ld	a2, %lo(simplified_SearchState)(t1)
	subw	a1, s1, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s8)
	ld	a1, 24(a1)
	subw	a2, s0, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s11, .LBB6_39
# %bb.45:                               #   in Loop: Header=BB6_41 Depth=1
	sd	zero, 64(sp)                    # 8-byte Folded Spill
	mv	a6, s0
	mv	s3, s1
	mv	t0, a0
	j	.LBB6_39
.LBB6_46:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB6_50
# %bb.47:
	mv	s1, a6
.LBB6_48:
	mv	s0, s3
.LBB6_49:
	sh	s1, 0(s8)
	sext.w	a0, t0
	sh	s0, 0(s9)
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
	addi	sp, sp, 272
	ret
.LBB6_50:                               # %.preheader
	li	s2, 4
	lui	s4, %hi(Diamond_Y)
	addi	s4, s4, %lo(Diamond_Y)
	lui	s5, %hi(Diamond_X)
	addi	s5, s5, %lo(Diamond_X)
	li	s6, 3
	lui	a4, %hi(simplified_SearchState)
	mv	s0, s3
	mv	s1, a6
	sd	a6, 56(sp)                      # 8-byte Folded Spill
	j	.LBB6_53
.LBB6_51:                               #   in Loop: Header=BB6_53 Depth=1
	lui	a0, %hi(SubPelThreshold3)
	lhu	a0, %lo(SubPelThreshold3)(a0)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	lhu	a1, 0(a1)
	srlw	a0, a0, a1
	mv	s1, s11
	mv	s0, s10
	ld	a6, 56(sp)                      # 8-byte Folded Reload
	blt	t0, a0, .LBB6_49
.LBB6_52:                               #   in Loop: Header=BB6_53 Depth=1
	addi	s2, s2, -1
	addi	s4, s4, 2
	addi	s5, s5, 2
	beqz	s2, .LBB6_49
.LBB6_53:                               # =>This Inner Loop Header: Depth=1
	lh	s11, 0(s5)
	lh	a0, 0(s8)
	add	s11, a6, s11
	subw	a0, s11, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s6, a2, .LBB6_52
# %bb.54:                               #   in Loop: Header=BB6_53 Depth=1
	lh	s10, 0(s4)
	lh	a1, 0(s9)
	add	s10, s3, s10
	subw	a1, s10, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s6, a3, .LBB6_52
# %bb.55:                               #   in Loop: Header=BB6_53 Depth=1
	ld	a2, %lo(simplified_SearchState)(a4)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	bnez	a0, .LBB6_52
# %bb.56:                               #   in Loop: Header=BB6_53 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	subw	a1, s11, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	subw	a2, s10, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a0, a0, 16
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	addw	a4, s11, a1
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	a5, s10, a1
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	sd	a1, 16(sp)
	sext.w	s7, t0
	sd	s7, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	call	simplified_add_up_SAD_quarter_pel
	lui	a4, %hi(simplified_SearchState)
	lh	a1, 0(s9)
	ld	a2, %lo(simplified_SearchState)(a4)
	subw	a1, s10, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s8)
	ld	a1, 24(a1)
	mv	t0, a0
	subw	a0, s11, a2
	add	a0, a1, a0
	li	a1, 1
	sb	a1, 3(a0)
	blt	t0, s7, .LBB6_51
# %bb.57:                               #   in Loop: Header=BB6_53 Depth=1
	mv	s11, s1
	mv	s10, s0
	mv	t0, s7
	j	.LBB6_51
.Lfunc_end6:
	.size	simplified_FastSubPelBlockMotionSearch, .Lfunc_end6-simplified_FastSubPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_decide_intrabk_SAD   # -- Begin function simplified_decide_intrabk_SAD
	.p2align	2
	.type	simplified_decide_intrabk_SAD,@function
simplified_decide_intrabk_SAD:          # @simplified_decide_intrabk_SAD
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 2
	beq	a1, a2, .LBB7_10
# %bb.1:
	lw	a1, 152(a0)
	lw	a0, 156(a0)
	beqz	a1, .LBB7_6
# %bb.2:
	lui	a2, %hi(simplified_flag_intra)
	ld	a2, %lo(simplified_flag_intra)(a2)
	srai	a1, a1, 4
	add	a1, a2, a1
	beqz	a0, .LBB7_8
# %bb.3:
	lbu	a2, 0(a1)
	li	a0, 1
	bnez	a2, .LBB7_9
# %bb.4:
	lbu	a2, -1(a1)
	bnez	a2, .LBB7_9
# %bb.5:
	lbu	a0, 1(a1)
	snez	a0, a0
	j	.LBB7_9
.LBB7_6:
	beqz	a0, .LBB7_9
# %bb.7:
	lui	a0, %hi(simplified_flag_intra)
	ld	a0, %lo(simplified_flag_intra)(a0)
	lbu	a0, 0(a0)
	j	.LBB7_9
.LBB7_8:
	lbu	a0, -1(a1)
.LBB7_9:
	lui	a1, %hi(simplified_flag_intra_SAD)
	sw	a0, %lo(simplified_flag_intra_SAD)(a1)
.LBB7_10:
	ret
.Lfunc_end7:
	.size	simplified_decide_intrabk_SAD, .Lfunc_end7-simplified_decide_intrabk_SAD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_skip_intrabk_SAD     # -- Begin function simplified_skip_intrabk_SAD
	.p2align	2
	.type	simplified_skip_intrabk_SAD,@function
simplified_skip_intrabk_SAD:            # @simplified_skip_intrabk_SAD
# %bb.0:
	lui	a2, %hi(img)
	ld	a1, %lo(img)(a2)
	lw	a3, 0(a1)
	addiw	a0, a0, -9
	blez	a3, .LBB8_2
# %bb.1:
	lui	a3, %hi(simplified_flag_intra)
	lw	a1, 152(a1)
	ld	a3, %lo(simplified_flag_intra)(a3)
	sltiu	a4, a0, 2
	srai	a1, a1, 4
	add	a1, a3, a1
	sb	a4, 0(a1)
	ld	a1, %lo(img)(a2)
.LBB8_2:
	li	a2, 1
	bltu	a2, a0, .LBB8_6
# %bb.3:
	lw	a0, 24(a1)
	li	a1, 2
	beq	a0, a1, .LBB8_6
# %bb.4:
	lui	a0, %hi(simplified_fastme_l0_cost)
	ld	a0, %lo(simplified_fastme_l0_cost)(a0)
	lui	a1, %hi(simplified_fastme_l1_cost)
	ld	a1, %lo(simplified_fastme_l1_cost)(a1)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x8, 8(a0)
	ld	a2, 8(a1)
	ld	a3, 16(a0)
	ld	a4, 16(a1)
	ld	a5, 24(a0)
	ld	a6, 24(a1)
	ld	a7, 32(a0)
	ld	t0, 32(a1)
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	ld	x9, 40(a0)
	ld	x10, 40(a1)
	ld	x11, 48(a0)
	ld	x12, 48(a1)
	ld	x13, 56(a0)
	ld	x14, 56(a1)
	ld	t3, 0(a0)
	ld	t4, 0(a1)
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x15, 64(a0)
	ld	x16, 64(a1)
	ld	t1, 0(t3)
	ld	t2, 0(t4)
	ld	t3, 8(t3)
	ld	t4, 8(t4)
	ld	t5, 8(a2)
	ld	t6, 8(a3)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	ld	x1, 8(a4)
	ld	x2, 8(a5)
	ld	x3, 8(a6)
	ld	x4, 8(a7)
	ld	x5, 8(t0)
	li	x6, 0
	li	x7, 16
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x23, t0
	mv	x20, a7
	mv	x21, a6
	mv	x22, a5
	mv	x17, a4
	mv	x18, a3
	mv	x19, a2
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x2b7(x21)		# 101010110101010110111
	add	x24, t1, x6
	sw	zero, 0(x24)
	ld	x24, 0(x8)
	add	x25, t2, x6
	sw	zero, 0(x25)
	ld	x19, 0(x19)
	add	x24, x24, x6
	regsw_c	x14, 0x5ba(x11)		# 010110111010110111010
	sw	zero, 0(x24)
	ld	x18, 0(x18)
	add	x19, x19, x6
	sw	zero, 0(x19)
	ld	x17, 0(x17)
	add	x18, x18, x6
	sw	zero, 0(x18)
	regsw_c	x21, 0x5d6(x27)		# 110111010110111010110
	ld	x18, 0(x22)
	add	x17, x17, x6
	sw	zero, 0(x17)
	ld	x17, 0(x21)
	add	x18, x18, x6
	sw	zero, 0(x18)
	ld	x18, 0(x20)
	regsw_c	x13, 0x6b7(x29)		# 111010110111010110111
	add	x17, x17, x6
	sw	zero, 0(x17)
	ld	x17, 0(x23)
	add	x18, x18, x6
	sw	zero, 0(x18)
	ld	x9, 0(x9)
	add	x17, x17, x6
	regsw_c	x14, 0x5ba(x11)		# 010110111010110111010
	sw	zero, 0(x17)
	ld	x10, 0(x10)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 0(x11)
	add	x10, x10, x6
	sw	zero, 0(x10)
	regsw_c	x21, 0x5d6(x27)		# 110111010110111010110
	ld	x10, 0(x12)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 0(x13)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 0(x14)
	regsw_c	x13, 0x797(x29)		# 111010110111110010111
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 0(x15)
	add	x10, x10, x6
	ld	x11, 0(x16)
	sw	zero, 0(x10)
	add	x9, x9, x6
	regsw_c	x21, 0x395(x11)		# 010111010101110010101
	sw	zero, 0(x9)
	add	x11, x11, x6
	sw	zero, 0(x11)
	add	x9, t3, x6
	ld	x8, 8(x8)
	sw	zero, 0(x9)
	add	x9, t4, x6
	regsw_c	x21, 0x2aa(x11)		# 010111010101010101010
	sw	zero, 0(x9)
	add	x8, x8, x6
	sw	zero, 0(x8)
	add	x8, t5, x6
	sw	zero, 0(x8)
	add	x8, t6, x6
	sw	zero, 0(x8)
	regsw_c	x14, 0x5d4(x29)		# 111010111010111010100
	add	x8, x1, x6
	sw	zero, 0(x8)
	add	x8, x2, x6
	sw	zero, 0(x8)
	add	x8, x3, x6
	sw	zero, 0(x8)
	ld	x9, 40(a0)
	regsw_c	x9, 0x5d6(x29)		# 111010100110111010110
	add	x8, x4, x6
	sw	zero, 0(x8)
	ld	x10, 40(a1)
	ld	x8, 8(x9)
	add	x11, x5, x6
	sw	zero, 0(x11)
	ld	x11, 8(x10)
	regsw_c	x5, 0x732(x30)		# 111100010111100110010
	add	x8, x8, x6
	ld	x12, 48(a0)
	sw	zero, 0(x8)
	add	x11, x11, x6
	ld	x13, 48(a1)
	ld	x8, 8(x12)
	sw	zero, 0(x11)
	regsw_c	x14, 0x5bc(x19)		# 100110111010110111100
	ld	x11, 56(a0)
	ld	x14, 8(x13)
	add	x8, x8, x6
	sw	zero, 0(x8)
	ld	x8, 8(x11)
	add	x14, x14, x6
	ld	x15, 56(a1)
	regsw_c	x25, 0x4a6(x11)		# 010111100110010100110
	sw	zero, 0(x14)
	add	x8, x8, x6
	ld	x14, 64(a0)
	ld	x16, 8(x15)
	sw	zero, 0(x8)
	ld	x17, 64(a1)
	ld	x8, 8(x14)
	regsw_c	x13, 0x717(x29)		# 111010110111100010111
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x16, 8(x17)
	add	x8, x8, x6
	ld	x18, 0(a0)
	sw	zero, 0(x8)
	add	x16, x16, x6
	regsw_c	x5, 0x1ba(x19)		# 100110010100110111010
	ld	x19, 0(a1)
	ld	x20, 16(x18)
	sw	zero, 0(x16)
	ld	x8, 8(a0)
	ld	x16, 16(x19)
	add	x20, x20, x6
	sw	zero, 0(x20)
	regsw_c	x21, 0x1d4(x27)		# 110111010100111010100
	ld	x20, 16(x8)
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x16, 16(a2)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x20, 16(a3)
	regsw_c	x9, 0x6a7(x29)		# 111010100111010100111
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x16, 16(a4)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x20, 16(a5)
	add	x16, x16, x6
	regsw_c	x14, 0x53a(x10)		# 010100111010100111010
	sw	zero, 0(x16)
	ld	x16, 16(a6)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x20, 16(a7)
	add	x16, x16, x6
	sw	zero, 0(x16)
	regsw_c	x21, 0x5d6(x19)		# 100111010110111010110
	ld	x16, 16(t0)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x9, 16(x9)
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x10, 16(x10)
	regsw_c	x13, 0x6b7(x29)		# 111010110111010110111
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 16(x12)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 16(x13)
	add	x9, x9, x6
	regsw_c	x14, 0x5ba(x11)		# 010110111010110111010
	sw	zero, 0(x9)
	ld	x9, 16(x11)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 16(x15)
	add	x9, x9, x6
	sw	zero, 0(x9)
	regsw_c	x21, 0x5d6(x27)		# 110111010110111010110
	ld	x9, 16(x14)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 16(x17)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 24(x18)
	regsw_c	x13, 0x6b7(x29)		# 111010110111010110111
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 24(x19)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 24(x8)
	add	x10, x10, x6
	regsw_c	x15, 0x194(x17)		# 100010111100110010100
	ld	x19, 8(a1)
	sw	zero, 0(x10)
	add	x9, x9, x6
	ld	x18, 16(a0)
	ld	x10, 24(x19)
	sw	zero, 0(x9)
	ld	x17, 16(a1)
	regsw_c	x21, 0x5e2(x27)		# 110111010110111100010
	ld	x9, 24(x18)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 24(x17)
	add	x9, x9, x6
	ld	x22, 24(a0)
	sw	zero, 0(x9)
	regsw_c	x12, 0x537(x30)		# 111100110010100110111
	add	x10, x10, x6
	ld	x21, 24(a1)
	ld	x9, 24(x22)
	sw	zero, 0(x10)
	ld	x20, 32(a0)
	ld	x10, 24(x21)
	add	x9, x9, x6
	regsw_c	x15, 0xbc(x11)		# 010110111100010111100
	sw	zero, 0(x9)
	ld	x9, 24(x20)
	add	x10, x10, x6
	ld	x23, 32(a1)
	sw	zero, 0(x10)
	add	x10, x9, x6
	ld	x9, 40(a0)
	regsw_c	x9, 0x5d6(x25)		# 110010100110111010110
	ld	x11, 24(x23)
	sw	zero, 0(x10)
	ld	x10, 40(a1)
	ld	x12, 24(x9)
	add	x11, x11, x6
	sw	zero, 0(x11)
	ld	x13, 24(x10)
	regsw_c	x5, 0x732(x30)		# 111100010111100110010
	add	x12, x12, x6
	ld	x11, 48(a0)
	sw	zero, 0(x12)
	add	x13, x13, x6
	ld	x12, 48(a1)
	ld	x14, 24(x11)
	sw	zero, 0(x13)
	regsw_c	x14, 0x5bc(x19)		# 100110111010110111100
	ld	x13, 56(a0)
	ld	x15, 24(x12)
	add	x14, x14, x6
	sw	zero, 0(x14)
	ld	x16, 24(x13)
	add	x15, x15, x6
	ld	x14, 56(a1)
	regsw_c	x25, 0x516(x11)		# 010111100110100010110
	sw	zero, 0(x15)
	add	x24, x16, x6
	ld	x15, 64(a0)
	ld	x25, 24(x14)
	ld	x16, 64(a1)
	sw	zero, 0(x24)
	ld	x24, 24(x15)
	regsw_c	x5, 0x6be(x31)		# 111110010111010111110
	add	x25, x25, x6
	ld	x26, 24(x16)
	sw	zero, 0(x25)
	add	x24, x24, x6
	sw	zero, 0(x24)
	add	x26, x26, x6
	addi	x6, x6, 4
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	sw	zero, 0(x26)
	bne	x6, x7, .LBB8_5
.LBB8_6:
	ret
.Lfunc_end8:
	.size	simplified_skip_intrabk_SAD, .Lfunc_end8-simplified_skip_intrabk_SAD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_setup_FME            # -- Begin function simplified_setup_FME
	.p2align	2
	.type	simplified_setup_FME,@function
simplified_setup_FME:                   # @simplified_setup_FME
# %bb.0:
	li	a7, 6
	li	a6, 40
	blt	a7, a4, .LBB9_4
# %bb.1:
	li	a7, 4
	li	a6, 32
	blt	a7, a4, .LBB9_4
# %bb.2:
	li	a6, 16
	beq	a4, a7, .LBB9_4
# %bb.3:
	li	a7, 2
	li	a6, 8
	blt	a4, a7, .LBB9_8
.LBB9_4:
	slli	a4, a2, 3
	add	a4, a5, a4
	ld	a4, 0(a4)
	slli	a5, a3, 3
	add	a4, a4, a5
	ld	a4, 0(a4)
	slli	a5, a1, 3
	add	a4, a4, a5
	ld	a4, 0(a4)
	slli	a0, a0, 3
	add	a0, a4, a0
	ld	a0, 0(a0)
	add	a0, a0, a6
	ld	a0, 0(a0)
	lh	a4, 0(a0)
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	lui	a7, %hi(simplified_pred_MV_uplayer_X)
	sh	a4, %lo(simplified_pred_MV_uplayer_X)(a7)
	lh	a0, 2(a0)
	lw	a4, 156(a5)
	lui	a7, %hi(simplified_pred_MV_uplayer_Y)
	lw	a5, 152(a5)
	sh	a0, %lo(simplified_pred_MV_uplayer_Y)(a7)
	srli	a0, a4, 2
	addw	a0, a0, a2
	srli	a2, a5, 2
	li	a4, 1
	addw	a2, a2, a3
	beq	a1, a4, .LBB9_6
# %bb.5:
	lui	a1, %hi(simplified_fastme_l0_cost)
	addi	a1, a1, %lo(simplified_fastme_l0_cost)
	j	.LBB9_7
.LBB9_6:
	lui	a1, %hi(simplified_fastme_l1_cost)
	addi	a1, a1, %lo(simplified_fastme_l1_cost)
.LBB9_7:
	ld	a1, 0(a1)
	add	a1, a1, a6
	ld	a1, 0(a1)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lui	a1, %hi(simplified_flag_intra_SAD)
	lw	a1, %lo(simplified_flag_intra_SAD)(a1)
	srliw	a2, a0, 31
	addw	a0, a0, a2
	srli	a0, a0, 1
	snez	a1, a1
	addi	a1, a1, -1
	and	a0, a1, a0
	lui	a1, %hi(simplified_pred_SAD_uplayer)
	sw	a0, %lo(simplified_pred_SAD_uplayer)(a1)
.LBB9_8:
	ret
.Lfunc_end9:
	.size	simplified_setup_FME, .Lfunc_end9-simplified_setup_FME
                                        # -- End function
	.option	pop
	.type	SymmetricalCrossSearchThreshold1,@object # @SymmetricalCrossSearchThreshold1
	.section	.sbss,"aw",@nobits
	.globl	SymmetricalCrossSearchThreshold1
	.p2align	1, 0x0
SymmetricalCrossSearchThreshold1:
	.half	0                               # 0x0
	.size	SymmetricalCrossSearchThreshold1, 2

	.type	SymmetricalCrossSearchThreshold2,@object # @SymmetricalCrossSearchThreshold2
	.globl	SymmetricalCrossSearchThreshold2
	.p2align	1, 0x0
SymmetricalCrossSearchThreshold2:
	.half	0                               # 0x0
	.size	SymmetricalCrossSearchThreshold2, 2

	.type	ConvergeThreshold,@object       # @ConvergeThreshold
	.globl	ConvergeThreshold
	.p2align	1, 0x0
ConvergeThreshold:
	.half	0                               # 0x0
	.size	ConvergeThreshold, 2

	.type	SubPelThreshold1,@object        # @SubPelThreshold1
	.globl	SubPelThreshold1
	.p2align	1, 0x0
SubPelThreshold1:
	.half	0                               # 0x0
	.size	SubPelThreshold1, 2

	.type	SubPelThreshold3,@object        # @SubPelThreshold3
	.globl	SubPelThreshold3
	.p2align	1, 0x0
SubPelThreshold3:
	.half	0                               # 0x0
	.size	SubPelThreshold3, 2

	.type	simplified_flag_intra,@object   # @simplified_flag_intra
	.globl	simplified_flag_intra
	.p2align	3, 0x0
simplified_flag_intra:
	.quad	0
	.size	simplified_flag_intra, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"simplified_get_mem_FME: simplified_flag_intra"
	.size	.L.str, 46

	.type	simplified_fastme_l0_cost,@object # @simplified_fastme_l0_cost
	.section	.sbss,"aw",@nobits
	.globl	simplified_fastme_l0_cost
	.p2align	3, 0x0
simplified_fastme_l0_cost:
	.quad	0
	.size	simplified_fastme_l0_cost, 8

	.type	simplified_fastme_l1_cost,@object # @simplified_fastme_l1_cost
	.globl	simplified_fastme_l1_cost
	.p2align	3, 0x0
simplified_fastme_l1_cost:
	.quad	0
	.size	simplified_fastme_l1_cost, 8

	.type	simplified_SearchState,@object  # @simplified_SearchState
	.globl	simplified_SearchState
	.p2align	3, 0x0
simplified_SearchState:
	.quad	0
	.size	simplified_SearchState, 8

	.type	get_line,@object                # @get_line
	.p2align	3, 0x0
get_line:
	.quad	0
	.size	get_line, 8

	.type	block_type_shift_factor,@object # @block_type_shift_factor
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	1, 0x0
block_type_shift_factor:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	1                               # 0x1
	.size	block_type_shift_factor, 16

	.type	Diamond_X,@object               # @Diamond_X
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	1, 0x0
Diamond_X:
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.size	Diamond_X, 8

	.type	Diamond_Y,@object               # @Diamond_Y
	.p2align	1, 0x0
Diamond_Y:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.size	Diamond_Y, 8

	.type	Big_Hexagon_X,@object           # @Big_Hexagon_X
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	1, 0x0
Big_Hexagon_X:
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.size	Big_Hexagon_X, 32

	.type	Big_Hexagon_Y,@object           # @Big_Hexagon_Y
	.p2align	1, 0x0
Big_Hexagon_Y:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.half	65533                           # 0xfffd
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	65533                           # 0xfffd
	.size	Big_Hexagon_Y, 32

	.type	simplified_pred_MV_uplayer_X,@object # @simplified_pred_MV_uplayer_X
	.section	.sbss,"aw",@nobits
	.globl	simplified_pred_MV_uplayer_X
	.p2align	1, 0x0
simplified_pred_MV_uplayer_X:
	.half	0                               # 0x0
	.size	simplified_pred_MV_uplayer_X, 2

	.type	simplified_pred_MV_uplayer_Y,@object # @simplified_pred_MV_uplayer_Y
	.globl	simplified_pred_MV_uplayer_Y
	.p2align	1, 0x0
simplified_pred_MV_uplayer_Y:
	.half	0                               # 0x0
	.size	simplified_pred_MV_uplayer_Y, 2

	.type	simplified_flag_intra_SAD,@object # @simplified_flag_intra_SAD
	.globl	simplified_flag_intra_SAD
	.p2align	2, 0x0
simplified_flag_intra_SAD:
	.word	0                               # 0x0
	.size	simplified_flag_intra_SAD, 4

	.type	simplified_pred_SAD_uplayer,@object # @simplified_pred_SAD_uplayer
	.globl	simplified_pred_SAD_uplayer
	.p2align	2, 0x0
simplified_pred_SAD_uplayer:
	.word	0                               # 0x0
	.size	simplified_pred_SAD_uplayer, 4

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
