	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"chaining.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rs_insertsort_128x              # -- Begin function rs_insertsort_128x
	.p2align	2
	.type	rs_insertsort_128x,@function
rs_insertsort_128x:                     # @rs_insertsort_128x
.Lrs_insertsort_128x$local:
	.type	.Lrs_insertsort_128x$local,@function
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
	.size	.Lrs_insertsort_128x$local, .Lfunc_end0-rs_insertsort_128x
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rs_sort_128x                    # -- Begin function rs_sort_128x
	.p2align	2
	.type	rs_sort_128x,@function
rs_sort_128x:                           # @rs_sort_128x
.Lrs_sort_128x$local:
	.type	.Lrs_sort_128x$local,@function
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
	call	.Lrs_sort_128x$local
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
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
.Lpcrel_hi1:
	auipc	a1, %pcrel_hi(.L__func__.rs_sort_128x)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi1)
.Lpcrel_hi2:
	auipc	a1, %pcrel_hi(.L.str.1)
	addi	a3, a1, %pcrel_lo(.Lpcrel_hi2)
	li	a1, 14
	call	__assert_func
.Lfunc_end1:
	.size	rs_sort_128x, .Lfunc_end1-rs_sort_128x
	.size	.Lrs_sort_128x$local, .Lfunc_end1-rs_sort_128x
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	radix_sort_128x                 # -- Begin function radix_sort_128x
	.p2align	2
	.type	radix_sort_128x,@function
radix_sort_128x:                        # @radix_sort_128x
.Lradix_sort_128x$local:
	.type	.Lradix_sort_128x$local,@function
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
	tail	.Lrs_sort_128x$local
.LBB2_12:
	ret
.Lfunc_end2:
	.size	radix_sort_128x, .Lfunc_end2-radix_sort_128x
	.size	.Lradix_sort_128x$local, .Lfunc_end2-radix_sort_128x
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	mg_chain_backtrack              # -- Begin function mg_chain_backtrack
	.p2align	2
	.type	mg_chain_backtrack,@function
mg_chain_backtrack:                     # @mg_chain_backtrack
.Lmg_chain_backtrack$local:
	.type	.Lmg_chain_backtrack$local,@function
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
	call	.Lrs_sort_128x$local
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
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi3)
.Lpcrel_hi4:
	auipc	a1, %pcrel_hi(.L__func__.mg_chain_backtrack)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi4)
.Lpcrel_hi5:
	auipc	a1, %pcrel_hi(.L.str.2)
	addi	a3, a1, %pcrel_lo(.Lpcrel_hi5)
	li	a1, 125
	call	__assert_func
.Lfunc_end3:
	.size	mg_chain_backtrack, .Lfunc_end3-mg_chain_backtrack
	.size	.Lmg_chain_backtrack$local, .Lfunc_end3-mg_chain_backtrack
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
.Lmg_lchain_dp$local:
	.type	.Lmg_lchain_dp$local,@function
# %bb.0:
	addi	sp, sp, -224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	sd	s1, 200(sp)                     # 8-byte Folded Spill
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	s4, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 168(sp)                     # 8-byte Folded Spill
	sd	s6, 160(sp)                     # 8-byte Folded Spill
	sd	s7, 152(sp)                     # 8-byte Folded Spill
	sd	s8, 144(sp)                     # 8-byte Folded Spill
	sd	s9, 136(sp)                     # 8-byte Folded Spill
	sd	s10, 128(sp)                    # 8-byte Folded Spill
	sd	s11, 120(sp)                    # 8-byte Folded Spill
	fsd	fs0, 112(sp)                    # 8-byte Folded Spill
	fsd	fs1, 104(sp)                    # 8-byte Folded Spill
	ld	s2, 256(sp)
	ld	t0, 248(sp)
	sd	t0, 88(sp)                      # 8-byte Folded Spill
	ld	s0, 240(sp)
	ld	s8, 232(sp)
	ld	s7, 224(sp)
	ld	t0, 264(sp)
	sd	t0, 80(sp)                      # 8-byte Folded Spill
	mv	s6, a7
	fmv.s	fs0, fa1
	fmv.s	fs1, fa0
	mv	s1, a6
	mv	s5, a5
	mv	s4, a4
	mv	s9, a3
	mv	s11, a2
	mv	s3, a1
	mv	s10, a0
.Lpcrel_hi6:
	auipc	a0, %pcrel_hi(.L.str.3)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi6)
	mv	a1, s10
	call	printf
.Lpcrel_hi7:
	auipc	a0, %pcrel_hi(.L.str.4)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi7)
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	mv	a1, s3
	call	printf
.Lpcrel_hi8:
	auipc	a0, %pcrel_hi(.L.str.5)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi8)
	sd	s11, 48(sp)                     # 8-byte Folded Spill
	mv	a1, s11
	call	printf
.Lpcrel_hi9:
	auipc	a0, %pcrel_hi(.L.str.6)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi9)
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	mv	a1, s9
	call	printf
.Lpcrel_hi10:
	auipc	a0, %pcrel_hi(.L.str.7)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi10)
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	mv	a1, s4
	mv	s4, s1
	call	printf
.Lpcrel_hi11:
	auipc	a0, %pcrel_hi(.L.str.8)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi11)
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	mv	a1, s5
	mv	s5, s7
	call	printf
.Lpcrel_hi12:
	auipc	a0, %pcrel_hi(.L.str.9)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi12)
	mv	a1, s1
	call	printf
	fcvt.d.s	fa5, fs1
	fmv.x.d	a1, fa5
.Lpcrel_hi13:
	auipc	a0, %pcrel_hi(.L.str.10)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi13)
	call	printf
	fcvt.d.s	fa5, fs0
	fmv.x.d	a1, fa5
.Lpcrel_hi14:
	auipc	a0, %pcrel_hi(.L.str.11)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi14)
	call	printf
.Lpcrel_hi15:
	auipc	a0, %pcrel_hi(.L.str.12)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi15)
	mv	a1, s6
	call	printf
.Lpcrel_hi16:
	auipc	a0, %pcrel_hi(.L.str.13)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi16)
	mv	a1, s7
	call	printf
.Lpcrel_hi17:
	auipc	a0, %pcrel_hi(.L.str.14)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi17)
	mv	a1, s8
	call	printf
.Lpcrel_hi18:
	auipc	a0, %pcrel_hi(.L.str.15)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi18)
	mv	a1, s0
	call	printf
.Lpcrel_hi19:
	auipc	a0, %pcrel_hi(.L.str.16)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi19)
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	mv	a1, s1
	call	printf
	ld	a1, 0(s2)
.Lpcrel_hi20:
	auipc	a0, %pcrel_hi(.L.str.17)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi20)
	call	printf
.Lpcrel_hi21:
	auipc	a0, %pcrel_hi(.L.str.18)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi21)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	call	printf
	sd	zero, 0(s2)
	sw	zero, 0(s1)
	beqz	s8, .LBB4_111
# %bb.1:
	beqz	s0, .LBB4_111
# %bb.2:
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	blt	s7, s10, .LBB4_112
# %bb.3:
	mv	s10, s7
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mv	s2, a1
	bge	s7, a1, .LBB4_113
.LBB4_4:
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	mv	s9, s7
	beqz	s6, .LBB4_6
.LBB4_5:
	lui	a0, 524288
	addiw	s9, a0, -1
	mv	s2, a1
