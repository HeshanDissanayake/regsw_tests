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
	blez	a4, .LBB3_7
# %bb.1:
	mv	s1, a6
	mv	s2, a5
	mv	s3, a4
	mv	s4, a3
	mv	s5, a2
	mv	s6, a1
	mv	s7, a0
	ld	s9, 128(sp)
	ld	s8, 120(sp)
	ld	s10, 112(sp)
	li	a0, 0
	li	s11, 0
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a5, 52(a1)
	addw	a2, a0, s9
	mv	a0, s2
	mv	a1, s7
	mv	a3, s8
	mv	a4, s4
	jalr	s5
	blez	s1, .LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	slli	a1, s11, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	add	a1, s6, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	li	a3, 0
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
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
	bltu	a4, s1, .LBB3_4
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	bge	s0, s10, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_2 Depth=1
	addi	s11, s11, 1
	slli	a0, s11, 48
	srli	a0, a0, 48
	blt	a0, s3, .LBB3_2
.LBB3_7:
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
	ld	a1, 1352(sp)
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	sd	a5, 32(sp)                      # 8-byte Folded Spill
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	sd	a2, 128(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	a2, 64
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	beq	a1, a0, .LBB4_2
# %bb.1:
	li	a0, 128
	sd	a0, 48(sp)                      # 8-byte Folded Spill
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
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	lw	s6, 1328(sp)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	blez	a1, .LBB4_19
# %bb.11:
	lui	a1, 2
	addiw	a1, a1, -1800
	add	a1, a6, a1
	lw	a2, 0(a1)
	lw	a1, 4(a1)
	li	a3, 0
	slli	a2, a2, 2
	slli	a1, a1, 2
	ld	a4, 1336(sp)
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	addiw	s7, a2, 28
	addiw	s8, a1, 28
	add	a0, a6, a0
	ld	s9, 0(a0)
	lui	s11, %hi(get_line)
	j	.LBB4_13
.LBB4_12:                               #   in Loop: Header=BB4_13 Depth=1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	bge	a0, a1, .LBB4_19
.LBB4_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB4_12
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=1
	li	s1, 0
	li	s4, 0
	li	s5, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	addw	s10, a0, a1
	addiw	a0, s10, 4
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 8
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 12
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	add	s2, s2, a0
	andi	a0, a0, 32
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	ld	s3, 24(sp)                      # 8-byte Folded Reload
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
	addi	s1, s1, 8
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	bge	s4, a0, .LBB4_12
.LBB4_17:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s0, 0(s2)
	ld	a5, %lo(get_line)(s11)
	mv	a0, s9
	mv	a1, s10
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s0)
	lhu	a3, 8(a0)
	lhu	a4, 4(s0)
	lhu	a5, 16(a0)
	sw	a1, 1160(sp)
	subw	a2, a2, a3
	sw	a2, 1164(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s0)
	lhu	a0, 24(a0)
	ld	s0, 8(s2)
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
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s0)
	lhu	a3, 8(a0)
	lhu	a4, 4(s0)
	lhu	a5, 16(a0)
	sw	a1, 1176(sp)
	subw	a2, a2, a3
	sw	a2, 1180(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s0)
	lhu	a0, 24(a0)
	ld	s0, 16(s2)
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
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s0)
	lhu	a3, 8(a0)
	lhu	a4, 4(s0)
	lhu	a5, 16(a0)
	sw	a1, 1192(sp)
	subw	a2, a2, a3
	sw	a2, 1196(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s0)
	lhu	a0, 24(a0)
	ld	s0, 24(s2)
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
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	lhu	a3, 2(s0)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 1208(sp)
	subw	a3, a3, a4
	lhu	a1, 4(s0)
	lhu	a2, 16(a0)
	lhu	a4, 6(s0)
	lhu	a0, 24(a0)
	sw	a3, 1212(sp)
	subw	a1, a1, a2
	sw	a1, 1216(sp)
	subw	a4, a4, a0
	sw	a4, 1220(sp)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
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
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB4_21
# %bb.20:
	addi	a0, sp, 136
	ld	a1, 16(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, -368
	sd	ra, 360(sp)                     # 8-byte Folded Spill
	sd	s0, 352(sp)                     # 8-byte Folded Spill
	sd	s1, 344(sp)                     # 8-byte Folded Spill
	sd	s2, 336(sp)                     # 8-byte Folded Spill
	sd	s3, 328(sp)                     # 8-byte Folded Spill
	sd	s4, 320(sp)                     # 8-byte Folded Spill
	sd	s5, 312(sp)                     # 8-byte Folded Spill
	sd	s6, 304(sp)                     # 8-byte Folded Spill
	sd	s7, 296(sp)                     # 8-byte Folded Spill
	sd	s8, 288(sp)                     # 8-byte Folded Spill
	sd	s9, 280(sp)                     # 8-byte Folded Spill
	sd	s10, 272(sp)                    # 8-byte Folded Spill
	sd	s11, 264(sp)                    # 8-byte Folded Spill
	ld	s5, 376(sp)
	ld	s6, 368(sp)
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, %hi(input)
	ld	t1, %lo(input)(t1)
	lui	t2, 22
	add	t2, t0, t2
	lw	t2, 108(t2)
	lh	s11, 0(s6)
	mv	s8, a7
	mv	s9, a6
	sd	a4, 120(sp)                     # 8-byte Folded Spill
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	sd	a5, 96(sp)                      # 8-byte Folded Spill
	slli	a3, a5, 3
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
	sd	a4, 248(sp)                     # 8-byte Folded Spill
	j	.LBB5_6
.LBB5_5:
	lw	a0, 60(t0)
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	li	a0, 0
.LBB5_6:
	lui	a4, %hi(active_pps)
	ld	a6, %lo(active_pps)(a4)
	add	a3, t1, a3
	lh	t4, 0(s5)
	lw	a7, 192(a6)
	ld	t3, 384(sp)
	ld	t2, 104(sp)                     # 8-byte Folded Reload
	slli	a4, t2, 2
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	slli	a5, a5, 2
	addw	t2, s11, t2
	sd	t2, 184(sp)                     # 8-byte Folded Spill
	beqz	a7, .LBB5_9
# %bb.7:
	lw	a7, 24(t0)
	beqz	a7, .LBB5_11
# %bb.8:
	li	t2, 3
	beq	a7, t2, .LBB5_11
.LBB5_9:
	lw	a6, 196(a6)
	beqz	a6, .LBB5_13
# %bb.10:
	lw	a6, 24(t0)
	li	a7, 1
	bne	a6, a7, .LBB5_13
.LBB5_11:
	lw	a6, 1912(t1)
	beqz	a6, .LBB5_13
# %bb.12:
	lui	a6, 2
	addiw	a6, a6, -1752
	j	.LBB5_14
.LBB5_13:
	lui	a6, 2
	addiw	a6, a6, -1760
.LBB5_14:
	lw	a7, 84(a3)
	sd	a7, 256(sp)                     # 8-byte Folded Spill
	addw	a0, a0, a2
	slli	a0, a0, 3
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	add	a0, a2, a0
	ld	a0, 0(a0)
	ld	a2, 400(sp)
	sd	a2, 168(sp)                     # 8-byte Folded Spill
	lw	s1, 88(a3)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a4, a4, s9
	sd	a4, 160(sp)                     # 8-byte Folded Spill
	add	a5, a5, s8
	sd	a5, 152(sp)                     # 8-byte Folded Spill
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	addw	a1, t4, a1
	sd	a1, 216(sp)                     # 8-byte Folded Spill
	add	a0, a0, a6
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bge	t3, a3, .LBB5_19
# %bb.15:
	lw	a2, 52(t0)
	not	a1, t3
	add	a2, a1, a2
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a4
	bge	a3, a2, .LBB5_19
# %bb.16:
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	bge	t3, a2, .LBB5_19
# %bb.17:
	subw	a1, a1, s1
	ld	a2, 248(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a2
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	bge	a2, a1, .LBB5_19
# %bb.18:
	lui	a1, %hi(FastLineX)
	addi	a1, a1, %lo(FastLineX)
	j	.LBB5_20
.LBB5_19:
	lui	a1, %hi(UMVLineX)
	addi	a1, a1, %lo(UMVLineX)
.LBB5_20:
	sd	a1, 240(sp)                     # 8-byte Folded Spill
	sd	t4, 80(sp)                      # 8-byte Folded Spill
	sd	t3, 176(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(mvbits)
	ld	a1, %lo(mvbits)(a1)
	slli	a2, a3, 2
	ld	a4, 160(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a4
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 2
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	subw	a4, a4, a5
	slli	a4, a4, 2
	add	a1, a1, a4
	lw	a1, 0(a1)
	ld	s0, 392(sp)
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	srai	s10, a4, 2
	ld	a0, 0(a0)
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	add	a1, a1, a2
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	sraiw	s7, a0, 16
	blez	s1, .LBB5_27
# %bb.21:
	li	a0, 0
	li	s2, 0
	lui	s3, %hi(img)
	lui	s4, %hi(byte_abs)
.LBB5_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
	ld	a1, %lo(img)(s3)
	lw	a5, 52(a1)
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	addw	a2, a0, a2
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_25
# %bb.23:                               #   in Loop: Header=BB5_22 Depth=1
	slli	a1, s2, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s4)
	li	a3, 0
.LBB5_24:                               #   Parent Loop BB5_22 Depth=1
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
	add	a4, a4, s7
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s7, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_24
.LBB5_25:                               #   in Loop: Header=BB5_22 Depth=1
	bge	s7, s0, .LBB5_87
# %bb.26:                               #   in Loop: Header=BB5_22 Depth=1
	addi	s2, s2, 1
	slli	a0, s2, 48
	srli	a0, a0, 48
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	blt	a0, s1, .LBB5_22
.LBB5_27:
	slt	a0, s7, s0
	negw	a0, a0
	blt	s7, s0, .LBB5_29
.LBB5_28:
	mv	s7, s0
.LBB5_29:
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	and	a7, a0, a1
	and	t0, a0, a3
	or	a0, s8, s9
	sraiw	a1, s11, 31
	xor	a2, s11, a1
	subw	a6, a2, a1
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	sraiw	a1, a5, 31
	xor	a2, a5, a1
	subw	a2, a2, a1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	sd	a7, 144(sp)                     # 8-byte Folded Spill
	sd	t0, 136(sp)                     # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	a6, 48(sp)                      # 8-byte Folded Spill
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB5_41
# %bb.30:
	blt	a4, a6, .LBB5_41
# %bb.31:
	blt	a4, a2, .LBB5_41
# %bb.32:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s9, 2
	sub	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s8, 2
	sub	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s0, a0, 16
	blez	s1, .LBB5_39
# %bb.33:
	li	a0, 0
	li	s2, 0
	lui	s3, %hi(img)
	lui	s4, %hi(byte_abs)
.LBB5_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_36 Depth 2
	ld	a1, %lo(img)(s3)
	lw	a5, 52(a1)
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	addw	a2, a0, a2
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_37
# %bb.35:                               #   in Loop: Header=BB5_34 Depth=1
	slli	a1, s2, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s4)
	li	a3, 0
.LBB5_36:                               #   Parent Loop BB5_34 Depth=1
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
	bltu	a4, s10, .LBB5_36
.LBB5_37:                               #   in Loop: Header=BB5_34 Depth=1
	bge	s0, s7, .LBB5_39
# %bb.38:                               #   in Loop: Header=BB5_34 Depth=1
	addi	s2, s2, 1
	slli	a0, s2, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_34
.LBB5_39:
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	sd	a7, 200(sp)                     # 8-byte Folded Spill
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	sd	t0, 208(sp)                     # 8-byte Folded Spill
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	bge	s0, s7, .LBB5_42
# %bb.40:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	mv	s7, s0
	j	.LBB5_42
.LBB5_41:
	sd	a7, 200(sp)                     # 8-byte Folded Spill
	sd	t0, 208(sp)                     # 8-byte Folded Spill
.LBB5_42:
	lui	a0, %hi(ConvergeThreshold)
	lhu	a0, %lo(ConvergeThreshold)(a0)
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 1
	lui	a2, %hi(block_type_shift_factor)
	addi	a2, a2, %lo(block_type_shift_factor)
	add	a1, a2, a1
	lhu	a2, 0(a1)
	srlw	a0, a0, a2
	sd	s7, 192(sp)                     # 8-byte Folded Spill
	sext.w	a1, s7
	bge	a1, a0, .LBB5_56
# %bb.43:                               # %.preheader2
	li	s0, 0
	li	s2, 4
	lui	s3, %hi(mvbits)
	lui	s7, %hi(img)
	lui	s5, %hi(byte_abs)
	j	.LBB5_45
.LBB5_44:                               #   in Loop: Header=BB5_45 Depth=1
	addi	s0, s0, 1
	bne	s0, s2, .LBB5_45
	j	.LBB5_243
.LBB5_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_49 Depth 2
                                        #       Child Loop BB5_51 Depth 3
	slli	a0, s0, 1
	lui	a1, %hi(Diamond_X)
	addi	a1, a1, %lo(Diamond_X)
	add	a1, a1, a0
	lh	a1, 0(a1)
	addw	s8, t0, a1
	sub	a1, s8, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_44
# %bb.46:                               #   in Loop: Header=BB5_45 Depth=1
	lui	a1, %hi(Diamond_Y)
	addi	a1, a1, %lo(Diamond_Y)
	add	a0, a1, a0
	lh	s6, 0(a0)
	add	s6, a7, s6
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s6, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_44
# %bb.47:                               #   in Loop: Header=BB5_45 Depth=1
	ld	a0, %lo(mvbits)(s3)
	slli	a1, s8, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s9, 192(sp)                     # 8-byte Folded Reload
	blez	s1, .LBB5_54
# %bb.48:                               # %.preheader
                                        #   in Loop: Header=BB5_45 Depth=1
	li	a0, 0
	li	s11, 0
.LBB5_49:                               #   Parent Loop BB5_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_51 Depth 3
	ld	a1, %lo(img)(s7)
	lw	a5, 52(a1)
	addw	a2, a0, s6
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_52
# %bb.50:                               #   in Loop: Header=BB5_49 Depth=2
	slli	a1, s11, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s5)
	li	a3, 0
.LBB5_51:                               #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_51
.LBB5_52:                               #   in Loop: Header=BB5_49 Depth=2
	bge	s4, s9, .LBB5_54
# %bb.53:                               #   in Loop: Header=BB5_49 Depth=2
	addi	s11, s11, 1
	slli	a0, s11, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_49
.LBB5_54:                               #   in Loop: Header=BB5_45 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	bge	s4, s9, .LBB5_44
# %bb.55:                               #   in Loop: Header=BB5_45 Depth=1
	sd	s6, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_44
.LBB5_56:                               # %.preheader53
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	li	s0, 0
	lui	a0, 16
	addiw	a0, a0, -1
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	and	a1, s11, a0
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	and	a0, a5, a0
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	s2, 4
	lui	s3, %hi(mvbits)
	lui	s5, %hi(img)
	lui	s7, %hi(byte_abs)
	j	.LBB5_58
.LBB5_57:                               #   in Loop: Header=BB5_58 Depth=1
	addi	s0, s0, 1
	beq	s0, s2, .LBB5_69
.LBB5_58:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_62 Depth 2
                                        #       Child Loop BB5_64 Depth 3
	slli	a0, s0, 1
	lui	a1, %hi(Diamond_X)
	addi	a1, a1, %lo(Diamond_X)
	add	a1, a1, a0
	lh	a1, 0(a1)
	addw	s11, t0, a1
	sub	a1, s11, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_57
# %bb.59:                               #   in Loop: Header=BB5_58 Depth=1
	lui	a1, %hi(Diamond_Y)
	addi	a1, a1, %lo(Diamond_Y)
	add	a0, a1, a0
	lh	a0, 0(a0)
	addw	s6, a7, a0
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s6, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_57
# %bb.60:                               #   in Loop: Header=BB5_58 Depth=1
	ld	a0, %lo(mvbits)(s3)
	slli	a1, s11, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s8, 192(sp)                     # 8-byte Folded Reload
	blez	s1, .LBB5_67
# %bb.61:                               # %.preheader51
                                        #   in Loop: Header=BB5_58 Depth=1
	li	a0, 0
	li	s9, 0
.LBB5_62:                               #   Parent Loop BB5_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_64 Depth 3
	ld	a1, %lo(img)(s5)
	lw	a5, 52(a1)
	addw	a2, a0, s6
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s11
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_65
# %bb.63:                               #   in Loop: Header=BB5_62 Depth=2
	slli	a1, s9, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s7)
	li	a3, 0
.LBB5_64:                               #   Parent Loop BB5_58 Depth=1
                                        #     Parent Loop BB5_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_64
.LBB5_65:                               #   in Loop: Header=BB5_62 Depth=2
	bge	s4, s8, .LBB5_67
# %bb.66:                               #   in Loop: Header=BB5_62 Depth=2
	addi	s9, s9, 1
	slli	a0, s9, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_62
.LBB5_67:                               #   in Loop: Header=BB5_58 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	bge	s4, s8, .LBB5_57
# %bb.68:                               #   in Loop: Header=BB5_58 Depth=1
	sd	s6, 200(sp)                     # 8-byte Folded Spill
	sd	s11, 208(sp)                    # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_57
.LBB5_69:
	li	a1, 1
	ld	s5, 192(sp)                     # 8-byte Folded Reload
	sext.w	a0, s5
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	bne	a5, a1, .LBB5_71
# %bb.70:
	lui	a1, %hi(SymmetricalCrossSearchThreshold1)
	lhu	a1, %lo(SymmetricalCrossSearchThreshold1)(a1)
	srlw	a1, a1, a2
	blt	a1, a0, .LBB5_72
.LBB5_71:
	lui	a1, %hi(SymmetricalCrossSearchThreshold2)
	lhu	a1, %lo(SymmetricalCrossSearchThreshold2)(a1)
	srlw	a1, a1, a2
	bge	a1, a0, .LBB5_90
.LBB5_72:
	li	a0, 2
	bge	a4, a0, .LBB5_181
# %bb.73:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	sd	a0, 128(sp)                     # 8-byte Folded Spill
.LBB5_74:
	sd	s5, 192(sp)                     # 8-byte Folded Spill
	li	s0, 0
	lui	s9, %hi(Hexagon_X)
	addi	s9, s9, %lo(Hexagon_X)
	lui	a6, %hi(Hexagon_Y)
	addi	a6, a6, %lo(Hexagon_Y)
	li	a7, 6
	lui	s11, %hi(img)
	lui	s5, %hi(byte_abs)
	ld	a5, 128(sp)                     # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	j	.LBB5_76
.LBB5_75:                               #   in Loop: Header=BB5_76 Depth=1
	addi	s0, s0, 1
	beq	s0, a7, .LBB5_88
.LBB5_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_80 Depth 2
                                        #       Child Loop BB5_82 Depth 3
	slli	a0, s0, 1
	add	a1, s9, a0
	lh	a1, 0(a1)
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addw	s7, a2, a1
	sub	a1, s7, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_75
# %bb.77:                               #   in Loop: Header=BB5_76 Depth=1
	add	a0, a6, a0
	lh	a0, 0(a0)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	addw	s6, a1, a0
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s6, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_75
# %bb.78:                               #   in Loop: Header=BB5_76 Depth=1
	mv	s8, a5
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s7, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s3, 192(sp)                     # 8-byte Folded Reload
	blez	s1, .LBB5_85
# %bb.79:                               # %.preheader35
                                        #   in Loop: Header=BB5_76 Depth=1
	li	a0, 0
	li	s2, 0
.LBB5_80:                               #   Parent Loop BB5_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_82 Depth 3
	ld	a1, %lo(img)(s11)
	lw	a5, 52(a1)
	addw	a2, a0, s6
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s7
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_83
# %bb.81:                               #   in Loop: Header=BB5_80 Depth=2
	slli	a1, s2, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s5)
	li	a3, 0
.LBB5_82:                               #   Parent Loop BB5_76 Depth=1
                                        #     Parent Loop BB5_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_82
.LBB5_83:                               #   in Loop: Header=BB5_80 Depth=2
	bge	s4, s3, .LBB5_85
# %bb.84:                               #   in Loop: Header=BB5_80 Depth=2
	addi	s2, s2, 1
	slli	a0, s2, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_80
.LBB5_85:                               #   in Loop: Header=BB5_76 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	mv	a5, s8
	lui	a6, %hi(Hexagon_Y)
	addi	a6, a6, %lo(Hexagon_Y)
	li	a7, 6
	bge	s4, s3, .LBB5_75
# %bb.86:                               #   in Loop: Header=BB5_76 Depth=1
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	mv	a5, s7
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_75
.LBB5_87:
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	slt	a0, s7, s0
	negw	a0, a0
	bge	s7, s0, .LBB5_28
	j	.LBB5_29
.LBB5_88:
	mv	s8, s1
	li	a0, 4
	blt	a4, a0, .LBB5_89
	j	.LBB5_227
.LBB5_89:
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	sd	a5, 208(sp)                     # 8-byte Folded Spill
	j	.LBB5_91
.LBB5_90:
	mv	s8, s1
.LBB5_91:
	li	a0, 2
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	blt	a1, a0, .LBB5_119
# %bb.92:
	lui	a0, %hi(simplified_pred_MV_uplayer_X)
	lh	a0, %lo(simplified_pred_MV_uplayer_X)(a0)
	slli	a1, a0, 33
	srli	a1, a1, 62
	add	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 50
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	sub	a1, a0, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	ld	s7, 192(sp)                     # 8-byte Folded Reload
	ld	s9, 32(sp)                      # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	mv	s1, s8
	blt	a4, a1, .LBB5_103
# %bb.93:
	lui	a1, %hi(simplified_pred_MV_uplayer_Y)
	lh	a1, %lo(simplified_pred_MV_uplayer_Y)(a1)
	slli	a2, a1, 33
	srli	a2, a2, 62
	add	a1, a1, a2
	slli	a1, a1, 48
	srai	a1, a1, 50
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	sub	a2, a1, a2
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a2, a2, a5
	bltu	a4, a2, .LBB5_103
# %bb.94:
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	addw	s8, a0, a2
	ld	s0, 120(sp)                     # 8-byte Folded Reload
	addw	s0, a1, s0
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s0, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s2, a0, 16
	sext.w	s3, s7
	blez	s1, .LBB5_101
# %bb.95:                               # %.preheader27
	li	a2, 0
	li	s4, 0
	lui	s5, %hi(img)
	lui	s6, %hi(byte_abs)
.LBB5_96:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_98 Depth 2
	ld	a0, %lo(img)(s5)
	lw	a5, 52(a0)
	addw	a2, a2, s0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_99
# %bb.97:                               #   in Loop: Header=BB5_96 Depth=1
	slli	a1, s4, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s6)
	li	a3, 0
.LBB5_98:                               #   Parent Loop BB5_96 Depth=1
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
	add	a4, a4, s2
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s2, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_98
.LBB5_99:                               #   in Loop: Header=BB5_96 Depth=1
	bge	s2, s3, .LBB5_101
# %bb.100:                              #   in Loop: Header=BB5_96 Depth=1
	addi	s4, s4, 1
	slli	a2, s4, 48
	srli	a2, a2, 48
	blt	a2, s1, .LBB5_96
.LBB5_101:
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bge	s2, s3, .LBB5_103
# %bb.102:
	sd	s0, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	mv	s7, s2
.LBB5_103:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	or	a0, a0, a1
	bnez	a0, .LBB5_120
.LBB5_104:
	sd	s7, 192(sp)                     # 8-byte Folded Spill
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	s3, 208(sp)                     # 8-byte Folded Reload
.LBB5_105:
	lui	a0, %hi(ConvergeThreshold)
	lhu	a0, %lo(ConvergeThreshold)(a0)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	srlw	a0, a0, a1
	lw	a1, 192(sp)                     # 8-byte Folded Reload
	bge	a1, a0, .LBB5_144
# %bb.106:                              # %.preheader7
	li	s0, 0
	li	s2, 4
	lui	s7, %hi(img)
	lui	s9, %hi(byte_abs)
	mv	a2, s3
	sd	s3, 208(sp)                     # 8-byte Folded Spill
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	j	.LBB5_108
.LBB5_107:                              #   in Loop: Header=BB5_108 Depth=1
	addi	s0, s0, 1
	mv	a2, s3
	bne	s0, s2, .LBB5_108
	j	.LBB5_243
.LBB5_108:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_112 Depth 2
                                        #       Child Loop BB5_114 Depth 3
	slli	a0, s0, 1
	lui	a1, %hi(Diamond_X)
	addi	a1, a1, %lo(Diamond_X)
	add	a1, a1, a0
	lh	a1, 0(a1)
	addw	s8, a2, a1
	sub	a1, s8, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_107
# %bb.109:                              #   in Loop: Header=BB5_108 Depth=1
	lui	a1, %hi(Diamond_Y)
	addi	a1, a1, %lo(Diamond_Y)
	add	a0, a1, a0
	lh	s5, 0(a0)
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	add	s5, a0, s5
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s5, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_107
# %bb.110:                              #   in Loop: Header=BB5_108 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s6, 192(sp)                     # 8-byte Folded Reload
	blez	s1, .LBB5_117
# %bb.111:                              # %.preheader5
                                        #   in Loop: Header=BB5_108 Depth=1
	li	a0, 0
	li	s11, 0
.LBB5_112:                              #   Parent Loop BB5_108 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_114 Depth 3
	ld	a1, %lo(img)(s7)
	lw	a5, 52(a1)
	addw	a2, a0, s5
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_115
# %bb.113:                              #   in Loop: Header=BB5_112 Depth=2
	slli	a1, s11, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s9)
	li	a3, 0
.LBB5_114:                              #   Parent Loop BB5_108 Depth=1
                                        #     Parent Loop BB5_112 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_114
.LBB5_115:                              #   in Loop: Header=BB5_112 Depth=2
	bge	s4, s6, .LBB5_117
# %bb.116:                              #   in Loop: Header=BB5_112 Depth=2
	addi	s11, s11, 1
	slli	a0, s11, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_112
.LBB5_117:                              #   in Loop: Header=BB5_108 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bge	s4, s6, .LBB5_107
# %bb.118:                              #   in Loop: Header=BB5_108 Depth=1
	sd	s5, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_107
.LBB5_119:
	ld	s7, 192(sp)                     # 8-byte Folded Reload
	ld	s9, 32(sp)                      # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	mv	s1, s8
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	or	a0, a0, a1
	beqz	a0, .LBB5_104
.LBB5_120:
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	blt	a4, a0, .LBB5_131
# %bb.121:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	blt	a4, a0, .LBB5_131
# %bb.122:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s11, 2
	sub	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s9, 2
	sub	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s0, a0, 16
	sext.w	s2, s7
	blez	s1, .LBB5_129
# %bb.123:                              # %.preheader24
	li	a0, 0
	li	s3, 0
	lui	s4, %hi(img)
	lui	s5, %hi(byte_abs)
.LBB5_124:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_126 Depth 2
	ld	a1, %lo(img)(s4)
	lw	a5, 52(a1)
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	addw	a2, a0, a2
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_127
# %bb.125:                              #   in Loop: Header=BB5_124 Depth=1
	slli	a1, s3, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s5)
	li	a3, 0
.LBB5_126:                              #   Parent Loop BB5_124 Depth=1
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
	bltu	a4, s10, .LBB5_126
.LBB5_127:                              #   in Loop: Header=BB5_124 Depth=1
	bge	s0, s2, .LBB5_129
# %bb.128:                              #   in Loop: Header=BB5_124 Depth=1
	addi	s3, s3, 1
	slli	a0, s3, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_124
.LBB5_129:
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bge	s0, s2, .LBB5_131
# %bb.130:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	mv	s7, s0
.LBB5_131:
	sd	s7, 192(sp)                     # 8-byte Folded Spill
	li	s0, 0
	li	s2, 4
	lui	s7, %hi(img)
	lui	s5, %hi(byte_abs)
	ld	s3, 208(sp)                     # 8-byte Folded Reload
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	j	.LBB5_133
.LBB5_132:                              #   in Loop: Header=BB5_133 Depth=1
	addi	s0, s0, 1
	beq	s0, s2, .LBB5_105
.LBB5_133:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_137 Depth 2
                                        #       Child Loop BB5_139 Depth 3
	slli	a0, s0, 1
	lui	a1, %hi(Diamond_X)
	addi	a1, a1, %lo(Diamond_X)
	add	a1, a1, a0
	lh	a1, 0(a1)
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	addw	s8, a2, a1
	sub	a1, s8, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_132
# %bb.134:                              #   in Loop: Header=BB5_133 Depth=1
	lui	a1, %hi(Diamond_Y)
	addi	a1, a1, %lo(Diamond_Y)
	add	a0, a1, a0
	lh	a0, 0(a0)
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	addw	s6, a1, a0
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s6, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_132
# %bb.135:                              #   in Loop: Header=BB5_133 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s9, 192(sp)                     # 8-byte Folded Reload
	blez	s1, .LBB5_142
# %bb.136:                              # %.preheader20
                                        #   in Loop: Header=BB5_133 Depth=1
	li	a0, 0
	li	s11, 0
.LBB5_137:                              #   Parent Loop BB5_133 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_139 Depth 3
	ld	a1, %lo(img)(s7)
	lw	a5, 52(a1)
	addw	a2, a0, s6
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_140
# %bb.138:                              #   in Loop: Header=BB5_137 Depth=2
	slli	a1, s11, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s5)
	li	a3, 0
.LBB5_139:                              #   Parent Loop BB5_133 Depth=1
                                        #     Parent Loop BB5_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_139
.LBB5_140:                              #   in Loop: Header=BB5_137 Depth=2
	bge	s4, s9, .LBB5_142
# %bb.141:                              #   in Loop: Header=BB5_137 Depth=2
	addi	s11, s11, 1
	slli	a0, s11, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_137
.LBB5_142:                              #   in Loop: Header=BB5_133 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bge	s4, s9, .LBB5_132
# %bb.143:                              #   in Loop: Header=BB5_133 Depth=1
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	mv	s3, s8
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_132
.LBB5_144:
	mv	a2, s3
	blez	a4, .LBB5_242
# %bb.145:                              # %.preheader18
	li	s9, 0
	lui	s11, %hi(Hexagon_X)
	addi	s11, s11, %lo(Hexagon_X)
	lui	a5, %hi(Hexagon_Y)
	addi	a5, a5, %lo(Hexagon_Y)
	li	a6, 6
	lui	s0, %hi(img)
	lui	s3, %hi(byte_abs)
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	j	.LBB5_147
.LBB5_146:                              #   in Loop: Header=BB5_147 Depth=1
	addi	s9, s9, 1
	slli	a0, s9, 48
	srli	a0, a0, 48
	sd	a1, 200(sp)                     # 8-byte Folded Spill
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	bge	a0, a4, .LBB5_162
.LBB5_147:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_149 Depth 2
                                        #       Child Loop BB5_153 Depth 3
                                        #         Child Loop BB5_155 Depth 4
	li	s5, 0
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	sd	a1, 200(sp)                     # 8-byte Folded Spill
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	j	.LBB5_149
.LBB5_148:                              #   in Loop: Header=BB5_149 Depth=2
	addi	s5, s5, 1
	beq	s5, a6, .LBB5_160
.LBB5_149:                              #   Parent Loop BB5_147 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_153 Depth 3
                                        #         Child Loop BB5_155 Depth 4
	slli	a0, s5, 1
	add	a1, s11, a0
	lh	a1, 0(a1)
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	addw	s8, a2, a1
	sub	a1, s8, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_148
# %bb.150:                              #   in Loop: Header=BB5_149 Depth=2
	add	a0, a5, a0
	lh	a0, 0(a0)
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	addw	s6, a1, a0
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s6, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_148
# %bb.151:                              #   in Loop: Header=BB5_149 Depth=2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s7, 192(sp)                     # 8-byte Folded Reload
	blez	s1, .LBB5_158
# %bb.152:                              # %.preheader16
                                        #   in Loop: Header=BB5_149 Depth=2
	li	a0, 0
	li	s2, 0
.LBB5_153:                              #   Parent Loop BB5_147 Depth=1
                                        #     Parent Loop BB5_149 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_155 Depth 4
	ld	a1, %lo(img)(s0)
	lw	a5, 52(a1)
	addw	a2, a0, s6
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_156
# %bb.154:                              #   in Loop: Header=BB5_153 Depth=3
	slli	a1, s2, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s3)
	li	a3, 0
.LBB5_155:                              #   Parent Loop BB5_147 Depth=1
                                        #     Parent Loop BB5_149 Depth=2
                                        #       Parent Loop BB5_153 Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_155
.LBB5_156:                              #   in Loop: Header=BB5_153 Depth=3
	bge	s4, s7, .LBB5_158
# %bb.157:                              #   in Loop: Header=BB5_153 Depth=3
	addi	s2, s2, 1
	slli	a0, s2, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_153
.LBB5_158:                              #   in Loop: Header=BB5_149 Depth=2
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(Hexagon_Y)
	addi	a5, a5, %lo(Hexagon_Y)
	li	a6, 6
	bge	s4, s7, .LBB5_148
# %bb.159:                              #   in Loop: Header=BB5_149 Depth=2
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s8, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_148
.LBB5_160:                              #   in Loop: Header=BB5_147 Depth=1
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	bne	a2, a0, .LBB5_146
# %bb.161:                              #   in Loop: Header=BB5_147 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	bne	a1, a0, .LBB5_146
.LBB5_162:
	blez	a4, .LBB5_243
# %bb.163:                              # %.preheader12
	li	a1, 0
	li	a5, 4
	lui	s7, %hi(img)
	lui	s9, %hi(byte_abs)
	j	.LBB5_165
.LBB5_164:                              #   in Loop: Header=BB5_165 Depth=1
	addi	a1, a1, 1
	slli	a0, a1, 48
	srli	a0, a0, 48
	bge	a0, a4, .LBB5_243
.LBB5_165:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_167 Depth 2
                                        #       Child Loop BB5_171 Depth 3
                                        #         Child Loop BB5_173 Depth 4
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	li	s5, 0
	ld	s11, 200(sp)                    # 8-byte Folded Reload
	ld	s3, 208(sp)                     # 8-byte Folded Reload
	j	.LBB5_167
.LBB5_166:                              #   in Loop: Header=BB5_167 Depth=2
	addi	s5, s5, 1
	beq	s5, a5, .LBB5_178
.LBB5_167:                              #   Parent Loop BB5_165 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_171 Depth 3
                                        #         Child Loop BB5_173 Depth 4
	slli	a0, s5, 1
	lui	a1, %hi(Diamond_X)
	addi	a1, a1, %lo(Diamond_X)
	add	a1, a1, a0
	lh	a1, 0(a1)
	addw	s8, s3, a1
	sub	a1, s8, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_166
# %bb.168:                              #   in Loop: Header=BB5_167 Depth=2
	lui	a1, %hi(Diamond_Y)
	addi	a1, a1, %lo(Diamond_Y)
	add	a0, a1, a0
	lh	a0, 0(a0)
	addw	s6, s11, a0
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s6, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_166
# %bb.169:                              #   in Loop: Header=BB5_167 Depth=2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s2, 192(sp)                     # 8-byte Folded Reload
	blez	s1, .LBB5_176
# %bb.170:                              # %.preheader10
                                        #   in Loop: Header=BB5_167 Depth=2
	li	a0, 0
	li	s0, 0
.LBB5_171:                              #   Parent Loop BB5_165 Depth=1
                                        #     Parent Loop BB5_167 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_173 Depth 4
	ld	a1, %lo(img)(s7)
	lw	a5, 52(a1)
	addw	a2, a0, s6
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_174
# %bb.172:                              #   in Loop: Header=BB5_171 Depth=3
	slli	a1, s0, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s9)
	li	a3, 0
.LBB5_173:                              #   Parent Loop BB5_165 Depth=1
                                        #     Parent Loop BB5_167 Depth=2
                                        #       Parent Loop BB5_171 Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_173
.LBB5_174:                              #   in Loop: Header=BB5_171 Depth=3
	bge	s4, s2, .LBB5_176
# %bb.175:                              #   in Loop: Header=BB5_171 Depth=3
	addi	s0, s0, 1
	slli	a0, s0, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_171
.LBB5_176:                              #   in Loop: Header=BB5_167 Depth=2
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	li	a5, 4
	bge	s4, s2, .LBB5_166
# %bb.177:                              #   in Loop: Header=BB5_167 Depth=2
	sd	s6, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_166
.LBB5_178:                              #   in Loop: Header=BB5_165 Depth=1
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	bne	a0, s3, .LBB5_164
# %bb.179:                              #   in Loop: Header=BB5_165 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	bne	a0, s11, .LBB5_164
# %bb.180:
	sd	s3, 208(sp)                     # 8-byte Folded Spill
	sd	s11, 200(sp)                    # 8-byte Folded Spill
	j	.LBB5_243
.LBB5_181:
	srliw	a0, a4, 31
	add	a0, a4, a0
	sraiw	a0, a0, 1
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	subw	a0, a2, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	s9, a0, a1
	slli	a0, a2, 2
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	subw	s4, a0, a1
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	subw	a0, a5, a3
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	slli	a0, a5, 2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	subw	a0, a0, a1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	li	a0, 1
	lui	s8, %hi(img)
	sd	a5, 128(sp)                     # 8-byte Folded Spill
	li	s7, 1
	sd	a2, 112(sp)                     # 8-byte Folded Spill
	j	.LBB5_183
.LBB5_182:                              #   in Loop: Header=BB5_183 Depth=1
	addi	s7, s7, 1
	slli	a0, s7, 48
	srli	a0, a0, 48
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB5_74
.LBB5_183:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_187 Depth 2
                                        #       Child Loop BB5_189 Depth 3
                                        #     Child Loop BB5_198 Depth 2
                                        #       Child Loop BB5_200 Depth 3
                                        #     Child Loop BB5_209 Depth 2
                                        #       Child Loop BB5_211 Depth 3
                                        #     Child Loop BB5_220 Depth 2
                                        #       Child Loop BB5_222 Depth 3
	slli	a0, a0, 1
	addi	s6, a0, -1
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	addw	s11, s6, a0
	subw	a0, s11, a3
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	a4, a0, .LBB5_194
# %bb.184:                              #   in Loop: Header=BB5_183 Depth=1
	bltu	a4, s9, .LBB5_194
# %bb.185:                              #   in Loop: Header=BB5_183 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s11, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s4, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s0, a0, 16
	sext.w	s2, s5
	blez	s1, .LBB5_192
# %bb.186:                              # %.preheader47
                                        #   in Loop: Header=BB5_183 Depth=1
	li	a0, 0
	li	s3, 0
.LBB5_187:                              #   Parent Loop BB5_183 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_189 Depth 3
	ld	a1, %lo(img)(s8)
	lw	a5, 52(a1)
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	addw	a2, a0, a2
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s11
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_190
# %bb.188:                              #   in Loop: Header=BB5_187 Depth=2
	slli	a1, s3, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	li	a3, 0
.LBB5_189:                              #   Parent Loop BB5_183 Depth=1
                                        #     Parent Loop BB5_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	bltu	a4, s10, .LBB5_189
.LBB5_190:                              #   in Loop: Header=BB5_187 Depth=2
	bge	s0, s2, .LBB5_192
# %bb.191:                              #   in Loop: Header=BB5_187 Depth=2
	addi	s3, s3, 1
	slli	a0, s3, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_187
.LBB5_192:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bge	s0, s2, .LBB5_194
# %bb.193:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	sd	s11, 128(sp)                    # 8-byte Folded Spill
	mv	s5, s0
.LBB5_194:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	subw	s11, a0, s6
	sub	a0, s11, a3
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	a4, a0, .LBB5_205
# %bb.195:                              #   in Loop: Header=BB5_183 Depth=1
	bltu	a4, s9, .LBB5_205
# %bb.196:                              #   in Loop: Header=BB5_183 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s11, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s4, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s0, a0, 16
	sext.w	s2, s5
	blez	s1, .LBB5_203
# %bb.197:                              # %.preheader45
                                        #   in Loop: Header=BB5_183 Depth=1
	li	a0, 0
	li	s3, 0
.LBB5_198:                              #   Parent Loop BB5_183 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_200 Depth 3
	ld	a1, %lo(img)(s8)
	lw	a5, 52(a1)
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	addw	a2, a0, a2
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s11
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_201
# %bb.199:                              #   in Loop: Header=BB5_198 Depth=2
	slli	a1, s3, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	li	a3, 0
.LBB5_200:                              #   Parent Loop BB5_183 Depth=1
                                        #     Parent Loop BB5_198 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	bltu	a4, s10, .LBB5_200
.LBB5_201:                              #   in Loop: Header=BB5_198 Depth=2
	bge	s0, s2, .LBB5_203
# %bb.202:                              #   in Loop: Header=BB5_198 Depth=2
	addi	s3, s3, 1
	slli	a0, s3, 48
	srli	a0, a0, 48
	blt	a0, s1, .LBB5_198
.LBB5_203:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bge	s0, s2, .LBB5_205
# %bb.204:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	sd	s11, 128(sp)                    # 8-byte Folded Spill
	mv	s5, s0
.LBB5_205:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	bltu	a4, a0, .LBB5_182
# %bb.206:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	addw	s0, s6, a0
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s0, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	a4, a0, .LBB5_217
# %bb.207:                              #   in Loop: Header=BB5_183 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s0, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s2, a0, 16
	blez	s1, .LBB5_214
# %bb.208:                              # %.preheader43
                                        #   in Loop: Header=BB5_183 Depth=1
	li	a2, 0
	li	s3, 0
.LBB5_209:                              #   Parent Loop BB5_183 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_211 Depth 3
	ld	a0, %lo(img)(s8)
	lw	a5, 52(a0)
	addw	a2, a2, s0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_212
# %bb.210:                              #   in Loop: Header=BB5_209 Depth=2
	slli	a1, s3, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	li	a3, 0
.LBB5_211:                              #   Parent Loop BB5_183 Depth=1
                                        #     Parent Loop BB5_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s2
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s2, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_211
.LBB5_212:                              #   in Loop: Header=BB5_209 Depth=2
	sext.w	a0, s5
	bge	s2, a0, .LBB5_214
# %bb.213:                              #   in Loop: Header=BB5_209 Depth=2
	addi	s3, s3, 1
	slli	a2, s3, 48
	srli	a2, a2, 48
	blt	a2, s1, .LBB5_209
.LBB5_214:                              #   in Loop: Header=BB5_183 Depth=1
	sext.w	a1, s5
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	blt	s2, a1, .LBB5_216
# %bb.215:                              #   in Loop: Header=BB5_183 Depth=1
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	mv	s2, a1
.LBB5_216:                              #   in Loop: Header=BB5_183 Depth=1
	mv	s5, s2
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
.LBB5_217:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	subw	s0, a0, s6
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s0, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	a4, a0, .LBB5_182
# %bb.218:                              #   in Loop: Header=BB5_183 Depth=1
	mv	s11, s4
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s0, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s2, a0, 16
	sext.w	s3, s5
	blez	s1, .LBB5_225
# %bb.219:                              # %.preheader41
                                        #   in Loop: Header=BB5_183 Depth=1
	li	a2, 0
	li	s4, 0
.LBB5_220:                              #   Parent Loop BB5_183 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_222 Depth 3
	ld	a0, %lo(img)(s8)
	lw	a5, 52(a0)
	addw	a2, a2, s0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_223
# %bb.221:                              #   in Loop: Header=BB5_220 Depth=2
	slli	a1, s4, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	li	a3, 0
.LBB5_222:                              #   Parent Loop BB5_183 Depth=1
                                        #     Parent Loop BB5_220 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s2
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s2, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_222
.LBB5_223:                              #   in Loop: Header=BB5_220 Depth=2
	bge	s2, s3, .LBB5_225
# %bb.224:                              #   in Loop: Header=BB5_220 Depth=2
	addi	s4, s4, 1
	slli	a2, s4, 48
	srli	a2, a2, 48
	blt	a2, s1, .LBB5_220
.LBB5_225:                              #   in Loop: Header=BB5_183 Depth=1
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	mv	s4, s11
	bge	s2, s3, .LBB5_182
# %bb.226:                              #   in Loop: Header=BB5_183 Depth=1
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	mv	s5, s2
	j	.LBB5_182
.LBB5_227:                              # %.preheader32
	slli	a0, a4, 1
	srli	a0, a0, 62
	add	a0, a4, a0
	sraiw	a0, a0, 2
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	li	s9, 1
	lui	s1, %hi(Big_Hexagon_X)
	addi	s1, s1, %lo(Big_Hexagon_X)
	lui	a6, %hi(Big_Hexagon_Y)
	addi	a6, a6, %lo(Big_Hexagon_Y)
	li	a7, 16
	lui	s3, %hi(img)
	lui	s0, %hi(byte_abs)
	sd	a5, 208(sp)                     # 8-byte Folded Spill
	li	a1, 1
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	j	.LBB5_229
.LBB5_228:                              #   in Loop: Header=BB5_229 Depth=1
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 1
	slli	a0, a1, 48
	srli	s9, a0, 48
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	bge	a0, s9, .LBB5_229
	j	.LBB5_91
.LBB5_229:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_231 Depth 2
                                        #       Child Loop BB5_235 Depth 3
                                        #         Child Loop BB5_237 Depth 4
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	li	s5, 0
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	j	.LBB5_231
.LBB5_230:                              #   in Loop: Header=BB5_231 Depth=2
	addi	s5, s5, 1
	beq	s5, a7, .LBB5_228
.LBB5_231:                              #   Parent Loop BB5_229 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_235 Depth 3
                                        #         Child Loop BB5_237 Depth 4
	slli	a0, s5, 1
	add	a1, s1, a0
	lh	a1, 0(a1)
	mul	a1, s9, a1
	addw	s11, a1, a5
	sub	a1, s11, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	a4, a1, .LBB5_230
# %bb.232:                              #   in Loop: Header=BB5_231 Depth=2
	add	a0, a6, a0
	lh	a0, 0(a0)
	mul	a0, s9, a0
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addw	s6, a0, a1
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sub	a0, s6, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	a4, a0, .LBB5_230
# %bb.233:                              #   in Loop: Header=BB5_231 Depth=2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s11, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s4, a0, 16
	lw	s7, 192(sp)                     # 8-byte Folded Reload
	blez	s8, .LBB5_240
# %bb.234:                              # %.preheader30
                                        #   in Loop: Header=BB5_231 Depth=2
	li	a0, 0
	li	s2, 0
.LBB5_235:                              #   Parent Loop BB5_229 Depth=1
                                        #     Parent Loop BB5_231 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_237 Depth 4
	ld	a1, %lo(img)(s3)
	lw	a5, 52(a1)
	addw	a2, a0, s6
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a3, s11
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	jalr	a6
	blez	s10, .LBB5_238
# %bb.236:                              #   in Loop: Header=BB5_235 Depth=3
	slli	a1, s2, 48
	srli	a1, a1, 48
	slli	a1, a1, 3
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s0)
	li	a3, 0
.LBB5_237:                              #   Parent Loop BB5_229 Depth=1
                                        #     Parent Loop BB5_231 Depth=2
                                        #       Parent Loop BB5_235 Depth=3
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
	add	a4, a4, s4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s4, a4, a7
	addi	a3, a3, 1
	slli	a4, a3, 48
	srli	a4, a4, 48
	addi	a1, a1, 8
	addi	a0, a0, 8
	bltu	a4, s10, .LBB5_237
.LBB5_238:                              #   in Loop: Header=BB5_235 Depth=3
	bge	s4, s7, .LBB5_240
# %bb.239:                              #   in Loop: Header=BB5_235 Depth=3
	addi	s2, s2, 1
	slli	a0, s2, 48
	srli	a0, a0, 48
	blt	a0, s8, .LBB5_235
.LBB5_240:                              #   in Loop: Header=BB5_231 Depth=2
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	ld	a5, 136(sp)                     # 8-byte Folded Reload
	lui	a6, %hi(Big_Hexagon_Y)
	addi	a6, a6, %lo(Big_Hexagon_Y)
	li	a7, 16
	bge	s4, s7, .LBB5_230
# %bb.241:                              #   in Loop: Header=BB5_231 Depth=2
	sd	s6, 200(sp)                     # 8-byte Folded Spill
	sd	s11, 208(sp)                    # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	j	.LBB5_230
.LBB5_242:
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	sd	a0, 200(sp)                     # 8-byte Folded Spill
.LBB5_243:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	sh	a0, 0(a1)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a0
	lw	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	sh	a1, 0(a2)
	ld	ra, 360(sp)                     # 8-byte Folded Reload
	ld	s0, 352(sp)                     # 8-byte Folded Reload
	ld	s1, 344(sp)                     # 8-byte Folded Reload
	ld	s2, 336(sp)                     # 8-byte Folded Reload
	ld	s3, 328(sp)                     # 8-byte Folded Reload
	ld	s4, 320(sp)                     # 8-byte Folded Reload
	ld	s5, 312(sp)                     # 8-byte Folded Reload
	ld	s6, 304(sp)                     # 8-byte Folded Reload
	ld	s7, 296(sp)                     # 8-byte Folded Reload
	ld	s8, 288(sp)                     # 8-byte Folded Reload
	ld	s9, 280(sp)                     # 8-byte Folded Reload
	ld	s10, 272(sp)                    # 8-byte Folded Reload
	ld	s11, 264(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 368
	ret
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
	addi	sp, sp, -288
	sd	ra, 280(sp)                     # 8-byte Folded Spill
	sd	s0, 272(sp)                     # 8-byte Folded Spill
	sd	s1, 264(sp)                     # 8-byte Folded Spill
	sd	s2, 256(sp)                     # 8-byte Folded Spill
	sd	s3, 248(sp)                     # 8-byte Folded Spill
	sd	s4, 240(sp)                     # 8-byte Folded Spill
	sd	s5, 232(sp)                     # 8-byte Folded Spill
	sd	s6, 224(sp)                     # 8-byte Folded Spill
	sd	s7, 216(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	sd	s9, 200(sp)                     # 8-byte Folded Spill
	sd	s10, 192(sp)                    # 8-byte Folded Spill
	sd	s11, 184(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, 22
	add	t1, t0, t1
	lw	t1, 108(t1)
	ld	s7, 288(sp)
	mv	s3, a7
	mv	s9, a6
	sd	a5, 168(sp)                     # 8-byte Folded Spill
	sd	a0, 152(sp)                     # 8-byte Folded Spill
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
	ld	s8, 296(sp)
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
	ld	t0, 0(a0)
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	add	a0, a2, a0
	lw	a5, 84(a0)
	lw	a2, 88(a0)
	slli	a3, a3, 2
	addi	a3, a3, 16
	lh	t2, 0(s7)
	slli	a4, a4, 2
	addi	a4, a4, 16
	sd	a4, 160(sp)                     # 8-byte Folded Spill
	slli	a0, a5, 48
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	addw	t1, a3, t2
	li	a3, 1
	slli	a1, a2, 48
	sd	t0, 144(sp)                     # 8-byte Folded Spill
	bge	a3, t1, .LBB6_10
# %bb.6:
	lui	a3, 2
	addiw	a4, a3, -1800
	add	a4, t0, a4
	lw	a3, 0(a4)
	subw	a3, a3, a5
	slli	a3, a3, 2
	addi	a3, a3, 32
	slli	a5, a3, 48
	lhu	a3, 0(s8)
	srai	a5, a5, 48
	addi	a5, a5, -1
	bge	t1, a5, .LBB6_11
# %bb.7:
	slli	s1, a3, 48
	srai	t3, s1, 48
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	addw	a5, a5, t3
	li	t1, 2
	blt	a5, t1, .LBB6_11
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
	lhu	a3, 0(s8)
.LBB6_11:
	slli	a3, a3, 48
	srai	t3, a3, 48
	lui	a2, %hi(UMVLine4X)
	addi	a2, a2, %lo(UMVLine4X)
.LBB6_12:
	ld	s4, 336(sp)
	ld	s5, 328(sp)
	ld	s1, 320(sp)
	srai	s10, a0, 48
	srai	s11, a1, 48
	lui	a0, %hi(get_line)
	sd	a2, %lo(get_line)(a0)
	sd	t2, 64(sp)                      # 8-byte Folded Spill
	sub	s2, s9, t2
	srliw	a0, s2, 30
	add	a0, s2, a0
	andi	a0, a0, -4
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	sd	t3, 48(sp)                      # 8-byte Folded Spill
	sub	s6, s3, t3
	lui	a0, %hi(simplified_pred_MV_uplayer_X)
	lui	a1, %hi(simplified_SearchState)
	ld	s0, %lo(simplified_SearchState)(a1)
	lhu	a0, %lo(simplified_pred_MV_uplayer_X)(a0)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(simplified_pred_MV_uplayer_Y)
	lhu	a0, %lo(simplified_pred_MV_uplayer_Y)(a0)
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	ld	a0, 0(s0)
	srliw	a1, s6, 30
	add	a1, s6, a1
	andi	a1, a1, -4
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	li	a2, 49
	li	a1, 0
	call	memset
	ld	a0, 24(s0)
	li	a1, 1
	sb	a1, 3(a0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lhu	a1, 0(s7)
	lw	a0, 24(a0)
	lh	s0, 0(s8)
	slli	a2, a1, 48
	srai	a5, a2, 48
	sd	s4, 120(sp)                     # 8-byte Folded Spill
	sd	s5, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB6_16
# %bb.13:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	sub	a1, a5, s9
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	sub	a2, s0, s3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, s5
	sraiw	a0, a0, 16
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	mv	s5, a5
	addw	a4, a1, a5
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	addw	a5, a1, s0
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	s4, 16(sp)
	sd	s1, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	mv	a2, s10
	mv	a3, s11
	ld	a6, 144(sp)                     # 8-byte Folded Reload
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	call	simplified_add_up_SAD_quarter_pel
	mv	s9, a0
	slt	a1, a0, s1
	neg	a2, a1
	mv	a3, s11
	blt	a0, s1, .LBB6_15
# %bb.14:
	mv	s9, s1
.LBB6_15:
	lhu	a1, 0(s7)
	and	s11, a2, s5
	and	s0, a2, s0
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	ld	a4, 128(sp)                     # 8-byte Folded Reload
	j	.LBB6_17
.LBB6_16:
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	mv	a4, s5
	mv	a3, s11
	mv	s9, s1
	mv	s11, a5
.LBB6_17:
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	sub	s0, s2, a0
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	sub	a0, s6, a0
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	slli	s2, s2, 1
	lui	s3, %hi(block_type_shift_factor)
	addi	s3, s3, %lo(block_type_shift_factor)
	beqz	a1, .LBB6_33
.LBB6_18:
	or	a2, s0, a0
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	beqz	a2, .LBB6_21
# %bb.19:
	slli	a1, a1, 48
	srai	a1, a1, 48
	lh	s1, 0(s8)
	add	s0, s0, a1
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
	mul	a0, a0, a4
	sraiw	a0, a0, 16
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	addw	a4, s0, a4
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	addw	a5, s1, a5
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	sd	s4, 16(sp)
	sd	s9, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	mv	a2, s10
	ld	a6, 144(sp)                     # 8-byte Folded Reload
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	call	simplified_add_up_SAD_quarter_pel
	ld	a4, 128(sp)                     # 8-byte Folded Reload
	lh	a1, 0(s8)
	lui	a2, %hi(simplified_SearchState)
	ld	a2, %lo(simplified_SearchState)(a2)
	sub	a1, s1, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	sub	a2, s0, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s9, .LBB6_22
# %bb.20:
	mv	s11, s0
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	mv	s9, a0
	j	.LBB6_22
.LBB6_21:
	ld	s4, 120(sp)                     # 8-byte Folded Reload
.LBB6_22:
	li	a0, 0
	add	s2, s3, s2
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	li	s10, 3
	lui	a5, %hi(simplified_SearchState)
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	sd	s11, 64(sp)                     # 8-byte Folded Spill
.LBB6_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	li	s5, 4
	lui	s6, %hi(Diamond_X)
	addi	s6, s6, %lo(Diamond_X)
	lui	s3, %hi(Diamond_Y)
	addi	s3, s3, %lo(Diamond_Y)
	li	a0, 1
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	j	.LBB6_26
.LBB6_24:                               #   in Loop: Header=BB6_26 Depth=2
	lui	a0, %hi(SubPelThreshold3)
	lhu	a0, %lo(SubPelThreshold3)(a0)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	lhu	a1, 0(a1)
	srlw	a0, a0, a1
	sext.w	a1, s9
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	ld	a4, 128(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB6_40
.LBB6_25:                               #   in Loop: Header=BB6_26 Depth=2
	addi	s5, s5, -1
	addi	s3, s3, 2
	addi	s6, s6, 2
	beqz	s5, .LBB6_31
.LBB6_26:                               #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	s2, 0(s6)
	lh	a0, 0(s7)
	add	s2, s11, s2
	subw	a0, s2, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s10, a2, .LBB6_25
# %bb.27:                               #   in Loop: Header=BB6_26 Depth=2
	lh	s1, 0(s3)
	lh	a1, 0(s8)
	add	s1, s0, s1
	subw	a1, s1, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s10, a3, .LBB6_25
# %bb.28:                               #   in Loop: Header=BB6_26 Depth=2
	ld	a2, %lo(simplified_SearchState)(a5)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	bnez	a0, .LBB6_25
# %bb.29:                               #   in Loop: Header=BB6_26 Depth=2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	subw	a1, s2, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	subw	a2, s1, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, a4
	sraiw	a0, a0, 16
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	addw	a4, s2, a1
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	addw	a5, s1, a5
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	s4, 16(sp)
	sext.w	s4, s9
	sd	s4, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	ld	a6, 144(sp)                     # 8-byte Folded Reload
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	call	simplified_add_up_SAD_quarter_pel
	lui	a5, %hi(simplified_SearchState)
	lh	a1, 0(s8)
	ld	a2, %lo(simplified_SearchState)(a5)
	subw	a1, s1, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	subw	a2, s2, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s4, .LBB6_24
# %bb.30:                               #   in Loop: Header=BB6_26 Depth=2
	sd	zero, 176(sp)                   # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	mv	s9, a0
	j	.LBB6_24
.LBB6_31:                               #   in Loop: Header=BB6_23 Depth=1
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB6_40
# %bb.32:                               #   in Loop: Header=BB6_23 Depth=1
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	addi	a0, a2, 1
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s11, 64(sp)                     # 8-byte Folded Reload
	li	a1, 2
	bltu	a2, a1, .LBB6_23
	j	.LBB6_40
.LBB6_33:
	lhu	a2, 0(s8)
	bnez	a2, .LBB6_18
# %bb.34:
	bnez	s0, .LBB6_18
# %bb.35:
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	sub	a2, a5, a2
	andi	a2, a2, 3
	bnez	a2, .LBB6_18
# %bb.36:
	bnez	a0, .LBB6_18
# %bb.37:
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	sub	a2, a5, a2
	andi	a2, a2, 3
	bnez	a2, .LBB6_18
# %bb.38:
	lui	a2, %hi(SubPelThreshold1)
	lhu	a2, %lo(SubPelThreshold1)(a2)
	add	a5, s3, s2
	lhu	a5, 0(a5)
	srlw	a2, a2, a5
	bge	s9, a2, .LBB6_18
# %bb.39:
	sd	s11, 64(sp)                     # 8-byte Folded Spill
.LBB6_40:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	sh	a0, 0(s7)
	sext.w	a0, s9
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	sh	a1, 0(s8)
	ld	ra, 280(sp)                     # 8-byte Folded Reload
	ld	s0, 272(sp)                     # 8-byte Folded Reload
	ld	s1, 264(sp)                     # 8-byte Folded Reload
	ld	s2, 256(sp)                     # 8-byte Folded Reload
	ld	s3, 248(sp)                     # 8-byte Folded Reload
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	ld	s5, 232(sp)                     # 8-byte Folded Reload
	ld	s6, 224(sp)                     # 8-byte Folded Reload
	ld	s7, 216(sp)                     # 8-byte Folded Reload
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	ld	s9, 200(sp)                     # 8-byte Folded Reload
	ld	s10, 192(sp)                    # 8-byte Folded Reload
	ld	s11, 184(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 288
	ret
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
	li	a2, 1
	bltu	a2, a0, .LBB8_8
# %bb.3:
	lw	a0, 24(a1)
	li	a1, 2
	beq	a0, a1, .LBB8_8
# %bb.4:
	lui	a0, %hi(simplified_fastme_l0_cost)
	ld	s1, %lo(simplified_fastme_l0_cost)(a0)
	lui	a0, %hi(simplified_fastme_l1_cost)
	ld	s2, %lo(simplified_fastme_l1_cost)(a0)
	ld	a0, 8(s1)
	ld	a1, 8(s2)
	ld	a2, 16(s1)
	ld	a3, 16(s2)
	ld	a4, 24(s1)
	ld	a5, 24(s2)
	ld	a6, 32(s1)
	ld	a7, 32(s2)
	ld	t0, 40(s1)
	ld	t1, 40(s2)
	ld	t2, 48(s1)
	ld	t3, 48(s2)
	ld	t4, 56(s1)
	ld	t5, 56(s2)
	ld	t6, 64(s1)
	ld	s0, 64(s2)
	ld	s1, 0(s1)
	ld	s2, 0(s2)
	li	s3, 0
	li	s4, 32
	li	s5, 4
.LBB8_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	li	s6, 0
	slli	s7, s3, 2
.LBB8_6:                                #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s8, s1, s6
	ld	s8, 0(s8)
	add	s9, s2, s6
	ld	s9, 0(s9)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s9, s9, s7
	add	s8, a0, s6
	ld	s8, 0(s8)
	add	s10, a1, s6
	ld	s10, 0(s10)
	sw	zero, 0(s9)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s10, s10, s7
	add	s8, a2, s6
	ld	s8, 0(s8)
	add	s9, a3, s6
	ld	s9, 0(s9)
	sw	zero, 0(s10)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s9, s9, s7
	add	s8, a4, s6
	ld	s8, 0(s8)
	add	s10, a5, s6
	ld	s10, 0(s10)
	sw	zero, 0(s9)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s10, s10, s7
	add	s8, a6, s6
	ld	s8, 0(s8)
	add	s9, a7, s6
	ld	s9, 0(s9)
	sw	zero, 0(s10)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s9, s9, s7
	add	s8, t0, s6
	ld	s8, 0(s8)
	add	s10, t1, s6
	ld	s10, 0(s10)
	sw	zero, 0(s9)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s10, s10, s7
	add	s8, t2, s6
	ld	s8, 0(s8)
	add	s9, t3, s6
	ld	s9, 0(s9)
	sw	zero, 0(s10)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s9, s9, s7
	add	s8, t4, s6
	ld	s8, 0(s8)
	add	s10, t5, s6
	ld	s10, 0(s10)
	sw	zero, 0(s9)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s10, s10, s7
	add	s8, t6, s6
	ld	s8, 0(s8)
	add	s9, s0, s6
	ld	s9, 0(s9)
	sw	zero, 0(s10)
	add	s8, s8, s7
	sw	zero, 0(s8)
	add	s9, s9, s7
	addi	s6, s6, 8
	sw	zero, 0(s9)
	bne	s6, s4, .LBB8_6
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	addi	s3, s3, 1
	bne	s3, s5, .LBB8_5
.LBB8_8:
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

	.type	Hexagon_X,@object               # @Hexagon_X
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
Hexagon_X:
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.size	Hexagon_X, 12

	.type	Hexagon_Y,@object               # @Hexagon_Y
	.p2align	1, 0x0
Hexagon_Y:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.size	Hexagon_Y, 12

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
