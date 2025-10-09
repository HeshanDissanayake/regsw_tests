	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"lchain.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rs_insertsort_128x              # -- Begin function rs_insertsort_128x
	.p2align	2
	.type	rs_insertsort_128x,@function
rs_insertsort_128x:                     # @rs_insertsort_128x
# %bb.0:
	addi	a4, a0, 16
	bgeu	a4, a1, .LBB0_10
# %bb.1:                                # %.preheader1
	mv	a5, a0
	j	.LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	mv	a5, a6
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	sd	a3, 0(a5)
	sd	a4, 8(a5)
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi	a4, a2, 16
	mv	a5, a2
	bgeu	a4, a1, .LBB0_10
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	ld	a3, 16(a5)
	ld	a6, 0(a5)
	mv	a2, a4
	bgeu	a3, a6, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	ld	a4, 24(a5)
	mv	a5, a2
	bgeu	a0, a2, .LBB0_3
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	mv	a6, a2
.LBB0_8:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, -16(a6)
	bgeu	a3, a5, .LBB0_2
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	addi	a5, a6, -16
	ld	a7, 8(a5)
	ld	t0, 0(a5)
	sd	a7, 8(a6)
	sd	t0, 0(a6)
	mv	a6, a5
	bltu	a0, a5, .LBB0_8
	j	.LBB0_3
.LBB0_10:
	ret
.Lfunc_end0:
	.size	rs_insertsort_128x, .Lfunc_end0-rs_insertsort_128x
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rs_sort_128x                    # -- Begin function rs_sort_128x
	.p2align	2
	.type	rs_sort_128x,@function
rs_sort_128x:                           # @rs_sort_128x
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	addi	sp, sp, -2048
	addi	sp, sp, -80
	li	a4, 8
	blt	a4, a2, .LBB1_38
# %bb.1:                                # %.preheader8
	mv	s0, a2
	li	a2, 1
	sllw	a2, a2, s0
	addiw	a4, a2, -1
	slli	a2, a2, 4
	addi	s2, sp, 8
	add	s2, s2, a2
	addi	a5, sp, 16
	mv	a6, a2
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	sd	a0, 0(a5)
	sd	a0, -8(a5)
	addi	a6, a6, -16
	addi	a5, a5, 16
	bnez	a6, .LBB1_2
# %bb.3:
	beq	a0, a1, .LBB1_6
# %bb.4:
	addi	a5, sp, 8
	mv	a6, a0
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld	a7, 0(a6)
	srl	a7, a7, a3
	and	a7, a7, a4
	slli	a7, a7, 4
	add	a7, a5, a7
	ld	t0, 8(a7)
	addi	t0, t0, 16
	addi	a6, a6, 16
	sd	t0, 8(a7)
	bne	a6, a1, .LBB1_5
.LBB1_6:
	beqz	s0, .LBB1_9
# %bb.7:
	addi	a1, a2, -16
	addi	a5, sp, 32
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	ld	a6, -16(a5)
	ld	a7, 0(a5)
	sub	t0, a6, a0
	add	a7, a7, t0
	sd	a7, 0(a5)
	sd	a6, -8(a5)
	addi	a1, a1, -16
	addi	a5, a5, 16
	bnez	a1, .LBB1_8
.LBB1_9:
	addi	a1, sp, 24
	slli	a5, a3, 32
	srli	a5, a5, 32
	addi	a6, sp, 8
	addi	a7, sp, 8
	j	.LBB1_12
.LBB1_10:                               #   in Loop: Header=BB1_12 Depth=1
	addi	a7, a7, 16
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	beq	a7, s2, .LBB1_18
.LBB1_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	ld	t1, 0(a7)
	ld	t0, 8(a7)
	beq	t1, t0, .LBB1_10
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	ld	t0, 0(t1)
	srl	t2, t0, a5
	and	t2, t2, a4
	slli	t2, t2, 4
	add	t2, a6, t2
	beq	t2, a7, .LBB1_17
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=1
	ld	t1, 8(t1)
.LBB1_15:                               #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(t2)
	mv	t4, t0
	mv	t5, t1
	ld	t0, 0(t3)
	ld	t1, 8(t3)
	addi	t6, t3, 16
	sd	t6, 0(t2)
	sd	t4, 0(t3)
	srl	t2, t0, a5
	and	t2, t2, a4
	slli	t2, t2, 4
	add	t2, a6, t2
	sd	t5, 8(t3)
	bne	t2, a7, .LBB1_15
# %bb.16:                               #   in Loop: Header=BB1_12 Depth=1
	ld	t2, 0(a7)
	addi	t3, t2, 16
	sd	t3, 0(a7)
	sd	t0, 0(t2)
	sd	t1, 8(t2)
	j	.LBB1_11
.LBB1_17:                               #   in Loop: Header=BB1_12 Depth=1
	addi	t1, t1, 16
	sd	t1, 0(a7)
	j	.LBB1_11
.LBB1_18:
	sd	a0, 8(sp)
	beqz	s0, .LBB1_21
# %bb.19:                               # %.preheader4
	addi	a2, a2, -16
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -8(a1)
	sd	a0, 0(a1)
	addi	a2, a2, -16
	addi	a1, a1, 16
	bnez	a2, .LBB1_20
.LBB1_21:
	beqz	a3, .LBB1_37
# %bb.22:
	slt	a0, s0, a3
	subw	a3, a3, s0
	neg	s1, a0
	and	s1, s1, a3
	addi	s3, sp, 8
	li	s4, 65
	li	s5, 2
	j	.LBB1_25
.LBB1_23:                               #   in Loop: Header=BB1_25 Depth=1
	mv	a2, s0
	mv	a3, s1
	call	rs_sort_128x
.LBB1_24:                               #   in Loop: Header=BB1_25 Depth=1
	addi	s3, s3, 16
	beq	s3, s2, .LBB1_37
.LBB1_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_32 Depth 2
                                        #       Child Loop BB1_35 Depth 3
	ld	a1, 8(s3)
	ld	a0, 0(s3)
	sub	a2, a1, a0
	srai	a2, a2, 4
	bge	a2, s4, .LBB1_23
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=1
	blt	a2, s5, .LBB1_24
# %bb.27:                               #   in Loop: Header=BB1_25 Depth=1
	addi	a4, a0, 16
	bgeu	a4, a1, .LBB1_24
# %bb.28:                               # %.preheader1
                                        #   in Loop: Header=BB1_25 Depth=1
	mv	a5, a0
	j	.LBB1_32
.LBB1_29:                               #   in Loop: Header=BB1_32 Depth=2
	mv	a5, a6
.LBB1_30:                               #   in Loop: Header=BB1_32 Depth=2
	sd	a3, 0(a5)
	sd	a4, 8(a5)
.LBB1_31:                               #   in Loop: Header=BB1_32 Depth=2
	addi	a4, a2, 16
	mv	a5, a2
	bgeu	a4, a1, .LBB1_24
.LBB1_32:                               #   Parent Loop BB1_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_35 Depth 3
	ld	a3, 16(a5)
	ld	a6, 0(a5)
	mv	a2, a4
	bgeu	a3, a6, .LBB1_31
# %bb.33:                               #   in Loop: Header=BB1_32 Depth=2
	ld	a4, 24(a5)
	mv	a5, a2
	bgeu	a0, a2, .LBB1_30
# %bb.34:                               # %.preheader
                                        #   in Loop: Header=BB1_32 Depth=2
	mv	a6, a2
.LBB1_35:                               #   Parent Loop BB1_25 Depth=1
                                        #     Parent Loop BB1_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a5, -16(a6)
	bgeu	a3, a5, .LBB1_29
# %bb.36:                               #   in Loop: Header=BB1_35 Depth=3
	addi	a5, a6, -16
	ld	a7, 8(a5)
	ld	t0, 0(a5)
	sd	a7, 8(a6)
	sd	t0, 0(a6)
	mv	a6, a5
	bltu	a0, a5, .LBB1_35
	j	.LBB1_30
.LBB1_37:
	addi	sp, sp, 2032
	addi	sp, sp, 96
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.LBB1_38:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.rs_sort_128x)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.rs_sort_128x)
	li	a2, 17
	call	__assert_fail
.Lfunc_end1:
	.size	rs_sort_128x, .Lfunc_end1-rs_sort_128x
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	radix_sort_128x                 # -- Begin function radix_sort_128x
	.p2align	2
	.type	radix_sort_128x,@function
radix_sort_128x:                        # @radix_sort_128x
# %bb.0:
	sub	a2, a1, a0
	li	a3, 1024
	blt	a3, a2, .LBB2_11
# %bb.1:
	addi	a4, a0, 16
	bgeu	a4, a1, .LBB2_12
# %bb.2:                                # %.preheader1
	mv	a5, a0
	j	.LBB2_6
.LBB2_3:                                #   in Loop: Header=BB2_6 Depth=1
	mv	a5, a6
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=1
	sd	a3, 0(a5)
	sd	a4, 8(a5)
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	addi	a4, a2, 16
	mv	a5, a2
	bgeu	a4, a1, .LBB2_12
.LBB2_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	ld	a3, 16(a5)
	ld	a6, 0(a5)
	mv	a2, a4
	bgeu	a3, a6, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	ld	a4, 24(a5)
	mv	a5, a2
	bgeu	a0, a2, .LBB2_4
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	mv	a6, a2
.LBB2_9:                                #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, -16(a6)
	bgeu	a3, a5, .LBB2_3
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=2
	addi	a5, a6, -16
	ld	a7, 8(a5)
	ld	t0, 0(a5)
	sd	a7, 8(a6)
	sd	t0, 0(a6)
	mv	a6, a5
	bltu	a0, a5, .LBB2_9
	j	.LBB2_4
.LBB2_11:
	li	a2, 8
	li	a3, 56
	tail	rs_sort_128x
.LBB2_12:
	ret
.Lfunc_end2:
	.size	radix_sort_128x, .Lfunc_end2-radix_sort_128x
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	mg_chain_backtrack              # -- Begin function mg_chain_backtrack
	.p2align	2
	.type	mg_chain_backtrack,@function
mg_chain_backtrack:                     # @mg_chain_backtrack
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
	ld	t0, 144(sp)
	ld	t1, 136(sp)
	sw	zero, 0(t0)
	sw	zero, 0(t1)
	blez	a1, .LBB3_9
# %bb.1:                                # %.preheader12
	mv	s0, a7
	mv	s1, a6
	mv	s2, a5
	mv	s3, a4
	mv	s4, a3
	mv	s5, a2
	mv	s8, a1
	ld	s10, 128(sp)
	li	s11, 0
	slli	s7, a1, 2
	add	a0, a2, s7
	mv	a1, a2
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	slt	a2, a2, s0
	xori	a2, a2, 1
	addi	a1, a1, 4
	add	s11, s11, a2
	bne	a1, a0, .LBB3_2
# %bb.3:
	beqz	s11, .LBB3_9
# %bb.4:
	sd	t1, 8(sp)                       # 8-byte Folded Spill
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	slli	s9, s11, 4
	mv	a0, s9
	call	malloc
	mv	s6, a0
	blez	s8, .LBB3_10
# %bb.5:                                # %.preheader10
	li	a0, 0
	li	a1, 0
	mv	a2, s5
	j	.LBB3_7
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=1
	addi	a0, a0, 1
	addi	a2, a2, 4
	beq	s8, a0, .LBB3_10
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	blt	a3, s0, .LBB3_6
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	slli	a4, a1, 4
	add	a4, s6, a4
	sd	a3, 0(a4)
	addi	a1, a1, 1
	sd	a0, 8(a4)
	j	.LBB3_6
.LBB3_9:
	li	s8, 0
	j	.LBB3_80
.LBB3_10:
	li	a0, 64
	add	a1, s6, s9
	bltu	a0, s11, .LBB3_21
# %bb.11:
	li	a0, 1
	beq	s11, a0, .LBB3_22
# %bb.12:
	addi	a3, s6, 16
	mv	a4, s6
	j	.LBB3_16
.LBB3_13:                               #   in Loop: Header=BB3_16 Depth=1
	mv	a4, a5
.LBB3_14:                               #   in Loop: Header=BB3_16 Depth=1
	sd	a2, 0(a4)
	sd	a3, 8(a4)
.LBB3_15:                               #   in Loop: Header=BB3_16 Depth=1
	addi	a3, a0, 16
	mv	a4, a0
	bgeu	a3, a1, .LBB3_22
.LBB3_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
	ld	a2, 16(a4)
	ld	a5, 0(a4)
	mv	a0, a3
	bgeu	a2, a5, .LBB3_15
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
	ld	a3, 24(a4)
	mv	a4, a0
	bgeu	s6, a0, .LBB3_14
# %bb.18:                               # %.preheader7
                                        #   in Loop: Header=BB3_16 Depth=1
	mv	a5, a0
.LBB3_19:                               #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a4, -16(a5)
	bgeu	a2, a4, .LBB3_13
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=2
	addi	a4, a5, -16
	ld	a6, 8(a4)
	ld	a7, 0(a4)
	sd	a6, 8(a5)
	sd	a7, 0(a5)
	mv	a5, a4
	bltu	s6, a4, .LBB3_19
	j	.LBB3_14
.LBB3_21:
	li	a2, 8
	li	a3, 56
	mv	a0, s6
	call	rs_sort_128x
.LBB3_22:
	mv	a0, s2
	li	a1, 0
	mv	a2, s7
	call	memset
	li	a3, 0
	li	a0, 0
	addi	s9, s11, -1
	li	a1, 2
	li	a2, 1
	mv	a5, s9
	j	.LBB3_25
.LBB3_23:                               #   in Loop: Header=BB3_25 Depth=1
	slt	a3, a5, s1
	xori	a3, a3, 1
	addw	a0, a0, a3
	mv	a3, a7
.LBB3_24:                               #   in Loop: Header=BB3_25 Depth=1
	addi	a5, a4, -1
	blez	a4, .LBB3_50
.LBB3_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
                                        #     Child Loop BB3_39 Depth 2
                                        #     Child Loop BB3_42 Depth 2
	mv	a4, a5
	slli	a5, a5, 4
	add	a5, s6, a5
	ld	a6, 8(a5)
	slli	a7, a6, 2
	add	a7, s2, a7
	lw	a7, 0(a7)
	bnez	a7, .LBB3_24
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=1
	mv	a7, a3
	bltz	a6, .LBB3_46
# %bb.27:                               #   in Loop: Header=BB3_25 Depth=1
	lw	t1, 0(a5)
	li	t2, 0
	mv	a7, a6
	mv	t4, a6
	j	.LBB3_29
.LBB3_28:                               #   in Loop: Header=BB3_29 Depth=2
	add	t3, s2, t3
	lw	t3, 0(t3)
	mv	t4, t0
	bnez	t3, .LBB3_37
.LBB3_29:                               #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	t0, a7, 2
	slli	a7, a7, 3
	add	a7, s4, a7
	ld	a7, 0(a7)
	add	t0, s2, t0
	sw	a1, 0(t0)
	slli	t3, a7, 2
	bltz	a7, .LBB3_36
# %bb.30:                               #   in Loop: Header=BB3_29 Depth=2
	add	t0, s5, t3
	lw	t0, 0(t0)
	subw	t5, t1, t0
	mv	t0, a7
	blt	t2, t5, .LBB3_32
.LBB3_31:                               #   in Loop: Header=BB3_29 Depth=2
	mv	t0, t4
.LBB3_32:                               #   in Loop: Header=BB3_29 Depth=2
	bltz	a7, .LBB3_37
# %bb.33:                               #   in Loop: Header=BB3_29 Depth=2
	slt	t4, t2, t5
	subw	t6, t2, t5
	slt	t6, s10, t6
	xori	t6, t6, 1
	or	t4, t4, t6
	beqz	t4, .LBB3_37
# %bb.34:                               #   in Loop: Header=BB3_29 Depth=2
	blt	t5, t2, .LBB3_28
# %bb.35:                               #   in Loop: Header=BB3_29 Depth=2
	mv	t2, t5
	j	.LBB3_28
.LBB3_36:                               #   in Loop: Header=BB3_29 Depth=2
	mv	t5, t1
	mv	t0, a7
	bge	t2, t1, .LBB3_31
	j	.LBB3_32
.LBB3_37:                               #   in Loop: Header=BB3_25 Depth=1
	beq	a6, a7, .LBB3_41
# %bb.38:                               # %.preheader5
                                        #   in Loop: Header=BB3_25 Depth=1
	mv	t1, a6
.LBB3_39:                               #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	t2, t1, 2
	slli	t1, t1, 3
	add	t1, s4, t1
	ld	t1, 0(t1)
	add	t2, s2, t2
	sw	zero, 0(t2)
	bltz	t1, .LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_39 Depth=2
	bne	t1, a7, .LBB3_39
.LBB3_41:                               #   in Loop: Header=BB3_25 Depth=1
	mv	a7, a3
	beq	a6, t0, .LBB3_44
.LBB3_42:                               #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	t1, a6, 2
	slli	a6, a6, 3
	add	a6, s4, a6
	ld	a6, 0(a6)
	addi	a7, a7, 1
	add	t1, s2, t1
	sw	a2, 0(t1)
	bne	a6, t0, .LBB3_42
# %bb.43:                               #   in Loop: Header=BB3_25 Depth=1
	mv	a6, t0
.LBB3_44:                               #   in Loop: Header=BB3_25 Depth=1
	bltz	a6, .LBB3_46
# %bb.45:                               #   in Loop: Header=BB3_25 Depth=1
	lw	a5, 0(a5)
	slli	a6, a6, 2
	add	a6, s5, a6
	lw	a6, 0(a6)
	subw	a5, a5, a6
	slli	a5, a5, 32
	srli	a5, a5, 32
	sext.w	a5, a5
	bge	a5, s0, .LBB3_47
	j	.LBB3_24
.LBB3_46:                               #   in Loop: Header=BB3_25 Depth=1
	ld	a5, 0(a5)
	sext.w	a5, a5
	blt	a5, s0, .LBB3_24
.LBB3_47:                               #   in Loop: Header=BB3_25 Depth=1
	bge	a3, a7, .LBB3_24
# %bb.48:                               #   in Loop: Header=BB3_25 Depth=1
	sub	a5, a7, a3
	bge	a5, s1, .LBB3_23
# %bb.49:                               #   in Loop: Header=BB3_25 Depth=1
	mv	a7, a3
	j	.LBB3_23
.LBB3_50:
	slli	a0, a0, 3
	call	malloc
	mv	s8, a0
	mv	a0, s2
	li	a1, 0
	mv	a2, s7
	call	memset
	li	s11, 0
	li	s7, 0
	li	a0, 2
	li	a1, 1
	j	.LBB3_52
.LBB3_51:                               #   in Loop: Header=BB3_52 Depth=1
	addi	s9, a2, -1
	blez	a2, .LBB3_78
.LBB3_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_56 Depth 2
                                        #     Child Loop BB3_66 Depth 2
                                        #     Child Loop BB3_72 Depth 2
	mv	a2, s9
	slli	a3, s9, 4
	add	a3, s6, a3
	ld	a4, 8(a3)
	slli	a5, a4, 2
	add	a5, s2, a5
	lw	a5, 0(a5)
	bnez	a5, .LBB3_51
# %bb.53:                               #   in Loop: Header=BB3_52 Depth=1
	mv	a6, s11
	bltz	a4, .LBB3_74
# %bb.54:                               #   in Loop: Header=BB3_52 Depth=1
	lw	a7, 0(a3)
	li	t0, 0
	mv	a6, a4
	mv	t2, a4
	j	.LBB3_56
.LBB3_55:                               #   in Loop: Header=BB3_56 Depth=2
	add	t1, s2, t1
	lw	t1, 0(t1)
	mv	t2, a5
	bnez	t1, .LBB3_64
.LBB3_56:                               #   Parent Loop BB3_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a5, a6, 2
	slli	a6, a6, 3
	add	a6, s4, a6
	ld	a6, 0(a6)
	add	a5, s2, a5
	sw	a0, 0(a5)
	slli	t1, a6, 2
	bltz	a6, .LBB3_63
# %bb.57:                               #   in Loop: Header=BB3_56 Depth=2
	add	a5, s5, t1
	lw	a5, 0(a5)
	subw	t3, a7, a5
	mv	a5, a6
	blt	t0, t3, .LBB3_59
.LBB3_58:                               #   in Loop: Header=BB3_56 Depth=2
	mv	a5, t2
.LBB3_59:                               #   in Loop: Header=BB3_56 Depth=2
	bltz	a6, .LBB3_64
# %bb.60:                               #   in Loop: Header=BB3_56 Depth=2
	slt	t2, t0, t3
	subw	t4, t0, t3
	slt	t4, s10, t4
	xori	t4, t4, 1
	or	t2, t2, t4
	beqz	t2, .LBB3_64
# %bb.61:                               #   in Loop: Header=BB3_56 Depth=2
	blt	t3, t0, .LBB3_55
# %bb.62:                               #   in Loop: Header=BB3_56 Depth=2
	mv	t0, t3
	j	.LBB3_55
.LBB3_63:                               #   in Loop: Header=BB3_56 Depth=2
	mv	t3, a7
	mv	a5, a6
	bge	t0, a7, .LBB3_58
	j	.LBB3_59
.LBB3_64:                               #   in Loop: Header=BB3_52 Depth=1
	beq	a4, a6, .LBB3_68
# %bb.65:                               # %.preheader1
                                        #   in Loop: Header=BB3_52 Depth=1
	mv	a7, a4
.LBB3_66:                               #   Parent Loop BB3_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	t0, a7, 2
	slli	a7, a7, 3
	add	a7, s4, a7
	ld	a7, 0(a7)
	add	t0, s2, t0
	sw	zero, 0(t0)
	bltz	a7, .LBB3_68
# %bb.67:                               #   in Loop: Header=BB3_66 Depth=2
	bne	a7, a6, .LBB3_66
.LBB3_68:                               #   in Loop: Header=BB3_52 Depth=1
	bne	a4, a5, .LBB3_71
# %bb.69:                               #   in Loop: Header=BB3_52 Depth=1
	mv	a6, s11
	bltz	a4, .LBB3_74
.LBB3_70:                               #   in Loop: Header=BB3_52 Depth=1
	lw	a3, 0(a3)
	slli	a4, a4, 2
	add	a4, s5, a4
	lw	a4, 0(a4)
	subw	a3, a3, a4
	slli	a3, a3, 32
	srli	a3, a3, 32
	sext.w	a4, a3
	bge	a4, s0, .LBB3_75
	j	.LBB3_51
.LBB3_71:                               # %.preheader
                                        #   in Loop: Header=BB3_52 Depth=1
	slli	a7, s11, 2
	add	a7, s3, a7
	mv	a6, s11
.LBB3_72:                               #   Parent Loop BB3_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	a4, 0(a7)
	slli	t0, a4, 2
	slli	a4, a4, 3
	add	a4, s4, a4
	ld	a4, 0(a4)
	addi	a6, a6, 1
	add	t0, s2, t0
	sw	a1, 0(t0)
	addi	a7, a7, 4
	bne	a4, a5, .LBB3_72
# %bb.73:                               #   in Loop: Header=BB3_52 Depth=1
	mv	a4, a5
	bgez	a5, .LBB3_70
.LBB3_74:                               #   in Loop: Header=BB3_52 Depth=1
	ld	a3, 0(a3)
	sext.w	a4, a3
	blt	a4, s0, .LBB3_51
.LBB3_75:                               #   in Loop: Header=BB3_52 Depth=1
	bge	s11, a6, .LBB3_51
# %bb.76:                               #   in Loop: Header=BB3_52 Depth=1
	sub	a4, a6, s11
	blt	a4, s1, .LBB3_51
# %bb.77:                               #   in Loop: Header=BB3_52 Depth=1
	slli	a3, a3, 32
	or	a3, a3, a4
	slli	a4, s7, 3
	addiw	s7, s7, 1
	add	a4, s8, a4
	sd	a3, 0(a4)
	mv	s11, a6
	j	.LBB3_51
.LBB3_78:
	mv	a0, s6
	call	free
	lui	a0, 524288
	addiw	a0, a0, -1
	bge	s11, a0, .LBB3_81
# %bb.79:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	sw	s7, 0(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	sw	s11, 0(a0)
.LBB3_80:
	mv	a0, s8
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
.LBB3_81:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.mg_chain_backtrack)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.mg_chain_backtrack)
	li	a2, 128
	call	__assert_fail
.Lfunc_end3:
	.size	mg_chain_backtrack, .Lfunc_end3-mg_chain_backtrack
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function mg_lchain_dp
.LCPI4_0:
	.word	0x40019420                      # float 2.02466583
.LCPI4_1:
	.word	0xbeb08ff9                      # float -0.344848424
.LCPI4_2:
	.word	0xbf2cc4c7                      # float -0.674877583
	.text
	.globl	mg_lchain_dp
	.p2align	2
	.type	mg_lchain_dp,@function
mg_lchain_dp:                           # @mg_lchain_dp
# %bb.0:
	addi	sp, sp, -240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 216(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	sd	s5, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 176(sp)                     # 8-byte Folded Spill
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	s8, 160(sp)                     # 8-byte Folded Spill
	sd	s9, 152(sp)                     # 8-byte Folded Spill
	sd	s10, 144(sp)                    # 8-byte Folded Spill
	sd	s11, 136(sp)                    # 8-byte Folded Spill
	fsd	fs0, 128(sp)                    # 8-byte Folded Spill
	fsd	fs1, 120(sp)                    # 8-byte Folded Spill
	ld	t0, 272(sp)
	ld	t1, 264(sp)
	ld	s0, 256(sp)
	ld	s7, 248(sp)
	ld	s2, 240(sp)
	mv	s5, a7
	fmv.s	fs0, fa1
	fmv.s	fs1, fa0
	mv	s6, a4
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	mv	s4, a2
	mv	s9, a0
	beqz	t0, .LBB4_2
# %bb.1:
	sd	zero, 0(t0)
	sw	zero, 0(t1)
.LBB4_2:
	beqz	s7, .LBB4_116
# %bb.3:
	beqz	s0, .LBB4_116
# %bb.4:
	blt	s4, s9, .LBB4_6
# %bb.5:
	mv	s9, s4
.LBB4_6:
	mv	s8, a1
	blt	s4, a1, .LBB4_8
# %bb.7:
	mv	s8, s4
.LBB4_8:
	sd	a5, 48(sp)                      # 8-byte Folded Spill
	sd	a6, 56(sp)                      # 8-byte Folded Spill
	sd	t1, 64(sp)                      # 8-byte Folded Spill
	sd	t0, 72(sp)                      # 8-byte Folded Spill
	mv	a0, s4
	beqz	s5, .LBB4_10
# %bb.9:
	lui	a0, 524288
	addiw	a0, a0, -1
	mv	s8, a1
.LBB4_10:
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	slli	s1, s7, 2
	mv	a0, s1
	call	malloc
	mv	s10, a0
	mv	a0, s1
	call	malloc
	mv	s11, a0
	mv	a0, s1
	call	malloc
	mv	s1, a0
	li	a1, 4
	li	s3, 4
	mv	a0, s7
	call	calloc
	sd	s7, 80(sp)                      # 8-byte Folded Spill
	blez	s7, .LBB4_117
# %bb.11:
	lui	a1, 2048
	addi	a1, a1, -1
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	andi	a2, a4, 3
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	li	t0, 0
	li	a3, 0
	bgeu	a4, s3, .LBB4_132
# %bb.12:
	li	a4, -1
.LBB4_13:
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	ld	x19, 32(sp)                     # 8-byte Folded Reload
	beqz	x19, .LBB4_117
# %bb.14:                               # %.preheader13
	li	a5, 0
	slli	a2, a3, 3
	add	a2, a2, s10
	addi	a6, a2, -8
	slli	a2, a3, 2
	addi	a2, a2, -4
	add	a7, a0, a2
	add	t1, s11, a2
	slli	a2, a3, 4
	add	a2, a2, s0
	addi	t2, a2, -8
	li	t3, 2
	fmv.w.x	fa5, zero
	lui	a2, 258048
	lui	t4, %hi(.LCPI4_0)
	flw	fa4, %lo(.LCPI4_0)(t4)
	lui	t4, %hi(.LCPI4_1)
	flw	fa3, %lo(.LCPI4_1)(t4)
	lui	t4, %hi(.LCPI4_2)
	flw	fa2, %lo(.LCPI4_2)(t4)
	fmv.w.x	fa1, a2
	lui	t4, 260096
	lui	t5, 524288
	j	.LBB4_17
.LBB4_15:                               #   in Loop: Header=BB4_17 Depth=1
	mv	a4, a3
.LBB4_16:                               #   in Loop: Header=BB4_17 Depth=1
	addi	a3, a3, 1
	addi	a5, a5, 1
	addi	a6, a6, 8
	addi	a7, a7, 4
	addi	t1, t1, 4
	addi	t2, t2, 16
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	a5, x19, .LBB4_117
.LBB4_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_71 Depth 2
	slli	t6, a3, 4
	add	t6, s0, t6
	bge	t0, a3, .LBB4_64
# %bb.18:                               #   in Loop: Header=BB4_17 Depth=1
	ld	a2, 0(t6)
	regsw_c	x24, 0x0(x18)		# 100101100000000000000
	slli	x1, t0, 4
	add	x1, s0, x1
	ld	x18, 96(sp)                     # 8-byte Folded Reload
	j	.LBB4_20
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=2
	addi	t0, t0, 1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x1, x1, 16
	beq	a3, t0, .LBB4_90
.LBB4_20:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x12, 0x400(x27)		# 110110110010000000000
	ld	x2, 0(x1)
	xor	x3, x2, a2
	srli	x3, x3, 32
	bnez	x3, .LBB4_19
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	add	x2, x2, s9
	bltu	x2, a2, .LBB4_19
# %bb.22:                               #   in Loop: Header=BB4_17 Depth=1
	sub	a2, a3, t0
	bge	s6, a2, .LBB4_24
.LBB4_23:                               #   in Loop: Header=BB4_17 Depth=1
	sub	t0, a3, s6
.LBB4_24:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x8, 0x0(x17)		# 100010100000000000000
	ld	x3, 8(t6)
	slli	a2, x3, 24
	srli	x1, a2, 56
	bge	t0, a3, .LBB4_65
# %bb.25:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x9, 0x124(x17)		# 100010100100100100100
	li	x4, 0
	slli	a2, x3, 8
	srli	x5, a2, 56
	li	x2, -1
	mv	x6, t2
	mv	x7, t1
	mv	x9, a7
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x10, a6
	mv	x8, a3
	j	.LBB4_27
.LBB4_26:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x13, 0x588(x27)		# 110110110110110001000
	addi	x8, x8, -1
	addi	x10, x10, -8
	addi	x9, x9, -4
	addi	x7, x7, -4
	addi	x6, x6, -16
	bge	t0, x8, .LBB4_66
.LBB4_27:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x18, 0x0(x27)		# 110111001000000000000
	ld	x14, 0(x6)
	subw	x11, x3, x14
	blez	x11, .LBB4_26
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x11, .LBB4_26
# %bb.29:                               #   in Loop: Header=BB4_27 Depth=2
	ld	a2, 0(t6)
	regsw_c	x13, 0x2c0(x27)		# 110110110101011000000
	ld	x12, -8(x6)
	slli	x13, x14, 8
	srli	x13, x13, 56
	subw	x12, a2, x12
	bne	x5, x13, .LBB4_40
# %bb.30:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x11, .LBB4_26
# %bb.31:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x12, .LBB4_26
# %bb.32:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x3, 0x240(x14)		# 011100001101001000000
	subw	a2, x11, x12
	sraiw	x15, a2, 31
	xor	a2, a2, x15
	subw	x15, a2, x15
	blt	s4, x15, .LBB4_26
# %bb.33:                               #   in Loop: Header=BB4_27 Depth=2
	bnez	s5, .LBB4_37
# %bb.34:                               #   in Loop: Header=BB4_27 Depth=2
	blt	s2, t3, .LBB4_37
# %bb.35:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x5, x13, .LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x12, .LBB4_26
.LBB4_37:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x11
	blt	x11, x12, .LBB4_41
.LBB4_38:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x13, 0x4c0(x11)		# 010110110110011000000
	mv	a2, x12
	slli	x14, x14, 24
	srli	x16, x14, 56
	mv	x14, x16
	bge	x16, x12, .LBB4_42
.LBB4_39:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x15, .LBB4_43
	j	.LBB4_45
.LBB4_40:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x3, 0x298(x14)		# 011100001101010011000
	subw	a2, x11, x12
	sraiw	x15, a2, 31
	xor	a2, a2, x15
	subw	x15, a2, x15
	mv	a2, x11
	bge	x11, x12, .LBB4_38
.LBB4_41:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x12, 0x400(x27)		# 110110110010000000000
	slli	x14, x14, 24
	srli	x16, x14, 56
	mv	x14, x16
	blt	x16, a2, .LBB4_39
.LBB4_42:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x14, a2
	bnez	x15, .LBB4_45
.LBB4_43:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x16, a2, .LBB4_45
# %bb.44:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a2, x14
	beq	x14, t5, .LBB4_26
	j	.LBB4_52
.LBB4_45:                               #   in Loop: Header=BB4_27 Depth=2
	fmv.s	fa0, fa5
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x15, .LBB4_47
# %bb.46:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x9, 0x596(x25)		# 110010100110110010110
	addi	x16, x15, 1
	fcvt.s.wu	fa0, x16
	fmv.x.w	x16, fa0
	srliw	x17, x16, 23
	addi	x17, x17, -128
	fcvt.s.wu	fa0, x17
	and	x16, x16, a1
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	or	x16, x16, t4
	fmv.w.x	ft0, x16
	fmadd.s	ft1, ft0, fa3, fa4
	fmadd.s	ft0, ft1, ft0, fa2
	fadd.s	fa0, ft0, fa0
.LBB4_47:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	fcvt.s.wu	ft0, x15
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_50
# %bb.48:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x5, x13, .LBB4_50
.LBB4_49:                               #   in Loop: Header=BB4_27 Depth=2
	fmadd.s	fa0, fa0, fa1, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	subw	x14, x14, a2
	mv	a2, x14
	beq	x14, t5, .LBB4_26
	j	.LBB4_52
.LBB4_50:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x5, x13, .LBB4_59
# %bb.51:                               #   in Loop: Header=BB4_27 Depth=2
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x12, .LBB4_59
.LBB4_52:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	lw	x11, 0(x7)
	addw	a2, x11, a2
	bge	x1, a2, .LBB4_54
# %bb.53:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x31, 0x0(x26)		# 110101111100000000000
	addi	x2, x8, -1
	sgtz	x1, x4
	subw	x4, x4, x1
	mv	x1, a2
	j	.LBB4_57
.LBB4_54:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x2, 0x0(x10)		# 010100001000000000000
	lw	a2, 0(x9)
	sext.w	x11, a3
	bne	a2, x11, .LBB4_57
# %bb.55:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x4, x18, .LBB4_66
# %bb.56:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addiw	x4, x4, 1
.LBB4_57:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x10)
	bltz	a2, .LBB4_26
# %bb.58:                               #   in Loop: Header=BB4_27 Depth=2
	slli	a2, a2, 2
	add	a2, a0, a2
	sw	a3, 0(a2)
	j	.LBB4_26
.LBB4_59:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x5, x13, .LBB4_61
# %bb.60:                               #   in Loop: Header=BB4_27 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x11, x12, .LBB4_49
.LBB4_61:                               #   in Loop: Header=BB4_27 Depth=2
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_63
# %bb.62:                               #   in Loop: Header=BB4_27 Depth=2
	fmv.s	ft0, fa0
.LBB4_63:                               #   in Loop: Header=BB4_27 Depth=2
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	subw	x14, x14, a2
	mv	a2, x14
	beq	x14, t5, .LBB4_26
	j	.LBB4_52
.LBB4_64:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x18, 96(sp)                     # 8-byte Folded Reload
	sub	a2, a3, t0
	bge	s6, a2, .LBB4_24
	j	.LBB4_23
.LBB4_65:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	addi	x8, a3, -1
	li	x2, -1
	slli	x4, a3, 2
	slli	x5, a3, 3
	bgez	a4, .LBB4_67
	j	.LBB4_68
.LBB4_66:                               # %..loopexit7_crit_edge
                                        #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x8, 0x0(x26)		# 110100100000000000000
	addi	x8, x8, -1
	slli	x4, a3, 2
	slli	x5, a3, 3
	bltz	a4, .LBB4_68
.LBB4_67:                               #   in Loop: Header=BB4_17 Depth=1
	ld	a2, 0(t6)
	regsw_c	x28, 0x200(x18)		# 100101110001000000000
	slli	x6, a4, 4
	add	x6, s0, x6
	ld	x6, 0(x6)
	sub	a2, a2, x6
	bgeu	s9, a2, .LBB4_75
.LBB4_68:                               #   in Loop: Header=BB4_17 Depth=1
	li	a4, -1
	bge	t0, a3, .LBB4_110
# %bb.69:                               # %.preheader5
                                        #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x1, 0x0(x18)		# 100100000100000000000
	li	x9, -1
	lui	x6, 524288
	mv	a2, t1
	mv	x7, a3
	j	.LBB4_71
.LBB4_70:                               #   in Loop: Header=BB4_71 Depth=2
	addi	a2, a2, -4
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	mv	x9, a4
	bge	t0, x7, .LBB4_75
.LBB4_71:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x600(x19)		# 100110010011000000000
	lw	x10, 0(a2)
	addi	x7, x7, -1
	mv	a4, x7
	blt	x6, x10, .LBB4_73
# %bb.72:                               #   in Loop: Header=BB4_71 Depth=2
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a4, x9
	blt	x10, x6, .LBB4_70
	j	.LBB4_74
.LBB4_73:                               #   in Loop: Header=BB4_71 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	blt	x10, x6, .LBB4_70
.LBB4_74:                               #   in Loop: Header=BB4_71 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x10
	j	.LBB4_70
.LBB4_75:                               #   in Loop: Header=BB4_17 Depth=1
	bltz	a4, .LBB4_110
# %bb.76:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a4, x8, .LBB4_110
# %bb.77:                               #   in Loop: Header=BB4_17 Depth=1
	slli	a2, a4, 4
	add	a2, s0, a2
	regsw_c	x18, 0x0(x19)		# 100111001000000000000
	ld	x9, 8(a2)
	subw	x6, x3, x9
	blez	x6, .LBB4_110
# %bb.78:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x6, .LBB4_110
# %bb.79:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x1, 0x5b6(x26)		# 110100000110110110110
	slli	x3, x3, 8
	ld	x7, 0(t6)
	ld	a2, 0(a2)
	srli	x3, x3, 56
	slli	x8, x9, 8
	srli	x8, x8, 56
	subw	x7, x7, a2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x3, x8, .LBB4_91
# %bb.80:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x6, .LBB4_110
# %bb.81:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x7, .LBB4_110
# %bb.82:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x3, 0x240(x14)		# 011100001101001000000
	subw	a2, x6, x7
	sraiw	x10, a2, 31
	xor	a2, a2, x10
	subw	x10, a2, x10
	blt	s4, x10, .LBB4_110
# %bb.83:                               #   in Loop: Header=BB4_17 Depth=1
	bnez	s5, .LBB4_87
# %bb.84:                               #   in Loop: Header=BB4_17 Depth=1
	blt	s2, t3, .LBB4_87
# %bb.85:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x3, x8, .LBB4_87
# %bb.86:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x7, .LBB4_110
.LBB4_87:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x6
	blt	x6, x7, .LBB4_92
.LBB4_88:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x13, 0x4c0(x11)		# 010110110110011000000
	mv	a2, x7
	slli	x9, x9, 24
	srli	x11, x9, 56
	mv	x9, x11
	bge	x11, x7, .LBB4_93
.LBB4_89:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x10, .LBB4_94
	j	.LBB4_96
.LBB4_90:                               #   in Loop: Header=BB4_17 Depth=1
	mv	t0, a3
	sub	a2, a3, a3
	blt	s6, a2, .LBB4_23
	j	.LBB4_24
.LBB4_91:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x3, 0x298(x14)		# 011100001101010011000
	subw	a2, x6, x7
	sraiw	x10, a2, 31
	xor	a2, a2, x10
	subw	x10, a2, x10
	mv	a2, x6
	bge	x6, x7, .LBB4_88
.LBB4_92:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x12, 0x400(x27)		# 110110110010000000000
	slli	x9, x9, 24
	srli	x11, x9, 56
	mv	x9, x11
	blt	x11, a2, .LBB4_89
.LBB4_93:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x9, a2
	bnez	x10, .LBB4_96
.LBB4_94:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x11, a2, .LBB4_96
# %bb.95:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a2, x9
	bne	x9, t5, .LBB4_103
	j	.LBB4_110
.LBB4_96:                               #   in Loop: Header=BB4_17 Depth=1
	fmv.s	fa0, fa5
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x10, .LBB4_98
# %bb.97:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x9, 0x596(x25)		# 110010100110110010110
	addi	x11, x10, 1
	fcvt.s.wu	fa0, x11
	fmv.x.w	x11, fa0
	srliw	x12, x11, 23
	addi	x12, x12, -128
	fcvt.s.wu	fa0, x12
	and	x11, x11, a1
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	or	x11, x11, t4
	fmv.w.x	ft0, x11
	fmadd.s	ft1, ft0, fa3, fa4
	fmadd.s	ft0, ft1, ft0, fa2
	fadd.s	fa0, ft0, fa0
.LBB4_98:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	fcvt.s.wu	ft0, x10
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_101
# %bb.99:                               #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x3, x8, .LBB4_101
.LBB4_100:                              #   in Loop: Header=BB4_17 Depth=1
	fmadd.s	fa0, fa0, fa1, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	subw	x9, x9, a2
	mv	a2, x9
	bne	x9, t5, .LBB4_103
	j	.LBB4_110
.LBB4_101:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x3, x8, .LBB4_105
# %bb.102:                              #   in Loop: Header=BB4_17 Depth=1
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x7, .LBB4_105
.LBB4_103:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x28, 0x480(x18)		# 100101110010010000000
	slli	x3, a4, 2
	add	x3, s11, x3
	lw	x3, 0(x3)
	addw	a2, x3, a2
	bge	x1, a2, .LBB4_110
# %bb.104:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x10, 0x520(x21)		# 101010101010100100000
	add	x1, s11, x4
	sw	a2, 0(x1)
	add	x5, s10, x5
	sd	a4, 0(x5)
	mv	x1, a2
	mv	x2, a4
	j	.LBB4_111
.LBB4_105:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x3, x8, .LBB4_107
# %bb.106:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x6, x7, .LBB4_100
.LBB4_107:                              #   in Loop: Header=BB4_17 Depth=1
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_109
# %bb.108:                              #   in Loop: Header=BB4_17 Depth=1
	fmv.s	ft0, fa0
.LBB4_109:                              #   in Loop: Header=BB4_17 Depth=1
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	subw	x9, x9, a2
	mv	a2, x9
	bne	x9, t5, .LBB4_103
.LBB4_110:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x26, 0x690(x4)		# 001001101011010010000
	add	a2, s11, x4
	sw	x1, 0(a2)
	add	x5, s10, x5
	sd	x2, 0(x5)
	mv	a2, x1
	bltz	x2, .LBB4_113
.LBB4_111:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x20, 0x400(x26)		# 110101010010000000000
	slli	x2, x2, 2
	add	x2, s1, x2
	lw	a2, 0(x2)
	blt	x1, a2, .LBB4_113
# %bb.112:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a2, x1
.LBB4_113:                              #   in Loop: Header=BB4_17 Depth=1
	regsw_c	x0, 0x0(x21)		# 101010000000000000000
	add	x4, s1, x4
	sw	a2, 0(x4)
	bltz	a4, .LBB4_15
# %bb.114:                              #   in Loop: Header=BB4_17 Depth=1
	ld	a2, 0(t6)
	slli	t6, a4, 4
	add	t6, s0, t6
	ld	t6, 0(t6)
	sub	a2, a2, t6
	bltu	s9, a2, .LBB4_16
# %bb.115:                              #   in Loop: Header=BB4_17 Depth=1
	slli	a2, a4, 2
	add	a2, s11, a2
	lw	a2, 0(a2)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	a2, x1, .LBB4_15
	j	.LBB4_16
.LBB4_116:
	mv	a0, s0
	j	.LBB4_131
.LBB4_117:
	addi	a1, sp, 112
	sd	a1, 16(sp)
	addi	a1, sp, 116
	sd	a1, 8(sp)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	sd	a1, 0(sp)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s10
	mv	a4, s1
	mv	a5, a0
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 56(sp)                      # 8-byte Folded Reload
	call	mg_chain_backtrack
	lw	s5, 116(sp)
	mv	s2, a0
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	sw	s5, 0(a0)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	sd	s2, 0(a0)
	beqz	s5, .LBB4_130
# %bb.118:
	lw	a0, 112(sp)
	slli	a0, a0, 4
	call	malloc
	mv	s3, a0
	blez	s5, .LBB4_124
# %bb.119:                              # %.preheader3
	li	a0, 0
	li	a1, 0
	addi	a2, s1, -4
	j	.LBB4_121
.LBB4_120:                              #   in Loop: Header=BB4_121 Depth=1
	addi	a0, a0, 1
	beq	a0, s5, .LBB4_124
.LBB4_121:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_123 Depth 2
	slli	a3, a0, 3
	add	a3, s2, a3
	lw	a5, 0(a3)
	blez	a5, .LBB4_120
# %bb.122:                              #   in Loop: Header=BB4_121 Depth=1
	sext.w	a3, a1
	slli	a6, a3, 2
	slli	a3, a5, 2
	add	a4, a2, a6
	add	a3, a4, a3
	slli	a4, a1, 4
	add	a4, s3, a4
	add	a1, a1, a5
	add	a5, a2, a6
.LBB4_123:                              #   Parent Loop BB4_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, 0(a3)
	slli	a6, a6, 4
	add	a6, s0, a6
	ld	a7, 0(a6)
	ld	a6, 8(a6)
	sd	a7, 0(a4)
	sd	a6, 8(a4)
	addi	a3, a3, -4
	addi	a4, a4, 16
	bne	a3, a5, .LBB4_123
	j	.LBB4_120
.LBB4_124:
	mv	a0, s1
	call	free
	slli	s4, s5, 4
	mv	a0, s4
	call	malloc
	bgtz	s5, .LBB4_125
	j	.LBB4_543
.LBB4_125:                              # %.preheader1
	mv	s1, a0
	li	a0, 0
	li	a1, 0
	addi	a2, s1, 8
	mv	a3, s2
.LBB4_126:                              # =>This Inner Loop Header: Depth=1
	slli	a4, a1, 4
	add	a4, s3, a4
	ld	a4, 0(a4)
	sd	a4, -8(a2)
	lw	a4, 0(a3)
	slli	a5, a1, 32
	or	a5, a5, a0
	sd	a5, 0(a2)
	add	a1, a4, a1
	addi	a0, a0, 1
	addi	a3, a3, 8
	addi	a2, a2, 16
	bne	s5, a0, .LBB4_126
# %bb.127:
	li	a0, 64
	add	a1, s1, s4
	bge	a0, s5, .LBB4_128
	j	.LBB4_544
.LBB4_128:
	li	a0, 1
	beq	s5, a0, .LBB4_129
	j	.LBB4_550
.LBB4_129:
	li	a0, 8
	j	.LBB4_546
.LBB4_130:
	mv	a0, s0
	call	free
	mv	a0, s1
.LBB4_131:
	call	free
	li	a0, 0
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	ld	s9, 152(sp)                     # 8-byte Folded Reload
	ld	s10, 144(sp)                    # 8-byte Folded Reload
	ld	s11, 136(sp)                    # 8-byte Folded Reload
	fld	fs0, 128(sp)                    # 8-byte Folded Reload
	fld	fs1, 120(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 240
	ret
.LBB4_132:
	li	a2, -7
	srli	a2, a2, 1
	and	a2, a4, a2
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	addi	a6, s10, -8
	addi	a7, a0, -4
	addi	t1, s11, -4
	addi	t2, s0, -8
	neg	a2, s6
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	addi	t4, s0, 8
	addi	t5, s10, 8
	addi	t6, a0, 4
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	addi	x1, s11, 4
	addi	x2, s0, 24
	addi	x3, s10, 16
	addi	x4, a0, 8
	addi	x5, s11, 8
	addi	x6, s0, 40
	li	x8, 1
	regsw_c	x0, 0x100(x16)		# 100000000000100000000
	li	x10, 3
	fmv.w.x	fa5, zero
	lui	a2, 258048
	fmv.w.x	fa4, a2
	lui	x11, 260096
	lui	a2, %hi(.LCPI4_0)
	flw	fa3, %lo(.LCPI4_0)(a2)
	lui	a2, %hi(.LCPI4_1)
	flw	fa2, %lo(.LCPI4_1)(a2)
	lui	a2, %hi(.LCPI4_2)
	flw	fa1, %lo(.LCPI4_2)(a2)
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	lui	x12, 524288
	li	x13, 2
	mv	x14, s11
	mv	x15, a0
	mv	x16, s10
	li	a4, -1
	ld	s7, 96(sp)                      # 8-byte Folded Reload
	j	.LBB4_136
.LBB4_133:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x2, 0x400(x8)		# 010000001010000000000
	slli	a2, x18, 2
	add	a4, s11, a2
	sw	x17, 0(a4)
	slli	a4, x18, 3
	add	a4, s10, a4
	li	a5, -1
	sd	a5, 0(a4)
	add	a2, s1, a2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x17, 0(a2)
.LBB4_134:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a4, x18
.LBB4_135:                              #   in Loop: Header=BB4_136 Depth=1
	addi	a3, a3, 4
	addi	a6, a6, 32
	addi	a7, a7, 16
	addi	t1, t1, 16
	addi	t2, t2, 64
	regsw_c	x13, 0x430(x27)		# 110110110110000110000
	addi	x8, x8, 4
	addi	x16, x16, 32
	addi	x15, x15, 16
	addi	x14, x14, 16
	addi	t4, t4, 64
	addi	x13, x13, 4
	addi	t5, t5, 32
	addi	t6, t6, 16
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	addi	x1, x1, 16
	addi	x2, x2, 64
	addi	x10, x10, 4
	addi	x3, x3, 32
	addi	x4, x4, 16
	addi	x5, x5, 16
	addi	x6, x6, 64
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	beq	a3, a2, .LBB4_13
.LBB4_136:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_139 Depth 2
                                        #     Child Loop BB4_149 Depth 2
                                        #     Child Loop BB4_192 Depth 2
                                        #     Child Loop BB4_243 Depth 2
                                        #     Child Loop BB4_249 Depth 2
                                        #     Child Loop BB4_296 Depth 2
                                        #     Child Loop BB4_346 Depth 2
                                        #     Child Loop BB4_356 Depth 2
                                        #     Child Loop BB4_398 Depth 2
                                        #     Child Loop BB4_448 Depth 2
                                        #     Child Loop BB4_455 Depth 2
                                        #     Child Loop BB4_499 Depth 2
	regsw_c	x16, 0x0(x18)		# 100101000000000000000
	slli	x17, a3, 4
	add	x17, s0, x17
	bge	t0, a3, .LBB4_141
# %bb.137:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x17)
	slli	a5, t0, 4
	add	a5, s0, a5
	j	.LBB4_139
.LBB4_138:                              #   in Loop: Header=BB4_139 Depth=2
	addi	t0, t0, 1
	addi	a5, a5, 16
	beq	a3, t0, .LBB4_143
.LBB4_139:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a5)
	regsw_c	x4, 0x0(x19)		# 100110010000000000000
	xor	x7, t3, a2
	srli	x7, x7, 32
	bnez	x7, .LBB4_138
# %bb.140:                              #   in Loop: Header=BB4_139 Depth=2
	add	t3, t3, s9
	bltu	t3, a2, .LBB4_138
.LBB4_141:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	sub	x21, a3, t0
	blt	s6, x21, .LBB4_144
.LBB4_142:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x18, t0
	j	.LBB4_145
.LBB4_143:                              #   in Loop: Header=BB4_136 Depth=1
	mv	t0, a3
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	sub	x21, a3, a3
	bge	s6, x21, .LBB4_142
.LBB4_144:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	sub	x18, a3, s6
.LBB4_145:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x9, 0x110(x25)		# 110010100100100010000
	ld	x22, 8(x17)
	slli	a2, x22, 24
	srli	x30, a2, 56
	addi	x31, a3, -1
	li	x19, -1
	bge	x18, a3, .LBB4_186
# %bb.146:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x9, 0x124(x17)		# 100010100100100100100
	li	x23, 0
	slli	a2, x22, 8
	srli	x24, a2, 56
	li	x19, -1
	mv	x25, t2
	mv	x26, t1
	mv	x27, a7
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x28, a6
	j	.LBB4_149
.LBB4_147:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x20, x30
.LBB4_148:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x13, 0x5b3(x27)		# 110110110110110110011
	addi	x31, x29, -1
	addi	x28, x28, -8
	addi	x27, x27, -4
	addi	x26, x26, -4
	addi	x25, x25, -16
	mv	x30, x20
	bge	x18, x29, .LBB4_187
.LBB4_149:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x12, 0x200(x11)		# 010110110001000000000
	ld	a5, 0(x25)
	subw	x20, x22, a5
	mv	x29, x31
	blez	x20, .LBB4_147
# %bb.150:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x20, .LBB4_147
# %bb.151:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x8, 0x410(x9)		# 010010100010000010000
	ld	a2, 0(x17)
	ld	t3, -8(x25)
	slli	x7, a5, 8
	srli	ra, x7, 56
	subw	a2, a2, t3
	bne	x24, ra, .LBB4_162
# %bb.152:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x20, .LBB4_147
# %bb.153:                              #   in Loop: Header=BB4_149 Depth=2
	beqz	a2, .LBB4_147
# %bb.154:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x2, 0x200(x10)		# 010100001001000000000
	subw	t3, x20, a2
	sraiw	x7, t3, 31
	xor	t3, t3, x7
	subw	s3, t3, x7
	blt	s4, s3, .LBB4_147
# %bb.155:                              #   in Loop: Header=BB4_149 Depth=2
	bnez	s5, .LBB4_159
# %bb.156:                              #   in Loop: Header=BB4_149 Depth=2
	li	t3, 2
	blt	s2, t3, .LBB4_159
# %bb.157:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x24, ra, .LBB4_159
# %bb.158:                              #   in Loop: Header=BB4_149 Depth=2
	blt	s8, a2, .LBB4_147
.LBB4_159:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	mv	x31, x20
	blt	x20, a2, .LBB4_163
.LBB4_160:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x1, 0x0(x16)		# 100000000100000000000
	mv	x31, a2
	slli	a5, a5, 24
	srli	a5, a5, 56
	mv	x7, a5
	bge	a5, a2, .LBB4_164
.LBB4_161:                              #   in Loop: Header=BB4_149 Depth=2
	beqz	s3, .LBB4_165
	j	.LBB4_167
.LBB4_162:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x2, 0x390(x10)		# 010100001001110010000
	subw	t3, x20, a2
	sraiw	x7, t3, 31
	xor	t3, t3, x7
	subw	s3, t3, x7
	mv	x31, x20
	bge	x20, a2, .LBB4_160
.LBB4_163:                              #   in Loop: Header=BB4_149 Depth=2
	slli	a5, a5, 24
	srli	a5, a5, 56
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	mv	x7, a5
	blt	a5, x31, .LBB4_161
.LBB4_164:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x7, x31
	bnez	s3, .LBB4_167
.LBB4_165:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	a5, x31, .LBB4_167
# %bb.166:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a5, x7
	beq	x7, x12, .LBB4_147
	j	.LBB4_174
.LBB4_167:                              #   in Loop: Header=BB4_149 Depth=2
	fmv.s	fa0, fa5
	beqz	s3, .LBB4_169
# %bb.168:                              #   in Loop: Header=BB4_149 Depth=2
	addi	a5, s3, 1
	fcvt.s.wu	fa0, a5
	fmv.x.w	a5, fa0
	srliw	t3, a5, 23
	addi	t3, t3, -128
	fcvt.s.wu	fa0, t3
	and	a5, a5, a1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	or	a5, a5, x11
	fmv.w.x	ft0, a5
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_169:                              #   in Loop: Header=BB4_149 Depth=2
	fcvt.s.wu	ft0, s3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	fcvt.s.w	ft1, x31
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_172
# %bb.170:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x24, ra, .LBB4_172
.LBB4_171:                              #   in Loop: Header=BB4_149 Depth=2
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x7, x7, a2
	mv	a5, x7
	beq	x7, x12, .LBB4_147
	j	.LBB4_174
.LBB4_172:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beq	x24, ra, .LBB4_181
# %bb.173:                              #   in Loop: Header=BB4_149 Depth=2
	li	a5, 1
	bnez	a2, .LBB4_181
.LBB4_174:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x6, 0x0(x10)		# 010100011000000000000
	lw	a2, 0(x26)
	addw	x20, a2, a5
	bge	x30, x20, .LBB4_176
# %bb.175:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x12, 0x400(x7)		# 001110110010000000000
	sgtz	a2, x23
	subw	x23, x23, a2
	mv	x19, x29
	ld	a2, 0(x28)
	bgez	a2, .LBB4_180
	j	.LBB4_148
.LBB4_176:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	lw	a2, 0(x27)
	sext.w	a5, a3
	bne	a2, a5, .LBB4_179
# %bb.177:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x23, s7, .LBB4_225
# %bb.178:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addiw	x23, x23, 1
.LBB4_179:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	mv	x20, x30
	ld	a2, 0(x28)
	bltz	a2, .LBB4_148
.LBB4_180:                              #   in Loop: Header=BB4_149 Depth=2
	slli	a2, a2, 2
	add	a2, a0, a2
	sw	a3, 0(a2)
	j	.LBB4_148
.LBB4_181:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x24, ra, .LBB4_183
# %bb.182:                              #   in Loop: Header=BB4_149 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x20, a2, .LBB4_171
.LBB4_183:                              #   in Loop: Header=BB4_149 Depth=2
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_185
# %bb.184:                              #   in Loop: Header=BB4_149 Depth=2
	fmv.s	ft0, fa0
.LBB4_185:                              #   in Loop: Header=BB4_149 Depth=2
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x7, x7, a2
	mv	a5, x7
	beq	x7, x12, .LBB4_147
	j	.LBB4_174
.LBB4_186:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x20, x30
.LBB4_187:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	slli	x23, a3, 2
	bltz	a4, .LBB4_189
.LBB4_188:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x17)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	bgeu	s9, a2, .LBB4_196
.LBB4_189:                              #   in Loop: Header=BB4_136 Depth=1
	li	a4, -1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x18, a3, .LBB4_231
# %bb.190:                              # %.preheader27
                                        #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x0(x16)		# 100000000100000000000
	li	x24, -1
	lui	a5, 524288
	mv	a2, t1
	mv	x7, a3
	j	.LBB4_192
.LBB4_191:                              #   in Loop: Header=BB4_192 Depth=2
	addi	a2, a2, -4
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	mv	x24, a4
	bge	x18, x7, .LBB4_196
.LBB4_192:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x200(x19)		# 100110010001000000000
	lw	x25, 0(a2)
	addi	x7, x7, -1
	mv	a4, x7
	blt	a5, x25, .LBB4_194
# %bb.193:                              #   in Loop: Header=BB4_192 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a4, x24
	blt	x25, a5, .LBB4_191
	j	.LBB4_195
.LBB4_194:                              #   in Loop: Header=BB4_192 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x25, a5, .LBB4_191
.LBB4_195:                              #   in Loop: Header=BB4_192 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a5, x25
	j	.LBB4_191
.LBB4_196:                              #   in Loop: Header=BB4_136 Depth=1
	bltz	a4, .LBB4_231
# %bb.197:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a4, x31, .LBB4_231
# %bb.198:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 4
	add	a2, s0, a2
	ld	a5, 8(a2)
	regsw_c	x16, 0x0(x24)		# 110001000000000000000
	subw	x24, x22, a5
	blez	x24, .LBB4_231
# %bb.199:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x24, .LBB4_231
# %bb.200:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x534(x25)		# 110010000110100110100
	slli	x22, x22, 8
	ld	t3, 0(x17)
	ld	a2, 0(a2)
	srli	x22, x22, 56
	slli	x7, a5, 8
	srli	x26, x7, 56
	subw	x25, t3, a2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x26, .LBB4_211
# %bb.201:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x24, .LBB4_231
# %bb.202:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x25, .LBB4_231
# %bb.203:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x40(x12)		# 011000000100001000000
	subw	a2, x24, x25
	sraiw	t3, a2, 31
	xor	a2, a2, t3
	subw	x27, a2, t3
	blt	s4, x27, .LBB4_231
# %bb.204:                              #   in Loop: Header=BB4_136 Depth=1
	bnez	s5, .LBB4_208
# %bb.205:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 2
	blt	s2, a2, .LBB4_208
# %bb.206:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x26, .LBB4_208
# %bb.207:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x25, .LBB4_231
.LBB4_208:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x24
	blt	x24, x25, .LBB4_212
.LBB4_209:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x40(x8)		# 010000000100001000000
	mv	a2, x25
	slli	a5, a5, 24
	srli	a5, a5, 56
	mv	x7, a5
	bge	a5, x25, .LBB4_213
.LBB4_210:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x27, .LBB4_214
	j	.LBB4_216
.LBB4_211:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x98(x12)		# 011000000100010011000
	subw	a2, x24, x25
	sraiw	t3, a2, 31
	xor	a2, a2, t3
	subw	x27, a2, t3
	mv	a2, x24
	bge	x24, x25, .LBB4_209
.LBB4_212:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a5, a5, 24
	srli	a5, a5, 56
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x7, a5
	blt	a5, a2, .LBB4_210
.LBB4_213:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x7, a2
	bnez	x27, .LBB4_216
.LBB4_214:                              #   in Loop: Header=BB4_136 Depth=1
	blt	a5, a2, .LBB4_216
# %bb.215:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x7
	bne	x7, x12, .LBB4_223
	j	.LBB4_231
.LBB4_216:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	fa0, fa5
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x27, .LBB4_218
# %bb.217:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	a5, x27, 1
	fcvt.s.wu	fa0, a5
	fmv.x.w	a5, fa0
	srliw	t3, a5, 23
	addi	t3, t3, -128
	fcvt.s.wu	fa0, t3
	and	a5, a5, a1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	or	a5, a5, x11
	fmv.w.x	ft0, a5
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_218:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	fcvt.s.wu	ft0, x27
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_221
# %bb.219:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x26, .LBB4_221
.LBB4_220:                              #   in Loop: Header=BB4_136 Depth=1
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x7, x7, a2
	mv	a2, x7
	bne	x7, x12, .LBB4_223
	j	.LBB4_231
.LBB4_221:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x22, x26, .LBB4_226
# %bb.222:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x25, .LBB4_226
.LBB4_223:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a5, a4, 2
	add	a5, s11, a5
	lw	a5, 0(a5)
	addw	a2, a5, a2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x20, a2, .LBB4_231
# %bb.224:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x24(x4)		# 001000000000000100100
	add	a5, s11, x23
	sw	a2, 0(a5)
	slli	a5, a3, 3
	add	a5, s10, a5
	sd	a4, 0(a5)
	mv	x20, a2
	mv	x19, a4
	j	.LBB4_232
.LBB4_225:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x0(x27)		# 110110100000000000000
	mv	x31, x29
	mv	x20, x30
	slli	x23, a3, 2
	bgez	a4, .LBB4_188
	j	.LBB4_189
.LBB4_226:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x26, .LBB4_228
# %bb.227:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x24, x25, .LBB4_220
.LBB4_228:                              #   in Loop: Header=BB4_136 Depth=1
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_230
# %bb.229:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	ft0, fa0
.LBB4_230:                              #   in Loop: Header=BB4_136 Depth=1
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x7, x7, a2
	mv	a2, x7
	bne	x7, x12, .LBB4_223
.LBB4_231:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x52(x4)		# 001001000000001010010
	add	a2, s11, x23
	sw	x20, 0(a2)
	slli	a2, a3, 3
	add	a2, s10, a2
	sd	x19, 0(a2)
	mv	a2, x20
	bltz	x19, .LBB4_234
.LBB4_232:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x20, 0x400(x26)		# 110101010010000000000
	slli	x19, x19, 2
	add	x19, s1, x19
	lw	a2, 0(x19)
	blt	x20, a2, .LBB4_234
# %bb.233:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a2, x20
.LBB4_234:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x21)		# 101010000000000000000
	add	x23, s1, x23
	sw	a2, 0(x23)
	bltz	a4, .LBB4_237
# %bb.235:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x17)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	bltu	s9, a2, .LBB4_238
# %bb.236:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 2
	add	a2, s11, a2
	lw	a2, 0(a2)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a2, x20, .LBB4_238
.LBB4_237:                              #   in Loop: Header=BB4_136 Depth=1
	mv	a4, a3
.LBB4_238:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x11, 0x440(x19)		# 100110101110001000000
	addi	x20, a3, 1
	slli	x19, x20, 4
	add	x19, s0, x19
	ld	x23, 8(x19)
	blt	a3, x18, .LBB4_245
# %bb.239:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s6, x21, .LBB4_241
# %bb.240:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x21, s6
.LBB4_241:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x200(x8)		# 010000000001000000000
	ld	a2, 0(x19)
	ld	a5, 104(sp)                     # 8-byte Folded Reload
	add	t0, a5, t0
	add	t0, t0, x21
	slli	a5, t0, 4
	add	a5, s0, a5
	j	.LBB4_243
.LBB4_242:                              #   in Loop: Header=BB4_243 Depth=2
	regsw_c	x6, 0x0(x24)		# 110000011000000000000
	addi	x18, x18, 1
	addi	a5, a5, 16
	beq	x8, x18, .LBB4_286
.LBB4_243:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a5)
	xor	t3, t0, a2
	srli	t3, t3, 32
	bnez	t3, .LBB4_242
# %bb.244:                              #   in Loop: Header=BB4_243 Depth=2
	add	t0, t0, s9
	bltu	t0, a2, .LBB4_242
.LBB4_245:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	sub	a2, x20, x18
	blt	s6, a2, .LBB4_287
.LBB4_246:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x440(x25)		# 110010100010001000000
	mv	x17, x18
	slli	a2, x23, 24
	srli	x21, a2, 56
	slli	t0, x20, 2
	blt	a3, x18, .LBB4_288
.LBB4_247:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x9, 0x136(x17)		# 100010100100100110110
	li	x24, 0
	slli	a2, x23, 8
	srli	x25, a2, 56
	li	x22, -1
	mv	x26, t4
	mv	x27, x14
	mv	x28, x15
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x29, x16
	mv	ra, a3
	j	.LBB4_249
.LBB4_248:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x13, 0x598(x11)		# 010110110110110011000
	addi	ra, x30, -1
	addi	x29, x29, -8
	addi	x28, x28, -4
	addi	x27, x27, -4
	addi	x26, x26, -16
	bge	x17, x30, .LBB4_292
.LBB4_249:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x8, 0x200(x11)		# 010110100001000000000
	ld	s3, 0(x26)
	subw	x31, x23, s3
	mv	x30, ra
	blez	x31, .LBB4_248
# %bb.250:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x31, .LBB4_248
# %bb.251:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x1, 0x18(x9)		# 010010000100000011000
	ld	a2, 0(x19)
	ld	a5, -8(x26)
	slli	t3, s3, 8
	srli	x7, t3, 56
	subw	ra, a2, a5
	bne	x25, x7, .LBB4_262
# %bb.252:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x31, .LBB4_248
# %bb.253:                              #   in Loop: Header=BB4_249 Depth=2
	beqz	ra, .LBB4_248
# %bb.254:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	subw	a2, x31, ra
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	blt	s4, a5, .LBB4_248
# %bb.255:                              #   in Loop: Header=BB4_249 Depth=2
	bnez	s5, .LBB4_259
# %bb.256:                              #   in Loop: Header=BB4_249 Depth=2
	li	a2, 2
	blt	s2, a2, .LBB4_259
# %bb.257:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x25, x7, .LBB4_259
# %bb.258:                              #   in Loop: Header=BB4_249 Depth=2
	blt	s8, ra, .LBB4_248
.LBB4_259:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a2, x31
	blt	x31, ra, .LBB4_263
.LBB4_260:                              #   in Loop: Header=BB4_249 Depth=2
	mv	a2, ra
	slli	s3, s3, 24
	srli	s3, s3, 56
	mv	t3, s3
	bge	s3, ra, .LBB4_264
.LBB4_261:                              #   in Loop: Header=BB4_249 Depth=2
	beqz	a5, .LBB4_265
	j	.LBB4_267
.LBB4_262:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x90(x8)		# 010000000000010010000
	subw	a2, x31, ra
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	mv	a2, x31
	bge	x31, ra, .LBB4_260
.LBB4_263:                              #   in Loop: Header=BB4_249 Depth=2
	slli	s3, s3, 24
	srli	s3, s3, 56
	mv	t3, s3
	blt	s3, a2, .LBB4_261
.LBB4_264:                              #   in Loop: Header=BB4_249 Depth=2
	mv	t3, a2
	bnez	a5, .LBB4_267
.LBB4_265:                              #   in Loop: Header=BB4_249 Depth=2
	blt	s3, a2, .LBB4_267
# %bb.266:                              #   in Loop: Header=BB4_249 Depth=2
	mv	a2, t3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	t3, x12, .LBB4_248
	j	.LBB4_274
.LBB4_267:                              #   in Loop: Header=BB4_249 Depth=2
	fmv.s	fa0, fa5
	beqz	a5, .LBB4_269
# %bb.268:                              #   in Loop: Header=BB4_249 Depth=2
	addi	s3, a5, 1
	fcvt.s.wu	fa0, s3
	fmv.x.w	s3, fa0
	regsw_c	x5, 0x1d0(x19)		# 100110010100111010000
	srliw	x9, s3, 23
	addi	x9, x9, -128
	fcvt.s.wu	fa0, x9
	and	x9, s3, a1
	or	x9, x9, x11
	fmv.w.x	ft0, x9
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_269:                              #   in Loop: Header=BB4_249 Depth=2
	fcvt.s.wu	ft0, a5
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_272
# %bb.270:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x25, x7, .LBB4_272
.LBB4_271:                              #   in Loop: Header=BB4_249 Depth=2
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	subw	t3, t3, a2
	mv	a2, t3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	t3, x12, .LBB4_248
	j	.LBB4_274
.LBB4_272:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x25, x7, .LBB4_281
# %bb.273:                              #   in Loop: Header=BB4_249 Depth=2
	li	a2, 1
	bnez	ra, .LBB4_281
.LBB4_274:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	lw	a5, 0(x27)
	addw	a2, a5, a2
	bge	x21, a2, .LBB4_276
# %bb.275:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x13, 0x0(x7)		# 001110110100000000000
	sgtz	a5, x24
	subw	x24, x24, a5
	mv	x22, x30
	mv	x21, a2
	j	.LBB4_279
.LBB4_276:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	lw	a2, 0(x28)
	sext.w	a5, x20
	bne	a2, a5, .LBB4_279
# %bb.277:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x24, s7, .LBB4_291
# %bb.278:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addiw	x24, x24, 1
.LBB4_279:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x29)
	bltz	a2, .LBB4_248
# %bb.280:                              #   in Loop: Header=BB4_249 Depth=2
	slli	a2, a2, 2
	add	a2, a0, a2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x20, 0(a2)
	j	.LBB4_248
.LBB4_281:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x25, x7, .LBB4_283
# %bb.282:                              #   in Loop: Header=BB4_249 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x31, ra, .LBB4_271
.LBB4_283:                              #   in Loop: Header=BB4_249 Depth=2
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_285
# %bb.284:                              #   in Loop: Header=BB4_249 Depth=2
	fmv.s	ft0, fa0
.LBB4_285:                              #   in Loop: Header=BB4_249 Depth=2
	fcvt.w.s	a2, ft0, rtz
	subw	t3, t3, a2
	mv	a2, t3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	t3, x12, .LBB4_248
	j	.LBB4_274
.LBB4_286:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	mv	x18, x20
	sub	a2, x20, x20
	bge	s6, a2, .LBB4_246
.LBB4_287:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x440(x25)		# 110010100010001000000
	sub	x17, x20, s6
	slli	a2, x23, 24
	srli	x21, a2, 56
	slli	t0, x20, 2
	bge	a3, x17, .LBB4_247
.LBB4_288:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x20(x8)		# 010000000000000100000
	ld	a2, 0(x19)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	li	x22, -1
	bgeu	s9, a2, .LBB4_290
# %bb.289:                              #   in Loop: Header=BB4_136 Depth=1
	add	a2, s11, t0
	regsw_c	x0, 0x1(x5)		# 001010000000000000001
	sw	x21, 0(a2)
	slli	a2, x20, 3
	add	a2, s10, a2
	li	a4, -1
	sd	a4, 0(a2)
	add	t0, s1, t0
	sw	x21, 0(t0)
	j	.LBB4_340
.LBB4_290:                              #   in Loop: Header=BB4_136 Depth=1
	mv	ra, a3
	j	.LBB4_300
.LBB4_291:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	ra, x30
.LBB4_292:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x19)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	bgeu	s9, a2, .LBB4_300
# %bb.293:                              #   in Loop: Header=BB4_136 Depth=1
	li	a4, -1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	a3, x17, .LBB4_334
# %bb.294:                              # %.preheader23
                                        #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x5, 0x400(x16)		# 100000010110000000000
	li	x24, -1
	lui	a5, 524288
	mv	a2, x14
	mv	x7, x8
	j	.LBB4_296
.LBB4_295:                              #   in Loop: Header=BB4_296 Depth=2
	addi	a2, a2, -4
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	mv	x24, a4
	bge	x17, x7, .LBB4_300
.LBB4_296:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x200(x19)		# 100110010001000000000
	lw	x25, 0(a2)
	addi	x7, x7, -1
	mv	a4, x7
	blt	a5, x25, .LBB4_298
# %bb.297:                              #   in Loop: Header=BB4_296 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a4, x24
	blt	x25, a5, .LBB4_295
	j	.LBB4_299
.LBB4_298:                              #   in Loop: Header=BB4_296 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x25, a5, .LBB4_295
.LBB4_299:                              #   in Loop: Header=BB4_296 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a5, x25
	j	.LBB4_295
.LBB4_300:                              #   in Loop: Header=BB4_136 Depth=1
	bltz	a4, .LBB4_334
# %bb.301:                              #   in Loop: Header=BB4_136 Depth=1
	bge	a4, ra, .LBB4_334
# %bb.302:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 4
	add	a2, s0, a2
	regsw_c	x18, 0x0(x19)		# 100111001000000000000
	ld	x26, 8(a2)
	subw	x24, x23, x26
	blez	x24, .LBB4_334
# %bb.303:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x24, .LBB4_334
# %bb.304:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x4a4(x25)		# 110010000110010100100
	slli	x23, x23, 8
	ld	a5, 0(x19)
	ld	a2, 0(a2)
	srli	x23, x23, 56
	slli	t3, x26, 8
	srli	x7, t3, 56
	subw	x25, a5, a2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_315
# %bb.305:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x24, .LBB4_334
# %bb.306:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x25, .LBB4_334
# %bb.307:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	subw	a2, x24, x25
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	blt	s4, a5, .LBB4_334
# %bb.308:                              #   in Loop: Header=BB4_136 Depth=1
	bnez	s5, .LBB4_312
# %bb.309:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 2
	blt	s2, a2, .LBB4_312
# %bb.310:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_312
# %bb.311:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x25, .LBB4_334
.LBB4_312:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x24
	blt	x24, x25, .LBB4_316
.LBB4_313:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x40(x9)		# 010010000100001000000
	mv	a2, x25
	slli	t3, x26, 24
	srli	t3, t3, 56
	mv	x26, t3
	bge	t3, x25, .LBB4_317
.LBB4_314:                              #   in Loop: Header=BB4_136 Depth=1
	beqz	a5, .LBB4_318
	j	.LBB4_320
.LBB4_315:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x98(x12)		# 011000000000010011000
	subw	a2, x24, x25
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	mv	a2, x24
	bge	x24, x25, .LBB4_313
.LBB4_316:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x0(x8)		# 010000100000000000000
	slli	t3, x26, 24
	srli	t3, t3, 56
	mv	x26, t3
	blt	t3, a2, .LBB4_314
.LBB4_317:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x26, a2
	bnez	a5, .LBB4_320
.LBB4_318:                              #   in Loop: Header=BB4_136 Depth=1
	blt	t3, a2, .LBB4_320
# %bb.319:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x26
	bne	x26, x12, .LBB4_327
	j	.LBB4_334
.LBB4_320:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	fa0, fa5
	beqz	a5, .LBB4_322
# %bb.321:                              #   in Loop: Header=BB4_136 Depth=1
	addi	t3, a5, 1
	fcvt.s.wu	fa0, t3
	fmv.x.w	t3, fa0
	regsw_c	x4, 0x40(x19)		# 100110010000001000000
	srliw	x9, t3, 23
	addi	x9, x9, -128
	fcvt.s.wu	fa0, x9
	and	t3, t3, a1
	or	t3, t3, x11
	fmv.w.x	ft0, t3
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_322:                              #   in Loop: Header=BB4_136 Depth=1
	fcvt.s.wu	ft0, a5
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_325
# %bb.323:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_325
.LBB4_324:                              #   in Loop: Header=BB4_136 Depth=1
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x26, x26, a2
	mv	a2, x26
	bne	x26, x12, .LBB4_327
	j	.LBB4_334
.LBB4_325:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x23, x7, .LBB4_329
# %bb.326:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x25, .LBB4_329
.LBB4_327:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a5, a4, 2
	add	a5, s11, a5
	lw	a5, 0(a5)
	addw	a5, a5, a2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x21, a5, .LBB4_334
# %bb.328:                              #   in Loop: Header=BB4_136 Depth=1
	add	a2, s11, t0
	sw	a5, 0(a2)
	regsw_c	x1, 0x0(x8)		# 010000000100000000000
	slli	a2, x20, 3
	add	a2, s10, a2
	sd	a4, 0(a2)
	mv	x22, a4
	j	.LBB4_335
.LBB4_329:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_331
# %bb.330:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x24, x25, .LBB4_324
.LBB4_331:                              #   in Loop: Header=BB4_136 Depth=1
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_333
# %bb.332:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	ft0, fa0
.LBB4_333:                              #   in Loop: Header=BB4_136 Depth=1
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x26, x26, a2
	mv	a2, x26
	bne	x26, x12, .LBB4_327
.LBB4_334:                              #   in Loop: Header=BB4_136 Depth=1
	add	a2, s11, t0
	regsw_c	x0, 0x290(x5)		# 001010000001010010000
	sw	x21, 0(a2)
	slli	a2, x20, 3
	add	a2, s10, a2
	sd	x22, 0(a2)
	mv	a5, x21
	bltz	x22, .LBB4_337
.LBB4_335:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x28, 0x200(x26)		# 110101110001000000000
	slli	x22, x22, 2
	add	x22, s1, x22
	lw	x21, 0(x22)
	blt	a5, x21, .LBB4_337
# %bb.336:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x21, a5
.LBB4_337:                              #   in Loop: Header=BB4_136 Depth=1
	add	t0, s1, t0
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x21, 0(t0)
	bltz	a4, .LBB4_340
# %bb.338:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x19)
	slli	t0, a4, 4
	add	t0, s0, t0
	ld	t0, 0(t0)
	sub	a2, a2, t0
	bltu	s9, a2, .LBB4_341
# %bb.339:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 2
	add	a2, s11, a2
	lw	a2, 0(a2)
	bge	a2, a5, .LBB4_341
.LBB4_340:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a4, x20
.LBB4_341:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x11, 0x4c0(x19)		# 100110101110011000000
	addi	x19, a3, 2
	slli	x21, x19, 4
	add	x21, s0, x21
	ld	x23, 8(x21)
	bge	x17, x19, .LBB4_348
# %bb.342:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	sub	a5, x8, x18
	blt	s6, a5, .LBB4_344
# %bb.343:                              #   in Loop: Header=BB4_136 Depth=1
	mv	a5, s6
.LBB4_344:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x10, 0x400(x8)		# 010000101010000000000
	ld	a2, 0(x21)
	ld	t0, 104(sp)                     # 8-byte Folded Reload
	add	x18, t0, x18
	add	a5, x18, a5
	slli	a5, a5, 4
	add	a5, s0, a5
	j	.LBB4_346
.LBB4_345:                              #   in Loop: Header=BB4_346 Depth=2
	regsw_c	x6, 0x0(x24)		# 110000011000000000000
	addi	x17, x17, 1
	addi	a5, a5, 16
	beq	x13, x17, .LBB4_352
.LBB4_346:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a5)
	xor	t3, t0, a2
	srli	t3, t3, 32
	bnez	t3, .LBB4_345
# %bb.347:                              #   in Loop: Header=BB4_346 Depth=2
	add	t0, t0, s9
	bltu	t0, a2, .LBB4_345
.LBB4_348:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	sub	a2, x19, x17
	blt	s6, a2, .LBB4_353
.LBB4_349:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x600(x9)		# 010010100011000000000
	mv	t0, x17
	slli	a2, x23, 24
	srli	x18, a2, 56
	blt	x17, x19, .LBB4_354
.LBB4_350:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x20(x8)		# 010000000000000100000
	ld	a2, 0(x21)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	li	x22, -1
	bgeu	s9, a2, .LBB4_402
# %bb.351:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x2, 0x400(x8)		# 010000001010000000000
	slli	a2, x19, 2
	add	a4, s11, a2
	sw	x18, 0(a4)
	slli	a4, x19, 3
	add	a4, s10, a4
	li	a5, -1
	sd	a5, 0(a4)
	add	a2, s1, a2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x18, 0(a2)
	j	.LBB4_442
.LBB4_352:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	mv	x17, x19
	sub	a2, x19, x19
	bge	s6, a2, .LBB4_349
.LBB4_353:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x200(x9)		# 010010100001000000000
	sub	t0, x19, s6
	slli	a2, x23, 24
	srli	x18, a2, 56
	bge	t0, x19, .LBB4_350
.LBB4_354:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x9, 0x1b4(x17)		# 100010100100110110100
	li	x24, 0
	slli	a2, x23, 8
	srli	x25, a2, 56
	li	x22, -1
	mv	x26, x2
	mv	x27, x1
	mv	x28, t6
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x29, t5
	j	.LBB4_356
.LBB4_355:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x13, 0x588(x27)		# 110110110110110001000
	addi	x20, x30, -1
	addi	x29, x29, -8
	addi	x28, x28, -4
	addi	x27, x27, -4
	addi	x26, x26, -16
	bge	t0, x30, .LBB4_394
.LBB4_356:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x12, 0x200(x11)		# 010110110001000000000
	ld	s3, 0(x26)
	subw	x31, x23, s3
	mv	x30, x20
	blez	x31, .LBB4_355
# %bb.357:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x31, .LBB4_355
# %bb.358:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x1, 0x118(x9)		# 010010000100100011000
	ld	a2, 0(x21)
	ld	a5, -8(x26)
	slli	t3, s3, 8
	srli	x7, t3, 56
	subw	x20, a2, a5
	bne	x25, x7, .LBB4_369
# %bb.359:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x31, .LBB4_355
# %bb.360:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x20, .LBB4_355
# %bb.361:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	subw	a2, x31, x20
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	blt	s4, a5, .LBB4_355
# %bb.362:                              #   in Loop: Header=BB4_356 Depth=2
	bnez	s5, .LBB4_366
# %bb.363:                              #   in Loop: Header=BB4_356 Depth=2
	li	a2, 2
	blt	s2, a2, .LBB4_366
# %bb.364:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x25, x7, .LBB4_366
# %bb.365:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x20, .LBB4_355
.LBB4_366:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x31
	blt	x31, x20, .LBB4_370
.LBB4_367:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x40(x8)		# 010000000000001000000
	mv	a2, x20
	slli	t3, s3, 24
	srli	t3, t3, 56
	mv	s3, t3
	bge	t3, x20, .LBB4_371
.LBB4_368:                              #   in Loop: Header=BB4_356 Depth=2
	beqz	a5, .LBB4_372
	j	.LBB4_374
.LBB4_369:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x98(x12)		# 011000000000010011000
	subw	a2, x31, x20
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	mv	a2, x31
	bge	x31, x20, .LBB4_367
.LBB4_370:                              #   in Loop: Header=BB4_356 Depth=2
	slli	t3, s3, 24
	srli	t3, t3, 56
	mv	s3, t3
	blt	t3, a2, .LBB4_368
.LBB4_371:                              #   in Loop: Header=BB4_356 Depth=2
	mv	s3, a2
	bnez	a5, .LBB4_374
.LBB4_372:                              #   in Loop: Header=BB4_356 Depth=2
	blt	t3, a2, .LBB4_374
# %bb.373:                              #   in Loop: Header=BB4_356 Depth=2
	mv	a2, s3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	s3, x12, .LBB4_355
	j	.LBB4_381
.LBB4_374:                              #   in Loop: Header=BB4_356 Depth=2
	fmv.s	fa0, fa5
	beqz	a5, .LBB4_376
# %bb.375:                              #   in Loop: Header=BB4_356 Depth=2
	addi	t3, a5, 1
	fcvt.s.wu	fa0, t3
	fmv.x.w	t3, fa0
	regsw_c	x4, 0x40(x19)		# 100110010000001000000
	srliw	x9, t3, 23
	addi	x9, x9, -128
	fcvt.s.wu	fa0, x9
	and	t3, t3, a1
	or	t3, t3, x11
	fmv.w.x	ft0, t3
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_376:                              #   in Loop: Header=BB4_356 Depth=2
	fcvt.s.wu	ft0, a5
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_379
# %bb.377:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x25, x7, .LBB4_379
.LBB4_378:                              #   in Loop: Header=BB4_356 Depth=2
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	subw	s3, s3, a2
	mv	a2, s3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	s3, x12, .LBB4_355
	j	.LBB4_381
.LBB4_379:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x25, x7, .LBB4_388
# %bb.380:                              #   in Loop: Header=BB4_356 Depth=2
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x20, .LBB4_388
.LBB4_381:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	lw	a5, 0(x27)
	addw	a2, a5, a2
	bge	x18, a2, .LBB4_383
# %bb.382:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x13, 0x0(x7)		# 001110110100000000000
	sgtz	a5, x24
	subw	x24, x24, a5
	mv	x22, x30
	mv	x18, a2
	j	.LBB4_386
.LBB4_383:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	lw	a2, 0(x28)
	sext.w	a5, x19
	bne	a2, a5, .LBB4_386
# %bb.384:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x24, s7, .LBB4_393
# %bb.385:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addiw	x24, x24, 1
.LBB4_386:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x29)
	bltz	a2, .LBB4_355
# %bb.387:                              #   in Loop: Header=BB4_356 Depth=2
	slli	a2, a2, 2
	add	a2, a0, a2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x19, 0(a2)
	j	.LBB4_355
.LBB4_388:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x25, x7, .LBB4_390
# %bb.389:                              #   in Loop: Header=BB4_356 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x31, x20, .LBB4_378
.LBB4_390:                              #   in Loop: Header=BB4_356 Depth=2
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_392
# %bb.391:                              #   in Loop: Header=BB4_356 Depth=2
	fmv.s	ft0, fa0
.LBB4_392:                              #   in Loop: Header=BB4_356 Depth=2
	fcvt.w.s	a2, ft0, rtz
	subw	s3, s3, a2
	mv	a2, s3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	s3, x12, .LBB4_355
	j	.LBB4_381
.LBB4_393:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x20, x30
.LBB4_394:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x21)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	bgeu	s9, a2, .LBB4_402
# %bb.395:                              #   in Loop: Header=BB4_136 Depth=1
	li	a4, -1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	t0, x19, .LBB4_436
# %bb.396:                              # %.preheader19
                                        #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x5, 0x400(x16)		# 100000010110000000000
	li	x24, -1
	lui	a5, 524288
	mv	a2, x1
	mv	x7, x13
	j	.LBB4_398
.LBB4_397:                              #   in Loop: Header=BB4_398 Depth=2
	addi	a2, a2, -4
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	mv	x24, a4
	bge	t0, x7, .LBB4_402
.LBB4_398:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x200(x19)		# 100110010001000000000
	lw	x25, 0(a2)
	addi	x7, x7, -1
	mv	a4, x7
	blt	a5, x25, .LBB4_400
# %bb.399:                              #   in Loop: Header=BB4_398 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a4, x24
	blt	x25, a5, .LBB4_397
	j	.LBB4_401
.LBB4_400:                              #   in Loop: Header=BB4_398 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x25, a5, .LBB4_397
.LBB4_401:                              #   in Loop: Header=BB4_398 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a5, x25
	j	.LBB4_397
.LBB4_402:                              #   in Loop: Header=BB4_136 Depth=1
	bltz	a4, .LBB4_436
# %bb.403:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a4, x20, .LBB4_436
# %bb.404:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 4
	add	a2, s0, a2
	regsw_c	x18, 0x0(x19)		# 100111001000000000000
	ld	x25, 8(a2)
	subw	x20, x23, x25
	blez	x20, .LBB4_436
# %bb.405:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x20, .LBB4_436
# %bb.406:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x4a4(x25)		# 110010000110010100100
	slli	x23, x23, 8
	ld	a5, 0(x21)
	ld	a2, 0(a2)
	srli	x23, x23, 56
	slli	t3, x25, 8
	srli	x7, t3, 56
	subw	x24, a5, a2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_417
# %bb.407:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x20, .LBB4_436
# %bb.408:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x24, .LBB4_436
# %bb.409:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	subw	a2, x20, x24
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	blt	s4, a5, .LBB4_436
# %bb.410:                              #   in Loop: Header=BB4_136 Depth=1
	bnez	s5, .LBB4_414
# %bb.411:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 2
	blt	s2, a2, .LBB4_414
# %bb.412:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_414
# %bb.413:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x24, .LBB4_436
.LBB4_414:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x20
	blt	x20, x24, .LBB4_418
.LBB4_415:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x40(x9)		# 010010000100001000000
	mv	a2, x24
	slli	t3, x25, 24
	srli	t3, t3, 56
	mv	x25, t3
	bge	t3, x24, .LBB4_419
.LBB4_416:                              #   in Loop: Header=BB4_136 Depth=1
	beqz	a5, .LBB4_420
	j	.LBB4_422
.LBB4_417:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x98(x12)		# 011000000000010011000
	subw	a2, x20, x24
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	mv	a2, x20
	bge	x20, x24, .LBB4_415
.LBB4_418:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x0(x8)		# 010000100000000000000
	slli	t3, x25, 24
	srli	t3, t3, 56
	mv	x25, t3
	blt	t3, a2, .LBB4_416
.LBB4_419:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x25, a2
	bnez	a5, .LBB4_422
.LBB4_420:                              #   in Loop: Header=BB4_136 Depth=1
	blt	t3, a2, .LBB4_422
# %bb.421:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x25
	bne	x25, x12, .LBB4_429
	j	.LBB4_436
.LBB4_422:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	fa0, fa5
	beqz	a5, .LBB4_424
# %bb.423:                              #   in Loop: Header=BB4_136 Depth=1
	addi	t3, a5, 1
	fcvt.s.wu	fa0, t3
	fmv.x.w	t3, fa0
	regsw_c	x4, 0x40(x19)		# 100110010000001000000
	srliw	x9, t3, 23
	addi	x9, x9, -128
	fcvt.s.wu	fa0, x9
	and	t3, t3, a1
	or	t3, t3, x11
	fmv.w.x	ft0, t3
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_424:                              #   in Loop: Header=BB4_136 Depth=1
	fcvt.s.wu	ft0, a5
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_427
# %bb.425:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_427
.LBB4_426:                              #   in Loop: Header=BB4_136 Depth=1
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x25, x25, a2
	mv	a2, x25
	bne	x25, x12, .LBB4_429
	j	.LBB4_436
.LBB4_427:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x23, x7, .LBB4_431
# %bb.428:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x24, .LBB4_431
.LBB4_429:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a5, a4, 2
	add	a5, s11, a5
	lw	a5, 0(a5)
	addw	a5, a5, a2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x18, a5, .LBB4_436
# %bb.430:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x404(x8)		# 010000000010000000100
	slli	a2, x19, 2
	add	a2, s11, a2
	sw	a5, 0(a2)
	slli	a2, x19, 3
	add	a2, s10, a2
	sd	a4, 0(a2)
	mv	x22, a4
	j	.LBB4_437
.LBB4_431:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x23, x7, .LBB4_433
# %bb.432:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x20, x24, .LBB4_426
.LBB4_433:                              #   in Loop: Header=BB4_136 Depth=1
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_435
# %bb.434:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	ft0, fa0
.LBB4_435:                              #   in Loop: Header=BB4_136 Depth=1
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x25, x25, a2
	mv	a2, x25
	bne	x25, x12, .LBB4_429
.LBB4_436:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x2, 0x40a(x8)		# 010000001010000001010
	slli	a2, x19, 2
	add	a2, s11, a2
	sw	x18, 0(a2)
	slli	a2, x19, 3
	add	a2, s10, a2
	sd	x22, 0(a2)
	mv	a5, x18
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bltz	x22, .LBB4_439
.LBB4_437:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x28, 0x200(x26)		# 110101110001000000000
	slli	x22, x22, 2
	add	x22, s1, x22
	lw	x18, 0(x22)
	blt	a5, x18, .LBB4_439
# %bb.438:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x18, a5
.LBB4_439:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x2, 0x0(x8)		# 010000001000000000000
	slli	a2, x19, 2
	add	a2, s1, a2
	sw	x18, 0(a2)
	bltz	a4, .LBB4_442
# %bb.440:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x21)
	slli	t3, a4, 4
	add	t3, s0, t3
	ld	t3, 0(t3)
	sub	a2, a2, t3
	bltu	s9, a2, .LBB4_443
# %bb.441:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 2
	add	a2, s11, a2
	lw	a2, 0(a2)
	bge	a2, a5, .LBB4_443
.LBB4_442:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a4, x19
.LBB4_443:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x11, 0x440(x19)		# 100110101110001000000
	addi	x18, a3, 3
	slli	x20, x18, 4
	add	x20, s0, x20
	ld	x22, 8(x20)
	bge	t0, x18, .LBB4_450
# %bb.444:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	sub	a5, x13, x17
	blt	s6, a5, .LBB4_446
# %bb.445:                              #   in Loop: Header=BB4_136 Depth=1
	mv	a5, s6
.LBB4_446:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x10, 0x400(x8)		# 010000101010000000000
	ld	a2, 0(x20)
	ld	t3, 104(sp)                     # 8-byte Folded Reload
	add	x17, t3, x17
	add	a5, x17, a5
	slli	a5, a5, 4
	add	a5, s0, a5
	j	.LBB4_448
.LBB4_447:                              #   in Loop: Header=BB4_448 Depth=2
	addi	t0, t0, 1
	addi	a5, a5, 16
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beq	x10, t0, .LBB4_493
.LBB4_448:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a5)
	regsw_c	x4, 0x0(x19)		# 100110010000000000000
	xor	x7, t3, a2
	srli	x7, x7, 32
	bnez	x7, .LBB4_447
# %bb.449:                              #   in Loop: Header=BB4_448 Depth=2
	add	t3, t3, s9
	bltu	t3, a2, .LBB4_447
.LBB4_450:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sub	a2, x18, t0
	bge	s6, a2, .LBB4_452
.LBB4_451:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sub	t0, x18, s6
.LBB4_452:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x2, 0x0(x10)		# 010100001000000000000
	slli	a2, x22, 24
	srli	x17, a2, 56
	bge	t0, x18, .LBB4_492
# %bb.453:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x9, 0x1b6(x17)		# 100010100100110110110
	li	x23, 0
	slli	a2, x22, 8
	srli	x24, a2, 56
	li	x21, -1
	mv	x25, x6
	mv	x26, x5
	mv	x27, x4
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x28, x3
	j	.LBB4_455
.LBB4_454:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x13, 0x588(x27)		# 110110110110110001000
	addi	x19, x29, -1
	addi	x28, x28, -8
	addi	x27, x27, -4
	addi	x26, x26, -4
	addi	x25, x25, -16
	bge	t0, x29, .LBB4_495
.LBB4_455:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x28, 0x200(x27)		# 110111110001000000000
	ld	x31, 0(x25)
	subw	x30, x22, x31
	mv	x29, x19
	blez	x30, .LBB4_454
# %bb.456:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x30, .LBB4_454
# %bb.457:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x5, 0x118(x9)		# 010010010100100011000
	ld	a2, 0(x20)
	ld	a5, -8(x25)
	slli	t3, x31, 8
	srli	x7, t3, 56
	subw	x19, a2, a5
	bne	x24, x7, .LBB4_468
# %bb.458:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x30, .LBB4_454
# %bb.459:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x19, .LBB4_454
# %bb.460:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	subw	a2, x30, x19
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	blt	s4, a5, .LBB4_454
# %bb.461:                              #   in Loop: Header=BB4_455 Depth=2
	bnez	s5, .LBB4_465
# %bb.462:                              #   in Loop: Header=BB4_455 Depth=2
	li	a2, 2
	blt	s2, a2, .LBB4_465
# %bb.463:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x24, x7, .LBB4_465
# %bb.464:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x19, .LBB4_454
.LBB4_465:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x30
	blt	x30, x19, .LBB4_469
.LBB4_466:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x1, 0x40(x9)		# 010010000100001000000
	mv	a2, x19
	slli	t3, x31, 24
	srli	t3, t3, 56
	mv	x31, t3
	bge	t3, x19, .LBB4_470
.LBB4_467:                              #   in Loop: Header=BB4_455 Depth=2
	beqz	a5, .LBB4_471
	j	.LBB4_473
.LBB4_468:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x98(x12)		# 011000000000010011000
	subw	a2, x30, x19
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	mv	a2, x30
	bge	x30, x19, .LBB4_466
.LBB4_469:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x8, 0x0(x8)		# 010000100000000000000
	slli	t3, x31, 24
	srli	t3, t3, 56
	mv	x31, t3
	blt	t3, a2, .LBB4_467
.LBB4_470:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x31, a2
	bnez	a5, .LBB4_473
.LBB4_471:                              #   in Loop: Header=BB4_455 Depth=2
	blt	t3, a2, .LBB4_473
# %bb.472:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x31
	beq	x31, x12, .LBB4_454
	j	.LBB4_480
.LBB4_473:                              #   in Loop: Header=BB4_455 Depth=2
	fmv.s	fa0, fa5
	beqz	a5, .LBB4_475
# %bb.474:                              #   in Loop: Header=BB4_455 Depth=2
	addi	t3, a5, 1
	fcvt.s.wu	fa0, t3
	fmv.x.w	t3, fa0
	regsw_c	x4, 0x40(x19)		# 100110010000001000000
	srliw	x9, t3, 23
	addi	x9, x9, -128
	fcvt.s.wu	fa0, x9
	and	t3, t3, a1
	or	t3, t3, x11
	fmv.w.x	ft0, t3
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_475:                              #   in Loop: Header=BB4_455 Depth=2
	fcvt.s.wu	ft0, a5
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_478
# %bb.476:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x24, x7, .LBB4_478
.LBB4_477:                              #   in Loop: Header=BB4_455 Depth=2
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x31, x31, a2
	mv	a2, x31
	beq	x31, x12, .LBB4_454
	j	.LBB4_480
.LBB4_478:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x24, x7, .LBB4_487
# %bb.479:                              #   in Loop: Header=BB4_455 Depth=2
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x19, .LBB4_487
.LBB4_480:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	lw	a5, 0(x26)
	addw	a2, a5, a2
	bge	x17, a2, .LBB4_482
# %bb.481:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x13, 0x0(x7)		# 001110110100000000000
	sgtz	a5, x23
	subw	x23, x23, a5
	mv	x21, x29
	mv	x17, a2
	j	.LBB4_485
.LBB4_482:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	lw	a2, 0(x27)
	sext.w	a5, x18
	bne	a2, a5, .LBB4_485
# %bb.483:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x23, s7, .LBB4_494
# %bb.484:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addiw	x23, x23, 1
.LBB4_485:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x28)
	bltz	a2, .LBB4_454
# %bb.486:                              #   in Loop: Header=BB4_455 Depth=2
	slli	a2, a2, 2
	add	a2, a0, a2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x18, 0(a2)
	j	.LBB4_454
.LBB4_487:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x24, x7, .LBB4_489
# %bb.488:                              #   in Loop: Header=BB4_455 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x30, x19, .LBB4_477
.LBB4_489:                              #   in Loop: Header=BB4_455 Depth=2
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_491
# %bb.490:                              #   in Loop: Header=BB4_455 Depth=2
	fmv.s	ft0, fa0
.LBB4_491:                              #   in Loop: Header=BB4_455 Depth=2
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x31, x31, a2
	mv	a2, x31
	beq	x31, x12, .LBB4_454
	j	.LBB4_480
.LBB4_492:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x20(x8)		# 010000000000000100000
	ld	a2, 0(x20)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	li	x21, -1
	bgeu	s9, a2, .LBB4_503
	j	.LBB4_133
.LBB4_493:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	t0, x18
	sub	a2, x18, x18
	blt	s6, a2, .LBB4_451
	j	.LBB4_452
.LBB4_494:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x19, x29
.LBB4_495:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x20)
	slli	a5, a4, 4
	add	a5, s0, a5
	ld	a5, 0(a5)
	sub	a2, a2, a5
	bgeu	s9, a2, .LBB4_503
# %bb.496:                              #   in Loop: Header=BB4_136 Depth=1
	li	a4, -1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	t0, x18, .LBB4_537
# %bb.497:                              # %.preheader15
                                        #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x5, 0x400(x16)		# 100000010110000000000
	li	x23, -1
	lui	a5, 524288
	mv	a2, x5
	mv	x7, x10
	j	.LBB4_499
.LBB4_498:                              #   in Loop: Header=BB4_499 Depth=2
	addi	a2, a2, -4
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	mv	x23, a4
	bge	t0, x7, .LBB4_503
.LBB4_499:                              #   Parent Loop BB4_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x200(x19)		# 100110010001000000000
	lw	x24, 0(a2)
	addi	x7, x7, -1
	mv	a4, x7
	blt	a5, x24, .LBB4_501
# %bb.500:                              #   in Loop: Header=BB4_499 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a4, x23
	blt	x24, a5, .LBB4_498
	j	.LBB4_502
.LBB4_501:                              #   in Loop: Header=BB4_499 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x24, a5, .LBB4_498
.LBB4_502:                              #   in Loop: Header=BB4_499 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a5, x24
	j	.LBB4_498
.LBB4_503:                              #   in Loop: Header=BB4_136 Depth=1
	bltz	a4, .LBB4_537
# %bb.504:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a4, x19, .LBB4_537
# %bb.505:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 4
	add	a2, s0, a2
	regsw_c	x18, 0x0(x19)		# 100111001000000000000
	ld	x24, 8(a2)
	subw	x19, x22, x24
	blez	x19, .LBB4_537
# %bb.506:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s9, x19, .LBB4_537
# %bb.507:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x4a4(x25)		# 110010000110010100100
	slli	x22, x22, 8
	ld	a5, 0(x20)
	ld	a2, 0(a2)
	srli	x22, x22, 56
	slli	t3, x24, 8
	srli	x7, t3, 56
	subw	x23, a5, a2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x7, .LBB4_518
# %bb.508:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x19, .LBB4_537
# %bb.509:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x23, .LBB4_537
# %bb.510:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	subw	a2, x19, x23
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	blt	s4, a5, .LBB4_537
# %bb.511:                              #   in Loop: Header=BB4_136 Depth=1
	bnez	s5, .LBB4_515
# %bb.512:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 2
	blt	s2, a2, .LBB4_515
# %bb.513:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x7, .LBB4_515
# %bb.514:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	s8, x23, .LBB4_537
.LBB4_515:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x19
	blt	x19, x23, .LBB4_519
.LBB4_516:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x1, 0x40(x9)		# 010010000100001000000
	mv	a2, x23
	slli	t3, x24, 24
	srli	t3, t3, 56
	mv	x24, t3
	bge	t3, x23, .LBB4_520
.LBB4_517:                              #   in Loop: Header=BB4_136 Depth=1
	beqz	a5, .LBB4_521
	j	.LBB4_523
.LBB4_518:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x98(x12)		# 011000000000010011000
	subw	a2, x19, x23
	sraiw	a5, a2, 31
	xor	a2, a2, a5
	subw	a5, a2, a5
	mv	a2, x19
	bge	x19, x23, .LBB4_516
.LBB4_519:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x8, 0x0(x8)		# 010000100000000000000
	slli	t3, x24, 24
	srli	t3, t3, 56
	mv	x24, t3
	blt	t3, a2, .LBB4_517
.LBB4_520:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x24, a2
	bnez	a5, .LBB4_523
.LBB4_521:                              #   in Loop: Header=BB4_136 Depth=1
	blt	t3, a2, .LBB4_523
# %bb.522:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mv	a2, x24
	bne	x24, x12, .LBB4_530
	j	.LBB4_537
.LBB4_523:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	fa0, fa5
	beqz	a5, .LBB4_525
# %bb.524:                              #   in Loop: Header=BB4_136 Depth=1
	addi	t3, a5, 1
	fcvt.s.wu	fa0, t3
	fmv.x.w	t3, fa0
	regsw_c	x4, 0x40(x19)		# 100110010000001000000
	srliw	x9, t3, 23
	addi	x9, x9, -128
	fcvt.s.wu	fa0, x9
	and	t3, t3, a1
	or	t3, t3, x11
	fmv.w.x	ft0, t3
	fmadd.s	ft1, ft0, fa2, fa3
	fmadd.s	ft0, ft1, ft0, fa1
	fadd.s	fa0, ft0, fa0
.LBB4_525:                              #   in Loop: Header=BB4_136 Depth=1
	fcvt.s.wu	ft0, a5
	fcvt.s.w	ft1, a2
	fmul.s	ft1, ft1, fs0
	fmadd.s	ft0, fs1, ft0, ft1
	bnez	s5, .LBB4_528
# %bb.526:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x7, .LBB4_528
.LBB4_527:                              #   in Loop: Header=BB4_136 Depth=1
	fmadd.s	fa0, fa0, fa4, ft0
	fcvt.w.s	a2, fa0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x24, x24, a2
	mv	a2, x24
	bne	x24, x12, .LBB4_530
	j	.LBB4_537
.LBB4_528:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x22, x7, .LBB4_532
# %bb.529:                              #   in Loop: Header=BB4_136 Depth=1
	li	a2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x23, .LBB4_532
.LBB4_530:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a5, a4, 2
	add	a5, s11, a5
	lw	a5, 0(a5)
	addw	a5, a5, a2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x17, a5, .LBB4_537
# %bb.531:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x404(x8)		# 010000000010000000100
	slli	a2, x18, 2
	add	a2, s11, a2
	sw	a5, 0(a2)
	slli	a2, x18, 3
	add	a2, s10, a2
	sd	a4, 0(a2)
	mv	x21, a4
	j	.LBB4_538
.LBB4_532:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x22, x7, .LBB4_534
# %bb.533:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x19, x23, .LBB4_527
.LBB4_534:                              #   in Loop: Header=BB4_136 Depth=1
	flt.s	a2, ft0, fa0
	bnez	a2, .LBB4_536
# %bb.535:                              #   in Loop: Header=BB4_136 Depth=1
	fmv.s	ft0, fa0
.LBB4_536:                              #   in Loop: Header=BB4_136 Depth=1
	fcvt.w.s	a2, ft0, rtz
	regsw_c	x6, 0x0(x25)		# 110010011000000000000
	subw	x24, x24, a2
	mv	a2, x24
	bne	x24, x12, .LBB4_530
.LBB4_537:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x2, 0x40a(x8)		# 010000001010000001010
	slli	a2, x18, 2
	add	a2, s11, a2
	sw	x17, 0(a2)
	slli	a2, x18, 3
	add	a2, s10, a2
	sd	x21, 0(a2)
	mv	a5, x17
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bltz	x21, .LBB4_540
.LBB4_538:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x28, 0x200(x26)		# 110101110001000000000
	slli	x21, x21, 2
	add	x21, s1, x21
	lw	x17, 0(x21)
	blt	a5, x17, .LBB4_540
# %bb.539:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x17, a5
.LBB4_540:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x2, 0x0(x8)		# 010000001000000000000
	slli	a2, x18, 2
	add	a2, s1, a2
	sw	x17, 0(a2)
	bgez	a4, .LBB4_541
	j	.LBB4_134
.LBB4_541:                              #   in Loop: Header=BB4_136 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a2, 0(x20)
	slli	t3, a4, 4
	add	t3, s0, t3
	ld	t3, 0(t3)
	sub	a2, a2, t3
	bgeu	s9, a2, .LBB4_542
	j	.LBB4_135
.LBB4_542:                              #   in Loop: Header=BB4_136 Depth=1
	slli	a2, a4, 2
	add	a2, s11, a2
	lw	a2, 0(a2)
	bge	a2, a5, .LBB4_559
	j	.LBB4_134
.LBB4_559:                              #   in Loop: Header=BB4_136 Depth=1
	j	.LBB4_135
.LBB4_543:
	slli	a0, s5, 3
	call	malloc
	mv	s4, a0
	li	s1, 0
	j	.LBB4_549
.LBB4_544:
	li	a2, 8
	li	a3, 56
	mv	a0, s1
	call	rs_sort_128x
.LBB4_545:
	slli	a0, s5, 3
.LBB4_546:
	call	malloc
	mv	s4, a0
	li	s6, 0
	addi	s1, s1, 8
	slli	s7, s5, 3
	add	s7, a0, s7
	mv	s8, a0
.LBB4_547:                              # =>This Inner Loop Header: Depth=1
	ld	a1, 0(s1)
	sext.w	a0, a1
	slli	a0, a0, 3
	add	a0, s2, a0
	ld	a2, 0(a0)
	sd	a2, 0(s8)
	slli	a0, s6, 4
	add	a0, s0, a0
	srli	a1, a1, 28
	andi	a1, a1, -16
	add	a1, s3, a1
	sext.w	s9, a2
	slli	a2, s9, 4
	call	memcpy
	add	s6, s9, s6
	addi	s8, s8, 8
	addi	s1, s1, 16
	bne	s8, s7, .LBB4_547
# %bb.548:
	slli	s1, s6, 4
.LBB4_549:
	slliw	a2, s5, 3
	mv	a0, s2
	mv	a1, s4
	call	memcpy
	mv	a0, s3
	mv	a1, s0
	mv	a2, s1
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	ld	s9, 152(sp)                     # 8-byte Folded Reload
	ld	s10, 144(sp)                    # 8-byte Folded Reload
	ld	s11, 136(sp)                    # 8-byte Folded Reload
	fld	fs0, 128(sp)                    # 8-byte Folded Reload
	fld	fs1, 120(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 240
	tail	memcpy
.LBB4_550:
	addi	a3, s1, 16
	mv	a4, s1
	j	.LBB4_554
.LBB4_551:                              #   in Loop: Header=BB4_554 Depth=1
	mv	a4, a5
.LBB4_552:                              #   in Loop: Header=BB4_554 Depth=1
	sd	a2, 0(a4)
	sd	a3, 8(a4)
.LBB4_553:                              #   in Loop: Header=BB4_554 Depth=1
	addi	a3, a0, 16
	mv	a4, a0
	bgeu	a3, a1, .LBB4_545
.LBB4_554:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_557 Depth 2
	ld	a2, 16(a4)
	ld	a5, 0(a4)
	mv	a0, a3
	bgeu	a2, a5, .LBB4_553
# %bb.555:                              #   in Loop: Header=BB4_554 Depth=1
	ld	a3, 24(a4)
	mv	a4, a0
	bgeu	s1, a0, .LBB4_552
# %bb.556:                              # %.preheader
                                        #   in Loop: Header=BB4_554 Depth=1
	mv	a5, a0
.LBB4_557:                              #   Parent Loop BB4_554 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a4, -16(a5)
	bgeu	a2, a4, .LBB4_551
# %bb.558:                              #   in Loop: Header=BB4_557 Depth=2
	addi	a4, a5, -16
	ld	a6, 8(a4)
	ld	a7, 0(a4)
	sd	a6, 8(a5)
	sd	a7, 0(a5)
	mv	a5, a4
	bltu	s1, a4, .LBB4_557
	j	.LBB4_552
.Lfunc_end4:
	.size	mg_lchain_dp, .Lfunc_end4-mg_lchain_dp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	load_input_data_from_file       # -- Begin function load_input_data_from_file
	.p2align	2
	.type	load_input_data_from_file,@function
load_input_data_from_file:              # @load_input_data_from_file
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
	ld	t0, 176(sp)
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	ld	s1, 168(sp)
	ld	t0, 160(sp)
	sd	t0, 8(sp)                       # 8-byte Folded Spill
	ld	t0, 152(sp)
	sd	t0, 0(sp)                       # 8-byte Folded Spill
	ld	s5, 144(sp)
	ld	s6, 136(sp)
	ld	s7, 128(sp)
	mv	s8, a7
	mv	s9, a6
	mv	s10, a5
	mv	s11, a4
	mv	s3, a3
	mv	s4, a2
	mv	s0, a1
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fopen
	beqz	a0, .LBB5_2
# %bb.1:
	mv	s2, a0
	li	a1, 4
	li	a2, 1
	mv	a0, s4
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s3
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s11
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s10
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s9
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s8
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s7
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s6
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	mv	a0, s5
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	mv	a3, s2
	call	fread
	li	a1, 4
	li	a2, 1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	mv	a3, s2
	call	fread
	li	a1, 8
	li	a2, 1
	mv	a0, s1
	mv	a3, s2
	call	fread
	sd	s0, 0(s1)
	slli	a0, s0, 4
	call	malloc
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a0, 0(a1)
	li	a1, 16
	mv	a2, s0
	mv	a3, s2
	call	fread
	mv	a0, s2
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
	tail	fclose
.LBB5_2:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
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
	tail	perror
.Lfunc_end5:
	.size	load_input_data_from_file, .Lfunc_end5-load_input_data_from_file
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	load_output_data_from_file      # -- Begin function load_output_data_from_file
	.p2align	2
	.type	load_output_data_from_file,@function
load_output_data_from_file:             # @load_output_data_from_file
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s2, a1
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fopen
	beqz	a0, .LBB6_4
# %bb.1:
	mv	s0, a0
	li	a1, 4
	li	a2, 1
	mv	a0, s2
	mv	a3, s0
	call	fread
	lw	s2, 0(s2)
	slli	a0, s2, 3
	call	malloc
	sd	a0, 0(s1)
	beqz	a0, .LBB6_5
# %bb.2:
	li	a1, 8
	mv	a2, s2
	mv	a3, s0
	call	fread
.LBB6_3:
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	fclose
.LBB6_4:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	perror
.LBB6_5:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	perror
	j	.LBB6_3
.Lfunc_end6:
	.size	load_output_data_from_file, .Lfunc_end6-load_output_data_from_file
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	print_mm128_array               # -- Begin function print_mm128_array
	.p2align	2
	.type	print_mm128_array,@function
print_mm128_array:                      # @print_mm128_array
# %bb.0:
	blez	a1, .LBB7_4
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	li	s1, 0
	addi	s3, a0, 8
	lui	s2, %hi(.L.str.6)
	addi	s2, s2, %lo(.L.str.6)
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld	a2, -8(s3)
	ld	a3, 0(s3)
	mv	a0, s2
	mv	a1, s1
	call	printf
	addiw	s1, s1, 1
	addi	s3, s3, 16
	bne	s1, s0, .LBB7_2
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB7_4:
	ret
.Lfunc_end7:
	.size	print_mm128_array, .Lfunc_end7-print_mm128_array
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_hits                  # -- Begin function get_regsw_hits
	.p2align	2
	.type	get_regsw_hits,@function
get_regsw_hits:                         # @get_regsw_hits
# %bb.0:
	#APP
	csrr	a0, 2059
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end8:
	.size	get_regsw_hits, .Lfunc_end8-get_regsw_hits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_misses                # -- Begin function get_regsw_misses
	.p2align	2
	.type	get_regsw_misses,@function
get_regsw_misses:                       # @get_regsw_misses
# %bb.0:
	#APP
	csrr	a0, 2060
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end9:
	.size	get_regsw_misses, .Lfunc_end9-get_regsw_misses
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_regsw_cache               # -- Begin function clear_regsw_cache
	.p2align	2
	.type	clear_regsw_cache,@function
clear_regsw_cache:                      # @clear_regsw_cache
# %bb.0:
	#APP
	csrr	a0, 2061
	#NO_APP
	ret
.Lfunc_end10:
	.size	clear_regsw_cache, .Lfunc_end10-clear_regsw_cache
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_cycles                      # -- Begin function get_cycles
	.p2align	2
	.type	get_cycles,@function
get_cycles:                             # @get_cycles
# %bb.0:
	#APP
	csrr	a0, 2068
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end11:
	.size	get_cycles, .Lfunc_end11-get_cycles
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	enable_regsw                    # -- Begin function enable_regsw
	.p2align	2
	.type	enable_regsw,@function
enable_regsw:                           # @enable_regsw
# %bb.0:
	#APP
	csrw	2051, a0
	#NO_APP
	ret
.Lfunc_end12:
	.size	enable_regsw, .Lfunc_end12-enable_regsw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_li                          # -- Begin function get_li
	.p2align	2
	.type	get_li,@function
get_li:                                 # @get_li
# %bb.0:
	#APP
	csrr	a0, 2063
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end13:
	.size	get_li, .Lfunc_end13-get_li
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_ld                          # -- Begin function get_ld
	.p2align	2
	.type	get_ld,@function
get_ld:                                 # @get_ld
# %bb.0:
	#APP
	csrr	a0, 2065
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end14:
	.size	get_ld, .Lfunc_end14-get_ld
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_lw                          # -- Begin function get_lw
	.p2align	2
	.type	get_lw,@function
get_lw:                                 # @get_lw
# %bb.0:
	#APP
	csrr	a0, 2064
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end15:
	.size	get_lw, .Lfunc_end15-get_lw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sd                          # -- Begin function get_sd
	.p2align	2
	.type	get_sd,@function
get_sd:                                 # @get_sd
# %bb.0:
	#APP
	csrr	a0, 2067
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end16:
	.size	get_sd, .Lfunc_end16-get_sd
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sw                          # -- Begin function get_sw
	.p2align	2
	.type	get_sw,@function
get_sw:                                 # @get_sw
# %bb.0:
	#APP
	csrr	a0, 2066
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end17:
	.size	get_sw, .Lfunc_end17-get_sw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI18_0:
	.word	0x3df5c28f                      # float 0.119999997
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	#APP
	csrr	a0, 2061
	#NO_APP
	#APP
	csrr	s2, 2068
	#NO_APP
	addi	a0, sp, 56
	sd	a0, 32(sp)
	addi	a0, sp, 68
	sd	a0, 24(sp)
	lui	a0, %hi(sta)
	addi	a0, a0, %lo(sta)
	sd	a0, 16(sp)
	li	a0, 1000
	sd	a0, 8(sp)
	li	a1, 1
	lui	a0, 1
	addiw	a0, a0, 904
	lui	a2, %hi(.LCPI18_0)
	flw	fa0, %lo(.LCPI18_0)(a2)
	fmv.w.x	fa1, zero
	li	a2, 500
	li	a3, 25
	li	a5, 3
	li	a6, 40
	sd	a1, 0(sp)
	mv	a1, a0
	mv	a4, a0
	li	a7, 0
	call	mg_lchain_dp
	mv	s0, a0
	#APP
	csrr	s5, 2068
	#NO_APP
	#APP
	csrr	s3, 2059
	#NO_APP
	#APP
	csrr	s4, 2060
	#NO_APP
	ld	a2, 0(a0)
	ld	a3, 8(a0)
	lui	s1, %hi(.L.str.6)
	addi	s1, s1, %lo(.L.str.6)
	mv	a0, s1
	li	a1, 0
	call	printf
	ld	a2, 16(s0)
	ld	a3, 24(s0)
	li	a1, 1
	mv	a0, s1
	call	printf
	ld	a2, 32(s0)
	ld	a3, 40(s0)
	li	a1, 2
	mv	a0, s1
	call	printf
	ld	a2, 48(s0)
	ld	a3, 56(s0)
	li	a1, 3
	mv	a0, s1
	call	printf
	ld	a2, 64(s0)
	ld	a3, 72(s0)
	li	a1, 4
	mv	a0, s1
	call	printf
	ld	a2, 80(s0)
	ld	a3, 88(s0)
	li	a1, 5
	mv	a0, s1
	call	printf
	ld	a2, 96(s0)
	ld	a3, 104(s0)
	li	a1, 6
	mv	a0, s1
	call	printf
	ld	a2, 112(s0)
	ld	a3, 120(s0)
	li	a1, 7
	mv	a0, s1
	call	printf
	ld	a2, 128(s0)
	ld	a3, 136(s0)
	li	a1, 8
	mv	a0, s1
	call	printf
	ld	a2, 144(s0)
	ld	a3, 152(s0)
	li	a1, 9
	mv	a0, s1
	call	printf
	ld	a2, 160(s0)
	ld	a3, 168(s0)
	li	a1, 10
	mv	a0, s1
	call	printf
	ld	a2, 176(s0)
	ld	a3, 184(s0)
	li	a1, 11
	mv	a0, s1
	call	printf
	ld	a2, 192(s0)
	ld	a3, 200(s0)
	li	a1, 12
	mv	a0, s1
	call	printf
	ld	a2, 208(s0)
	ld	a3, 216(s0)
	li	a1, 13
	mv	a0, s1
	call	printf
	ld	a2, 224(s0)
	ld	a3, 232(s0)
	li	a1, 14
	mv	a0, s1
	call	printf
	ld	a2, 240(s0)
	ld	a3, 248(s0)
	li	a1, 15
	mv	a0, s1
	call	printf
	ld	a2, 256(s0)
	ld	a3, 264(s0)
	li	a1, 16
	mv	a0, s1
	call	printf
	ld	a2, 272(s0)
	ld	a3, 280(s0)
	li	a1, 17
	mv	a0, s1
	call	printf
	ld	a2, 288(s0)
	ld	a3, 296(s0)
	li	a1, 18
	mv	a0, s1
	call	printf
	ld	a2, 304(s0)
	ld	a3, 312(s0)
	li	a1, 19
	mv	a0, s1
	call	printf
	sext.w	s5, s5
	sext.w	s2, s2
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	sub	a1, s5, s2
	sext.w	a2, s3
	sext.w	a3, s4
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	call	printf
	#APP
	csrr	a1, 2064
	#NO_APP
	sext.w	a1, a1
	#APP
	csrr	a3, 2063
	#NO_APP
	sext.w	a3, a3
	#APP
	csrr	a2, 2065
	#NO_APP
	sext.w	a2, a2
	#APP
	csrr	a4, 2066
	#NO_APP
	sext.w	a4, a4
	#APP
	csrr	a5, 2067
	#NO_APP
	sext.w	a5, a5
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	printf
	li	a0, 0
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"n_bits <= RS_MAX_BITS"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"lchain.c"
	.size	.L.str.1, 9

	.type	.L__PRETTY_FUNCTION__.rs_sort_128x,@object # @__PRETTY_FUNCTION__.rs_sort_128x
.L__PRETTY_FUNCTION__.rs_sort_128x:
	.asciz	"void rs_sort_128x(mm128_t *, mm128_t *, int, int)"
	.size	.L__PRETTY_FUNCTION__.rs_sort_128x, 50

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"n_v < INT32_MAX"
	.size	.L.str.2, 16

	.type	.L__PRETTY_FUNCTION__.mg_chain_backtrack,@object # @__PRETTY_FUNCTION__.mg_chain_backtrack
.L__PRETTY_FUNCTION__.mg_chain_backtrack:
	.asciz	"uint64_t *mg_chain_backtrack(void *, int64_t, const int32_t *, const int64_t *, int32_t *, int32_t *, int32_t, int32_t, int32_t, int32_t *, int32_t *)"
	.size	.L__PRETTY_FUNCTION__.mg_chain_backtrack, 151

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Failed to open file"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Failed to allocate memory"
	.size	.L.str.5, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%d: x = %llu, y = %llu\n"
	.size	.L.str.6, 24

	.type	sta,@object                     # @sta
	.data
	.globl	sta
	.p2align	3, 0x0
sta:
	.quad	23                              # 0x17
	.quad	4462471020567                   # 0x40f00000017
	.quad	23                              # 0x17
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	31                              # 0x1f
	.quad	4462471020567                   # 0x40f00000017
	.quad	31                              # 0x1f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	39                              # 0x27
	.quad	4462471020567                   # 0x40f00000017
	.quad	39                              # 0x27
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	47                              # 0x2f
	.quad	4462471020567                   # 0x40f00000017
	.quad	47                              # 0x2f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	55                              # 0x37
	.quad	4462471020567                   # 0x40f00000017
	.quad	55                              # 0x37
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	63                              # 0x3f
	.quad	4462471020567                   # 0x40f00000017
	.quad	63                              # 0x3f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	71                              # 0x47
	.quad	4462471020567                   # 0x40f00000017
	.quad	71                              # 0x47
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	79                              # 0x4f
	.quad	4462471020567                   # 0x40f00000017
	.quad	79                              # 0x4f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	87                              # 0x57
	.quad	4462471020567                   # 0x40f00000017
	.quad	87                              # 0x57
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	95                              # 0x5f
	.quad	4462471020567                   # 0x40f00000017
	.quad	95                              # 0x5f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	103                             # 0x67
	.quad	4462471020567                   # 0x40f00000017
	.quad	103                             # 0x67
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	111                             # 0x6f
	.quad	4462471020567                   # 0x40f00000017
	.quad	111                             # 0x6f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	119                             # 0x77
	.quad	4462471020567                   # 0x40f00000017
	.quad	119                             # 0x77
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	127                             # 0x7f
	.quad	4462471020567                   # 0x40f00000017
	.quad	127                             # 0x7f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	135                             # 0x87
	.quad	4462471020567                   # 0x40f00000017
	.quad	135                             # 0x87
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	143                             # 0x8f
	.quad	4462471020567                   # 0x40f00000017
	.quad	143                             # 0x8f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	151                             # 0x97
	.quad	4462471020567                   # 0x40f00000017
	.quad	151                             # 0x97
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	159                             # 0x9f
	.quad	4462471020567                   # 0x40f00000017
	.quad	159                             # 0x9f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	167                             # 0xa7
	.quad	4462471020567                   # 0x40f00000017
	.quad	167                             # 0xa7
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	175                             # 0xaf
	.quad	4462471020567                   # 0x40f00000017
	.quad	175                             # 0xaf
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	183                             # 0xb7
	.quad	4462471020567                   # 0x40f00000017
	.quad	183                             # 0xb7
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	191                             # 0xbf
	.quad	4462471020567                   # 0x40f00000017
	.quad	191                             # 0xbf
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	199                             # 0xc7
	.quad	4462471020567                   # 0x40f00000017
	.quad	199                             # 0xc7
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	207                             # 0xcf
	.quad	4462471020567                   # 0x40f00000017
	.quad	207                             # 0xcf
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	215                             # 0xd7
	.quad	4462471020567                   # 0x40f00000017
	.quad	215                             # 0xd7
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	223                             # 0xdf
	.quad	4462471020567                   # 0x40f00000017
	.quad	223                             # 0xdf
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	231                             # 0xe7
	.quad	4462471020567                   # 0x40f00000017
	.quad	231                             # 0xe7
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	239                             # 0xef
	.quad	4462471020567                   # 0x40f00000017
	.quad	239                             # 0xef
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	247                             # 0xf7
	.quad	4462471020567                   # 0x40f00000017
	.quad	247                             # 0xf7
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	255                             # 0xff
	.quad	4462471020567                   # 0x40f00000017
	.quad	255                             # 0xff
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	263                             # 0x107
	.quad	4462471020567                   # 0x40f00000017
	.quad	263                             # 0x107
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	271                             # 0x10f
	.quad	4462471020567                   # 0x40f00000017
	.quad	271                             # 0x10f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	279                             # 0x117
	.quad	4462471020567                   # 0x40f00000017
	.quad	279                             # 0x117
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	287                             # 0x11f
	.quad	4462471020567                   # 0x40f00000017
	.quad	287                             # 0x11f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	295                             # 0x127
	.quad	4462471020567                   # 0x40f00000017
	.quad	295                             # 0x127
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	303                             # 0x12f
	.quad	4462471020567                   # 0x40f00000017
	.quad	303                             # 0x12f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	311                             # 0x137
	.quad	4462471020567                   # 0x40f00000017
	.quad	311                             # 0x137
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	319                             # 0x13f
	.quad	4462471020567                   # 0x40f00000017
	.quad	319                             # 0x13f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	327                             # 0x147
	.quad	4462471020567                   # 0x40f00000017
	.quad	327                             # 0x147
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	335                             # 0x14f
	.quad	4462471020567                   # 0x40f00000017
	.quad	335                             # 0x14f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	343                             # 0x157
	.quad	4462471020567                   # 0x40f00000017
	.quad	343                             # 0x157
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	351                             # 0x15f
	.quad	4462471020567                   # 0x40f00000017
	.quad	351                             # 0x15f
	.quad	4462471817999                   # 0x40f000c2b0f
	.quad	355                             # 0x163
	.quad	64424509795                     # 0xf00000163
	.quad	358                             # 0x166
	.quad	64424509798                     # 0xf00000166
	.quad	367                             # 0x16f
	.quad	64424509807                     # 0xf0000016f
	.quad	375                             # 0x177
	.quad	64424509815                     # 0xf00000177
	.quad	380                             # 0x17c
	.quad	64424509820                     # 0xf0000017c
	.quad	381                             # 0x17d
	.quad	64424509821                     # 0xf0000017d
	.quad	386                             # 0x182
	.quad	64424509826                     # 0xf00000182
	.quad	393                             # 0x189
	.quad	64424509833                     # 0xf00000189
	.quad	398                             # 0x18e
	.quad	64424509838                     # 0xf0000018e
	.quad	407                             # 0x197
	.quad	64424509847                     # 0xf00000197
	.quad	417                             # 0x1a1
	.quad	64424509857                     # 0xf000001a1
	.quad	422                             # 0x1a6
	.quad	64424509862                     # 0xf000001a6
	.quad	424                             # 0x1a8
	.quad	64424509864                     # 0xf000001a8
	.quad	430                             # 0x1ae
	.quad	64424509870                     # 0xf000001ae
	.quad	439                             # 0x1b7
	.quad	64424509879                     # 0xf000001b7
	.quad	443                             # 0x1bb
	.quad	64424509883                     # 0xf000001bb
	.quad	447                             # 0x1bf
	.quad	64424509887                     # 0xf000001bf
	.quad	454                             # 0x1c6
	.quad	64424509894                     # 0xf000001c6
	.quad	464                             # 0x1d0
	.quad	64424509904                     # 0xf000001d0
	.quad	465                             # 0x1d1
	.quad	64424509905                     # 0xf000001d1
	.quad	475                             # 0x1db
	.quad	64424509915                     # 0xf000001db
	.quad	476                             # 0x1dc
	.quad	64424509916                     # 0xf000001dc
	.quad	479                             # 0x1df
	.quad	64424509919                     # 0xf000001df
	.quad	488                             # 0x1e8
	.quad	64424509928                     # 0xf000001e8
	.quad	489                             # 0x1e9
	.quad	64424509929                     # 0xf000001e9
	.quad	496                             # 0x1f0
	.quad	64424509936                     # 0xf000001f0
	.quad	498                             # 0x1f2
	.quad	64424509938                     # 0xf000001f2
	.quad	501                             # 0x1f5
	.quad	64424509941                     # 0xf000001f5
	.quad	503                             # 0x1f7
	.quad	64424509943                     # 0xf000001f7
	.quad	513                             # 0x201
	.quad	64424509953                     # 0xf00000201
	.quad	514                             # 0x202
	.quad	64424509954                     # 0xf00000202
	.quad	517                             # 0x205
	.quad	64424509957                     # 0xf00000205
	.quad	519                             # 0x207
	.quad	64424509959                     # 0xf00000207
	.quad	522                             # 0x20a
	.quad	64424509962                     # 0xf0000020a
	.quad	530                             # 0x212
	.quad	64424509970                     # 0xf00000212
	.quad	538                             # 0x21a
	.quad	64424509978                     # 0xf0000021a
	.quad	539                             # 0x21b
	.quad	64424509979                     # 0xf0000021b
	.quad	548                             # 0x224
	.quad	64424509988                     # 0xf00000224
	.quad	557                             # 0x22d
	.quad	64424509997                     # 0xf0000022d
	.quad	562                             # 0x232
	.quad	64424510002                     # 0xf00000232
	.quad	571                             # 0x23b
	.quad	64424510011                     # 0xf0000023b
	.quad	574                             # 0x23e
	.quad	64424510014                     # 0xf0000023e
	.quad	583                             # 0x247
	.quad	64424510023                     # 0xf00000247
	.quad	593                             # 0x251
	.quad	64424510033                     # 0xf00000251
	.quad	594                             # 0x252
	.quad	64424510034                     # 0xf00000252
	.quad	599                             # 0x257
	.quad	64424510039                     # 0xf00000257
	.quad	606                             # 0x25e
	.quad	64424510046                     # 0xf0000025e
	.quad	611                             # 0x263
	.quad	64424510051                     # 0xf00000263
	.quad	617                             # 0x269
	.quad	64424510057                     # 0xf00000269
	.quad	625                             # 0x271
	.quad	64424510065                     # 0xf00000271
	.quad	627                             # 0x273
	.quad	64424510067                     # 0xf00000273
	.quad	632                             # 0x278
	.quad	64424510072                     # 0xf00000278
	.quad	641                             # 0x281
	.quad	64424510081                     # 0xf00000281
	.quad	642                             # 0x282
	.quad	64424510082                     # 0xf00000282
	.quad	648                             # 0x288
	.quad	64424510088                     # 0xf00000288
	.quad	653                             # 0x28d
	.quad	64424510093                     # 0xf0000028d
	.quad	659                             # 0x293
	.quad	64424510099                     # 0xf00000293
	.quad	668                             # 0x29c
	.quad	64424510108                     # 0xf0000029c
	.quad	672                             # 0x2a0
	.quad	64424510112                     # 0xf000002a0
	.quad	678                             # 0x2a6
	.quad	64424510118                     # 0xf000002a6
	.quad	687                             # 0x2af
	.quad	64424510127                     # 0xf000002af
	.quad	694                             # 0x2b6
	.quad	64424510134                     # 0xf000002b6
	.quad	699                             # 0x2bb
	.quad	64424510139                     # 0xf000002bb
	.quad	705                             # 0x2c1
	.quad	64424510145                     # 0xf000002c1
	.quad	713                             # 0x2c9
	.quad	64424510153                     # 0xf000002c9
	.quad	714                             # 0x2ca
	.quad	64424510154                     # 0xf000002ca
	.quad	718                             # 0x2ce
	.quad	64424510158                     # 0xf000002ce
	.quad	719                             # 0x2cf
	.quad	64424510159                     # 0xf000002cf
	.quad	729                             # 0x2d9
	.quad	64424510169                     # 0xf000002d9
	.quad	738                             # 0x2e2
	.quad	64424510178                     # 0xf000002e2
	.quad	745                             # 0x2e9
	.quad	64424510185                     # 0xf000002e9
	.quad	749                             # 0x2ed
	.quad	64424510189                     # 0xf000002ed
	.quad	757                             # 0x2f5
	.quad	64424510197                     # 0xf000002f5
	.quad	764                             # 0x2fc
	.quad	64424510204                     # 0xf000002fc
	.quad	772                             # 0x304
	.quad	64424510212                     # 0xf00000304
	.quad	780                             # 0x30c
	.quad	64424510220                     # 0xf0000030c
	.quad	784                             # 0x310
	.quad	64424510224                     # 0xf00000310
	.quad	792                             # 0x318
	.quad	64424510232                     # 0xf00000318
	.quad	794                             # 0x31a
	.quad	64424510234                     # 0xf0000031a
	.quad	803                             # 0x323
	.quad	64424510243                     # 0xf00000323
	.quad	807                             # 0x327
	.quad	64424510247                     # 0xf00000327
	.quad	816                             # 0x330
	.quad	64424510256                     # 0xf00000330
	.quad	817                             # 0x331
	.quad	64424510257                     # 0xf00000331
	.quad	823                             # 0x337
	.quad	64424510263                     # 0xf00000337
	.quad	825                             # 0x339
	.quad	64424510265                     # 0xf00000339
	.quad	826                             # 0x33a
	.quad	64424510266                     # 0xf0000033a
	.quad	836                             # 0x344
	.quad	64424510276                     # 0xf00000344
	.quad	842                             # 0x34a
	.quad	64424510282                     # 0xf0000034a
	.quad	843                             # 0x34b
	.quad	64424510283                     # 0xf0000034b
	.quad	850                             # 0x352
	.quad	64424676096                     # 0xf00028b00
	.quad	850                             # 0x352
	.quad	64424510290                     # 0xf00000352
	.quad	854                             # 0x356
	.quad	64424510294                     # 0xf00000356
	.quad	856                             # 0x358
	.quad	64424510296                     # 0xf00000358
	.quad	866                             # 0x362
	.quad	64424510306                     # 0xf00000362
	.quad	869                             # 0x365
	.quad	64424510309                     # 0xf00000365
	.quad	870                             # 0x366
	.quad	64424510310                     # 0xf00000366
	.quad	871                             # 0x367
	.quad	64424510311                     # 0xf00000367
	.quad	875                             # 0x36b
	.quad	64424510315                     # 0xf0000036b
	.quad	884                             # 0x374
	.quad	64424510324                     # 0xf00000374
	.quad	890                             # 0x37a
	.quad	64424510330                     # 0xf0000037a
	.quad	898                             # 0x382
	.quad	64424510338                     # 0xf00000382
	.quad	902                             # 0x386
	.quad	64424510342                     # 0xf00000386
	.quad	911                             # 0x38f
	.quad	64424510351                     # 0xf0000038f
	.quad	920                             # 0x398
	.quad	64424510360                     # 0xf00000398
	.quad	923                             # 0x39b
	.quad	64424510363                     # 0xf0000039b
	.quad	924                             # 0x39c
	.quad	64424510364                     # 0xf0000039c
	.quad	930                             # 0x3a2
	.quad	64424510370                     # 0xf000003a2
	.quad	934                             # 0x3a6
	.quad	64424510374                     # 0xf000003a6
	.quad	941                             # 0x3ad
	.quad	64424510381                     # 0xf000003ad
	.quad	943                             # 0x3af
	.quad	64424510383                     # 0xf000003af
	.quad	947                             # 0x3b3
	.quad	64424510387                     # 0xf000003b3
	.quad	950                             # 0x3b6
	.quad	64424510390                     # 0xf000003b6
	.quad	953                             # 0x3b9
	.quad	64424510393                     # 0xf000003b9
	.quad	960                             # 0x3c0
	.quad	64424510400                     # 0xf000003c0
	.quad	964                             # 0x3c4
	.quad	64424510404                     # 0xf000003c4
	.quad	965                             # 0x3c5
	.quad	64424510405                     # 0xf000003c5
	.quad	967                             # 0x3c7
	.quad	64424510407                     # 0xf000003c7
	.quad	970                             # 0x3ca
	.quad	64424510410                     # 0xf000003ca
	.quad	980                             # 0x3d4
	.quad	64424510420                     # 0xf000003d4
	.quad	988                             # 0x3dc
	.quad	64424510428                     # 0xf000003dc
	.quad	997                             # 0x3e5
	.quad	64424510437                     # 0xf000003e5
	.quad	999                             # 0x3e7
	.quad	64424510439                     # 0xf000003e7
	.quad	1008                            # 0x3f0
	.quad	64424510448                     # 0xf000003f0
	.quad	1009                            # 0x3f1
	.quad	64424510449                     # 0xf000003f1
	.quad	1010                            # 0x3f2
	.quad	64424510450                     # 0xf000003f2
	.quad	1014                            # 0x3f6
	.quad	64424510454                     # 0xf000003f6
	.quad	1022                            # 0x3fe
	.quad	64424510462                     # 0xf000003fe
	.quad	1031                            # 0x407
	.quad	64424510471                     # 0xf00000407
	.quad	1039                            # 0x40f
	.quad	64424510479                     # 0xf0000040f
	.quad	1043                            # 0x413
	.quad	64424510483                     # 0xf00000413
	.quad	1052                            # 0x41c
	.quad	64424510492                     # 0xf0000041c
	.quad	1059                            # 0x423
	.quad	64424510499                     # 0xf00000423
	.quad	1067                            # 0x42b
	.quad	64424510507                     # 0xf0000042b
	.quad	1075                            # 0x433
	.quad	64424510515                     # 0xf00000433
	.quad	1083                            # 0x43b
	.quad	64424510523                     # 0xf0000043b
	.quad	1086                            # 0x43e
	.quad	64424510526                     # 0xf0000043e
	.quad	1087                            # 0x43f
	.quad	64424510527                     # 0xf0000043f
	.quad	1096                            # 0x448
	.quad	64424510536                     # 0xf00000448
	.quad	1100                            # 0x44c
	.quad	64424510540                     # 0xf0000044c
	.quad	1120                            # 0x460
	.quad	64424823785                     # 0xf0004cbe9
	.quad	1120                            # 0x460
	.quad	64424510560                     # 0xf00000460
	.quad	1120                            # 0x460
	.quad	64424823708                     # 0xf0004cb9c
	.quad	1121                            # 0x461
	.quad	64425049752                     # 0xf00083e98
	.quad	1121                            # 0x461
	.quad	64424823733                     # 0xf0004cbb5
	.quad	1121                            # 0x461
	.quad	64424823757                     # 0xf0004cbcd
	.quad	1121                            # 0x461
	.quad	64425362540                     # 0xf000d046c
	.quad	1121                            # 0x461
	.quad	64424649401                     # 0xf000222b9
	.quad	1121                            # 0x461
	.quad	64424510561                     # 0xf00000461
	.quad	1121                            # 0x461
	.quad	64424823709                     # 0xf0004cb9d
	.quad	1123                            # 0x463
	.quad	64424510563                     # 0xf00000463
	.quad	1123                            # 0x463
	.quad	64425049754                     # 0xf00083e9a
	.quad	1123                            # 0x463
	.quad	64424823735                     # 0xf0004cbb7
	.quad	1123                            # 0x463
	.quad	64425362542                     # 0xf000d046e
	.quad	1123                            # 0x463
	.quad	64425036829                     # 0xf00080c1d
	.quad	1123                            # 0x463
	.quad	64424823711                     # 0xf0004cb9f
	.quad	1126                            # 0x466
	.quad	64424823690                     # 0xf0004cb8a
	.quad	1126                            # 0x466
	.quad	64424510566                     # 0xf00000466
	.quad	1126                            # 0x466
	.quad	64424823714                     # 0xf0004cba2
	.quad	1136                            # 0x470
	.quad	64424510576                     # 0xf00000470
	.quad	1137                            # 0x471
	.quad	64425300598                     # 0xf000c1276
	.quad	1137                            # 0x471
	.quad	64424510577                     # 0xf00000471
	.quad	1138                            # 0x472
	.quad	64424510578                     # 0xf00000472
	.quad	1146                            # 0x47a
	.quad	64424510586                     # 0xf0000047a
	.quad	1154                            # 0x482
	.quad	64424510594                     # 0xf00000482
	.quad	1155                            # 0x483
	.quad	64424510595                     # 0xf00000483
	.quad	1165                            # 0x48d
	.quad	64424510605                     # 0xf0000048d
	.quad	1175                            # 0x497
	.quad	64424510615                     # 0xf00000497
	.quad	1182                            # 0x49e
	.quad	64424510622                     # 0xf0000049e
	.quad	1189                            # 0x4a5
	.quad	64424510629                     # 0xf000004a5
	.quad	1195                            # 0x4ab
	.quad	64424510635                     # 0xf000004ab
	.quad	1196                            # 0x4ac
	.quad	64424510636                     # 0xf000004ac
	.quad	1202                            # 0x4b2
	.quad	64424510642                     # 0xf000004b2
	.quad	1206                            # 0x4b6
	.quad	64424510646                     # 0xf000004b6
	.quad	1216                            # 0x4c0
	.quad	64424510656                     # 0xf000004c0
	.quad	1217                            # 0x4c1
	.quad	64424510657                     # 0xf000004c1
	.quad	1220                            # 0x4c4
	.quad	64424510660                     # 0xf000004c4
	.quad	1221                            # 0x4c5
	.quad	64424510661                     # 0xf000004c5
	.quad	1223                            # 0x4c7
	.quad	64424510663                     # 0xf000004c7
	.quad	1232                            # 0x4d0
	.quad	64424510672                     # 0xf000004d0
	.quad	1233                            # 0x4d1
	.quad	64424510673                     # 0xf000004d1
	.quad	1243                            # 0x4db
	.quad	64424510683                     # 0xf000004db
	.quad	1249                            # 0x4e1
	.quad	64424510689                     # 0xf000004e1
	.quad	1252                            # 0x4e4
	.quad	64424510692                     # 0xf000004e4
	.quad	1257                            # 0x4e9
	.quad	64424510697                     # 0xf000004e9
	.quad	1259                            # 0x4eb
	.quad	64424510699                     # 0xf000004eb
	.quad	1268                            # 0x4f4
	.quad	64424510708                     # 0xf000004f4
	.quad	1276                            # 0x4fc
	.quad	64424510716                     # 0xf000004fc
	.quad	1283                            # 0x503
	.quad	64424510723                     # 0xf00000503
	.quad	1288                            # 0x508
	.quad	64424510728                     # 0xf00000508
	.quad	1298                            # 0x512
	.quad	64424510738                     # 0xf00000512
	.quad	1302                            # 0x516
	.quad	64424510742                     # 0xf00000516
	.quad	1307                            # 0x51b
	.quad	64424510747                     # 0xf0000051b
	.quad	1311                            # 0x51f
	.quad	64424510751                     # 0xf0000051f
	.quad	1312                            # 0x520
	.quad	64424510752                     # 0xf00000520
	.quad	1314                            # 0x522
	.quad	64424510754                     # 0xf00000522
	.quad	1315                            # 0x523
	.quad	64424510755                     # 0xf00000523
	.quad	1318                            # 0x526
	.quad	64424510758                     # 0xf00000526
	.quad	1327                            # 0x52f
	.quad	64424510767                     # 0xf0000052f
	.quad	1331                            # 0x533
	.quad	64424510771                     # 0xf00000533
	.quad	1335                            # 0x537
	.quad	64424510775                     # 0xf00000537
	.quad	1339                            # 0x53b
	.quad	64424510779                     # 0xf0000053b
	.quad	1345                            # 0x541
	.quad	64424510785                     # 0xf00000541
	.quad	1354                            # 0x54a
	.quad	64424510794                     # 0xf0000054a
	.quad	1357                            # 0x54d
	.quad	64424510797                     # 0xf0000054d
	.quad	1364                            # 0x554
	.quad	64424510804                     # 0xf00000554
	.quad	1367                            # 0x557
	.quad	64424510807                     # 0xf00000557
	.quad	1375                            # 0x55f
	.quad	64424510815                     # 0xf0000055f
	.quad	1376                            # 0x560
	.quad	64424510816                     # 0xf00000560
	.quad	1384                            # 0x568
	.quad	64424510824                     # 0xf00000568
	.quad	1389                            # 0x56d
	.quad	64424510829                     # 0xf0000056d
	.quad	1390                            # 0x56e
	.quad	64424510830                     # 0xf0000056e
	.quad	1393                            # 0x571
	.quad	64424510833                     # 0xf00000571
	.quad	1400                            # 0x578
	.quad	64424510840                     # 0xf00000578
	.quad	1409                            # 0x581
	.quad	64424510849                     # 0xf00000581
	.quad	1416                            # 0x588
	.quad	64424510856                     # 0xf00000588
	.quad	1417                            # 0x589
	.quad	64424510857                     # 0xf00000589
	.quad	1418                            # 0x58a
	.quad	64424510858                     # 0xf0000058a
	.quad	1423                            # 0x58f
	.quad	64424510863                     # 0xf0000058f
	.quad	1429                            # 0x595
	.quad	64424510869                     # 0xf00000595
	.quad	1433                            # 0x599
	.quad	64424510873                     # 0xf00000599
	.quad	1438                            # 0x59e
	.quad	64424510878                     # 0xf0000059e
	.quad	1443                            # 0x5a3
	.quad	64424510883                     # 0xf000005a3
	.quad	1449                            # 0x5a9
	.quad	64424510889                     # 0xf000005a9
	.quad	1450                            # 0x5aa
	.quad	64424510890                     # 0xf000005aa
	.quad	1459                            # 0x5b3
	.quad	64424510899                     # 0xf000005b3
	.quad	1469                            # 0x5bd
	.quad	64424510909                     # 0xf000005bd
	.quad	1477                            # 0x5c5
	.quad	64424510917                     # 0xf000005c5
	.quad	1485                            # 0x5cd
	.quad	64424510925                     # 0xf000005cd
	.quad	1495                            # 0x5d7
	.quad	64424510935                     # 0xf000005d7
	.quad	1498                            # 0x5da
	.quad	64424510938                     # 0xf000005da
	.quad	1506                            # 0x5e2
	.quad	64424510946                     # 0xf000005e2
	.quad	1507                            # 0x5e3
	.quad	64424510947                     # 0xf000005e3
	.quad	1509                            # 0x5e5
	.quad	64424510949                     # 0xf000005e5
	.quad	1510                            # 0x5e6
	.quad	64424510950                     # 0xf000005e6
	.quad	1520                            # 0x5f0
	.quad	64424510960                     # 0xf000005f0
	.quad	1525                            # 0x5f5
	.quad	64424510965                     # 0xf000005f5
	.quad	1527                            # 0x5f7
	.quad	64424510967                     # 0xf000005f7
	.quad	1533                            # 0x5fd
	.quad	64424510973                     # 0xf000005fd
	.quad	1541                            # 0x605
	.quad	64424510981                     # 0xf00000605
	.quad	1545                            # 0x609
	.quad	64424510985                     # 0xf00000609
	.quad	1552                            # 0x610
	.quad	64424510992                     # 0xf00000610
	.quad	1556                            # 0x614
	.quad	64424510996                     # 0xf00000614
	.quad	1562                            # 0x61a
	.quad	64424511002                     # 0xf0000061a
	.quad	1572                            # 0x624
	.quad	64424511012                     # 0xf00000624
	.quad	1575                            # 0x627
	.quad	64424511015                     # 0xf00000627
	.quad	1581                            # 0x62d
	.quad	64425589490                     # 0xf00107af2
	.quad	1581                            # 0x62d
	.quad	64424511021                     # 0xf0000062d
	.quad	1586                            # 0x632
	.quad	64424511026                     # 0xf00000632
	.quad	1586                            # 0x632
	.quad	64425589495                     # 0xf00107af7
	.quad	1587                            # 0x633
	.quad	64424511027                     # 0xf00000633
	.quad	1587                            # 0x633
	.quad	64424944562                     # 0xf0006a3b2
	.quad	1589                            # 0x635
	.quad	64424511029                     # 0xf00000635
	.quad	1592                            # 0x638
	.quad	64424511032                     # 0xf00000638
	.quad	1600                            # 0x640
	.quad	64424763652                     # 0xf0003e104
	.quad	1600                            # 0x640
	.quad	64425023818                     # 0xf0007d94a
	.quad	1600                            # 0x640
	.quad	64424551955                     # 0xf0000a613
	.quad	1600                            # 0x640
	.quad	64424883417                     # 0xf0005b4d9
	.quad	1600                            # 0x640
	.quad	64424511040                     # 0xf00000640
	.quad	1600                            # 0x640
	.quad	64425008625                     # 0xf00079df1
	.quad	1600                            # 0x640
	.quad	64425508881                     # 0xf000f4011
	.quad	1600                            # 0x640
	.quad	64425472773                     # 0xf000eb305
	.quad	1600                            # 0x640
	.quad	64425759783                     # 0xf00131427
	.quad	1600                            # 0x640
	.quad	64424690281                     # 0xf0002c269
	.quad	1600                            # 0x640
	.quad	64425325826                     # 0xf000c7502
	.quad	1600                            # 0x640
	.quad	64425352309                     # 0xf000cdc75
	.quad	1600                            # 0x640
	.quad	64425106990                     # 0xf00091e2e
	.quad	1600                            # 0x640
	.quad	64425449417                     # 0xf000e57c9
	.quad	1600                            # 0x640
	.quad	64425447420                     # 0xf000e4ffc
	.quad	1600                            # 0x640
	.quad	64425126110                     # 0xf000968de
	.quad	1600                            # 0x640
	.quad	64424563693                     # 0xf0000d3ed
	.quad	1608                            # 0x648
	.quad	64425759791                     # 0xf0013142f
	.quad	1608                            # 0x648
	.quad	64424609996                     # 0xf000188cc
	.quad	1608                            # 0x648
	.quad	64425352317                     # 0xf000cdc7d
	.quad	1608                            # 0x648
	.quad	64425008633                     # 0xf00079df9
	.quad	1608                            # 0x648
	.quad	64424511048                     # 0xf00000648
	.quad	1608                            # 0x648
	.quad	64425232458                     # 0xf000b084a
	.quad	1608                            # 0x648
	.quad	64425490081                     # 0xf000ef6a1
	.quad	1608                            # 0x648
	.quad	64425508889                     # 0xf000f4019
	.quad	1608                            # 0x648
	.quad	64425325834                     # 0xf000c750a
	.quad	1608                            # 0x648
	.quad	64425472781                     # 0xf000eb30d
	.quad	1608                            # 0x648
	.quad	64425106998                     # 0xf00091e36
	.quad	1608                            # 0x648
	.quad	64424551963                     # 0xf0000a61b
	.quad	1608                            # 0x648
	.quad	64424690289                     # 0xf0002c271
	.quad	1612                            # 0x64c
	.quad	64424511052                     # 0xf0000064c
	.quad	1621                            # 0x655
	.quad	64424511061                     # 0xf00000655
	.quad	1623                            # 0x657
	.quad	64424883439                     # 0xf0005b4ef
	.quad	1623                            # 0x657
	.quad	64424563715                     # 0xf0000d403
	.quad	1623                            # 0x657
	.quad	64424511063                     # 0xf00000657
	.quad	1623                            # 0x657
	.quad	64424598657                     # 0xf00015c81
	.quad	1623                            # 0x657
	.quad	64425307665                     # 0xf000c2e11
	.quad	1623                            # 0x657
	.quad	64425494019                     # 0xf000f0603
	.quad	1623                            # 0x657
	.quad	64425352331                     # 0xf000cdc8b
	.quad	1623                            # 0x657
	.quad	64425589534                     # 0xf00107b1e
	.quad	1623                            # 0x657
	.quad	64425107012                     # 0xf00091e44
	.quad	1627                            # 0x65b
	.quad	64424511067                     # 0xf0000065b
	.quad	1633                            # 0x661
	.quad	64424511073                     # 0xf00000661
	.quad	1641                            # 0x669
	.quad	64424511081                     # 0xf00000669
	.quad	1644                            # 0x66c
	.quad	64425611227                     # 0xf0010cfdb
	.quad	1644                            # 0x66c
	.quad	64424511084                     # 0xf0000066c
	.quad	1653                            # 0x675
	.quad	64425704781                     # 0xf00123d4d
	.quad	1653                            # 0x675
	.quad	64424511093                     # 0xf00000675
	.quad	1653                            # 0x675
	.quad	64425447478                     # 0xf000e5036
	.quad	1657                            # 0x679
	.quad	64424511097                     # 0xf00000679
	.quad	1667                            # 0x683
	.quad	64424511107                     # 0xf00000683
	.quad	1668                            # 0x684
	.quad	64424511108                     # 0xf00000684
	.quad	1678                            # 0x68e
	.quad	64424511118                     # 0xf0000068e
	.quad	1679                            # 0x68f
	.quad	64424511119                     # 0xf0000068f
	.quad	1689                            # 0x699
	.quad	64424511129                     # 0xf00000699
	.quad	1696                            # 0x6a0
	.quad	64424511136                     # 0xf000006a0
	.quad	1701                            # 0x6a5
	.quad	64424511141                     # 0xf000006a5
	.quad	1703                            # 0x6a7
	.quad	64424511143                     # 0xf000006a7
	.quad	1707                            # 0x6ab
	.quad	64424511147                     # 0xf000006ab
	.quad	1716                            # 0x6b4
	.quad	64424511156                     # 0xf000006b4
	.quad	1717                            # 0x6b5
	.quad	64424511157                     # 0xf000006b5
	.quad	1726                            # 0x6be
	.quad	64424511166                     # 0xf000006be
	.quad	1730                            # 0x6c2
	.quad	64424511170                     # 0xf000006c2
	.quad	1739                            # 0x6cb
	.quad	64424511179                     # 0xf000006cb
	.quad	1740                            # 0x6cc
	.quad	64424511180                     # 0xf000006cc
	.quad	1746                            # 0x6d2
	.quad	64424511186                     # 0xf000006d2
	.quad	1751                            # 0x6d7
	.quad	64424511191                     # 0xf000006d7
	.quad	1761                            # 0x6e1
	.quad	64424511201                     # 0xf000006e1
	.quad	1768                            # 0x6e8
	.quad	64424511208                     # 0xf000006e8
	.quad	1770                            # 0x6ea
	.quad	64424511210                     # 0xf000006ea
	.quad	1780                            # 0x6f4
	.quad	64424511220                     # 0xf000006f4
	.quad	1781                            # 0x6f5
	.quad	64424511221                     # 0xf000006f5
	.quad	1788                            # 0x6fc
	.quad	64424511228                     # 0xf000006fc
	.quad	1796                            # 0x704
	.quad	64424511236                     # 0xf00000704
	.quad	1797                            # 0x705
	.quad	64424511237                     # 0xf00000705
	.quad	1807                            # 0x70f
	.quad	64424511247                     # 0xf0000070f
	.quad	1809                            # 0x711
	.quad	64424511249                     # 0xf00000711
	.quad	1816                            # 0x718
	.quad	64424511256                     # 0xf00000718
	.quad	1817                            # 0x719
	.quad	64424511257                     # 0xf00000719
	.quad	1823                            # 0x71f
	.quad	64424511263                     # 0xf0000071f
	.quad	1829                            # 0x725
	.quad	64424511269                     # 0xf00000725
	.quad	1832                            # 0x728
	.quad	64424511272                     # 0xf00000728
	.quad	1839                            # 0x72f
	.quad	64424511279                     # 0xf0000072f
	.quad	1843                            # 0x733
	.quad	64424511283                     # 0xf00000733
	.quad	1850                            # 0x73a
	.quad	64424511290                     # 0xf0000073a
	.quad	1857                            # 0x741
	.quad	64424511297                     # 0xf00000741
	.quad	1867                            # 0x74b
	.quad	64424511307                     # 0xf0000074b
	.quad	1868                            # 0x74c
	.quad	64424511308                     # 0xf0000074c
	.quad	1869                            # 0x74d
	.quad	64424511309                     # 0xf0000074d
	.quad	1877                            # 0x755
	.quad	64424511317                     # 0xf00000755
	.quad	1880                            # 0x758
	.quad	64424511320                     # 0xf00000758
	.quad	1883                            # 0x75b
	.quad	64424511323                     # 0xf0000075b
	.quad	1891                            # 0x763
	.quad	64424511331                     # 0xf00000763
	.quad	1893                            # 0x765
	.quad	64424511333                     # 0xf00000765
	.quad	1903                            # 0x76f
	.quad	64424511343                     # 0xf0000076f
	.quad	1907                            # 0x773
	.quad	64424511347                     # 0xf00000773
	.quad	1908                            # 0x774
	.quad	64424511348                     # 0xf00000774
	.quad	1910                            # 0x776
	.quad	64424511350                     # 0xf00000776
	.quad	1916                            # 0x77c
	.quad	64424511356                     # 0xf0000077c
	.quad	1921                            # 0x781
	.quad	64424511361                     # 0xf00000781
	.quad	1931                            # 0x78b
	.quad	64424511371                     # 0xf0000078b
	.quad	1938                            # 0x792
	.quad	64424511378                     # 0xf00000792
	.quad	1946                            # 0x79a
	.quad	64424511386                     # 0xf0000079a
	.quad	1950                            # 0x79e
	.quad	64424511390                     # 0xf0000079e
	.quad	1956                            # 0x7a4
	.quad	64424511396                     # 0xf000007a4
	.quad	1964                            # 0x7ac
	.quad	64424511404                     # 0xf000007ac
	.quad	1972                            # 0x7b4
	.quad	64424511412                     # 0xf000007b4
	.quad	1973                            # 0x7b5
	.quad	64424511413                     # 0xf000007b5
	.quad	1982                            # 0x7be
	.quad	64424511422                     # 0xf000007be
	.quad	1989                            # 0x7c5
	.quad	64424511429                     # 0xf000007c5
	.quad	1990                            # 0x7c6
	.quad	64424511430                     # 0xf000007c6
	.quad	1998                            # 0x7ce
	.quad	64424511438                     # 0xf000007ce
	.quad	2000                            # 0x7d0
	.quad	64424511440                     # 0xf000007d0
	.quad	2007                            # 0x7d7
	.quad	64424511447                     # 0xf000007d7
	.quad	2013                            # 0x7dd
	.quad	64424511453                     # 0xf000007dd
	.quad	2019                            # 0x7e3
	.quad	64424511459                     # 0xf000007e3
	.quad	2020                            # 0x7e4
	.quad	64424511460                     # 0xf000007e4
	.quad	2029                            # 0x7ed
	.quad	64424511469                     # 0xf000007ed
	.quad	2031                            # 0x7ef
	.quad	64424511471                     # 0xf000007ef
	.quad	2032                            # 0x7f0
	.quad	64424511472                     # 0xf000007f0
	.quad	2033                            # 0x7f1
	.quad	64424511473                     # 0xf000007f1
	.quad	2037                            # 0x7f5
	.quad	64424511477                     # 0xf000007f5
	.quad	2045                            # 0x7fd
	.quad	64424511485                     # 0xf000007fd
	.quad	2052                            # 0x804
	.quad	64424511492                     # 0xf00000804
	.quad	2059                            # 0x80b
	.quad	64424511499                     # 0xf0000080b
	.quad	2063                            # 0x80f
	.quad	64424511503                     # 0xf0000080f
	.quad	2069                            # 0x815
	.quad	64424511509                     # 0xf00000815
	.quad	2070                            # 0x816
	.quad	64424511510                     # 0xf00000816
	.quad	2080                            # 0x820
	.quad	64424511520                     # 0xf00000820
	.quad	2084                            # 0x824
	.quad	64424511524                     # 0xf00000824
	.quad	2089                            # 0x829
	.quad	64424511529                     # 0xf00000829
	.quad	2090                            # 0x82a
	.quad	64424511530                     # 0xf0000082a
	.quad	2092                            # 0x82c
	.quad	64424511532                     # 0xf0000082c
	.quad	2093                            # 0x82d
	.quad	64424511533                     # 0xf0000082d
	.quad	2102                            # 0x836
	.quad	64424511542                     # 0xf00000836
	.quad	2108                            # 0x83c
	.quad	64424511548                     # 0xf0000083c
	.quad	2116                            # 0x844
	.quad	64424511556                     # 0xf00000844
	.quad	2122                            # 0x84a
	.quad	64424511562                     # 0xf0000084a
	.quad	2131                            # 0x853
	.quad	64424511571                     # 0xf00000853
	.quad	2138                            # 0x85a
	.quad	64424511578                     # 0xf0000085a
	.quad	2140                            # 0x85c
	.quad	64424511580                     # 0xf0000085c
	.quad	2150                            # 0x866
	.quad	64424511590                     # 0xf00000866
	.quad	2159                            # 0x86f
	.quad	64424511599                     # 0xf0000086f
	.quad	2160                            # 0x870
	.quad	64424511600                     # 0xf00000870
	.quad	2170                            # 0x87a
	.quad	64424511610                     # 0xf0000087a
	.quad	2171                            # 0x87b
	.quad	64424511611                     # 0xf0000087b
	.quad	2178                            # 0x882
	.quad	64424511618                     # 0xf00000882
	.quad	2186                            # 0x88a
	.quad	64424511626                     # 0xf0000088a
	.quad	2194                            # 0x892
	.quad	64424511634                     # 0xf00000892
	.quad	2203                            # 0x89b
	.quad	64424511643                     # 0xf0000089b
	.quad	2206                            # 0x89e
	.quad	64424511646                     # 0xf0000089e
	.quad	2209                            # 0x8a1
	.quad	64424511649                     # 0xf000008a1
	.quad	2217                            # 0x8a9
	.quad	64424511657                     # 0xf000008a9
	.quad	2224                            # 0x8b0
	.quad	64424511664                     # 0xf000008b0
	.quad	2229                            # 0x8b5
	.quad	64424511669                     # 0xf000008b5
	.quad	2233                            # 0x8b9
	.quad	64424511673                     # 0xf000008b9
	.quad	2236                            # 0x8bc
	.quad	64424511676                     # 0xf000008bc
	.quad	2244                            # 0x8c4
	.quad	64424511684                     # 0xf000008c4
	.quad	2247                            # 0x8c7
	.quad	64424511687                     # 0xf000008c7
	.quad	2248                            # 0x8c8
	.quad	64424511688                     # 0xf000008c8
	.quad	2252                            # 0x8cc
	.quad	64424511692                     # 0xf000008cc
	.quad	2259                            # 0x8d3
	.quad	64424511699                     # 0xf000008d3
	.quad	2260                            # 0x8d4
	.quad	64424511700                     # 0xf000008d4
	.quad	2261                            # 0x8d5
	.quad	64424511701                     # 0xf000008d5
	.quad	2264                            # 0x8d8
	.quad	64424511704                     # 0xf000008d8
	.quad	2272                            # 0x8e0
	.quad	64424511712                     # 0xf000008e0
	.quad	2273                            # 0x8e1
	.quad	64424511713                     # 0xf000008e1
	.quad	2279                            # 0x8e7
	.quad	64424511719                     # 0xf000008e7
	.quad	2284                            # 0x8ec
	.quad	64424511724                     # 0xf000008ec
	.quad	2290                            # 0x8f2
	.quad	64424511730                     # 0xf000008f2
	.quad	2300                            # 0x8fc
	.quad	64424511740                     # 0xf000008fc
	.quad	2305                            # 0x901
	.quad	64424511745                     # 0xf00000901
	.quad	2313                            # 0x909
	.quad	64424511753                     # 0xf00000909
	.quad	2316                            # 0x90c
	.quad	64424511756                     # 0xf0000090c
	.quad	2322                            # 0x912
	.quad	64424511762                     # 0xf00000912
	.quad	2324                            # 0x914
	.quad	64424511764                     # 0xf00000914
	.quad	2334                            # 0x91e
	.quad	64424511774                     # 0xf0000091e
	.quad	2339                            # 0x923
	.quad	64424511779                     # 0xf00000923
	.quad	2346                            # 0x92a
	.quad	64424511786                     # 0xf0000092a
	.quad	2350                            # 0x92e
	.quad	64424511790                     # 0xf0000092e
	.quad	2351                            # 0x92f
	.quad	64424511791                     # 0xf0000092f
	.quad	2359                            # 0x937
	.quad	64424511799                     # 0xf00000937
	.quad	2361                            # 0x939
	.quad	64424511801                     # 0xf00000939
	.quad	2363                            # 0x93b
	.quad	64424511803                     # 0xf0000093b
	.quad	2365                            # 0x93d
	.quad	64424511805                     # 0xf0000093d
	.quad	2374                            # 0x946
	.quad	64424511814                     # 0xf00000946
	.quad	2381                            # 0x94d
	.quad	64424511821                     # 0xf0000094d
	.quad	2385                            # 0x951
	.quad	64424511825                     # 0xf00000951
	.quad	2391                            # 0x957
	.quad	64425729659                     # 0xf00129e7b
	.quad	2391                            # 0x957
	.quad	64424511831                     # 0xf00000957
	.quad	2392                            # 0x958
	.quad	64424511832                     # 0xf00000958
	.quad	2402                            # 0x962
	.quad	64424511842                     # 0xf00000962
	.quad	2404                            # 0x964
	.quad	64424511844                     # 0xf00000964
	.quad	2414                            # 0x96e
	.quad	64424511854                     # 0xf0000096e
	.quad	2418                            # 0x972
	.quad	64424511858                     # 0xf00000972
	.quad	2426                            # 0x97a
	.quad	64424511866                     # 0xf0000097a
	.quad	2433                            # 0x981
	.quad	64424511873                     # 0xf00000981
	.quad	2434                            # 0x982
	.quad	64424511874                     # 0xf00000982
	.quad	2438                            # 0x986
	.quad	64424511878                     # 0xf00000986
	.quad	2448                            # 0x990
	.quad	64424511888                     # 0xf00000990
	.quad	2451                            # 0x993
	.quad	64424511891                     # 0xf00000993
	.quad	2452                            # 0x994
	.quad	64424511892                     # 0xf00000994
	.quad	2454                            # 0x996
	.quad	64424511894                     # 0xf00000996
	.quad	2455                            # 0x997
	.quad	64424511895                     # 0xf00000997
	.quad	2460                            # 0x99c
	.quad	64424511900                     # 0xf0000099c
	.quad	2467                            # 0x9a3
	.quad	64424511907                     # 0xf000009a3
	.quad	2471                            # 0x9a7
	.quad	64424511911                     # 0xf000009a7
	.quad	2472                            # 0x9a8
	.quad	64424511912                     # 0xf000009a8
	.quad	2475                            # 0x9ab
	.quad	64424511915                     # 0xf000009ab
	.quad	2479                            # 0x9af
	.quad	64424511919                     # 0xf000009af
	.quad	2486                            # 0x9b6
	.quad	64424511926                     # 0xf000009b6
	.quad	2492                            # 0x9bc
	.quad	64424511932                     # 0xf000009bc
	.quad	2499                            # 0x9c3
	.quad	64424511939                     # 0xf000009c3
	.quad	2505                            # 0x9c9
	.quad	64424511945                     # 0xf000009c9
	.quad	2511                            # 0x9cf
	.quad	64424511951                     # 0xf000009cf
	.quad	2515                            # 0x9d3
	.quad	64424511955                     # 0xf000009d3
	.quad	2523                            # 0x9db
	.quad	64424511963                     # 0xf000009db
	.quad	2531                            # 0x9e3
	.quad	64424511971                     # 0xf000009e3
	.quad	2536                            # 0x9e8
	.quad	64424511976                     # 0xf000009e8
	.quad	2540                            # 0x9ec
	.quad	64424511980                     # 0xf000009ec
	.quad	2549                            # 0x9f5
	.quad	64424511989                     # 0xf000009f5
	.quad	2550                            # 0x9f6
	.quad	64424511990                     # 0xf000009f6
	.quad	2555                            # 0x9fb
	.quad	64424511995                     # 0xf000009fb
	.quad	2558                            # 0x9fe
	.quad	64424511998                     # 0xf000009fe
	.quad	2567                            # 0xa07
	.quad	64424512007                     # 0xf00000a07
	.quad	2570                            # 0xa0a
	.quad	64424512010                     # 0xf00000a0a
	.quad	2580                            # 0xa14
	.quad	64424512020                     # 0xf00000a14
	.quad	2583                            # 0xa17
	.quad	64424512023                     # 0xf00000a17
	.quad	2584                            # 0xa18
	.quad	64424512024                     # 0xf00000a18
	.quad	2585                            # 0xa19
	.quad	64424512025                     # 0xf00000a19
	.quad	2593                            # 0xa21
	.quad	64424512033                     # 0xf00000a21
	.quad	2598                            # 0xa26
	.quad	64424512038                     # 0xf00000a26
	.quad	2604                            # 0xa2c
	.quad	64424512044                     # 0xf00000a2c
	.quad	2613                            # 0xa35
	.quad	64424512053                     # 0xf00000a35
	.quad	2618                            # 0xa3a
	.quad	64424512058                     # 0xf00000a3a
	.quad	2619                            # 0xa3b
	.quad	64424512059                     # 0xf00000a3b
	.quad	2623                            # 0xa3f
	.quad	64424512063                     # 0xf00000a3f
	.quad	2630                            # 0xa46
	.quad	64424512070                     # 0xf00000a46
	.quad	2633                            # 0xa49
	.quad	64424512073                     # 0xf00000a49
	.quad	2642                            # 0xa52
	.quad	64424512082                     # 0xf00000a52
	.quad	2647                            # 0xa57
	.quad	64424512087                     # 0xf00000a57
	.quad	2652                            # 0xa5c
	.quad	64424512092                     # 0xf00000a5c
	.quad	2656                            # 0xa60
	.quad	64424512096                     # 0xf00000a60
	.quad	2663                            # 0xa67
	.quad	64424512103                     # 0xf00000a67
	.quad	2664                            # 0xa68
	.quad	64424512104                     # 0xf00000a68
	.quad	2665                            # 0xa69
	.quad	64424512105                     # 0xf00000a69
	.quad	2669                            # 0xa6d
	.quad	64424512109                     # 0xf00000a6d
	.quad	2672                            # 0xa70
	.quad	64424512112                     # 0xf00000a70
	.quad	2673                            # 0xa71
	.quad	64424512113                     # 0xf00000a71
	.quad	2677                            # 0xa75
	.quad	64424512117                     # 0xf00000a75
	.quad	2686                            # 0xa7e
	.quad	64424512126                     # 0xf00000a7e
	.quad	2687                            # 0xa7f
	.quad	64424512127                     # 0xf00000a7f
	.quad	2697                            # 0xa89
	.quad	64424512137                     # 0xf00000a89
	.quad	2701                            # 0xa8d
	.quad	64424512141                     # 0xf00000a8d
	.quad	2708                            # 0xa94
	.quad	64424512148                     # 0xf00000a94
	.quad	2712                            # 0xa98
	.quad	64424512152                     # 0xf00000a98
	.quad	2715                            # 0xa9b
	.quad	64424512155                     # 0xf00000a9b
	.quad	2723                            # 0xaa3
	.quad	64424512163                     # 0xf00000aa3
	.quad	2725                            # 0xaa5
	.quad	64424512165                     # 0xf00000aa5
	.quad	2727                            # 0xaa7
	.quad	64424512167                     # 0xf00000aa7
	.quad	2732                            # 0xaac
	.quad	64424512172                     # 0xf00000aac
	.quad	2735                            # 0xaaf
	.quad	64424512175                     # 0xf00000aaf
	.quad	2743                            # 0xab7
	.quad	64424512183                     # 0xf00000ab7
	.quad	2746                            # 0xaba
	.quad	64424512186                     # 0xf00000aba
	.quad	2751                            # 0xabf
	.quad	64424512191                     # 0xf00000abf
	.quad	2760                            # 0xac8
	.quad	64424512200                     # 0xf00000ac8
	.quad	2761                            # 0xac9
	.quad	64424512201                     # 0xf00000ac9
	.quad	2771                            # 0xad3
	.quad	64424512211                     # 0xf00000ad3
	.quad	2777                            # 0xad9
	.quad	64424512217                     # 0xf00000ad9
	.quad	2782                            # 0xade
	.quad	64424512222                     # 0xf00000ade
	.quad	2788                            # 0xae4
	.quad	64424512228                     # 0xf00000ae4
	.quad	2791                            # 0xae7
	.quad	64424512231                     # 0xf00000ae7
	.quad	2796                            # 0xaec
	.quad	64424512236                     # 0xf00000aec
	.quad	2804                            # 0xaf4
	.quad	64424512244                     # 0xf00000af4
	.quad	2807                            # 0xaf7
	.quad	64424512247                     # 0xf00000af7
	.quad	2815                            # 0xaff
	.quad	64424512255                     # 0xf00000aff
	.quad	2825                            # 0xb09
	.quad	64424512265                     # 0xf00000b09
	.quad	2833                            # 0xb11
	.quad	64424512273                     # 0xf00000b11
	.quad	2843                            # 0xb1b
	.quad	64424512283                     # 0xf00000b1b
	.quad	2847                            # 0xb1f
	.quad	64424512287                     # 0xf00000b1f
	.quad	2854                            # 0xb26
	.quad	64424512294                     # 0xf00000b26
	.quad	2860                            # 0xb2c
	.quad	64424512300                     # 0xf00000b2c
	.quad	2868                            # 0xb34
	.quad	64424512308                     # 0xf00000b34
	.quad	2870                            # 0xb36
	.quad	64424512310                     # 0xf00000b36
	.quad	2874                            # 0xb3a
	.quad	64424512314                     # 0xf00000b3a
	.quad	2883                            # 0xb43
	.quad	64424512323                     # 0xf00000b43
	.quad	2890                            # 0xb4a
	.quad	64424512330                     # 0xf00000b4a
	.quad	2894                            # 0xb4e
	.quad	64424512334                     # 0xf00000b4e
	.quad	2902                            # 0xb56
	.quad	64424512342                     # 0xf00000b56
	.quad	2905                            # 0xb59
	.quad	64424512345                     # 0xf00000b59
	.quad	2912                            # 0xb60
	.quad	64424512352                     # 0xf00000b60
	.quad	2919                            # 0xb67
	.quad	64424512359                     # 0xf00000b67
	.quad	2923                            # 0xb6b
	.quad	64424512363                     # 0xf00000b6b
	.quad	2926                            # 0xb6e
	.quad	64424512366                     # 0xf00000b6e
	.quad	2929                            # 0xb71
	.quad	64424512369                     # 0xf00000b71
	.quad	2930                            # 0xb72
	.quad	64424512370                     # 0xf00000b72
	.quad	2936                            # 0xb78
	.quad	64424512376                     # 0xf00000b78
	.quad	2941                            # 0xb7d
	.quad	64424512381                     # 0xf00000b7d
	.quad	2947                            # 0xb83
	.quad	64424512387                     # 0xf00000b83
	.quad	2951                            # 0xb87
	.quad	64424512391                     # 0xf00000b87
	.quad	2952                            # 0xb88
	.quad	64424512392                     # 0xf00000b88
	.quad	2957                            # 0xb8d
	.quad	64424512397                     # 0xf00000b8d
	.quad	2966                            # 0xb96
	.quad	64424512406                     # 0xf00000b96
	.quad	2973                            # 0xb9d
	.quad	64424512413                     # 0xf00000b9d
	.quad	2977                            # 0xba1
	.quad	64424512417                     # 0xf00000ba1
	.quad	2978                            # 0xba2
	.quad	64424512418                     # 0xf00000ba2
	.quad	2980                            # 0xba4
	.quad	64424512420                     # 0xf00000ba4
	.quad	2986                            # 0xbaa
	.quad	64424512426                     # 0xf00000baa
	.quad	2993                            # 0xbb1
	.quad	64424512433                     # 0xf00000bb1
	.quad	3000                            # 0xbb8
	.quad	64424512440                     # 0xf00000bb8
	.quad	3008                            # 0xbc0
	.quad	64424512448                     # 0xf00000bc0
	.quad	3011                            # 0xbc3
	.quad	64424512451                     # 0xf00000bc3
	.quad	3021                            # 0xbcd
	.quad	64424512461                     # 0xf00000bcd
	.quad	3030                            # 0xbd6
	.quad	64424512470                     # 0xf00000bd6
	.quad	3034                            # 0xbda
	.quad	64424512474                     # 0xf00000bda
	.quad	3042                            # 0xbe2
	.quad	64424512482                     # 0xf00000be2
	.quad	3045                            # 0xbe5
	.quad	64424512485                     # 0xf00000be5
	.quad	3053                            # 0xbed
	.quad	64424512493                     # 0xf00000bed
	.quad	3059                            # 0xbf3
	.quad	64424512499                     # 0xf00000bf3
	.quad	3060                            # 0xbf4
	.quad	64424512500                     # 0xf00000bf4
	.quad	3065                            # 0xbf9
	.quad	64424512505                     # 0xf00000bf9
	.quad	3073                            # 0xc01
	.quad	64424512513                     # 0xf00000c01
	.quad	3082                            # 0xc0a
	.quad	64424512522                     # 0xf00000c0a
	.quad	3090                            # 0xc12
	.quad	64424512530                     # 0xf00000c12
	.quad	3098                            # 0xc1a
	.quad	64424512538                     # 0xf00000c1a
	.quad	3106                            # 0xc22
	.quad	64424512546                     # 0xf00000c22
	.quad	3115                            # 0xc2b
	.quad	64424512555                     # 0xf00000c2b
	.quad	3119                            # 0xc2f
	.quad	64424512559                     # 0xf00000c2f
	.quad	3128                            # 0xc38
	.quad	64424512568                     # 0xf00000c38
	.quad	3129                            # 0xc39
	.quad	64424512569                     # 0xf00000c39
	.quad	3132                            # 0xc3c
	.quad	64424512572                     # 0xf00000c3c
	.quad	3136                            # 0xc40
	.quad	64424512576                     # 0xf00000c40
	.quad	3144                            # 0xc48
	.quad	64424512584                     # 0xf00000c48
	.quad	3146                            # 0xc4a
	.quad	64424512586                     # 0xf00000c4a
	.quad	3153                            # 0xc51
	.quad	64424512593                     # 0xf00000c51
	.quad	3163                            # 0xc5b
	.quad	64424512603                     # 0xf00000c5b
	.quad	3164                            # 0xc5c
	.quad	64424512604                     # 0xf00000c5c
	.quad	3165                            # 0xc5d
	.quad	64424512605                     # 0xf00000c5d
	.quad	3169                            # 0xc61
	.quad	64424512609                     # 0xf00000c61
	.quad	3176                            # 0xc68
	.quad	64424512616                     # 0xf00000c68
	.quad	3178                            # 0xc6a
	.quad	64424512618                     # 0xf00000c6a
	.quad	3179                            # 0xc6b
	.quad	64424512619                     # 0xf00000c6b
	.quad	3189                            # 0xc75
	.quad	64424512629                     # 0xf00000c75
	.quad	3199                            # 0xc7f
	.quad	64424512639                     # 0xf00000c7f
	.quad	3200                            # 0xc80
	.quad	64424512640                     # 0xf00000c80
	.quad	3201                            # 0xc81
	.quad	64424512641                     # 0xf00000c81
	.quad	3207                            # 0xc87
	.quad	64424512647                     # 0xf00000c87
	.quad	3210                            # 0xc8a
	.quad	64424512650                     # 0xf00000c8a
	.quad	3218                            # 0xc92
	.quad	64424512658                     # 0xf00000c92
	.quad	3224                            # 0xc98
	.quad	64424512664                     # 0xf00000c98
	.quad	3225                            # 0xc99
	.quad	64424512665                     # 0xf00000c99
	.quad	3234                            # 0xca2
	.quad	64424512674                     # 0xf00000ca2
	.quad	3241                            # 0xca9
	.quad	64424512681                     # 0xf00000ca9
	.quad	3244                            # 0xcac
	.quad	64424512684                     # 0xf00000cac
	.quad	3246                            # 0xcae
	.quad	64424512686                     # 0xf00000cae
	.quad	3249                            # 0xcb1
	.quad	64424512689                     # 0xf00000cb1
	.quad	3253                            # 0xcb5
	.quad	64424512693                     # 0xf00000cb5
	.quad	3260                            # 0xcbc
	.quad	64424512700                     # 0xf00000cbc
	.quad	3262                            # 0xcbe
	.quad	64424512702                     # 0xf00000cbe
	.quad	3265                            # 0xcc1
	.quad	64424512705                     # 0xf00000cc1
	.quad	3274                            # 0xcca
	.quad	64424512714                     # 0xf00000cca
	.quad	3278                            # 0xcce
	.quad	64424512718                     # 0xf00000cce
	.quad	3279                            # 0xccf
	.quad	64424512719                     # 0xf00000ccf
	.quad	3280                            # 0xcd0
	.quad	64424512720                     # 0xf00000cd0
	.quad	3288                            # 0xcd8
	.quad	64424512728                     # 0xf00000cd8
	.quad	3296                            # 0xce0
	.quad	64424512736                     # 0xf00000ce0
	.quad	3299                            # 0xce3
	.quad	64424512739                     # 0xf00000ce3
	.quad	3307                            # 0xceb
	.quad	64424512747                     # 0xf00000ceb
	.quad	3315                            # 0xcf3
	.quad	64424512755                     # 0xf00000cf3
	.quad	3321                            # 0xcf9
	.quad	64424512761                     # 0xf00000cf9
	.quad	3329                            # 0xd01
	.quad	64424512769                     # 0xf00000d01
	.quad	3333                            # 0xd05
	.quad	64424512773                     # 0xf00000d05
	.quad	3341                            # 0xd0d
	.quad	64424512781                     # 0xf00000d0d
	.quad	3348                            # 0xd14
	.quad	64424512788                     # 0xf00000d14
	.quad	3349                            # 0xd15
	.quad	64424512789                     # 0xf00000d15
	.quad	3350                            # 0xd16
	.quad	64424512790                     # 0xf00000d16
	.quad	3351                            # 0xd17
	.quad	64424512791                     # 0xf00000d17
	.quad	3354                            # 0xd1a
	.quad	64424512794                     # 0xf00000d1a
	.quad	3363                            # 0xd23
	.quad	64424512803                     # 0xf00000d23
	.quad	3371                            # 0xd2b
	.quad	64424512811                     # 0xf00000d2b
	.quad	3375                            # 0xd2f
	.quad	64424512815                     # 0xf00000d2f
	.quad	3384                            # 0xd38
	.quad	64424512824                     # 0xf00000d38
	.quad	3386                            # 0xd3a
	.quad	64424512826                     # 0xf00000d3a
	.quad	3390                            # 0xd3e
	.quad	64424512830                     # 0xf00000d3e
	.quad	3397                            # 0xd45
	.quad	64424512837                     # 0xf00000d45
	.quad	3400                            # 0xd48
	.quad	64424512840                     # 0xf00000d48
	.quad	3401                            # 0xd49
	.quad	64424512841                     # 0xf00000d49
	.quad	3410                            # 0xd52
	.quad	64424512850                     # 0xf00000d52
	.quad	3417                            # 0xd59
	.quad	64424512857                     # 0xf00000d59
	.quad	3422                            # 0xd5e
	.quad	64424512862                     # 0xf00000d5e
	.quad	3426                            # 0xd62
	.quad	64424512866                     # 0xf00000d62
	.quad	3430                            # 0xd66
	.quad	64424512870                     # 0xf00000d66
	.quad	3437                            # 0xd6d
	.quad	64424512877                     # 0xf00000d6d
	.quad	3443                            # 0xd73
	.quad	64424512883                     # 0xf00000d73
	.quad	3444                            # 0xd74
	.quad	64424512884                     # 0xf00000d74
	.quad	3454                            # 0xd7e
	.quad	64424512894                     # 0xf00000d7e
	.quad	3460                            # 0xd84
	.quad	64424512900                     # 0xf00000d84
	.quad	3462                            # 0xd86
	.quad	64424512902                     # 0xf00000d86
	.quad	3468                            # 0xd8c
	.quad	64424512908                     # 0xf00000d8c
	.quad	3475                            # 0xd93
	.quad	64424512915                     # 0xf00000d93
	.quad	3479                            # 0xd97
	.quad	64424512919                     # 0xf00000d97
	.quad	3480                            # 0xd98
	.quad	64424512920                     # 0xf00000d98
	.quad	3485                            # 0xd9d
	.quad	64424512925                     # 0xf00000d9d
	.quad	3491                            # 0xda3
	.quad	64424512931                     # 0xf00000da3
	.quad	3492                            # 0xda4
	.quad	64424512932                     # 0xf00000da4
	.quad	3493                            # 0xda5
	.quad	64424512933                     # 0xf00000da5
	.quad	3497                            # 0xda9
	.quad	64424512937                     # 0xf00000da9
	.quad	3505                            # 0xdb1
	.quad	64424512945                     # 0xf00000db1
	.quad	3506                            # 0xdb2
	.quad	64424512946                     # 0xf00000db2
	.quad	3507                            # 0xdb3
	.quad	64424512947                     # 0xf00000db3
	.quad	3517                            # 0xdbd
	.quad	64424512957                     # 0xf00000dbd
	.quad	3521                            # 0xdc1
	.quad	64424512961                     # 0xf00000dc1
	.quad	3526                            # 0xdc6
	.quad	64424512966                     # 0xf00000dc6
	.quad	3533                            # 0xdcd
	.quad	64424512973                     # 0xf00000dcd
	.quad	3543                            # 0xdd7
	.quad	64424512983                     # 0xf00000dd7
	.quad	3547                            # 0xddb
	.quad	64424512987                     # 0xf00000ddb
	.quad	3554                            # 0xde2
	.quad	64424512994                     # 0xf00000de2
	.quad	3559                            # 0xde7
	.quad	64424512999                     # 0xf00000de7
	.quad	3563                            # 0xdeb
	.quad	64424513003                     # 0xf00000deb
	.quad	3572                            # 0xdf4
	.quad	64424513012                     # 0xf00000df4
	.quad	3574                            # 0xdf6
	.quad	64424513014                     # 0xf00000df6
	.quad	3579                            # 0xdfb
	.quad	64424513019                     # 0xf00000dfb
	.quad	3587                            # 0xe03
	.quad	64424513027                     # 0xf00000e03
	.quad	3591                            # 0xe07
	.quad	64424513031                     # 0xf00000e07
	.quad	3600                            # 0xe10
	.quad	64424513040                     # 0xf00000e10
	.quad	3601                            # 0xe11
	.quad	64424513041                     # 0xf00000e11
	.quad	3605                            # 0xe15
	.quad	64424513045                     # 0xf00000e15
	.quad	3613                            # 0xe1d
	.quad	64424513053                     # 0xf00000e1d
	.quad	3617                            # 0xe21
	.quad	64424513057                     # 0xf00000e21
	.quad	3623                            # 0xe27
	.quad	64424513063                     # 0xf00000e27
	.quad	3632                            # 0xe30
	.quad	64424513072                     # 0xf00000e30
	.quad	3636                            # 0xe34
	.quad	64424513076                     # 0xf00000e34
	.quad	3644                            # 0xe3c
	.quad	64424513084                     # 0xf00000e3c
	.quad	3646                            # 0xe3e
	.quad	64424513086                     # 0xf00000e3e
	.quad	3651                            # 0xe43
	.quad	64424513091                     # 0xf00000e43
	.quad	3660                            # 0xe4c
	.quad	64424513100                     # 0xf00000e4c
	.quad	3664                            # 0xe50
	.quad	64424513104                     # 0xf00000e50
	.quad	3671                            # 0xe57
	.quad	64424513111                     # 0xf00000e57
	.quad	3677                            # 0xe5d
	.quad	64424513117                     # 0xf00000e5d
	.quad	3679                            # 0xe5f
	.quad	64424513119                     # 0xf00000e5f
	.quad	3680                            # 0xe60
	.quad	64424513120                     # 0xf00000e60
	.quad	3685                            # 0xe65
	.quad	64424513125                     # 0xf00000e65
	.quad	3691                            # 0xe6b
	.quad	64424513131                     # 0xf00000e6b
	.quad	3692                            # 0xe6c
	.quad	64424513132                     # 0xf00000e6c
	.quad	3693                            # 0xe6d
	.quad	64424513133                     # 0xf00000e6d
	.quad	3694                            # 0xe6e
	.quad	64424513134                     # 0xf00000e6e
	.quad	3702                            # 0xe76
	.quad	64424513142                     # 0xf00000e76
	.quad	3710                            # 0xe7e
	.quad	64424513150                     # 0xf00000e7e
	.quad	3716                            # 0xe84
	.quad	64424513156                     # 0xf00000e84
	.quad	3722                            # 0xe8a
	.quad	64424513162                     # 0xf00000e8a
	.quad	3723                            # 0xe8b
	.quad	64424513163                     # 0xf00000e8b
	.quad	3725                            # 0xe8d
	.quad	64424513165                     # 0xf00000e8d
	.quad	3726                            # 0xe8e
	.quad	64424513166                     # 0xf00000e8e
	.quad	3734                            # 0xe96
	.quad	64424513174                     # 0xf00000e96
	.quad	3737                            # 0xe99
	.quad	64424513177                     # 0xf00000e99
	.quad	3746                            # 0xea2
	.quad	64424513186                     # 0xf00000ea2
	.quad	3749                            # 0xea5
	.quad	64424513189                     # 0xf00000ea5
	.quad	3752                            # 0xea8
	.quad	64424513192                     # 0xf00000ea8
	.quad	3758                            # 0xeae
	.quad	64424513198                     # 0xf00000eae
	.quad	3760                            # 0xeb0
	.quad	64424513200                     # 0xf00000eb0
	.quad	3768                            # 0xeb8
	.quad	64424513208                     # 0xf00000eb8
	.quad	3769                            # 0xeb9
	.quad	64424513209                     # 0xf00000eb9
	.quad	3776                            # 0xec0
	.quad	64424513216                     # 0xf00000ec0
	.quad	3782                            # 0xec6
	.quad	64424513222                     # 0xf00000ec6
	.quad	3783                            # 0xec7
	.quad	64424513223                     # 0xf00000ec7
	.quad	3784                            # 0xec8
	.quad	64424513224                     # 0xf00000ec8
	.quad	3785                            # 0xec9
	.quad	64424513225                     # 0xf00000ec9
	.quad	3786                            # 0xeca
	.quad	64424513226                     # 0xf00000eca
	.quad	3791                            # 0xecf
	.quad	64424513231                     # 0xf00000ecf
	.quad	3797                            # 0xed5
	.quad	64424513237                     # 0xf00000ed5
	.quad	3807                            # 0xedf
	.quad	64424513247                     # 0xf00000edf
	.quad	3809                            # 0xee1
	.quad	64424513249                     # 0xf00000ee1
	.quad	3818                            # 0xeea
	.quad	64424513258                     # 0xf00000eea
	.quad	3825                            # 0xef1
	.quad	64424513265                     # 0xf00000ef1
	.quad	3829                            # 0xef5
	.quad	64424513269                     # 0xf00000ef5
	.quad	3833                            # 0xef9
	.quad	64424513273                     # 0xf00000ef9
	.quad	3842                            # 0xf02
	.quad	64424513282                     # 0xf00000f02
	.quad	3844                            # 0xf04
	.quad	64424513284                     # 0xf00000f04
	.quad	3851                            # 0xf0b
	.quad	64424513291                     # 0xf00000f0b
	.quad	3857                            # 0xf11
	.quad	64424513297                     # 0xf00000f11
	.quad	3864                            # 0xf18
	.quad	64424513304                     # 0xf00000f18
	.quad	3872                            # 0xf20
	.quad	64424513312                     # 0xf00000f20
	.quad	3881                            # 0xf29
	.quad	64424513321                     # 0xf00000f29
	.quad	3886                            # 0xf2e
	.quad	64424513326                     # 0xf00000f2e
	.quad	3888                            # 0xf30
	.quad	64424513328                     # 0xf00000f30
	.quad	3891                            # 0xf33
	.quad	64424513331                     # 0xf00000f33
	.quad	3900                            # 0xf3c
	.quad	64424513340                     # 0xf00000f3c
	.quad	3908                            # 0xf44
	.quad	64424513348                     # 0xf00000f44
	.quad	3916                            # 0xf4c
	.quad	64424513356                     # 0xf00000f4c
	.quad	3920                            # 0xf50
	.quad	64424513360                     # 0xf00000f50
	.quad	3929                            # 0xf59
	.quad	64424513369                     # 0xf00000f59
	.quad	3935                            # 0xf5f
	.quad	64424513375                     # 0xf00000f5f
	.quad	3940                            # 0xf64
	.quad	64424513380                     # 0xf00000f64
	.quad	3944                            # 0xf68
	.quad	64424513384                     # 0xf00000f68
	.quad	3953                            # 0xf71
	.quad	64424513393                     # 0xf00000f71
	.quad	3953                            # 0xf71
	.quad	64425504355                     # 0xf000f2e63
	.quad	3957                            # 0xf75
	.quad	64424513397                     # 0xf00000f75
	.quad	3958                            # 0xf76
	.quad	64424513398                     # 0xf00000f76
	.quad	3961                            # 0xf79
	.quad	64424513401                     # 0xf00000f79
	.quad	3966                            # 0xf7e
	.quad	64424513406                     # 0xf00000f7e
	.quad	3967                            # 0xf7f
	.quad	64424513407                     # 0xf00000f7f
	.quad	3971                            # 0xf83
	.quad	64424513411                     # 0xf00000f83
	.quad	3980                            # 0xf8c
	.quad	64424513420                     # 0xf00000f8c
	.quad	3987                            # 0xf93
	.quad	64424513427                     # 0xf00000f93
	.quad	3997                            # 0xf9d
	.quad	64424513437                     # 0xf00000f9d
	.quad	3999                            # 0xf9f
	.quad	64424513439                     # 0xf00000f9f
	.quad	4000                            # 0xfa0
	.quad	64424513440                     # 0xf00000fa0
	.quad	4001                            # 0xfa1
	.quad	64424513441                     # 0xf00000fa1
	.quad	4002                            # 0xfa2
	.quad	64424513442                     # 0xf00000fa2
	.quad	4006                            # 0xfa6
	.quad	64424513446                     # 0xf00000fa6
	.quad	4014                            # 0xfae
	.quad	64424513454                     # 0xf00000fae
	.quad	4017                            # 0xfb1
	.quad	64424513457                     # 0xf00000fb1
	.quad	4023                            # 0xfb7
	.quad	64424513463                     # 0xf00000fb7
	.quad	4033                            # 0xfc1
	.quad	64424513473                     # 0xf00000fc1
	.quad	4038                            # 0xfc6
	.quad	64424513478                     # 0xf00000fc6
	.quad	4045                            # 0xfcd
	.quad	64424513485                     # 0xf00000fcd
	.quad	4055                            # 0xfd7
	.quad	64424513495                     # 0xf00000fd7
	.quad	4065                            # 0xfe1
	.quad	64424513505                     # 0xf00000fe1
	.quad	4071                            # 0xfe7
	.quad	64424513511                     # 0xf00000fe7
	.quad	4080                            # 0xff0
	.quad	64424513520                     # 0xf00000ff0
	.quad	4088                            # 0xff8
	.quad	64424513528                     # 0xf00000ff8
	.quad	4096                            # 0x1000
	.quad	64424513536                     # 0xf00001000
	.quad	4104                            # 0x1008
	.quad	64424513544                     # 0xf00001008
	.quad	4113                            # 0x1011
	.quad	64424513553                     # 0xf00001011
	.quad	4119                            # 0x1017
	.quad	64424513559                     # 0xf00001017
	.quad	4124                            # 0x101c
	.quad	64424513564                     # 0xf0000101c
	.quad	4129                            # 0x1021
	.quad	64424513569                     # 0xf00001021
	.quad	4139                            # 0x102b
	.quad	64424513579                     # 0xf0000102b
	.quad	4144                            # 0x1030
	.quad	64424513584                     # 0xf00001030
	.quad	4153                            # 0x1039
	.quad	64424513593                     # 0xf00001039
	.quad	4154                            # 0x103a
	.quad	64424513594                     # 0xf0000103a
	.quad	4164                            # 0x1044
	.quad	64424513604                     # 0xf00001044
	.quad	4167                            # 0x1047
	.quad	64424513607                     # 0xf00001047
	.quad	4169                            # 0x1049
	.quad	64424513609                     # 0xf00001049
	.quad	4172                            # 0x104c
	.quad	64424513612                     # 0xf0000104c
	.quad	4180                            # 0x1054
	.quad	64424513620                     # 0xf00001054
	.quad	4186                            # 0x105a
	.quad	64424513626                     # 0xf0000105a
	.quad	4196                            # 0x1064
	.quad	64425620957                     # 0xf0010f5dd
	.quad	4196                            # 0x1064
	.quad	64424513636                     # 0xf00001064
	.quad	4203                            # 0x106b
	.quad	64424513643                     # 0xf0000106b
	.quad	4213                            # 0x1075
	.quad	64424513653                     # 0xf00001075
	.quad	4222                            # 0x107e
	.quad	64424513662                     # 0xf0000107e
	.quad	4229                            # 0x1085
	.quad	64424513669                     # 0xf00001085
	.quad	4238                            # 0x108e
	.quad	64424513678                     # 0xf0000108e
	.quad	4244                            # 0x1094
	.quad	64424513684                     # 0xf00001094
	.quad	4246                            # 0x1096
	.quad	64424513686                     # 0xf00001096
	.quad	4255                            # 0x109f
	.quad	64424513695                     # 0xf0000109f
	.quad	4258                            # 0x10a2
	.quad	64424513698                     # 0xf000010a2
	.quad	4261                            # 0x10a5
	.quad	64424513701                     # 0xf000010a5
	.quad	4266                            # 0x10aa
	.quad	64425309414                     # 0xf000c34e6
	.quad	4266                            # 0x10aa
	.quad	64424513706                     # 0xf000010aa
	.quad	4275                            # 0x10b3
	.quad	64425295440                     # 0xf000bfe50
	.quad	4275                            # 0x10b3
	.quad	64424513715                     # 0xf000010b3
	.quad	4281                            # 0x10b9
	.quad	64424513721                     # 0xf000010b9
	.quad	4281                            # 0x10b9
	.quad	64424783855                     # 0xf00042fef
	.quad	4285                            # 0x10bd
	.quad	64424513725                     # 0xf000010bd
	.quad	4292                            # 0x10c4
	.quad	64424513732                     # 0xf000010c4
	.quad	4300                            # 0x10cc
	.quad	64424513740                     # 0xf000010cc
	.quad	4306                            # 0x10d2
	.quad	64424513746                     # 0xf000010d2
	.quad	4316                            # 0x10dc
	.quad	64424513756                     # 0xf000010dc
	.quad	4317                            # 0x10dd
	.quad	64424513757                     # 0xf000010dd
	.quad	4319                            # 0x10df
	.quad	64424513759                     # 0xf000010df
	.quad	4326                            # 0x10e6
	.quad	64424513766                     # 0xf000010e6
	.quad	4334                            # 0x10ee
	.quad	64424513774                     # 0xf000010ee
	.quad	4336                            # 0x10f0
	.quad	64424513776                     # 0xf000010f0
	.quad	4346                            # 0x10fa
	.quad	64424513786                     # 0xf000010fa
	.quad	4347                            # 0x10fb
	.quad	64424513787                     # 0xf000010fb
	.quad	4350                            # 0x10fe
	.quad	64424513790                     # 0xf000010fe
	.quad	4353                            # 0x1101
	.quad	64424513793                     # 0xf00001101
	.quad	4363                            # 0x110b
	.quad	64424513803                     # 0xf0000110b
	.quad	4367                            # 0x110f
	.quad	64424513807                     # 0xf0000110f
	.quad	4369                            # 0x1111
	.quad	64424513809                     # 0xf00001111
	.quad	4374                            # 0x1116
	.quad	64424513814                     # 0xf00001116
	.quad	4380                            # 0x111c
	.quad	64424513820                     # 0xf0000111c
	.quad	4381                            # 0x111d
	.quad	64424513821                     # 0xf0000111d
	.quad	4389                            # 0x1125
	.quad	64424513829                     # 0xf00001125
	.quad	4392                            # 0x1128
	.quad	64424513832                     # 0xf00001128
	.quad	4395                            # 0x112b
	.quad	64424513835                     # 0xf0000112b
	.quad	4404                            # 0x1134
	.quad	64424513844                     # 0xf00001134
	.quad	4408                            # 0x1138
	.quad	64424513848                     # 0xf00001138
	.quad	4411                            # 0x113b
	.quad	64424513851                     # 0xf0000113b
	.quad	4417                            # 0x1141
	.quad	64424513857                     # 0xf00001141
	.quad	4417                            # 0x1141
	.quad	64425139643                     # 0xf00099dbb
	.quad	4420                            # 0x1144
	.quad	64424513860                     # 0xf00001144
	.quad	4424                            # 0x1148
	.quad	64424513864                     # 0xf00001148
	.quad	4431                            # 0x114f
	.quad	64424513871                     # 0xf0000114f
	.quad	4437                            # 0x1155
	.quad	64424513877                     # 0xf00001155
	.quad	4443                            # 0x115b
	.quad	64424513883                     # 0xf0000115b
	.quad	4449                            # 0x1161
	.quad	64424513889                     # 0xf00001161
	.quad	4455                            # 0x1167
	.quad	64424513895                     # 0xf00001167
	.quad	4458                            # 0x116a
	.quad	64424513898                     # 0xf0000116a
	.quad	4467                            # 0x1173
	.quad	64424513907                     # 0xf00001173
	.quad	4472                            # 0x1178
	.quad	64424513912                     # 0xf00001178
	.quad	4480                            # 0x1180
	.quad	64424513920                     # 0xf00001180
	.quad	4483                            # 0x1183
	.quad	64424513923                     # 0xf00001183
	.quad	4493                            # 0x118d
	.quad	64424513933                     # 0xf0000118d
	.quad	4495                            # 0x118f
	.quad	64424513935                     # 0xf0000118f
	.quad	4505                            # 0x1199
	.quad	64424513945                     # 0xf00001199
	.quad	4511                            # 0x119f
	.quad	64424513951                     # 0xf0000119f
	.quad	4516                            # 0x11a4
	.quad	64424513956                     # 0xf000011a4
	.quad	4525                            # 0x11ad
	.quad	64424513965                     # 0xf000011ad
	.quad	4526                            # 0x11ae
	.quad	64424513966                     # 0xf000011ae
	.quad	4536                            # 0x11b8
	.quad	64424513976                     # 0xf000011b8
	.quad	4546                            # 0x11c2
	.quad	64424513986                     # 0xf000011c2
	.quad	4556                            # 0x11cc
	.quad	64424513996                     # 0xf000011cc
	.quad	4557                            # 0x11cd
	.quad	64424513997                     # 0xf000011cd
	.quad	4562                            # 0x11d2
	.quad	64424514002                     # 0xf000011d2
	.quad	4566                            # 0x11d6
	.quad	64424514006                     # 0xf000011d6
	.quad	4570                            # 0x11da
	.quad	64424514010                     # 0xf000011da
	.quad	4578                            # 0x11e2
	.quad	64424514018                     # 0xf000011e2
	.quad	4580                            # 0x11e4
	.quad	64424514020                     # 0xf000011e4
	.quad	4590                            # 0x11ee
	.quad	64424514030                     # 0xf000011ee
	.quad	4593                            # 0x11f1
	.quad	64424514033                     # 0xf000011f1
	.quad	4603                            # 0x11fb
	.quad	64424514043                     # 0xf000011fb
	.quad	4609                            # 0x1201
	.quad	64424514049                     # 0xf00001201
	.quad	4614                            # 0x1206
	.quad	64424514054                     # 0xf00001206
	.quad	4621                            # 0x120d
	.quad	64424514061                     # 0xf0000120d
	.quad	4628                            # 0x1214
	.quad	64424514068                     # 0xf00001214
	.quad	4635                            # 0x121b
	.quad	64424514075                     # 0xf0000121b
	.quad	4644                            # 0x1224
	.quad	64424514084                     # 0xf00001224
	.quad	4653                            # 0x122d
	.quad	64424514093                     # 0xf0000122d
	.quad	4656                            # 0x1230
	.quad	64424514096                     # 0xf00001230
	.quad	4658                            # 0x1232
	.quad	64424514098                     # 0xf00001232
	.quad	4664                            # 0x1238
	.quad	64424514104                     # 0xf00001238
	.quad	4669                            # 0x123d
	.quad	64424514109                     # 0xf0000123d
	.quad	4675                            # 0x1243
	.quad	64424514115                     # 0xf00001243
	.quad	4683                            # 0x124b
	.quad	64424514123                     # 0xf0000124b
	.quad	4685                            # 0x124d
	.quad	64424514125                     # 0xf0000124d
	.quad	4693                            # 0x1255
	.quad	64424514133                     # 0xf00001255
	.quad	4703                            # 0x125f
	.quad	64424514143                     # 0xf0000125f
	.quad	4708                            # 0x1264
	.quad	64424514148                     # 0xf00001264
	.quad	4716                            # 0x126c
	.quad	64424514156                     # 0xf0000126c
	.quad	4725                            # 0x1275
	.quad	64424514165                     # 0xf00001275
	.quad	4729                            # 0x1279
	.quad	64424514169                     # 0xf00001279
	.quad	4730                            # 0x127a
	.quad	64424514170                     # 0xf0000127a
	.quad	4735                            # 0x127f
	.quad	64424514175                     # 0xf0000127f
	.quad	4741                            # 0x1285
	.quad	64424514181                     # 0xf00001285
	.quad	4742                            # 0x1286
	.quad	64424514182                     # 0xf00001286
	.quad	4752                            # 0x1290
	.quad	64424514192                     # 0xf00001290
	.quad	4753                            # 0x1291
	.quad	64424514193                     # 0xf00001291
	.quad	4763                            # 0x129b
	.quad	64424514203                     # 0xf0000129b
	.quad	4772                            # 0x12a4
	.quad	64424514212                     # 0xf000012a4
	.quad	4779                            # 0x12ab
	.quad	64424514219                     # 0xf000012ab
	.quad	4789                            # 0x12b5
	.quad	64424514229                     # 0xf000012b5
	.quad	4790                            # 0x12b6
	.quad	64424514230                     # 0xf000012b6
	.quad	4798                            # 0x12be
	.quad	64424514238                     # 0xf000012be
	.quad	4805                            # 0x12c5
	.quad	64424514245                     # 0xf000012c5
	.quad	4814                            # 0x12ce
	.quad	64424514254                     # 0xf000012ce
	.quad	4816                            # 0x12d0
	.quad	64424514256                     # 0xf000012d0
	.quad	4826                            # 0x12da
	.quad	64424514266                     # 0xf000012da
	.quad	4828                            # 0x12dc
	.quad	64424514268                     # 0xf000012dc
	.quad	4834                            # 0x12e2
	.quad	64424514274                     # 0xf000012e2
	.quad	4839                            # 0x12e7
	.quad	64424514279                     # 0xf000012e7
	.quad	4845                            # 0x12ed
	.quad	64424514285                     # 0xf000012ed
	.quad	4850                            # 0x12f2
	.quad	64424514290                     # 0xf000012f2
	.quad	4855                            # 0x12f7
	.quad	64424514295                     # 0xf000012f7
	.quad	4858                            # 0x12fa
	.quad	64424514298                     # 0xf000012fa
	.quad	4865                            # 0x1301
	.quad	64424514305                     # 0xf00001301
	.quad	4870                            # 0x1306
	.quad	64424514310                     # 0xf00001306
	.quad	4871                            # 0x1307
	.quad	64424514311                     # 0xf00001307
	.quad	4878                            # 0x130e
	.quad	64424514318                     # 0xf0000130e
	.quad	4886                            # 0x1316
	.quad	64424514326                     # 0xf00001316
	.quad	4890                            # 0x131a
	.quad	64424514330                     # 0xf0000131a
	.size	sta, 16000

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"cycles: %lu | regsw hits:%d regsw misses:%d \n"
	.size	.L.str.8, 46

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"lw, %lu\n ld, %lu\n li, %lu\n sw, %lu\n sd, %lu\n "
	.size	.L.str.9, 46

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"chaining done\n"
	.size	.Lstr, 15

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
