	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"mv-search.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitializeFastFullIntegerSearch # -- Begin function InitializeFastFullIntegerSearch
	.p2align	2
	.type	InitializeFastFullIntegerSearch,@function
InitializeFastFullIntegerSearch:        # @InitializeFastFullIntegerSearch
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
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	s1, 32(a0)
	sd	s1, 0(sp)                       # 8-byte Folded Spill
	slli	s1, s1, 1
	addi	s1, s1, 1
	li	a0, 16
	call	malloc
	lui	s2, %hi(BlockSAD)
	sd	a0, %lo(BlockSAD)(s2)
	bnez	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB0_2:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	mulw	s1, s1, s1
	slli	a0, a0, 3
	call	malloc
	ld	a1, %lo(BlockSAD)(s2)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_4
# %bb.3:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB0_4:
	ld	a0, %lo(img)(s0)
	lw	a1, 36(a0)
	slli	s0, s1, 2
	blez	a1, .LBB0_17
# %bb.5:                                # %.preheader6
	li	s3, 0
	lui	s4, %hi(BlockSAD)
	lui	s1, %hi(.L.str)
	addi	s1, s1, %lo(.L.str)
	li	s5, 128
	li	s6, 8
	lui	s7, %hi(img)
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	ld	a0, %lo(img)(s7)
	lw	a1, 36(a0)
	addi	s3, s3, 1
	bge	s3, a1, .LBB0_17
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_15 Depth 3
	li	a0, 64
	call	malloc
	ld	a1, %lo(BlockSAD)(s4)
	ld	a1, 0(a1)
	slli	s8, s3, 3
	add	a1, a1, s8
	sd	a0, 0(a1)
	bnez	a0, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	mv	a0, s1
	call	no_mem_exit
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	li	s9, 1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=2
	addi	s9, s9, 1
	beq	s9, s6, .LBB0_6
.LBB0_11:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
	li	a0, 128
	call	malloc
	ld	s11, %lo(BlockSAD)(s4)
	ld	a1, 0(s11)
	add	a1, a1, s8
	ld	a1, 0(a1)
	slli	s10, s9, 3
	add	a1, a1, s10
	sd	a0, 0(a1)
	bnez	a0, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	mv	a0, s1
	call	no_mem_exit
	ld	s11, %lo(BlockSAD)(s4)
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=2
	li	s2, 0
	j	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=3
	addi	s2, s2, 8
	beq	s2, s5, .LBB0_10
.LBB0_15:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s0
	call	malloc
	ld	a1, 0(s11)
	add	a1, a1, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s2
	sd	a0, 0(a1)
	bnez	a0, .LBB0_14
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s11, %lo(BlockSAD)(s4)
	j	.LBB0_14
.LBB0_17:
	lw	a0, 36(a0)
	slli	a0, a0, 3
	call	malloc
	lui	a1, %hi(BlockSAD)
	ld	a1, %lo(BlockSAD)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_19
# %bb.18:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB0_19:
	lui	s3, %hi(img)
	ld	a0, %lo(img)(s3)
	lw	a0, 36(a0)
	blez	a0, .LBB0_32
# %bb.20:                               # %.preheader4
	li	s4, 0
	lui	s5, %hi(BlockSAD)
	lui	s1, %hi(.L.str)
	addi	s1, s1, %lo(.L.str)
	li	s6, 128
	li	s7, 8
	j	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=1
	ld	a0, %lo(img)(s3)
	lw	a0, 36(a0)
	addi	s4, s4, 1
	bge	s4, a0, .LBB0_32
.LBB0_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_30 Depth 3
	li	a0, 64
	call	malloc
	ld	a1, %lo(BlockSAD)(s5)
	ld	a1, 8(a1)
	slli	s8, s4, 3
	add	a1, a1, s8
	sd	a0, 0(a1)
	bnez	a0, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	mv	a0, s1
	call	no_mem_exit
.LBB0_24:                               #   in Loop: Header=BB0_22 Depth=1
	li	s9, 1
	j	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=2
	addi	s9, s9, 1
	beq	s9, s7, .LBB0_21
.LBB0_26:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
	li	a0, 128
	call	malloc
	ld	s11, %lo(BlockSAD)(s5)
	ld	a1, 8(s11)
	add	a1, a1, s8
	ld	a1, 0(a1)
	slli	s10, s9, 3
	add	a1, a1, s10
	sd	a0, 0(a1)
	bnez	a0, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=2
	mv	a0, s1
	call	no_mem_exit
	ld	s11, %lo(BlockSAD)(s5)
.LBB0_28:                               #   in Loop: Header=BB0_26 Depth=2
	li	s2, 0
	j	.LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=3
	addi	s2, s2, 8
	beq	s2, s6, .LBB0_25
.LBB0_30:                               #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s0
	call	malloc
	ld	a1, 8(s11)
	add	a1, a1, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s2
	sd	a0, 0(a1)
	bnez	a0, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s11, %lo(BlockSAD)(s5)
	j	.LBB0_29
.LBB0_32:
	li	a0, 16
	call	malloc
	lui	a1, %hi(search_setup_done)
	sd	a0, %lo(search_setup_done)(a1)
	bnez	a0, .LBB0_34
# %bb.33:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB0_34:
	li	a0, 16
	call	malloc
	lui	a1, %hi(search_center_x)
	sd	a0, %lo(search_center_x)(a1)
	ld	s1, 0(sp)                       # 8-byte Folded Reload
	bnez	a0, .LBB0_36
# %bb.35:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
.LBB0_36:
	li	a0, 16
	call	malloc
	lui	a1, %hi(search_center_y)
	sd	a0, %lo(search_center_y)(a1)
	bnez	a0, .LBB0_38
# %bb.37:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB0_38:
	li	a0, 16
	call	malloc
	lui	a1, %hi(pos_00)
	sd	a0, %lo(pos_00)(a1)
	bnez	a0, .LBB0_40
# %bb.39:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
.LBB0_40:
	li	a0, 16
	call	malloc
	lui	a1, %hi(max_search_range)
	sd	a0, %lo(max_search_range)(a1)
	bnez	a0, .LBB0_42
# %bb.41:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB0_42:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(search_setup_done)
	ld	a1, %lo(search_setup_done)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_44
# %bb.43:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB0_44:
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(search_center_x)
	ld	a1, %lo(search_center_x)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_46
# %bb.45:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
.LBB0_46:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(search_center_y)
	ld	a1, %lo(search_center_y)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_48
# %bb.47:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB0_48:
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(pos_00)
	ld	a1, %lo(pos_00)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_50
# %bb.49:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
.LBB0_50:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(max_search_range)
	ld	a1, %lo(max_search_range)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_52
# %bb.51:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB0_52:
	ld	a0, %lo(img)(s0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
	mv	a0, s0
	call	malloc
	lui	a1, %hi(search_setup_done)
	ld	a1, %lo(search_setup_done)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_54
# %bb.53:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_54:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(search_center_x)
	ld	a1, %lo(search_center_x)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_56
# %bb.55:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_56:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(search_center_y)
	ld	a1, %lo(search_center_y)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_58
# %bb.57:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_58:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(pos_00)
	ld	a1, %lo(pos_00)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_60
# %bb.59:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_60:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(max_search_range)
	ld	a1, %lo(max_search_range)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_62
# %bb.61:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB0_62:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1061(a0)
	li	a3, 2
	bne	a0, a3, .LBB0_69
# %bb.63:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 36(a0)
	blez	a1, .LBB0_75
# %bb.64:
	lui	a1, %hi(max_search_range)
	ld	a1, %lo(max_search_range)(a1)
	ld	a2, 0(a1)
	li	a3, 0
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	sw	s1, 0(a2)
	lw	a4, 36(a0)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a4, .LBB0_65
# %bb.66:
	blez	a4, .LBB0_75
# %bb.67:
	ld	a1, 8(a1)
	li	a2, 0
.LBB0_68:                               # =>This Inner Loop Header: Depth=1
	sw	s1, 0(a1)
	lw	a3, 36(a0)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a3, .LBB0_68
	j	.LBB0_75
.LBB0_69:
	lui	a0, %hi(max_search_range)
	ld	a2, %lo(max_search_range)(a0)
	lui	a0, %hi(img)
	ld	a4, 0(a2)
	ld	a0, %lo(img)(a0)
	sw	s1, 0(a4)
	lw	a5, 36(a0)
	srliw	a1, s1, 31
	add	a1, s1, a1
	sraiw	a1, a1, 1
	blt	a5, a3, .LBB0_72
# %bb.70:                               # %.preheader2
	addi	a3, a4, 4
	li	a4, 1
.LBB0_71:                               # =>This Inner Loop Header: Depth=1
	sw	a1, 0(a3)
	lw	a5, 36(a0)
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a5, .LBB0_71
.LBB0_72:
	ld	a2, 8(a2)
	sw	s1, 0(a2)
	lw	a3, 36(a0)
	li	a4, 2
	blt	a3, a4, .LBB0_75
# %bb.73:                               # %.preheader
	addi	a2, a2, 4
	li	a3, 1
.LBB0_74:                               # =>This Inner Loop Header: Depth=1
	sw	a1, 0(a2)
	lw	a4, 36(a0)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a4, .LBB0_74
.LBB0_75:
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
.Lfunc_end0:
	.size	InitializeFastFullIntegerSearch, .Lfunc_end0-InitializeFastFullIntegerSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ClearFastFullIntegerSearch      # -- Begin function ClearFastFullIntegerSearch
	.p2align	2
	.type	ClearFastFullIntegerSearch,@function
ClearFastFullIntegerSearch:             # @ClearFastFullIntegerSearch
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
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a0, 36(a0)
	blez	a0, .LBB1_7
# %bb.1:                                # %.preheader1
	li	s2, 0
	lui	s3, %hi(BlockSAD)
	li	s4, 128
	li	s5, 8
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_4 Depth 3
	li	s7, 1
	slli	s6, s2, 3
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
	li	s0, 0
	slli	s8, s7, 3
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, %lo(BlockSAD)(s3)
	ld	a0, 0(a0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	add	a0, a0, s0
	ld	a0, 0(a0)
	call	free
	addi	s0, s0, 8
	bne	s0, s4, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	ld	s0, %lo(BlockSAD)(s3)
	ld	a0, 0(s0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	call	free
	addi	s7, s7, 1
	bne	s7, s5, .LBB1_3
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	ld	a0, 0(s0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s1)
	lw	a0, 36(a0)
	addi	s2, s2, 1
	blt	s2, a0, .LBB1_2
	j	.LBB1_8
.LBB1_7:
	lui	a0, %hi(BlockSAD)
	ld	s0, %lo(BlockSAD)(a0)
.LBB1_8:
	ld	a0, 0(s0)
	call	free
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a0, 36(a0)
	blez	a0, .LBB1_15
# %bb.9:                                # %.preheader
	li	s2, 0
	lui	s3, %hi(BlockSAD)
	li	s4, 128
	li	s5, 8
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #       Child Loop BB1_12 Depth 3
	li	s7, 1
	slli	s6, s2, 3
.LBB1_11:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_12 Depth 3
	li	s0, 0
	slli	s8, s7, 3
.LBB1_12:                               #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, %lo(BlockSAD)(s3)
	ld	a0, 8(a0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	add	a0, a0, s0
	ld	a0, 0(a0)
	call	free
	addi	s0, s0, 8
	bne	s0, s4, .LBB1_12
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=2
	ld	s0, %lo(BlockSAD)(s3)
	ld	a0, 8(s0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	call	free
	addi	s7, s7, 1
	bne	s7, s5, .LBB1_11
# %bb.14:                               #   in Loop: Header=BB1_10 Depth=1
	ld	a0, 8(s0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s1)
	lw	a0, 36(a0)
	addi	s2, s2, 1
	blt	s2, a0, .LBB1_10
.LBB1_15:
	ld	a0, 8(s0)
	call	free
	lui	a0, %hi(BlockSAD)
	ld	a0, %lo(BlockSAD)(a0)
	call	free
	lui	a0, %hi(search_setup_done)
	ld	s4, %lo(search_setup_done)(a0)
	lui	a0, %hi(search_center_x)
	ld	s3, %lo(search_center_x)(a0)
	lui	a0, %hi(search_center_y)
	ld	s2, %lo(search_center_y)(a0)
	lui	a0, %hi(pos_00)
	ld	s1, %lo(pos_00)(a0)
	lui	a0, %hi(max_search_range)
	ld	s0, %lo(max_search_range)(a0)
	ld	a0, 0(s4)
	call	free
	ld	a0, 0(s3)
	call	free
	ld	a0, 0(s2)
	call	free
	ld	a0, 0(s1)
	call	free
	ld	a0, 0(s0)
	call	free
	ld	a0, 8(s4)
	call	free
	ld	a0, 8(s3)
	call	free
	ld	a0, 8(s2)
	call	free
	ld	a0, 8(s1)
	call	free
	ld	a0, 8(s0)
	call	free
	mv	a0, s4
	call	free
	mv	a0, s3
	call	free
	mv	a0, s2
	call	free
	mv	a0, s1
	call	free
	mv	a0, s0
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
	tail	free
.Lfunc_end1:
	.size	ClearFastFullIntegerSearch, .Lfunc_end1-ClearFastFullIntegerSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ResetFastFullIntegerSearch      # -- Begin function ResetFastFullIntegerSearch
	.p2align	2
	.type	ResetFastFullIntegerSearch,@function
ResetFastFullIntegerSearch:             # @ResetFastFullIntegerSearch
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 36(a0)
	blez	a1, .LBB2_6
# %bb.1:
	lui	a1, %hi(search_setup_done)
	ld	a1, %lo(search_setup_done)(a1)
	ld	a2, 0(a1)
	li	a3, 0
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a2)
	lw	a4, 36(a0)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a4, .LBB2_2
# %bb.3:
	blez	a4, .LBB2_6
# %bb.4:
	ld	a1, 8(a1)
	li	a2, 0
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a3, 36(a0)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a3, .LBB2_5
.LBB2_6:
	ret
.Lfunc_end2:
	.size	ResetFastFullIntegerSearch, .Lfunc_end2-ResetFastFullIntegerSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetupLargerBlocks               # -- Begin function SetupLargerBlocks
	.p2align	2
	.type	SetupLargerBlocks,@function
SetupLargerBlocks:                      # @SetupLargerBlocks
# %bb.0:
	blez	a2, .LBB3_76
# %bb.1:
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
	lui	a3, %hi(BlockSAD)
	ld	a3, %lo(BlockSAD)(a3)
	slli	a0, a0, 3
	add	a0, a3, a0
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	t2, 48(a0)
	ld	s5, 56(a0)
	ld	a3, 0(t2)
	ld	s2, 0(s5)
	ld	t3, 32(s5)
	slli	a1, a2, 2
	add	a1, a3, a1
	mv	a4, s2
	mv	a5, t3
	mv	a6, a3
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	lw	a7, 0(a4)
	lw	t0, 0(a5)
	add	a7, t0, a7
	sw	a7, 0(a6)
	addi	a6, a6, 4
	addi	a5, a5, 4
	addi	a4, a4, 4
	bne	a6, a1, .LBB3_2
# %bb.3:
	blez	a2, .LBB3_75
# %bb.4:
	ld	a4, 8(t2)
	ld	s6, 8(s5)
	ld	t5, 40(s5)
	slli	s1, a2, 2
	add	a5, a4, s1
	mv	a1, s6
	mv	a6, t5
	mv	a7, a4
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a1)
	lw	t1, 0(a6)
	add	t0, t1, t0
	sw	t0, 0(a7)
	addi	a7, a7, 4
	addi	a6, a6, 4
	addi	a1, a1, 4
	bne	a7, a5, .LBB3_5
# %bb.6:
	blez	a2, .LBB3_75
# %bb.7:
	ld	a5, 16(t2)
	ld	s7, 16(s5)
	ld	t6, 48(s5)
	add	a6, a5, s1
	mv	a1, s7
	mv	a7, t6
	mv	t0, a5
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a1)
	lw	t4, 0(a7)
	add	t1, t4, t1
	sw	t1, 0(t0)
	addi	t0, t0, 4
	addi	a7, a7, 4
	addi	a1, a1, 4
	bne	t0, a6, .LBB3_8
# %bb.9:
	blez	a2, .LBB3_75
# %bb.10:
	ld	a6, 24(t2)
	ld	s10, 24(s5)
	ld	s3, 56(s5)
	add	a7, a6, s1
	mv	a1, s10
	mv	t0, s3
	mv	t1, a6
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	lw	t4, 0(a1)
	lw	s0, 0(t0)
	add	t4, s0, t4
	sw	t4, 0(t1)
	addi	t1, t1, 4
	addi	t0, t0, 4
	addi	a1, a1, 4
	bne	t1, a7, .LBB3_11
# %bb.12:
	blez	a2, .LBB3_75
# %bb.13:
	ld	s0, 64(t2)
	ld	s4, 64(s5)
	ld	t4, 96(s5)
	add	t0, s0, s1
	mv	a1, s4
	mv	t1, t4
	sd	s0, 32(sp)                      # 8-byte Folded Spill
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	lw	s8, 0(a1)
	lw	s9, 0(t1)
	add	s8, s9, s8
	sw	s8, 0(s0)
	addi	s0, s0, 4
	addi	t1, t1, 4
	addi	a1, a1, 4
	bne	s0, t0, .LBB3_14
# %bb.15:
	blez	a2, .LBB3_75
# %bb.16:
	ld	s11, 72(t2)
	ld	s8, 72(s5)
	ld	s0, 104(s5)
	add	t1, s11, s1
	mv	a1, s8
	mv	s9, s0
	sd	s11, 24(sp)                     # 8-byte Folded Spill
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a1)
	lw	ra, 0(s9)
	add	t0, ra, t0
	sw	t0, 0(s11)
	addi	s11, s11, 4
	addi	s9, s9, 4
	addi	a1, a1, 4
	bne	s11, t1, .LBB3_17
# %bb.18:
	blez	a2, .LBB3_75
# %bb.19:
	ld	t0, 80(t2)
	ld	s9, 80(s5)
	ld	ra, 112(s5)
	add	s11, t0, s1
	mv	a1, s9
	sd	ra, 16(sp)                      # 8-byte Folded Spill
	sd	t0, 8(sp)                       # 8-byte Folded Spill
.LBB3_20:                               # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a1)
	lw	a7, 0(ra)
	add	a7, a7, t1
	sw	a7, 0(t0)
	addi	t0, t0, 4
	addi	ra, ra, 4
	addi	a1, a1, 4
	bne	t0, s11, .LBB3_20
# %bb.21:
	blez	a2, .LBB3_75
# %bb.22:
	ld	t0, 88(t2)
	ld	ra, 88(s5)
	ld	s5, 120(s5)
	add	t2, t0, s1
	mv	a1, ra
	mv	s11, s5
	sd	t0, 0(sp)                       # 8-byte Folded Spill
.LBB3_23:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(a1)
	lw	t1, 0(s11)
	add	a7, t1, a7
	sw	a7, 0(t0)
	addi	t0, t0, 4
	addi	s11, s11, 4
	addi	a1, a1, 4
	bne	t0, t2, .LBB3_23
# %bb.24:
	blez	a2, .LBB3_75
# %bb.25:
	ld	s11, 40(a0)
	ld	t2, 0(s11)
	add	a1, t2, s1
.LBB3_26:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(s2)
	lw	t0, 0(s6)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	s6, s6, 4
	addi	s2, s2, 4
	bne	t2, a1, .LBB3_26
# %bb.27:
	blez	a2, .LBB3_75
# %bb.28:
	ld	t2, 16(s11)
	add	a1, t2, s1
.LBB3_29:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(s7)
	lw	t0, 0(s10)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	s10, s10, 4
	addi	s7, s7, 4
	bne	t2, a1, .LBB3_29
# %bb.30:
	blez	a2, .LBB3_75
# %bb.31:
	ld	t2, 32(s11)
	add	a1, t2, s1
.LBB3_32:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(t3)
	lw	t0, 0(t5)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	t5, t5, 4
	addi	t3, t3, 4
	bne	t2, a1, .LBB3_32
# %bb.33:
	blez	a2, .LBB3_75
# %bb.34:
	ld	t2, 48(s11)
	add	a1, t2, s1
.LBB3_35:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(t6)
	lw	t0, 0(s3)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	s3, s3, 4
	addi	t6, t6, 4
	bne	t2, a1, .LBB3_35
# %bb.36:
	blez	a2, .LBB3_75
# %bb.37:
	ld	t2, 64(s11)
	add	a1, t2, s1
.LBB3_38:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(s4)
	lw	t0, 0(s8)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	s8, s8, 4
	addi	s4, s4, 4
	bne	t2, a1, .LBB3_38
# %bb.39:
	blez	a2, .LBB3_75
# %bb.40:
	ld	t2, 80(s11)
	add	a1, t2, s1
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(s9)
	lw	t0, 0(ra)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	ra, ra, 4
	addi	s9, s9, 4
	bne	t2, a1, .LBB3_41
# %bb.42:
	blez	a2, .LBB3_75
# %bb.43:
	ld	t2, 96(s11)
	add	a1, t2, s1
.LBB3_44:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(t4)
	lw	t0, 0(s0)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	s0, s0, 4
	addi	t4, t4, 4
	bne	t2, a1, .LBB3_44
# %bb.45:
	blez	a2, .LBB3_75
# %bb.46:
	ld	t2, 112(s11)
	add	a1, t2, s1
	ld	t1, 16(sp)                      # 8-byte Folded Reload
.LBB3_47:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(t1)
	lw	t0, 0(s5)
	add	a7, t0, a7
	sw	a7, 0(t2)
	addi	t2, t2, 4
	addi	s5, s5, 4
	addi	t1, t1, 4
	bne	t2, a1, .LBB3_47
# %bb.48:
	blez	a2, .LBB3_75
# %bb.49:
	ld	t4, 32(a0)
	ld	t3, 0(t4)
	add	a1, t3, s1
	mv	t0, t3
.LBB3_50:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(a3)
	lw	t1, 0(a4)
	add	a7, t1, a7
	sw	a7, 0(t0)
	addi	t0, t0, 4
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	t0, a1, .LBB3_50
# %bb.51:
	blez	a2, .LBB3_75
# %bb.52:
	ld	a3, 16(t4)
	add	a1, a3, s1
	mv	a4, a3
.LBB3_53:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(a5)
	lw	t0, 0(a6)
	add	a7, t0, a7
	sw	a7, 0(a4)
	addi	a4, a4, 4
	addi	a6, a6, 4
	addi	a5, a5, 4
	bne	a4, a1, .LBB3_53
# %bb.54:
	blez	a2, .LBB3_75
# %bb.55:
	ld	a4, 64(t4)
	add	a1, a4, s1
	mv	a5, a4
	ld	t0, 32(sp)                      # 8-byte Folded Reload
	ld	t1, 24(sp)                      # 8-byte Folded Reload
.LBB3_56:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(t0)
	lw	a7, 0(t1)
	add	a6, a7, a6
	sw	a6, 0(a5)
	addi	a5, a5, 4
	addi	t1, t1, 4
	addi	t0, t0, 4
	bne	a5, a1, .LBB3_56
# %bb.57:
	blez	a2, .LBB3_75
# %bb.58:
	ld	a5, 80(t4)
	add	a1, a5, s1
	mv	a6, a5
	ld	t1, 8(sp)                       # 8-byte Folded Reload
	ld	t2, 0(sp)                       # 8-byte Folded Reload
.LBB3_59:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 0(t1)
	lw	t0, 0(t2)
	add	a7, t0, a7
	sw	a7, 0(a6)
	addi	a6, a6, 4
	addi	t2, t2, 4
	addi	t1, t1, 4
	bne	a6, a1, .LBB3_59
# %bb.60:
	blez	a2, .LBB3_75
# %bb.61:
	ld	a7, 24(a0)
	ld	a6, 0(a7)
	add	a1, a6, s1
	mv	t0, t3
	mv	t1, a4
	mv	t2, a6
.LBB3_62:                               # =>This Inner Loop Header: Depth=1
	lw	t4, 0(t0)
	lw	t5, 0(t1)
	add	t4, t5, t4
	sw	t4, 0(t2)
	addi	t2, t2, 4
	addi	t1, t1, 4
	addi	t0, t0, 4
	bne	t2, a1, .LBB3_62
# %bb.63:
	blez	a2, .LBB3_75
# %bb.64:
	ld	a7, 16(a7)
	add	a1, a7, s1
	mv	t0, a3
	mv	t1, a5
	mv	t2, a7
.LBB3_65:                               # =>This Inner Loop Header: Depth=1
	lw	t4, 0(t0)
	lw	t5, 0(t1)
	add	t4, t5, t4
	sw	t4, 0(t2)
	addi	t2, t2, 4
	addi	t1, t1, 4
	addi	t0, t0, 4
	bne	t2, a1, .LBB3_65
# %bb.66:
	blez	a2, .LBB3_75
# %bb.67:
	ld	t0, 16(a0)
	ld	t1, 0(t0)
	add	a1, t1, s1
.LBB3_68:                               # =>This Inner Loop Header: Depth=1
	lw	t2, 0(t3)
	lw	t4, 0(a3)
	add	t2, t4, t2
	sw	t2, 0(t1)
	addi	t1, t1, 4
	addi	a3, a3, 4
	addi	t3, t3, 4
	bne	t1, a1, .LBB3_68
# %bb.69:
	blez	a2, .LBB3_75
# %bb.70:
	ld	a3, 64(t0)
	add	a1, a3, s1
.LBB3_71:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a4)
	lw	t1, 0(a5)
	add	t0, t1, t0
	sw	t0, 0(a3)
	addi	a3, a3, 4
	addi	a5, a5, 4
	addi	a4, a4, 4
	bne	a3, a1, .LBB3_71
# %bb.72:
	blez	a2, .LBB3_75
# %bb.73:
	ld	a0, 8(a0)
	ld	a0, 0(a0)
	add	s1, a0, s1
.LBB3_74:                               # =>This Inner Loop Header: Depth=1
	lw	a1, 0(a6)
	lw	a2, 0(a7)
	add	a1, a2, a1
	sw	a1, 0(a0)
	addi	a0, a0, 4
	addi	a7, a7, 4
	addi	a6, a6, 4
	bne	a0, s1, .LBB3_74
.LBB3_75:
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
.LBB3_76:
	ret
.Lfunc_end3:
	.size	SetupLargerBlocks, .Lfunc_end3-SetupLargerBlocks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetupFastFullPelSearch          # -- Begin function SetupFastFullPelSearch
	.p2align	2
	.type	SetupFastFullPelSearch,@function
SetupFastFullPelSearch:                 # @SetupFastFullPelSearch
# %bb.0:
	addi	sp, sp, -768
	sd	ra, 760(sp)                     # 8-byte Folded Spill
	sd	s0, 752(sp)                     # 8-byte Folded Spill
	sd	s1, 744(sp)                     # 8-byte Folded Spill
	sd	s2, 736(sp)                     # 8-byte Folded Spill
	sd	s3, 728(sp)                     # 8-byte Folded Spill
	sd	s4, 720(sp)                     # 8-byte Folded Spill
	sd	s5, 712(sp)                     # 8-byte Folded Spill
	sd	s6, 704(sp)                     # 8-byte Folded Spill
	sd	s7, 696(sp)                     # 8-byte Folded Spill
	sd	s8, 688(sp)                     # 8-byte Folded Spill
	sd	s9, 680(sp)                     # 8-byte Folded Spill
	sd	s10, 672(sp)                    # 8-byte Folded Spill
	sd	s11, 664(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(BlockSAD)
	ld	a2, %lo(BlockSAD)(a2)
	mv	s2, a1
	slli	s1, a1, 3
	add	a2, a2, s1
	ld	a1, 0(a2)
	mv	s5, a0
	slli	a2, a0, 3
	add	a1, a1, a2
	lui	a0, %hi(max_search_range)
	ld	a4, %lo(max_search_range)(a0)
	ld	a0, 0(a1)
	lui	a1, %hi(img)
	ld	a3, %lo(img)(a1)
	add	a4, a4, s1
	ld	a1, 0(a4)
	lui	a4, 8
	add	a4, a3, a4
	ld	a4, -1192(a4)
	lw	a6, 12(a3)
	lui	a5, %hi(active_pps)
	ld	a5, %lo(active_pps)(a5)
	li	a7, 528
	mul	a6, a6, a7
	add	a4, a4, a6
	lw	a6, 192(a5)
	lw	a4, 428(a4)
	slli	s6, s5, 2
	add	a1, a1, s6
	beqz	a6, .LBB4_4
# %bb.1:
	lw	a6, 24(a3)
	beqz	a6, .LBB4_3
# %bb.2:
	li	a7, 3
	bne	a6, a7, .LBB4_4
.LBB4_3:
	addw	a3, a4, s2
	slli	a3, a3, 3
	lui	a4, %hi(listX)
	addi	a4, a4, %lo(listX)
	add	a3, a4, a3
	ld	a3, 0(a3)
	add	a2, a3, a2
	ld	a2, 0(a2)
	j	.LBB4_6
.LBB4_4:
	lw	a5, 196(a5)
	beqz	a5, .LBB4_8
# %bb.5:
	addw	a4, a4, s2
	slli	a4, a4, 3
	lui	a5, %hi(listX)
	addi	a5, a5, %lo(listX)
	add	a4, a5, a4
	ld	a4, 0(a4)
	lw	a3, 24(a3)
	add	a2, a4, a2
	ld	a2, 0(a2)
	li	a4, 1
	bne	a3, a4, .LBB4_9
.LBB4_6:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	lw	a3, 1912(a3)
	beqz	a3, .LBB4_9
# %bb.7:
	lui	a3, 2
	addiw	a3, a3, -1752
	j	.LBB4_10
.LBB4_8:
	addw	a3, a4, s2
	slli	a3, a3, 3
	lui	a4, %hi(listX)
	addi	a4, a4, %lo(listX)
	add	a3, a4, a3
	ld	a3, 0(a3)
	add	a2, a3, a2
	ld	a2, 0(a2)
.LBB4_9:
	lui	a3, 2
	addiw	a3, a3, -1760
.LBB4_10:
	add	a3, a2, a3
	lw	s0, 0(a1)
	ld	a0, 56(a0)
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	lui	a0, 2
	addiw	a1, a0, -1800
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	add	a1, a2, a1
	ld	s7, 0(a3)
	addiw	a0, a0, -1712
	add	a0, a4, a0
	ld	a2, 0(a0)
	lw	s3, 0(a1)
	ld	a0, 24(a0)
	lw	s4, 4(a1)
	add	a2, a2, s1
	ld	a1, 0(a2)
	add	a0, a0, s1
	ld	a2, 0(a0)
	li	a3, 16
	addi	a0, sp, 660
	li	a7, 16
	sd	a3, 0(sp)
	mv	a3, s5
	mv	a4, s2
	li	a5, 0
	li	a6, 0
	call	SetMotionVectorPredictor
	lh	a0, 660(sp)
	slli	a1, a0, 33
	lui	a2, %hi(search_center_x)
	ld	a2, %lo(search_center_x)(a2)
	srli	a1, a1, 62
	add	a0, a0, a1
	slli	a0, a0, 48
	add	a2, a2, s1
	ld	a1, 0(a2)
	srai	a0, a0, 48
	lh	a2, 662(sp)
	srli	a0, a0, 2
	add	a1, a1, s6
	sw	a0, 0(a1)
	slli	a0, a2, 33
	srli	a0, a0, 62
	lui	a3, %hi(search_center_y)
	ld	a3, %lo(search_center_y)(a3)
	add	a0, a2, a0
	slli	a0, a0, 48
	srai	a0, a0, 48
	add	a3, a3, s1
	ld	a2, 0(a3)
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	srli	a0, a0, 2
	add	a2, a2, s6
	sw	a0, 0(a2)
	addi	a0, a3, 2047
	lw	a3, 1089(a0)
	bnez	a3, .LBB4_17
# %bb.11:
	lw	a5, 0(a1)
	negw	a3, s0
	mv	a4, s0
	bge	s0, a5, .LBB4_51
# %bb.12:
	bge	a3, a4, .LBB4_52
.LBB4_13:
	sw	a4, 0(a1)
	lw	a5, 0(a2)
	mv	a4, s0
	bge	s0, a5, .LBB4_53
.LBB4_14:
	blt	a3, a4, .LBB4_16
.LBB4_15:
	mv	a4, a3
.LBB4_16:
	sw	a4, 0(a2)
.LBB4_17:
	lw	a3, 0(a1)
	li	a4, 2047
	subw	a6, a4, s0
	addiw	a4, s0, -2047
	mv	a5, a3
	blt	a3, a6, .LBB4_19
# %bb.18:
	mv	a5, a6
.LBB4_19:
	blt	a3, a4, .LBB4_21
# %bb.20:
	mv	a4, a5
.LBB4_21:
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	sw	a4, 0(a1)
	lw	a4, 8(a3)
	li	a5, 24
	mul	a6, a4, a5
	lui	a4, %hi(LEVELMVLIMIT)
	addi	a4, a4, %lo(LEVELMVLIMIT)
	add	a6, a4, a6
	lw	a4, 0(a6)
	lw	a5, 0(a2)
	addw	a7, a4, s0
	slli	a4, s0, 1
	blt	a5, a7, .LBB4_25
# %bb.22:
	lw	a6, 4(a6)
	subw	a6, a6, s0
	blt	a5, a6, .LBB4_24
# %bb.23:
	mv	a5, a6
.LBB4_24:
	mv	a7, a5
.LBB4_25:
	sw	a7, 0(a2)
	lw	a5, 168(a3)
	lw	a6, 0(a1)
	add	a5, a6, a5
	sw	a5, 0(a1)
	lw	a5, 172(a3)
	lw	a6, 0(a2)
	addw	a5, a6, a5
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	sw	a5, 0(a2)
	lw	a2, 172(a3)
	lw	a3, 168(a3)
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	addi	a7, a4, 1
	addiw	t0, a2, 15
	slli	a4, a2, 3
	mv	a6, a2
	blt	t0, a2, .LBB4_27
# %bb.26:
	mv	a6, t0
.LBB4_27:
	mulw	a7, a7, a7
	sd	a7, 80(sp)                      # 8-byte Folded Spill
	addiw	a7, s3, -17
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	addiw	a7, s4, -17
	sd	a7, 48(sp)                      # 8-byte Folded Spill
	lw	a1, 0(a1)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	add	a1, a5, a4
	slli	a6, a6, 5
	slli	a4, a2, 5
	sub	a4, a6, a4
	addi	a6, sp, 148
	add	a4, a4, a6
	addi	a4, a4, 32
	slli	a5, a3, 1
.LBB4_28:                               # =>This Inner Loop Header: Depth=1
	ld	a7, 0(a1)
	add	a7, a7, a5
	lh	t0, 0(a7)
	sh	t0, 0(a6)
	lh	t0, 2(a7)
	sh	t0, 2(a6)
	lh	t0, 4(a7)
	sh	t0, 4(a6)
	lh	t0, 6(a7)
	sh	t0, 6(a6)
	lh	t0, 8(a7)
	sh	t0, 8(a6)
	lh	t0, 10(a7)
	sh	t0, 10(a6)
	lh	t0, 12(a7)
	sh	t0, 12(a6)
	lh	t0, 14(a7)
	sh	t0, 14(a6)
	lh	t0, 16(a7)
	sh	t0, 16(a6)
	lh	t0, 18(a7)
	sh	t0, 18(a6)
	lh	t0, 20(a7)
	sh	t0, 20(a6)
	lh	t0, 22(a7)
	sh	t0, 22(a6)
	lh	t0, 24(a7)
	sh	t0, 24(a6)
	lh	t0, 26(a7)
	sh	t0, 26(a6)
	lh	t0, 28(a7)
	sh	t0, 28(a6)
	lh	a7, 30(a7)
	addi	t0, a6, 32
	sh	a7, 30(a6)
	addi	a1, a1, 8
	mv	a6, t0
	bne	t0, a4, .LBB4_28
# %bb.29:
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	slt	a1, a5, s0
	not	a1, a1
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	subw	a4, a4, s0
	slt	a4, a4, a5
	not	a4, a4
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	slt	a5, a6, s0
	not	a5, a5
	and	a1, a1, a5
	and	a1, a1, a4
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	subw	a4, a4, s0
	slt	a4, a4, a6
	xori	a4, a4, 1
	and	a1, a1, a4
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	beqz	a1, .LBB4_31
# %bb.30:
	lui	a1, %hi(PelYline_11)
	lui	a4, %hi(FastLine16Y_11)
	addi	a4, a4, %lo(FastLine16Y_11)
	sd	a4, %lo(PelYline_11)(a1)
.LBB4_31:
	lw	a0, 1089(a0)
	beqz	a0, .LBB4_46
.LBB4_32:
	sd	s7, 96(sp)                      # 8-byte Folded Spill
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	li	a3, 0
	lui	a4, %hi(PelYline_11)
	lui	s0, %hi(byte_abs)
	ld	s11, 96(sp)                     # 8-byte Folded Reload
.LBB4_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_41 Depth 2
                                        #       Child Loop BB4_42 Depth 3
	lui	a0, %hi(spiral_search_y)
	ld	a0, %lo(spiral_search_y)(a0)
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a2, a3, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	add	a1, a1, a2
	lh	a1, 0(a1)
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	addw	s1, s1, a0
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	addw	s6, a0, a1
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB4_40
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=1
	bltz	s1, .LBB4_38
# %bb.35:                               #   in Loop: Header=BB4_33 Depth=1
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	blt	a0, s1, .LBB4_38
# %bb.36:                               #   in Loop: Header=BB4_33 Depth=1
	bltz	s6, .LBB4_38
# %bb.37:                               #   in Loop: Header=BB4_33 Depth=1
	lui	a0, %hi(FastLine16Y_11)
	addi	a0, a0, %lo(FastLine16Y_11)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	bge	a1, s6, .LBB4_39
.LBB4_38:                               #   in Loop: Header=BB4_33 Depth=1
	lui	a0, %hi(UMVLine16Y_11)
	addi	a0, a0, %lo(UMVLine16Y_11)
.LBB4_39:                               #   in Loop: Header=BB4_33 Depth=1
	sd	a0, %lo(PelYline_11)(a4)
.LBB4_40:                               #   in Loop: Header=BB4_33 Depth=1
	li	a5, 0
	li	a1, 0
	addi	s7, sp, 148
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 2
	sd	a3, 112(sp)                     # 8-byte Folded Spill
.LBB4_41:                               #   Parent Loop BB4_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_42 Depth 3
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	li	s5, 0
	li	s2, 0
	li	s10, 0
	li	s9, 0
	addiw	s8, s1, 4
	sd	s7, 120(sp)                     # 8-byte Folded Spill
.LBB4_42:                               #   Parent Loop BB4_33 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a5, %lo(PelYline_11)(a4)
	mv	a1, s1
	addiw	s1, s1, 1
	mv	a0, s11
	mv	a2, s6
	mv	a3, s4
	mv	a4, s3
	jalr	a5
	lhu	a2, 0(a0)
	lhu	a3, 0(s7)
	ld	a1, %lo(byte_abs)(s0)
	sub	a2, a2, a3
	lhu	a3, 2(a0)
	lhu	a4, 2(s7)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	sub	a3, a3, a4
	lhu	a4, 4(a0)
	lhu	a5, 4(s7)
	slli	a3, a3, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	sub	a4, a4, a5
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	lhu	a5, 6(a0)
	lhu	a6, 6(s7)
	add	a2, a2, s5
	add	a3, a3, a4
	sub	a4, a5, a6
	lhu	a5, 8(a0)
	lhu	a6, 8(s7)
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	s5, 0(a4)
	sub	a4, a5, a6
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	lhu	a5, 10(a0)
	lhu	a6, 10(s7)
	add	a2, a2, a3
	add	s5, a2, s5
	add	a4, a4, s2
	sub	a2, a5, a6
	lhu	a3, 12(a0)
	lhu	a5, 12(s7)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	sub	a3, a3, a5
	lhu	a5, 14(a0)
	lhu	a6, 14(s7)
	slli	a3, a3, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	sub	a5, a5, a6
	slli	a5, a5, 2
	add	a5, a1, a5
	lw	s2, 0(a5)
	lhu	a5, 16(a0)
	lhu	a6, 16(s7)
	add	a2, a2, a3
	add	a2, a4, a2
	add	s2, a2, s2
	sub	a2, a5, a6
	lhu	a3, 18(a0)
	lhu	a4, 18(s7)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	sub	a3, a3, a4
	lhu	a4, 20(a0)
	lhu	a5, 20(s7)
	slli	a3, a3, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	sub	a4, a4, a5
	lhu	a5, 22(a0)
	lhu	a6, 22(s7)
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	sub	a5, a5, a6
	slli	a5, a5, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	add	a2, a2, s9
	add	a3, a3, a4
	add	a2, a2, a3
	add	s9, a2, a5
	lhu	a2, 24(a0)
	lhu	a3, 24(s7)
	lhu	a4, 26(a0)
	lhu	a5, 26(s7)
	lhu	a6, 28(a0)
	lhu	a7, 28(s7)
	lhu	a0, 30(a0)
	lhu	t0, 30(s7)
	sub	a2, a2, a3
	sub	a4, a4, a5
	sub	a3, a6, a7
	sub	a0, a0, t0
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	slli	a3, a3, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	add	a2, a2, s10
	add	a3, a4, a3
	lui	a4, %hi(PelYline_11)
	add	a2, a2, a3
	add	s10, a2, a0
	addi	s7, s7, 32
	bne	s1, s8, .LBB4_42
# %bb.43:                               #   in Loop: Header=BB4_41 Depth=2
	ld	a5, 136(sp)                     # 8-byte Folded Reload
	slli	a0, a5, 3
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a1, 0(a0)
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	ld	a2, 8(a0)
	sw	s5, 0(a1)
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	addi	s7, s7, 128
	ld	a1, 16(a0)
	add	a2, a2, a3
	sw	s2, 0(a2)
	ld	a0, 24(a0)
	add	a1, a1, a3
	sw	s9, 0(a1)
	addi	a5, a5, 4
	add	a0, a0, a3
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	addiw	a1, a1, 1
	sw	s10, 0(a0)
	li	a0, 4
	bne	a1, a0, .LBB4_41
# %bb.44:                               #   in Loop: Header=BB4_33 Depth=1
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 1
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	bltu	a3, a0, .LBB4_33
# %bb.45:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	call	SetupLargerBlocks
	lui	a0, %hi(search_setup_done)
	ld	a0, %lo(search_setup_done)(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, a0, a1
	li	a1, 1
	sw	a1, 0(a0)
	ld	ra, 760(sp)                     # 8-byte Folded Reload
	ld	s0, 752(sp)                     # 8-byte Folded Reload
	ld	s1, 744(sp)                     # 8-byte Folded Reload
	ld	s2, 736(sp)                     # 8-byte Folded Reload
	ld	s3, 728(sp)                     # 8-byte Folded Reload
	ld	s4, 720(sp)                     # 8-byte Folded Reload
	ld	s5, 712(sp)                     # 8-byte Folded Reload
	ld	s6, 704(sp)                     # 8-byte Folded Reload
	ld	s7, 696(sp)                     # 8-byte Folded Reload
	ld	s8, 688(sp)                     # 8-byte Folded Reload
	ld	s9, 680(sp)                     # 8-byte Folded Reload
	ld	s10, 672(sp)                    # 8-byte Folded Reload
	ld	s11, 664(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 768
	ret
.LBB4_46:
	lui	a0, %hi(spiral_search_x)
	ld	a0, %lo(spiral_search_x)(a0)
	lui	a1, %hi(spiral_search_y)
	ld	a4, %lo(spiral_search_y)(a1)
	li	a1, 0
	li	a5, 0
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	subw	a3, a3, a6
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	subw	a2, a2, a6
	j	.LBB4_48
.LBB4_47:                               #   in Loop: Header=BB4_48 Depth=1
	addi	a5, a5, 1
	addi	a1, a1, 1
	addi	a4, a4, 2
	addi	a0, a0, 2
	ld	a6, 80(sp)                      # 8-byte Folded Reload
	bgeu	a5, a6, .LBB4_32
.LBB4_48:                               # =>This Inner Loop Header: Depth=1
	lh	a6, 0(a0)
	bne	a3, a6, .LBB4_47
# %bb.49:                               #   in Loop: Header=BB4_48 Depth=1
	lh	a6, 0(a4)
	bne	a2, a6, .LBB4_47
# %bb.50:
	lui	a0, %hi(pos_00)
	ld	a0, %lo(pos_00)(a0)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a0, a0, s6
	sw	a1, 0(a0)
	j	.LBB4_32
.LBB4_51:
	mv	a4, a5
	blt	a3, a5, .LBB4_13
.LBB4_52:
	sw	a3, 0(a1)
	lw	a5, 0(a2)
	mv	a4, s0
	blt	s0, a5, .LBB4_14
.LBB4_53:
	mv	a4, a5
	bge	a3, a5, .LBB4_15
	j	.LBB4_16
.Lfunc_end4:
	.size	SetupFastFullPelSearch, .Lfunc_end4-SetupFastFullPelSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetMotionVectorPredictor        # -- Begin function SetMotionVectorPredictor
	.p2align	2
	.type	SetMotionVectorPredictor,@function
SetMotionVectorPredictor:               # @SetMotionVectorPredictor
# %bb.0:
	addi	sp, sp, -352
	sd	ra, 344(sp)                     # 8-byte Folded Spill
	sd	s0, 336(sp)                     # 8-byte Folded Spill
	sd	s1, 328(sp)                     # 8-byte Folded Spill
	sd	s2, 320(sp)                     # 8-byte Folded Spill
	sd	s3, 312(sp)                     # 8-byte Folded Spill
	sd	s4, 304(sp)                     # 8-byte Folded Spill
	sd	s5, 296(sp)                     # 8-byte Folded Spill
	sd	s6, 288(sp)                     # 8-byte Folded Spill
	sd	s7, 280(sp)                     # 8-byte Folded Spill
	sd	s8, 272(sp)                     # 8-byte Folded Spill
	sd	s9, 264(sp)                     # 8-byte Folded Spill
	sd	s10, 256(sp)                    # 8-byte Folded Spill
	sd	s11, 248(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(input)
	ld	t0, %lo(input)(t0)
	mv	s3, a3
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	addi	t0, t0, 2047
	lw	t0, 1917(t0)
	lui	t1, %hi(FME_blocktype)
	lw	t1, %lo(FME_blocktype)(t1)
	lw	s8, 12(a3)
	xori	a3, t0, 1
	slti	t0, s3, 1
	xori	t1, t1, 1
	or	a3, a3, t1
	seqz	a3, a3
	and	s9, a3, t0
	mv	s5, a7
	mv	s4, a6
	mv	s6, a5
	sd	a4, 136(sp)                     # 8-byte Folded Spill
	mv	s2, a2
	mv	s7, a1
	mv	s1, a0
	beqz	s9, .LBB5_2
# %bb.1:
	lui	a0, %hi(pred_SAD_space)
	sw	zero, %lo(pred_SAD_space)(a0)
.LBB5_2:
	li	a3, -1
	addi	a5, sp, 224
	mv	a0, s8
	mv	a1, s6
	mv	a2, s4
	li	a4, 0
	call	getLuma4x4Neighbour
	li	a4, -1
	addi	a5, sp, 200
	mv	a0, s8
	mv	a1, s6
	mv	a2, s4
	li	a3, 0
	call	getLuma4x4Neighbour
	li	a4, -1
	addi	a5, sp, 176
	mv	a0, s8
	mv	a1, s6
	mv	a2, s4
	mv	a3, s5
	call	getLuma4x4Neighbour
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 152
	mv	a0, s8
	mv	a1, s6
	mv	a2, s4
	call	getLuma4x4Neighbour
	blez	s4, .LBB5_8
# %bb.3:
	li	a1, 1
	slli	a0, s6, 2
	blt	a1, s6, .LBB5_6
# %bb.4:
	li	a1, 2
	bne	s4, a1, .LBB5_7
# %bb.5:
	li	a0, 16
	bne	s5, a0, .LBB5_8
	j	.LBB5_9
.LBB5_6:
	addw	a0, a0, s5
	li	a1, 16
	bne	a0, a1, .LBB5_8
	j	.LBB5_9
.LBB5_7:
	addw	a0, a0, s5
	li	a1, 8
	beq	a0, a1, .LBB5_9
.LBB5_8:
	lw	a0, 176(sp)
	bnez	a0, .LBB5_10
.LBB5_9:
	lwu	a0, 172(sp)
	lwu	a1, 168(sp)
	slli	a0, a0, 32
	lwu	a2, 164(sp)
	or	a0, a0, a1
	sd	a0, 192(sp)
	lwu	a0, 160(sp)
	slli	a2, a2, 32
	lwu	a1, 156(sp)
	lwu	a3, 152(sp)
	or	a0, a2, a0
	sd	a0, 184(sp)
	slli	a1, a1, 32
	or	a1, a1, a3
	sd	a1, 176(sp)
.LBB5_10:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a0, 22
	add	a0, a2, a0
	lw	a1, 108(a0)
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a3, a2, a0
	sd	a2, 128(sp)                     # 8-byte Folded Spill
	sd	a3, 120(sp)                     # 8-byte Folded Spill
	beqz	a1, .LBB5_18
# %bb.11:
	lw	a0, 12(a2)
	ld	a5, 0(a3)
	li	a2, 528
	mul	a0, a0, a2
	add	a0, a5, a0
	lw	a0, 424(a0)
	lw	a3, 224(sp)
	li	a2, -1
	beqz	a0, .LBB5_24
# %bb.12:
	li	a0, -1
	beqz	a3, .LBB5_14
# %bb.13:
	lw	a0, 244(sp)
	lw	a4, 228(sp)
	li	a6, 528
	slli	a0, a0, 3
	add	a0, s7, a0
	ld	a0, 0(a0)
	lw	a7, 240(sp)
	mul	a4, a4, a6
	add	a4, a5, a4
	lw	a4, 424(a4)
	add	a0, a0, a7
	lbu	a0, 0(a0)
	seqz	a4, a4
	sllw	a0, a0, a4
.LBB5_14:
	lw	a4, 200(sp)
	beqz	a4, .LBB5_16
# %bb.15:
	lw	a2, 220(sp)
	lw	a6, 204(sp)
	li	a7, 528
	slli	a2, a2, 3
	add	a2, s7, a2
	ld	a2, 0(a2)
	lw	t0, 216(sp)
	mul	a6, a6, a7
	add	a6, a5, a6
	lw	a6, 424(a6)
	add	a2, a2, t0
	lbu	a2, 0(a2)
	seqz	a6, a6
	sllw	a2, a2, a6
.LBB5_16:
	lw	a6, 176(sp)
	beqz	a6, .LBB5_34
# %bb.17:
	lw	a6, 196(sp)
	lw	a7, 180(sp)
	li	t0, 528
	slli	a6, a6, 3
	add	a6, s7, a6
	ld	a6, 0(a6)
	lw	t1, 192(sp)
	mul	a7, a7, t0
	add	a5, a5, a7
	lw	a7, 424(a5)
	add	a6, a6, t1
	lbu	a6, 0(a6)
	li	a5, 0
	seqz	a7, a7
	sllw	t0, a6, a7
	li	a7, 1
	beq	a0, s3, .LBB5_35
	j	.LBB5_37
.LBB5_18:
	lw	a3, 224(sp)
	li	a2, -1
	li	a0, -1
	beqz	a3, .LBB5_20
# %bb.19:
	lw	a0, 244(sp)
	slli	a0, a0, 3
	add	a0, s7, a0
	ld	a0, 0(a0)
	lw	a4, 240(sp)
	add	a0, a0, a4
	lbu	a0, 0(a0)
.LBB5_20:
	lw	a4, 200(sp)
	beqz	a4, .LBB5_22
# %bb.21:
	lw	a2, 220(sp)
	slli	a2, a2, 3
	add	a2, s7, a2
	ld	a2, 0(a2)
	lw	a5, 216(sp)
	add	a2, a2, a5
	lbu	a2, 0(a2)
.LBB5_22:
	lw	a5, 176(sp)
	beqz	a5, .LBB5_34
# %bb.23:
	lw	a5, 196(sp)
	slli	a5, a5, 3
	add	a5, s7, a5
	ld	a5, 0(a5)
	lw	a6, 192(sp)
	add	a5, a5, a6
	lbu	t0, 0(a5)
	li	a5, 0
	li	a7, 1
	beq	a0, s3, .LBB5_35
	j	.LBB5_37
.LBB5_24:
	li	a0, -1
	beqz	a3, .LBB5_27
# %bb.25:
	lw	a0, 244(sp)
	lw	a4, 228(sp)
	li	a6, 528
	slli	a0, a0, 3
	add	a0, s7, a0
	ld	a0, 0(a0)
	lw	a7, 240(sp)
	mul	a4, a4, a6
	add	a4, a5, a4
	lw	a4, 424(a4)
	add	a0, a0, a7
	lbu	a0, 0(a0)
	beqz	a4, .LBB5_27
# %bb.26:
	srli	a0, a0, 1
.LBB5_27:
	lw	a4, 200(sp)
	beqz	a4, .LBB5_30
# %bb.28:
	lw	a2, 220(sp)
	lw	a6, 204(sp)
	li	a7, 528
	slli	a2, a2, 3
	add	a2, s7, a2
	ld	a2, 0(a2)
	lw	t0, 216(sp)
	mul	a6, a6, a7
	add	a6, a5, a6
	lw	a6, 424(a6)
	add	a2, a2, t0
	lbu	a2, 0(a2)
	beqz	a6, .LBB5_30
# %bb.29:
	srli	a2, a2, 1
.LBB5_30:
	lw	a6, 176(sp)
	beqz	a6, .LBB5_34
# %bb.31:
	lw	a6, 196(sp)
	lw	a7, 180(sp)
	li	t0, 528
	slli	a6, a6, 3
	add	a6, s7, a6
	ld	a6, 0(a6)
	lw	t1, 192(sp)
	mul	a7, a7, t0
	add	a5, a5, a7
	lw	a5, 424(a5)
	add	a6, a6, t1
	lbu	t0, 0(a6)
	beqz	a5, .LBB5_33
# %bb.32:
	li	a5, 0
	srli	t0, t0, 1
.LBB5_33:
	li	a7, 1
	beq	a0, s3, .LBB5_35
	j	.LBB5_37
.LBB5_34:
	li	a7, 0
	li	t0, -1
	li	a5, 1
	bne	a0, s3, .LBB5_37
.LBB5_35:
	beq	a2, s3, .LBB5_37
# %bb.36:
	li	a6, 1
	bne	t0, s3, .LBB5_40
.LBB5_37:
	xor	a6, t0, s3
	seqz	t1, a6
	xor	a6, a2, s3
	snez	t2, a6
	xor	a6, a0, s3
	seqz	a6, a6
	or	a6, a6, t2
	or	t3, a6, t1
	addi	a6, t3, -1
	andi	a6, a6, 2
	beq	a0, s3, .LBB5_40
# %bb.38:
	beqz	t3, .LBB5_40
# %bb.39:
	and	a6, t2, t1
	negw	a6, a6
	andi	a6, a6, 3
.LBB5_40:
	ld	t1, 352(sp)
	li	t2, 8
	bne	s5, t2, .LBB5_45
# %bb.41:
	li	t2, 16
	bne	t1, t2, .LBB5_45
# %bb.42:
	beqz	s6, .LBB5_48
# %bb.43:
	bne	t0, s3, .LBB5_52
# %bb.44:
	li	a6, 3
	j	.LBB5_52
.LBB5_45:
	li	t0, 16
	bne	s5, t0, .LBB5_52
# %bb.46:
	li	t0, 8
	bne	t1, t0, .LBB5_52
# %bb.47:
	beqz	s4, .LBB5_50
.LBB5_48:
	bne	a0, s3, .LBB5_52
# %bb.49:
	li	a6, 1
	j	.LBB5_52
.LBB5_50:
	bne	a2, s3, .LBB5_52
# %bb.51:
	li	a6, 2
.LBB5_52:
	lw	a0, 244(sp)
	lw	a2, 220(sp)
	slli	a0, a0, 3
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	lw	a0, 240(sp)
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 3
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	lw	a0, 216(sp)
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lw	a0, 196(sp)
	lui	a2, %hi(fastme_l0_cost)
	lui	t0, %hi(FME_blocktype)
	lw	t0, %lo(FME_blocktype)(t0)
	ld	a2, %lo(fastme_l0_cost)(a2)
	slli	a0, a0, 3
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lw	a0, 192(sp)
	slli	t0, t0, 3
	add	t3, a2, t0
	lui	a2, %hi(fastme_l1_cost)
	ld	t1, %lo(fastme_l1_cost)(a2)
	lw	t5, 152(sp)
	lw	a2, 172(sp)
	lw	t2, 168(sp)
	add	t1, t1, t0
	li	s4, 1
	snez	t0, a4
	sd	t1, 104(sp)                     # 8-byte Folded Spill
	sd	t1, 16(sp)                      # 8-byte Folded Spill
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	beq	t1, s4, .LBB5_54
# %bb.53:
	sd	t3, 16(sp)                      # 8-byte Folded Spill
.LBB5_54:
	sd	t3, 112(sp)                     # 8-byte Folded Spill
	li	s6, 0
	li	t1, 0
	li	s3, 0
	li	t3, 0
	lw	t4, 228(sp)
	sd	t4, 64(sp)                      # 8-byte Folded Spill
	ld	s5, 96(sp)                      # 8-byte Folded Reload
	add	s5, s2, s5
	lw	t4, 204(sp)
	sd	t4, 56(sp)                      # 8-byte Folded Spill
	ld	s7, 80(sp)                      # 8-byte Folded Reload
	add	s7, s2, s7
	lw	t4, 180(sp)
	sd	t4, 40(sp)                      # 8-byte Folded Spill
	ld	t4, 48(sp)                      # 8-byte Folded Reload
	add	s2, s2, t4
	or	a7, t0, a7
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	addi	a7, sp, 148
	slli	s11, a0, 3
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	slli	ra, ra, 3
	ld	t0, 88(sp)                      # 8-byte Folded Reload
	slli	t0, t0, 3
	li	s8, 1
	slli	a0, a0, 2
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 3
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	slli	t2, t2, 2
	sd	t2, 0(sp)                       # 8-byte Folded Spill
	li	s10, 528
	j	.LBB5_58
.LBB5_55:                               #   in Loop: Header=BB5_58 Depth=1
	sw	t3, 0(a7)
.LBB5_56:                               #   in Loop: Header=BB5_58 Depth=1
	mv	t2, t4
.LBB5_57:                               #   in Loop: Header=BB5_58 Depth=1
	li	s4, 0
	add	a0, s1, a0
	sh	t2, 0(a0)
	li	s6, 1
	addi	a7, sp, 144
	beqz	a2, .LBB5_132
.LBB5_58:                               # =>This Inner Loop Header: Depth=1
	andi	a2, s4, 1
	slli	a0, s6, 1
	beqz	a1, .LBB5_66
# %bb.59:                               #   in Loop: Header=BB5_58 Depth=1
	bnez	a2, .LBB5_66
# %bb.60:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t2, 128(sp)                     # 8-byte Folded Reload
	lw	t4, 12(t2)
	ld	t2, 120(sp)                     # 8-byte Folded Reload
	ld	t2, 0(t2)
	mul	t4, t4, s10
	add	t4, t2, t4
	lw	t4, 424(t4)
	beqz	t4, .LBB5_80
# %bb.61:                               #   in Loop: Header=BB5_58 Depth=1
	beqz	a3, .LBB5_93
# %bb.62:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t4, 0(s5)
	add	t4, t4, t0
	ld	t4, 0(t4)
	ld	t6, 64(sp)                      # 8-byte Folded Reload
	mul	t6, t6, s10
	add	t6, t2, t6
	lw	t6, 424(t6)
	lhu	t4, 2(t4)
	beqz	t6, .LBB5_95
# %bb.63:                               #   in Loop: Header=BB5_58 Depth=1
	slli	t4, t4, 48
	srai	t4, t4, 48
	beqz	a4, .LBB5_94
.LBB5_64:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t6, 0(s7)
	add	t6, t6, ra
	ld	t6, 0(t6)
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	mul	s0, s0, s10
	add	s0, t2, s0
	lw	s0, 424(s0)
	lhu	t6, 2(t6)
	beqz	s0, .LBB5_96
# %bb.65:                               #   in Loop: Header=BB5_58 Depth=1
	slli	t6, t6, 48
	srai	t6, t6, 48
	bnez	a5, .LBB5_101
	j	.LBB5_97
.LBB5_66:                               #   in Loop: Header=BB5_58 Depth=1
	beqz	a3, .LBB5_69
# %bb.67:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t2, 0(s5)
	add	t2, t2, t0
	ld	t2, 0(t2)
	add	t2, t2, a0
	lh	t4, 0(t2)
	beqz	a4, .LBB5_70
.LBB5_68:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t2, 0(s7)
	add	t2, t2, ra
	ld	t2, 0(t2)
	add	t2, t2, a0
	lh	t6, 0(t2)
	beqz	a5, .LBB5_71
	j	.LBB5_101
.LBB5_69:                               #   in Loop: Header=BB5_58 Depth=1
	li	t4, 0
	bnez	a4, .LBB5_68
.LBB5_70:                               #   in Loop: Header=BB5_58 Depth=1
	li	t6, 0
	bnez	a5, .LBB5_101
.LBB5_71:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t2, 0(s2)
	add	t2, t2, s11
	ld	t2, 0(t2)
	add	t2, t2, a0
	lh	t2, 0(t2)
	bnez	s9, .LBB5_102
.LBB5_72:                               #   in Loop: Header=BB5_58 Depth=1
	blt	s8, a6, .LBB5_124
.LBB5_73:                               #   in Loop: Header=BB5_58 Depth=1
	bnez	a6, .LBB5_79
# %bb.74:                               #   in Loop: Header=BB5_58 Depth=1
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	beqz	s0, .LBB5_83
# %bb.75:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s4, t6
	blt	t6, t2, .LBB5_84
# %bb.76:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s4, t2
	mv	s6, t4
	bge	t4, t2, .LBB5_85
.LBB5_77:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s4, t6
	blt	t2, t6, .LBB5_86
.LBB5_78:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s4, t2
	mv	s0, t4
	bge	t2, t4, .LBB5_87
	j	.LBB5_88
.LBB5_79:                               #   in Loop: Header=BB5_58 Depth=1
	bnez	s9, .LBB5_55
	j	.LBB5_56
.LBB5_80:                               #   in Loop: Header=BB5_58 Depth=1
	beqz	a3, .LBB5_99
# %bb.81:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t4, 0(s5)
	add	t4, t4, t0
	ld	t4, 0(t4)
	ld	t6, 64(sp)                      # 8-byte Folded Reload
	mul	t6, t6, s10
	add	t6, t2, t6
	lw	t6, 424(t6)
	lh	t4, 2(t4)
	snez	t6, t6
	sllw	t4, t4, t6
	beqz	a4, .LBB5_100
.LBB5_82:                               #   in Loop: Header=BB5_58 Depth=1
	ld	t6, 0(s7)
	add	t6, t6, ra
	ld	t6, 0(t6)
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	mul	s0, s0, s10
	add	s0, t2, s0
	lw	s0, 424(s0)
	lh	t6, 2(t6)
	snez	s0, s0
	sllw	t6, t6, s0
	bnez	a5, .LBB5_101
	j	.LBB5_130
.LBB5_83:                               #   in Loop: Header=BB5_58 Depth=1
	mv	t2, t4
	beqz	s9, .LBB5_56
	j	.LBB5_89
.LBB5_84:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s6, t4
	blt	t4, s4, .LBB5_77
.LBB5_85:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s6, s4
	mv	s4, t6
	bge	t2, t6, .LBB5_78
.LBB5_86:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s0, t4
	blt	s4, t4, .LBB5_88
.LBB5_87:                               #   in Loop: Header=BB5_58 Depth=1
	mv	s0, s4
.LBB5_88:                               #   in Loop: Header=BB5_58 Depth=1
	add	t2, t2, t6
	add	t2, t2, t4
	add	s0, s0, s6
	subw	t2, t2, s0
	beqz	s9, .LBB5_57
.LBB5_89:                               #   in Loop: Header=BB5_58 Depth=1
	bne	t2, t4, .LBB5_91
# %bb.90:                               #   in Loop: Header=BB5_58 Depth=1
	bnez	t3, .LBB5_55
.LBB5_91:                               #   in Loop: Header=BB5_58 Depth=1
	bne	t2, t6, .LBB5_128
# %bb.92:                               #   in Loop: Header=BB5_58 Depth=1
	bnez	s3, .LBB5_126
	j	.LBB5_128
.LBB5_93:                               #   in Loop: Header=BB5_58 Depth=1
	li	t4, 0
	bnez	a4, .LBB5_64
.LBB5_94:                               #   in Loop: Header=BB5_58 Depth=1
	li	t6, 0
	bnez	a5, .LBB5_101
	j	.LBB5_97
.LBB5_95:                               #   in Loop: Header=BB5_58 Depth=1
	srli	t6, t4, 15
	add	t4, t4, t6
	slli	t4, t4, 48
	srai	t4, t4, 49
	bnez	a4, .LBB5_64
	j	.LBB5_94
.LBB5_96:                               #   in Loop: Header=BB5_58 Depth=1
	srli	s0, t6, 15
	add	t6, t6, s0
	slli	t6, t6, 48
	srai	t6, t6, 49
	bnez	a5, .LBB5_101
.LBB5_97:                               #   in Loop: Header=BB5_58 Depth=1
	ld	s0, 0(s2)
	add	s0, s0, s11
	ld	s0, 0(s0)
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	mul	s4, s4, s10
	add	t2, t2, s4
	lw	s4, 424(t2)
	lhu	t2, 2(s0)
	beqz	s4, .LBB5_131
# %bb.98:                               #   in Loop: Header=BB5_58 Depth=1
	slli	t2, t2, 48
	srai	t2, t2, 48
	bnez	s9, .LBB5_102
	j	.LBB5_72
.LBB5_99:                               #   in Loop: Header=BB5_58 Depth=1
	li	t4, 0
	bnez	a4, .LBB5_82
.LBB5_100:                              #   in Loop: Header=BB5_58 Depth=1
	li	t6, 0
	beqz	a5, .LBB5_130
.LBB5_101:                              #   in Loop: Header=BB5_58 Depth=1
	li	t2, 0
	beqz	s9, .LBB5_72
.LBB5_102:                              #   in Loop: Header=BB5_58 Depth=1
	beqz	a3, .LBB5_105
# %bb.103:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t3, 88(sp)                      # 8-byte Folded Reload
	slli	t3, t3, 2
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	bne	t1, s8, .LBB5_109
# %bb.104:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	ld	t1, 0(t1)
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	add	s0, t1, s0
	ld	s0, 0(s0)
	add	t3, s0, t3
	lw	t3, 0(t3)
	bnez	a4, .LBB5_112
	j	.LBB5_118
.LBB5_105:                              #   in Loop: Header=BB5_58 Depth=1
	li	t3, 0
	li	s3, 0
	ld	t1, 16(sp)                      # 8-byte Folded Reload
	bnez	a4, .LBB5_111
# %bb.106:                              #   in Loop: Header=BB5_58 Depth=1
	beqz	t5, .LBB5_113
.LBB5_107:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	bne	t1, s8, .LBB5_115
# %bb.108:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	ld	t1, 0(t1)
	bnez	a5, .LBB5_117
	j	.LBB5_123
.LBB5_109:                              #   in Loop: Header=BB5_58 Depth=1
	ld	s3, 112(sp)                     # 8-byte Folded Reload
	ld	t1, 0(s3)
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	add	t1, t1, s0
	ld	t1, 0(t1)
	add	t1, t1, t3
	lw	t3, 0(t1)
	beqz	a4, .LBB5_118
# %bb.110:                              #   in Loop: Header=BB5_58 Depth=1
	mv	t1, s3
.LBB5_111:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 0(t1)
.LBB5_112:                              #   in Loop: Header=BB5_58 Depth=1
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	add	t1, t1, s0
	ld	t1, 0(t1)
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	slli	s0, s0, 2
	add	t1, t1, s0
	lw	s3, 0(t1)
	bnez	t5, .LBB5_107
.LBB5_113:                              #   in Loop: Header=BB5_58 Depth=1
	beqz	a5, .LBB5_119
# %bb.114:                              #   in Loop: Header=BB5_58 Depth=1
	li	t1, 0
	blt	s8, a6, .LBB5_124
	j	.LBB5_73
.LBB5_115:                              #   in Loop: Header=BB5_58 Depth=1
	beqz	a5, .LBB5_121
# %bb.116:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 112(sp)                     # 8-byte Folded Reload
	ld	t1, 0(t1)
.LBB5_117:                              #   in Loop: Header=BB5_58 Depth=1
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	add	t1, t1, s0
	ld	t1, 0(t1)
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	add	t1, t1, s0
	lw	t1, 0(t1)
	bge	s8, a6, .LBB5_73
	j	.LBB5_124
.LBB5_118:                              #   in Loop: Header=BB5_58 Depth=1
	li	s3, 0
	bnez	t5, .LBB5_107
	j	.LBB5_113
.LBB5_119:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	bne	t1, s8, .LBB5_121
# %bb.120:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	j	.LBB5_122
.LBB5_121:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 112(sp)                     # 8-byte Folded Reload
.LBB5_122:                              #   in Loop: Header=BB5_58 Depth=1
	ld	t1, 0(t1)
.LBB5_123:                              #   in Loop: Header=BB5_58 Depth=1
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	add	t1, t1, s0
	ld	t1, 0(t1)
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	add	t1, t1, s0
	lw	t1, 0(t1)
	bge	s8, a6, .LBB5_73
.LBB5_124:                              #   in Loop: Header=BB5_58 Depth=1
	li	t4, 2
	bne	a6, t4, .LBB5_127
# %bb.125:                              #   in Loop: Header=BB5_58 Depth=1
	beqz	s9, .LBB5_129
.LBB5_126:                              #   in Loop: Header=BB5_58 Depth=1
	sw	s3, 0(a7)
	mv	t2, t6
	j	.LBB5_57
.LBB5_127:                              #   in Loop: Header=BB5_58 Depth=1
	beqz	s9, .LBB5_57
.LBB5_128:                              #   in Loop: Header=BB5_58 Depth=1
	sw	t1, 0(a7)
	j	.LBB5_57
.LBB5_129:                              #   in Loop: Header=BB5_58 Depth=1
	mv	t2, t6
	j	.LBB5_57
.LBB5_130:                              #   in Loop: Header=BB5_58 Depth=1
	ld	s0, 0(s2)
	add	s0, s0, s11
	ld	s0, 0(s0)
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	mul	s4, s4, s10
	add	t2, t2, s4
	lw	t2, 424(t2)
	lh	s0, 2(s0)
	snez	t2, t2
	sllw	t2, s0, t2
	bnez	s9, .LBB5_102
	j	.LBB5_72
.LBB5_131:                              #   in Loop: Header=BB5_58 Depth=1
	srli	s0, t2, 15
	add	t2, t2, s0
	slli	t2, t2, 48
	srai	t2, t2, 49
	beqz	s9, .LBB5_72
	j	.LBB5_102
.LBB5_132:
	beqz	s9, .LBB5_136
# %bb.133:
	lw	a0, 148(sp)
	lw	a1, 144(sp)
	blt	a0, a1, .LBB5_135
# %bb.134:
	mv	a0, a1
.LBB5_135:
	lui	a1, %hi(pred_SAD_space)
	sw	a0, %lo(pred_SAD_space)(a1)
.LBB5_136:
	ld	ra, 344(sp)                     # 8-byte Folded Reload
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	ld	s1, 328(sp)                     # 8-byte Folded Reload
	ld	s2, 320(sp)                     # 8-byte Folded Reload
	ld	s3, 312(sp)                     # 8-byte Folded Reload
	ld	s4, 304(sp)                     # 8-byte Folded Reload
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	ld	s6, 288(sp)                     # 8-byte Folded Reload
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	ld	s8, 272(sp)                     # 8-byte Folded Reload
	ld	s9, 264(sp)                     # 8-byte Folded Reload
	ld	s10, 256(sp)                    # 8-byte Folded Reload
	ld	s11, 248(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 352
	ret
.Lfunc_end5:
	.size	SetMotionVectorPredictor, .Lfunc_end5-SetMotionVectorPredictor
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Init_Motion_Search_Module
.LCPI6_0:
	.quad	0x3fe62e42fefa39ef              # double 0.69314718055994529
.LCPI6_1:
	.quad	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
	.text
	.globl	Init_Motion_Search_Module
	.p2align	2
	.type	Init_Motion_Search_Module,@function
Init_Motion_Search_Module:              # @Init_Motion_Search_Module
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
	fsd	fs0, 16(sp)                     # 8-byte Folded Spill
	fsd	fs1, 8(sp)                      # 8-byte Folded Spill
	fsd	fs2, 0(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	s1, 32(a0)
	slli	a0, s1, 1
	addi	a0, a0, 1
	mulw	s0, a0, a0
	li	a0, 9
	bltu	a0, s0, .LBB6_2
# %bb.1:
	li	s0, 9
.LBB6_2:
	lui	s4, %hi(img)
	ld	a0, %lo(img)(s4)
	lw	a0, 36(a0)
	li	a1, 15
	bge	a0, a1, .LBB6_4
# %bb.3:
	li	a0, 16
	j	.LBB6_5
.LBB6_4:
	addi	a0, a0, 1
.LBB6_5:
	fcvt.d.wu	fa0, a0
	call	log
	lui	a0, %hi(.LCPI6_0)
	fld	fs2, %lo(.LCPI6_0)(a0)
	fdiv.d	fs0, fa0, fs2
	lui	a0, %hi(.LCPI6_1)
	fld	fs1, %lo(.LCPI6_1)(a0)
	li	s5, -1
	slli	a0, s1, 3
	addi	a0, a0, 13
	fcvt.d.w	fa0, a0
	call	log
	fdiv.d	fa5, fa0, fs2
	fadd.d	fa5, fa5, fs1
	fcvt.w.d	s3, fa5, rup
	slli	s2, s3, 1
	addi	a0, s2, 3
	srli	a0, a0, 1
	sllw	a0, s5, a0
	not	a0, a0
	lui	a1, %hi(max_mvd)
	ld	a2, %lo(img)(s4)
	sw	a0, %lo(max_mvd)(a1)
	lui	a0, 22
	addiw	a0, a0, 420
	add	a2, a2, a0
	lw	a0, 0(a2)
	lw	a1, 4(a2)
	blt	a1, a0, .LBB6_7
# %bb.6:
	mv	a0, a1
.LBB6_7:
	fadd.d	fs0, fs0, fs1
	slli	a0, a0, 6
	addi	a0, a0, 64
	lui	a1, %hi(byte_abs_range)
	sw	a0, %lo(byte_abs_range)(a1)
	li	a1, 2
	mv	a0, s0
	call	calloc
	lui	a1, %hi(spiral_search_x)
	sd	a0, %lo(spiral_search_x)(a1)
	bnez	a0, .LBB6_9
# %bb.8:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB6_9:
	fcvt.w.d	s4, fs0, rdn
	li	a1, 2
	mv	a0, s0
	call	calloc
	lui	a1, %hi(spiral_search_y)
	sd	a0, %lo(spiral_search_y)(a1)
	bnez	a0, .LBB6_11
# %bb.10:
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	no_mem_exit
.LBB6_11:
	addi	s6, s4, 1
	li	a1, 2
	mv	a0, s0
	call	calloc
	lui	a1, %hi(spiral_hpel_search_x)
	sd	a0, %lo(spiral_hpel_search_x)(a1)
	bnez	a0, .LBB6_13
# %bb.12:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	call	no_mem_exit
.LBB6_13:
	sllw	s5, s5, s6
	li	a1, 2
	mv	a0, s0
	call	calloc
	lui	a1, %hi(spiral_hpel_search_y)
	sd	a0, %lo(spiral_hpel_search_y)(a1)
	bnez	a0, .LBB6_15
# %bb.14:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	no_mem_exit
.LBB6_15:
	lui	a0, %hi(max_mvd)
	lw	a0, %lo(max_mvd)(a0)
	not	s0, s5
	slliw	a0, a0, 1
	addi	a0, a0, 1
	li	a1, 4
	call	calloc
	lui	a1, %hi(mvbits)
	sd	a0, %lo(mvbits)(a1)
	bnez	a0, .LBB6_17
# %bb.16:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	call	no_mem_exit
.LBB6_17:
	li	a1, 4
	mv	a0, s0
	call	calloc
	lui	a1, %hi(refbits)
	sd	a0, %lo(refbits)(a1)
	bnez	a0, .LBB6_19
# %bb.18:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	no_mem_exit
.LBB6_19:
	lui	s5, %hi(byte_abs_range)
	lw	a0, %lo(byte_abs_range)(s5)
	slliw	s0, s4, 1
	li	a1, 4
	call	calloc
	lui	s4, %hi(byte_abs)
	sd	a0, %lo(byte_abs)(s4)
	bnez	a0, .LBB6_21
# %bb.20:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	no_mem_exit
.LBB6_21:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a3, 36(a0)
	addi	s0, s0, 1
	lui	a0, %hi(motion_cost)
	addi	a0, a0, %lo(motion_cost)
	li	a1, 8
	li	a2, 2
	li	a4, 4
	call	get_mem4Dint
	lui	a0, %hi(max_mvd)
	lw	a0, %lo(max_mvd)(a0)
	lui	a2, %hi(mvbits)
	ld	a1, %lo(mvbits)(a2)
	lw	a3, %lo(byte_abs_range)(s5)
	slli	a0, a0, 2
	add	a1, a1, a0
	sd	a1, %lo(mvbits)(a2)
	srliw	a0, a3, 31
	ld	a2, %lo(byte_abs)(s4)
	add	a0, a3, a0
	sraiw	a0, a0, 1
	slli	a0, a0, 2
	add	a0, a2, a0
	sd	a0, %lo(byte_abs)(s4)
	li	a2, 1
	sw	a2, 0(a1)
	bltz	s3, .LBB6_29
# %bb.22:                               # %.preheader5
	addiw	s2, s2, 3
	li	a3, 3
	li	a4, 31
	j	.LBB6_24
.LBB6_23:                               #   in Loop: Header=BB6_24 Depth=1
	addiw	a3, a3, 2
	blt	s2, a3, .LBB6_29
.LBB6_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
	srliw	a5, a3, 1
	beq	a5, a4, .LBB6_23
# %bb.25:                               #   in Loop: Header=BB6_24 Depth=1
	sllw	a6, a2, a5
	srai	a5, a6, 1
	addi	a7, a5, 1
	blt	a6, a7, .LBB6_27
# %bb.26:                               #   in Loop: Header=BB6_24 Depth=1
	mv	a7, a6
.LBB6_27:                               #   in Loop: Header=BB6_24 Depth=1
	slli	a6, a5, 2
	sub	a5, a1, a6
	add	a6, a1, a6
	slli	a7, a7, 2
	sub	a7, a1, a7
.LBB6_28:                               #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	a3, 0(a6)
	sw	a3, 0(a5)
	addi	a5, a5, -4
	addi	a6, a6, 4
	bne	a5, a7, .LBB6_28
	j	.LBB6_23
.LBB6_29:
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	li	a3, 3
	sw	a2, 0(a1)
	bge	s0, a3, .LBB6_43
.LBB6_30:
	sw	zero, 0(a0)
	lui	a1, %hi(byte_abs_range)
	lw	a2, %lo(byte_abs_range)(a1)
	li	a3, 4
	blt	a2, a3, .LBB6_33
# %bb.31:                               # %.preheader
	addi	a2, a0, 4
	addi	a0, a0, -4
	li	a3, 1
	li	a4, 1
.LBB6_32:                               # =>This Inner Loop Header: Depth=1
	sw	a3, 0(a0)
	sw	a3, 0(a2)
	lw	a5, %lo(byte_abs_range)(a1)
	addi	a4, a4, 1
	srliw	a6, a5, 31
	add	a5, a5, a6
	sraiw	a5, a5, 1
	addi	a2, a2, 4
	addi	a3, a3, 1
	addi	a0, a0, -4
	blt	a4, a5, .LBB6_32
.LBB6_33:
	lui	a0, %hi(spiral_search_y)
	ld	a4, %lo(spiral_search_y)(a0)
	lui	a0, %hi(spiral_search_x)
	ld	a5, %lo(spiral_search_x)(a0)
	lui	a0, %hi(spiral_hpel_search_y)
	ld	a0, %lo(spiral_hpel_search_y)(a0)
	lui	a1, %hi(spiral_hpel_search_x)
	ld	a6, %lo(spiral_hpel_search_x)(a1)
	sh	zero, 0(a4)
	sh	zero, 0(a5)
	sh	zero, 0(a0)
	sh	zero, 0(a6)
	li	a1, 1
	bgtz	s1, .LBB6_35
# %bb.34:
	li	s1, 1
.LBB6_35:
	li	a2, 0
	addiw	s1, s1, 1
	addi	a3, a0, 2
	addi	a4, a4, 2
	addi	a5, a5, 2
	addi	a6, a6, 2
	li	t1, 2
	li	t4, 1
	li	a7, 1
.LBB6_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_37 Depth 2
                                        #     Child Loop BB6_39 Depth 2
	mv	t0, t1
	slli	t1, a2, 3
	add	t1, t1, a0
	addi	t5, t1, 14
	slli	s5, t4, 1
	add	s6, t1, s5
	negw	t1, a7
	subw	t6, a1, a7
	slli	t2, t1, 1
	slli	t3, a7, 1
	slli	s0, t4, 32
	add	s2, a3, s5
	add	s3, a4, s5
	add	s4, a5, s5
	add	s5, a6, s5
	addi	s6, s6, 6
	addiw	t4, t4, 2
.LBB6_37:                               #   Parent Loop BB6_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	s7, t4
	sh	t6, -2(s4)
	sh	t1, -2(s3)
	slli	t4, t6, 1
	sh	t4, -2(s5)
	sh	t2, -2(s2)
	sh	t6, 0(s4)
	sh	a7, 0(s3)
	sh	t4, 0(s5)
	sh	t3, 0(s2)
	addi	t6, t6, 1
	slli	t4, a1, 33
	add	s0, s0, t4
	addi	s2, s2, 4
	addi	s3, s3, 4
	addi	s4, s4, 4
	addi	s5, s5, 4
	addiw	t4, s7, 2
	bne	s2, s6, .LBB6_37
# %bb.38:                               #   in Loop: Header=BB6_36 Depth=1
	srai	t4, s0, 32
	slli	s7, s7, 1
	add	t6, a3, s7
	add	s0, a4, s7
	add	s2, a5, s7
	add	s3, a6, s7
	add	t5, t5, s7
	mv	s4, t1
.LBB6_39:                               #   Parent Loop BB6_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sh	t1, -2(s2)
	sh	s4, -2(s0)
	sh	t2, -2(s3)
	slli	s5, s4, 1
	sh	s5, -2(t6)
	sh	a7, 0(s2)
	sh	s4, 0(s0)
	sh	t3, 0(s3)
	addiw	t4, t4, 2
	sh	s5, 0(t6)
	addi	s4, s4, 1
	addi	t6, t6, 4
	addi	s0, s0, 4
	addi	s2, s2, 4
	addi	s3, s3, 4
	bne	t6, t5, .LBB6_39
# %bb.40:                               #   in Loop: Header=BB6_36 Depth=1
	addi	a7, a7, 1
	addiw	t1, t0, 1
	addi	a2, a2, 1
	bne	t0, s1, .LBB6_36
# %bb.41:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	beqz	a0, .LBB6_50
# %bb.42:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	fld	fs1, 8(sp)                      # 8-byte Folded Reload
	fld	fs2, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.LBB6_43:                               # %.preheader2
	li	a2, 2
	j	.LBB6_45
.LBB6_44:                               #   in Loop: Header=BB6_45 Depth=1
	addiw	a3, a3, 2
	blt	s0, a3, .LBB6_30
.LBB6_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_49 Depth 2
	srli	a4, a3, 1
	sllw	a6, a2, a4
	blt	a6, a2, .LBB6_44
# %bb.46:                               #   in Loop: Header=BB6_45 Depth=1
	addiw	a6, a6, -1
	srliw	a4, a6, 1
	addi	a5, a4, 1
	bltu	a6, a5, .LBB6_48
# %bb.47:                               #   in Loop: Header=BB6_45 Depth=1
	mv	a5, a6
.LBB6_48:                               #   in Loop: Header=BB6_45 Depth=1
	slli	a4, a4, 2
	add	a4, a1, a4
	slli	a5, a5, 2
	add	a5, a1, a5
.LBB6_49:                               #   Parent Loop BB6_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	a3, 0(a4)
	addi	a4, a4, 4
	bne	a4, a5, .LBB6_49
	j	.LBB6_44
.LBB6_50:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	fld	fs1, 8(sp)                      # 8-byte Folded Reload
	fld	fs2, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	tail	InitializeFastFullIntegerSearch
.Lfunc_end6:
	.size	Init_Motion_Search_Module, .Lfunc_end6-Init_Motion_Search_Module
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Clear_Motion_Search_Module      # -- Begin function Clear_Motion_Search_Module
	.p2align	2
	.type	Clear_Motion_Search_Module,@function
Clear_Motion_Search_Module:             # @Clear_Motion_Search_Module
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(max_mvd)
	lw	a0, %lo(max_mvd)(a0)
	lui	s0, %hi(mvbits)
	ld	a1, %lo(mvbits)(s0)
	lui	a2, %hi(byte_abs_range)
	lw	a2, %lo(byte_abs_range)(a2)
	slli	a0, a0, 2
	sub	a1, a1, a0
	sd	a1, %lo(mvbits)(s0)
	srliw	a0, a2, 31
	addw	a0, a2, a0
	lui	s1, %hi(byte_abs)
	ld	a1, %lo(byte_abs)(s1)
	slli	a2, a0, 1
	lui	a0, %hi(spiral_search_x)
	ld	a0, %lo(spiral_search_x)(a0)
	andi	a2, a2, -4
	sub	a1, a1, a2
	sd	a1, %lo(byte_abs)(s1)
	call	free
	lui	a0, %hi(spiral_search_y)
	ld	a0, %lo(spiral_search_y)(a0)
	call	free
	lui	a0, %hi(spiral_hpel_search_x)
	ld	a0, %lo(spiral_hpel_search_x)(a0)
	call	free
	lui	a0, %hi(spiral_hpel_search_y)
	ld	a0, %lo(spiral_hpel_search_y)(a0)
	call	free
	ld	a0, %lo(mvbits)(s0)
	call	free
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	call	free
	ld	a0, %lo(byte_abs)(s1)
	call	free
	lui	a0, %hi(motion_cost)
	ld	a0, %lo(motion_cost)(a0)
	li	a1, 8
	li	a2, 2
	call	free_mem4Dint
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	beqz	a0, .LBB7_2
# %bb.1:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB7_2:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	ClearFastFullIntegerSearch
.Lfunc_end7:
	.size	Clear_Motion_Search_Module, .Lfunc_end7-Clear_Motion_Search_Module
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FullPelBlockMotionSearch        # -- Begin function FullPelBlockMotionSearch
	.p2align	2
	.type	FullPelBlockMotionSearch,@function
FullPelBlockMotionSearch:               # @FullPelBlockMotionSearch
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
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, 8
	add	t1, t0, t1
	lw	t2, 12(t0)
	ld	t1, -1192(t1)
	li	t3, 528
	mul	t2, t2, t3
	add	t1, t1, t2
	lw	t1, 428(t1)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	ld	a0, 256(sp)
	addw	a2, t1, a2
	slli	a2, a2, 3
	lui	t1, %hi(listX)
	addi	t1, t1, %lo(listX)
	add	a2, t1, a2
	ld	a2, 0(a2)
	ld	t5, 248(sp)
	ld	t3, 240(sp)
	slli	t1, a1, 3
	add	a2, a2, t1
	ld	a2, 0(a2)
	lui	t1, 2
	addiw	t1, t1, -1800
	slli	t2, a0, 1
	lui	t4, %hi(input)
	ld	t6, %lo(input)(t4)
	sd	t3, 8(sp)                       # 8-byte Folded Spill
	lh	t3, 0(t3)
	slli	s0, a5, 3
	li	t4, 1
	add	s0, t6, s0
	bne	a5, t4, .LBB8_2
# %bb.1:
	addi	a5, t6, 2047
	lw	a5, 1089(a5)
	beqz	a5, .LBB8_33
.LBB8_2:
	li	s3, 0
.LBB8_3:
	lui	a1, %hi(active_pps)
	ld	a5, %lo(active_pps)(a1)
	lw	a1, 84(s0)
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	lw	t4, 192(a5)
	lh	a1, 0(t5)
	add	t1, a2, t1
	addi	t2, t2, 1
	addw	t3, t3, a3
	sd	t3, 88(sp)                      # 8-byte Folded Spill
	beqz	t4, .LBB8_6
# %bb.4:
	lw	t3, 24(t0)
	beqz	t3, .LBB8_8
# %bb.5:
	li	t4, 3
	beq	t3, t4, .LBB8_8
.LBB8_6:
	lw	a5, 196(a5)
	beqz	a5, .LBB8_10
# %bb.7:
	lw	a5, 24(t0)
	li	t0, 1
	bne	a5, t0, .LBB8_10
.LBB8_8:
	lw	a5, 1912(t6)
	beqz	a5, .LBB8_10
# %bb.9:
	lui	a5, 2
	addiw	a5, a5, -1752
	j	.LBB8_11
.LBB8_10:
	lui	a5, 2
	addiw	a5, a5, -1760
.LBB8_11:
	lw	s10, 88(s0)
	ld	t3, 272(sp)
	lw	s4, 0(t1)
	lw	s5, 4(t1)
	mulw	t1, t2, t2
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	srai	s11, t0, 2
	addw	t2, a1, a4
	add	a2, a2, a5
	ld	t0, 88(sp)                      # 8-byte Folded Reload
	sd	t5, 16(sp)                      # 8-byte Folded Spill
	bge	a0, t0, .LBB8_16
# %bb.12:
	not	a1, a0
	ld	a5, 128(sp)                     # 8-byte Folded Reload
	subw	a5, a1, a5
	addw	a5, s4, a5
	bge	t0, a5, .LBB8_16
# %bb.13:
	bge	a0, t2, .LBB8_16
# %bb.14:
	add	a1, s5, a1
	subw	a0, a1, s10
	bge	t2, a0, .LBB8_16
# %bb.15:
	lui	s1, %hi(FastLineX)
	addi	s1, s1, %lo(FastLineX)
	j	.LBB8_17
.LBB8_16:
	lui	s1, %hi(UMVLineX)
	addi	s1, s1, %lo(UMVLineX)
.LBB8_17:
	li	s0, 0
	li	a5, 0
	lw	s6, 264(sp)
	ld	s7, 0(a2)
	slli	a0, a3, 2
	negw	a1, a6
	subw	a6, a1, a0
	slli	a0, a4, 2
	negw	a1, a7
	subw	a7, a1, a0
	srai	a0, t3, 12
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	addi	a0, s11, -1
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	a0, a0, 8
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	t3, 56(sp)                      # 8-byte Folded Spill
	sd	t1, 48(sp)                      # 8-byte Folded Spill
	sd	t2, 40(sp)                      # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	sd	a7, 24(sp)                      # 8-byte Folded Spill
	j	.LBB8_20
.LBB8_18:                               #   in Loop: Header=BB8_20 Depth=1
	mv	a5, a0
	mv	s6, s9
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	t0, 88(sp)                      # 8-byte Folded Reload
	ld	t3, 56(sp)                      # 8-byte Folded Reload
	ld	t1, 48(sp)                      # 8-byte Folded Reload
	ld	t2, 40(sp)                      # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 24(sp)                      # 8-byte Folded Reload
.LBB8_19:                               #   in Loop: Header=BB8_20 Depth=1
	addi	s0, s0, 1
	bgeu	s0, t1, .LBB8_30
.LBB8_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_23 Depth 2
                                        #       Child Loop BB8_25 Depth 3
	lui	a0, %hi(spiral_search_x)
	ld	a0, %lo(spiral_search_x)(a0)
	lui	a1, %hi(spiral_search_y)
	ld	a1, %lo(spiral_search_y)(a1)
	slli	a2, s0, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	add	a1, a1, a2
	lh	a1, 0(a1)
	addw	s8, t0, a0
	addw	s2, t2, a1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s8, 2
	addw	a1, a6, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	addw	a2, a7, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, t3
	sraiw	a0, a0, 16
	xor	a1, s8, a3
	seqz	a1, a1
	and	a1, s3, a1
	xor	a2, s2, a4
	seqz	a2, a2
	and	a1, a1, a2
	neg	a1, a1
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	and	a1, a1, a2
	sub	s9, a0, a1
	bge	s9, s6, .LBB8_19
# %bb.21:                               #   in Loop: Header=BB8_20 Depth=1
	sd	a5, 96(sp)                      # 8-byte Folded Spill
	blez	s10, .LBB8_28
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB8_20 Depth=1
	li	s3, 0
.LBB8_23:                               #   Parent Loop BB8_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_25 Depth 3
	addw	a2, s2, s3
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	mv	a1, s7
	mv	a3, s8
	mv	a4, s5
	mv	a5, s4
	jalr	s1
	blez	s11, .LBB8_26
# %bb.24:                               #   in Loop: Header=BB8_23 Depth=2
	slli	a1, s3, 3
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
.LBB8_25:                               #   Parent Loop BB8_20 Depth=1
                                        #     Parent Loop BB8_23 Depth=2
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
	add	a4, a4, s9
	add	a5, a5, a6
	add	a4, a4, a5
	add	s9, a4, a7
	addi	a0, a0, 8
	addi	a1, a1, 8
	bne	a0, a3, .LBB8_25
.LBB8_26:                               #   in Loop: Header=BB8_23 Depth=2
	sext.w	a0, s9
	bge	a0, s6, .LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_23 Depth=2
	addi	s3, s3, 1
	blt	s3, s10, .LBB8_23
.LBB8_28:                               #   in Loop: Header=BB8_20 Depth=1
	sext.w	s9, s9
	mv	a0, s0
	blt	s9, s6, .LBB8_18
# %bb.29:                               #   in Loop: Header=BB8_20 Depth=1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	mv	s9, s6
	j	.LBB8_18
.LBB8_30:
	sext.w	a0, a5
	beqz	a0, .LBB8_32
# %bb.31:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	lh	a2, 0(a4)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(a4)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB8_32:
	mv	a0, s6
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
	addi	sp, sp, 240
	ret
.LBB8_33:
	lw	a5, 24(t0)
	addi	a5, a5, -1
	snez	a5, a5
	seqz	a1, a1
	and	s3, a1, a5
	j	.LBB8_3
.Lfunc_end8:
	.size	FullPelBlockMotionSearch, .Lfunc_end8-FullPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FastFullPelBlockMotionSearch    # -- Begin function FastFullPelBlockMotionSearch
	.p2align	2
	.type	FastFullPelBlockMotionSearch,@function
FastFullPelBlockMotionSearch:           # @FastFullPelBlockMotionSearch
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
	lui	s6, %hi(img)
	ld	a0, %lo(img)(s6)
	ld	s3, 80(sp)
	lw	t0, 172(a0)
	lw	t1, 168(a0)
	lui	a0, %hi(BlockSAD)
	ld	a0, %lo(BlockSAD)(a0)
	subw	a4, a4, t0
	subw	a3, a3, t1
	slli	s4, a2, 3
	add	a0, a0, s4
	ld	a0, 0(a0)
	sraiw	a3, a3, 2
	addw	a3, a4, a3
	slli	a4, a1, 3
	add	a0, a0, a4
	ld	a0, 0(a0)
	lui	a4, %hi(search_setup_done)
	ld	a4, %lo(search_setup_done)(a4)
	slli	a5, a5, 3
	add	a0, a0, a5
	ld	a0, 0(a0)
	add	a4, a4, s4
	ld	a4, 0(a4)
	slli	a3, a3, 3
	add	a0, a0, a3
	slli	s5, a1, 2
	add	a4, a4, s5
	lw	a3, 0(a4)
	ld	s2, 0(a0)
	mv	s0, a7
	mv	s1, a6
	bnez	a3, .LBB9_2
# %bb.1:
	mv	a0, a1
	mv	a1, a2
	call	SetupFastFullPelSearch
	ld	a0, %lo(img)(s6)
	lw	t1, 168(a0)
	lw	t0, 172(a0)
.LBB9_2:
	lui	a0, %hi(search_center_x)
	ld	a0, %lo(search_center_x)(a0)
	add	a0, a0, s4
	ld	a1, 0(a0)
	lui	a0, %hi(search_center_y)
	ld	a3, %lo(search_center_y)(a0)
	ld	a0, 96(sp)
	ld	a2, 88(sp)
	add	a1, a1, s5
	add	a3, a3, s4
	ld	a3, 0(a3)
	lui	a4, %hi(input)
	ld	a4, %lo(input)(a4)
	lw	a5, 0(a1)
	add	a3, a3, s5
	lw	t3, 0(a3)
	addi	a1, a4, 2047
	lw	a3, 1089(a1)
	lui	a1, %hi(mvbits)
	ld	a1, %lo(mvbits)(a1)
	slli	s3, s3, 1
	beqz	a3, .LBB9_4
# %bb.3:
	li	a3, 0
	j	.LBB9_7
.LBB9_4:
	lui	a3, %hi(pos_00)
	ld	a3, %lo(pos_00)(a3)
	add	a3, a3, s4
	ld	a3, 0(a3)
	add	a3, a3, s5
	lw	a3, 0(a3)
	slli	a4, s1, 2
	sub	a4, a1, a4
	lw	a4, 0(a4)
	slli	a6, s0, 2
	sub	a6, a1, a6
	lw	a6, 0(a6)
	slli	a7, a3, 2
	add	a7, s2, a7
	lw	a7, 0(a7)
	add	a4, a6, a4
	mul	a4, a4, a0
	sraiw	a4, a4, 16
	addw	a4, a4, a7
	slt	a6, a4, a2
	negw	a6, a6
	blt	a4, a2, .LBB9_6
# %bb.5:
	mv	a4, a2
.LBB9_6:
	and	a3, a6, a3
	mv	a2, a4
.LBB9_7:
	li	t2, 0
	ld	a4, 72(sp)
	ld	a6, 64(sp)
	subw	a7, a5, t1
	subw	a5, t3, t0
	lui	t0, %hi(spiral_search_x)
	ld	t1, %lo(spiral_search_x)(t0)
	lui	t0, %hi(spiral_search_y)
	ld	t0, %lo(spiral_search_y)(t0)
	addi	s3, s3, 1
	mul	t3, s3, s3
	slli	t3, t3, 32
	srli	t3, t3, 32
	seqz	t4, t3
	add	t3, t3, t4
	slli	t3, t3, 2
	add	t3, s2, t3
	mv	t4, t1
	mv	t5, t0
	j	.LBB9_10
.LBB9_8:                                #   in Loop: Header=BB9_10 Depth=1
	mv	a3, s3
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=1
	addi	s2, s2, 4
	addiw	t2, t2, 1
	addi	t5, t5, 2
	addi	t4, t4, 2
	beq	s2, t3, .LBB9_13
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	lw	s3, 0(s2)
	sext.w	t6, a2
	bge	s3, t6, .LBB9_9
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=1
	lh	a2, 0(t4)
	lh	s4, 0(t5)
	add	a2, a7, a2
	add	s4, a5, s4
	slli	a2, a2, 2
	subw	a2, a2, s1
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	slli	s4, s4, 2
	subw	s4, s4, s0
	slli	s4, s4, 2
	add	s4, a1, s4
	lw	s4, 0(s4)
	add	a2, s4, a2
	mul	a2, a2, a0
	sraiw	a2, a2, 16
	addw	a2, a2, s3
	mv	s3, t2
	blt	a2, t6, .LBB9_8
# %bb.12:                               #   in Loop: Header=BB9_10 Depth=1
	mv	s3, a3
	mv	a2, t6
	j	.LBB9_8
.LBB9_13:
	slli	a3, a3, 1
	add	t1, t1, a3
	lh	a0, 0(t1)
	add	a0, a0, a7
	sh	a0, 0(a6)
	add	a3, t0, a3
	lh	a0, 0(a3)
	add	a5, a0, a5
	sext.w	a0, a2
	sh	a5, 0(a4)
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
	.size	FastFullPelBlockMotionSearch, .Lfunc_end9-FastFullPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SATD                            # -- Begin function SATD
	.p2align	2
	.type	SATD,@function
SATD:                                   # @SATD
# %bb.0:
	beqz	a1, .LBB10_2
# %bb.1:
	addi	sp, sp, -80
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	sd	s3, 48(sp)                      # 8-byte Folded Spill
	sd	s4, 40(sp)                      # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	sd	s8, 8(sp)                       # 8-byte Folded Spill
	lw	a1, 0(a0)
	lw	a2, 48(a0)
	lw	a3, 4(a0)
	lw	a4, 52(a0)
	lw	a5, 8(a0)
	lw	a6, 56(a0)
	lw	a7, 12(a0)
	lw	t0, 60(a0)
	add	t1, a2, a1
	add	t2, a4, a3
	add	t3, a6, a5
	add	t4, t0, a7
	lw	t5, 16(a0)
	lw	t6, 32(a0)
	lw	s0, 20(a0)
	lw	s1, 36(a0)
	lw	s2, 24(a0)
	lw	s3, 40(a0)
	lw	s4, 28(a0)
	lw	a0, 44(a0)
	add	s5, t6, t5
	add	s6, s1, s0
	add	s7, s3, s2
	add	s8, a0, s4
	subw	t5, t5, t6
	subw	s0, s0, s1
	subw	t6, s2, s3
	subw	a0, s4, a0
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, a5, a6
	subw	a4, a7, t0
	add	a5, s5, t1
	add	a6, s6, t2
	add	a7, s7, t3
	add	t0, s8, t4
	add	s1, t5, a1
	add	s2, s0, a3
	add	s3, t6, a2
	add	s4, a0, a4
	subw	t1, t1, s5
	subw	t2, t2, s6
	subw	t3, t3, s7
	subw	t4, t4, s8
	subw	a1, a1, t5
	subw	a3, a3, s0
	subw	a2, a2, t6
	subw	a4, a4, a0
	add	a0, t0, a5
	add	t5, a7, a6
	subw	a6, a6, a7
	subw	a5, a5, t0
	add	a7, s4, s1
	add	t0, s3, s2
	subw	t6, s2, s3
	subw	s0, s1, s4
	add	s1, t4, t1
	add	s2, t3, t2
	subw	t2, t2, t3
	subw	t1, t1, t4
	add	t3, a4, a1
	add	t4, a2, a3
	subw	a3, a3, a2
	subw	a1, a1, a4
	addw	a2, a0, t5
	subw	a4, a0, t5
	addw	t5, a5, a6
	subw	a5, a5, a6
	addw	a6, a7, t0
	subw	a7, a7, t0
	addw	t0, s0, t6
	subw	s0, s0, t6
	addw	t6, s1, s2
	subw	s1, s1, s2
	addw	s2, t1, t2
	lui	a0, %hi(byte_abs)
	ld	a0, %lo(byte_abs)(a0)
	subw	t1, t1, t2
	addw	t2, t3, t4
	slli	a2, a2, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	subw	t3, t3, t4
	addw	t4, a1, a3
	subw	a1, a1, a3
	add	a2, a4, a2
	slli	t5, t5, 2
	add	t5, a0, t5
	lw	a3, 0(t5)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a4, 0(a5)
	slli	a6, a6, 2
	add	a6, a0, a6
	lw	a5, 0(a6)
	slli	a7, a7, 2
	add	a7, a0, a7
	lw	a6, 0(a7)
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	a7, 0(t0)
	add	a3, a4, a3
	add	a2, a3, a2
	add	a5, a6, a5
	add	a5, a7, a5
	slli	s0, s0, 2
	add	s0, a0, s0
	lw	a3, 0(s0)
	slli	t6, t6, 2
	add	t6, a0, t6
	lw	a4, 0(t6)
	slli	s1, s1, 2
	add	s1, a0, s1
	lw	a6, 0(s1)
	slli	s2, s2, 2
	add	s2, a0, s2
	lw	a7, 0(s2)
	add	a2, a5, a2
	add	a3, a4, a3
	add	a3, a6, a3
	add	a3, a7, a3
	add	a2, a3, a2
	slli	t1, t1, 2
	add	t1, a0, t1
	lw	a3, 0(t1)
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	a4, 0(t2)
	slli	t3, t3, 2
	add	t3, a0, t3
	lw	a5, 0(t3)
	slli	t4, t4, 2
	add	t4, a0, t4
	lw	a6, 0(t4)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	add	a3, a4, a3
	add	a3, a5, a3
	add	a3, a6, a3
	add	a0, a0, a3
	add	a0, a0, a2
	addi	a0, a0, 1
	sraiw	a0, a0, 1
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.LBB10_2:
	lui	a1, %hi(byte_abs)
	lw	a2, 0(a0)
	ld	a1, %lo(byte_abs)(a1)
	lw	a3, 4(a0)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	slli	a3, a3, 2
	lw	a4, 8(a0)
	add	a3, a1, a3
	lw	a3, 0(a3)
	lw	a5, 12(a0)
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	slli	a5, a5, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	lw	a6, 16(a0)
	add	a2, a3, a2
	add	a4, a5, a4
	slli	a6, a6, 2
	lw	a3, 20(a0)
	add	a6, a1, a6
	lw	a5, 0(a6)
	lw	a6, 24(a0)
	slli	a3, a3, 2
	add	a3, a1, a3
	lw	a3, 0(a3)
	slli	a6, a6, 2
	add	a6, a1, a6
	lw	a6, 0(a6)
	add	a2, a4, a2
	add	a3, a3, a5
	lw	a4, 28(a0)
	add	a3, a6, a3
	add	a2, a3, a2
	lw	a3, 32(a0)
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	a4, 0(a4)
	slli	a3, a3, 2
	lw	a5, 36(a0)
	add	a3, a1, a3
	lw	a3, 0(a3)
	lw	a6, 40(a0)
	slli	a5, a5, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	slli	a6, a6, 2
	add	a6, a1, a6
	lw	a6, 0(a6)
	add	a3, a3, a4
	add	a3, a5, a3
	lw	a4, 44(a0)
	add	a3, a6, a3
	add	a2, a3, a2
	lw	a3, 48(a0)
	slli	a4, a4, 2
	add	a4, a1, a4
	lw	a5, 52(a0)
	slli	a3, a3, 2
	add	a3, a1, a3
	lw	a6, 56(a0)
	slli	a5, a5, 2
	lw	a0, 60(a0)
	add	a5, a1, a5
	slli	a6, a6, 2
	add	a6, a1, a6
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a1, 0(a4)
	lw	a3, 0(a3)
	lw	a4, 0(a5)
	lw	a5, 0(a6)
	lw	a0, 0(a0)
	add	a1, a3, a1
	add	a1, a4, a1
	add	a1, a5, a1
	add	a0, a0, a1
	addw	a0, a0, a2
	ret
.Lfunc_end10:
	.size	SATD, .Lfunc_end10-SATD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SATD8X8                         # -- Begin function SATD8X8
	.p2align	2
	.type	SATD8X8,@function
SATD8X8:                                # @SATD8X8
# %bb.0:
	addi	sp, sp, -256
	beqz	a1, .LBB11_8
# %bb.1:                                # %.preheader1
	addi	a1, a0, 16
	addi	a2, sp, 16
	addi	a0, a0, 272
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	lw	a3, -16(a1)
	lw	a4, 0(a1)
	lw	a5, -12(a1)
	lw	a6, 4(a1)
	lw	a7, -8(a1)
	lw	t0, 8(a1)
	lw	t1, -4(a1)
	lw	t2, 12(a1)
	add	t3, a4, a3
	add	t4, a6, a5
	add	t5, t0, a7
	add	t6, t2, t1
	subw	a3, a3, a4
	subw	a4, a5, a6
	subw	a5, a7, t0
	subw	a6, t1, t2
	add	a7, t5, t3
	add	t0, t6, t4
	subw	t3, t3, t5
	subw	t4, t4, t6
	add	t1, a5, a3
	add	t2, a6, a4
	subw	a3, a3, a5
	subw	a4, a4, a6
	add	a5, t0, a7
	sw	a5, -16(a2)
	subw	a5, a7, t0
	sw	a5, -12(a2)
	add	a5, t4, t3
	sw	a5, -8(a2)
	subw	t3, t3, t4
	sw	t3, -4(a2)
	add	a5, t2, t1
	sw	a5, 0(a2)
	subw	a5, t1, t2
	sw	a5, 4(a2)
	add	a5, a4, a3
	sw	a5, 8(a2)
	subw	a3, a3, a4
	sw	a3, 12(a2)
	addi	a1, a1, 32
	addi	a2, a2, 32
	bne	a1, a0, .LBB11_2
# %bb.3:
	addi	a0, sp, 128
	addi	a1, sp, 160
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	lw	a2, -128(a0)
	lw	a3, 0(a0)
	lw	a4, -96(a0)
	lw	a5, 32(a0)
	lw	a6, -64(a0)
	lw	a7, 64(a0)
	lw	t0, -32(a0)
	lw	t1, 96(a0)
	add	t2, a3, a2
	add	t3, a5, a4
	add	t4, a7, a6
	add	t5, t1, t0
	subw	a2, a2, a3
	subw	a4, a4, a5
	subw	a3, a6, a7
	subw	a5, t0, t1
	add	a6, t4, t2
	add	a7, t5, t3
	subw	t0, t2, t4
	subw	t3, t3, t5
	add	t1, a3, a2
	add	t2, a5, a4
	subw	a2, a2, a3
	subw	a4, a4, a5
	add	a3, a7, a6
	sw	a3, -128(a0)
	subw	a3, a6, a7
	sw	a3, -96(a0)
	add	a3, t3, t0
	sw	a3, -64(a0)
	subw	a3, t0, t3
	sw	a3, -32(a0)
	add	a3, t2, t1
	sw	a3, 0(a0)
	subw	a3, t1, t2
	sw	a3, 32(a0)
	add	a3, a4, a2
	sw	a3, 64(a0)
	subw	a2, a2, a4
	sw	a2, 96(a0)
	addi	a0, a0, 4
	bne	a0, a1, .LBB11_4
# %bb.5:                                # %.preheader
	li	a2, 0
	addi	a0, sp, 16
	addi	a1, sp, 272
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	lw	a3, -16(a0)
	sraiw	a4, a3, 31
	lw	a5, -12(a0)
	xor	a3, a3, a4
	subw	a4, a4, a2
	subw	a3, a3, a4
	sraiw	a2, a5, 31
	lw	a4, -8(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, -4(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, 0(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, 4(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, 8(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, 12(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a2, a4, a3
	sraiw	a3, a5, 31
	xor	a5, a5, a3
	subw	a5, a5, a3
	addi	a0, a0, 32
	add	a2, a5, a2
	bne	a0, a1, .LBB11_6
# %bb.7:
	addi	a2, a2, 2
	srliw	a1, a2, 2
	mv	a0, a1
	addi	sp, sp, 256
	ret
.LBB11_8:
	lui	a1, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a1)
	li	a1, 0
	addi	a3, a0, 256
.LBB11_9:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a0)
	slli	a4, a4, 2
	add	a4, a2, a4
	lw	a4, 0(a4)
	addi	a0, a0, 4
	addw	a1, a4, a1
	bne	a0, a3, .LBB11_9
# %bb.10:
	mv	a0, a1
	addi	sp, sp, 256
	ret
.Lfunc_end11:
	.size	SATD8X8, .Lfunc_end11-SATD8X8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	find_SATD                       # -- Begin function find_SATD
	.p2align	2
	.type	find_SATD,@function
find_SATD:                              # @find_SATD
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	addi	a2, a1, -2
	li	a3, 2
	bltu	a2, a3, .LBB12_4
# %bb.1:
	li	a2, 4
	beq	a1, a2, .LBB12_6
# %bb.2:
	li	a3, 1
	li	a2, -1
	bne	a1, a3, .LBB12_5
# %bb.3:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	s0, 24(a1)
	mv	s1, a0
	mv	a1, s0
	call	SATD8X8
	mv	s2, a0
	addi	a0, s1, 256
	mv	a1, s0
	call	SATD8X8
	add	s3, a0, s2
	addi	a0, s1, 512
	mv	a1, s0
	call	SATD8X8
	mv	s2, a0
	addi	a0, s1, 768
	mv	a1, s0
	call	SATD8X8
	add	a0, s2, a0
	addw	a2, s3, a0
	j	.LBB12_5
.LBB12_4:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	s0, 24(a1)
	mv	s1, a0
	mv	a1, s0
	call	SATD8X8
	mv	s2, a0
	addi	a0, s1, 256
	mv	a1, s0
	call	SATD8X8
	addw	a2, a0, s2
.LBB12_5:
	mv	a0, a2
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB12_6:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a1, 24(a1)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	SATD8X8
.Lfunc_end12:
	.size	find_SATD, .Lfunc_end12-find_SATD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SubPelBlockMotionSearch         # -- Begin function SubPelBlockMotionSearch
	.p2align	2
	.type	SubPelBlockMotionSearch,@function
SubPelBlockMotionSearch:                # @SubPelBlockMotionSearch
# %bb.0:
	addi	sp, sp, -1456
	sd	ra, 1448(sp)                    # 8-byte Folded Spill
	sd	s0, 1440(sp)                    # 8-byte Folded Spill
	sd	s1, 1432(sp)                    # 8-byte Folded Spill
	sd	s2, 1424(sp)                    # 8-byte Folded Spill
	sd	s3, 1416(sp)                    # 8-byte Folded Spill
	sd	s4, 1408(sp)                    # 8-byte Folded Spill
	sd	s5, 1400(sp)                    # 8-byte Folded Spill
	sd	s6, 1392(sp)                    # 8-byte Folded Spill
	sd	s7, 1384(sp)                    # 8-byte Folded Spill
	sd	s8, 1376(sp)                    # 8-byte Folded Spill
	sd	s9, 1368(sp)                    # 8-byte Folded Spill
	sd	s10, 1360(sp)                   # 8-byte Folded Spill
	sd	s11, 1352(sp)                   # 8-byte Folded Spill
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	t0, 64
	sd	t0, 168(sp)                     # 8-byte Folded Spill
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	beq	a5, a0, .LBB13_2
# %bb.1:
	li	a0, 128
	sd	a0, 168(sp)                     # 8-byte Folded Spill
.LBB13_2:
	lui	a0, %hi(input)
	ld	s0, %lo(input)(a0)
	ld	s8, 1472(sp)
	ld	s1, 1464(sp)
	ld	s2, 1456(sp)
	addi	a0, s0, 2047
	lw	a5, 1089(a0)
	lui	t0, %hi(img)
	ld	t6, %lo(img)(t0)
	beqz	a5, .LBB13_73
.LBB13_3:
	li	s9, 0
.LBB13_4:
	lw	a5, 24(s0)
	mv	t1, s8
	bgtz	s8, .LBB13_6
# %bb.5:
	li	t1, 1
.LBB13_6:
	ld	t0, 40(sp)                      # 8-byte Folded Reload
	slli	t0, t0, 3
	beqz	a5, .LBB13_8
# %bb.7:
	mv	s8, t1
.LBB13_8:
	lui	t1, 8
	add	t1, t6, t1
	ld	t1, -1192(t1)
	lw	t2, 12(t6)
	lui	t3, %hi(active_pps)
	ld	t3, %lo(active_pps)(t3)
	li	t4, 528
	mul	t2, t2, t4
	add	t1, t1, t2
	lw	t2, 192(t3)
	lw	t1, 428(t1)
	add	t0, s0, t0
	slli	a3, a3, 2
	beqz	t2, .LBB13_11
# %bb.9:
	lw	t4, 24(t6)
	li	t2, 1
	beqz	t4, .LBB13_13
# %bb.10:
	li	t5, 3
	beq	t4, t5, .LBB13_13
.LBB13_11:
	lw	t2, 196(t3)
	beqz	t2, .LBB13_13
# %bb.12:
	lw	t2, 24(t6)
	addi	t2, t2, -1
	seqz	t2, t2
.LBB13_13:
	slli	t3, a4, 2
	addi	a4, a5, -1
	addw	a2, t1, a2
	slli	a2, a2, 3
	lui	t1, %hi(listX)
	addi	t1, t1, %lo(listX)
	add	a2, t1, a2
	ld	a2, 0(a2)
	lw	t1, 84(t0)
	sd	t1, 256(sp)                     # 8-byte Folded Spill
	lw	t0, 88(t0)
	sd	t0, 184(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	addi	a3, a3, 16
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	lui	a3, 2
	addiw	a2, a3, -1800
	add	a2, a1, a2
	beqz	t2, .LBB13_16
# %bb.14:
	lw	t0, 1912(s0)
	beqz	t0, .LBB13_16
# %bb.15:
	addiw	a3, a3, -1736
	j	.LBB13_17
.LBB13_16:
	addiw	a3, a3, -1744
.LBB13_17:
	addi	t3, t3, 16
	sd	t3, 80(sp)                      # 8-byte Folded Spill
	lw	t1, 0(a2)
	lw	t0, 4(a2)
	snez	t6, a4
	add	a1, a1, a3
	slli	s6, t1, 2
	slli	s7, t0, 2
	lh	a2, 0(s2)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	subw	a3, t1, a3
	slli	t4, a3, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a4, t0, a3
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	addw	a3, a3, a2
	li	t0, 2
	slli	t3, a4, 2
	blt	a3, t0, .LBB13_22
# %bb.18:
	addiw	a4, t4, 31
	bge	a3, a4, .LBB13_22
# %bb.19:
	lh	a3, 0(s1)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	li	a4, 2
	blt	a3, a4, .LBB13_22
# %bb.20:
	addiw	a4, t3, 31
	bge	a3, a4, .LBB13_22
# %bb.21:
	lui	a3, %hi(FastLine4X)
	addi	a3, a3, %lo(FastLine4X)
	j	.LBB13_23
.LBB13_22:
	lui	a3, %hi(UMVLine4X)
	addi	a3, a3, %lo(UMVLine4X)
.LBB13_23:
	addi	t5, a5, -2
	lw	a0, 1845(a0)
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	slti	t2, a4, 5
	ld	t1, 1496(sp)
	lw	t0, 1488(sp)
	ld	s5, 0(a1)
	addiw	s6, s6, 28
	addiw	s7, s7, 28
	lui	s3, %hi(get_line)
	sd	a3, %lo(get_line)(s3)
	sd	a7, 136(sp)                     # 8-byte Folded Spill
	sd	a6, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	t1, 104(sp)                     # 8-byte Folded Spill
	bge	t6, s8, .LBB13_41
# %bb.24:
	sd	t4, 16(sp)                      # 8-byte Folded Spill
	sd	t3, 24(sp)                      # 8-byte Folded Spill
	li	t3, 0
	sd	t5, 8(sp)                       # 8-byte Folded Spill
	seqz	a1, t5
	addi	a1, a1, -1
	and	a1, a1, a5
	snez	a0, a0
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	snez	a1, a1
	sd	t2, 32(sp)                      # 8-byte Folded Spill
	and	a0, a0, t2
	and	a0, a0, a1
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	srai	a5, t1, 12
	lui	t2, %hi(spiral_hpel_search_x)
	lui	t4, %hi(spiral_hpel_search_y)
	lui	t5, %hi(mvbits)
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	a5, 48(sp)                      # 8-byte Folded Spill
	j	.LBB13_27
.LBB13_25:                              #   in Loop: Header=BB13_27 Depth=1
	mv	t3, a0
	ld	a7, 136(sp)                     # 8-byte Folded Reload
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	lui	t2, %hi(spiral_hpel_search_x)
	lui	t4, %hi(spiral_hpel_search_y)
	lui	t5, %hi(mvbits)
.LBB13_26:                              #   in Loop: Header=BB13_27 Depth=1
	addi	t6, t6, 1
	beq	t6, s8, .LBB13_42
.LBB13_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_31 Depth 2
                                        #       Child Loop BB13_35 Depth 3
	ld	a0, %lo(spiral_hpel_search_x)(t2)
	lh	a1, 0(s2)
	slli	a2, t6, 1
	ld	a3, %lo(spiral_hpel_search_y)(t4)
	add	a0, a0, a2
	lh	a0, 0(a0)
	lh	a4, 0(s1)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t5)
	add	a1, a2, a4
	subw	a2, a0, a6
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	mul	a2, a2, t1
	sraiw	a2, a2, 16
	seqz	a3, t6
	and	a3, s9, a3
	neg	a3, a3
	and	a3, a3, a5
	sub	s4, a2, a3
	bge	s4, t0, .LBB13_26
# %bb.28:                               #   in Loop: Header=BB13_27 Depth=1
	sd	t3, 72(sp)                      # 8-byte Folded Spill
	sd	t6, 96(sp)                      # 8-byte Folded Spill
	sd	t0, 248(sp)                     # 8-byte Folded Spill
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB13_37
# %bb.29:                               # %.preheader5
                                        #   in Loop: Header=BB13_27 Depth=1
	li	a3, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	j	.LBB13_31
.LBB13_30:                              #   in Loop: Header=BB13_31 Depth=2
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB13_37
.LBB13_31:                              #   Parent Loop BB13_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_35 Depth 3
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	sd	a3, 176(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB13_30
# %bb.32:                               #   in Loop: Header=BB13_31 Depth=2
	li	s0, 0
	li	s1, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addw	s8, a1, a0
	addiw	a0, s8, 4
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	li	s11, 6
	ld	s2, 152(sp)                     # 8-byte Folded Reload
	j	.LBB13_35
.LBB13_33:                              #   in Loop: Header=BB13_35 Depth=3
	andi	a0, s0, 4
	sltiu	a1, s1, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 328
	add	a1, a6, a0
	lw	a2, 276(sp)
	lw	a3, 272(sp)
	lw	a4, 268(sp)
	lw	a5, 264(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 280
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
	addi	a5, sp, 296
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
	addi	a4, sp, 312
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB13_34:                              #   in Loop: Header=BB13_35 Depth=3
	addi	s1, s1, 4
	addiw	s0, s0, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bge	s0, a0, .LBB13_30
.LBB13_35:                              #   Parent Loop BB13_27 Depth=1
                                        #     Parent Loop BB13_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s9)
	ld	a5, %lo(get_line)(s3)
	add	s10, a0, s11
	mv	a0, s5
	mv	a1, s8
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 264(sp)
	subw	a2, a2, a3
	sw	a2, 268(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 272(sp)
	ld	a2, 8(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 276(sp)
	add	s10, a2, s11
	mv	a0, s5
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 280(sp)
	subw	a2, a2, a3
	sw	a2, 284(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 288(sp)
	ld	a2, 16(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s10, a2, s11
	mv	a0, s5
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 296(sp)
	subw	a2, a2, a3
	sw	a2, 300(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 304(sp)
	ld	a2, 24(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 308(sp)
	add	s10, a2, s11
	mv	a0, s5
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	lhu	a3, -4(s10)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 312(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s10)
	lhu	a2, 16(a0)
	lhu	a4, 0(s10)
	lhu	a0, 24(a0)
	sw	a3, 316(sp)
	subw	a1, a1, a2
	sw	a1, 320(sp)
	subw	a4, a4, a0
	sw	a4, 324(sp)
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB13_33
# %bb.36:                               #   in Loop: Header=BB13_35 Depth=3
	lw	a1, 192(sp)                     # 8-byte Folded Reload
	addi	a0, sp, 264
	call	SATD
	addw	s4, a0, s4
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	bge	a0, s4, .LBB13_34
	j	.LBB13_39
.LBB13_37:                              #   in Loop: Header=BB13_27 Depth=1
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB13_39
# %bb.38:                               #   in Loop: Header=BB13_27 Depth=1
	addi	a0, sp, 328
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	call	find_SATD
	add	s4, a0, s4
.LBB13_39:                              #   in Loop: Header=BB13_27 Depth=1
	sext.w	t0, s4
	ld	t6, 96(sp)                      # 8-byte Folded Reload
	mv	a0, t6
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	blt	t0, a1, .LBB13_25
# %bb.40:                               #   in Loop: Header=BB13_27 Depth=1
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	mv	t0, a1
	j	.LBB13_25
.LBB13_41:
	slli	a2, a2, 48
	srli	a2, a2, 48
	j	.LBB13_45
.LBB13_42:
	lhu	a2, 0(s2)
	sext.w	a0, t3
	beqz	a0, .LBB13_44
# %bb.43:
	lui	a1, %hi(spiral_hpel_search_x)
	ld	a1, %lo(spiral_hpel_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lui	a3, %hi(spiral_hpel_search_y)
	ld	a3, %lo(spiral_hpel_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(s2)
	add	a0, a3, a0
	lh	a0, 0(a0)
	lh	a1, 0(s1)
	add	a0, a1, a0
	sh	a0, 0(s1)
	lhu	a2, 0(s2)
.LBB13_44:
	ld	t2, 32(sp)                      # 8-byte Folded Reload
	ld	t3, 24(sp)                      # 8-byte Folded Reload
	ld	t4, 16(sp)                      # 8-byte Folded Reload
	ld	t5, 8(sp)                       # 8-byte Folded Reload
.LBB13_45:
	lui	a0, %hi(input)
	ld	a3, %lo(input)(a0)
	lw	a0, 24(a3)
	li	a1, 2
	bne	a0, a1, .LBB13_47
# %bb.46:
	lui	a1, 524288
	addiw	t0, a1, -1
.LBB13_47:
	ld	a1, 1480(sp)
	snez	a5, t5
	slli	a2, a2, 48
	srai	a2, a2, 48
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	addw	a4, a4, a2
	addi	a2, a3, 2047
	blez	a4, .LBB13_52
# %bb.48:
	addiw	a3, t4, 32
	bge	a4, a3, .LBB13_52
# %bb.49:
	lh	a3, 0(s1)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	blez	a3, .LBB13_52
# %bb.50:
	addiw	a4, t3, 32
	bge	a3, a4, .LBB13_52
# %bb.51:
	lui	a3, %hi(FastLine4X)
	addi	a3, a3, %lo(FastLine4X)
	lw	a2, 1845(a2)
	lui	s3, %hi(get_line)
	sd	a3, %lo(get_line)(s3)
	blt	a5, a1, .LBB13_53
	j	.LBB13_72
.LBB13_52:
	lui	a3, %hi(UMVLine4X)
	addi	a3, a3, %lo(UMVLine4X)
	lw	a2, 1845(a2)
	lui	s3, %hi(get_line)
	sd	a3, %lo(get_line)(s3)
	bge	a5, a1, .LBB13_72
.LBB13_53:
	li	t3, 0
	snez	a2, a2
	snez	a0, a0
	and	a0, a0, t2
	and	a0, a2, a0
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 32
	srli	t2, a1, 32
	lui	t4, %hi(spiral_search_x)
	lui	t5, %hi(spiral_search_y)
	lui	t6, %hi(mvbits)
	sd	t2, 72(sp)                      # 8-byte Folded Spill
	j	.LBB13_56
.LBB13_54:                              #   in Loop: Header=BB13_56 Depth=1
	mv	t3, a0
	mv	t0, s4
	ld	a7, 136(sp)                     # 8-byte Folded Reload
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	ld	t2, 72(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(spiral_search_x)
	lui	t5, %hi(spiral_search_y)
	lui	t6, %hi(mvbits)
.LBB13_55:                              #   in Loop: Header=BB13_56 Depth=1
	addi	a5, a5, 1
	beq	a5, t2, .LBB13_70
.LBB13_56:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_60 Depth 2
                                        #       Child Loop BB13_64 Depth 3
	ld	a0, %lo(spiral_search_x)(t4)
	lh	a1, 0(s2)
	slli	a2, a5, 1
	ld	a3, %lo(spiral_search_y)(t5)
	add	a0, a0, a2
	lh	a0, 0(a0)
	lh	a4, 0(s1)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t6)
	add	a1, a2, a4
	subw	a2, a0, a6
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	mul	a2, a2, t1
	sraiw	s4, a2, 16
	bge	s4, t0, .LBB13_55
# %bb.57:                               #   in Loop: Header=BB13_56 Depth=1
	sd	t3, 96(sp)                      # 8-byte Folded Spill
	sd	a5, 144(sp)                     # 8-byte Folded Spill
	sd	t0, 248(sp)                     # 8-byte Folded Spill
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB13_66
# %bb.58:                               # %.preheader
                                        #   in Loop: Header=BB13_56 Depth=1
	li	a3, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	j	.LBB13_60
.LBB13_59:                              #   in Loop: Header=BB13_60 Depth=2
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB13_66
.LBB13_60:                              #   Parent Loop BB13_56 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_64 Depth 3
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	sd	a3, 192(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB13_59
# %bb.61:                               #   in Loop: Header=BB13_60 Depth=2
	li	s1, 0
	li	s0, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	s8, a1, a0
	addiw	a0, s8, 4
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	li	s11, 6
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	j	.LBB13_64
.LBB13_62:                              #   in Loop: Header=BB13_64 Depth=3
	andi	a0, s1, 4
	sltiu	a1, s0, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 328
	add	a1, a6, a0
	lw	a2, 276(sp)
	lw	a3, 272(sp)
	lw	a4, 268(sp)
	lw	a5, 264(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 280
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
	addi	a5, sp, 296
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
	addi	a4, sp, 312
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB13_63:                              #   in Loop: Header=BB13_64 Depth=3
	addi	s0, s0, 4
	addiw	s1, s1, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bge	s1, a0, .LBB13_59
.LBB13_64:                              #   Parent Loop BB13_56 Depth=1
                                        #     Parent Loop BB13_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s9)
	ld	a5, %lo(get_line)(s3)
	add	s10, a0, s11
	mv	a0, s5
	mv	a1, s8
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 264(sp)
	subw	a2, a2, a3
	sw	a2, 268(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 272(sp)
	ld	a2, 8(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 276(sp)
	add	s10, a2, s11
	mv	a0, s5
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 280(sp)
	subw	a2, a2, a3
	sw	a2, 284(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 288(sp)
	ld	a2, 16(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s10, a2, s11
	mv	a0, s5
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 296(sp)
	subw	a2, a2, a3
	sw	a2, 300(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 304(sp)
	ld	a2, 24(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 308(sp)
	add	s10, a2, s11
	mv	a0, s5
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s7
	mv	a4, s6
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	lhu	a3, -4(s10)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 312(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s10)
	lhu	a2, 16(a0)
	lhu	a4, 0(s10)
	lhu	a0, 24(a0)
	sw	a3, 316(sp)
	subw	a1, a1, a2
	sw	a1, 320(sp)
	subw	a4, a4, a0
	sw	a4, 324(sp)
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB13_62
# %bb.65:                               #   in Loop: Header=BB13_64 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 264
	call	SATD
	addw	s4, a0, s4
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	bge	a0, s4, .LBB13_63
	j	.LBB13_68
.LBB13_66:                              #   in Loop: Header=BB13_56 Depth=1
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB13_68
# %bb.67:                               #   in Loop: Header=BB13_56 Depth=1
	addi	a0, sp, 328
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s4, a0, s4
.LBB13_68:                              #   in Loop: Header=BB13_56 Depth=1
	ld	a5, 144(sp)                     # 8-byte Folded Reload
	mv	a0, a5
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	blt	s4, a1, .LBB13_54
# %bb.69:                               #   in Loop: Header=BB13_56 Depth=1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	mv	s4, a1
	j	.LBB13_54
.LBB13_70:
	sext.w	a0, t3
	beqz	a0, .LBB13_72
# %bb.71:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lh	a2, 0(s2)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(s2)
	add	a0, a3, a0
	lh	a0, 0(a0)
	lh	a1, 0(s1)
	add	a0, a1, a0
	sh	a0, 0(s1)
.LBB13_72:
	mv	a0, t0
	ld	ra, 1448(sp)                    # 8-byte Folded Reload
	ld	s0, 1440(sp)                    # 8-byte Folded Reload
	ld	s1, 1432(sp)                    # 8-byte Folded Reload
	ld	s2, 1424(sp)                    # 8-byte Folded Reload
	ld	s3, 1416(sp)                    # 8-byte Folded Reload
	ld	s4, 1408(sp)                    # 8-byte Folded Reload
	ld	s5, 1400(sp)                    # 8-byte Folded Reload
	ld	s6, 1392(sp)                    # 8-byte Folded Reload
	ld	s7, 1384(sp)                    # 8-byte Folded Reload
	ld	s8, 1376(sp)                    # 8-byte Folded Reload
	ld	s9, 1368(sp)                    # 8-byte Folded Reload
	ld	s10, 1360(sp)                   # 8-byte Folded Reload
	ld	s11, 1352(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1456
	ret
.LBB13_73:
	li	a5, 1
	li	s9, 0
	ld	t0, 40(sp)                      # 8-byte Folded Reload
	bne	t0, a5, .LBB13_4
# %bb.74:
	bnez	a1, .LBB13_4
# %bb.75:
	lw	a5, 24(t6)
	li	t0, 1
	beq	a5, t0, .LBB13_4
# %bb.76:
	lhu	a5, 0(s2)
	bnez	a5, .LBB13_3
# %bb.77:
	lhu	a5, 0(s1)
	bnez	a5, .LBB13_3
# %bb.78:
	lw	a5, 24(s0)
	snez	s9, a5
	j	.LBB13_4
.Lfunc_end13:
	.size	SubPelBlockMotionSearch, .Lfunc_end13-SubPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	simplified_FastFullSubPelBlockMotionSearch # -- Begin function simplified_FastFullSubPelBlockMotionSearch
	.p2align	2
	.type	simplified_FastFullSubPelBlockMotionSearch,@function
simplified_FastFullSubPelBlockMotionSearch: # @simplified_FastFullSubPelBlockMotionSearch
# %bb.0:
	addi	sp, sp, -1472
	sd	ra, 1464(sp)                    # 8-byte Folded Spill
	sd	s0, 1456(sp)                    # 8-byte Folded Spill
	sd	s1, 1448(sp)                    # 8-byte Folded Spill
	sd	s2, 1440(sp)                    # 8-byte Folded Spill
	sd	s3, 1432(sp)                    # 8-byte Folded Spill
	sd	s4, 1424(sp)                    # 8-byte Folded Spill
	sd	s5, 1416(sp)                    # 8-byte Folded Spill
	sd	s6, 1408(sp)                    # 8-byte Folded Spill
	sd	s7, 1400(sp)                    # 8-byte Folded Spill
	sd	s8, 1392(sp)                    # 8-byte Folded Spill
	sd	s9, 1384(sp)                    # 8-byte Folded Spill
	sd	s10, 1376(sp)                   # 8-byte Folded Spill
	sd	s11, 1368(sp)                   # 8-byte Folded Spill
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	t0, 64
	sd	t0, 184(sp)                     # 8-byte Folded Spill
	beq	a5, a0, .LBB14_2
# %bb.1:
	li	a0, 128
	sd	a0, 184(sp)                     # 8-byte Folded Spill
.LBB14_2:
	lui	a0, %hi(input)
	ld	s0, %lo(input)(a0)
	ld	s7, 1488(sp)
	ld	s2, 1480(sp)
	ld	s8, 1472(sp)
	addi	a0, s0, 2047
	lw	t1, 1089(a0)
	lui	t0, %hi(img)
	ld	t6, %lo(img)(t0)
	beqz	t1, .LBB14_79
.LBB14_3:
	li	s9, 0
.LBB14_4:
	lw	s1, 24(s0)
	mv	t1, s7
	bgtz	s7, .LBB14_6
# %bb.5:
	li	t1, 1
.LBB14_6:
	slli	t0, a5, 3
	beqz	s1, .LBB14_8
# %bb.7:
	mv	s7, t1
.LBB14_8:
	lui	t1, 8
	add	t1, t6, t1
	ld	t1, -1192(t1)
	lw	t2, 12(t6)
	lui	t3, %hi(active_pps)
	ld	t3, %lo(active_pps)(t3)
	li	t4, 528
	mul	t2, t2, t4
	add	t1, t1, t2
	lw	t2, 192(t3)
	lw	t1, 428(t1)
	add	t0, s0, t0
	slli	a3, a3, 2
	beqz	t2, .LBB14_11
# %bb.9:
	lw	t4, 24(t6)
	li	t2, 1
	beqz	t4, .LBB14_13
# %bb.10:
	li	t5, 3
	beq	t4, t5, .LBB14_13
.LBB14_11:
	lw	t2, 196(t3)
	beqz	t2, .LBB14_13
# %bb.12:
	lw	t2, 24(t6)
	addi	t2, t2, -1
	seqz	t2, t2
.LBB14_13:
	slli	t3, a4, 2
	addi	a4, s1, -1
	addw	a2, t1, a2
	slli	a2, a2, 3
	lui	t1, %hi(listX)
	addi	t1, t1, %lo(listX)
	add	a2, t1, a2
	ld	a2, 0(a2)
	lw	t1, 84(t0)
	sd	t1, 272(sp)                     # 8-byte Folded Spill
	lw	t0, 88(t0)
	sd	t0, 200(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	addi	a3, a3, 16
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	lui	a3, 2
	addiw	a2, a3, -1800
	add	a2, a1, a2
	beqz	t2, .LBB14_16
# %bb.14:
	lw	t0, 1912(s0)
	beqz	t0, .LBB14_16
# %bb.15:
	addiw	a3, a3, -1736
	j	.LBB14_17
.LBB14_16:
	addiw	a3, a3, -1744
.LBB14_17:
	addi	t3, t3, 16
	sd	t3, 96(sp)                      # 8-byte Folded Spill
	lw	t1, 0(a2)
	lw	t0, 4(a2)
	snez	t5, a4
	add	a1, a1, a3
	slli	s5, t1, 2
	slli	s6, t0, 2
	lh	a2, 0(s8)
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	subw	a3, t1, a3
	slli	t4, a3, 2
	ld	a3, 200(sp)                     # 8-byte Folded Reload
	subw	a4, t0, a3
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	addw	a3, a3, a2
	li	t0, 2
	slli	t3, a4, 2
	blt	a3, t0, .LBB14_22
# %bb.18:
	addiw	a4, t4, 31
	bge	a3, a4, .LBB14_22
# %bb.19:
	lh	a3, 0(s2)
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	li	a4, 2
	blt	a3, a4, .LBB14_22
# %bb.20:
	addiw	a4, t3, 31
	bge	a3, a4, .LBB14_22
# %bb.21:
	lui	a3, %hi(FastLine4X)
	addi	a3, a3, %lo(FastLine4X)
	j	.LBB14_23
.LBB14_22:
	lui	a3, %hi(UMVLine4X)
	addi	a3, a3, %lo(UMVLine4X)
.LBB14_23:
	addi	a4, s1, -2
	lw	a0, 1845(a0)
	slti	t2, a5, 5
	ld	t0, 1512(sp)
	lw	t1, 1504(sp)
	ld	s4, 0(a1)
	addiw	s5, s5, 28
	addiw	s6, s6, 28
	lui	s3, %hi(get_line)
	sd	a3, %lo(get_line)(s3)
	sd	a7, 152(sp)                     # 8-byte Folded Spill
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	sd	s2, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	t0, 120(sp)                     # 8-byte Folded Spill
	sd	a5, 48(sp)                      # 8-byte Folded Spill
	bge	t5, s7, .LBB14_45
# %bb.24:
	sd	t4, 24(sp)                      # 8-byte Folded Spill
	sd	t3, 32(sp)                      # 8-byte Folded Spill
	li	t3, 0
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	seqz	a1, a4
	addi	a1, a1, -1
	and	a1, a1, s1
	snez	a0, a0
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	snez	a1, a1
	sd	t2, 40(sp)                      # 8-byte Folded Spill
	and	a0, a0, t2
	and	a0, a0, a1
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	srai	t2, t0, 12
	slli	a0, a5, 1
	lui	a1, %hi(block_type_shift_factor)
	addi	a1, a1, %lo(block_type_shift_factor)
	add	a0, a1, a0
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a5, %hi(spiral_hpel_search_x)
	lui	t4, %hi(spiral_hpel_search_y)
	lui	t6, %hi(mvbits)
	sd	s7, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	t2, 64(sp)                      # 8-byte Folded Spill
	j	.LBB14_27
.LBB14_25:                              #   in Loop: Header=BB14_27 Depth=1
	mv	a0, t3
	mv	s0, t1
.LBB14_26:                              #   in Loop: Header=BB14_27 Depth=1
	addi	t5, t5, 1
	beq	t5, s7, .LBB14_42
.LBB14_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_31 Depth 2
                                        #       Child Loop BB14_35 Depth 3
	ld	a0, %lo(spiral_hpel_search_x)(a5)
	lh	a1, 0(s8)
	slli	a2, t5, 1
	ld	a3, %lo(spiral_hpel_search_y)(t4)
	add	a0, a0, a2
	lh	a0, 0(a0)
	lh	a4, 0(s2)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t6)
	add	a1, a2, a4
	subw	a2, a0, a6
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	mul	a2, a2, t0
	sraiw	a2, a2, 16
	seqz	a3, t5
	and	a3, s9, a3
	neg	a3, a3
	and	a3, a3, t2
	sub	s0, a2, a3
	bge	s0, t1, .LBB14_25
# %bb.28:                               #   in Loop: Header=BB14_27 Depth=1
	sd	t3, 88(sp)                      # 8-byte Folded Spill
	sd	t5, 112(sp)                     # 8-byte Folded Spill
	sd	t1, 264(sp)                     # 8-byte Folded Spill
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB14_37
# %bb.29:                               # %.preheader5
                                        #   in Loop: Header=BB14_27 Depth=1
	li	a3, 0
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	j	.LBB14_31
.LBB14_30:                              #   in Loop: Header=BB14_31 Depth=2
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB14_37
.LBB14_31:                              #   Parent Loop BB14_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_35 Depth 3
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	sd	a3, 192(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB14_30
# %bb.32:                               #   in Loop: Header=BB14_31 Depth=2
	li	s11, 0
	li	s1, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	addw	s7, a1, a0
	addiw	a0, s7, 4
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 8
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 12
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	andi	a0, a0, 32
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	li	s10, 6
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	j	.LBB14_35
.LBB14_33:                              #   in Loop: Header=BB14_35 Depth=3
	andi	a0, s11, 4
	sltiu	a1, s1, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 344
	add	a1, a6, a0
	lw	a2, 292(sp)
	lw	a3, 288(sp)
	lw	a4, 284(sp)
	lw	a5, 280(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 296
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
	addi	a5, sp, 312
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
	addi	a4, sp, 328
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB14_34:                              #   in Loop: Header=BB14_35 Depth=3
	addi	s1, s1, 4
	addiw	s11, s11, 4
	addi	s10, s10, 8
	addiw	s2, s2, 16
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	bge	s11, a0, .LBB14_30
.LBB14_35:                              #   Parent Loop BB14_27 Depth=1
                                        #     Parent Loop BB14_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s8)
	ld	a5, %lo(get_line)(s3)
	add	s9, a0, s10
	mv	a0, s4
	mv	a1, s7
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 280(sp)
	subw	a2, a2, a3
	sw	a2, 284(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 288(sp)
	ld	a2, 8(s8)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 296(sp)
	subw	a2, a2, a3
	sw	a2, 300(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 304(sp)
	ld	a2, 16(s8)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 308(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 24(s8)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	lhu	a3, -4(s9)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 328(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s9)
	lhu	a2, 16(a0)
	lhu	a4, 0(s9)
	lhu	a0, 24(a0)
	sw	a3, 332(sp)
	subw	a1, a1, a2
	sw	a1, 336(sp)
	subw	a4, a4, a0
	sw	a4, 340(sp)
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB14_33
# %bb.36:                               #   in Loop: Header=BB14_35 Depth=3
	lw	a1, 208(sp)                     # 8-byte Folded Reload
	addi	a0, sp, 280
	call	SATD
	addw	s0, a0, s0
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	blt	s0, a0, .LBB14_34
	j	.LBB14_39
.LBB14_37:                              #   in Loop: Header=BB14_27 Depth=1
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB14_39
# %bb.38:                               #   in Loop: Header=BB14_27 Depth=1
	addi	a0, sp, 344
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	call	find_SATD
	add	s0, a0, s0
.LBB14_39:                              #   in Loop: Header=BB14_27 Depth=1
	sext.w	s0, s0
	ld	t5, 112(sp)                     # 8-byte Folded Reload
	mv	a0, t5
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	blt	s0, a1, .LBB14_41
# %bb.40:                               #   in Loop: Header=BB14_27 Depth=1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	mv	s0, a1
.LBB14_41:                              #   in Loop: Header=BB14_27 Depth=1
	lui	a1, %hi(SubPelThreshold3)
	lhu	a1, %lo(SubPelThreshold3)(a1)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	lhu	a2, 0(a2)
	srlw	a1, a1, a2
	mv	t3, a0
	mv	t1, s0
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	ld	a6, 144(sp)                     # 8-byte Folded Reload
	ld	s2, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	t0, 120(sp)                     # 8-byte Folded Reload
	ld	s7, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	t2, 64(sp)                      # 8-byte Folded Reload
	lui	a5, %hi(spiral_hpel_search_x)
	lui	t4, %hi(spiral_hpel_search_y)
	lui	t6, %hi(mvbits)
	bge	s0, a1, .LBB14_26
.LBB14_42:
	lhu	a2, 0(s8)
	sext.w	a0, a0
	beqz	a0, .LBB14_44
# %bb.43:
	lui	a1, %hi(spiral_hpel_search_x)
	ld	a1, %lo(spiral_hpel_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lui	a3, %hi(spiral_hpel_search_y)
	ld	a3, %lo(spiral_hpel_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(s8)
	add	a0, a3, a0
	lh	a0, 0(a0)
	lh	a1, 0(s2)
	add	a0, a1, a0
	sh	a0, 0(s2)
	lhu	a2, 0(s8)
.LBB14_44:
	mv	t1, s0
	ld	t2, 40(sp)                      # 8-byte Folded Reload
	ld	t3, 32(sp)                      # 8-byte Folded Reload
	ld	t4, 24(sp)                      # 8-byte Folded Reload
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	bnez	a2, .LBB14_49
	j	.LBB14_46
.LBB14_45:
	slli	a2, a2, 48
	srli	a2, a2, 48
	bnez	a2, .LBB14_49
.LBB14_46:
	or	a0, a7, a6
	bnez	a0, .LBB14_49
# %bb.47:
	lhu	a0, 0(s2)
	bnez	a0, .LBB14_49
# %bb.48:
	lui	a0, %hi(SubPelThreshold1)
	lhu	a0, %lo(SubPelThreshold1)(a0)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 1
	lui	a3, %hi(block_type_shift_factor)
	addi	a3, a3, %lo(block_type_shift_factor)
	add	a1, a3, a1
	lhu	a1, 0(a1)
	srlw	a0, a0, a1
	blt	t1, a0, .LBB14_56
.LBB14_49:
	lui	a0, %hi(input)
	ld	a3, %lo(input)(a0)
	lw	a0, 24(a3)
	li	a1, 2
	bne	a0, a1, .LBB14_51
# %bb.50:
	lui	a1, 524288
	addiw	t1, a1, -1
.LBB14_51:
	ld	a1, 1496(sp)
	snez	a5, a4
	slli	a2, a2, 48
	srai	a2, a2, 48
	ld	a4, 104(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a2
	addi	a2, a3, 2047
	blez	a4, .LBB14_57
# %bb.52:
	addiw	a3, t4, 32
	bge	a4, a3, .LBB14_57
# %bb.53:
	lh	a3, 0(s2)
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	blez	a3, .LBB14_57
# %bb.54:
	addiw	a4, t3, 32
	bge	a3, a4, .LBB14_57
# %bb.55:
	lui	a3, %hi(FastLine4X)
	addi	a3, a3, %lo(FastLine4X)
	lw	a2, 1845(a2)
	lui	s3, %hi(get_line)
	sd	a3, %lo(get_line)(s3)
	blt	a5, a1, .LBB14_58
.LBB14_56:
	mv	s7, t1
	j	.LBB14_78
.LBB14_57:
	lui	a3, %hi(UMVLine4X)
	addi	a3, a3, %lo(UMVLine4X)
	lw	a2, 1845(a2)
	lui	s3, %hi(get_line)
	sd	a3, %lo(get_line)(s3)
	bge	a5, a1, .LBB14_56
.LBB14_58:
	li	t3, 0
	snez	a2, a2
	snez	a0, a0
	and	a0, a0, t2
	and	a0, a2, a0
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 1
	lui	a2, %hi(block_type_shift_factor)
	addi	a2, a2, %lo(block_type_shift_factor)
	add	a0, a2, a0
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	slli	a1, a1, 32
	srli	t2, a1, 32
	lui	t4, %hi(spiral_search_x)
	lui	t5, %hi(spiral_search_y)
	lui	t6, %hi(mvbits)
	sd	t2, 80(sp)                      # 8-byte Folded Spill
	j	.LBB14_61
.LBB14_59:                              #   in Loop: Header=BB14_61 Depth=1
	mv	a0, t3
	mv	s7, t1
.LBB14_60:                              #   in Loop: Header=BB14_61 Depth=1
	addi	a5, a5, 1
	beq	a5, t2, .LBB14_76
.LBB14_61:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_65 Depth 2
                                        #       Child Loop BB14_69 Depth 3
	ld	a0, %lo(spiral_search_x)(t4)
	lh	a1, 0(s8)
	slli	a2, a5, 1
	ld	a3, %lo(spiral_search_y)(t5)
	add	a0, a0, a2
	lh	a0, 0(a0)
	lh	a4, 0(s2)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t6)
	add	a1, a2, a4
	subw	a2, a0, a6
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	mul	a2, a2, t0
	sraiw	s7, a2, 16
	bge	s7, t1, .LBB14_59
# %bb.62:                               #   in Loop: Header=BB14_61 Depth=1
	sd	t3, 112(sp)                     # 8-byte Folded Spill
	sd	a5, 160(sp)                     # 8-byte Folded Spill
	sd	t1, 264(sp)                     # 8-byte Folded Spill
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB14_71
# %bb.63:                               # %.preheader
                                        #   in Loop: Header=BB14_61 Depth=1
	li	a3, 0
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	j	.LBB14_65
.LBB14_64:                              #   in Loop: Header=BB14_65 Depth=2
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB14_71
.LBB14_65:                              #   Parent Loop BB14_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_69 Depth 3
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	sd	a3, 208(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB14_64
# %bb.66:                               #   in Loop: Header=BB14_65 Depth=2
	li	s0, 0
	li	s1, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	addw	s8, a1, a0
	addiw	a0, s8, 4
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 176(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	li	s11, 6
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	j	.LBB14_69
.LBB14_67:                              #   in Loop: Header=BB14_69 Depth=3
	andi	a0, s0, 4
	sltiu	a1, s1, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 344
	add	a1, a6, a0
	lw	a2, 292(sp)
	lw	a3, 288(sp)
	lw	a4, 284(sp)
	lw	a5, 280(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 296
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
	addi	a5, sp, 312
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
	addi	a4, sp, 328
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB14_68:                              #   in Loop: Header=BB14_69 Depth=3
	addi	s1, s1, 4
	addiw	s0, s0, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	bge	s0, a0, .LBB14_64
.LBB14_69:                              #   Parent Loop BB14_61 Depth=1
                                        #     Parent Loop BB14_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s9)
	ld	a5, %lo(get_line)(s3)
	add	s10, a0, s11
	mv	a0, s4
	mv	a1, s8
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 280(sp)
	subw	a2, a2, a3
	sw	a2, 284(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 288(sp)
	ld	a2, 8(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 296(sp)
	subw	a2, a2, a3
	sw	a2, 300(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 304(sp)
	ld	a2, 16(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 308(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 24(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	lhu	a3, -4(s10)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 328(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s10)
	lhu	a2, 16(a0)
	lhu	a4, 0(s10)
	lhu	a0, 24(a0)
	sw	a3, 332(sp)
	subw	a1, a1, a2
	sw	a1, 336(sp)
	subw	a4, a4, a0
	sw	a4, 340(sp)
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB14_67
# %bb.70:                               #   in Loop: Header=BB14_69 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 280
	call	SATD
	addw	s7, a0, s7
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	blt	s7, a0, .LBB14_68
	j	.LBB14_73
.LBB14_71:                              #   in Loop: Header=BB14_61 Depth=1
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB14_73
# %bb.72:                               #   in Loop: Header=BB14_61 Depth=1
	addi	a0, sp, 344
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s7, a0, s7
.LBB14_73:                              #   in Loop: Header=BB14_61 Depth=1
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	mv	a0, a5
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	blt	s7, a1, .LBB14_75
# %bb.74:                               #   in Loop: Header=BB14_61 Depth=1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mv	s7, a1
.LBB14_75:                              #   in Loop: Header=BB14_61 Depth=1
	lui	a1, %hi(SubPelThreshold3)
	lhu	a1, %lo(SubPelThreshold3)(a1)
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	lhu	a2, 0(a2)
	srlw	a1, a1, a2
	mv	t3, a0
	mv	t1, s7
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	ld	a6, 144(sp)                     # 8-byte Folded Reload
	ld	s2, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	t0, 120(sp)                     # 8-byte Folded Reload
	ld	t2, 80(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(spiral_search_x)
	lui	t5, %hi(spiral_search_y)
	lui	t6, %hi(mvbits)
	bge	s7, a1, .LBB14_60
.LBB14_76:
	sext.w	a0, a0
	beqz	a0, .LBB14_78
# %bb.77:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lh	a2, 0(s8)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(s8)
	add	a0, a3, a0
	lh	a0, 0(a0)
	lh	a1, 0(s2)
	add	a0, a1, a0
	sh	a0, 0(s2)
.LBB14_78:
	mv	a0, s7
	ld	ra, 1464(sp)                    # 8-byte Folded Reload
	ld	s0, 1456(sp)                    # 8-byte Folded Reload
	ld	s1, 1448(sp)                    # 8-byte Folded Reload
	ld	s2, 1440(sp)                    # 8-byte Folded Reload
	ld	s3, 1432(sp)                    # 8-byte Folded Reload
	ld	s4, 1424(sp)                    # 8-byte Folded Reload
	ld	s5, 1416(sp)                    # 8-byte Folded Reload
	ld	s6, 1408(sp)                    # 8-byte Folded Reload
	ld	s7, 1400(sp)                    # 8-byte Folded Reload
	ld	s8, 1392(sp)                    # 8-byte Folded Reload
	ld	s9, 1384(sp)                    # 8-byte Folded Reload
	ld	s10, 1376(sp)                   # 8-byte Folded Reload
	ld	s11, 1368(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1472
	ret
.LBB14_79:
	li	t0, 1
	li	s9, 0
	bne	a5, t0, .LBB14_4
# %bb.80:
	bnez	a1, .LBB14_4
# %bb.81:
	lw	t1, 24(t6)
	li	t0, 1
	beq	t1, t0, .LBB14_4
# %bb.82:
	lhu	t0, 0(s8)
	bnez	t0, .LBB14_3
# %bb.83:
	lhu	t0, 0(s2)
	bnez	t0, .LBB14_3
# %bb.84:
	lw	t0, 24(s0)
	snez	s9, t0
	j	.LBB14_4
.Lfunc_end14:
	.size	simplified_FastFullSubPelBlockMotionSearch, .Lfunc_end14-simplified_FastFullSubPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FullPelBlockMotionBiPred        # -- Begin function FullPelBlockMotionBiPred
	.p2align	2
	.type	FullPelBlockMotionBiPred,@function
FullPelBlockMotionBiPred:               # @FullPelBlockMotionBiPred
# %bb.0:
	addi	sp, sp, -304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	sd	s3, 264(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	sd	s6, 240(sp)                     # 8-byte Folded Spill
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	sd	s8, 224(sp)                     # 8-byte Folded Spill
	sd	s9, 216(sp)                     # 8-byte Folded Spill
	sd	s10, 208(sp)                    # 8-byte Folded Spill
	sd	s11, 200(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, 8
	add	t1, t0, t1
	lw	t0, 12(t0)
	ld	t1, -1192(t1)
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	li	a0, 528
	mul	a0, t0, a0
	add	a0, t1, a0
	lw	s1, 428(a0)
	ld	t0, 352(sp)
	ld	s5, 328(sp)
	ld	s6, 320(sp)
	addw	a0, s1, a2
	slli	a0, a0, 3
	lui	t1, %hi(listX)
	addi	t1, t1, %lo(listX)
	add	a0, t1, a0
	ld	a0, 0(a0)
	ld	t2, 344(sp)
	ld	t3, 336(sp)
	slli	s0, a1, 3
	add	a0, a0, s0
	ld	a0, 0(a0)
	lui	a1, 2
	addiw	s3, s1, 1
	addiw	t4, a1, -1800
	mv	t5, s3
	beqz	a2, .LBB15_2
# %bb.1:
	mv	t5, s1
.LBB15_2:
	add	a0, a0, t4
	slli	t5, t5, 3
	lui	t4, %hi(input)
	ld	t4, %lo(input)(t4)
	add	t1, t1, t5
	ld	t1, 0(t1)
	slli	a5, a5, 3
	add	a5, t4, a5
	lui	t4, %hi(active_pps)
	ld	t5, %lo(active_pps)(t4)
	lh	s2, 0(s6)
	lh	s4, 0(s5)
	lh	t4, 0(t3)
	lw	s7, 196(t5)
	lh	t5, 0(t2)
	slli	t6, t0, 1
	add	t3, s2, a3
	add	t2, s4, a4
	sd	s7, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	beqz	s7, .LBB15_5
# %bb.3:
	lui	s2, %hi(wbp_weight)
	ld	s4, %lo(wbp_weight)(s2)
	lui	s2, %hi(wp_offset)
	ld	s2, %lo(wp_offset)(s2)
	slli	s3, s3, 3
	beqz	a2, .LBB15_6
# %bb.4:
	add	a2, s4, s3
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	slli	s1, s1, 3
	add	s4, s4, s1
	ld	s4, 0(s4)
	add	a2, a2, s0
	ld	a2, 0(a2)
	ld	s4, 0(s4)
	add	s3, s2, s3
	ld	s3, 0(s3)
	add	s1, s2, s1
	ld	s1, 0(s1)
	add	s0, s4, s0
	ld	s0, 0(s0)
	ld	s2, 0(s3)
	ld	s1, 0(s1)
	lw	s10, 0(a2)
	lw	s11, 0(s0)
	lw	a2, 0(s2)
	lw	s4, 0(s1)
	j	.LBB15_7
.LBB15_5:
	lui	a2, %hi(luma_log_weight_denom)
	lwu	a2, %lo(luma_log_weight_denom)(a2)
	li	s0, 1
	sllw	s10, s0, a2
	li	a2, 0
	li	s4, 0
	mv	s11, s10
	j	.LBB15_7
.LBB15_6:
	slli	s1, s1, 3
	add	a2, s4, s1
	ld	a2, 0(a2)
	add	a2, a2, s0
	ld	a2, 0(a2)
	add	s4, s4, s3
	ld	s4, 0(s4)
	ld	a2, 0(a2)
	add	s4, s4, s0
	ld	s4, 0(s4)
	add	s1, s2, s1
	ld	s1, 0(s1)
	add	s2, s2, s3
	ld	s2, 0(s2)
	ld	s3, 0(s4)
	add	s1, s1, s0
	ld	s1, 0(s1)
	add	s0, s2, s0
	ld	s0, 0(s0)
	lw	s10, 0(a2)
	lw	s11, 0(s3)
	lw	a2, 0(s1)
	lw	s4, 0(s0)
.LBB15_7:
	ld	t1, 0(t1)
	addi	t6, t6, 1
	lw	s0, 88(a5)
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	lw	s1, 84(a5)
	slli	a5, a3, 2
	slli	s0, a4, 2
	lw	s2, 0(a0)
	lw	s3, 4(a0)
	add	t4, t4, a3
	add	t5, t5, a4
	slli	s4, s4, 48
	srai	s4, s4, 48
	slli	a2, a2, 48
	srai	s5, a2, 48
	slli	t3, t3, 48
	srai	s7, t3, 48
	slli	t2, t2, 48
	bge	t0, s7, .LBB15_12
# %bb.8:
	not	a2, t0
	subw	a3, a2, s1
	addw	a3, s2, a3
	bge	s7, a3, .LBB15_12
# %bb.9:
	srai	a3, t2, 48
	bge	t0, a3, .LBB15_12
# %bb.10:
	add	a2, s3, a2
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a4
	bge	a3, a2, .LBB15_12
# %bb.11:
	lui	a2, %hi(FastLineX)
	addi	a2, a2, %lo(FastLineX)
	j	.LBB15_13
.LBB15_12:
	lui	a2, %hi(UMVLineX)
	addi	a2, a2, %lo(UMVLineX)
.LBB15_13:
	sd	a2, 168(sp)                     # 8-byte Folded Spill
	add	t1, t1, a1
	ld	a1, 304(sp)
	ld	a2, 312(sp)
	mulw	t6, t6, t6
	srai	a3, s1, 2
	sd	a3, 176(sp)                     # 8-byte Folded Spill
	negw	a3, a5
	negw	a4, s0
	add	a5, s4, s5
	slli	t4, t4, 48
	srai	t4, t4, 48
	slli	t5, t5, 48
	sd	t4, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	bge	t0, t4, .LBB15_18
# %bb.14:
	not	t3, t0
	subw	t4, t3, s1
	addw	t4, s2, t4
	ld	s0, 184(sp)                     # 8-byte Folded Reload
	bge	s0, t4, .LBB15_18
# %bb.15:
	srai	t4, t5, 48
	bge	t0, t4, .LBB15_18
# %bb.16:
	add	t3, s3, t3
	ld	t0, 192(sp)                     # 8-byte Folded Reload
	subw	t0, t3, t0
	bge	t4, t0, .LBB15_18
# %bb.17:
	lui	t3, %hi(FastLineX)
	addi	t3, t3, %lo(FastLineX)
	j	.LBB15_19
.LBB15_18:
	srai	t4, t5, 48
	lui	t3, %hi(UMVLineX)
	addi	t3, t3, %lo(UMVLineX)
.LBB15_19:
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	li	t0, 0
	li	t5, 0
	ld	t3, 368(sp)
	lw	s5, 360(sp)
	ld	a0, 40(a0)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	a0, -1760(t1)
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	srai	t1, t2, 48
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 2
	subw	a6, a3, a6
	addw	a0, a6, a0
	sd	t4, 160(sp)                     # 8-byte Folded Spill
	slli	a6, t4, 2
	subw	a7, a4, a7
	addw	a6, a7, a6
	subw	a7, a3, a1
	subw	t2, a4, a2
	slli	a5, a5, 15
	lui	a1, 8
	add	a1, a5, a1
	sraiw	s0, a1, 16
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	addi	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 29
	addi	a1, a1, 8
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	lui	a5, %hi(spiral_search_x)
	lui	t4, %hi(spiral_search_y)
	lui	s9, %hi(mvbits)
	slli	a0, a0, 2
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	slli	a6, a6, 2
	lui	a0, 22
	addiw	a0, a0, 420
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	t6, 64(sp)                      # 8-byte Folded Spill
	sd	t3, 56(sp)                      # 8-byte Folded Spill
	sd	t1, 48(sp)                      # 8-byte Folded Spill
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	sd	t2, 32(sp)                      # 8-byte Folded Spill
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	j	.LBB15_22
.LBB15_20:                              #   in Loop: Header=BB15_22 Depth=1
	mv	t5, a0
	mv	s5, s6
	ld	t6, 64(sp)                      # 8-byte Folded Reload
	ld	t3, 56(sp)                      # 8-byte Folded Reload
	ld	t1, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 40(sp)                      # 8-byte Folded Reload
	ld	t2, 32(sp)                      # 8-byte Folded Reload
	lui	a5, %hi(spiral_search_x)
	lui	t4, %hi(spiral_search_y)
	lui	s9, %hi(mvbits)
	ld	a6, 24(sp)                      # 8-byte Folded Reload
.LBB15_21:                              #   in Loop: Header=BB15_22 Depth=1
	addi	t0, t0, 1
	bgeu	t0, t6, .LBB15_56
.LBB15_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_26 Depth 2
                                        #       Child Loop BB15_30 Depth 3
                                        #     Child Loop BB15_49 Depth 2
                                        #       Child Loop BB15_51 Depth 3
	ld	a0, %lo(spiral_search_x)(a5)
	ld	a1, %lo(spiral_search_y)(t4)
	slli	a2, t0, 1
	add	a0, a0, a2
	lh	s8, 0(a0)
	add	a1, a1, a2
	lh	s4, 0(a1)
	ld	a0, %lo(mvbits)(s9)
	add	s8, s8, s7
	add	s4, s4, t1
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	lw	a1, 0(a1)
	add	a2, a0, a6
	lw	a2, 0(a2)
	slli	a3, s8, 2
	addw	a3, a7, a3
	slli	a3, a3, 2
	add	a3, a0, a3
	slli	a4, s4, 2
	addw	a4, t2, a4
	slli	a4, a4, 2
	add	a0, a0, a4
	lw	a3, 0(a3)
	lw	a0, 0(a0)
	add	a1, a2, a1
	mul	a1, a1, t3
	sraiw	s6, a1, 16
	add	a0, a0, a3
	mul	a0, a0, t3
	sraiw	a0, a0, 16
	add	s6, a0, s6
	bge	s6, s5, .LBB15_21
# %bb.23:                               #   in Loop: Header=BB15_22 Depth=1
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	sd	t0, 96(sp)                      # 8-byte Folded Spill
	sd	t5, 88(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB15_47
# %bb.24:                               #   in Loop: Header=BB15_22 Depth=1
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB15_54
# %bb.25:                               # %.preheader3
                                        #   in Loop: Header=BB15_22 Depth=1
	li	s7, 0
.LBB15_26:                              #   Parent Loop BB15_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_30 Depth 3
	addw	a2, s4, s7
	mv	a0, s1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	mv	a4, s3
	mv	a5, s2
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	jalr	a6
	mv	s9, a0
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addw	a2, a0, s7
	mv	a0, s1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	mv	a5, s2
	ld	a6, 152(sp)                     # 8-byte Folded Reload
	jalr	a6
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB15_45
# %bb.27:                               #   in Loop: Header=BB15_26 Depth=2
	slli	a1, s7, 3
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	lui	a2, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(a2)
	ld	a1, 0(a1)
	lui	a3, %hi(luma_log_weight_denom)
	lw	a4, %lo(luma_log_weight_denom)(a3)
	lui	a3, %hi(img)
	ld	a5, %lo(img)(a3)
	slli	a2, a2, 1
	lui	a3, %hi(byte_abs)
	ld	a3, %lo(byte_abs)(a3)
	addi	a4, a4, 1
	ld	a6, 112(sp)                     # 8-byte Folded Reload
	add	a5, a5, a6
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	add	a6, a0, a6
	j	.LBB15_30
.LBB15_28:                              #   in Loop: Header=BB15_30 Depth=3
	li	t2, 0
.LBB15_29:                              #   in Loop: Header=BB15_30 Depth=3
	lhu	t3, 0(a1)
	slli	a7, a7, 48
	srai	a7, a7, 48
	sub	a7, t3, a7
	slli	a7, a7, 2
	add	a7, a3, a7
	lhu	t3, 2(a1)
	lw	a7, 0(a7)
	slli	t0, t0, 48
	srai	t0, t0, 48
	sub	t0, t3, t0
	slli	t0, t0, 2
	add	t0, a3, t0
	lhu	t3, 4(a1)
	lw	t0, 0(t0)
	slli	t1, t1, 48
	srai	t1, t1, 48
	sub	t1, t3, t1
	slli	t1, t1, 2
	add	t1, a3, t1
	lhu	t3, 6(a1)
	lw	t1, 0(t1)
	slli	t2, t2, 48
	srai	t2, t2, 48
	sub	t2, t3, t2
	slli	t2, t2, 2
	add	t2, a3, t2
	lw	t2, 0(t2)
	add	a7, a7, s6
	add	t0, t0, t1
	add	a7, a7, t0
	add	s6, a7, t2
	addi	a0, a0, 8
	addi	s9, s9, 8
	addi	a1, a1, 8
	beq	a0, a6, .LBB15_45
.LBB15_30:                              #   Parent Loop BB15_22 Depth=1
                                        #     Parent Loop BB15_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lh	a7, 0(a0)
	lh	t0, 0(s9)
	mul	a7, a7, s10
	mul	t0, t0, s11
	slli	a7, a7, 48
	srai	a7, a7, 48
	slli	t0, t0, 48
	srai	t0, t0, 48
	add	a7, t0, a7
	add	a7, a7, a2
	sraw	a7, a7, a4
	addw	a7, a7, s0
	bltz	a7, .LBB15_33
# %bb.31:                               #   in Loop: Header=BB15_30 Depth=3
	lw	t0, 0(a5)
	blt	a7, t0, .LBB15_34
# %bb.32:                               #   in Loop: Header=BB15_30 Depth=3
	mv	a7, t0
	j	.LBB15_34
.LBB15_33:                              #   in Loop: Header=BB15_30 Depth=3
	li	a7, 0
.LBB15_34:                              #   in Loop: Header=BB15_30 Depth=3
	lh	t0, 2(a0)
	lh	t1, 2(s9)
	mul	t0, t0, s10
	mul	t1, t1, s11
	slli	t0, t0, 48
	srai	t0, t0, 48
	slli	t1, t1, 48
	srai	t1, t1, 48
	add	t0, a2, t0
	add	t0, t0, t1
	sraw	t0, t0, a4
	addw	t0, t0, s0
	bltz	t0, .LBB15_37
# %bb.35:                               #   in Loop: Header=BB15_30 Depth=3
	lw	t1, 0(a5)
	blt	t0, t1, .LBB15_38
# %bb.36:                               #   in Loop: Header=BB15_30 Depth=3
	mv	t0, t1
	j	.LBB15_38
.LBB15_37:                              #   in Loop: Header=BB15_30 Depth=3
	li	t0, 0
.LBB15_38:                              #   in Loop: Header=BB15_30 Depth=3
	lh	t1, 4(a0)
	lh	t2, 4(s9)
	mul	t1, t1, s10
	mul	t2, t2, s11
	slli	t1, t1, 48
	srai	t1, t1, 48
	slli	t2, t2, 48
	srai	t2, t2, 48
	add	t1, a2, t1
	add	t1, t1, t2
	sraw	t1, t1, a4
	addw	t1, t1, s0
	bltz	t1, .LBB15_41
# %bb.39:                               #   in Loop: Header=BB15_30 Depth=3
	lw	t2, 0(a5)
	blt	t1, t2, .LBB15_42
# %bb.40:                               #   in Loop: Header=BB15_30 Depth=3
	mv	t1, t2
	j	.LBB15_42
.LBB15_41:                              #   in Loop: Header=BB15_30 Depth=3
	li	t1, 0
.LBB15_42:                              #   in Loop: Header=BB15_30 Depth=3
	lh	t2, 6(a0)
	lh	t3, 6(s9)
	mul	t2, t2, s10
	mul	t3, t3, s11
	slli	t2, t2, 48
	srai	t2, t2, 48
	slli	t3, t3, 48
	srai	t3, t3, 48
	add	t2, a2, t2
	add	t2, t2, t3
	sraw	t2, t2, a4
	addw	t2, t2, s0
	bltz	t2, .LBB15_28
# %bb.43:                               #   in Loop: Header=BB15_30 Depth=3
	lw	t3, 0(a5)
	blt	t2, t3, .LBB15_29
# %bb.44:                               #   in Loop: Header=BB15_30 Depth=3
	mv	t2, t3
	j	.LBB15_29
.LBB15_45:                              #   in Loop: Header=BB15_26 Depth=2
	sext.w	a0, s6
	bge	a0, s5, .LBB15_54
# %bb.46:                               #   in Loop: Header=BB15_26 Depth=2
	addi	s7, s7, 1
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	blt	s7, a0, .LBB15_26
	j	.LBB15_54
.LBB15_47:                              #   in Loop: Header=BB15_22 Depth=1
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB15_54
# %bb.48:                               # %.preheader
                                        #   in Loop: Header=BB15_22 Depth=1
	li	s7, 0
.LBB15_49:                              #   Parent Loop BB15_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_51 Depth 3
	addw	a2, s4, s7
	mv	a0, s1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	mv	a4, s3
	mv	a5, s2
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	jalr	a6
	mv	s9, a0
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addw	a2, a0, s7
	mv	a0, s1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	mv	a5, s2
	ld	a6, 152(sp)                     # 8-byte Folded Reload
	jalr	a6
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB15_52
# %bb.50:                               #   in Loop: Header=BB15_49 Depth=2
	slli	a1, s7, 3
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
.LBB15_51:                              #   Parent Loop BB15_22 Depth=1
                                        #     Parent Loop BB15_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	a4, 0(a0)
	lhu	a5, 0(s9)
	lhu	a6, 0(a1)
	add	a4, a5, a4
	lhu	a5, 2(a0)
	lhu	a7, 2(s9)
	srli	a4, a4, 1
	sub	a4, a6, a4
	lhu	a6, 2(a1)
	add	a5, a7, a5
	lhu	a7, 4(a0)
	lhu	t0, 4(s9)
	srli	a5, a5, 1
	sub	a5, a6, a5
	lhu	a6, 4(a1)
	add	a7, t0, a7
	lhu	t0, 6(a0)
	lhu	t1, 6(s9)
	srli	a7, a7, 1
	lhu	t2, 6(a1)
	sub	a6, a6, a7
	add	t0, t1, t0
	srli	a7, t0, 1
	sub	a7, t2, a7
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
	add	a4, a4, s6
	add	a5, a5, a6
	add	a4, a4, a5
	add	s6, a4, a7
	addi	a1, a1, 8
	addi	a0, a0, 8
	addi	s9, s9, 8
	bne	a0, a3, .LBB15_51
.LBB15_52:                              #   in Loop: Header=BB15_49 Depth=2
	sext.w	a0, s6
	bge	a0, s5, .LBB15_54
# %bb.53:                               #   in Loop: Header=BB15_49 Depth=2
	addi	s7, s7, 1
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	blt	s7, a0, .LBB15_49
.LBB15_54:                              #   in Loop: Header=BB15_22 Depth=1
	sext.w	s6, s6
	ld	t0, 96(sp)                      # 8-byte Folded Reload
	mv	a0, t0
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	blt	s6, s5, .LBB15_20
# %bb.55:                               #   in Loop: Header=BB15_22 Depth=1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	mv	s6, s5
	j	.LBB15_20
.LBB15_56:
	sext.w	a0, t5
	beqz	a0, .LBB15_58
# %bb.57:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	lh	a2, 0(a4)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(a4)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB15_58:
	mv	a0, s5
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s3, 264(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	s5, 248(sp)                     # 8-byte Folded Reload
	ld	s6, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s8, 224(sp)                     # 8-byte Folded Reload
	ld	s9, 216(sp)                     # 8-byte Folded Reload
	ld	s10, 208(sp)                    # 8-byte Folded Reload
	ld	s11, 200(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end15:
	.size	FullPelBlockMotionBiPred, .Lfunc_end15-FullPelBlockMotionBiPred
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SubPelBlockSearchBiPred         # -- Begin function SubPelBlockSearchBiPred
	.p2align	2
	.type	SubPelBlockSearchBiPred,@function
SubPelBlockSearchBiPred:                # @SubPelBlockSearchBiPred
# %bb.0:
	addi	sp, sp, -1664
	sd	ra, 1656(sp)                    # 8-byte Folded Spill
	sd	s0, 1648(sp)                    # 8-byte Folded Spill
	sd	s1, 1640(sp)                    # 8-byte Folded Spill
	sd	s2, 1632(sp)                    # 8-byte Folded Spill
	sd	s3, 1624(sp)                    # 8-byte Folded Spill
	sd	s4, 1616(sp)                    # 8-byte Folded Spill
	sd	s5, 1608(sp)                    # 8-byte Folded Spill
	sd	s6, 1600(sp)                    # 8-byte Folded Spill
	sd	s7, 1592(sp)                    # 8-byte Folded Spill
	sd	s8, 1584(sp)                    # 8-byte Folded Spill
	sd	s9, 1576(sp)                    # 8-byte Folded Spill
	sd	s10, 1568(sp)                   # 8-byte Folded Spill
	sd	s11, 1560(sp)                   # 8-byte Folded Spill
	ld	t0, 1696(sp)
	sd	t0, 104(sp)                     # 8-byte Folded Spill
	sd	a7, 160(sp)                     # 8-byte Folded Spill
	sd	a6, 152(sp)                     # 8-byte Folded Spill
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	a6, 64
	sd	a6, 200(sp)                     # 8-byte Folded Spill
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	beq	a5, a0, .LBB16_2
# %bb.1:
	li	a0, 128
	sd	a0, 200(sp)                     # 8-byte Folded Spill
.LBB16_2:
	lui	a0, %hi(input)
	ld	a5, %lo(input)(a0)
	lw	a0, 24(a5)
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	slli	a7, a7, 3
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	mv	t0, a6
	bgtz	a6, .LBB16_4
# %bb.3:
	li	t0, 1
.LBB16_4:
	add	a7, a5, a7
	slli	a6, a3, 2
	beqz	a0, .LBB16_6
# %bb.5:
	sd	t0, 104(sp)                     # 8-byte Folded Spill
.LBB16_6:
	ld	t3, 1688(sp)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	ld	t4, 1680(sp)
	ld	t0, 1664(sp)
	sd	t0, 176(sp)                     # 8-byte Folded Spill
	lui	t0, 8
	lw	t1, 12(a3)
	add	a3, a3, t0
	ld	a3, -1192(a3)
	li	t0, 528
	mul	t0, t1, t0
	lui	t1, %hi(active_pps)
	ld	t1, %lo(active_pps)(t1)
	lw	t2, 84(a7)
	sd	t2, 416(sp)                     # 8-byte Folded Spill
	lw	a7, 88(a7)
	sd	a7, 216(sp)                     # 8-byte Folded Spill
	add	a3, a3, t0
	lw	a7, 196(t1)
	lw	a3, 428(a3)
	slli	a4, a4, 2
	addi	a6, a6, 16
	sd	a6, 88(sp)                      # 8-byte Folded Spill
	slli	a1, a1, 3
	sd	a7, 192(sp)                     # 8-byte Folded Spill
	beqz	a7, .LBB16_9
# %bb.7:
	lui	a6, %hi(wbp_weight)
	ld	a7, %lo(wbp_weight)(a6)
	lui	a6, %hi(wp_offset)
	ld	a6, %lo(wp_offset)(a6)
	slli	t0, a3, 3
	add	a7, a7, t0
	add	a6, a6, t0
	beqz	a2, .LBB16_10
# %bb.8:
	ld	t0, 8(a7)
	ld	t0, 0(t0)
	ld	a7, 0(a7)
	add	t0, t0, a1
	ld	a7, 0(a7)
	ld	t0, 0(t0)
	ld	t1, 8(a6)
	ld	a6, 0(a6)
	add	a7, a7, a1
	ld	a7, 0(a7)
	ld	t1, 0(t1)
	j	.LBB16_11
.LBB16_9:
	li	a6, 0
	li	t5, 1
	li	s0, 1
	j	.LBB16_12
.LBB16_10:
	ld	t0, 0(a7)
	ld	a7, 8(a7)
	add	t0, t0, a1
	ld	t0, 0(t0)
	add	a7, a7, a1
	ld	a7, 0(a7)
	ld	t1, 0(a6)
	ld	t0, 0(t0)
	ld	a6, 8(a6)
	ld	a7, 0(a7)
	add	t1, t1, a1
	ld	t1, 0(t1)
	add	a6, a6, a1
.LBB16_11:
	ld	t2, 0(a6)
	lw	t5, 0(t0)
	lw	s0, 0(a7)
	lw	a6, 0(t1)
	lw	a7, 0(t2)
.LBB16_12:
	addi	a4, a4, 16
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	ld	a4, 1672(sp)
	sd	a4, 168(sp)                     # 8-byte Folded Spill
	slli	a7, a7, 48
	srai	a4, a7, 48
	slli	a6, a6, 48
	srai	a6, a6, 48
	lh	a7, 0(t4)
	addw	t0, a3, a2
	slli	t0, t0, 3
	lui	t1, %hi(listX)
	addi	t1, t1, %lo(listX)
	add	t0, t1, t0
	ld	t0, 0(t0)
	add	a4, a6, a4
	addi	a5, a5, 2047
	ld	t2, 88(sp)                      # 8-byte Folded Reload
	addw	a6, t2, a7
	sd	a6, 128(sp)                     # 8-byte Folded Spill
	add	a1, t0, a1
	seqz	a2, a2
	addw	a2, a3, a2
	slli	a2, a2, 3
	add	a2, t1, a2
	ld	a2, 0(a2)
	ld	a1, 0(a1)
	lui	a3, 2
	addiw	a6, a3, -1800
	ld	t0, 0(a2)
	add	a2, a1, a6
	lw	a7, 0(a2)
	lh	a6, 0(t3)
	add	a3, t0, a3
	lw	t1, 4(a2)
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	subw	a1, a7, a1
	ld	t0, 176(sp)                     # 8-byte Folded Reload
	lh	t0, 0(t0)
	slli	s1, a1, 2
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	subw	a1, t1, a1
	slli	t6, a1, 2
	addw	a1, t2, t0
	li	t2, 3
	addiw	t0, s1, 31
	blt	a1, t2, .LBB16_17
# %bb.13:
	bge	a1, t0, .LBB16_17
# %bb.14:
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a1)
	ld	t2, 80(sp)                      # 8-byte Folded Reload
	addw	a1, t2, a1
	li	t2, 3
	blt	a1, t2, .LBB16_17
# %bb.15:
	addiw	t2, t6, 31
	bge	a1, t2, .LBB16_17
# %bb.16:
	lui	t2, %hi(FastLine4X)
	addi	t2, t2, %lo(FastLine4X)
	j	.LBB16_18
.LBB16_17:
	lui	t2, %hi(UMVLine4X)
	addi	t2, t2, %lo(UMVLine4X)
.LBB16_18:
	lw	a1, 1845(a5)
	addi	a4, a4, 1
	slli	a7, a7, 2
	slli	t1, t1, 2
	seqz	s2, a0
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	addw	a5, a5, a6
	sd	a5, 208(sp)                     # 8-byte Folded Spill
	ld	a2, 56(a2)
	sd	a2, 464(sp)                     # 8-byte Folded Spill
	ld	a2, -1744(a3)
	sd	a2, 456(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(get_line_p2)
	li	a3, 3
	sd	t2, %lo(get_line_p2)(a2)
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	blt	a2, a3, .LBB16_23
# %bb.19:
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	bge	a2, t0, .LBB16_23
# %bb.20:
	li	a2, 3
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	blt	a3, a2, .LBB16_23
# %bb.21:
	addiw	a2, t6, 31
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	bge	a3, a2, .LBB16_23
# %bb.22:
	lui	a2, %hi(FastLine4X)
	addi	a2, a2, %lo(FastLine4X)
	j	.LBB16_24
.LBB16_23:
	lui	a2, %hi(UMVLine4X)
	addi	a2, a2, %lo(UMVLine4X)
.LBB16_24:
	ld	a3, 1720(sp)
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	lw	a3, 1712(sp)
	sd	a3, 384(sp)                     # 8-byte Folded Spill
	srliw	a6, a4, 1
	addiw	a7, a7, 28
	sd	a7, 448(sp)                     # 8-byte Folded Spill
	addiw	t1, t1, 28
	sd	t1, 440(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(get_line_p1)
	sd	a2, %lo(get_line_p1)(a3)
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	bge	s2, a2, .LBB16_52
# %bb.25:
	mv	a3, s2
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	t6, 16(sp)                      # 8-byte Folded Spill
	sd	t4, 48(sp)                      # 8-byte Folded Spill
	sd	t3, 56(sp)                      # 8-byte Folded Spill
	sd	zero, 72(sp)                    # 8-byte Folded Spill
	snez	a1, a1
	snez	a0, a0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	slti	a2, a2, 5
	and	a0, a0, a2
	and	a0, a1, a0
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	lui	s6, 16
	addi	s6, s6, -1
	sd	s6, 264(sp)                     # 8-byte Folded Spill
	sd	t5, 40(sp)                      # 8-byte Folded Spill
	slli	a0, t5, 48
	srai	a0, a0, 48
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	slli	s0, s0, 48
	srai	s0, s0, 48
	sd	s0, 248(sp)                     # 8-byte Folded Spill
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	slli	a0, a6, 48
	srai	a0, a0, 48
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	j	.LBB16_27
.LBB16_26:                              #   in Loop: Header=BB16_27 Depth=1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	sd	a2, 384(sp)                     # 8-byte Folded Spill
	addi	a3, a3, 1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	beq	a3, a0, .LBB16_49
.LBB16_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_31 Depth 2
                                        #       Child Loop BB16_36 Depth 3
                                        #       Child Loop BB16_42 Depth 3
	lui	a0, %hi(spiral_hpel_search_x)
	ld	a0, %lo(spiral_hpel_search_x)(a0)
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a1)
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	slli	a2, a3, 1
	lui	a3, %hi(spiral_hpel_search_y)
	ld	a3, %lo(spiral_hpel_search_y)(a3)
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	lh	a4, 0(a4)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	lui	a1, %hi(mvbits)
	ld	a3, %lo(mvbits)(a1)
	add	a1, a2, a4
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	sub	a2, a0, a2
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	ld	a4, 160(sp)                     # 8-byte Folded Reload
	sub	a4, a1, a4
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	mul	a2, a2, a3
	sraiw	a3, a2, 16
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	bge	a3, a2, .LBB16_44
# %bb.28:                               #   in Loop: Header=BB16_27 Depth=1
	sd	a3, 312(sp)                     # 8-byte Folded Spill
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB16_45
# %bb.29:                               # %.preheader9
                                        #   in Loop: Header=BB16_27 Depth=1
	li	a4, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	j	.LBB16_31
.LBB16_30:                              #   in Loop: Header=BB16_31 Depth=2
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a4, a1, 4
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_45
.LBB16_31:                              #   Parent Loop BB16_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_36 Depth 3
                                        #       Child Loop BB16_42 Depth 3
	sltiu	a0, a4, 8
	addi	a0, a0, -1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	slli	a0, a4, 2
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	addiw	a2, a1, 4
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	addiw	a2, a1, 8
	sd	a2, 360(sp)                     # 8-byte Folded Spill
	sd	a1, 376(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, 12
	sd	a1, 352(sp)                     # 8-byte Folded Spill
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	addiw	a1, a0, 4
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	addiw	a1, a0, 8
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	sd	a0, 344(sp)                     # 8-byte Folded Spill
	addiw	a0, a0, 12
	sd	a0, 320(sp)                     # 8-byte Folded Spill
	addi	a2, a4, 1
	addi	a1, a4, 2
	addi	a0, a4, 3
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	sd	a4, 184(sp)                     # 8-byte Folded Spill
	beqz	a3, .LBB16_38
# %bb.32:                               #   in Loop: Header=BB16_31 Depth=2
	ld	a3, 416(sp)                     # 8-byte Folded Reload
	blez	a3, .LBB16_30
# %bb.33:                               #   in Loop: Header=BB16_31 Depth=2
	li	a7, 0
	li	t0, 0
	slli	a3, a4, 3
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	add	a5, a4, a3
	sd	a5, 296(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 3
	add	a2, a4, a2
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a4, a1
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	slli	a0, a0, 3
	add	a0, a4, a0
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	andi	a0, a3, 32
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	li	s9, 6
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	ld	s11, 96(sp)                     # 8-byte Folded Reload
	j	.LBB16_36
.LBB16_34:                              #   in Loop: Header=BB16_36 Depth=3
	ld	a7, 400(sp)                     # 8-byte Folded Reload
	andi	a0, a7, 4
	ld	t0, 392(sp)                     # 8-byte Folded Reload
	sltiu	a1, t0, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 536
	add	a1, a6, a0
	lw	a2, 484(sp)
	lw	a3, 480(sp)
	lw	a4, 476(sp)
	lw	a5, 472(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 488
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
	addi	a5, sp, 504
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
	addi	a4, sp, 520
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB16_35:                              #   in Loop: Header=BB16_36 Depth=3
	addi	t0, t0, 4
	addiw	a7, a7, 4
	ld	s9, 432(sp)                     # 8-byte Folded Reload
	addi	s9, s9, 8
	addiw	s11, s11, 16
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	addiw	a2, a2, 16
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	bge	a7, a0, .LBB16_30
.LBB16_36:                              #   Parent Loop BB16_27 Depth=1
                                        #     Parent Loop BB16_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	s11, 408(sp)                    # 8-byte Folded Spill
	sd	t0, 392(sp)                     # 8-byte Folded Spill
	sd	a7, 400(sp)                     # 8-byte Folded Spill
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	ld	s5, 0(a0)
	lui	a0, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a0)
	add	s5, s5, s9
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	sd	s9, 432(sp)                     # 8-byte Folded Spill
	ld	a1, 344(sp)                     # 8-byte Folded Reload
	sd	a2, 424(sp)                     # 8-byte Folded Spill
	ld	s8, 440(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	s4, 448(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	ld	s0, 256(sp)                     # 8-byte Folded Reload
	mul	a1, s0, a1
	lui	a2, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(a2)
	lui	s11, %hi(wp_luma_round)
	ld	s3, 248(sp)                     # 8-byte Folded Reload
	mul	a0, s3, a0
	lui	a3, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(a3)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	ld	s7, 240(sp)                     # 8-byte Folded Reload
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s5)
	ld	s6, 264(sp)                     # 8-byte Folded Reload
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 472(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s5)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 476(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s5)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 480(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s5)
	and	a0, a0, s6
	ld	a2, 288(sp)                     # 8-byte Folded Reload
	ld	s5, 0(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s5, s5, s9
	ld	s11, 464(sp)                    # 8-byte Folded Reload
	mv	a0, s11
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	ld	s10, 424(sp)                    # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	s9, 456(sp)                     # 8-byte Folded Reload
	mv	a0, s9
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	mul	a1, s0, a1
	lui	s4, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lui	s8, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s5)
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 488(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	lui	s4, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	lui	s8, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s5)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 492(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	lui	s4, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s5)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 496(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s5)
	and	a0, a0, s6
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	ld	s5, 0(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	add	s5, s5, a0
	mv	a0, s11
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	ld	s8, 440(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	s4, 448(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	mv	a0, s9
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	ld	s9, 408(sp)                     # 8-byte Folded Reload
	mv	a2, s9
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	mul	a1, s0, a1
	lui	s11, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lui	s10, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s5)
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 504(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s5)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 508(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s5)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 512(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s5)
	and	a0, a0, s6
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	ld	s5, 0(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 516(sp)
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	add	s5, s5, a0
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mv	s11, s9
	mv	a2, s9
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	mul	a1, s0, a1
	lui	s4, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lui	s8, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s5)
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 520(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	lui	s4, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	lui	s8, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s5)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 524(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s5)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 528(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s5)
	and	a0, a0, s6
	subw	a1, a1, a0
	sw	a1, 532(sp)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB16_34
# %bb.37:                               #   in Loop: Header=BB16_36 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 472
	call	SATD
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	addw	a1, a0, a1
	ld	a0, 384(sp)                     # 8-byte Folded Reload
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	ld	a7, 400(sp)                     # 8-byte Folded Reload
	ld	t0, 392(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_35
	j	.LBB16_47
.LBB16_38:                              #   in Loop: Header=BB16_31 Depth=2
	ld	a3, 416(sp)                     # 8-byte Folded Reload
	blez	a3, .LBB16_30
# %bb.39:                               #   in Loop: Header=BB16_31 Depth=2
	li	s0, 0
	li	s3, 0
	slli	a3, a4, 3
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	add	a5, a4, a3
	sd	a5, 400(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 3
	add	a2, a4, a2
	sd	a2, 432(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a4, a1
	sd	a1, 424(sp)                     # 8-byte Folded Spill
	slli	a0, a0, 3
	add	a0, a4, a0
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	andi	a0, a3, 32
	sd	a0, 392(sp)                     # 8-byte Folded Spill
	li	s5, 6
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	s11, 96(sp)                     # 8-byte Folded Reload
	j	.LBB16_42
.LBB16_40:                              #   in Loop: Header=BB16_42 Depth=3
	andi	a0, s0, 4
	sltiu	a1, s3, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 392(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 536
	add	a1, a6, a0
	lw	a2, 484(sp)
	lw	a3, 480(sp)
	lw	a4, 476(sp)
	lw	a5, 472(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 488
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
	addi	a5, sp, 504
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
	addi	a4, sp, 520
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB16_41:                              #   in Loop: Header=BB16_42 Depth=3
	addi	s3, s3, 4
	addiw	s0, s0, 4
	addi	s5, s5, 8
	addiw	s11, s11, 16
	addiw	s10, s10, 16
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	bge	s0, a0, .LBB16_30
.LBB16_42:                              #   Parent Loop BB16_27 Depth=1
                                        #     Parent Loop BB16_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a0)
	lui	a0, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a0)
	lui	s9, %hi(get_line_p1)
	add	s7, s7, s5
	ld	s8, 464(sp)                     # 8-byte Folded Reload
	mv	a0, s8
	ld	a1, 344(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	ld	s6, 440(sp)                     # 8-byte Folded Reload
	mv	a3, s6
	ld	s2, 448(sp)                     # 8-byte Folded Reload
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	ld	s4, 456(sp)                     # 8-byte Folded Reload
	mv	a0, s4
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 472(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 476(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 480(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	ld	a5, %lo(get_line_p1)(s9)
	lui	s9, %hi(get_line_p1)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s7, s7, s5
	mv	a0, s8
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	mv	a0, s4
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 488(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 492(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 496(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	ld	a5, %lo(get_line_p1)(s9)
	lui	s9, %hi(get_line_p1)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	add	s7, s7, s5
	mv	a0, s8
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	mv	a0, s4
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 504(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 508(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 512(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	ld	a5, %lo(get_line_p1)(s9)
	subw	a1, a1, a0
	sw	a1, 516(sp)
	add	s7, s7, s5
	mv	a0, s8
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	mv	a0, s4
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 520(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 524(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 528(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a1, a1, a0
	sw	a1, 532(sp)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB16_40
# %bb.43:                               #   in Loop: Header=BB16_42 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 472
	call	SATD
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	addw	a1, a0, a1
	ld	a0, 384(sp)                     # 8-byte Folded Reload
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB16_41
	j	.LBB16_47
.LBB16_44:                              #   in Loop: Header=BB16_27 Depth=1
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	addi	a3, a3, 1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	bne	a3, a0, .LBB16_27
	j	.LBB16_49
.LBB16_45:                              #   in Loop: Header=BB16_27 Depth=1
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB16_47
# %bb.46:                               #   in Loop: Header=BB16_27 Depth=1
	addi	a0, sp, 536
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	call	find_SATD
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	addw	a1, a0, a1
	sd	a1, 312(sp)                     # 8-byte Folded Spill
.LBB16_47:                              #   in Loop: Header=BB16_27 Depth=1
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	mv	a0, a3
	ld	a1, 384(sp)                     # 8-byte Folded Reload
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	blt	a2, a1, .LBB16_26
# %bb.48:                               #   in Loop: Header=BB16_27 Depth=1
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	mv	a2, a1
	j	.LBB16_26
.LBB16_49:
	lw	a0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB16_51
# %bb.50:
	lui	a1, %hi(spiral_hpel_search_x)
	ld	a1, %lo(spiral_hpel_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a4)
	lui	a3, %hi(spiral_hpel_search_y)
	ld	a3, %lo(spiral_hpel_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(a4)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB16_51:
	ld	t3, 56(sp)                      # 8-byte Folded Reload
	ld	t4, 48(sp)                      # 8-byte Folded Reload
	ld	t5, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	ld	t6, 16(sp)                      # 8-byte Folded Reload
.LBB16_52:
	li	a0, 4
	li	a7, 0
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	blt	a0, a1, .LBB16_55
# %bb.53:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1845(a1)
	beqz	a1, .LBB16_55
# %bb.54:
	lw	a0, 24(a0)
	snez	a7, a0
.LBB16_55:
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	lh	a0, 0(a0)
	addiw	a1, s1, 32
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	a2, a2, a0
	addiw	a0, t6, 32
	blez	a2, .LBB16_60
# %bb.56:
	bge	a2, a1, .LBB16_60
# %bb.57:
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a2)
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	addw	a2, a3, a2
	blez	a2, .LBB16_60
# %bb.58:
	bge	a2, a0, .LBB16_60
# %bb.59:
	lui	a2, %hi(FastLine4X)
	addi	a2, a2, %lo(FastLine4X)
	j	.LBB16_61
.LBB16_60:
	lui	a2, %hi(UMVLine4X)
	addi	a2, a2, %lo(UMVLine4X)
.LBB16_61:
	lh	a3, 0(t4)
	ld	a4, 1704(sp)
	sd	a4, 96(sp)                      # 8-byte Folded Spill
	lui	a4, %hi(get_line_p2)
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	addw	a3, a5, a3
	sd	a2, %lo(get_line_p2)(a4)
	blez	a3, .LBB16_66
# %bb.62:
	bge	a3, a1, .LBB16_66
# %bb.63:
	lh	a1, 0(t3)
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	addw	a1, a2, a1
	blez	a1, .LBB16_66
# %bb.64:
	bge	a1, a0, .LBB16_66
# %bb.65:
	lui	a0, %hi(FastLine4X)
	addi	a0, a0, %lo(FastLine4X)
	j	.LBB16_67
.LBB16_66:
	lui	a0, %hi(UMVLine4X)
	addi	a0, a0, %lo(UMVLine4X)
.LBB16_67:
	lui	a2, %hi(get_line_p1)
	li	a1, 2
	sd	a0, %lo(get_line_p1)(a2)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	blt	a0, a1, .LBB16_94
# %bb.68:
	sd	zero, 72(sp)                    # 8-byte Folded Spill
	sd	a7, 304(sp)                     # 8-byte Folded Spill
	lui	s6, 16
	addi	s6, s6, -1
	sd	s6, 264(sp)                     # 8-byte Folded Spill
	slli	a0, t5, 48
	srai	a0, a0, 48
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	slli	s0, s0, 48
	srai	s0, s0, 48
	sd	s0, 248(sp)                     # 8-byte Folded Spill
	slli	a0, a6, 48
	srai	a0, a0, 48
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	a2, 1
	j	.LBB16_70
.LBB16_69:                              #   in Loop: Header=BB16_70 Depth=1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	sd	a3, 384(sp)                     # 8-byte Folded Spill
	addi	a2, a2, 1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	beq	a2, a0, .LBB16_92
.LBB16_70:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_74 Depth 2
                                        #       Child Loop BB16_79 Depth 3
                                        #       Child Loop BB16_85 Depth 3
	lui	a0, %hi(spiral_search_x)
	ld	a0, %lo(spiral_search_x)(a0)
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a1)
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 1
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	lh	a4, 0(a4)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	lui	a1, %hi(mvbits)
	ld	a3, %lo(mvbits)(a1)
	add	a1, a2, a4
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	sub	a2, a0, a2
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	ld	a4, 160(sp)                     # 8-byte Folded Reload
	sub	a4, a1, a4
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	mul	a2, a2, a3
	sraiw	a3, a2, 16
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	bge	a3, a2, .LBB16_87
# %bb.71:                               #   in Loop: Header=BB16_70 Depth=1
	sd	a3, 312(sp)                     # 8-byte Folded Spill
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB16_88
# %bb.72:                               # %.preheader
                                        #   in Loop: Header=BB16_70 Depth=1
	li	a4, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	j	.LBB16_74
.LBB16_73:                              #   in Loop: Header=BB16_74 Depth=2
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a4, a1, 4
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_88
.LBB16_74:                              #   Parent Loop BB16_70 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_79 Depth 3
                                        #       Child Loop BB16_85 Depth 3
	sltiu	a0, a4, 8
	addi	a0, a0, -1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	slli	a0, a4, 2
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	addiw	a2, a1, 4
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	addiw	a2, a1, 8
	sd	a2, 360(sp)                     # 8-byte Folded Spill
	sd	a1, 376(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, 12
	sd	a1, 352(sp)                     # 8-byte Folded Spill
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	addiw	a1, a0, 4
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	addiw	a1, a0, 8
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	sd	a0, 344(sp)                     # 8-byte Folded Spill
	addiw	a0, a0, 12
	sd	a0, 320(sp)                     # 8-byte Folded Spill
	addi	a2, a4, 1
	addi	a1, a4, 2
	addi	a0, a4, 3
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	sd	a4, 184(sp)                     # 8-byte Folded Spill
	beqz	a3, .LBB16_81
# %bb.75:                               #   in Loop: Header=BB16_74 Depth=2
	ld	a3, 416(sp)                     # 8-byte Folded Reload
	blez	a3, .LBB16_73
# %bb.76:                               #   in Loop: Header=BB16_74 Depth=2
	li	a7, 0
	li	t0, 0
	slli	a3, a4, 3
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	add	a5, a4, a3
	sd	a5, 296(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 3
	add	a2, a4, a2
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a4, a1
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	slli	a0, a0, 3
	add	a0, a4, a0
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	andi	a0, a3, 32
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	li	s9, 6
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	j	.LBB16_79
.LBB16_77:                              #   in Loop: Header=BB16_79 Depth=3
	ld	a7, 400(sp)                     # 8-byte Folded Reload
	andi	a0, a7, 4
	ld	t0, 392(sp)                     # 8-byte Folded Reload
	sltiu	a1, t0, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 536
	add	a1, a6, a0
	lw	a2, 484(sp)
	lw	a3, 480(sp)
	lw	a4, 476(sp)
	lw	a5, 472(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 488
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
	addi	a5, sp, 504
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
	addi	a4, sp, 520
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB16_78:                              #   in Loop: Header=BB16_79 Depth=3
	addi	t0, t0, 4
	addiw	a7, a7, 4
	ld	s9, 432(sp)                     # 8-byte Folded Reload
	addi	s9, s9, 8
	addiw	s11, s11, 16
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	addiw	a2, a2, 16
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	bge	a7, a0, .LBB16_73
.LBB16_79:                              #   Parent Loop BB16_70 Depth=1
                                        #     Parent Loop BB16_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	s11, 408(sp)                    # 8-byte Folded Spill
	sd	t0, 392(sp)                     # 8-byte Folded Spill
	sd	a7, 400(sp)                     # 8-byte Folded Spill
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a0)
	lui	a0, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a0)
	add	s7, s7, s9
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	sd	s9, 432(sp)                     # 8-byte Folded Spill
	ld	a1, 344(sp)                     # 8-byte Folded Reload
	sd	a2, 424(sp)                     # 8-byte Folded Spill
	ld	s8, 440(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	s4, 448(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	ld	s0, 256(sp)                     # 8-byte Folded Reload
	mul	a1, s0, a1
	lui	a2, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(a2)
	lui	s11, %hi(wp_luma_round)
	ld	s3, 248(sp)                     # 8-byte Folded Reload
	mul	a0, s3, a0
	lui	a3, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(a3)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	ld	s5, 240(sp)                     # 8-byte Folded Reload
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -6(s7)
	ld	s6, 264(sp)                     # 8-byte Folded Reload
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 472(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -4(s7)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 476(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -2(s7)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 480(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, 0(s7)
	and	a0, a0, s6
	ld	a2, 288(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s7, s7, s9
	ld	s11, 464(sp)                    # 8-byte Folded Reload
	mv	a0, s11
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	ld	s10, 424(sp)                    # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	s9, 456(sp)                     # 8-byte Folded Reload
	mv	a0, s9
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	mul	a1, s0, a1
	lui	s4, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lui	s8, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -6(s7)
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 488(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	lui	s4, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	lui	s8, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -4(s7)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 492(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	lui	s4, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -2(s7)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 496(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, 0(s7)
	and	a0, a0, s6
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	add	s7, s7, a0
	mv	a0, s11
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	ld	s8, 440(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	s4, 448(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	mv	a0, s9
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	ld	s9, 408(sp)                     # 8-byte Folded Reload
	mv	a2, s9
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	mul	a1, s0, a1
	lui	s11, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lui	s10, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -6(s7)
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 504(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -4(s7)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 508(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -2(s7)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 512(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, 0(s7)
	and	a0, a0, s6
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 516(sp)
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	add	s7, s7, a0
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mv	s11, s9
	mv	a2, s9
	mv	a3, s8
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(s2)
	mv	s1, a0
	lhu	a0, 0(a0)
	mul	a1, s0, a1
	lui	s4, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lui	s8, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -6(s7)
	and	a0, a0, s6
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s1)
	sw	a1, 520(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	lui	s4, %hi(wp_luma_round)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	lui	s8, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -4(s7)
	and	a0, a0, s6
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s1)
	sw	a1, 524(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, -2(s7)
	and	a0, a0, s6
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s1)
	sw	a1, 528(sp)
	mul	a1, s0, a2
	lw	a2, %lo(wp_luma_round)(s4)
	mul	a0, s3, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s5
	call	clip1a
	lhu	a1, 0(s7)
	and	a0, a0, s6
	subw	a1, a1, a0
	sw	a1, 532(sp)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB16_77
# %bb.80:                               #   in Loop: Header=BB16_79 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 472
	call	SATD
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	addw	a1, a0, a1
	ld	a0, 384(sp)                     # 8-byte Folded Reload
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	ld	a7, 400(sp)                     # 8-byte Folded Reload
	ld	t0, 392(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_78
	j	.LBB16_90
.LBB16_81:                              #   in Loop: Header=BB16_74 Depth=2
	ld	a3, 416(sp)                     # 8-byte Folded Reload
	blez	a3, .LBB16_73
# %bb.82:                               #   in Loop: Header=BB16_74 Depth=2
	li	s0, 0
	li	s3, 0
	slli	a3, a4, 3
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	add	a5, a4, a3
	sd	a5, 400(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 3
	add	a2, a4, a2
	sd	a2, 432(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a4, a1
	sd	a1, 424(sp)                     # 8-byte Folded Spill
	slli	a0, a0, 3
	add	a0, a4, a0
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	andi	a0, a3, 32
	sd	a0, 392(sp)                     # 8-byte Folded Spill
	li	s5, 6
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	j	.LBB16_85
.LBB16_83:                              #   in Loop: Header=BB16_85 Depth=3
	andi	a0, s0, 4
	sltiu	a1, s3, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 392(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 536
	add	a1, a6, a0
	lw	a2, 484(sp)
	lw	a3, 480(sp)
	lw	a4, 476(sp)
	lw	a5, 472(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 488
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
	addi	a5, sp, 504
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
	addi	a4, sp, 520
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB16_84:                              #   in Loop: Header=BB16_85 Depth=3
	addi	s3, s3, 4
	addiw	s0, s0, 4
	addi	s5, s5, 8
	addiw	s11, s11, 16
	addiw	s10, s10, 16
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	bge	s0, a0, .LBB16_73
.LBB16_85:                              #   Parent Loop BB16_70 Depth=1
                                        #     Parent Loop BB16_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a0)
	lui	a0, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a0)
	lui	s9, %hi(get_line_p1)
	add	s7, s7, s5
	ld	s8, 464(sp)                     # 8-byte Folded Reload
	mv	a0, s8
	ld	a1, 344(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	ld	s6, 440(sp)                     # 8-byte Folded Reload
	mv	a3, s6
	ld	s2, 448(sp)                     # 8-byte Folded Reload
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	ld	s4, 456(sp)                     # 8-byte Folded Reload
	mv	a0, s4
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 472(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 476(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 480(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	ld	a5, %lo(get_line_p1)(s9)
	lui	s9, %hi(get_line_p1)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s7, s7, s5
	mv	a0, s8
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	mv	a0, s4
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 488(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 492(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 496(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	ld	a5, %lo(get_line_p1)(s9)
	lui	s9, %hi(get_line_p1)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	add	s7, s7, s5
	mv	a0, s8
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	mv	a0, s4
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 504(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 508(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 512(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	ld	s7, 0(a2)
	ld	a5, %lo(get_line_p1)(s9)
	subw	a1, a1, a0
	sw	a1, 516(sp)
	add	s7, s7, s5
	mv	a0, s8
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s1, a0
	mv	a0, s4
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, -6(s7)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s1)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 520(sp)
	lhu	a1, -4(s7)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s1)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 524(sp)
	lhu	a1, -2(s7)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s1)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 528(sp)
	lhu	a1, 0(s7)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a1, a1, a0
	sw	a1, 532(sp)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB16_83
# %bb.86:                               #   in Loop: Header=BB16_85 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 472
	call	SATD
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	addw	a1, a0, a1
	ld	a0, 384(sp)                     # 8-byte Folded Reload
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB16_84
	j	.LBB16_90
.LBB16_87:                              #   in Loop: Header=BB16_70 Depth=1
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addi	a2, a2, 1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	bne	a2, a0, .LBB16_70
	j	.LBB16_92
.LBB16_88:                              #   in Loop: Header=BB16_70 Depth=1
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB16_90
# %bb.89:                               #   in Loop: Header=BB16_70 Depth=1
	addi	a0, sp, 536
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	call	find_SATD
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	addw	a1, a0, a1
	sd	a1, 312(sp)                     # 8-byte Folded Spill
.LBB16_90:                              #   in Loop: Header=BB16_70 Depth=1
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	mv	a0, a2
	ld	a1, 384(sp)                     # 8-byte Folded Reload
	ld	a3, 312(sp)                     # 8-byte Folded Reload
	blt	a3, a1, .LBB16_69
# %bb.91:                               #   in Loop: Header=BB16_70 Depth=1
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	mv	a3, a1
	j	.LBB16_69
.LBB16_92:
	lw	a0, 72(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB16_94
# %bb.93:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a4)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(a4)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB16_94:
	ld	a0, 384(sp)                     # 8-byte Folded Reload
	ld	ra, 1656(sp)                    # 8-byte Folded Reload
	ld	s0, 1648(sp)                    # 8-byte Folded Reload
	ld	s1, 1640(sp)                    # 8-byte Folded Reload
	ld	s2, 1632(sp)                    # 8-byte Folded Reload
	ld	s3, 1624(sp)                    # 8-byte Folded Reload
	ld	s4, 1616(sp)                    # 8-byte Folded Reload
	ld	s5, 1608(sp)                    # 8-byte Folded Reload
	ld	s6, 1600(sp)                    # 8-byte Folded Reload
	ld	s7, 1592(sp)                    # 8-byte Folded Reload
	ld	s8, 1584(sp)                    # 8-byte Folded Reload
	ld	s9, 1576(sp)                    # 8-byte Folded Reload
	ld	s10, 1568(sp)                   # 8-byte Folded Reload
	ld	s11, 1560(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1664
	ret
.Lfunc_end16:
	.size	SubPelBlockSearchBiPred, .Lfunc_end16-SubPelBlockSearchBiPred
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	BPredPartitionCost              # -- Begin function BPredPartitionCost
	.p2align	2
	.type	BPredPartitionCost,@function
BPredPartitionCost:                     # @BPredPartitionCost
# %bb.0:
	addi	sp, sp, -1520
	sd	ra, 1512(sp)                    # 8-byte Folded Spill
	sd	s0, 1504(sp)                    # 8-byte Folded Spill
	sd	s1, 1496(sp)                    # 8-byte Folded Spill
	sd	s2, 1488(sp)                    # 8-byte Folded Spill
	sd	s3, 1480(sp)                    # 8-byte Folded Spill
	sd	s4, 1472(sp)                    # 8-byte Folded Spill
	sd	s5, 1464(sp)                    # 8-byte Folded Spill
	sd	s6, 1456(sp)                    # 8-byte Folded Spill
	sd	s7, 1448(sp)                    # 8-byte Folded Spill
	sd	s8, 1440(sp)                    # 8-byte Folded Spill
	sd	s9, 1432(sp)                    # 8-byte Folded Spill
	sd	s10, 1424(sp)                   # 8-byte Folded Spill
	sd	s11, 1416(sp)                   # 8-byte Folded Spill
	lui	a6, %hi(input)
	ld	s9, %lo(input)(a6)
	sd	a5, 120(sp)                     # 8-byte Folded Spill
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	mv	s1, a0
	li	a2, 4
	slli	a0, a0, 3
	mv	a5, s1
	blt	s1, a2, .LBB17_2
# %bb.1:
	li	a5, 4
.LBB17_2:
	addi	t0, s9, 148
	slli	a7, a5, 3
	sd	a7, 16(sp)                      # 8-byte Folded Spill
	add	a7, t0, a7
	lw	a2, 4(a7)
	add	a3, s9, a0
	lui	a6, 22
	ld	t1, 120(sp)                     # 8-byte Folded Reload
	beqz	t1, .LBB17_4
# %bb.3:
	addiw	t1, a6, -768
	j	.LBB17_5
.LBB17_4:
	addiw	t1, a6, -760
.LBB17_5:
	lw	t2, 84(a3)
	sd	t2, 80(sp)                      # 8-byte Folded Spill
	lw	a3, 88(a3)
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	blez	a2, .LBB17_20
# %bb.6:
	lui	a3, %hi(img)
	ld	t2, %lo(img)(a3)
	li	a3, 0
	lw	t3, 0(a7)
	add	t1, t2, t1
	slli	a7, a5, 4
	lui	a5, %hi(PartitionMotionSearch.by0)
	addi	a5, a5, %lo(PartitionMotionSearch.by0)
	add	a5, a5, a7
	slli	a1, a1, 2
	add	a5, a5, a1
	lw	s2, 0(a5)
	ld	a5, 0(t1)
	add	a6, t2, a6
	ld	a6, -784(a6)
	addw	t1, s2, a2
	sd	t1, 64(sp)                      # 8-byte Folded Spill
	lui	t1, %hi(PartitionMotionSearch.bx0)
	addi	t1, t1, %lo(PartitionMotionSearch.bx0)
	add	a7, t1, a7
	add	a1, a7, a1
	lw	a7, 0(a1)
	add	t1, t0, a0
	lw	t0, 4(t1)
	lw	t1, 0(t1)
	sd	t3, 72(sp)                      # 8-byte Folded Spill
	addw	t2, a7, t3
	lui	t3, %hi(mvbits)
	ld	t3, %lo(mvbits)(t3)
	slli	t4, a7, 3
	slli	t5, t1, 3
	ld	t6, 104(sp)                     # 8-byte Folded Reload
	slli	t6, t6, 3
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	slli	s0, s0, 3
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	j	.LBB17_8
.LBB17_7:                               #   in Loop: Header=BB17_8 Depth=1
	add	s2, s2, t0
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	bge	s2, s3, .LBB17_11
.LBB17_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_10 Depth 2
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	blez	s3, .LBB17_7
# %bb.9:                                #   in Loop: Header=BB17_8 Depth=1
	slli	s3, s2, 3
	add	s4, a5, s3
	add	s3, a6, s3
	ld	s3, 0(s3)
	ld	s4, 0(s4)
	add	s3, s3, t4
	add	s4, s4, t4
	mv	s5, a7
.LBB17_10:                              #   Parent Loop BB17_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s6, 0(s4)
	ld	s7, 0(s3)
	ld	s8, 0(s6)
	ld	s10, 0(s7)
	add	s8, s8, t6
	ld	s8, 0(s8)
	add	s10, s10, t6
	ld	s10, 0(s10)
	add	s8, s8, a0
	ld	s8, 0(s8)
	add	s10, s10, a0
	ld	s10, 0(s10)
	lh	s11, 0(s8)
	lh	ra, 0(s10)
	sub	s11, s11, ra
	slli	s11, s11, 2
	ld	s6, 8(s6)
	add	s11, t3, s11
	ld	s7, 8(s7)
	lh	s8, 2(s8)
	add	s6, s6, s0
	ld	s6, 0(s6)
	add	s7, s7, s0
	ld	s7, 0(s7)
	lh	s10, 2(s10)
	add	s6, s6, a0
	ld	s6, 0(s6)
	add	s7, s7, a0
	ld	s7, 0(s7)
	lw	s11, 0(s11)
	sub	s8, s8, s10
	lh	s10, 0(s6)
	lh	ra, 0(s7)
	slli	s8, s8, 2
	add	s8, t3, s8
	lw	s8, 0(s8)
	sub	s10, s10, ra
	lh	s6, 2(s6)
	lh	s7, 2(s7)
	slli	s10, s10, 2
	add	s10, t3, s10
	lw	s10, 0(s10)
	sub	s6, s6, s7
	slli	s6, s6, 2
	add	s6, t3, s6
	lw	s6, 0(s6)
	add	a3, s11, a3
	add	s8, s8, s10
	add	a3, a3, s8
	add	a3, a3, s6
	add	s5, s5, t1
	add	s3, s3, t5
	add	s4, s4, t5
	blt	s5, t2, .LBB17_10
	j	.LBB17_7
.LBB17_11:
	mul	a0, a3, a4
	sraiw	s0, a0, 16
	blez	a2, .LBB17_21
# %bb.12:
	lw	a1, 0(a1)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	addw	a0, a1, a0
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	slliw	a0, a1, 2
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addi	s11, sp, 264
	lui	a0, 3
	addiw	a0, a0, 312
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	j	.LBB17_14
.LBB17_13:                              #   in Loop: Header=BB17_14 Depth=1
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 1
	ld	s11, 48(sp)                     # 8-byte Folded Reload
	addi	s11, s11, 256
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB17_21
.LBB17_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_18 Depth 2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	sd	s11, 48(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB17_13
# %bb.15:                               #   in Loop: Header=BB17_14 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 172(a0)
	slliw	s5, a1, 2
	addw	s7, a0, s5
	addi	s3, s5, 1
	addi	s4, s5, 2
	addi	s8, s5, 3
	slli	s7, s7, 3
	sd	s7, 128(sp)                     # 8-byte Folded Spill
	slli	s2, s5, 5
	slli	s3, s3, 5
	slli	s4, s4, 5
	slli	s8, s8, 5
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	j	.LBB17_18
.LBB17_16:                              #   in Loop: Header=BB17_18 Depth=2
	lw	a1, 24(s9)
	addi	a0, sp, 1160
	call	SATD
	addw	s0, a0, s0
.LBB17_17:                              #   in Loop: Header=BB17_18 Depth=2
	addi	s10, s10, 1
	addiw	s6, s6, 4
	addi	s11, s11, 16
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	bge	s10, a0, .LBB17_13
.LBB17_18:                              #   Parent Loop BB17_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lui	s7, %hi(img)
	ld	a0, %lo(img)(s7)
	lw	a0, 168(a0)
	addw	s9, s6, a0
	li	a2, 2
	mv	a0, s6
	mv	a1, s5
	mv	a3, s1
	mv	a4, s1
	ld	a5, 104(sp)                     # 8-byte Folded Reload
	ld	a6, 112(sp)                     # 8-byte Folded Reload
	ld	a7, 120(sp)                     # 8-byte Folded Reload
	call	LumaPrediction4x4Bi
	lui	a0, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a0)
	ld	a0, %lo(img)(s7)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	ld	t1, 0(a4)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	slli	a2, s9, 1
	add	a1, t1, a2
	lhu	a1, 0(a1)
	add	t2, a0, s2
	slli	a5, s6, 1
	add	a3, t2, a5
	lhu	a3, 0(a3)
	subw	a1, a1, a3
	sw	a1, -128(s11)
	sw	a1, 1160(sp)
	addi	a1, a2, 2
	add	a3, t1, a1
	lhu	t0, 0(a3)
	addi	a3, a5, 2
	add	a6, t2, a3
	lhu	t3, 0(a6)
	addi	a6, a2, 4
	add	a7, t1, a6
	lhu	t4, 0(a7)
	addi	a7, a5, 4
	add	t5, t2, a7
	lhu	t5, 0(t5)
	subw	t0, t0, t3
	sw	t0, -124(s11)
	sw	t0, 1164(sp)
	subw	t4, t4, t5
	sw	t4, -120(s11)
	sw	t4, 1168(sp)
	addi	t0, a2, 6
	add	t1, t1, t0
	lhu	t3, 0(t1)
	ld	t4, 8(a4)
	addi	t1, a5, 6
	add	t2, t2, t1
	lhu	t2, 0(t2)
	add	t5, t4, a2
	lhu	t5, 0(t5)
	add	t6, a0, s3
	add	s9, t6, a5
	lhu	s9, 0(s9)
	subw	t2, t3, t2
	sw	t2, -116(s11)
	sw	t2, 1172(sp)
	subw	t2, t5, s9
	sw	t2, -64(s11)
	sw	t2, 1176(sp)
	add	t2, t4, a1
	lhu	t2, 0(t2)
	add	t3, t6, a3
	lhu	t3, 0(t3)
	add	t5, t4, a6
	lhu	t5, 0(t5)
	add	s9, t6, a7
	lhu	s9, 0(s9)
	subw	t2, t2, t3
	sw	t2, -60(s11)
	sw	t2, 1180(sp)
	subw	t2, t5, s9
	sw	t2, -56(s11)
	sw	t2, 1184(sp)
	add	t4, t4, t0
	ld	t2, 16(a4)
	lhu	t3, 0(t4)
	add	t6, t6, t1
	lhu	t4, 0(t6)
	add	t5, t2, a2
	lhu	t5, 0(t5)
	add	t6, a0, s4
	add	s9, t6, a5
	lhu	s9, 0(s9)
	subw	t3, t3, t4
	sw	t3, -52(s11)
	sw	t3, 1188(sp)
	subw	t3, t5, s9
	sw	t3, 0(s11)
	sw	t3, 1192(sp)
	add	t3, t2, a1
	lhu	t3, 0(t3)
	add	t4, t6, a3
	lhu	t4, 0(t4)
	add	t5, t2, a6
	lhu	t5, 0(t5)
	add	s9, t6, a7
	lhu	s9, 0(s9)
	subw	t3, t3, t4
	sw	t3, 4(s11)
	sw	t3, 1196(sp)
	subw	t3, t5, s9
	sw	t3, 8(s11)
	sw	t3, 1200(sp)
	add	t2, t2, t0
	ld	a4, 24(a4)
	lhu	t2, 0(t2)
	add	t6, t6, t1
	lhu	t3, 0(t6)
	add	a2, a4, a2
	lhu	a2, 0(a2)
	add	a0, a0, s8
	add	a5, a0, a5
	lhu	a5, 0(a5)
	subw	t2, t2, t3
	sw	t2, 12(s11)
	sw	t2, 1204(sp)
	subw	a2, a2, a5
	sw	a2, 64(s11)
	sw	a2, 1208(sp)
	add	a1, a4, a1
	lhu	a1, 0(a1)
	add	a3, a0, a3
	lhu	a2, 0(a3)
	add	a6, a4, a6
	lhu	a3, 0(a6)
	add	a7, a0, a7
	lhu	a5, 0(a7)
	subw	a1, a1, a2
	sw	a1, 68(s11)
	sw	a1, 1212(sp)
	subw	a3, a3, a5
	add	a4, a4, t0
	lhu	a1, 0(a4)
	add	a0, a0, t1
	lhu	a0, 0(a0)
	sw	a3, 72(s11)
	sw	a3, 1216(sp)
	lui	a2, %hi(input)
	ld	s9, %lo(input)(a2)
	subw	a1, a1, a0
	sw	a1, 76(s11)
	sw	a1, 1220(sp)
	li	a0, 4
	blt	a0, s1, .LBB17_16
# %bb.19:                               #   in Loop: Header=BB17_18 Depth=2
	addi	a0, s9, 2047
	lw	a0, 1845(a0)
	bnez	a0, .LBB17_17
	j	.LBB17_16
.LBB17_20:
	li	s0, 0
.LBB17_21:
	li	a0, 4
	blt	a0, s1, .LBB17_33
# %bb.22:
	addi	a0, s9, 2047
	lw	a0, 1845(a0)
	beqz	a0, .LBB17_33
# %bb.23:
	addi	a0, s9, 84
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lw	a1, 4(a0)
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	blez	a1, .LBB17_33
# %bb.24:
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	li	a1, 8
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	blt	a2, a1, .LBB17_26
# %bb.25:
	li	a2, 8
	sd	a2, 40(sp)                      # 8-byte Folded Spill
.LBB17_26:
	lw	s9, 0(a0)
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	blt	a2, a1, .LBB17_28
# %bb.27:
	li	a2, 8
.LBB17_28:
	li	a1, 0
	addi	s5, sp, 1192
	addi	s6, sp, 1224
	addi	s7, sp, 1256
	addi	s8, sp, 1288
	addi	s10, sp, 1320
	addi	s11, sp, 1352
	addi	s2, sp, 1384
	addi	s4, sp, 392
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 6
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	slli	s1, a2, 2
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	j	.LBB17_30
.LBB17_29:                              #   in Loop: Header=BB17_30 Depth=1
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	s4, s4, a0
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	bge	a1, a0, .LBB17_33
.LBB17_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_32 Depth 2
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	blez	s9, .LBB17_29
# %bb.31:                               #   in Loop: Header=BB17_30 Depth=1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	lw	a0, 24(a0)
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	li	s3, 0
.LBB17_32:                              #   Parent Loop BB17_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	a0, -228(s4)
	lwu	a1, -232(s4)
	slli	a0, a0, 32
	lwu	a2, -236(s4)
	or	a0, a0, a1
	lwu	a1, -240(s4)
	sd	a0, 1184(sp)
	slli	a2, a2, 32
	lwu	a0, -244(s4)
	or	a1, a2, a1
	sd	a1, 1176(sp)
	lwu	a1, -248(s4)
	slli	a0, a0, 32
	lwu	a2, -252(s4)
	lwu	a3, -256(s4)
	or	a0, a0, a1
	sd	a0, 1168(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 1160(sp)
	lw	a0, -192(s4)
	lw	a1, -188(s4)
	lw	a2, -184(s4)
	lw	a3, -180(s4)
	sw	a0, 0(s5)
	sw	a1, 4(s5)
	sw	a2, 8(s5)
	sw	a3, 12(s5)
	lw	a0, -176(s4)
	lw	a1, -172(s4)
	lw	a2, -168(s4)
	lw	a3, -164(s4)
	sw	a0, 16(s5)
	sw	a1, 20(s5)
	sw	a2, 24(s5)
	sw	a3, 28(s5)
	lw	a0, -100(s4)
	lw	a1, -104(s4)
	lw	a2, -108(s4)
	lw	a3, -112(s4)
	sw	a0, 28(s6)
	sw	a1, 24(s6)
	sw	a2, 20(s6)
	sw	a3, 16(s6)
	lw	a0, -116(s4)
	lw	a1, -120(s4)
	lw	a2, -124(s4)
	lw	a3, -128(s4)
	sw	a0, 12(s6)
	sw	a1, 8(s6)
	sw	a2, 4(s6)
	sw	a3, 0(s6)
	lw	a0, -64(s4)
	lw	a1, -60(s4)
	lw	a2, -56(s4)
	lw	a3, -52(s4)
	sw	a0, 0(s7)
	sw	a1, 4(s7)
	sw	a2, 8(s7)
	sw	a3, 12(s7)
	lw	a0, -48(s4)
	lw	a1, -44(s4)
	lw	a2, -40(s4)
	lw	a3, -36(s4)
	sw	a0, 16(s7)
	sw	a1, 20(s7)
	sw	a2, 24(s7)
	sw	a3, 28(s7)
	lw	a0, 28(s4)
	lw	a1, 24(s4)
	lw	a2, 20(s4)
	lw	a3, 16(s4)
	sw	a0, 28(s8)
	sw	a1, 24(s8)
	sw	a2, 20(s8)
	sw	a3, 16(s8)
	lw	a0, 12(s4)
	lw	a1, 8(s4)
	lw	a2, 4(s4)
	lw	a3, 0(s4)
	sw	a0, 12(s8)
	sw	a1, 8(s8)
	sw	a2, 4(s8)
	sw	a3, 0(s8)
	lw	a0, 92(s4)
	lw	a1, 88(s4)
	lw	a2, 84(s4)
	lw	a3, 80(s4)
	sw	a0, 28(s10)
	sw	a1, 24(s10)
	sw	a2, 20(s10)
	sw	a3, 16(s10)
	lw	a0, 76(s4)
	lw	a1, 72(s4)
	lw	a2, 68(s4)
	lw	a3, 64(s4)
	sw	a0, 12(s10)
	sw	a1, 8(s10)
	sw	a2, 4(s10)
	sw	a3, 0(s10)
	lw	a0, 156(s4)
	lw	a1, 152(s4)
	lw	a2, 148(s4)
	lw	a3, 144(s4)
	sw	a0, 28(s11)
	sw	a1, 24(s11)
	sw	a2, 20(s11)
	sw	a3, 16(s11)
	lw	a0, 140(s4)
	lw	a1, 136(s4)
	lw	a2, 132(s4)
	lw	a3, 128(s4)
	sw	a0, 12(s11)
	sw	a1, 8(s11)
	sw	a2, 4(s11)
	sw	a3, 0(s11)
	lw	a0, 220(s4)
	lw	a1, 216(s4)
	lw	a2, 212(s4)
	lw	a3, 208(s4)
	sw	a0, 28(s2)
	sw	a1, 24(s2)
	sw	a2, 20(s2)
	sw	a3, 16(s2)
	lw	a0, 204(s4)
	lw	a1, 200(s4)
	lw	a2, 196(s4)
	lw	a3, 192(s4)
	sw	a0, 12(s2)
	sw	a1, 8(s2)
	sw	a2, 4(s2)
	sw	a3, 0(s2)
	addi	a0, sp, 1160
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	call	SATD8X8
	addw	s0, a0, s0
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	add	s3, s3, a2
	add	s4, s4, s1
	blt	s3, s9, .LBB17_32
	j	.LBB17_29
.LBB17_33:
	mv	a0, s0
	ld	ra, 1512(sp)                    # 8-byte Folded Reload
	ld	s0, 1504(sp)                    # 8-byte Folded Reload
	ld	s1, 1496(sp)                    # 8-byte Folded Reload
	ld	s2, 1488(sp)                    # 8-byte Folded Reload
	ld	s3, 1480(sp)                    # 8-byte Folded Reload
	ld	s4, 1472(sp)                    # 8-byte Folded Reload
	ld	s5, 1464(sp)                    # 8-byte Folded Reload
	ld	s6, 1456(sp)                    # 8-byte Folded Reload
	ld	s7, 1448(sp)                    # 8-byte Folded Reload
	ld	s8, 1440(sp)                    # 8-byte Folded Reload
	ld	s9, 1432(sp)                    # 8-byte Folded Reload
	ld	s10, 1424(sp)                   # 8-byte Folded Reload
	ld	s11, 1416(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1520
	ret
.Lfunc_end17:
	.size	BPredPartitionCost, .Lfunc_end17-BPredPartitionCost
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function BlockMotionSearch
.LCPI18_0:
	.quad	0x400c000000000000              # double 3.5
	.text
	.globl	BlockMotionSearch
	.p2align	2
	.type	BlockMotionSearch,@function
BlockMotionSearch:                      # @BlockMotionSearch
# %bb.0:
	addi	sp, sp, -384
	sd	ra, 376(sp)                     # 8-byte Folded Spill
	sd	s0, 368(sp)                     # 8-byte Folded Spill
	sd	s1, 360(sp)                     # 8-byte Folded Spill
	sd	s2, 352(sp)                     # 8-byte Folded Spill
	sd	s3, 344(sp)                     # 8-byte Folded Spill
	sd	s4, 336(sp)                     # 8-byte Folded Spill
	sd	s5, 328(sp)                     # 8-byte Folded Spill
	sd	s6, 320(sp)                     # 8-byte Folded Spill
	sd	s7, 312(sp)                     # 8-byte Folded Spill
	sd	s8, 304(sp)                     # 8-byte Folded Spill
	sd	s9, 296(sp)                     # 8-byte Folded Spill
	sd	s10, 288(sp)                    # 8-byte Folded Spill
	sd	s11, 280(sp)                    # 8-byte Folded Spill
	lui	a7, %hi(img)
	ld	t0, %lo(img)(a7)
	lui	a7, 22
	addiw	a7, a7, -784
	add	a7, t0, a7
	ld	t1, 0(a7)
	srai	s2, a3, 2
	slli	t5, s2, 3
	add	t1, t1, t5
	ld	t1, 0(t1)
	srai	t4, a2, 2
	slli	t3, t4, 3
	add	t1, t1, t3
	ld	t1, 0(t1)
	mv	s4, a1
	mv	s5, a0
	slli	s6, a1, 3
	add	t1, t1, s6
	ld	a0, 0(t1)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	slli	s11, s5, 3
	add	a0, a0, s11
	lw	t2, 892(a7)
	ld	t1, 0(a0)
	sd	a6, 200(sp)                     # 8-byte Folded Spill
	sd	a5, 128(sp)                     # 8-byte Folded Spill
	sd	a4, 168(sp)                     # 8-byte Folded Spill
	slli	s7, a4, 3
	add	a0, a1, s7
	beqz	t2, .LBB18_4
# %bb.1:
	lui	a4, 8
	addiw	a4, a4, -1192
	add	a5, t0, a4
	lw	a4, 12(t0)
	ld	a5, 0(a5)
	li	a6, 528
	mul	a6, a4, a6
	add	a5, a5, a6
	lw	a5, 424(a5)
	beqz	a5, .LBB18_4
# %bb.2:
	andi	a4, a4, 1
	li	a5, 2
	sd	a5, 176(sp)                     # 8-byte Folded Spill
	beqz	a4, .LBB18_5
# %bb.3:
	li	a4, 4
	sd	a4, 176(sp)                     # 8-byte Folded Spill
	j	.LBB18_5
.LBB18_4:
	sd	zero, 176(sp)                   # 8-byte Folded Spill
.LBB18_5:
	lw	a4, 168(t0)
	lw	a5, 172(t0)
	addi	a1, a1, 2047
	lw	a1, 1917(a1)
	lw	a6, 88(a0)
	sd	a6, 160(sp)                     # 8-byte Folded Spill
	li	a6, 3
	add	t1, t1, s7
	sd	t4, 184(sp)                     # 8-byte Folded Spill
	sd	t3, 136(sp)                     # 8-byte Folded Spill
	sd	t5, 104(sp)                     # 8-byte Folded Spill
	bne	a1, a6, .LBB18_7
# %bb.6:
	lui	a1, %hi(EPZSDistortion)
	ld	a1, %lo(EPZSDistortion)(a1)
	ld	a6, 176(sp)                     # 8-byte Folded Reload
	addw	a6, a6, s4
	slli	a6, a6, 3
	add	a1, a1, a6
	ld	a1, 0(a1)
	add	a1, a1, s7
	ld	a1, -8(a1)
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	j	.LBB18_8
.LBB18_7:
	sd	zero, 96(sp)                    # 8-byte Folded Spill
.LBB18_8:
	lw	a0, 84(a0)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	a0, 0(t1)
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	ld	a0, 8(a7)
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	addw	a2, a4, a2
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	addw	a3, a5, a3
	sd	a3, 208(sp)                     # 8-byte Folded Spill
	addi	a0, sp, 256
	call	ftime
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB18_11
# %bb.9:
	ld	s9, 144(sp)                     # 8-byte Folded Reload
	slli	s9, s9, 1
	ld	s1, 208(sp)                     # 8-byte Folded Reload
	slli	s1, s1, 3
	ld	s10, 160(sp)                    # 8-byte Folded Reload
	slli	s10, s10, 3
	add	s10, s1, s10
	lui	s8, %hi(BlockMotionSearch.orig_pic)
	addi	s8, s8, %lo(BlockMotionSearch.orig_pic)
	lui	s0, %hi(imgY_org)
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	slli	s3, s3, 1
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(imgY_org)(s0)
	add	a0, a0, s1
	ld	a1, 0(a0)
	ld	a0, 0(s8)
	add	a1, a1, s3
	mv	a2, s9
	call	memcpy
	addi	s1, s1, 8
	addi	s8, s8, 8
	bne	s1, s10, .LBB18_10
.LBB18_11:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	li	a1, 2
	beq	a0, a1, .LBB18_14
# %bb.12:
	li	a1, 1
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	bne	a0, a1, .LBB18_15
# %bb.13:
	mv	a0, s5
	mv	a1, s4
	mv	a2, s2
	mv	a3, s3
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	call	setup_FME
	j	.LBB18_15
.LBB18_14:
	mv	a0, s5
	mv	a1, s4
	mv	a2, s2
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	mv	a3, s3
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	call	simplified_setup_FME
	ld	s8, 144(sp)                     # 8-byte Folded Reload
.LBB18_15:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	addiw	a1, a1, -1712
	add	a0, a0, a1
	ld	a1, 0(a0)
	ld	a0, 24(a0)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a0, a0, s6
	ld	a2, 0(a0)
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	sd	s9, 0(sp)
	ld	s1, 192(sp)                     # 8-byte Folded Reload
	mv	a0, s1
	mv	a3, s5
	mv	a4, s4
	mv	a5, s3
	mv	a6, s2
	mv	a7, s8
	call	SetMotionVectorPredictor
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lh	s0, 0(s1)
	addi	a0, a0, 2047
	lw	a1, 1917(a0)
	lh	s1, 2(s1)
	li	a2, 3
	srai	a3, s9, 2
	sd	a3, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	beq	a1, a2, .LBB18_28
# %bb.16:
	li	a2, 2
	ld	s10, 136(sp)                    # 8-byte Folded Reload
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	beq	a1, a2, .LBB18_23
# %bb.17:
	li	a2, 1
	bne	a1, a2, .LBB18_30
# %bb.18:
	slli	a1, s0, 33
	srli	a1, a1, 62
	add	a1, s0, a1
	slli	a1, a1, 48
	srai	a1, a1, 50
	slli	a2, s1, 33
	lw	a3, 1089(a0)
	srli	a2, a2, 62
	add	a2, s1, a2
	slli	a0, a2, 48
	srai	a0, a0, 50
	bnez	a3, .LBB18_70
# %bb.19:
	negw	a2, a6
	blt	a1, a6, .LBB18_66
# %bb.20:
	mv	a1, a6
	bge	a2, a6, .LBB18_67
.LBB18_21:
	blt	a0, a6, .LBB18_68
.LBB18_22:
	mv	a0, a6
	bge	a2, a6, .LBB18_69
	j	.LBB18_70
.LBB18_23:
	slli	a1, s0, 33
	srli	a1, a1, 62
	add	a1, s0, a1
	slli	a1, a1, 48
	srai	a1, a1, 50
	slli	a2, s1, 33
	lw	a3, 1089(a0)
	srli	a2, a2, 62
	add	a2, s1, a2
	slli	a0, a2, 48
	srai	a0, a0, 50
	bnez	a3, .LBB18_35
# %bb.24:
	negw	a2, a6
	blt	a1, a6, .LBB18_31
# %bb.25:
	mv	a1, a6
	bge	a2, a6, .LBB18_32
.LBB18_26:
	blt	a0, a6, .LBB18_33
.LBB18_27:
	mv	a0, a6
	bge	a2, a6, .LBB18_34
	j	.LBB18_35
.LBB18_28:
	slli	a1, s0, 33
	srli	a1, a1, 62
	add	a1, s0, a1
	slli	a1, a1, 48
	srai	a1, a1, 50
	slli	a2, s1, 33
	lw	a3, 1089(a0)
	srli	a2, a2, 62
	add	a2, s1, a2
	slli	a0, a2, 48
	srai	a0, a0, 50
	ld	s10, 136(sp)                    # 8-byte Folded Reload
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	beqz	a3, .LBB18_50
# %bb.29:
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	j	.LBB18_58
.LBB18_30:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 32(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 24(sp)
	sd	a6, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a0, sp, 278
	sd	a0, 0(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	mv	a6, s0
	mv	a7, s1
	call	FastFullPelBlockMotionSearch
	j	.LBB18_89
.LBB18_31:
	blt	a2, a1, .LBB18_26
.LBB18_32:
	mv	a1, a2
	bge	a0, a6, .LBB18_27
.LBB18_33:
	blt	a2, a0, .LBB18_35
.LBB18_34:
	mv	a0, a2
.LBB18_35:
	slli	a1, a1, 48
	srai	a2, a1, 48
	li	a1, 2047
	subw	a3, a1, a6
	addiw	a1, a6, -2047
	blt	a3, a2, .LBB18_37
# %bb.36:
	mv	a3, a2
.LBB18_37:
	blt	a2, a1, .LBB18_39
# %bb.38:
	mv	a1, a3
.LBB18_39:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 8(a2)
	li	a3, 24
	mul	a3, a2, a3
	lui	a2, %hi(LEVELMVLIMIT)
	addi	a2, a2, %lo(LEVELMVLIMIT)
	add	a3, a2, a3
	lw	a4, 0(a3)
	slli	a0, a0, 48
	srai	a2, a0, 48
	addw	a0, a4, a6
	sh	a1, 278(sp)
	blt	a2, a0, .LBB18_42
# %bb.40:
	lw	a0, 4(a3)
	subw	a0, a0, a6
	blt	a0, a2, .LBB18_42
# %bb.41:
	mv	a0, a2
.LBB18_42:
	sh	a0, 276(sp)
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 32(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 24(sp)
	sd	a6, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a1, sp, 278
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 0(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	mv	a6, s0
	mv	a7, s1
	call	simplified_FastIntegerPelBlockMotionSearch
	srai	a1, s8, 2
	blez	a1, .LBB18_89
# %bb.43:
	li	a2, 0
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	add	a3, a3, s2
	lui	a4, %hi(simplified_fastme_l1_cost)
	addi	a4, a4, %lo(simplified_fastme_l1_cost)
	lui	a5, %hi(img)
	lui	a6, %hi(simplified_fastme_l0_cost)
	addi	a6, a6, %lo(simplified_fastme_l0_cost)
	ld	t5, 152(sp)                     # 8-byte Folded Reload
	j	.LBB18_45
.LBB18_44:                              #   in Loop: Header=BB18_45 Depth=1
	addiw	a2, a2, 1
	beq	a2, a1, .LBB18_90
.LBB18_45:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_49 Depth 2
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	blez	a7, .LBB18_44
# %bb.46:                               #   in Loop: Header=BB18_45 Depth=1
	mv	a7, a6
	beqz	s4, .LBB18_48
# %bb.47:                               #   in Loop: Header=BB18_45 Depth=1
	mv	a7, a4
.LBB18_48:                              #   in Loop: Header=BB18_45 Depth=1
	ld	t0, 0(a7)
	ld	a7, %lo(img)(a5)
	add	t0, t0, s7
	ld	t0, 0(t0)
	add	t1, a2, s3
	mv	t2, s2
.LBB18_49:                              #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t3, 156(a7)
	srli	t3, t3, 2
	addw	t3, t2, t3
	lw	t4, 152(a7)
	slli	t3, t3, 3
	add	t3, t0, t3
	ld	t3, 0(t3)
	srli	t4, t4, 2
	addw	t4, t1, t4
	slli	t4, t4, 2
	add	t3, t3, t4
	addiw	t2, t2, 1
	sw	a0, 0(t3)
	bne	t2, a3, .LBB18_49
	j	.LBB18_44
.LBB18_50:
	negw	a2, a7
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	blt	a1, a7, .LBB18_54
# %bb.51:
	mv	a1, a7
	bge	a2, a7, .LBB18_55
.LBB18_52:
	blt	a0, a7, .LBB18_56
.LBB18_53:
	mv	a0, a7
	bge	a2, a7, .LBB18_57
	j	.LBB18_58
.LBB18_54:
	blt	a2, a1, .LBB18_52
.LBB18_55:
	mv	a1, a2
	bge	a0, a7, .LBB18_53
.LBB18_56:
	blt	a2, a0, .LBB18_58
.LBB18_57:
	mv	a0, a2
.LBB18_58:
	slli	a1, a1, 48
	srai	a2, a1, 48
	li	a1, 2047
	subw	a3, a1, a7
	addiw	a1, a7, -2047
	blt	a3, a2, .LBB18_60
# %bb.59:
	mv	a3, a2
.LBB18_60:
	blt	a2, a1, .LBB18_62
# %bb.61:
	mv	a1, a3
.LBB18_62:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 8(a2)
	li	a3, 24
	mul	a3, a2, a3
	lui	a2, %hi(LEVELMVLIMIT)
	addi	a2, a2, %lo(LEVELMVLIMIT)
	add	a3, a2, a3
	lw	a4, 0(a3)
	slli	a0, a0, 48
	srai	a2, a0, 48
	addw	a0, a4, a7
	sh	a1, 278(sp)
	blt	a2, a0, .LBB18_65
# %bb.63:
	lw	a0, 4(a3)
	subw	a0, a0, a7
	blt	a0, a2, .LBB18_65
# %bb.64:
	mv	a0, a2
.LBB18_65:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a1, a1, a2
	ld	a4, 0(a1)
	ld	a5, 24(a1)
	sh	a0, 276(sp)
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 56(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 48(sp)
	sd	a7, 40(sp)
	addi	a0, sp, 276
	sd	a0, 32(sp)
	addi	a0, sp, 278
	sd	a0, 24(sp)
	sd	s1, 16(sp)
	sd	s0, 8(sp)
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a6, 0(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	ld	a7, 208(sp)                     # 8-byte Folded Reload
	call	EPZSPelBlockMotionSearch
	j	.LBB18_89
.LBB18_66:
	blt	a2, a1, .LBB18_21
.LBB18_67:
	mv	a1, a2
	bge	a0, a6, .LBB18_22
.LBB18_68:
	blt	a2, a0, .LBB18_70
.LBB18_69:
	mv	a0, a2
.LBB18_70:
	slli	a1, a1, 48
	srai	a2, a1, 48
	li	a1, 2047
	subw	a3, a1, a6
	addiw	a1, a6, -2047
	blt	a3, a2, .LBB18_72
# %bb.71:
	mv	a3, a2
.LBB18_72:
	blt	a2, a1, .LBB18_74
# %bb.73:
	mv	a1, a3
.LBB18_74:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 8(a2)
	li	a3, 24
	mul	a3, a2, a3
	lui	a2, %hi(LEVELMVLIMIT)
	addi	a2, a2, %lo(LEVELMVLIMIT)
	add	a3, a2, a3
	lw	a4, 0(a3)
	slli	a0, a0, 48
	srai	a2, a0, 48
	addw	a0, a4, a6
	sh	a1, 278(sp)
	blt	a2, a0, .LBB18_77
# %bb.75:
	lw	a0, 4(a3)
	subw	a0, a0, a6
	blt	a0, a2, .LBB18_77
# %bb.76:
	mv	a0, a2
.LBB18_77:
	sh	a0, 276(sp)
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 32(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 24(sp)
	sd	a6, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a1, sp, 278
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 0(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	mv	a6, s0
	mv	a7, s1
	call	FastIntegerPelBlockMotionSearch
	srai	a1, s8, 2
	blez	a1, .LBB18_89
# %bb.78:
	li	a2, 0
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 32
	srli	a3, a3, 32
	lui	a4, %hi(fastme_l1_cost)
	lui	a5, %hi(img)
	lui	a6, %hi(fastme_ref_cost)
	lui	a7, %hi(fastme_l0_cost)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	j	.LBB18_80
.LBB18_79:                              #   in Loop: Header=BB18_80 Depth=1
	addi	a2, a2, 1
	beq	a2, a1, .LBB18_88
.LBB18_80:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_85 Depth 2
	ld	t0, 224(sp)                     # 8-byte Folded Reload
	blez	t0, .LBB18_79
# %bb.81:                               #   in Loop: Header=BB18_80 Depth=1
	ld	t0, %lo(fastme_l1_cost)(a4)
	ld	t1, %lo(img)(a5)
	ld	t5, %lo(fastme_ref_cost)(a6)
	ld	t2, %lo(fastme_l0_cost)(a7)
	li	t3, 0
	ld	t4, 184(sp)                     # 8-byte Folded Reload
	add	t4, a2, t4
	add	t5, t5, s11
	mv	t6, ra
	mv	s1, s2
	mv	s8, a3
	j	.LBB18_85
.LBB18_82:                              #   in Loop: Header=BB18_85 Depth=2
	lw	s0, 156(t1)
	srli	s0, s0, 2
	addw	s0, s1, s0
	mv	s3, t0
.LBB18_83:                              #   in Loop: Header=BB18_85 Depth=2
	add	s3, s3, s7
	ld	s3, 0(s3)
	lw	s9, 152(t1)
	slli	s0, s0, 3
	add	s0, s3, s0
	ld	s0, 0(s0)
	srli	s3, s9, 2
	addw	s3, s3, t4
	slli	s3, s3, 2
	add	s0, s0, s3
	sw	a0, 0(s0)
.LBB18_84:                              #   in Loop: Header=BB18_85 Depth=2
	addi	t3, t3, 1
	addi	s8, s8, -1
	addi	s1, s1, 1
	addi	t6, t6, 8
	beqz	s8, .LBB18_79
.LBB18_85:                              #   Parent Loop BB18_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	s4, .LBB18_82
# %bb.86:                               #   in Loop: Header=BB18_85 Depth=2
	ld	s0, 0(t5)
	add	s0, s0, s7
	ld	s0, 0(s0)
	add	s0, s0, t6
	ld	s0, 0(s0)
	slli	s3, t4, 2
	add	s0, s0, s3
	sw	a0, 0(s0)
	bnez	s5, .LBB18_84
# %bb.87:                               #   in Loop: Header=BB18_85 Depth=2
	lw	s0, 156(t1)
	add	s3, t3, s2
	srli	s0, s0, 2
	addw	s0, s0, s3
	mv	s3, t2
	j	.LBB18_83
.LBB18_88:
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
.LBB18_89:
	ld	t5, 152(sp)                     # 8-byte Folded Reload
.LBB18_90:
	lui	s0, %hi(input)
	ld	a1, %lo(input)(s0)
	lh	a2, 278(sp)
	lh	a3, 276(sp)
	lw	a4, 28(a1)
	slli	a2, a2, 2
	sh	a2, 278(sp)
	slli	a3, a3, 2
	sh	a3, 276(sp)
	beqz	a4, .LBB18_92
# %bb.91:
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	j	.LBB18_105
.LBB18_92:
	addi	a2, a1, 2047
	lw	a3, 1917(a2)
	beqz	s5, .LBB18_97
# %bb.93:
	li	a4, 3
	bne	a3, a4, .LBB18_97
# %bb.94:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 28(a2)
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB18_113
.LBB18_95:
	lw	a1, 24(a1)
	li	a2, 1
	bne	a1, a2, .LBB18_103
# %bb.96:
	lui	a0, 524288
	addiw	a0, a0, -1
	j	.LBB18_103
.LBB18_97:
	lw	a1, 24(a1)
	li	a4, 1
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	bne	a1, a4, .LBB18_99
# %bb.98:
	lui	a0, 524288
	addiw	a0, a0, -1
.LBB18_99:
	li	a4, 2
	beq	a3, a4, .LBB18_115
# %bb.100:
	li	a4, 1
	bne	a3, a4, .LBB18_103
# %bb.101:
	li	a3, 4
	blt	a5, a3, .LBB18_103
# %bb.102:
	lw	a2, 1845(a2)
	snez	a2, a2
	addi	a3, a5, -4
	seqz	a3, a3
	snez	a1, a1
	and	a1, a1, a3
	and	a1, a2, a1
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	sd	a2, 40(sp)
	sd	a0, 32(sp)
	li	a0, 9
	sd	a0, 24(sp)
	sd	a0, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a0, sp, 278
	sd	a0, 0(sp)
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 48(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	ld	a6, 112(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	call	FastSubPelBlockMotionSearch
	j	.LBB18_117
.LBB18_103:
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	sd	a1, 40(sp)
	sd	a0, 32(sp)
	li	a0, 9
	sd	a0, 24(sp)
	sd	a0, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a1, sp, 278
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 0(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	ld	a6, 112(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	call	SubPelBlockMotionSearch
.LBB18_104:
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	ld	t5, 152(sp)                     # 8-byte Folded Reload
.LBB18_105:
	addi	a1, a5, -1
	li	a2, 1
	seqz	s1, a1
	bne	a5, a2, .LBB18_111
# %bb.106:
	ld	a1, %lo(input)(s0)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	bnez	a1, .LBB18_111
# %bb.107:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	li	a2, 3
	li	s1, 1
	beq	a1, a2, .LBB18_109
# %bb.108:
	bnez	a1, .LBB18_111
.LBB18_109:
	mv	s0, a0
	call	FindSkipModeMotionVector
	li	a0, 0
	call	GetSkipCostMB
	lui	a1, 1
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	sraiw	a1, a1, 13
	subw	s9, a0, a1
	bge	s9, s0, .LBB18_112
# %bb.110:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	ld	a0, -776(a0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	lh	a1, 0(a0)
	lh	a0, 2(a0)
	sh	a1, 278(sp)
	sh	a0, 276(sp)
	j	.LBB18_118
.LBB18_111:
	mv	s9, a0
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	add	s0, a0, s2
	bgtz	a0, .LBB18_119
	j	.LBB18_126
.LBB18_112:
	mv	s9, s0
	j	.LBB18_118
.LBB18_113:
	blez	s5, .LBB18_105
# %bb.114:
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	andi	a2, a2, -4
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	lw	a2, 0(a2)
	lui	a3, %hi(.LCPI18_0)
	fld	fa5, %lo(.LCPI18_0)(a3)
	fcvt.d.w	fa4, a0
	fcvt.d.w	fa3, a2
	fmul.d	fa5, fa3, fa5
	flt.d	a2, fa4, fa5
	beqz	a2, .LBB18_105
	j	.LBB18_95
.LBB18_115:
	blt	a5, a4, .LBB18_164
# %bb.116:
	lw	a2, 1845(a2)
	snez	a2, a2
	sltiu	a3, a5, 5
	snez	a1, a1
	and	a1, a1, a3
	and	a1, a2, a1
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	sd	a2, 40(sp)
	sd	a0, 32(sp)
	li	a0, 9
	sd	a0, 24(sp)
	sd	a0, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a0, sp, 278
	sd	a0, 0(sp)
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 48(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	ld	a6, 112(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	call	simplified_FastSubPelBlockMotionSearch
.LBB18_117:
	mv	s9, a0
	li	s1, 0
.LBB18_118:
	ld	t5, 152(sp)                     # 8-byte Folded Reload
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	add	s0, a0, s2
	blez	a0, .LBB18_126
.LBB18_119:
	srai	a0, s8, 2
	add	a2, a0, s3
	addi	a1, s3, 1
	blt	a2, a1, .LBB18_121
# %bb.120:
	mv	a1, a2
.LBB18_121:
	slli	a1, a1, 3
	mv	a2, s2
	j	.LBB18_123
.LBB18_122:                             #   in Loop: Header=BB18_123 Depth=1
	addi	a2, a2, 1
	bge	a2, s0, .LBB18_126
.LBB18_123:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_125 Depth 2
	blez	a0, .LBB18_122
# %bb.124:                              #   in Loop: Header=BB18_123 Depth=1
	slli	a3, a2, 3
	add	a3, t5, a3
	ld	a5, 0(a3)
	lhu	a3, 278(sp)
	add	a4, a5, s10
	add	a5, a5, a1
.LBB18_125:                             #   Parent Loop BB18_123 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a4)
	add	a6, a6, s6
	ld	a6, 0(a6)
	add	a6, a6, s11
	ld	a6, 0(a6)
	add	a6, a6, s7
	ld	a6, 0(a6)
	sh	a3, 0(a6)
	lh	a7, 276(sp)
	addi	a4, a4, 8
	sh	a7, 2(a6)
	bne	a4, a5, .LBB18_125
	j	.LBB18_122
.LBB18_126:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 1
	bne	a1, a2, .LBB18_163
# %bb.127:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a1, 1264(a1)
	snez	a1, a1
	seqz	a2, s5
	and	a2, s1, a2
	and	a1, a2, a1
	beqz	a1, .LBB18_163
# %bb.128:
	seqz	a4, s4
	lui	a1, 22
	beqz	s4, .LBB18_130
# %bb.129:
	addiw	a1, a1, -768
	j	.LBB18_131
.LBB18_130:
	addiw	a1, a1, -760
.LBB18_131:
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	add	a0, a0, a1
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	ld	a0, 0(a0)
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	lui	a0, 2
	addiw	a0, a0, -1712
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	add	a1, a1, a0
	ld	a0, 0(a1)
	xori	a2, s4, 1
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 3
	ld	a3, 24(a1)
	add	a0, a0, a2
	ld	a1, 0(a0)
	slli	a0, a4, 3
	add	a0, a3, a0
	ld	a2, 0(a0)
	addi	a0, sp, 240
	ld	a3, 160(sp)                     # 8-byte Folded Reload
	sd	a3, 0(sp)
	li	a3, 0
	mv	a5, s3
	mv	a6, s2
	mv	a7, s8
	call	SetMotionVectorPredictor
	lh	a0, 278(sp)
	addi	a0, a0, 2
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lh	a3, 276(sp)
	srai	a2, a0, 2
	sh	a2, 278(sp)
	lw	a4, 1268(a1)
	addi	a3, a3, 2
	srai	a3, a3, 2
	sh	a3, 276(sp)
	lui	a0, 524288
	bltz	a4, .LBB18_144
# %bb.132:
	li	a4, 0
	lh	a5, 240(sp)
	lh	a6, 242(sp)
	lui	a7, 16
	addi	a7, a7, -1
	and	s1, a5, a7
	and	s8, a6, a7
	addi	a5, a5, 2
	srai	a5, a5, 2
	sd	a5, 160(sp)                     # 8-byte Folded Spill
	addi	a6, a6, 2
	srai	a5, a6, 2
	sd	a5, 128(sp)                     # 8-byte Folded Spill
	addiw	a0, a0, -1
	addi	s11, sp, 238
	lui	s3, %hi(BlockMotionSearch.orig_pic)
	addi	s3, s3, %lo(BlockMotionSearch.orig_pic)
	j	.LBB18_135
.LBB18_133:                             #   in Loop: Header=BB18_135 Depth=1
	lw	a1, 1272(a1)
	sraw	a1, a1, s10
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	sd	a4, 64(sp)
	sd	a0, 56(sp)
	sd	a1, 48(sp)
	addi	a0, sp, 232
	sd	a0, 40(sp)
	addi	a0, sp, 234
	sd	a0, 32(sp)
	addi	a0, sp, 236
	sd	a0, 24(sp)
	sd	s11, 16(sp)
	srai	a0, t0, 48
	sd	a0, 8(sp)
	srai	a0, a7, 48
	srai	a6, a6, 48
	srai	a7, a3, 48
	li	a5, 1
	sd	a0, 0(sp)
	mv	a0, s3
	li	a1, 0
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	call	FullPelBlockMotionBiPred
.LBB18_134:                             #   in Loop: Header=BB18_135 Depth=1
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lhu	a2, 234(sp)
	lhu	a3, 232(sp)
	lw	a5, 1268(a1)
	sh	a2, 278(sp)
	sh	a3, 276(sp)
	addiw	a4, s10, 1
	bge	s10, a5, .LBB18_143
.LBB18_135:                             # =>This Inner Loop Header: Depth=1
	ld	a5, 192(sp)                     # 8-byte Folded Reload
	lhu	s5, 0(a5)
	lhu	s9, 2(a5)
	mv	s10, a4
	andi	a4, a4, 1
	bnez	a4, .LBB18_138
# %bb.136:                              #   in Loop: Header=BB18_135 Depth=1
	beqz	s10, .LBB18_139
# %bb.137:                              #   in Loop: Header=BB18_135 Depth=1
	lhu	a5, 238(sp)
	lhu	a4, 236(sp)
	j	.LBB18_140
.LBB18_138:                             #   in Loop: Header=BB18_135 Depth=1
	lh	a5, 238(sp)
	lhu	a4, 236(sp)
	sh	a5, 234(sp)
	mv	a6, s1
	mv	a5, s8
	ld	s6, 152(sp)                     # 8-byte Folded Reload
	j	.LBB18_141
.LBB18_139:                             #   in Loop: Header=BB18_135 Depth=1
	mv	a5, a2
	mv	a4, a3
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	ld	a3, 128(sp)                     # 8-byte Folded Reload
.LBB18_140:                             #   in Loop: Header=BB18_135 Depth=1
	sh	a5, 234(sp)
	mv	a6, s5
	mv	a5, s9
	mv	s5, s1
	mv	s9, s8
	mv	s6, s4
.LBB18_141:                             #   in Loop: Header=BB18_135 Depth=1
	sh	a4, 232(sp)
	sh	a2, 238(sp)
	sh	a3, 236(sp)
	addi	a2, a1, 2047
	lw	a4, 1917(a2)
	slli	a2, s6, 48
	srai	a2, a2, 48
	slli	t0, s9, 48
	slli	a7, s5, 48
	slli	a3, a5, 48
	slli	a6, a6, 48
	li	a5, 3
	bne	a4, a5, .LBB18_133
# %bb.142:                              #   in Loop: Header=BB18_135 Depth=1
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	add	a5, a4, a5
	ld	a4, 0(a5)
	ld	a5, 24(a5)
	lw	a1, 1272(a1)
	ld	t1, 200(sp)                     # 8-byte Folded Reload
	sd	t1, 88(sp)
	sd	a0, 80(sp)
	sd	a1, 72(sp)
	addi	a0, sp, 232
	sd	a0, 64(sp)
	addi	a0, sp, 234
	sd	a0, 56(sp)
	addi	a0, sp, 236
	sd	a0, 48(sp)
	sd	s11, 40(sp)
	srai	a0, t0, 48
	sd	a0, 32(sp)
	srai	a0, a7, 48
	sd	a0, 24(sp)
	srai	a3, a3, 48
	sd	a3, 16(sp)
	srai	a0, a6, 48
	sd	a0, 8(sp)
	li	a0, 1
	sd	a0, 0(sp)
	mv	a0, s3
	li	a1, 0
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	ld	a7, 208(sp)                     # 8-byte Folded Reload
	call	EPZSBiPredBlockMotionSearch
	j	.LBB18_134
.LBB18_143:
	lh	a6, 238(sp)
	lh	a7, 236(sp)
	slli	a5, a2, 2
	slli	a4, a3, 2
	slli	a3, a6, 2
	slli	a2, a7, 2
	ld	s10, 136(sp)                    # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	j	.LBB18_145
.LBB18_144:
	li	a2, 0
	li	a3, 0
	li	a4, 0
	li	a5, 0
	li	s5, 0
	li	s9, 0
	addiw	a0, a0, -1
	mv	s6, s4
.LBB18_145:
	lw	a6, 1276(a1)
	sh	a5, 278(sp)
	sh	a4, 276(sp)
	sh	a3, 238(sp)
	sh	a2, 236(sp)
	beqz	a6, .LBB18_155
# %bb.146:
	lw	a2, 28(a1)
	bnez	a2, .LBB18_150
# %bb.147:
	lw	a1, 24(a1)
	beqz	a1, .LBB18_149
# %bb.148:
	lui	a0, 524288
	addiw	a0, a0, -1
.LBB18_149:
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	sd	a1, 56(sp)
	sd	a0, 48(sp)
	li	a0, 9
	sd	a0, 40(sp)
	sd	a0, 32(sp)
	addi	a0, sp, 276
	sd	a0, 24(sp)
	addi	a0, sp, 278
	sd	a0, 16(sp)
	addi	a0, sp, 236
	sd	a0, 8(sp)
	addi	a1, sp, 238
	slli	a2, s6, 48
	srai	a2, a2, 48
	slli	s5, s5, 48
	srai	a6, s5, 48
	slli	s9, s9, 48
	srai	a7, s9, 48
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	li	a5, 1
	sd	a1, 0(sp)
	li	a1, 0
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	call	SubPelBlockSearchBiPred
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a6, 1276(a1)
.LBB18_150:
	li	a2, 2
	bne	a6, a2, .LBB18_155
# %bb.151:
	lw	a2, 28(a1)
	bnez	a2, .LBB18_155
# %bb.152:
	lw	a1, 24(a1)
	beqz	a1, .LBB18_154
# %bb.153:
	lui	a0, 524288
	addiw	a0, a0, -1
.LBB18_154:
	slli	a1, s6, 48
	srli	a1, a1, 48
	seqz	a2, a1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	sd	a1, 56(sp)
	sd	a0, 48(sp)
	li	a0, 9
	sd	a0, 40(sp)
	sd	a0, 32(sp)
	addi	a0, sp, 236
	sd	a0, 24(sp)
	addi	a0, sp, 238
	sd	a0, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a1, sp, 278
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	li	a5, 1
	sd	a1, 0(sp)
	li	a1, 0
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	ld	a6, 112(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	call	SubPelBlockSearchBiPred
.LBB18_155:
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	t1, 96(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB18_163
# %bb.156:
	srai	a0, s8, 2
	add	a1, a0, s3
	slli	a2, s6, 48
	srai	a2, a2, 48
	xori	a3, s6, 1
	slli	a3, a3, 48
	addi	a4, s3, 1
	srai	a3, a3, 48
	blt	a1, a4, .LBB18_158
# %bb.157:
	mv	a4, a1
.LBB18_158:
	slli	a1, a4, 3
	slli	a2, a2, 3
	slli	a3, a3, 3
	j	.LBB18_160
.LBB18_159:                             #   in Loop: Header=BB18_160 Depth=1
	addi	s2, s2, 1
	bge	s2, s0, .LBB18_163
.LBB18_160:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_162 Depth 2
	blez	a0, .LBB18_159
# %bb.161:                              #   in Loop: Header=BB18_160 Depth=1
	slli	a4, s2, 3
	add	a4, t1, a4
	ld	a5, 0(a4)
	add	a4, a5, s10
	add	a5, a5, a1
.LBB18_162:                             #   Parent Loop BB18_160 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a4)
	add	a7, a6, a2
	ld	a7, 0(a7)
	ld	a7, 0(a7)
	lh	t0, 278(sp)
	add	a7, a7, s7
	ld	a7, 0(a7)
	sh	t0, 0(a7)
	lh	t0, 276(sp)
	sh	t0, 2(a7)
	add	a6, a6, a3
	ld	a6, 0(a6)
	ld	a6, 0(a6)
	lh	a7, 238(sp)
	add	a6, a6, s7
	ld	a6, 0(a6)
	sh	a7, 0(a6)
	lh	a7, 236(sp)
	addi	a4, a4, 8
	sh	a7, 2(a6)
	bne	a4, a5, .LBB18_162
	j	.LBB18_159
.LBB18_163:
	addi	a0, sp, 240
	call	ftime
	ld	a0, 240(sp)
	ld	a1, 256(sp)
	lhu	a2, 248(sp)
	lhu	a3, 264(sp)
	subw	a0, a0, a1
	li	a1, 1000
	mul	a0, a0, a1
	subw	a2, a2, a3
	lui	a1, %hi(me_tot_time)
	lw	a3, %lo(me_tot_time)(a1)
	lui	a4, %hi(me_time)
	lw	a5, %lo(me_time)(a4)
	add	a0, a2, a0
	add	a3, a3, a0
	sw	a3, %lo(me_tot_time)(a1)
	add	a0, a5, a0
	sw	a0, %lo(me_time)(a4)
	mv	a0, s9
	ld	ra, 376(sp)                     # 8-byte Folded Reload
	ld	s0, 368(sp)                     # 8-byte Folded Reload
	ld	s1, 360(sp)                     # 8-byte Folded Reload
	ld	s2, 352(sp)                     # 8-byte Folded Reload
	ld	s3, 344(sp)                     # 8-byte Folded Reload
	ld	s4, 336(sp)                     # 8-byte Folded Reload
	ld	s5, 328(sp)                     # 8-byte Folded Reload
	ld	s6, 320(sp)                     # 8-byte Folded Reload
	ld	s7, 312(sp)                     # 8-byte Folded Reload
	ld	s8, 304(sp)                     # 8-byte Folded Reload
	ld	s9, 296(sp)                     # 8-byte Folded Reload
	ld	s10, 288(sp)                    # 8-byte Folded Reload
	ld	s11, 280(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 384
	ret
.LBB18_164:
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	sd	a1, 40(sp)
	sd	a0, 32(sp)
	li	a0, 9
	sd	a0, 24(sp)
	sd	a0, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a1, sp, 278
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 0(sp)
	mv	a1, s5
	mv	a2, s4
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	ld	a6, 112(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	call	simplified_FastFullSubPelBlockMotionSearch
	j	.LBB18_104
.Lfunc_end18:
	.size	BlockMotionSearch, .Lfunc_end18-BlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindSkipModeMotionVector        # -- Begin function FindSkipModeMotionVector
	.p2align	2
	.type	FindSkipModeMotionVector,@function
FindSkipModeMotionVector:               # @FindSkipModeMotionVector
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	add	a1, a0, a1
	lui	s3, 8
	add	a2, a0, s3
	lw	a0, 12(a0)
	ld	s1, -1192(a2)
	ld	s0, -776(a1)
	li	s4, 528
	mul	a1, a0, s4
	add	s1, s1, a1
	li	a3, -1
	addi	a5, sp, 36
	li	a1, 0
	li	a2, 0
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s2)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 12
	li	a1, 0
	li	a2, 0
	li	a3, 0
	call	getLuma4x4Neighbour
	lw	a0, 36(sp)
	beqz	a0, .LBB19_4
# %bb.1:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a1, a1, a2
	ld	a2, 24(a1)
	lw	a3, 56(sp)
	ld	a2, 0(a2)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a1, 0(a1)
	lw	a4, 52(sp)
	ld	a2, 0(a2)
	ld	a1, 0(a1)
	slli	a5, a4, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	add	a1, a1, a3
	ld	a3, 0(a1)
	ld	a5, %lo(img)(s2)
	lh	a1, 2(a2)
	add	a3, a3, a4
	add	a5, a5, s3
	lw	a4, 40(sp)
	ld	a5, -1192(a5)
	lbu	a2, 0(a3)
	lw	a6, 424(s1)
	mul	a3, a4, s4
	add	a3, a5, a3
	lw	a3, 424(a3)
	beqz	a6, .LBB19_5
# %bb.2:
	bnez	a3, .LBB19_7
# %bb.3:
	slli	a1, a1, 48
	srli	a1, a1, 48
	srli	a3, a1, 15
	add	a1, a1, a3
	slli	a1, a1, 48
	srai	a1, a1, 49
	slli	a2, a2, 1
	j	.LBB19_7
.LBB19_4:
	li	a1, 0
	li	a2, 0
	j	.LBB19_7
.LBB19_5:
	beqz	a3, .LBB19_7
# %bb.6:
	slli	a1, a1, 1
	srli	a2, a2, 1
.LBB19_7:
	lw	a3, 12(sp)
	beqz	a3, .LBB19_11
# %bb.8:
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	lui	a5, 2
	addiw	a5, a5, -1712
	add	a4, a4, a5
	ld	a5, 24(a4)
	lw	a6, 32(sp)
	ld	a5, 0(a5)
	slli	a6, a6, 3
	add	a5, a5, a6
	lw	a7, 28(sp)
	ld	a4, 0(a4)
	ld	a5, 0(a5)
	slli	t0, a7, 3
	ld	a4, 0(a4)
	add	a5, a5, t0
	ld	a5, 0(a5)
	add	a4, a4, a6
	ld	a6, 0(a4)
	lh	a4, 2(a5)
	lui	a5, %hi(img)
	ld	t0, %lo(img)(a5)
	add	a6, a6, a7
	lbu	a5, 0(a6)
	lui	a6, 8
	add	a6, t0, a6
	lw	a7, 16(sp)
	ld	a6, -1192(a6)
	lw	t0, 424(s1)
	li	t1, 528
	mul	a7, a7, t1
	add	a6, a6, a7
	lw	a6, 424(a6)
	beqz	t0, .LBB19_12
# %bb.9:
	bnez	a6, .LBB19_14
# %bb.10:
	slli	a4, a4, 48
	srli	a4, a4, 48
	srli	a6, a4, 15
	add	a4, a4, a6
	slli	a4, a4, 48
	srai	a4, a4, 49
	slli	a5, a5, 1
	j	.LBB19_14
.LBB19_11:
	li	a4, 0
	li	a5, 0
	j	.LBB19_14
.LBB19_12:
	beqz	a6, .LBB19_14
# %bb.13:
	slli	a4, a4, 1
	srli	a5, a5, 1
.LBB19_14:
	beqz	a0, .LBB19_17
# %bb.15:
	beqz	a2, .LBB19_18
# %bb.16:
	li	a0, 0
	bnez	a3, .LBB19_19
	j	.LBB19_22
.LBB19_17:
	li	a0, 1
	bnez	a3, .LBB19_19
	j	.LBB19_22
.LBB19_18:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a2, 2
	add	a0, a0, a2
	ld	a0, -1688(a0)
	lw	a2, 56(sp)
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a2, 52(sp)
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	lhu	a0, 0(a0)
	or	a0, a0, a1
	seqz	a0, a0
	beqz	a3, .LBB19_22
.LBB19_19:
	bnez	a5, .LBB19_21
# %bb.20:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a2, 2
	add	a2, a1, a2
	ld	a2, -1688(a2)
	lw	a3, 32(sp)
	ld	a2, 0(a2)
	slli	a3, a3, 3
	add	a3, a2, a3
	lw	a5, 28(sp)
	ld	a3, 0(a3)
	slli	a5, a5, 3
	add	a3, a3, a5
	ld	a3, 0(a3)
	lhu	a3, 0(a3)
	beqz	a3, .LBB19_26
.LBB19_21:
	beqz	a0, .LBB19_23
.LBB19_22:
	li	a0, 0
	j	.LBB19_25
.LBB19_23:
	lui	a0, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a0)
	lui	a0, 2
	add	a0, a1, a0
	ld	a0, -1688(a0)
	ld	a2, 0(a0)
.LBB19_24:
	lui	a0, 2
	add	a0, a1, a0
	ld	a0, -1712(a0)
	ld	a1, 0(a0)
	li	a3, 16
	addi	a0, sp, 60
	li	a7, 16
	sd	a3, 0(sp)
	li	a3, 0
	li	a4, 0
	li	a5, 0
	li	a6, 0
	call	SetMotionVectorPredictor
	lw	a0, 60(sp)
.LBB19_25:
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a2, 0(a1)
	srli	a1, a0, 16
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 0(s0)
	ld	a2, 8(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 0(s0)
	ld	a2, 16(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 0(s0)
	ld	a2, 24(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 8(s0)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 8(s0)
	ld	a2, 8(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 8(s0)
	ld	a2, 16(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 8(s0)
	ld	a2, 24(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 16(s0)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 16(s0)
	ld	a2, 8(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 16(s0)
	ld	a2, 16(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 16(s0)
	ld	a2, 24(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 24(s0)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 24(s0)
	ld	a2, 8(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 24(s0)
	ld	a2, 16(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	a2, 24(s0)
	ld	a2, 24(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	sh	a1, 2(a2)
	sh	a0, 0(a2)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.LBB19_26:
	seqz	a3, a4
	or	a0, a3, a0
	beqz	a0, .LBB19_24
	j	.LBB19_22
.Lfunc_end19:
	.size	FindSkipModeMotionVector, .Lfunc_end19-FindSkipModeMotionVector
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GetSkipCostMB                   # -- Begin function GetSkipCostMB
	.p2align	2
	.type	GetSkipCostMB,@function
GetSkipCostMB:                          # @GetSkipCostMB
# %bb.0:
	addi	sp, sp, -768
	sd	ra, 760(sp)                     # 8-byte Folded Spill
	sd	s0, 752(sp)                     # 8-byte Folded Spill
	sd	s1, 744(sp)                     # 8-byte Folded Spill
	sd	s2, 736(sp)                     # 8-byte Folded Spill
	sd	s3, 728(sp)                     # 8-byte Folded Spill
	sd	s4, 720(sp)                     # 8-byte Folded Spill
	sd	s5, 712(sp)                     # 8-byte Folded Spill
	sd	s6, 704(sp)                     # 8-byte Folded Spill
	sd	s7, 696(sp)                     # 8-byte Folded Spill
	sd	s8, 688(sp)                     # 8-byte Folded Spill
	sd	s9, 680(sp)                     # 8-byte Folded Spill
	sd	s10, 672(sp)                    # 8-byte Folded Spill
	sd	s11, 664(sp)                    # 8-byte Folded Spill
	li	a1, 0
	li	a2, 0
	li	a3, 0
	li	s0, 0
	li	a0, -15
	srli	a0, a0, 1
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	a0, 3
	addiw	a0, a0, 414
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s8, %hi(img)
	j	.LBB20_3
.LBB20_1:                               #   in Loop: Header=BB20_3 Depth=1
	beqz	s10, .LBB20_10
.LBB20_2:                               #   in Loop: Header=BB20_3 Depth=1
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	addiw	a3, a3, 1
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 1
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 4
	li	a0, 4
	beq	a3, a0, .LBB20_12
.LBB20_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
                                        #       Child Loop BB20_8 Depth 3
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	andi	a0, a1, 1
	srli	a1, a2, 3
	slli	a1, a1, 8
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	and	a4, a2, a4
	slli	a2, a0, 3
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	slli	a2, a3, 2
	andi	a2, a2, 8
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 3
	andi	a3, a3, 8
	addi	a2, a2, 8
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	addi	s7, a3, 8
	slli	a0, a0, 4
	or	a0, a1, a0
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	s2, a0, a1
	addi	s3, sp, 408
	j	.LBB20_5
.LBB20_4:                               #   in Loop: Header=BB20_5 Depth=2
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	addi	a4, a4, 4
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	addi	s3, s3, 128
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	addi	s2, s2, 128
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	bgeu	a4, a0, .LBB20_1
.LBB20_5:                               #   Parent Loop BB20_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_8 Depth 3
	ld	a0, %lo(img)(s8)
	lw	a0, 172(a0)
	add	a0, a4, a0
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	sext.w	s1, a4
	slli	s4, a0, 3
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	mv	s6, s11
	j	.LBB20_8
.LBB20_6:                               #   in Loop: Header=BB20_8 Depth=3
	lw	a1, 24(s5)
	addi	a0, sp, 600
	call	SATD
	addw	s0, a0, s0
.LBB20_7:                               #   in Loop: Header=BB20_8 Depth=3
	addi	s11, s11, 4
	addi	s6, s6, 4
	addi	s3, s3, 16
	addi	s2, s2, 8
	bgeu	s11, s7, .LBB20_4
.LBB20_8:                               #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, %lo(img)(s8)
	lw	a0, 168(a0)
	add	s5, s11, a0
	sext.w	a0, s6
	mv	a1, s1
	li	a2, 0
	li	a3, 0
	li	a4, 0
	li	a5, 0
	li	a6, 0
	call	LumaPrediction4x4
	lui	a0, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a0)
	add	a5, a5, s4
	ld	a6, 0(a5)
	ld	a0, %lo(img)(s8)
	slli	a3, s5, 1
	add	a1, a6, a3
	lhu	a1, 0(a1)
	add	a0, a0, s2
	lhu	a2, -102(a0)
	subw	a1, a1, a2
	sw	a1, -64(s3)
	sw	a1, 600(sp)
	addi	a2, a3, 2
	add	a1, a6, a2
	lhu	a1, 0(a1)
	lhu	a7, -100(a0)
	addi	a4, a3, 4
	add	t0, a6, a4
	lhu	t0, 0(t0)
	lhu	t1, -98(a0)
	subw	a1, a1, a7
	sw	a1, -60(s3)
	sw	a1, 604(sp)
	subw	a1, t0, t1
	sw	a1, -56(s3)
	sw	a1, 608(sp)
	addi	a1, a3, 6
	ld	a7, 8(a5)
	add	a6, a6, a1
	lhu	a6, 0(a6)
	lhu	t0, -96(a0)
	add	t1, a7, a3
	lhu	t1, 0(t1)
	lhu	t2, -70(a0)
	subw	a6, a6, t0
	sw	a6, -52(s3)
	sw	a6, 612(sp)
	subw	a6, t1, t2
	sw	a6, -32(s3)
	sw	a6, 616(sp)
	add	a6, a7, a2
	lhu	a6, 0(a6)
	lhu	t0, -68(a0)
	add	t1, a7, a4
	lhu	t1, 0(t1)
	lhu	t2, -66(a0)
	subw	a6, a6, t0
	sw	a6, -28(s3)
	sw	a6, 620(sp)
	subw	a6, t1, t2
	sw	a6, -24(s3)
	sw	a6, 624(sp)
	ld	a6, 16(a5)
	add	a7, a7, a1
	lhu	a7, 0(a7)
	lhu	t0, -64(a0)
	add	t1, a6, a3
	lhu	t1, 0(t1)
	lhu	t2, -38(a0)
	subw	a7, a7, t0
	sw	a7, -20(s3)
	sw	a7, 628(sp)
	subw	a7, t1, t2
	sw	a7, 0(s3)
	sw	a7, 632(sp)
	add	a7, a6, a2
	lhu	a7, 0(a7)
	lhu	t0, -36(a0)
	add	t1, a6, a4
	lhu	t1, 0(t1)
	lhu	t2, -34(a0)
	subw	a7, a7, t0
	sw	a7, 4(s3)
	sw	a7, 636(sp)
	subw	a7, t1, t2
	sw	a7, 8(s3)
	sw	a7, 640(sp)
	ld	a5, 24(a5)
	add	a6, a6, a1
	lhu	a6, 0(a6)
	lhu	a7, -32(a0)
	add	a3, a5, a3
	lhu	a3, 0(a3)
	lhu	t0, -6(a0)
	subw	a6, a6, a7
	sw	a6, 12(s3)
	sw	a6, 644(sp)
	subw	a3, a3, t0
	sw	a3, 32(s3)
	sw	a3, 648(sp)
	add	a2, a5, a2
	lhu	a2, 0(a2)
	lhu	a3, -4(a0)
	add	a4, a5, a4
	lhu	a4, 0(a4)
	lhu	a6, -2(a0)
	subw	a2, a2, a3
	sw	a2, 36(s3)
	sw	a2, 652(sp)
	subw	a2, a4, a6
	sw	a2, 40(s3)
	lui	a3, %hi(input)
	ld	s5, %lo(input)(a3)
	add	a1, a5, a1
	lhu	a1, 0(a1)
	lhu	a0, 0(a0)
	addi	s9, s5, 2047
	lw	s10, 1089(s9)
	sw	a2, 656(sp)
	subw	a1, a1, a0
	sw	a1, 44(s3)
	sw	a1, 660(sp)
	bnez	s10, .LBB20_6
# %bb.9:                                #   in Loop: Header=BB20_8 Depth=3
	lw	a0, 1845(s9)
	bnez	a0, .LBB20_7
	j	.LBB20_6
.LBB20_10:                              #   in Loop: Header=BB20_3 Depth=1
	lw	a0, 1845(s9)
	beqz	a0, .LBB20_2
# %bb.11:                               #   in Loop: Header=BB20_3 Depth=1
	addi	a0, sp, 88
	addi	a1, sp, 344
	li	a2, 256
	call	memcpy
	lw	a1, 24(s5)
	addi	a0, sp, 88
	call	SATD8X8
	addw	s0, a0, s0
	j	.LBB20_2
.LBB20_12:
	mv	a0, s0
	ld	ra, 760(sp)                     # 8-byte Folded Reload
	ld	s0, 752(sp)                     # 8-byte Folded Reload
	ld	s1, 744(sp)                     # 8-byte Folded Reload
	ld	s2, 736(sp)                     # 8-byte Folded Reload
	ld	s3, 728(sp)                     # 8-byte Folded Reload
	ld	s4, 720(sp)                     # 8-byte Folded Reload
	ld	s5, 712(sp)                     # 8-byte Folded Reload
	ld	s6, 704(sp)                     # 8-byte Folded Reload
	ld	s7, 696(sp)                     # 8-byte Folded Reload
	ld	s8, 688(sp)                     # 8-byte Folded Reload
	ld	s9, 680(sp)                     # 8-byte Folded Reload
	ld	s10, 672(sp)                    # 8-byte Folded Reload
	ld	s11, 664(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 768
	ret
.Lfunc_end20:
	.size	GetSkipCostMB, .Lfunc_end20-GetSkipCostMB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	BIDPartitionCost                # -- Begin function BIDPartitionCost
	.p2align	2
	.type	BIDPartitionCost,@function
BIDPartitionCost:                       # @BIDPartitionCost
# %bb.0:
	addi	sp, sp, -1504
	sd	ra, 1496(sp)                    # 8-byte Folded Spill
	sd	s0, 1488(sp)                    # 8-byte Folded Spill
	sd	s1, 1480(sp)                    # 8-byte Folded Spill
	sd	s2, 1472(sp)                    # 8-byte Folded Spill
	sd	s3, 1464(sp)                    # 8-byte Folded Spill
	sd	s4, 1456(sp)                    # 8-byte Folded Spill
	sd	s5, 1448(sp)                    # 8-byte Folded Spill
	sd	s6, 1440(sp)                    # 8-byte Folded Spill
	sd	s7, 1432(sp)                    # 8-byte Folded Spill
	sd	s8, 1424(sp)                    # 8-byte Folded Spill
	sd	s9, 1416(sp)                    # 8-byte Folded Spill
	sd	s10, 1408(sp)                   # 8-byte Folded Spill
	sd	s11, 1400(sp)                   # 8-byte Folded Spill
	lui	a5, %hi(input)
	ld	s10, %lo(input)(a5)
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	mv	s1, a0
	slli	a0, a0, 3
	li	a2, 4
	add	a3, s10, a0
	mv	a5, s1
	blt	s1, a2, .LBB21_2
# %bb.1:
	li	a5, 4
.LBB21_2:
	lw	a2, 84(a3)
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	addi	a6, s10, 148
	slli	a7, a5, 3
	sd	a7, 8(sp)                       # 8-byte Folded Spill
	add	a7, a6, a7
	lw	a2, 4(a7)
	lw	a3, 88(a3)
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	blez	a2, .LBB21_17
# %bb.3:
	li	a3, 0
	lw	s9, 0(a7)
	slli	a5, a5, 4
	lui	a7, %hi(PartitionMotionSearch.bx0)
	addi	a7, a7, %lo(PartitionMotionSearch.bx0)
	add	a7, a7, a5
	slli	a1, a1, 2
	add	a7, a7, a1
	lw	t1, 0(a7)
	lui	a7, %hi(PartitionMotionSearch.by0)
	addi	a7, a7, %lo(PartitionMotionSearch.by0)
	add	a5, a7, a5
	add	a1, a5, a1
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	lw	ra, 0(a1)
	lui	a1, 22
	addiw	a1, a1, -784
	add	a5, a5, a1
	ld	a1, 8(a5)
	ld	a5, 0(a5)
	addw	a7, ra, a2
	sd	a7, 64(sp)                      # 8-byte Folded Spill
	add	a7, a6, a0
	lw	a6, 4(a7)
	lw	a7, 0(a7)
	addw	s11, t1, s9
	lui	t0, %hi(mvbits)
	ld	t0, %lo(mvbits)(t0)
	sd	t1, 40(sp)                      # 8-byte Folded Spill
	slli	t1, t1, 3
	slli	t2, a7, 3
	ld	t3, 88(sp)                      # 8-byte Folded Reload
	slli	t3, t3, 3
	ld	t4, 96(sp)                      # 8-byte Folded Reload
	slli	t4, t4, 3
	mv	t5, ra
	j	.LBB21_5
.LBB21_4:                               #   in Loop: Header=BB21_5 Depth=1
	add	t5, t5, a6
	ld	t6, 64(sp)                      # 8-byte Folded Reload
	bge	t5, t6, .LBB21_8
.LBB21_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_7 Depth 2
	blez	s9, .LBB21_4
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	slli	t6, t5, 3
	add	s0, a1, t6
	add	t6, a5, t6
	ld	t6, 0(t6)
	ld	s0, 0(s0)
	add	t6, t6, t1
	add	s0, s0, t1
	ld	s2, 40(sp)                      # 8-byte Folded Reload
.LBB21_7:                               #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s3, 0(s0)
	ld	s4, 0(t6)
	ld	s5, 0(s3)
	ld	s6, 0(s4)
	add	s5, s5, t3
	ld	s5, 0(s5)
	add	s6, s6, t3
	ld	s6, 0(s6)
	add	s5, s5, a0
	ld	s5, 0(s5)
	add	s6, s6, a0
	ld	s6, 0(s6)
	lh	s7, 0(s5)
	lh	s8, 0(s6)
	sub	s7, s7, s8
	slli	s7, s7, 2
	ld	s3, 8(s3)
	add	s7, t0, s7
	ld	s4, 8(s4)
	lh	s5, 2(s5)
	add	s3, s3, t4
	ld	s3, 0(s3)
	add	s4, s4, t4
	ld	s4, 0(s4)
	lh	s6, 2(s6)
	add	s3, s3, a0
	ld	s3, 0(s3)
	add	s4, s4, a0
	ld	s4, 0(s4)
	lw	s7, 0(s7)
	sub	s5, s5, s6
	lh	s6, 0(s3)
	lh	s8, 0(s4)
	slli	s5, s5, 2
	add	s5, t0, s5
	lw	s5, 0(s5)
	sub	s6, s6, s8
	lh	s3, 2(s3)
	lh	s4, 2(s4)
	slli	s6, s6, 2
	add	s6, t0, s6
	lw	s6, 0(s6)
	sub	s3, s3, s4
	slli	s3, s3, 2
	add	s3, t0, s3
	lw	s3, 0(s3)
	add	a3, s7, a3
	add	s5, s5, s6
	add	a3, a3, s5
	add	a3, a3, s3
	add	s2, s2, a7
	add	t6, t6, t2
	add	s0, s0, t2
	blt	s2, s11, .LBB21_7
	j	.LBB21_4
.LBB21_8:
	mul	a0, a3, a4
	sraiw	s0, a0, 16
	blez	a2, .LBB21_18
# %bb.9:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	slliw	a0, a0, 2
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	s7, sp, 248
	lui	a0, 3
	addiw	a0, a0, 312
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 32(sp)                      # 8-byte Folded Spill
	j	.LBB21_11
.LBB21_10:                              #   in Loop: Header=BB21_11 Depth=1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	addi	ra, ra, 1
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	addi	s7, s7, 256
	ld	s9, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	bge	ra, a0, .LBB21_18
.LBB21_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_15 Depth 2
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s7, 48(sp)                      # 8-byte Folded Spill
	blez	s9, .LBB21_10
# %bb.12:                               #   in Loop: Header=BB21_11 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 172(a0)
	slliw	s4, ra, 2
	addw	s10, a0, s4
	addi	s2, s4, 1
	addi	s3, s4, 2
	addi	s6, s4, 3
	slli	s10, s10, 3
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	slli	a0, s4, 5
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	slli	s2, s2, 5
	slli	s3, s3, 5
	slli	s6, s6, 5
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 40(sp)                      # 8-byte Folded Reload
	j	.LBB21_15
.LBB21_13:                              #   in Loop: Header=BB21_15 Depth=2
	lw	a1, 24(s10)
	addi	a0, sp, 1144
	call	SATD
	addw	s0, a0, s0
.LBB21_14:                              #   in Loop: Header=BB21_15 Depth=2
	addi	s8, s8, 1
	addiw	s5, s5, 4
	addi	s7, s7, 16
	bge	s8, s11, .LBB21_10
.LBB21_15:                              #   Parent Loop BB21_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lui	s9, %hi(img)
	ld	a0, %lo(img)(s9)
	lw	a0, 168(a0)
	addw	s10, s5, a0
	li	a2, 2
	mv	a0, s5
	mv	a1, s4
	mv	a3, s1
	mv	a4, s1
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	ld	a6, 96(sp)                      # 8-byte Folded Reload
	call	LumaPrediction4x4
	lui	a0, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a0)
	ld	a0, %lo(img)(s9)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	ld	t1, 0(a4)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	slli	a2, s10, 1
	add	a1, t1, a2
	lhu	a1, 0(a1)
	ld	t2, 104(sp)                     # 8-byte Folded Reload
	add	t2, a0, t2
	slli	a5, s5, 1
	add	a3, t2, a5
	lhu	a3, 0(a3)
	subw	a1, a1, a3
	sw	a1, -128(s7)
	sw	a1, 1144(sp)
	addi	a1, a2, 2
	add	a3, t1, a1
	lhu	t0, 0(a3)
	addi	a3, a5, 2
	add	a6, t2, a3
	lhu	t3, 0(a6)
	addi	a6, a2, 4
	add	a7, t1, a6
	lhu	t4, 0(a7)
	addi	a7, a5, 4
	add	t5, t2, a7
	lhu	t5, 0(t5)
	subw	t0, t0, t3
	sw	t0, -124(s7)
	sw	t0, 1148(sp)
	subw	t4, t4, t5
	sw	t4, -120(s7)
	sw	t4, 1152(sp)
	addi	t0, a2, 6
	add	t1, t1, t0
	lhu	t3, 0(t1)
	ld	t4, 8(a4)
	addi	t1, a5, 6
	add	t2, t2, t1
	lhu	t2, 0(t2)
	add	t5, t4, a2
	lhu	t5, 0(t5)
	add	t6, a0, s2
	add	s10, t6, a5
	lhu	s10, 0(s10)
	subw	t2, t3, t2
	sw	t2, -116(s7)
	sw	t2, 1156(sp)
	subw	t2, t5, s10
	sw	t2, -64(s7)
	sw	t2, 1160(sp)
	add	t2, t4, a1
	lhu	t2, 0(t2)
	add	t3, t6, a3
	lhu	t3, 0(t3)
	add	t5, t4, a6
	lhu	t5, 0(t5)
	add	s10, t6, a7
	lhu	s10, 0(s10)
	subw	t2, t2, t3
	sw	t2, -60(s7)
	sw	t2, 1164(sp)
	subw	t2, t5, s10
	sw	t2, -56(s7)
	sw	t2, 1168(sp)
	add	t4, t4, t0
	ld	t2, 16(a4)
	lhu	t3, 0(t4)
	add	t6, t6, t1
	lhu	t4, 0(t6)
	add	t5, t2, a2
	lhu	t5, 0(t5)
	add	t6, a0, s3
	add	s10, t6, a5
	lhu	s10, 0(s10)
	subw	t3, t3, t4
	sw	t3, -52(s7)
	sw	t3, 1172(sp)
	subw	t3, t5, s10
	sw	t3, 0(s7)
	sw	t3, 1176(sp)
	add	t3, t2, a1
	lhu	t3, 0(t3)
	add	t4, t6, a3
	lhu	t4, 0(t4)
	add	t5, t2, a6
	lhu	t5, 0(t5)
	add	s10, t6, a7
	lhu	s10, 0(s10)
	subw	t3, t3, t4
	sw	t3, 4(s7)
	sw	t3, 1180(sp)
	subw	t3, t5, s10
	sw	t3, 8(s7)
	sw	t3, 1184(sp)
	add	t2, t2, t0
	ld	a4, 24(a4)
	lhu	t2, 0(t2)
	add	t6, t6, t1
	lhu	t3, 0(t6)
	add	a2, a4, a2
	lhu	a2, 0(a2)
	add	a0, a0, s6
	add	a5, a0, a5
	lhu	a5, 0(a5)
	subw	t2, t2, t3
	sw	t2, 12(s7)
	sw	t2, 1188(sp)
	subw	a2, a2, a5
	sw	a2, 64(s7)
	sw	a2, 1192(sp)
	add	a1, a4, a1
	lhu	a1, 0(a1)
	add	a3, a0, a3
	lhu	a2, 0(a3)
	add	a6, a4, a6
	lhu	a3, 0(a6)
	add	a7, a0, a7
	lhu	a5, 0(a7)
	subw	a1, a1, a2
	sw	a1, 68(s7)
	sw	a1, 1196(sp)
	subw	a3, a3, a5
	add	a4, a4, t0
	lhu	a1, 0(a4)
	add	a0, a0, t1
	lhu	a0, 0(a0)
	sw	a3, 72(s7)
	sw	a3, 1200(sp)
	lui	a2, %hi(input)
	ld	s10, %lo(input)(a2)
	subw	a1, a1, a0
	sw	a1, 76(s7)
	sw	a1, 1204(sp)
	li	a0, 4
	blt	a0, s1, .LBB21_13
# %bb.16:                               #   in Loop: Header=BB21_15 Depth=2
	addi	a0, s10, 2047
	lw	a0, 1845(a0)
	bnez	a0, .LBB21_14
	j	.LBB21_13
.LBB21_17:
	li	s0, 0
.LBB21_18:
	li	a0, 4
	blt	a0, s1, .LBB21_30
# %bb.19:
	addi	a0, s10, 2047
	lw	a0, 1845(a0)
	beqz	a0, .LBB21_30
# %bb.20:
	addi	a0, s10, 84
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, a0, a1
	lw	a1, 4(a0)
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB21_30
# %bb.21:
	li	a1, 8
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	blt	a2, a1, .LBB21_23
# %bb.22:
	li	a2, 8
	sd	a2, 24(sp)                      # 8-byte Folded Spill
.LBB21_23:
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	lw	s1, 0(a0)
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	blt	a2, a1, .LBB21_25
# %bb.24:
	li	a2, 8
.LBB21_25:
	li	a1, 0
	addi	s5, sp, 1176
	addi	s6, sp, 1208
	addi	s7, sp, 1240
	addi	s9, sp, 1272
	addi	s10, sp, 1304
	addi	s11, sp, 1336
	addi	s2, sp, 1368
	addi	s4, sp, 376
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 6
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	slli	s3, a2, 2
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	j	.LBB21_27
.LBB21_26:                              #   in Loop: Header=BB21_27 Depth=1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	s4, s4, a0
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB21_30
.LBB21_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_29 Depth 2
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	blez	s1, .LBB21_26
# %bb.28:                               #   in Loop: Header=BB21_27 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	lw	a0, 24(a0)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	li	s8, 0
.LBB21_29:                              #   Parent Loop BB21_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	a0, -228(s4)
	lwu	a1, -232(s4)
	slli	a0, a0, 32
	lwu	a2, -236(s4)
	or	a0, a0, a1
	lwu	a1, -240(s4)
	sd	a0, 1168(sp)
	slli	a2, a2, 32
	lwu	a0, -244(s4)
	or	a1, a2, a1
	sd	a1, 1160(sp)
	lwu	a1, -248(s4)
	slli	a0, a0, 32
	lwu	a2, -252(s4)
	lwu	a3, -256(s4)
	or	a0, a0, a1
	sd	a0, 1152(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 1144(sp)
	lw	a0, -192(s4)
	lw	a1, -188(s4)
	lw	a2, -184(s4)
	lw	a3, -180(s4)
	sw	a0, 0(s5)
	sw	a1, 4(s5)
	sw	a2, 8(s5)
	sw	a3, 12(s5)
	lw	a0, -176(s4)
	lw	a1, -172(s4)
	lw	a2, -168(s4)
	lw	a3, -164(s4)
	sw	a0, 16(s5)
	sw	a1, 20(s5)
	sw	a2, 24(s5)
	sw	a3, 28(s5)
	lw	a0, -100(s4)
	lw	a1, -104(s4)
	lw	a2, -108(s4)
	lw	a3, -112(s4)
	sw	a0, 28(s6)
	sw	a1, 24(s6)
	sw	a2, 20(s6)
	sw	a3, 16(s6)
	lw	a0, -116(s4)
	lw	a1, -120(s4)
	lw	a2, -124(s4)
	lw	a3, -128(s4)
	sw	a0, 12(s6)
	sw	a1, 8(s6)
	sw	a2, 4(s6)
	sw	a3, 0(s6)
	lw	a0, -64(s4)
	lw	a1, -60(s4)
	lw	a2, -56(s4)
	lw	a3, -52(s4)
	sw	a0, 0(s7)
	sw	a1, 4(s7)
	sw	a2, 8(s7)
	sw	a3, 12(s7)
	lw	a0, -48(s4)
	lw	a1, -44(s4)
	lw	a2, -40(s4)
	lw	a3, -36(s4)
	sw	a0, 16(s7)
	sw	a1, 20(s7)
	sw	a2, 24(s7)
	sw	a3, 28(s7)
	lw	a0, 28(s4)
	lw	a1, 24(s4)
	lw	a2, 20(s4)
	lw	a3, 16(s4)
	sw	a0, 28(s9)
	sw	a1, 24(s9)
	sw	a2, 20(s9)
	sw	a3, 16(s9)
	lw	a0, 12(s4)
	lw	a1, 8(s4)
	lw	a2, 4(s4)
	lw	a3, 0(s4)
	sw	a0, 12(s9)
	sw	a1, 8(s9)
	sw	a2, 4(s9)
	sw	a3, 0(s9)
	lw	a0, 92(s4)
	lw	a1, 88(s4)
	lw	a2, 84(s4)
	lw	a3, 80(s4)
	sw	a0, 28(s10)
	sw	a1, 24(s10)
	sw	a2, 20(s10)
	sw	a3, 16(s10)
	lw	a0, 76(s4)
	lw	a1, 72(s4)
	lw	a2, 68(s4)
	lw	a3, 64(s4)
	sw	a0, 12(s10)
	sw	a1, 8(s10)
	sw	a2, 4(s10)
	sw	a3, 0(s10)
	lw	a0, 156(s4)
	lw	a1, 152(s4)
	lw	a2, 148(s4)
	lw	a3, 144(s4)
	sw	a0, 28(s11)
	sw	a1, 24(s11)
	sw	a2, 20(s11)
	sw	a3, 16(s11)
	lw	a0, 140(s4)
	lw	a1, 136(s4)
	lw	a2, 132(s4)
	lw	a3, 128(s4)
	sw	a0, 12(s11)
	sw	a1, 8(s11)
	sw	a2, 4(s11)
	sw	a3, 0(s11)
	lw	a0, 220(s4)
	lw	a1, 216(s4)
	lw	a2, 212(s4)
	lw	a3, 208(s4)
	sw	a0, 28(s2)
	sw	a1, 24(s2)
	sw	a2, 20(s2)
	sw	a3, 16(s2)
	lw	a0, 204(s4)
	lw	a1, 200(s4)
	lw	a2, 196(s4)
	lw	a3, 192(s4)
	sw	a0, 12(s2)
	sw	a1, 8(s2)
	sw	a2, 4(s2)
	sw	a3, 0(s2)
	addi	a0, sp, 1144
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	call	SATD8X8
	addw	s0, a0, s0
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	s8, s8, a2
	add	s4, s4, s3
	blt	s8, s1, .LBB21_29
	j	.LBB21_26
.LBB21_30:
	mv	a0, s0
	ld	ra, 1496(sp)                    # 8-byte Folded Reload
	ld	s0, 1488(sp)                    # 8-byte Folded Reload
	ld	s1, 1480(sp)                    # 8-byte Folded Reload
	ld	s2, 1472(sp)                    # 8-byte Folded Reload
	ld	s3, 1464(sp)                    # 8-byte Folded Reload
	ld	s4, 1456(sp)                    # 8-byte Folded Reload
	ld	s5, 1448(sp)                    # 8-byte Folded Reload
	ld	s6, 1440(sp)                    # 8-byte Folded Reload
	ld	s7, 1432(sp)                    # 8-byte Folded Reload
	ld	s8, 1424(sp)                    # 8-byte Folded Reload
	ld	s9, 1416(sp)                    # 8-byte Folded Reload
	ld	s10, 1408(sp)                   # 8-byte Folded Reload
	ld	s11, 1400(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1504
	ret
.Lfunc_end21:
	.size	BIDPartitionCost, .Lfunc_end21-BIDPartitionCost
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Direct_Cost8x8              # -- Begin function Get_Direct_Cost8x8
	.p2align	2
	.type	Get_Direct_Cost8x8,@function
Get_Direct_Cost8x8:                     # @Get_Direct_Cost8x8
# %bb.0:
	addi	sp, sp, -752
	sd	ra, 744(sp)                     # 8-byte Folded Spill
	sd	s0, 736(sp)                     # 8-byte Folded Spill
	sd	s1, 728(sp)                     # 8-byte Folded Spill
	sd	s2, 720(sp)                     # 8-byte Folded Spill
	sd	s3, 712(sp)                     # 8-byte Folded Spill
	sd	s4, 704(sp)                     # 8-byte Folded Spill
	sd	s5, 696(sp)                     # 8-byte Folded Spill
	sd	s6, 688(sp)                     # 8-byte Folded Spill
	sd	s7, 680(sp)                     # 8-byte Folded Spill
	sd	s8, 672(sp)                     # 8-byte Folded Spill
	sd	s9, 664(sp)                     # 8-byte Folded Spill
	sd	s10, 656(sp)                    # 8-byte Folded Spill
	sd	s11, 648(sp)                    # 8-byte Folded Spill
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	li	s1, 0
	srliw	a1, a0, 31
	add	a2, a0, a1
	slliw	a1, a2, 2
	andi	a1, a1, -8
	andi	a2, a2, -2
	subw	a0, a0, a2
	slliw	s3, a0, 3
	addi	s6, s3, 4
	addi	a0, a1, 4
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	s5, s3, -4
	addi	s10, sp, 456
	slli	a0, a1, 5
	slli	a2, s3, 1
	lui	a3, 3
	addiw	a3, a3, 414
	add	a0, a0, a3
	add	s8, a0, a2
	lui	s0, %hi(img)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
.LBB22_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_2 Depth 2
	ld	a0, %lo(img)(s0)
	lw	a0, 172(a0)
	addw	s9, a0, a1
	sraiw	s11, s9, 2
	slli	s11, s11, 3
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sext.w	s2, a1
	sd	s8, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
.LBB22_2:                               #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s0)
	lui	a1, %hi(direct_pdir)
	ld	a1, %lo(direct_pdir)(a1)
	lw	s4, 168(a0)
	add	a1, a1, s11
	ld	a1, 0(a1)
	add	a0, s3, s4
	sraiw	a0, a0, 2
	slli	a2, a0, 1
	add	a1, a1, a2
	lh	a2, 0(a1)
	bltz	a2, .LBB22_8
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=2
	lui	a1, %hi(direct_ref_idx)
	ld	a1, %lo(direct_ref_idx)(a1)
	ld	a3, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, s11
	ld	a3, 0(a3)
	add	a1, a1, s11
	ld	a1, 0(a1)
	add	a3, a3, a0
	lbu	a5, 0(a3)
	add	a0, a1, a0
	lbu	a6, 0(a0)
	mv	a0, s3
	mv	a1, s2
	li	a3, 0
	li	a4, 0
	call	LumaPrediction4x4
	lui	a0, %hi(imgY_org)
	ld	a2, %lo(imgY_org)(a0)
	ld	a0, %lo(img)(s0)
	slli	a1, s9, 3
	add	a2, a2, a1
	ld	a6, 0(a2)
	add	s4, s5, s4
	slli	a5, s4, 1
	addi	a3, a5, 8
	add	a1, a6, a3
	lhu	a1, 0(a1)
	add	a0, a0, s8
	lhu	a4, -102(a0)
	subw	a1, a1, a4
	sw	a1, -64(s10)
	sw	a1, 72(sp)
	addi	a1, a5, 10
	add	a4, a6, a1
	lhu	a7, 0(a4)
	lhu	t0, -100(a0)
	addi	a4, a5, 12
	add	t1, a6, a4
	lhu	t1, 0(t1)
	lhu	t2, -98(a0)
	subw	a7, a7, t0
	sw	a7, -60(s10)
	sw	a7, 76(sp)
	subw	a7, t1, t2
	sw	a7, -56(s10)
	sw	a7, 80(sp)
	addi	a5, a5, 14
	ld	a7, 8(a2)
	add	a6, a6, a5
	lhu	a6, 0(a6)
	lhu	t0, -96(a0)
	add	t1, a7, a3
	lhu	t1, 0(t1)
	lhu	t2, -70(a0)
	subw	a6, a6, t0
	sw	a6, -52(s10)
	sw	a6, 84(sp)
	subw	a6, t1, t2
	sw	a6, -32(s10)
	sw	a6, 88(sp)
	add	a6, a7, a1
	lhu	a6, 0(a6)
	lhu	t0, -68(a0)
	add	t1, a7, a4
	lhu	t1, 0(t1)
	lhu	t2, -66(a0)
	subw	a6, a6, t0
	sw	a6, -28(s10)
	sw	a6, 92(sp)
	subw	a6, t1, t2
	sw	a6, -24(s10)
	sw	a6, 96(sp)
	ld	a6, 16(a2)
	add	a7, a7, a5
	lhu	a7, 0(a7)
	lhu	t0, -64(a0)
	add	t1, a6, a3
	lhu	t1, 0(t1)
	lhu	t2, -38(a0)
	subw	a7, a7, t0
	sw	a7, -20(s10)
	sw	a7, 100(sp)
	subw	a7, t1, t2
	sw	a7, 0(s10)
	sw	a7, 104(sp)
	add	a7, a6, a1
	lhu	a7, 0(a7)
	lhu	t0, -36(a0)
	add	t1, a6, a4
	lhu	t1, 0(t1)
	lhu	t2, -34(a0)
	subw	a7, a7, t0
	sw	a7, 4(s10)
	sw	a7, 108(sp)
	subw	a7, t1, t2
	sw	a7, 8(s10)
	sw	a7, 112(sp)
	ld	a2, 24(a2)
	add	a6, a6, a5
	lhu	a6, 0(a6)
	lhu	a7, -32(a0)
	add	a3, a2, a3
	lhu	a3, 0(a3)
	lhu	t0, -6(a0)
	subw	a6, a6, a7
	sw	a6, 12(s10)
	sw	a6, 116(sp)
	subw	a3, a3, t0
	sw	a3, 32(s10)
	sw	a3, 120(sp)
	add	a1, a2, a1
	lhu	a1, 0(a1)
	lhu	a3, -4(a0)
	add	a4, a2, a4
	lhu	a4, 0(a4)
	lhu	a6, -2(a0)
	subw	a1, a1, a3
	sw	a1, 36(s10)
	sw	a1, 124(sp)
	subw	a1, a4, a6
	add	a2, a2, a5
	lhu	a2, 0(a2)
	lui	a3, %hi(input)
	ld	s7, %lo(input)(a3)
	lhu	a0, 0(a0)
	sw	a1, 40(s10)
	sw	a1, 128(sp)
	lw	s4, 24(s7)
	subw	a2, a2, a0
	sw	a2, 44(s10)
	sw	a2, 132(sp)
	addi	a0, sp, 72
	mv	a1, s4
	call	SATD
	addw	s1, a0, s1
	addi	s5, s5, 4
	addiw	s3, s3, 4
	addi	s10, s10, 16
	addi	s8, s8, 8
	blt	s5, s6, .LBB22_2
# %bb.4:                                #   in Loop: Header=BB22_1 Depth=1
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	addi	a1, a2, 4
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	addi	s10, s10, 128
	ld	s8, 56(sp)                      # 8-byte Folded Reload
	addi	s8, s8, 128
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	blt	a2, a0, .LBB22_1
# %bb.5:
	addi	a0, s7, 2047
	lw	a1, 1089(a0)
	bnez	a1, .LBB22_10
# %bb.6:
	lw	a0, 1845(a0)
	beqz	a0, .LBB22_10
# %bb.7:
	addi	a0, sp, 136
	addi	a1, sp, 392
	li	a2, 256
	call	memcpy
	addi	a0, sp, 136
	mv	a1, s4
	call	SATD8X8
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a2)
	add	a0, a1, a0
	j	.LBB22_9
.LBB22_8:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	mv	s1, a0
	ld	a2, 40(sp)                      # 8-byte Folded Reload
.LBB22_9:
	sw	a0, 0(a2)
.LBB22_10:
	mv	a0, s1
	ld	ra, 744(sp)                     # 8-byte Folded Reload
	ld	s0, 736(sp)                     # 8-byte Folded Reload
	ld	s1, 728(sp)                     # 8-byte Folded Reload
	ld	s2, 720(sp)                     # 8-byte Folded Reload
	ld	s3, 712(sp)                     # 8-byte Folded Reload
	ld	s4, 704(sp)                     # 8-byte Folded Reload
	ld	s5, 696(sp)                     # 8-byte Folded Reload
	ld	s6, 688(sp)                     # 8-byte Folded Reload
	ld	s7, 680(sp)                     # 8-byte Folded Reload
	ld	s8, 672(sp)                     # 8-byte Folded Reload
	ld	s9, 664(sp)                     # 8-byte Folded Reload
	ld	s10, 656(sp)                    # 8-byte Folded Reload
	ld	s11, 648(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 752
	ret
.Lfunc_end22:
	.size	Get_Direct_Cost8x8, .Lfunc_end22-Get_Direct_Cost8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Direct_CostMB               # -- Begin function Get_Direct_CostMB
	.p2align	2
	.type	Get_Direct_CostMB,@function
Get_Direct_CostMB:                      # @Get_Direct_CostMB
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sw	zero, 4(sp)
	addi	a1, sp, 4
	li	a0, 0
	call	Get_Direct_Cost8x8
	lw	a2, 4(sp)
	lui	s1, 524288
	addiw	a1, s1, -1
	beq	a2, a1, .LBB23_11
# %bb.1:
	mv	s0, a0
	li	a0, 1
	addi	a1, sp, 4
	call	Get_Direct_Cost8x8
	lw	a2, 4(sp)
	addiw	a1, s1, -1
	beq	a2, a1, .LBB23_11
# %bb.2:
	mv	s1, a0
	li	a0, 2
	addi	a1, sp, 4
	call	Get_Direct_Cost8x8
	lw	a2, 4(sp)
	lui	s3, 524288
	addiw	a1, s3, -1
	beq	a2, a1, .LBB23_11
# %bb.3:
	mv	s2, a0
	li	a0, 3
	addi	a1, sp, 4
	call	Get_Direct_Cost8x8
	lw	a2, 4(sp)
	addiw	a1, s3, -1
	beq	a2, a1, .LBB23_11
# %bb.4:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a3, a1, 2047
	lw	a4, 1845(a3)
	li	a1, 2
	beq	a4, a1, .LBB23_10
# %bb.5:
	add	s0, s1, s0
	add	a0, a0, s2
	li	a5, 1
	addw	a1, a0, s0
	bne	a4, a5, .LBB23_11
# %bb.6:
	blt	a2, a1, .LBB23_10
# %bb.7:
	lw	a0, 965(a3)
	beqz	a0, .LBB23_10
# %bb.8:
	lw	a0, 969(a3)
	beqz	a0, .LBB23_10
# %bb.9:
	lw	a0, 973(a3)
	bnez	a0, .LBB23_11
.LBB23_10:
	mv	a1, a2
.LBB23_11:
	mv	a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end23:
	.size	Get_Direct_CostMB, .Lfunc_end23-Get_Direct_CostMB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	PartitionMotionSearch           # -- Begin function PartitionMotionSearch
	.p2align	2
	.type	PartitionMotionSearch,@function
PartitionMotionSearch:                  # @PartitionMotionSearch
# %bb.0:
	addi	sp, sp, -320
	sd	ra, 312(sp)                     # 8-byte Folded Spill
	sd	s0, 304(sp)                     # 8-byte Folded Spill
	sd	s1, 296(sp)                     # 8-byte Folded Spill
	sd	s2, 288(sp)                     # 8-byte Folded Spill
	sd	s3, 280(sp)                     # 8-byte Folded Spill
	sd	s4, 272(sp)                     # 8-byte Folded Spill
	sd	s5, 264(sp)                     # 8-byte Folded Spill
	sd	s6, 256(sp)                     # 8-byte Folded Spill
	sd	s7, 248(sp)                     # 8-byte Folded Spill
	sd	s8, 240(sp)                     # 8-byte Folded Spill
	sd	s9, 232(sp)                     # 8-byte Folded Spill
	sd	s10, 224(sp)                    # 8-byte Folded Spill
	sd	s11, 216(sp)                    # 8-byte Folded Spill
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	li	a5, 4
	sd	a2, 120(sp)                     # 8-byte Folded Spill
	mv	a4, a0
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	blt	a0, a5, .LBB24_2
# %bb.1:
	li	a4, 4
.LBB24_2:
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	lw	a0, 24(a3)
	addi	a5, a2, 148
	slli	a6, a4, 3
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	slli	a7, t0, 3
	sd	a7, 168(sp)                     # 8-byte Folded Spill
	add	a7, a5, a7
	lwu	a2, 0(a7)
	add	a5, a5, a6
	lw	a6, 0(a5)
	sd	a6, 96(sp)                      # 8-byte Folded Spill
	lw	a5, 4(a5)
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	sext.w	s2, a2
	lw	a5, 4(a7)
	sd	a5, 208(sp)                     # 8-byte Folded Spill
	lui	a5, 8
	add	a5, a3, a5
	ld	a5, -1192(a5)
	lw	a3, 12(a3)
	slli	a4, a4, 4
	lui	a6, %hi(PartitionMotionSearch.by0)
	addi	a6, a6, %lo(PartitionMotionSearch.by0)
	add	a6, a6, a4
	lui	a7, %hi(PartitionMotionSearch.bx0)
	addi	a7, a7, %lo(PartitionMotionSearch.bx0)
	add	a4, a7, a4
	li	a7, 528
	slli	a1, a1, 2
	add	a6, a6, a1
	lw	a6, 0(a6)
	sd	a6, 40(sp)                      # 8-byte Folded Spill
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	add	a4, a4, a1
	lw	a1, 0(a4)
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	mul	a1, a3, a7
	li	a3, 2
	add	a1, a5, a1
	sd	t0, 32(sp)                      # 8-byte Folded Spill
	blt	t0, a3, .LBB24_4
# %bb.3:
	li	a3, 2
	sd	a3, 32(sp)                      # 8-byte Folded Spill
.LBB24_4:
	li	a4, 0
	lw	a1, 428(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	addw	a1, a3, a1
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	addw	a1, a3, a1
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 3
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	lui	a1, 2
	addiw	a1, a1, -1712
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	addi	a0, a0, -1
	seqz	a0, a0
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a1, 1
	j	.LBB24_6
.LBB24_5:                               #   in Loop: Header=BB24_6 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	and	a0, a0, a1
	li	a4, 1
	li	a1, 0
	beqz	a0, .LBB24_30
.LBB24_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_9 Depth 2
                                        #       Child Loop BB24_21 Depth 3
                                        #         Child Loop BB24_24 Depth 4
                                        #           Child Loop BB24_27 Depth 5
                                        #             Child Loop BB24_29 Depth 6
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	a0, a4, a0
	slli	a0, a0, 2
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	add	a0, a1, a0
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lw	a0, 0(a0)
	blez	a0, .LBB24_5
# %bb.7:                                #   in Loop: Header=BB24_6 Depth=1
	li	a0, 0
	li	s4, 0
	slli	a1, a4, 3
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	sd	a4, 136(sp)                     # 8-byte Folded Spill
	j	.LBB24_9
.LBB24_8:                               #   in Loop: Header=BB24_9 Depth=2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a0)
	addi	s4, s4, 1
	slli	a0, s4, 48
	srai	a0, a0, 48
	bge	a0, a1, .LBB24_5
.LBB24_9:                               #   Parent Loop BB24_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_21 Depth 3
                                        #         Child Loop BB24_24 Depth 4
                                        #           Child Loop BB24_27 Depth 5
                                        #             Child Loop BB24_29 Depth 6
	lui	a1, %hi(input)
	ld	a2, %lo(input)(a1)
	addi	a1, a2, 2047
	lw	a1, 1061(a1)
	lw	a2, 32(a2)
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	li	a2, 2
	beq	a1, a2, .LBB24_18
# %bb.10:                               #   in Loop: Header=BB24_9 Depth=2
	li	a2, 1
	bne	a1, a2, .LBB24_14
# %bb.11:                               #   in Loop: Header=BB24_9 Depth=2
	blez	a0, .LBB24_13
# %bb.12:                               #   in Loop: Header=BB24_9 Depth=2
	li	a0, 1
.LBB24_13:                              #   in Loop: Header=BB24_9 Depth=2
	addi	a0, a0, 1
	j	.LBB24_17
.LBB24_14:                              #   in Loop: Header=BB24_9 Depth=2
	blez	a0, .LBB24_16
# %bb.15:                               #   in Loop: Header=BB24_9 Depth=2
	li	a0, 1
.LBB24_16:                              #   in Loop: Header=BB24_9 Depth=2
	addi	a0, a0, 1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	mul	a0, a0, a1
.LBB24_17:                              #   in Loop: Header=BB24_9 Depth=2
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a0
	sd	a1, 184(sp)                     # 8-byte Folded Spill
.LBB24_18:                              #   in Loop: Header=BB24_9 Depth=2
	lui	a0, %hi(motion_cost)
	ld	a0, %lo(motion_cost)(a0)
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	add	a0, a0, a3
	ld	a0, 0(a0)
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	slli	a2, s4, 48
	srai	a2, a2, 48
	sd	a2, 160(sp)                     # 8-byte Folded Spill
	slli	a5, a2, 3
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 0(a1)
	sd	a5, 152(sp)                     # 8-byte Folded Spill
	add	a0, a0, a5
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	add	a2, a2, a3
	ld	s1, 0(a2)
	add	a1, a1, a3
	ld	s9, 0(a1)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	sw	zero, 0(a0)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB24_8
# %bb.19:                               #   in Loop: Header=BB24_9 Depth=2
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	j	.LBB24_21
.LBB24_20:                              #   in Loop: Header=BB24_21 Depth=3
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	sd	a1, 200(sp)                     # 8-byte Folded Spill
	bge	a1, a0, .LBB24_8
.LBB24_21:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_24 Depth 4
                                        #           Child Loop BB24_27 Depth 5
                                        #             Child Loop BB24_29 Depth 6
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB24_20
# %bb.22:                               #   in Loop: Header=BB24_21 Depth=3
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s11, 148(a0)
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	add	s11, a0, s11
	slliw	a0, a0, 2
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	ld	s7, 80(sp)                      # 8-byte Folded Reload
	j	.LBB24_24
.LBB24_23:                              #   in Loop: Header=BB24_24 Depth=4
	add	s7, s7, s2
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	bge	s7, a0, .LBB24_20
.LBB24_24:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB24_27 Depth 5
                                        #             Child Loop BB24_29 Depth 6
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	ld	a1, -776(a1)
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a2, s7, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	s0, 0(a1)
	lw	s5, 144(a0)
	slliw	a2, s7, 2
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	mv	a1, a4
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	ld	a4, 128(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	call	BlockMotionSearch
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a2)
	add	a0, a1, a0
	sw	a0, 0(a2)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB24_23
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB24_24 Depth=4
	li	s6, 0
	add	s5, s7, s5
	slli	s10, s5, 3
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	add	s3, s3, s10
	j	.LBB24_27
.LBB24_26:                              #   in Loop: Header=BB24_27 Depth=5
	addi	s6, s6, 1
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	beq	s6, a0, .LBB24_23
.LBB24_27:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_21 Depth=3
                                        #         Parent Loop BB24_24 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB24_29 Depth 6
	add	s8, s11, s6
	slli	s8, s8, 3
	add	a0, s1, s8
	ld	a0, 0(a0)
	add	a0, a0, s5
	mv	a1, s4
	mv	a2, s2
	call	memset
	blez	s2, .LBB24_26
# %bb.28:                               #   in Loop: Header=BB24_27 Depth=5
	add	a0, s9, s8
	mv	a1, s10
.LBB24_29:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_21 Depth=3
                                        #         Parent Loop BB24_24 Depth=4
                                        #           Parent Loop BB24_27 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld	a2, 0(a0)
	add	a2, a2, a1
	ld	a2, 0(a2)
	lh	a3, 2(s0)
	lhu	a4, 0(s0)
	sh	a3, 2(a2)
	addi	a1, a1, 8
	sh	a4, 0(a2)
	bne	a1, s3, .LBB24_29
	j	.LBB24_26
.LBB24_30:
	ld	ra, 312(sp)                     # 8-byte Folded Reload
	ld	s0, 304(sp)                     # 8-byte Folded Reload
	ld	s1, 296(sp)                     # 8-byte Folded Reload
	ld	s2, 288(sp)                     # 8-byte Folded Reload
	ld	s3, 280(sp)                     # 8-byte Folded Reload
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	ld	s5, 264(sp)                     # 8-byte Folded Reload
	ld	s6, 256(sp)                     # 8-byte Folded Reload
	ld	s7, 248(sp)                     # 8-byte Folded Reload
	ld	s8, 240(sp)                     # 8-byte Folded Reload
	ld	s9, 232(sp)                     # 8-byte Folded Reload
	ld	s10, 224(sp)                    # 8-byte Folded Reload
	ld	s11, 216(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 320
	ret
.Lfunc_end24:
	.size	PartitionMotionSearch, .Lfunc_end24-PartitionMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Direct_Motion_Vectors       # -- Begin function Get_Direct_Motion_Vectors
	.p2align	2
	.type	Get_Direct_Motion_Vectors,@function
Get_Direct_Motion_Vectors:              # @Get_Direct_Motion_Vectors
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
	lui	a0, %hi(img)
	ld	a5, %lo(img)(a0)
	lui	a0, 8
	add	a1, a5, a0
	lw	a0, 12(a5)
	ld	s1, -1192(a1)
	li	a1, 528
	mul	a1, a0, a1
	add	s1, s1, a1
	lw	a3, 428(s1)
	lui	a4, %hi(enc_picture)
	lui	a1, 22
	addiw	a1, a1, -708
	add	a5, a5, a1
	lui	a1, %hi(Co_located)
	beqz	a3, .LBB25_3
# %bb.1:
	ld	a1, %lo(Co_located)(a1)
	andi	a2, a0, 1
	bnez	a2, .LBB25_19
# %bb.2:
	addi	a1, a1, 2047
	addi	a1, a1, 1177
	addi	a6, a1, 16
	addi	a2, a1, 8
	lw	a5, 0(a5)
	ld	a4, %lo(enc_picture)(a4)
	bnez	a5, .LBB25_4
	j	.LBB25_20
.LBB25_3:
	ld	a1, %lo(Co_located)(a1)
	addi	a6, a1, 1624
	addi	a2, a1, 1616
	addi	a1, a1, 1608
	lw	a5, 0(a5)
	ld	a4, %lo(enc_picture)(a4)
	beqz	a5, .LBB25_20
.LBB25_4:
	lui	a1, 2
	add	a1, a4, a1
	ld	a1, -1712(a1)
	ld	s3, 0(a1)
	ld	s0, 8(a1)
	ld	a1, 0(a6)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	sw	zero, 132(sp)
	sw	zero, 128(sp)
	li	a3, -1
	addi	a5, sp, 104
	li	a1, 0
	li	a2, 0
	li	a4, 0
	call	getLuma4x4Neighbour
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 80
	li	a1, 0
	li	a2, 0
	li	a3, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s2)
	lw	a0, 12(a0)
	li	a3, 16
	li	a4, -1
	addi	a5, sp, 32
	li	a1, 0
	li	a2, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s2)
	lw	a0, 12(a0)
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 56
	li	a1, 0
	li	a2, 0
	call	getLuma4x4Neighbour
	ld	a2, %lo(img)(s2)
	lui	a0, 22
	add	a0, a2, a0
	lw	a0, 108(a0)
	beqz	a0, .LBB25_41
# %bb.5:
	lw	a0, 424(s1)
	lw	a6, 104(sp)
	lui	a1, 8
	addiw	a1, a1, -1192
	add	a2, a2, a1
	beqz	a0, .LBB25_54
# %bb.6:
	lui	a0, 16
	addi	a0, a0, -1
	mv	a1, a0
	beqz	a6, .LBB25_8
# %bb.7:
	lw	a1, 124(sp)
	ld	a3, 0(a2)
	lw	a4, 108(sp)
	li	a5, 528
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a7, 120(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a1, a1, a7
	lbu	a1, 0(a1)
	seqz	a3, a3
	sll	a1, a1, a3
.LBB25_8:
	lw	a7, 80(sp)
	beqz	a7, .LBB25_10
# %bb.9:
	lw	a0, 100(sp)
	ld	a3, 0(a2)
	lw	a4, 84(sp)
	li	a5, 528
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	t0, 96(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a0, a0, t0
	lbu	a0, 0(a0)
	seqz	a3, a3
	sll	a0, a0, a3
.LBB25_10:
	lw	t0, 56(sp)
	beqz	t0, .LBB25_64
# %bb.11:
	lw	a3, 76(sp)
	ld	a4, 0(a2)
	lw	a5, 60(sp)
	li	t1, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t2, 72(sp)
	mul	a5, a5, t1
	add	a4, a4, a5
	lw	a4, 424(a4)
	add	a3, a3, t2
	lbu	a3, 0(a3)
	seqz	a4, a4
	sll	a3, a3, a4
	lw	t1, 32(sp)
	beqz	t1, .LBB25_13
.LBB25_12:
	lw	a3, 52(sp)
	ld	a4, 0(a2)
	lw	a5, 36(sp)
	li	t2, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t3, 48(sp)
	mul	a5, a5, t2
	add	a4, a4, a5
	lw	a4, 424(a4)
	add	a3, a3, t3
	lbu	a3, 0(a3)
	seqz	a4, a4
	sll	a3, a3, a4
.LBB25_13:
	lui	a4, 16
	addi	a4, a4, -1
	mv	a5, a4
	beqz	a6, .LBB25_15
# %bb.14:
	lw	a5, 124(sp)
	ld	a6, 0(a2)
	lw	t2, 108(sp)
	li	t3, 528
	slli	a5, a5, 3
	add	a5, s0, a5
	ld	a5, 0(a5)
	lw	t4, 120(sp)
	mul	t2, t2, t3
	add	a6, a6, t2
	lw	a6, 424(a6)
	add	a5, a5, t4
	lbu	a5, 0(a5)
	seqz	a6, a6
	sll	a5, a5, a6
.LBB25_15:
	beqz	a7, .LBB25_17
# %bb.16:
	lw	a4, 100(sp)
	ld	a6, 0(a2)
	lw	a7, 84(sp)
	li	t2, 528
	slli	a4, a4, 3
	add	a4, s0, a4
	ld	a4, 0(a4)
	lw	t3, 96(sp)
	mul	a7, a7, t2
	add	a6, a6, a7
	lw	a6, 424(a6)
	add	a4, a4, t3
	lbu	a4, 0(a4)
	seqz	a6, a6
	sll	a4, a4, a6
.LBB25_17:
	beqz	t0, .LBB25_65
# %bb.18:
	lw	a6, 76(sp)
	ld	a7, 0(a2)
	lw	t0, 60(sp)
	li	t2, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t3, 72(sp)
	mul	t0, t0, t2
	add	a7, a7, t0
	lw	a7, 424(a7)
	add	a6, a6, t3
	lbu	a6, 0(a6)
	seqz	a7, a7
	sll	a6, a6, a7
	bnez	t1, .LBB25_66
	j	.LBB25_86
.LBB25_19:
	lui	a7, 1
	addiw	a6, a7, 760
	add	a6, a1, a6
	addiw	a2, a7, 752
	add	a2, a1, a2
	addiw	a7, a7, 744
	add	a1, a1, a7
	lw	a5, 0(a5)
	ld	a4, %lo(enc_picture)(a4)
	bnez	a5, .LBB25_4
.LBB25_20:
	li	t5, 0
	ld	a1, 0(a1)
	ld	a2, 0(a2)
	li	a5, 264
	mul	a3, a3, a5
	add	a4, a4, a3
	lui	a0, %hi(img)
	lui	a7, 22
	addiw	a5, a7, -776
	lui	a6, %hi(listXsize)
	addi	a6, a6, %lo(listXsize)
	addiw	a7, a7, -688
	lui	t0, 2
	addiw	t0, t0, 1807
	lui	t3, %hi(direct_ref_idx)
	lui	t4, 16
	addi	t4, t4, -1
	lui	s0, %hi(direct_pdir)
	li	s2, 4
	j	.LBB25_22
.LBB25_21:                              #   in Loop: Header=BB25_22 Depth=1
	ld	t5, 24(sp)                      # 8-byte Folded Reload
	addi	t5, t5, 1
	beq	t5, s2, .LBB25_141
.LBB25_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_23 Depth 2
                                        #       Child Loop BB25_27 Depth 3
	ld	t1, %lo(img)(a0)
	lw	t2, 156(t1)
	lw	t1, 172(t1)
	li	s3, 0
	srli	t2, t2, 2
	addw	s4, t2, t5
	srli	t1, t1, 2
	addw	s6, t1, t5
	sd	t5, 24(sp)                      # 8-byte Folded Spill
	slli	s5, t5, 3
	slli	s6, s6, 3
.LBB25_23:                              #   Parent Loop BB25_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_27 Depth 3
	ld	s9, %lo(img)(a0)
	lw	t5, 428(s1)
	add	ra, s9, a5
	lw	s11, 72(ra)
	slli	t1, t5, 2
	add	t1, a6, t1
	lw	t1, 0(t1)
	blt	s11, t1, .LBB25_25
# %bb.24:                               #   in Loop: Header=BB25_23 Depth=2
	mv	s11, t1
.LBB25_25:                              #   in Loop: Header=BB25_23 Depth=2
	lw	t1, 152(s9)
	srli	t1, t1, 2
	addw	s7, t1, s3
	slli	s8, s4, 3
	blez	s11, .LBB25_34
# %bb.26:                               #   in Loop: Header=BB25_23 Depth=2
	lw	t1, 168(s9)
	li	s10, 0
	ld	t2, 0(ra)
	srli	t1, t1, 2
	addw	t6, t1, s3
	ld	t1, 0(a1)
	add	t2, t2, s5
	ld	t2, 0(t2)
	slli	ra, s3, 3
	add	t1, t1, s6
	ld	t1, 0(t1)
	add	t2, t2, ra
	ld	ra, 0(t2)
	slli	t6, t6, 3
	add	t1, t1, t6
	ld	t2, 0(t1)
	slli	t1, t5, 7
	add	t5, s9, a7
	add	t1, t5, t1
	li	t5, 24
.LBB25_27:                              #   Parent Loop BB25_22 Depth=1
                                        #     Parent Loop BB25_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a3, a4, t5
	ld	a3, 0(a3)
	beq	a3, t2, .LBB25_29
# %bb.28:                               #   in Loop: Header=BB25_27 Depth=3
	addi	s10, s10, 1
	addi	t5, t5, 8
	addi	t1, t1, 4
	bne	s11, s10, .LBB25_27
	j	.LBB25_34
.LBB25_29:                              #   in Loop: Header=BB25_23 Depth=2
	ld	a3, 0(a2)
	add	a3, a3, s6
	ld	a3, 0(a3)
	add	a3, a3, t6
	ld	s11, 0(a3)
	lw	t6, 0(t1)
	lhu	t1, 0(s11)
	bne	t6, t0, .LBB25_31
# %bb.30:                               #   in Loop: Header=BB25_23 Depth=2
	ld	a3, 0(ra)
	ld	t2, 0(a3)
	ld	t2, 0(t2)
	ld	t6, 8(ra)
	sh	t1, 0(t2)
	ld	t1, 0(t6)
	add	a3, a3, t5
	ld	a3, -24(a3)
	lh	ra, 2(s11)
	ld	t1, 0(t1)
	li	s11, 0
	li	t6, 0
	ld	t5, 0(a3)
	sh	ra, 2(t2)
	sh	zero, 0(t1)
	sh	zero, 2(t1)
	j	.LBB25_32
.LBB25_31:                              #   in Loop: Header=BB25_23 Depth=2
	ld	a3, 0(ra)
	add	a3, a3, t5
	ld	a3, -24(a3)
	slli	t1, t1, 48
	srai	t1, t1, 48
	ld	t5, 0(a3)
	mul	a3, t6, t1
	addi	a3, a3, 128
	srli	a3, a3, 8
	sh	a3, 0(t5)
	lh	a3, 2(s11)
	mul	a3, t6, a3
	ld	t1, 8(ra)
	addi	a3, a3, 128
	srli	a3, a3, 8
	sh	a3, 2(t5)
	ld	a3, 0(t1)
	lh	t1, 0(s11)
	addi	t2, t6, -256
	ld	a3, 0(a3)
	mul	t1, t2, t1
	addi	t1, t1, 128
	srliw	t1, t1, 8
	sh	t1, 0(a3)
	lh	s11, 2(s11)
	slli	t1, t1, 48
	srli	t6, t1, 48
	mul	t1, t2, s11
	addi	t1, t1, 128
	srliw	s11, t1, 8
	sh	s11, 2(a3)
.LBB25_32:                              #   in Loop: Header=BB25_23 Depth=2
	lhu	a3, 0(t5)
	lui	t1, 1048574
	add	a3, a3, t1
	srli	a3, a3, 14
	li	t1, 3
	bltu	a3, t1, .LBB25_34
# %bb.33:                               #   in Loop: Header=BB25_23 Depth=2
	lw	a3, 8(s9)
	lh	t5, 2(t5)
	li	t1, 24
	mul	t2, a3, t1
	lui	a3, %hi(LEVELMVLIMIT)
	addi	a3, a3, %lo(LEVELMVLIMIT)
	add	t2, a3, t2
	lw	t1, 16(t2)
	bge	t5, t1, .LBB25_36
.LBB25_34:                              #   in Loop: Header=BB25_23 Depth=2
	ld	a3, %lo(direct_ref_idx)(t3)
	ld	a3, 0(a3)
	add	a3, a3, s8
	ld	a3, 0(a3)
	add	a3, a3, s7
	li	t1, 255
	sb	t1, 0(a3)
	mv	t2, t4
.LBB25_35:                              #   in Loop: Header=BB25_23 Depth=2
	ld	a3, %lo(direct_ref_idx)(t3)
	ld	a3, 8(a3)
	add	a3, a3, s8
	ld	a3, 0(a3)
	add	a3, a3, s7
	sb	t1, 0(a3)
	ld	a3, %lo(direct_pdir)(s0)
	add	a3, a3, s8
	ld	a3, 0(a3)
	slli	s7, s7, 1
	add	a3, a3, s7
	addi	s3, s3, 1
	sh	t2, 0(a3)
	bne	s3, s2, .LBB25_23
	j	.LBB25_21
.LBB25_36:                              #   in Loop: Header=BB25_23 Depth=2
	lw	t2, 20(t2)
	blt	t2, t5, .LBB25_34
# %bb.37:                               #   in Loop: Header=BB25_23 Depth=2
	lui	a3, 1048574
	add	t6, t6, a3
	srli	t6, t6, 14
	li	a3, 3
	bltu	t6, a3, .LBB25_34
# %bb.38:                               #   in Loop: Header=BB25_23 Depth=2
	slli	t5, s11, 48
	srai	t5, t5, 48
	blt	t5, t1, .LBB25_34
# %bb.39:                               #   in Loop: Header=BB25_23 Depth=2
	blt	t2, t5, .LBB25_34
# %bb.40:                               #   in Loop: Header=BB25_23 Depth=2
	ld	a3, %lo(direct_ref_idx)(t3)
	ld	a3, 0(a3)
	add	a3, a3, s8
	ld	a3, 0(a3)
	li	t1, 0
	add	a3, a3, s7
	sb	s10, 0(a3)
	li	t2, 2
	j	.LBB25_35
.LBB25_41:
	lw	a2, 104(sp)
	lui	a0, 16
	addi	a0, a0, -1
	mv	a1, a0
	beqz	a2, .LBB25_43
# %bb.42:
	lw	a1, 124(sp)
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a3, 120(sp)
	add	a1, a1, a3
	lbu	a1, 0(a1)
.LBB25_43:
	lw	a6, 80(sp)
	beqz	a6, .LBB25_45
# %bb.44:
	lw	a0, 100(sp)
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	a3, 96(sp)
	add	a0, a0, a3
	lbu	a0, 0(a0)
.LBB25_45:
	lw	a7, 56(sp)
	beqz	a7, .LBB25_67
# %bb.46:
	lw	a3, 76(sp)
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	a4, 72(sp)
	add	a3, a3, a4
	lbu	a3, 0(a3)
	lw	t0, 32(sp)
	beqz	t0, .LBB25_48
.LBB25_47:
	lw	a3, 52(sp)
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	a4, 48(sp)
	add	a3, a3, a4
	lbu	a3, 0(a3)
.LBB25_48:
	lui	a4, 16
	addi	a4, a4, -1
	mv	a5, a4
	beqz	a2, .LBB25_50
# %bb.49:
	lw	a2, 124(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a5, 120(sp)
	add	a2, a2, a5
	lbu	a5, 0(a2)
.LBB25_50:
	beqz	a6, .LBB25_52
# %bb.51:
	lw	a2, 100(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a4, 96(sp)
	add	a2, a2, a4
	lbu	a4, 0(a2)
.LBB25_52:
	beqz	a7, .LBB25_68
# %bb.53:
	lw	a2, 76(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a6, 72(sp)
	add	a2, a2, a6
	lbu	a6, 0(a2)
	bnez	t0, .LBB25_69
	j	.LBB25_86
.LBB25_54:
	lui	a0, 16
	addi	a0, a0, -1
	mv	a1, a0
	beqz	a6, .LBB25_57
# %bb.55:
	lw	a1, 124(sp)
	ld	a3, 0(a2)
	lw	a4, 108(sp)
	li	a5, 528
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a7, 120(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a1, a1, a7
	lbu	a1, 0(a1)
	beqz	a3, .LBB25_57
# %bb.56:
	srli	a1, a1, 1
.LBB25_57:
	lw	a7, 80(sp)
	beqz	a7, .LBB25_60
# %bb.58:
	lw	a0, 100(sp)
	ld	a3, 0(a2)
	lw	a4, 84(sp)
	li	a5, 528
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	t0, 96(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a0, a0, t0
	lbu	a0, 0(a0)
	beqz	a3, .LBB25_60
# %bb.59:
	srli	a0, a0, 1
.LBB25_60:
	lw	t0, 56(sp)
	beqz	t0, .LBB25_70
# %bb.61:
	lw	a3, 76(sp)
	ld	a4, 0(a2)
	lw	a5, 60(sp)
	li	t1, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t2, 72(sp)
	mul	a5, a5, t1
	add	a4, a4, a5
	lw	a4, 424(a4)
	add	a3, a3, t2
	lbu	a3, 0(a3)
	beqz	a4, .LBB25_63
# %bb.62:
	srli	a3, a3, 1
.LBB25_63:
	lw	t1, 32(sp)
	bnez	t1, .LBB25_71
	j	.LBB25_73
.LBB25_64:
	lui	a3, 16
	addi	a3, a3, -1
	lw	t1, 32(sp)
	bnez	t1, .LBB25_12
	j	.LBB25_13
.LBB25_65:
	lui	a6, 16
	addi	a6, a6, -1
	beqz	t1, .LBB25_86
.LBB25_66:
	lw	a6, 52(sp)
	ld	a2, 0(a2)
	lw	a7, 36(sp)
	li	t0, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t1, 48(sp)
	mul	a7, a7, t0
	add	a2, a2, a7
	lw	a2, 424(a2)
	add	a6, a6, t1
	lbu	a6, 0(a6)
	seqz	a2, a2
	sll	a6, a6, a2
	j	.LBB25_86
.LBB25_67:
	lui	a3, 16
	addi	a3, a3, -1
	lw	t0, 32(sp)
	bnez	t0, .LBB25_47
	j	.LBB25_48
.LBB25_68:
	lui	a6, 16
	addi	a6, a6, -1
	beqz	t0, .LBB25_86
.LBB25_69:
	lw	a2, 52(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a6, 48(sp)
	add	a2, a2, a6
	lbu	a6, 0(a2)
	j	.LBB25_86
.LBB25_70:
	lui	a3, 16
	addi	a3, a3, -1
	lw	t1, 32(sp)
	beqz	t1, .LBB25_73
.LBB25_71:
	lw	a3, 52(sp)
	ld	a4, 0(a2)
	lw	a5, 36(sp)
	li	t2, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t3, 48(sp)
	mul	a5, a5, t2
	add	a4, a4, a5
	lw	a4, 424(a4)
	add	a3, a3, t3
	lbu	a3, 0(a3)
	beqz	a4, .LBB25_73
# %bb.72:
	srli	a3, a3, 1
.LBB25_73:
	lui	a4, 16
	addi	a4, a4, -1
	mv	a5, a4
	beqz	a6, .LBB25_76
# %bb.74:
	lw	a5, 124(sp)
	ld	a6, 0(a2)
	lw	t2, 108(sp)
	li	t3, 528
	slli	a5, a5, 3
	add	a5, s0, a5
	ld	a5, 0(a5)
	lw	t4, 120(sp)
	mul	t2, t2, t3
	add	a6, a6, t2
	lw	a6, 424(a6)
	add	a5, a5, t4
	lbu	a5, 0(a5)
	beqz	a6, .LBB25_76
# %bb.75:
	srli	a5, a5, 1
.LBB25_76:
	beqz	a7, .LBB25_79
# %bb.77:
	lw	a4, 100(sp)
	ld	a6, 0(a2)
	lw	a7, 84(sp)
	li	t2, 528
	slli	a4, a4, 3
	add	a4, s0, a4
	ld	a4, 0(a4)
	lw	t3, 96(sp)
	mul	a7, a7, t2
	add	a6, a6, a7
	lw	a6, 424(a6)
	add	a4, a4, t3
	lbu	a4, 0(a4)
	beqz	a6, .LBB25_79
# %bb.78:
	srli	a4, a4, 1
.LBB25_79:
	beqz	t0, .LBB25_83
# %bb.80:
	lw	a6, 76(sp)
	ld	a7, 0(a2)
	lw	t0, 60(sp)
	li	t2, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t3, 72(sp)
	mul	t0, t0, t2
	add	a7, a7, t0
	lw	a7, 424(a7)
	add	a6, a6, t3
	lbu	a6, 0(a6)
	beqz	a7, .LBB25_82
# %bb.81:
	srli	a6, a6, 1
.LBB25_82:
	bnez	t1, .LBB25_84
	j	.LBB25_86
.LBB25_83:
	lui	a6, 16
	addi	a6, a6, -1
	beqz	t1, .LBB25_86
.LBB25_84:
	lw	a6, 52(sp)
	ld	a2, 0(a2)
	lw	a7, 36(sp)
	li	t0, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t1, 48(sp)
	mul	a7, a7, t0
	add	a2, a2, a7
	lw	a2, 424(a2)
	add	a6, a6, t1
	lbu	a6, 0(a6)
	beqz	a2, .LBB25_86
# %bb.85:
	srli	a6, a6, 1
.LBB25_86:
	slli	a2, a1, 48
	srai	a2, a2, 48
	slli	a7, a0, 48
	srai	a7, a7, 48
	or	a1, a1, a0
	mv	a0, a2
	bge	a2, a7, .LBB25_103
# %bb.87:
	slli	a1, a1, 48
	bge	a7, a2, .LBB25_104
.LBB25_88:
	bltz	a1, .LBB25_105
.LBB25_89:
	slli	a1, a3, 48
	srai	a1, a1, 48
	mv	s2, a0
	bge	a0, a1, .LBB25_106
.LBB25_90:
	or	a2, a0, a1
	bge	a1, a0, .LBB25_107
.LBB25_91:
	bgez	a2, .LBB25_93
.LBB25_92:
	mv	s2, a0
.LBB25_93:
	slli	a1, a5, 48
	srai	a1, a1, 48
	slli	a2, a4, 48
	srai	a2, a2, 48
	or	a3, a5, a4
	mv	a0, a1
	bge	a1, a2, .LBB25_108
# %bb.94:
	slli	a3, a3, 48
	bge	a2, a1, .LBB25_109
.LBB25_95:
	bltz	a3, .LBB25_110
.LBB25_96:
	slli	a1, a6, 48
	srai	a1, a1, 48
	mv	s1, a0
	bge	a0, a1, .LBB25_111
.LBB25_97:
	or	a2, a0, a1
	bge	a1, a0, .LBB25_112
.LBB25_98:
	bltz	a2, .LBB25_113
.LBB25_99:
	bltz	s2, .LBB25_101
.LBB25_100:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	addiw	a1, a1, -1712
	add	a0, a0, a1
	ld	a1, 0(a0)
	ld	a0, 24(a0)
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	li	a3, 16
	addi	a0, sp, 132
	li	a7, 16
	sd	a3, 0(sp)
	mv	a3, s2
	li	a4, 0
	li	a5, 0
	li	a6, 0
	call	SetMotionVectorPredictor
.LBB25_101:
	bltz	s1, .LBB25_114
# %bb.102:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	addiw	a1, a1, -1712
	add	a0, a0, a1
	ld	a1, 0(a0)
	ld	a0, 24(a0)
	ld	a1, 8(a1)
	ld	a2, 8(a0)
	li	a3, 16
	addi	a0, sp, 128
	li	a4, 1
	li	a7, 16
	sd	a3, 0(sp)
	mv	a3, s1
	li	a5, 0
	li	a6, 0
	call	SetMotionVectorPredictor
	lhu	a1, 128(sp)
	lhu	a0, 130(sp)
	j	.LBB25_115
.LBB25_103:
	mv	a0, a7
	slli	a1, a1, 48
	blt	a7, a2, .LBB25_88
.LBB25_104:
	mv	a2, a7
	bgez	a1, .LBB25_89
.LBB25_105:
	mv	a0, a2
	slli	a1, a3, 48
	srai	a1, a1, 48
	mv	s2, a0
	blt	a2, a1, .LBB25_90
.LBB25_106:
	mv	s2, a1
	or	a2, a0, a1
	blt	a1, a0, .LBB25_91
.LBB25_107:
	mv	a0, a1
	bltz	a2, .LBB25_92
	j	.LBB25_93
.LBB25_108:
	mv	a0, a2
	slli	a3, a3, 48
	blt	a2, a1, .LBB25_95
.LBB25_109:
	mv	a1, a2
	bgez	a3, .LBB25_96
.LBB25_110:
	mv	a0, a1
	slli	a1, a6, 48
	srai	a1, a1, 48
	mv	s1, a0
	blt	a0, a1, .LBB25_97
.LBB25_111:
	mv	s1, a1
	or	a2, a0, a1
	blt	a1, a0, .LBB25_98
.LBB25_112:
	mv	a0, a1
	bgez	a2, .LBB25_99
.LBB25_113:
	mv	s1, a0
	bgez	s2, .LBB25_100
	j	.LBB25_101
.LBB25_114:
	li	a0, 0
	li	a1, 0
.LBB25_115:
	li	s0, 0
	lhu	a3, 132(sp)
	lhu	a4, 134(sp)
	sgtz	a2, s2
	neg	a2, a2
	and	t6, a2, s2
	sgtz	a2, s1
	neg	a2, a2
	and	a2, a2, s1
	and	a5, s1, s2
	lui	a6, %hi(img)
	lui	a7, 22
	slli	t0, s2, 3
	lui	t1, %hi(direct_ref_idx)
	slli	t2, s1, 3
	lui	t3, %hi(direct_pdir)
	li	t4, 32
	slli	t6, t6, 3
	li	s5, -1
	lui	s6, 16
	addi	s6, s6, -1
	slli	a2, a2, 3
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	j	.LBB25_117
.LBB25_116:                             #   in Loop: Header=BB25_117 Depth=1
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	s0, s0, 1
	li	a2, 4
	beq	s0, a2, .LBB25_141
.LBB25_117:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_120 Depth 2
	ld	a2, %lo(img)(a6)
	lw	t5, 156(a2)
	lw	a2, 172(a2)
	li	s10, 0
	li	s11, 0
	srli	t5, t5, 2
	addw	t5, t5, s0
	srli	a2, a2, 2
	addw	a2, a2, s0
	slli	a2, a2, 3
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	add	ra, ra, a2
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	slli	a2, s0, 3
	slli	t5, t5, 3
	j	.LBB25_120
.LBB25_118:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s0, %lo(direct_ref_idx)(t1)
	ld	s0, 0(s0)
	add	s0, s0, t5
	ld	s0, 0(s0)
	add	s0, s0, s9
	sb	s5, 0(s0)
	ld	s0, %lo(direct_ref_idx)(t1)
	ld	s0, 8(s0)
	add	s0, s0, t5
	ld	s0, 0(s0)
	add	s0, s0, s9
	sb	s5, 0(s0)
	mv	s0, s6
.LBB25_119:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s3, %lo(direct_pdir)(t3)
	add	s3, s3, t5
	ld	s3, 0(s3)
	slli	s9, s9, 1
	add	s3, s3, s9
	sh	s0, 0(s3)
	addi	s11, s11, 8
	addi	s10, s10, 1
	beq	s11, t4, .LBB25_116
.LBB25_120:                             #   Parent Loop BB25_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s0, %lo(img)(a6)
	add	s3, s0, a7
	ld	s3, -776(s3)
	add	s3, s3, a2
	ld	s3, 0(s3)
	lw	s9, 152(s0)
	lw	s0, 168(s0)
	add	s3, s3, s11
	ld	s7, 0(s3)
	srli	s0, s0, 2
	addw	s8, s10, s0
	bltz	s2, .LBB25_124
# %bb.121:                              #   in Loop: Header=BB25_120 Depth=2
	bnez	s2, .LBB25_123
# %bb.122:                              #   in Loop: Header=BB25_120 Depth=2
	ld	s0, 0(ra)
	add	s0, s0, s8
	lbu	s0, 0(s0)
	beqz	s0, .LBB25_136
.LBB25_123:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s0, 0(s7)
	add	s0, s0, t0
	ld	s0, 0(s0)
	ld	s0, 0(s0)
	sh	a3, 0(s0)
	sh	a4, 2(s0)
	mv	s0, s2
	j	.LBB25_125
.LBB25_124:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s0, 0(s7)
	ld	s0, 0(s0)
	ld	s0, 0(s0)
	sh	zero, 0(s0)
	sh	zero, 2(s0)
	li	s0, 255
.LBB25_125:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s3, %lo(direct_ref_idx)(t1)
	ld	s3, 0(s3)
	add	s3, s3, t5
	ld	s3, 0(s3)
	srli	s9, s9, 2
	addw	s9, s10, s9
	add	s3, s3, s9
	sb	s0, 0(s3)
	bltz	s1, .LBB25_129
# %bb.126:                              #   in Loop: Header=BB25_120 Depth=2
	bnez	s1, .LBB25_128
# %bb.127:                              #   in Loop: Header=BB25_120 Depth=2
	ld	s0, 0(ra)
	add	s0, s0, s8
	lbu	s0, 0(s0)
	beqz	s0, .LBB25_137
.LBB25_128:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s0, 8(s7)
	ld	s3, %lo(direct_ref_idx)(t1)
	add	s0, s0, t2
	ld	s0, 0(s0)
	ld	s3, 8(s3)
	ld	s0, 0(s0)
	add	s3, s3, t5
	ld	s3, 0(s3)
	sh	a1, 0(s0)
	sh	a0, 2(s0)
	add	s3, s3, s9
	sb	s1, 0(s3)
	ld	s0, %lo(img)(a6)
	add	s3, s0, a7
	lw	s3, 108(s3)
	bnez	s3, .LBB25_130
	j	.LBB25_138
.LBB25_129:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s0, %lo(direct_ref_idx)(t1)
	ld	s0, 8(s0)
	add	s0, s0, t5
	ld	s0, 0(s0)
	add	s0, s0, s9
	sb	s5, 0(s0)
	ld	s0, 8(s7)
	ld	s0, 0(s0)
	ld	s0, 0(s0)
	sh	zero, 0(s0)
	sh	zero, 2(s0)
	ld	s0, %lo(img)(a6)
	add	s3, s0, a7
	lw	s3, 108(s3)
	beqz	s3, .LBB25_138
.LBB25_130:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s3, 0(s7)
	add	s3, s3, t6
	ld	s3, 0(s3)
	ld	s8, 0(s3)
	lhu	s3, 0(s8)
	lui	s4, 1048574
	add	s3, s3, s4
	srli	s3, s3, 14
	li	s4, 3
	bltu	s3, s4, .LBB25_118
# %bb.131:                              #   in Loop: Header=BB25_120 Depth=2
	lw	s0, 8(s0)
	lh	s3, 2(s8)
	li	s4, 24
	mul	s0, s0, s4
	lui	s4, %hi(LEVELMVLIMIT)
	addi	s4, s4, %lo(LEVELMVLIMIT)
	add	s0, s4, s0
	lw	s8, 16(s0)
	blt	s3, s8, .LBB25_118
# %bb.132:                              #   in Loop: Header=BB25_120 Depth=2
	lw	s0, 20(s0)
	blt	s0, s3, .LBB25_118
# %bb.133:                              #   in Loop: Header=BB25_120 Depth=2
	ld	s3, 8(s7)
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	add	s3, s3, s4
	ld	s3, 0(s3)
	ld	s3, 0(s3)
	lhu	s7, 0(s3)
	lui	s4, 1048574
	add	s7, s7, s4
	srli	s7, s7, 14
	li	s4, 3
	bltu	s7, s4, .LBB25_118
# %bb.134:                              #   in Loop: Header=BB25_120 Depth=2
	lh	s3, 2(s3)
	blt	s3, s8, .LBB25_118
# %bb.135:                              #   in Loop: Header=BB25_120 Depth=2
	bge	s0, s3, .LBB25_138
	j	.LBB25_118
.LBB25_136:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s0, 0(s7)
	ld	s0, 0(s0)
	ld	s3, 0(s0)
	li	s0, 0
	sh	zero, 2(s3)
	sh	zero, 0(s3)
	j	.LBB25_125
.LBB25_137:                             #   in Loop: Header=BB25_120 Depth=2
	ld	s0, 8(s7)
	ld	s3, %lo(direct_ref_idx)(t1)
	ld	s0, 0(s0)
	ld	s3, 8(s3)
	ld	s0, 0(s0)
	add	s3, s3, t5
	ld	s3, 0(s3)
	sh	zero, 0(s0)
	sh	zero, 2(s0)
	add	s3, s3, s9
	sb	zero, 0(s3)
	ld	s0, %lo(img)(a6)
	add	s3, s0, a7
	lw	s3, 108(s3)
	bnez	s3, .LBB25_130
.LBB25_138:                             #   in Loop: Header=BB25_120 Depth=2
	bgez	a5, .LBB25_140
# %bb.139:                              #   in Loop: Header=BB25_120 Depth=2
	ld	s0, %lo(direct_ref_idx)(t1)
	ld	s0, 8(s0)
	add	s0, s0, t5
	ld	s0, 0(s0)
	add	s0, s0, s9
	sb	zero, 0(s0)
	ld	s0, %lo(direct_ref_idx)(t1)
	ld	s0, 0(s0)
	add	s0, s0, t5
	ld	s0, 0(s0)
	add	s0, s0, s9
	sb	zero, 0(s0)
.LBB25_140:                             #   in Loop: Header=BB25_120 Depth=2
	li	s0, 2
	j	.LBB25_119
.LBB25_141:
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
	addi	sp, sp, 240
	ret
.Lfunc_end25:
	.size	Get_Direct_Motion_Vectors, .Lfunc_end25-Get_Direct_Motion_Vectors
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sign                            # -- Begin function sign
	.p2align	2
	.type	sign,@function
sign:                                   # @sign
# %bb.0:
	sraiw	a2, a0, 31
	xor	a0, a0, a2
	subw	a0, a0, a2
	bgez	a1, .LBB26_2
# %bb.1:
	negw	a0, a0
.LBB26_2:
	ret
.Lfunc_end26:
	.size	sign, .Lfunc_end26-sign
                                        # -- End function
	.option	pop
	.type	QP2QUANT,@object                # @QP2QUANT
	.section	.rodata,"a",@progbits
	.globl	QP2QUANT
	.p2align	2, 0x0
QP2QUANT:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	29                              # 0x1d
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	40                              # 0x28
	.word	45                              # 0x2d
	.word	51                              # 0x33
	.word	57                              # 0x39
	.word	64                              # 0x40
	.word	72                              # 0x48
	.word	81                              # 0x51
	.word	91                              # 0x5b
	.size	QP2QUANT, 160

	.type	LEVELMVLIMIT,@object            # @LEVELMVLIMIT
	.globl	LEVELMVLIMIT
	.p2align	2, 0x0
LEVELMVLIMIT:
	.word	4294967233                      # 0xffffffc1
	.word	63                              # 0x3f
	.word	4294967168                      # 0xffffff80
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294967233                      # 0xffffffc1
	.word	63                              # 0x3f
	.word	4294967168                      # 0xffffff80
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967041                      # 0xffffff01
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294967041                      # 0xffffff01
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294967041                      # 0xffffff01
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.size	LEVELMVLIMIT, 408

	.type	BlockSAD,@object                # @BlockSAD
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
BlockSAD:
	.quad	0
	.size	BlockSAD, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"InitializeFastFullIntegerSearch: BlockSAD"
	.size	.L.str, 42

	.type	search_setup_done,@object       # @search_setup_done
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
search_setup_done:
	.quad	0
	.size	search_setup_done, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"InitializeFastFullIntegerSearch: search_setup_done"
	.size	.L.str.1, 51

	.type	search_center_x,@object         # @search_center_x
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
search_center_x:
	.quad	0
	.size	search_center_x, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"InitializeFastFullIntegerSearch: search_center_x"
	.size	.L.str.2, 49

	.type	search_center_y,@object         # @search_center_y
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
search_center_y:
	.quad	0
	.size	search_center_y, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"InitializeFastFullIntegerSearch: search_center_y"
	.size	.L.str.3, 49

	.type	pos_00,@object                  # @pos_00
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
pos_00:
	.quad	0
	.size	pos_00, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"InitializeFastFullIntegerSearch: pos_00"
	.size	.L.str.4, 40

	.type	max_search_range,@object        # @max_search_range
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
max_search_range:
	.quad	0
	.size	max_search_range, 8

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"InitializeFastFullIntegerSearch: max_search_range"
	.size	.L.str.5, 50

	.type	PelYline_11,@object             # @PelYline_11
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
PelYline_11:
	.quad	0
	.size	PelYline_11, 8

	.type	spiral_search_x,@object         # @spiral_search_x
	.globl	spiral_search_x
	.p2align	3, 0x0
spiral_search_x:
	.quad	0
	.size	spiral_search_x, 8

	.type	spiral_search_y,@object         # @spiral_search_y
	.globl	spiral_search_y
	.p2align	3, 0x0
spiral_search_y:
	.quad	0
	.size	spiral_search_y, 8

	.type	byte_abs,@object                # @byte_abs
	.globl	byte_abs
	.p2align	3, 0x0
byte_abs:
	.quad	0
	.size	byte_abs, 8

	.type	max_mvd,@object                 # @max_mvd
	.globl	max_mvd
	.p2align	2, 0x0
max_mvd:
	.word	0                               # 0x0
	.size	max_mvd, 4

	.type	byte_abs_range,@object          # @byte_abs_range
	.globl	byte_abs_range
	.p2align	2, 0x0
byte_abs_range:
	.word	0                               # 0x0
	.size	byte_abs_range, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Init_Motion_Search_Module: spiral_search_x"
	.size	.L.str.6, 43

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Init_Motion_Search_Module: spiral_search_y"
	.size	.L.str.7, 43

	.type	spiral_hpel_search_x,@object    # @spiral_hpel_search_x
	.section	.sbss,"aw",@nobits
	.globl	spiral_hpel_search_x
	.p2align	3, 0x0
spiral_hpel_search_x:
	.quad	0
	.size	spiral_hpel_search_x, 8

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Init_Motion_Search_Module: spiral_hpel_search_x"
	.size	.L.str.8, 48

	.type	spiral_hpel_search_y,@object    # @spiral_hpel_search_y
	.section	.sbss,"aw",@nobits
	.globl	spiral_hpel_search_y
	.p2align	3, 0x0
spiral_hpel_search_y:
	.quad	0
	.size	spiral_hpel_search_y, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Init_Motion_Search_Module: spiral_hpel_search_y"
	.size	.L.str.9, 48

	.type	mvbits,@object                  # @mvbits
	.section	.sbss,"aw",@nobits
	.globl	mvbits
	.p2align	3, 0x0
mvbits:
	.quad	0
	.size	mvbits, 8

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Init_Motion_Search_Module: mvbits"
	.size	.L.str.10, 34

	.type	refbits,@object                 # @refbits
	.section	.sbss,"aw",@nobits
	.globl	refbits
	.p2align	3, 0x0
refbits:
	.quad	0
	.size	refbits, 8

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"Init_Motion_Search_Module: refbits"
	.size	.L.str.11, 35

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Init_Motion_Search_Module: byte_abs"
	.size	.L.str.12, 36

	.type	motion_cost,@object             # @motion_cost
	.section	.sbss,"aw",@nobits
	.globl	motion_cost
	.p2align	3, 0x0
motion_cost:
	.quad	0
	.size	motion_cost, 8

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

	.type	get_line_p2,@object             # @get_line_p2
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
get_line_p2:
	.quad	0
	.size	get_line_p2, 8

	.type	get_line_p1,@object             # @get_line_p1
	.p2align	3, 0x0
get_line_p1:
	.quad	0
	.size	get_line_p1, 8

	.type	BlockMotionSearch.orig_val,@object # @BlockMotionSearch.orig_val
	.local	BlockMotionSearch.orig_val
	.comm	BlockMotionSearch.orig_val,512,2
	.type	BlockMotionSearch.orig_pic,@object # @BlockMotionSearch.orig_pic
	.data
	.p2align	3, 0x0
BlockMotionSearch.orig_pic:
	.quad	BlockMotionSearch.orig_val
	.quad	BlockMotionSearch.orig_val+32
	.quad	BlockMotionSearch.orig_val+64
	.quad	BlockMotionSearch.orig_val+96
	.quad	BlockMotionSearch.orig_val+128
	.quad	BlockMotionSearch.orig_val+160
	.quad	BlockMotionSearch.orig_val+192
	.quad	BlockMotionSearch.orig_val+224
	.quad	BlockMotionSearch.orig_val+256
	.quad	BlockMotionSearch.orig_val+288
	.quad	BlockMotionSearch.orig_val+320
	.quad	BlockMotionSearch.orig_val+352
	.quad	BlockMotionSearch.orig_val+384
	.quad	BlockMotionSearch.orig_val+416
	.quad	BlockMotionSearch.orig_val+448
	.quad	BlockMotionSearch.orig_val+480
	.size	BlockMotionSearch.orig_pic, 128

	.type	PartitionMotionSearch.bx0,@object # @PartitionMotionSearch.bx0
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
PartitionMotionSearch.bx0:
	.zero	16
	.zero	16
	.zero	16
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	2                               # 0x2
	.size	PartitionMotionSearch.bx0, 80

	.type	PartitionMotionSearch.by0,@object # @PartitionMotionSearch.by0
	.p2align	2, 0x0
PartitionMotionSearch.by0:
	.zero	16
	.zero	16
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.zero	16
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	PartitionMotionSearch.by0, 80

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
