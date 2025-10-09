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
	lw	s3, 32(a0)
	slli	a0, s3, 1
	addi	a0, a0, 1
	mulw	s0, a0, a0
	li	a0, 16
	call	malloc
	mv	s2, a0
	lui	s4, %hi(BlockSAD)
	sd	a0, %lo(BlockSAD)(s4)
	bnez	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_2:
	li	s8, 0
	slli	s0, s0, 2
	lui	s5, %hi(img)
	ld	a0, %lo(img)(s5)
	li	s7, 1
	lui	s1, %hi(.L.str)
	addi	s1, s1, %lo(.L.str)
	li	s6, 64
	j	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	andi	a1, s7, 1
	li	s8, 1
	li	s7, 0
	beqz	a1, .LBB0_47
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	lw	a0, 36(a0)
	slli	a0, a0, 3
	call	malloc
	slli	s8, s8, 3
	add	a1, s2, s8
	sd	a0, 0(a1)
	beqz	a0, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, %lo(img)(s5)
	lw	a1, 36(a0)
	bgtz	a1, .LBB0_7
	j	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
	ld	a0, %lo(img)(s5)
	lw	a1, 36(a0)
	blez	a1, .LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	ld	s2, %lo(BlockSAD)(s4)
	li	s9, 0
	j	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	ld	a0, %lo(img)(s5)
	lw	a1, 36(a0)
	addi	s9, s9, 1
	bge	s9, a1, .LBB0_3
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	li	a0, 64
	call	malloc
	add	s2, s2, s8
	ld	a1, 0(s2)
	slli	s10, s9, 3
	add	a1, a1, s10
	sd	a0, 0(a1)
	bnez	a0, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	mv	a0, s1
	call	no_mem_exit
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=2
	ld	s2, %lo(BlockSAD)(s4)
	li	s11, 8
	j	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=3
	addi	s11, s11, 8
	beq	s11, s6, .LBB0_8
.LBB0_13:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a0, 128
	call	malloc
	add	s2, s2, s8
	ld	a1, 0(s2)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	sd	a0, 0(a1)
	bnez	a0, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	ld	s2, %lo(BlockSAD)(s4)
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 16(a1)
	bnez	a0, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 24(a1)
	bnez	a0, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 32(a1)
	bnez	a0, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_25:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 40(a1)
	bnez	a0, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_27:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 48(a1)
	bnez	a0, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_29:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 56(a1)
	bnez	a0, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_31:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 64(a1)
	bnez	a0, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_33:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 72(a1)
	bnez	a0, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_35:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 80(a1)
	bnez	a0, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_37:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 88(a1)
	bnez	a0, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_39:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 96(a1)
	bnez	a0, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_41:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 104(a1)
	bnez	a0, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_43:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 112(a1)
	bnez	a0, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
.LBB0_45:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s0
	call	malloc
	add	a1, s2, s8
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	sd	a0, 120(a1)
	bnez	a0, .LBB0_12
# %bb.46:                               #   in Loop: Header=BB0_13 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	s2, %lo(BlockSAD)(s4)
	j	.LBB0_12
.LBB0_47:
	li	a0, 16
	call	malloc
	lui	a1, %hi(search_setup_done)
	sd	a0, %lo(search_setup_done)(a1)
	bnez	a0, .LBB0_49
# %bb.48:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB0_49:
	li	a0, 16
	call	malloc
	lui	a1, %hi(search_center_x)
	sd	a0, %lo(search_center_x)(a1)
	bnez	a0, .LBB0_51
# %bb.50:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
.LBB0_51:
	li	a0, 16
	call	malloc
	lui	a1, %hi(search_center_y)
	sd	a0, %lo(search_center_y)(a1)
	bnez	a0, .LBB0_53
# %bb.52:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB0_53:
	li	a0, 16
	call	malloc
	lui	a1, %hi(pos_00)
	sd	a0, %lo(pos_00)(a1)
	bnez	a0, .LBB0_55
# %bb.54:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
.LBB0_55:
	li	a0, 16
	call	malloc
	lui	a1, %hi(max_search_range)
	sd	a0, %lo(max_search_range)(a1)
	bnez	a0, .LBB0_57
# %bb.56:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB0_57:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(search_setup_done)
	ld	a1, %lo(search_setup_done)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_59
# %bb.58:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB0_59:
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(search_center_x)
	ld	a1, %lo(search_center_x)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_61
# %bb.60:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
.LBB0_61:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(search_center_y)
	ld	a1, %lo(search_center_y)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_63
# %bb.62:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB0_63:
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(pos_00)
	ld	a1, %lo(pos_00)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_65
# %bb.64:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
.LBB0_65:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 36(a0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(max_search_range)
	ld	a1, %lo(max_search_range)(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_67
# %bb.66:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB0_67:
	ld	a0, %lo(img)(s0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
	mv	a0, s0
	call	malloc
	lui	a1, %hi(search_setup_done)
	ld	a1, %lo(search_setup_done)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_69
# %bb.68:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_69:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(search_center_x)
	ld	a1, %lo(search_center_x)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_71
# %bb.70:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_71:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(search_center_y)
	ld	a1, %lo(search_center_y)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_73
# %bb.72:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_73:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(pos_00)
	ld	a1, %lo(pos_00)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_75
# %bb.74:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 36(a0)
	slli	s0, s0, 2
.LBB0_75:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(max_search_range)
	ld	a1, %lo(max_search_range)(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_77
# %bb.76:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
.LBB0_77:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1061(a0)
	li	a3, 2
	bne	a0, a3, .LBB0_84
# %bb.78:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 36(a0)
	blez	a1, .LBB0_90
# %bb.79:
	lui	a1, %hi(max_search_range)
	ld	a1, %lo(max_search_range)(a1)
	ld	a2, 0(a1)
	li	a3, 0
.LBB0_80:                               # =>This Inner Loop Header: Depth=1
	sw	s3, 0(a2)
	lw	a4, 36(a0)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a4, .LBB0_80
# %bb.81:
	blez	a4, .LBB0_90
# %bb.82:
	ld	a1, 8(a1)
	li	a2, 0
.LBB0_83:                               # =>This Inner Loop Header: Depth=1
	sw	s3, 0(a1)
	lw	a3, 36(a0)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a3, .LBB0_83
	j	.LBB0_90
.LBB0_84:
	lui	a0, %hi(max_search_range)
	ld	a2, %lo(max_search_range)(a0)
	lui	a0, %hi(img)
	ld	a4, 0(a2)
	ld	a0, %lo(img)(a0)
	sw	s3, 0(a4)
	lw	a5, 36(a0)
	srliw	a1, s3, 31
	add	a1, s3, a1
	sraiw	a1, a1, 1
	blt	a5, a3, .LBB0_87
# %bb.85:                               # %.preheader2
	addi	a3, a4, 4
	li	a4, 1
.LBB0_86:                               # =>This Inner Loop Header: Depth=1
	sw	a1, 0(a3)
	lw	a5, 36(a0)
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a5, .LBB0_86
.LBB0_87:
	ld	a2, 8(a2)
	sw	s3, 0(a2)
	lw	a3, 36(a0)
	li	a4, 2
	blt	a3, a4, .LBB0_90
# %bb.88:                               # %.preheader
	addi	a2, a2, 4
	li	a3, 1
.LBB0_89:                               # =>This Inner Loop Header: Depth=1
	sw	a1, 0(a2)
	lw	a4, 36(a0)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a4, .LBB0_89
.LBB0_90:
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
	li	s5, 0
	li	s3, 1
	lui	s1, %hi(img)
	lui	s2, %hi(BlockSAD)
	li	s4, 64
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	add	s5, s0, s5
	ld	a0, 0(s5)
	call	free
	andi	a0, s3, 1
	li	s5, 1
	li	s3, 0
	beqz	a0, .LBB1_7
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	ld	a0, %lo(img)(s1)
	lw	a0, 36(a0)
	ld	s0, %lo(BlockSAD)(s2)
	slli	s5, s5, 3
	blez	a0, .LBB1_1
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	li	s6, 0
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	li	s8, 8
	slli	s7, s6, 3
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s0, s0, s5
	ld	a0, 0(s0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 32(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 40(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 48(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 56(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 64(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 72(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 80(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 88(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 96(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 104(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 112(a0)
	call	free
	ld	a0, %lo(BlockSAD)(s2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	ld	a0, 120(a0)
	call	free
	ld	s0, %lo(BlockSAD)(s2)
	add	s9, s0, s5
	ld	a0, 0(s9)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	call	free
	addi	s8, s8, 8
	bne	s8, s4, .LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=2
	ld	a0, 0(s9)
	add	a0, a0, s7
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s1)
	lw	a0, 36(a0)
	addi	s6, s6, 1
	blt	s6, a0, .LBB1_4
	j	.LBB1_1
.LBB1_7:
	mv	a0, s0
	call	free
	lui	a0, %hi(search_setup_done)
	ld	s0, %lo(search_setup_done)(a0)
	lui	a0, %hi(search_center_x)
	ld	s1, %lo(search_center_x)(a0)
	lui	a0, %hi(search_center_y)
	ld	s2, %lo(search_center_y)(a0)
	lui	a0, %hi(pos_00)
	ld	s3, %lo(pos_00)(a0)
	lui	a0, %hi(max_search_range)
	ld	s4, %lo(max_search_range)(a0)
	ld	a0, 0(s0)
	call	free
	ld	a0, 0(s1)
	call	free
	ld	a0, 0(s2)
	call	free
	ld	a0, 0(s3)
	call	free
	ld	a0, 0(s4)
	call	free
	ld	a0, 8(s0)
	call	free
	ld	a0, 8(s1)
	call	free
	ld	a0, 8(s2)
	call	free
	ld	a0, 8(s3)
	call	free
	ld	a0, 8(s4)
	call	free
	mv	a0, s0
	call	free
	mv	a0, s1
	call	free
	mv	a0, s2
	call	free
	mv	a0, s3
	call	free
	mv	a0, s4
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
	blez	a2, .LBB3_75
# %bb.1:
	lui	a3, %hi(BlockSAD)
	ld	a3, %lo(BlockSAD)(a3)
	slli	a0, a0, 3
	add	a0, a3, a0
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	t2, 48(a0)
	ld	n6, 56(a0)
	ld	a3, 0(t2)
	ld	n3, 0(n6)
	ld	t3, 32(n6)
	slli	a1, a2, 2
	add	a1, a3, a1
	mv	a4, n3
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
	ld	n7, 8(n6)
	ld	t5, 40(n6)
	slli	a1, a2, 2
	add	a5, a4, a1
	mv	a6, n7
	mv	a7, t5
	mv	t0, a4
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a6)
	lw	t4, 0(a7)
	add	t1, t4, t1
	sw	t1, 0(t0)
	addi	t0, t0, 4
	addi	a7, a7, 4
	addi	a6, a6, 4
	bne	t0, a5, .LBB3_5
# %bb.6:
	blez	a2, .LBB3_75
# %bb.7:
	ld	a5, 16(t2)
	ld	n8, 16(n6)
	ld	t6, 48(n6)
	add	a6, a5, a1
	mv	a7, n8
	mv	t0, t6
	mv	t1, a5
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	lw	t4, 0(a7)
	lw	n1, 0(t0)
	add	t4, n1, t4
	sw	t4, 0(t1)
	addi	t1, t1, 4
	addi	t0, t0, 4
	addi	a7, a7, 4
	bne	t1, a6, .LBB3_8
# %bb.9:
	blez	a2, .LBB3_75
# %bb.10:
	ld	a6, 24(t2)
	ld	n11, 24(n6)
	ld	n4, 56(n6)
	add	a7, a6, a1
	mv	t0, n11
	mv	t1, n4
	mv	t4, a6
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	lw	n1, 0(t0)
	lw	n2, 0(t1)
	add	n1, n2, n1
	sw	n1, 0(t4)
	addi	t4, t4, 4
	addi	t1, t1, 4
	addi	t0, t0, 4
	bne	t4, a7, .LBB3_11
# %bb.12:
	blez	a2, .LBB3_75
# %bb.13:
	ld	a7, 64(t2)
	ld	n5, 64(n6)
	ld	t4, 96(n6)
	add	t0, a7, a1
	mv	t1, n5
	mv	n1, t4
	mv	n2, a7
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	lw	n9, 0(t1)
	lw	n10, 0(n1)
	add	n9, n10, n9
	sw	n9, 0(n2)
	addi	n2, n2, 4
	addi	n1, n1, 4
	addi	t1, t1, 4
	bne	n2, t0, .LBB3_14
# %bb.15:
	blez	a2, .LBB3_75
# %bb.16:
	ld	t0, 72(t2)
	ld	n9, 72(n6)
	ld	n1, 104(n6)
	add	t1, t0, a1
	mv	n2, n9
	mv	n10, n1
	mv	n12, t0
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	lw	n13, 0(n2)
	lw	n14, 0(n10)
	add	n13, n14, n13
	sw	n13, 0(n12)
	addi	n12, n12, 4
	addi	n10, n10, 4
	addi	n2, n2, 4
	bne	n12, t1, .LBB3_17
# %bb.18:
	blez	a2, .LBB3_75
# %bb.19:
	ld	t1, 80(t2)
	ld	n10, 80(n6)
	ld	n2, 112(n6)
	add	n12, t1, a1
	mv	n13, n10
	mv	n14, n2
	mv	n15, t1
.LBB3_20:                               # =>This Inner Loop Header: Depth=1
	lw	n16, 0(n13)
	lw	n17, 0(n14)
	add	n16, n17, n16
	sw	n16, 0(n15)
	addi	n15, n15, 4
	addi	n14, n14, 4
	addi	n13, n13, 4
	bne	n15, n12, .LBB3_20
# %bb.21:
	blez	a2, .LBB3_75
# %bb.22:
	ld	t2, 88(t2)
	ld	n13, 88(n6)
	ld	n6, 120(n6)
	add	n12, t2, a1
	mv	n14, n13
	mv	n15, n6
	mv	n16, t2
.LBB3_23:                               # =>This Inner Loop Header: Depth=1
	lw	n17, 0(n14)
	lw	n18, 0(n15)
	add	n17, n18, n17
	sw	n17, 0(n16)
	addi	n16, n16, 4
	addi	n15, n15, 4
	addi	n14, n14, 4
	bne	n16, n12, .LBB3_23
# %bb.24:
	blez	a2, .LBB3_75
# %bb.25:
	ld	n12, 40(a0)
	ld	n14, 0(n12)
	add	n15, n14, a1
.LBB3_26:                               # =>This Inner Loop Header: Depth=1
	lw	n16, 0(n3)
	lw	n17, 0(n7)
	add	n16, n17, n16
	sw	n16, 0(n14)
	addi	n14, n14, 4
	addi	n7, n7, 4
	addi	n3, n3, 4
	bne	n14, n15, .LBB3_26
# %bb.27:
	blez	a2, .LBB3_75
# %bb.28:
	ld	n3, 16(n12)
	add	n7, n3, a1
.LBB3_29:                               # =>This Inner Loop Header: Depth=1
	lw	n14, 0(n8)
	lw	n15, 0(n11)
	add	n14, n15, n14
	sw	n14, 0(n3)
	addi	n3, n3, 4
	addi	n11, n11, 4
	addi	n8, n8, 4
	bne	n3, n7, .LBB3_29
# %bb.30:
	blez	a2, .LBB3_75
# %bb.31:
	ld	n3, 32(n12)
	add	n7, n3, a1
.LBB3_32:                               # =>This Inner Loop Header: Depth=1
	lw	n8, 0(t3)
	lw	n11, 0(t5)
	add	n8, n11, n8
	sw	n8, 0(n3)
	addi	n3, n3, 4
	addi	t5, t5, 4
	addi	t3, t3, 4
	bne	n3, n7, .LBB3_32
# %bb.33:
	blez	a2, .LBB3_75
# %bb.34:
	ld	t3, 48(n12)
	add	t5, t3, a1
.LBB3_35:                               # =>This Inner Loop Header: Depth=1
	lw	n3, 0(t6)
	lw	n7, 0(n4)
	add	n3, n7, n3
	sw	n3, 0(t3)
	addi	t3, t3, 4
	addi	n4, n4, 4
	addi	t6, t6, 4
	bne	t3, t5, .LBB3_35
# %bb.36:
	blez	a2, .LBB3_75
# %bb.37:
	ld	t3, 64(n12)
	add	t5, t3, a1
.LBB3_38:                               # =>This Inner Loop Header: Depth=1
	lw	t6, 0(n5)
	lw	n3, 0(n9)
	add	t6, n3, t6
	sw	t6, 0(t3)
	addi	t3, t3, 4
	addi	n9, n9, 4
	addi	n5, n5, 4
	bne	t3, t5, .LBB3_38
# %bb.39:
	blez	a2, .LBB3_75
# %bb.40:
	ld	t3, 80(n12)
	add	t5, t3, a1
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	lw	t6, 0(n10)
	lw	n3, 0(n13)
	add	t6, n3, t6
	sw	t6, 0(t3)
	addi	t3, t3, 4
	addi	n13, n13, 4
	addi	n10, n10, 4
	bne	t3, t5, .LBB3_41
# %bb.42:
	blez	a2, .LBB3_75
# %bb.43:
	ld	t3, 96(n12)
	add	t5, t3, a1
.LBB3_44:                               # =>This Inner Loop Header: Depth=1
	lw	t6, 0(t4)
	lw	n3, 0(n1)
	add	t6, n3, t6
	sw	t6, 0(t3)
	addi	t3, t3, 4
	addi	n1, n1, 4
	addi	t4, t4, 4
	bne	t3, t5, .LBB3_44
# %bb.45:
	blez	a2, .LBB3_75
# %bb.46:
	ld	t3, 112(n12)
	add	t4, t3, a1
.LBB3_47:                               # =>This Inner Loop Header: Depth=1
	lw	t5, 0(n2)
	lw	t6, 0(n6)
	add	t5, t6, t5
	sw	t5, 0(t3)
	addi	t3, t3, 4
	addi	n6, n6, 4
	addi	n2, n2, 4
	bne	t3, t4, .LBB3_47
# %bb.48:
	blez	a2, .LBB3_75
# %bb.49:
	ld	t4, 32(a0)
	ld	t3, 0(t4)
	add	t5, t3, a1
	mv	t6, t3
.LBB3_50:                               # =>This Inner Loop Header: Depth=1
	lw	n1, 0(a3)
	lw	n2, 0(a4)
	add	n1, n2, n1
	sw	n1, 0(t6)
	addi	t6, t6, 4
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	t6, t5, .LBB3_50
# %bb.51:
	blez	a2, .LBB3_75
# %bb.52:
	ld	a3, 16(t4)
	add	a4, a3, a1
	mv	t5, a3
.LBB3_53:                               # =>This Inner Loop Header: Depth=1
	lw	t6, 0(a5)
	lw	n1, 0(a6)
	add	t6, n1, t6
	sw	t6, 0(t5)
	addi	t5, t5, 4
	addi	a6, a6, 4
	addi	a5, a5, 4
	bne	t5, a4, .LBB3_53
# %bb.54:
	blez	a2, .LBB3_75
# %bb.55:
	ld	a4, 64(t4)
	add	a5, a4, a1
	mv	a6, a4
.LBB3_56:                               # =>This Inner Loop Header: Depth=1
	lw	t5, 0(a7)
	lw	t6, 0(t0)
	add	t5, t6, t5
	sw	t5, 0(a6)
	addi	a6, a6, 4
	addi	t0, t0, 4
	addi	a7, a7, 4
	bne	a6, a5, .LBB3_56
# %bb.57:
	blez	a2, .LBB3_75
# %bb.58:
	ld	a5, 80(t4)
	add	a6, a5, a1
	mv	a7, a5
.LBB3_59:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(t1)
	lw	t4, 0(t2)
	add	t0, t4, t0
	sw	t0, 0(a7)
	addi	a7, a7, 4
	addi	t2, t2, 4
	addi	t1, t1, 4
	bne	a7, a6, .LBB3_59
# %bb.60:
	blez	a2, .LBB3_75
# %bb.61:
	ld	a7, 24(a0)
	ld	a6, 0(a7)
	add	t0, a6, a1
	mv	t1, t3
	mv	t2, a4
	mv	t4, a6
.LBB3_62:                               # =>This Inner Loop Header: Depth=1
	lw	t5, 0(t1)
	lw	t6, 0(t2)
	add	t5, t6, t5
	sw	t5, 0(t4)
	addi	t4, t4, 4
	addi	t2, t2, 4
	addi	t1, t1, 4
	bne	t4, t0, .LBB3_62
# %bb.63:
	blez	a2, .LBB3_75
# %bb.64:
	ld	a7, 16(a7)
	add	t0, a7, a1
	mv	t1, a3
	mv	t2, a5
	mv	t4, a7
.LBB3_65:                               # =>This Inner Loop Header: Depth=1
	lw	t5, 0(t1)
	lw	t6, 0(t2)
	add	t5, t6, t5
	sw	t5, 0(t4)
	addi	t4, t4, 4
	addi	t2, t2, 4
	addi	t1, t1, 4
	bne	t4, t0, .LBB3_65
# %bb.66:
	blez	a2, .LBB3_75
# %bb.67:
	ld	t0, 16(a0)
	ld	t1, 0(t0)
	add	t2, t1, a1
.LBB3_68:                               # =>This Inner Loop Header: Depth=1
	lw	t4, 0(t3)
	lw	t5, 0(a3)
	add	t4, t5, t4
	sw	t4, 0(t1)
	addi	t1, t1, 4
	addi	a3, a3, 4
	addi	t3, t3, 4
	bne	t1, t2, .LBB3_68
# %bb.69:
	blez	a2, .LBB3_75
# %bb.70:
	ld	a3, 64(t0)
	add	t0, a3, a1
.LBB3_71:                               # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a4)
	lw	t2, 0(a5)
	add	t1, t2, t1
	sw	t1, 0(a3)
	addi	a3, a3, 4
	addi	a5, a5, 4
	addi	a4, a4, 4
	bne	a3, t0, .LBB3_71
# %bb.72:
	blez	a2, .LBB3_75
# %bb.73:
	ld	a0, 8(a0)
	ld	a0, 0(a0)
	add	a1, a0, a1
.LBB3_74:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a6)
	lw	a3, 0(a7)
	add	a2, a3, a2
	sw	a2, 0(a0)
	addi	a0, a0, 4
	addi	a7, a7, 4
	addi	a6, a6, 4
	bne	a0, a1, .LBB3_74
.LBB3_75:
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
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	addi	s7, s7, 128
	ld	a2, 8(a0)
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	sw	s5, 0(a1)
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
	mv	s1, a4
	mv	s2, a2
	mv	s7, a1
	mv	s0, a0
	beqz	s9, .LBB5_2
# %bb.1:
	lui	a0, %hi(pred_SAD_space)
	sw	zero, %lo(pred_SAD_space)(a0)
.LBB5_2:
	li	a3, -1
	addi	a5, sp, 80
	mv	a0, s8
	mv	a1, s6
	mv	a2, s4
	li	a4, 0
	call	getLuma4x4Neighbour
	li	a4, -1
	addi	a5, sp, 56
	mv	a0, s8
	mv	a1, s6
	mv	a2, s4
	li	a3, 0
	call	getLuma4x4Neighbour
	li	a4, -1
	addi	a5, sp, 32
	mv	a0, s8
	mv	a1, s6
	mv	a2, s4
	mv	a3, s5
	call	getLuma4x4Neighbour
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 8
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
	lw	a0, 32(sp)
	bnez	a0, .LBB5_10
.LBB5_9:
	lwu	a0, 28(sp)
	lwu	a1, 24(sp)
	slli	a0, a0, 32
	lwu	a2, 20(sp)
	or	a0, a0, a1
	sd	a0, 48(sp)
	lwu	a0, 16(sp)
	slli	a2, a2, 32
	lwu	a1, 12(sp)
	lwu	a3, 8(sp)
	or	a0, a2, a0
	sd	a0, 40(sp)
	slli	a1, a1, 32
	or	a1, a1, a3
	sd	a1, 32(sp)
.LBB5_10:
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lui	a0, 22
	add	a0, a4, a0
	lw	a6, 108(a0)
	lui	a0, 8
	addiw	a5, a0, -1192
	add	a5, a4, a5
	beqz	a6, .LBB5_18
# %bb.11:
	lw	a0, 12(a4)
	ld	a2, 0(a5)
	li	a1, 528
	mul	a0, a0, a1
	add	a0, a2, a0
	lw	a1, 424(a0)
	lw	a0, 80(sp)
	li	t0, -1
	li	a7, -1
	beqz	a1, .LBB5_24
# %bb.12:
	beqz	a0, .LBB5_14
# %bb.13:
	lw	a1, 100(sp)
	lw	a3, 84(sp)
	li	a7, 528
	slli	a1, a1, 3
	add	a1, s7, a1
	ld	a1, 0(a1)
	lw	t1, 96(sp)
	mul	a3, a3, a7
	add	a3, a2, a3
	lw	a3, 424(a3)
	add	a1, a1, t1
	lbu	a1, 0(a1)
	seqz	a3, a3
	sllw	a7, a1, a3
.LBB5_14:
	lw	a1, 56(sp)
	beqz	a1, .LBB5_16
# %bb.15:
	lw	a3, 76(sp)
	lw	t0, 60(sp)
	li	t1, 528
	slli	a3, a3, 3
	add	a3, s7, a3
	ld	a3, 0(a3)
	lw	t2, 72(sp)
	mul	t0, t0, t1
	add	t0, a2, t0
	lw	t0, 424(t0)
	add	a3, a3, t2
	lbu	a3, 0(a3)
	seqz	t0, t0
	sllw	t0, a3, t0
.LBB5_16:
	lw	a3, 32(sp)
	beqz	a3, .LBB5_34
# %bb.17:
	lw	a3, 52(sp)
	lw	t1, 36(sp)
	li	t2, 528
	slli	a3, a3, 3
	add	a3, s7, a3
	ld	a3, 0(a3)
	lw	t3, 48(sp)
	mul	t1, t1, t2
	add	a2, a2, t1
	lw	t1, 424(a2)
	add	a3, a3, t3
	lbu	a3, 0(a3)
	li	a2, 0
	seqz	t1, t1
	sllw	t1, a3, t1
	li	n6, 1
	beq	a7, s3, .LBB5_35
	j	.LBB5_37
.LBB5_18:
	lw	a0, 80(sp)
	li	t0, -1
	li	a7, -1
	beqz	a0, .LBB5_20
# %bb.19:
	lw	a1, 100(sp)
	slli	a1, a1, 3
	add	a1, s7, a1
	ld	a1, 0(a1)
	lw	a2, 96(sp)
	add	a1, a1, a2
	lbu	a7, 0(a1)
.LBB5_20:
	lw	a1, 56(sp)
	beqz	a1, .LBB5_22
# %bb.21:
	lw	a2, 76(sp)
	slli	a2, a2, 3
	add	a2, s7, a2
	ld	a2, 0(a2)
	lw	a3, 72(sp)
	add	a2, a2, a3
	lbu	t0, 0(a2)
.LBB5_22:
	lw	a2, 32(sp)
	beqz	a2, .LBB5_34
# %bb.23:
	lw	a2, 52(sp)
	slli	a2, a2, 3
	add	a2, s7, a2
	ld	a2, 0(a2)
	lw	a3, 48(sp)
	add	a2, a2, a3
	lbu	t1, 0(a2)
	li	a2, 0
	li	n6, 1
	beq	a7, s3, .LBB5_35
	j	.LBB5_37
.LBB5_24:
	beqz	a0, .LBB5_27
# %bb.25:
	lw	a1, 100(sp)
	lw	a3, 84(sp)
	li	a7, 528
	slli	a1, a1, 3
	add	a1, s7, a1
	ld	a1, 0(a1)
	lw	t1, 96(sp)
	mul	a3, a3, a7
	add	a3, a2, a3
	lw	a3, 424(a3)
	add	a1, a1, t1
	lbu	a7, 0(a1)
	beqz	a3, .LBB5_27
# %bb.26:
	srli	a7, a7, 1
.LBB5_27:
	lw	a1, 56(sp)
	beqz	a1, .LBB5_30
# %bb.28:
	lw	a3, 76(sp)
	lw	t0, 60(sp)
	li	t1, 528
	slli	a3, a3, 3
	add	a3, s7, a3
	ld	a3, 0(a3)
	lw	t2, 72(sp)
	mul	t0, t0, t1
	add	t0, a2, t0
	lw	t1, 424(t0)
	add	a3, a3, t2
	lbu	t0, 0(a3)
	beqz	t1, .LBB5_30
# %bb.29:
	srli	t0, t0, 1
.LBB5_30:
	lw	a3, 32(sp)
	beqz	a3, .LBB5_34
# %bb.31:
	lw	a3, 52(sp)
	lw	t1, 36(sp)
	li	t2, 528
	slli	a3, a3, 3
	add	a3, s7, a3
	ld	a3, 0(a3)
	lw	t3, 48(sp)
	mul	t1, t1, t2
	add	a2, a2, t1
	lw	a2, 424(a2)
	add	a3, a3, t3
	lbu	t1, 0(a3)
	beqz	a2, .LBB5_33
# %bb.32:
	li	a2, 0
	srli	t1, t1, 1
.LBB5_33:
	li	n6, 1
	beq	a7, s3, .LBB5_35
	j	.LBB5_37
.LBB5_34:
	li	n6, 0
	li	t1, -1
	li	a2, 1
	bne	a7, s3, .LBB5_37
.LBB5_35:
	beq	t0, s3, .LBB5_37
# %bb.36:
	li	a3, 1
	bne	t1, s3, .LBB5_40
.LBB5_37:
	xor	a3, t1, s3
	seqz	t2, a3
	xor	a3, t0, s3
	snez	t3, a3
	xor	a3, a7, s3
	seqz	a3, a3
	or	a3, a3, t3
	or	t4, a3, t2
	addi	a3, t4, -1
	andi	a3, a3, 2
	beq	a7, s3, .LBB5_40
# %bb.38:
	beqz	t4, .LBB5_40
# %bb.39:
	and	a3, t3, t2
	negw	a3, a3
	andi	a3, a3, 3
.LBB5_40:
	ld	t2, 192(sp)
	li	t3, 8
	bne	s5, t3, .LBB5_45
# %bb.41:
	li	t3, 16
	bne	t2, t3, .LBB5_45
# %bb.42:
	beqz	s6, .LBB5_48
# %bb.43:
	bne	t1, s3, .LBB5_52
# %bb.44:
	li	a3, 3
	j	.LBB5_52
.LBB5_45:
	li	t1, 16
	bne	s5, t1, .LBB5_52
# %bb.46:
	li	t1, 8
	bne	t2, t1, .LBB5_52
# %bb.47:
	beqz	s4, .LBB5_50
.LBB5_48:
	bne	a7, s3, .LBB5_52
# %bb.49:
	li	a3, 1
	j	.LBB5_52
.LBB5_50:
	bne	t0, s3, .LBB5_52
# %bb.51:
	li	a3, 2
.LBB5_52:
	lw	n4, 100(sp)
	slli	n4, n4, 3
	lw	t2, 76(sp)
	lw	n3, 96(sp)
	lw	a7, 52(sp)
	add	n10, s2, n4
	slli	t2, t2, 3
	lui	t1, %hi(FME_blocktype)
	beqz	a0, .LBB5_54
# %bb.53:
	ld	t0, 0(n10)
	slli	t3, n3, 3
	add	t0, t0, t3
	ld	t0, 0(t0)
	lh	n11, 0(t0)
	j	.LBB5_55
.LBB5_54:
	li	n11, 0
.LBB5_55:
	lui	t0, %hi(fastme_l0_cost)
	lw	t1, %lo(FME_blocktype)(t1)
	lw	t4, 72(sp)
	lui	t3, %hi(fastme_l1_cost)
	slli	a7, a7, 3
	add	n9, s2, t2
	beqz	a1, .LBB5_57
# %bb.56:
	ld	t5, 0(n9)
	slli	t6, t4, 3
	add	t5, t5, t6
	ld	t5, 0(t5)
	lh	n12, 0(t5)
	j	.LBB5_58
.LBB5_57:
	li	n12, 0
.LBB5_58:
	ld	t6, %lo(fastme_l0_cost)(t0)
	ld	n2, %lo(fastme_l1_cost)(t3)
	lw	t0, 48(sp)
	lw	t3, 8(sp)
	slli	t1, t1, 3
	add	s2, s2, a7
	beqz	a2, .LBB5_60
# %bb.59:
	li	n13, 0
	j	.LBB5_61
.LBB5_60:
	ld	t5, 0(s2)
	slli	n1, t0, 3
	add	t5, t5, n1
	ld	t5, 0(t5)
	lh	n13, 0(t5)
.LBB5_61:
	lw	n1, 28(sp)
	lw	t5, 24(sp)
	snez	n7, a1
	add	t6, t6, t1
	add	n2, n2, t1
	beqz	s9, .LBB5_65
# %bb.62:
	beqz	a0, .LBB5_74
# %bb.63:
	li	t1, 1
	bne	s1, t1, .LBB5_78
# %bb.64:
	ld	n5, 0(n2)
	add	t1, n5, n4
	ld	t1, 0(t1)
	slli	n8, n3, 2
	add	t1, t1, n8
	lw	t1, 0(t1)
	bnez	a1, .LBB5_81
	j	.LBB5_100
.LBB5_65:
	li	t1, 0
	li	n5, 0
	li	n8, 0
	li	n14, 1
	or	n7, n7, n6
	blt	n14, a3, .LBB5_108
.LBB5_66:
	bnez	a3, .LBB5_72
# %bb.67:
	beqz	n7, .LBB5_87
# %bb.68:
	mv	n14, n12
	blt	n12, n13, .LBB5_89
# %bb.69:
	mv	n14, n13
	mv	n6, n11
	bge	n11, n13, .LBB5_90
.LBB5_70:
	mv	n14, n12
	blt	n13, n12, .LBB5_91
.LBB5_71:
	mv	n14, n13
	mv	n15, n11
	bge	n13, n11, .LBB5_92
	j	.LBB5_93
.LBB5_72:
	mv	n6, t1
.LBB5_73:
	mv	n14, n11
	j	.LBB5_110
.LBB5_74:
	beqz	a1, .LBB5_99
# %bb.75:
	li	t1, 1
	mv	n5, n2
	beq	s1, t1, .LBB5_77
# %bb.76:
	mv	n5, t6
.LBB5_77:
	li	t1, 0
	j	.LBB5_80
.LBB5_78:
	ld	t1, 0(t6)
	add	t1, t1, n4
	ld	t1, 0(t1)
	slli	n5, n3, 2
	add	t1, t1, n5
	lw	t1, 0(t1)
	beqz	a1, .LBB5_100
# %bb.79:
	mv	n5, t6
.LBB5_80:
	ld	n5, 0(n5)
.LBB5_81:
	add	n5, n5, t2
	ld	n5, 0(n5)
	slli	n8, t4, 2
	add	n5, n5, n8
	lw	n5, 0(n5)
	beqz	t3, .LBB5_101
.LBB5_82:
	li	n8, 1
	bne	s1, n8, .LBB5_84
# %bb.83:
	ld	n8, 0(n2)
	bnez	a2, .LBB5_86
	j	.LBB5_106
.LBB5_84:
	beqz	a2, .LBB5_104
# %bb.85:
	ld	n8, 0(t6)
.LBB5_86:
	slli	n14, n1, 3
	add	n8, n8, n14
	ld	n8, 0(n8)
	slli	n14, t5, 2
	j	.LBB5_107
.LBB5_87:
	mv	n13, n11
	bnez	s9, .LBB5_94
# %bb.88:
                                        # implicit-def: $x37
	j	.LBB5_73
.LBB5_89:
	mv	n6, n11
	blt	n11, n14, .LBB5_70
.LBB5_90:
	mv	n6, n14
	mv	n14, n12
	bge	n13, n12, .LBB5_71
.LBB5_91:
	mv	n15, n11
	blt	n14, n11, .LBB5_93
.LBB5_92:
	mv	n15, n14
.LBB5_93:
	add	n13, n13, n12
	add	n13, n13, n11
	add	n6, n15, n6
	sub	n13, n13, n6
                                        # implicit-def: $x37
	mv	n14, n13
	beqz	s9, .LBB5_110
.LBB5_94:
	bne	n13, n11, .LBB5_96
# %bb.95:
	mv	n6, t1
	mv	n14, n11
	bnez	t1, .LBB5_110
.LBB5_96:
	xor	n6, n13, n12
	seqz	n6, n6
	snez	n11, n5
	and	n11, n6, n11
	mv	n6, n5
	bnez	n11, .LBB5_98
# %bb.97:
	mv	n6, n8
	mv	n12, n13
.LBB5_98:
	mv	n14, n12
	j	.LBB5_110
.LBB5_99:
	li	t1, 0
.LBB5_100:
	li	n5, 0
	bnez	t3, .LBB5_82
.LBB5_101:
	beqz	a2, .LBB5_103
# %bb.102:
	li	n8, 0
	li	n14, 1
	or	n7, n7, n6
	bge	n14, a3, .LBB5_66
	j	.LBB5_108
.LBB5_103:
	li	n14, 1
	mv	n8, n2
	beq	s1, n14, .LBB5_105
.LBB5_104:
	mv	n8, t6
.LBB5_105:
	ld	n8, 0(n8)
.LBB5_106:
	add	n8, n8, a7
	ld	n8, 0(n8)
	slli	n14, t0, 2
.LBB5_107:
	add	n8, n8, n14
	lw	n8, 0(n8)
	li	n14, 1
	or	n7, n7, n6
	bge	n14, a3, .LBB5_66
.LBB5_108:
	li	n11, 2
	mv	n6, n5
	mv	n14, n12
	beq	a3, n11, .LBB5_110
# %bb.109:
	mv	n6, n8
	mv	n14, n13
.LBB5_110:
	lw	n13, 84(sp)
	lw	n12, 60(sp)
	lw	n11, 36(sp)
	sh	n14, 0(s0)
	beqz	a6, .LBB5_117
# %bb.111:
	lw	a4, 12(a4)
	ld	a6, 0(a5)
	li	a5, 528
	mul	a4, a4, a5
	add	a4, a6, a4
	lw	a4, 424(a4)
	beqz	a4, .LBB5_120
# %bb.112:
	beqz	a0, .LBB5_123
# %bb.113:
	ld	a4, 0(n10)
	li	a5, 528
	slli	n10, n3, 3
	add	a4, a4, n10
	ld	a4, 0(a4)
	mul	a5, n13, a5
	add	a5, a6, a5
	lw	a5, 424(a5)
	lhu	a4, 2(a4)
	beqz	a5, .LBB5_150
# %bb.114:
	slli	a4, a4, 48
	srai	a4, a4, 48
	beqz	a1, .LBB5_124
.LBB5_115:
	ld	a5, 0(n9)
	li	n9, 528
	slli	n10, t4, 3
	add	a5, a5, n10
	ld	a5, 0(a5)
	mul	n9, n12, n9
	add	n9, a6, n9
	lw	n9, 424(n9)
	lhu	a5, 2(a5)
	beqz	n9, .LBB5_151
# %bb.116:
	slli	a5, a5, 48
	srai	a5, a5, 48
	bnez	a2, .LBB5_156
	j	.LBB5_152
.LBB5_117:
	beqz	a0, .LBB5_125
# %bb.118:
	ld	a4, 0(n10)
	slli	a5, n3, 3
	add	a4, a4, a5
	ld	a4, 0(a4)
	lh	a4, 2(a4)
	beqz	a1, .LBB5_126
.LBB5_119:
	ld	a5, 0(n9)
	slli	a6, t4, 3
	add	a5, a5, a6
	ld	a5, 0(a5)
	lh	a5, 2(a5)
	beqz	a2, .LBB5_127
	j	.LBB5_156
.LBB5_120:
	beqz	a0, .LBB5_154
# %bb.121:
	ld	a4, 0(n10)
	li	a5, 528
	slli	n10, n3, 3
	add	a4, a4, n10
	ld	a4, 0(a4)
	mul	a5, n13, a5
	add	a5, a6, a5
	lw	a5, 424(a5)
	lh	a4, 2(a4)
	snez	a5, a5
	sllw	a4, a4, a5
	beqz	a1, .LBB5_155
.LBB5_122:
	ld	a5, 0(n9)
	li	n9, 528
	slli	n10, t4, 3
	add	a5, a5, n10
	ld	a5, 0(a5)
	mul	n9, n12, n9
	add	n9, a6, n9
	lw	n9, 424(n9)
	lh	a5, 2(a5)
	snez	n9, n9
	sllw	a5, a5, n9
	bnez	a2, .LBB5_156
	j	.LBB5_168
.LBB5_123:
	li	a4, 0
	bnez	a1, .LBB5_115
.LBB5_124:
	li	a5, 0
	beqz	a2, .LBB5_152
	j	.LBB5_156
.LBB5_125:
	li	a4, 0
	bnez	a1, .LBB5_119
.LBB5_126:
	li	a5, 0
	bnez	a2, .LBB5_156
.LBB5_127:
	ld	a6, 0(s2)
	slli	n9, t0, 3
	add	a6, a6, n9
	ld	a6, 0(a6)
	lh	a6, 2(a6)
	bnez	s9, .LBB5_157
.LBB5_128:
	li	a0, 1
	blt	a0, a3, .LBB5_183
.LBB5_129:
	bnez	a3, .LBB5_135
# %bb.130:
	beqz	n7, .LBB5_136
# %bb.131:
	mv	a1, a5
	blt	a5, a6, .LBB5_138
# %bb.132:
	mv	a1, a6
	mv	a0, a4
	bge	a4, a6, .LBB5_139
.LBB5_133:
	mv	a1, a5
	blt	a6, a5, .LBB5_140
.LBB5_134:
	mv	a1, a6
	mv	a2, a4
	bge	a6, a4, .LBB5_141
	j	.LBB5_142
.LBB5_135:
	mv	n8, t1
	mv	a6, a4
	j	.LBB5_185
.LBB5_136:
	mv	a0, a4
	bnez	s9, .LBB5_143
# %bb.137:
	mv	a0, a4
	j	.LBB5_149
.LBB5_138:
	mv	a0, a4
	blt	a4, a1, .LBB5_133
.LBB5_139:
	mv	a0, a1
	mv	a1, a5
	bge	a6, a5, .LBB5_134
.LBB5_140:
	mv	a2, a4
	blt	a1, a4, .LBB5_142
.LBB5_141:
	mv	a2, a1
.LBB5_142:
	add	a6, a6, a5
	add	a6, a6, a4
	add	a0, a2, a0
	subw	a0, a6, a0
	beqz	s9, .LBB5_149
.LBB5_143:
	bne	a0, a4, .LBB5_145
# %bb.144:
	bnez	t1, .LBB5_148
.LBB5_145:
	xor	a1, a0, a5
	seqz	a1, a1
	snez	a2, n5
	and	a1, a1, a2
	bnez	a1, .LBB5_147
# %bb.146:
	mv	n5, n8
	mv	a5, a0
.LBB5_147:
	mv	t1, n5
	mv	a4, a5
.LBB5_148:
	sh	a4, 2(s0)
	mv	n8, t1
	j	.LBB5_186
.LBB5_149:
	sh	a0, 2(s0)
	j	.LBB5_189
.LBB5_150:
	srli	a5, a4, 15
	add	a4, a4, a5
	slli	a4, a4, 48
	srai	a4, a4, 49
	bnez	a1, .LBB5_115
	j	.LBB5_124
.LBB5_151:
	srli	n9, a5, 15
	add	a5, a5, n9
	slli	a5, a5, 48
	srai	a5, a5, 49
	bnez	a2, .LBB5_156
.LBB5_152:
	ld	n9, 0(s2)
	li	n10, 528
	slli	n12, t0, 3
	add	n9, n9, n12
	ld	n9, 0(n9)
	mul	n10, n11, n10
	add	a6, a6, n10
	lw	n10, 424(a6)
	lhu	a6, 2(n9)
	beqz	n10, .LBB5_175
# %bb.153:
	slli	a6, a6, 48
	srai	a6, a6, 48
	bnez	s9, .LBB5_157
	j	.LBB5_128
.LBB5_154:
	li	a4, 0
	bnez	a1, .LBB5_122
.LBB5_155:
	li	a5, 0
	beqz	a2, .LBB5_168
.LBB5_156:
	li	a6, 0
	beqz	s9, .LBB5_128
.LBB5_157:
	beqz	a0, .LBB5_160
# %bb.158:
	li	a0, 1
	bne	s1, a0, .LBB5_164
# %bb.159:
	ld	a0, 0(n2)
	add	n4, a0, n4
	ld	t1, 0(n4)
	slli	n3, n3, 2
	add	t1, t1, n3
	lw	t1, 0(t1)
	bnez	a1, .LBB5_167
	j	.LBB5_169
.LBB5_160:
	beqz	a1, .LBB5_176
# %bb.161:
	li	a1, 1
	mv	a0, n2
	beq	s1, a1, .LBB5_163
# %bb.162:
	mv	a0, t6
.LBB5_163:
	li	t1, 0
	j	.LBB5_166
.LBB5_164:
	ld	a0, 0(t6)
	add	a0, a0, n4
	ld	a0, 0(a0)
	slli	n3, n3, 2
	add	a0, a0, n3
	lw	t1, 0(a0)
	beqz	a1, .LBB5_169
# %bb.165:
	mv	a0, t6
.LBB5_166:
	ld	a0, 0(a0)
.LBB5_167:
	add	a0, a0, t2
	ld	a0, 0(a0)
	slli	t4, t4, 2
	add	a0, a0, t4
	lw	n5, 0(a0)
	bnez	t3, .LBB5_170
	j	.LBB5_177
.LBB5_168:
	ld	n9, 0(s2)
	li	n10, 528
	slli	n12, t0, 3
	add	n9, n9, n12
	ld	n9, 0(n9)
	mul	n10, n11, n10
	add	a6, a6, n10
	lw	a6, 424(a6)
	lh	n9, 2(n9)
	snez	a6, a6
	sllw	a6, n9, a6
	bnez	s9, .LBB5_157
	j	.LBB5_128
.LBB5_169:
	li	n5, 0
	beqz	t3, .LBB5_177
.LBB5_170:
	li	a0, 1
	bne	s1, a0, .LBB5_172
# %bb.171:
	ld	a0, 0(n2)
	bnez	a2, .LBB5_174
	j	.LBB5_182
.LBB5_172:
	beqz	a2, .LBB5_180
# %bb.173:
	ld	a0, 0(t6)
.LBB5_174:
	slli	n1, n1, 3
	add	a0, a0, n1
	ld	a0, 0(a0)
	slli	t5, t5, 2
	add	a0, a0, t5
	lw	n8, 0(a0)
	li	a0, 1
	bge	a0, a3, .LBB5_129
	j	.LBB5_183
.LBB5_175:
	srli	n9, a6, 15
	add	a6, a6, n9
	slli	a6, a6, 48
	srai	a6, a6, 49
	beqz	s9, .LBB5_128
	j	.LBB5_157
.LBB5_176:
	li	t1, 0
	li	n5, 0
	bnez	t3, .LBB5_170
.LBB5_177:
	beqz	a2, .LBB5_179
# %bb.178:
	li	n8, 0
	li	a0, 1
	blt	a0, a3, .LBB5_183
	j	.LBB5_129
.LBB5_179:
	li	a0, 1
	beq	s1, a0, .LBB5_181
.LBB5_180:
	mv	n2, t6
.LBB5_181:
	ld	a0, 0(n2)
.LBB5_182:
	add	a0, a0, a7
	ld	a0, 0(a0)
	slli	t0, t0, 2
	add	a0, a0, t0
	lw	n8, 0(a0)
	li	a0, 1
	bge	a0, a3, .LBB5_129
.LBB5_183:
	li	a0, 3
	beq	a3, a0, .LBB5_185
# %bb.184:
	mv	n8, n5
	mv	a6, a5
.LBB5_185:
	sh	a6, 2(s0)
	beqz	s9, .LBB5_189
.LBB5_186:
	sext.w	n6, n6
	blt	n6, n8, .LBB5_188
# %bb.187:
	mv	n6, n8
.LBB5_188:
	lui	a0, %hi(pred_SAD_space)
	sw	n6, %lo(pred_SAD_space)(a0)
.LBB5_189:
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
	addi	sp, sp, 192
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
	fsd	fs0, 24(sp)                     # 8-byte Folded Spill
	fsd	fs1, 16(sp)                     # 8-byte Folded Spill
	fsd	fs2, 8(sp)                      # 8-byte Folded Spill
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
	li	t2, 2
	slli	a7, a1, 33
	li	t5, 1
	li	t0, 1
.LBB6_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_37 Depth 2
                                        #     Child Loop BB6_39 Depth 2
	mv	t1, t2
	slli	t2, a2, 3
	add	t2, t2, a0
	addi	t6, t2, 14
	slli	n6, t5, 1
	add	n7, t2, n6
	negw	t2, t0
	subw	n1, a1, t0
	slli	t3, t2, 1
	slli	t4, t0, 1
	slli	n2, t5, 32
	add	n3, a3, n6
	add	n4, a4, n6
	add	n5, a5, n6
	add	n6, a6, n6
	addi	n7, n7, 6
	addiw	t5, t5, 2
.LBB6_37:                               #   Parent Loop BB6_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	n8, t5
	sh	n1, -2(n5)
	sh	t2, -2(n4)
	slli	t5, n1, 1
	sh	t5, -2(n6)
	sh	t3, -2(n3)
	sh	n1, 0(n5)
	sh	t0, 0(n4)
	sh	t5, 0(n6)
	sh	t4, 0(n3)
	addi	n1, n1, 1
	add	n2, n2, a7
	addi	n3, n3, 4
	addi	n4, n4, 4
	addi	n5, n5, 4
	addi	n6, n6, 4
	addiw	t5, n8, 2
	bne	n3, n7, .LBB6_37
# %bb.38:                               #   in Loop: Header=BB6_36 Depth=1
	srai	t5, n2, 32
	slli	n8, n8, 1
	add	n1, a3, n8
	add	n2, a4, n8
	add	n3, a5, n8
	add	n4, a6, n8
	add	t6, t6, n8
	mv	n5, t2
.LBB6_39:                               #   Parent Loop BB6_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sh	t2, -2(n3)
	sh	n5, -2(n2)
	sh	t3, -2(n4)
	slli	n6, n5, 1
	sh	n6, -2(n1)
	sh	t0, 0(n3)
	sh	n5, 0(n2)
	sh	t4, 0(n4)
	addiw	t5, t5, 2
	sh	n6, 0(n1)
	addi	n5, n5, 1
	addi	n1, n1, 4
	addi	n2, n2, 4
	addi	n3, n3, 4
	addi	n4, n4, 4
	bne	n1, t6, .LBB6_39
# %bb.40:                               #   in Loop: Header=BB6_36 Depth=1
	addi	t0, t0, 1
	addiw	t2, t1, 1
	addi	a2, a2, 1
	bne	t1, s1, .LBB6_36
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
	fld	fs0, 24(sp)                     # 8-byte Folded Reload
	fld	fs1, 16(sp)                     # 8-byte Folded Reload
	fld	fs2, 8(sp)                      # 8-byte Folded Reload
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
	fld	fs0, 24(sp)                     # 8-byte Folded Reload
	fld	fs1, 16(sp)                     # 8-byte Folded Reload
	fld	fs2, 8(sp)                      # 8-byte Folded Reload
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
	mv	t5, a4
	mv	t6, a3
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addw	a0, t1, a2
	slli	a0, a0, 3
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	add	a0, a2, a0
	ld	a0, 0(a0)
	ld	t3, 232(sp)
	ld	t4, 224(sp)
	slli	a2, a1, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	lui	a2, 2
	addiw	a4, a2, -1800
	lui	a2, %hi(input)
	ld	a3, %lo(input)(a2)
	lh	t1, 0(t4)
	slli	t2, a5, 3
	li	a2, 1
	add	t2, a3, t2
	sd	t4, 0(sp)                       # 8-byte Folded Spill
	bne	a5, a2, .LBB8_2
# %bb.1:
	addi	a2, a3, 2047
	lw	a2, 1089(a2)
	beqz	a2, .LBB8_48
.LBB8_2:
	li	n5, 0
.LBB8_3:
	lui	a1, %hi(active_pps)
	ld	a5, %lo(active_pps)(a1)
	ld	a2, 240(sp)
	lw	s10, 88(t2)
	lw	s2, 84(t2)
	lw	t2, 192(a5)
	lh	a1, 0(t3)
	add	a4, a0, a4
	addw	t4, t1, t6
	beqz	t2, .LBB8_6
# %bb.4:
	lw	t1, 24(t0)
	beqz	t1, .LBB8_8
# %bb.5:
	li	t2, 3
	beq	t1, t2, .LBB8_8
.LBB8_6:
	lw	a5, 196(a5)
	beqz	a5, .LBB8_10
# %bb.7:
	lw	a5, 24(t0)
	li	t0, 1
	bne	a5, t0, .LBB8_10
.LBB8_8:
	lw	a3, 1912(a3)
	beqz	a3, .LBB8_10
# %bb.9:
	lui	a3, 2
	addiw	a3, a3, -1752
	j	.LBB8_11
.LBB8_10:
	lui	a3, 2
	addiw	a3, a3, -1760
.LBB8_11:
	ld	n1, 256(sp)
	lw	s3, 0(a4)
	lw	s4, 4(a4)
	addw	n2, a1, t5
	bge	a2, t4, .LBB8_16
# %bb.12:
	not	a4, a2
	subw	a5, a4, s2
	addw	a5, s3, a5
	bge	t4, a5, .LBB8_16
# %bb.13:
	bge	a2, n2, .LBB8_16
# %bb.14:
	add	a4, s4, a4
	subw	a4, a4, s10
	bge	n2, a4, .LBB8_16
# %bb.15:
	lui	s8, %hi(FastLineX)
	addi	s8, s8, %lo(FastLineX)
	j	.LBB8_17
.LBB8_16:
	lui	s8, %hi(UMVLineX)
	addi	s8, s8, %lo(UMVLineX)
.LBB8_17:
	slli	a4, a2, 1
	lw	s9, 248(sp)
	slli	a2, t6, 2
	negw	a5, a6
	subw	n3, a5, a2
	slli	a2, t5, 2
	negw	a5, a7
	subw	n4, a5, a2
	srai	n6, n1, 12
	sd	t3, 8(sp)                       # 8-byte Folded Spill
	blez	s10, .LBB8_30
# %bb.18:
	add	a0, a0, a3
	ld	s6, 0(a0)
	addi	a4, a4, 1
	sraiw	a0, s2, 2
	mulw	a4, a4, a4
	sd	t4, 96(sp)                      # 8-byte Folded Spill
	sd	t5, 88(sp)                      # 8-byte Folded Spill
	sd	t6, 80(sp)                      # 8-byte Folded Spill
	sd	n1, 72(sp)                      # 8-byte Folded Spill
	sd	n2, 64(sp)                      # 8-byte Folded Spill
	sd	n3, 56(sp)                      # 8-byte Folded Spill
	sd	n4, 48(sp)                      # 8-byte Folded Spill
	sd	n5, 40(sp)                      # 8-byte Folded Spill
	sd	n6, 32(sp)                      # 8-byte Folded Spill
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB8_37
# %bb.19:
	li	a3, 0
	li	a7, 0
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	s1, a0, 8
	lui	a5, %hi(spiral_search_x)
	lui	a6, %hi(spiral_search_y)
	lui	t0, %hi(mvbits)
	j	.LBB8_22
.LBB8_20:                               #   in Loop: Header=BB8_22 Depth=1
	mv	a7, a0
	mv	s9, s0
	ld	t4, 96(sp)                      # 8-byte Folded Reload
	ld	t5, 88(sp)                      # 8-byte Folded Reload
	ld	t6, 80(sp)                      # 8-byte Folded Reload
	ld	n1, 72(sp)                      # 8-byte Folded Reload
	ld	n2, 64(sp)                      # 8-byte Folded Reload
	ld	n3, 56(sp)                      # 8-byte Folded Reload
	ld	n4, 48(sp)                      # 8-byte Folded Reload
	ld	n5, 40(sp)                      # 8-byte Folded Reload
	ld	n6, 32(sp)                      # 8-byte Folded Reload
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	lui	a5, %hi(spiral_search_x)
	lui	a6, %hi(spiral_search_y)
	lui	t0, %hi(mvbits)
.LBB8_21:                               #   in Loop: Header=BB8_22 Depth=1
	addi	a3, a3, 1
	bgeu	a3, a4, .LBB8_45
.LBB8_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
                                        #       Child Loop BB8_25 Depth 3
	ld	a0, %lo(spiral_search_x)(a5)
	ld	a1, %lo(spiral_search_y)(a6)
	slli	a2, a3, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	add	a1, a1, a2
	lh	a1, 0(a1)
	addw	s7, t4, a0
	addw	s11, n2, a1
	ld	a0, %lo(mvbits)(t0)
	slli	a1, s7, 2
	addw	a1, n3, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s11, 2
	addw	a2, n4, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, n1
	sraiw	a0, a0, 16
	xor	a1, s7, t6
	xor	a2, s11, t5
	or	a1, a1, a2
	seqz	a1, a1
	and	a1, a1, n5
	neg	a1, a1
	and	a1, a1, n6
	sub	s0, a0, a1
	bge	s0, s9, .LBB8_21
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB8_22 Depth=1
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	sd	a7, 16(sp)                      # 8-byte Folded Spill
	li	s5, 0
.LBB8_24:                               #   Parent Loop BB8_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_25 Depth 3
	addw	a2, s11, s5
	mv	a0, s2
	mv	a1, s6
	mv	a3, s7
	mv	a4, s4
	mv	a5, s3
	jalr	s8
	slli	a1, s5, 3
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	add	a3, a0, s1
.LBB8_25:                               #   Parent Loop BB8_22 Depth=1
                                        #     Parent Loop BB8_24 Depth=2
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
	addi	a0, a0, 8
	addi	a1, a1, 8
	bne	a0, a3, .LBB8_25
# %bb.26:                               #   in Loop: Header=BB8_24 Depth=2
	bge	s0, s9, .LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_24 Depth=2
	addi	s5, s5, 1
	bltu	s5, s10, .LBB8_24
.LBB8_28:                               #   in Loop: Header=BB8_22 Depth=1
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	mv	a0, a3
	blt	s0, s9, .LBB8_20
# %bb.29:                               #   in Loop: Header=BB8_22 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	mv	s0, s9
	j	.LBB8_20
.LBB8_30:
	lui	a0, %hi(spiral_search_x)
	ld	a0, %lo(spiral_search_x)(a0)
	lui	a1, %hi(spiral_search_y)
	ld	a1, %lo(spiral_search_y)(a1)
	lui	a2, %hi(mvbits)
	ld	a2, %lo(mvbits)(a2)
	li	a3, 0
	li	a5, 0
	addi	a4, a4, 1
	mul	a4, a4, a4
	slli	a4, a4, 32
	srli	a4, a4, 32
	seqz	a6, a4
	add	a4, a4, a6
	slli	a4, a4, 1
	add	a4, a1, a4
	mv	a6, s9
	bnez	n5, .LBB8_32
	j	.LBB8_35
.LBB8_31:                               #   in Loop: Header=BB8_32 Depth=1
	addi	a3, a3, 1
	addi	a1, a1, 2
	addi	a0, a0, 2
	mv	a6, s9
	mv	a5, a7
	beq	a1, a4, .LBB8_45
.LBB8_32:                               # =>This Inner Loop Header: Depth=1
	lh	a7, 0(a0)
	lh	t0, 0(a1)
	addw	a7, t4, a7
	addw	t0, n2, t0
	slli	t1, a7, 2
	addw	t1, n3, t1
	slli	t1, t1, 2
	add	t1, a2, t1
	lw	t1, 0(t1)
	slli	t2, t0, 2
	addw	t2, n4, t2
	slli	t2, t2, 2
	add	t2, a2, t2
	lw	t2, 0(t2)
	add	t1, t2, t1
	mul	t1, t1, n1
	sraiw	t1, t1, 16
	xor	a7, a7, t6
	xor	t0, t0, t5
	or	a7, a7, t0
	snez	a7, a7
	addi	a7, a7, -1
	and	a7, a7, n6
	sub	s9, t1, a7
	sext.w	a6, a6
	mv	a7, a3
	blt	s9, a6, .LBB8_31
# %bb.33:                               #   in Loop: Header=BB8_32 Depth=1
	mv	a7, a5
	mv	s9, a6
	j	.LBB8_31
.LBB8_34:                               #   in Loop: Header=BB8_35 Depth=1
	addi	a3, a3, 1
	addi	a1, a1, 2
	addi	a0, a0, 2
	mv	a6, s9
	mv	a5, a7
	beq	a1, a4, .LBB8_45
.LBB8_35:                               # =>This Inner Loop Header: Depth=1
	lh	a7, 0(a0)
	lh	t0, 0(a1)
	add	a7, t4, a7
	add	t0, n2, t0
	slli	a7, a7, 2
	addw	a7, n3, a7
	slli	a7, a7, 2
	add	a7, a2, a7
	lw	a7, 0(a7)
	slli	t0, t0, 2
	addw	t0, n4, t0
	slli	t0, t0, 2
	add	t0, a2, t0
	lw	t0, 0(t0)
	add	a7, t0, a7
	mul	a7, a7, n1
	sraiw	s9, a7, 16
	mv	a7, a3
	blt	s9, a6, .LBB8_34
# %bb.36:                               #   in Loop: Header=BB8_35 Depth=1
	mv	a7, a5
	mv	s9, a6
	j	.LBB8_34
.LBB8_37:
	li	s0, 0
	li	a7, 0
	add	s10, s10, t5
	add	s10, s10, a1
	lui	a5, %hi(spiral_search_x)
	lui	a6, %hi(spiral_search_y)
	lui	t0, %hi(mvbits)
	j	.LBB8_40
.LBB8_38:                               #   in Loop: Header=BB8_40 Depth=1
	mv	a7, s0
	mv	s9, s11
	ld	t4, 96(sp)                      # 8-byte Folded Reload
	ld	t5, 88(sp)                      # 8-byte Folded Reload
	ld	t6, 80(sp)                      # 8-byte Folded Reload
	ld	n1, 72(sp)                      # 8-byte Folded Reload
	ld	n2, 64(sp)                      # 8-byte Folded Reload
	ld	n3, 56(sp)                      # 8-byte Folded Reload
	ld	n4, 48(sp)                      # 8-byte Folded Reload
	ld	n5, 40(sp)                      # 8-byte Folded Reload
	ld	n6, 32(sp)                      # 8-byte Folded Reload
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	lui	a5, %hi(spiral_search_x)
	lui	a6, %hi(spiral_search_y)
	lui	t0, %hi(mvbits)
.LBB8_39:                               #   in Loop: Header=BB8_40 Depth=1
	addi	s0, s0, 1
	bgeu	s0, a4, .LBB8_45
.LBB8_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_42 Depth 2
	ld	a0, %lo(spiral_search_x)(a5)
	ld	a1, %lo(spiral_search_y)(a6)
	slli	a2, s0, 1
	add	a0, a0, a2
	lh	a3, 0(a0)
	add	a1, a1, a2
	lh	a0, 0(a1)
	addw	s5, t4, a3
	addw	s7, n2, a0
	ld	a1, %lo(mvbits)(t0)
	slli	a2, s5, 2
	addw	a2, n3, a2
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	slli	a3, s7, 2
	addw	a3, n4, a3
	slli	a3, a3, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	add	a1, a1, a2
	mul	a1, a1, n1
	sraiw	a1, a1, 16
	xor	a2, s5, t6
	xor	a3, s7, t5
	or	a2, a2, a3
	seqz	a2, a2
	and	a2, a2, n5
	neg	a2, a2
	and	a2, a2, n6
	sub	s11, a1, a2
	bge	s11, s9, .LBB8_39
# %bb.41:                               # %.preheader1
                                        #   in Loop: Header=BB8_40 Depth=1
	addw	s1, s10, a0
.LBB8_42:                               #   Parent Loop BB8_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s2
	mv	a1, s6
	mv	a2, s7
	mv	a3, s5
	mv	a4, s4
	mv	a5, s3
	jalr	s8
	addiw	s7, s7, 1
	bne	s7, s1, .LBB8_42
# %bb.43:                               #   in Loop: Header=BB8_40 Depth=1
	sext.w	s11, s11
	blt	s11, s9, .LBB8_38
# %bb.44:                               #   in Loop: Header=BB8_40 Depth=1
	mv	s11, s9
	j	.LBB8_38
.LBB8_45:
	sext.w	a0, a7
	beqz	a0, .LBB8_47
# %bb.46:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	ld	a4, 0(sp)                       # 8-byte Folded Reload
	lh	a2, 0(a4)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(a4)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB8_47:
	sext.w	a0, s9
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	ld	s7, 152(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	ld	s9, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	s11, 120(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.LBB8_48:
	lw	a2, 24(t0)
	addi	a2, a2, -1
	snez	a2, a2
	seqz	a1, a1
	and	n5, a1, a2
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
	mv	a3, n1
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=1
	addi	s2, s2, 4
	addiw	t2, t2, 1
	addi	t5, t5, 2
	addi	t4, t4, 2
	beq	s2, t3, .LBB9_13
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	lw	n1, 0(s2)
	sext.w	t6, a2
	bge	n1, t6, .LBB9_9
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=1
	lh	a2, 0(t4)
	lh	n2, 0(t5)
	add	a2, a7, a2
	add	n2, a5, n2
	slli	a2, a2, 2
	subw	a2, a2, s1
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	slli	n2, n2, 2
	subw	n2, n2, s0
	slli	n2, n2, 2
	add	n2, a1, n2
	lw	n2, 0(n2)
	add	a2, n2, a2
	mul	a2, a2, a0
	sraiw	a2, a2, 16
	addw	a2, a2, n1
	mv	n1, t2
	blt	a2, t6, .LBB9_8
# %bb.12:                               #   in Loop: Header=BB9_10 Depth=1
	mv	n1, a3
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
	lw	n1, 20(a0)
	lw	n2, 36(a0)
	lw	n3, 24(a0)
	lw	n4, 40(a0)
	lw	n5, 28(a0)
	lw	a0, 44(a0)
	add	n6, t6, t5
	add	n7, n2, n1
	add	n8, n4, n3
	add	n9, a0, n5
	subw	t5, t5, t6
	subw	t6, n1, n2
	subw	n1, n3, n4
	subw	a0, n5, a0
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, a5, a6
	subw	a4, a7, t0
	add	a5, n6, t1
	add	a6, n7, t2
	add	a7, n8, t3
	add	t0, n9, t4
	add	n2, t5, a1
	add	n3, t6, a3
	add	n4, n1, a2
	add	n5, a0, a4
	subw	t1, t1, n6
	subw	t2, t2, n7
	subw	t3, t3, n8
	subw	t4, t4, n9
	subw	a1, a1, t5
	subw	a3, a3, t6
	subw	a2, a2, n1
	subw	a4, a4, a0
	add	a0, t0, a5
	add	t5, a7, a6
	subw	a6, a6, a7
	subw	a5, a5, t0
	add	a7, n5, n2
	add	t0, n4, n3
	subw	t6, n3, n4
	subw	n1, n2, n5
	add	n2, t4, t1
	add	n3, t3, t2
	subw	t2, t2, t3
	subw	t1, t1, t4
	add	t3, a4, a1
	add	t4, a2, a3
	subw	a3, a3, a2
	subw	a1, a1, a4
	addw	a2, a0, t5
	subw	a0, a0, t5
	addw	a4, a5, a6
	subw	a5, a5, a6
	addw	a6, a7, t0
	subw	a7, a7, t0
	addw	t0, n1, t6
	subw	t5, n1, t6
	addw	t6, n2, n3
	subw	n1, n2, n3
	addw	n2, t1, t2
	lui	n3, %hi(byte_abs)
	ld	n3, %lo(byte_abs)(n3)
	subw	t1, t1, t2
	addw	t2, t3, t4
	slli	a2, a2, 2
	add	a2, n3, a2
	lw	a2, 0(a2)
	slli	a0, a0, 2
	add	a0, n3, a0
	lw	a0, 0(a0)
	subw	t3, t3, t4
	addw	t4, a1, a3
	subw	a1, a1, a3
	add	a0, a0, a2
	slli	a4, a4, 2
	add	a4, n3, a4
	lw	a2, 0(a4)
	slli	a5, a5, 2
	add	a5, n3, a5
	lw	a3, 0(a5)
	slli	a6, a6, 2
	add	a6, n3, a6
	lw	a4, 0(a6)
	slli	a7, a7, 2
	add	a7, n3, a7
	lw	a5, 0(a7)
	slli	t0, t0, 2
	add	t0, n3, t0
	lw	a6, 0(t0)
	add	a2, a3, a2
	add	a0, a2, a0
	add	a4, a5, a4
	add	a4, a6, a4
	slli	t5, t5, 2
	add	t5, n3, t5
	lw	a2, 0(t5)
	slli	t6, t6, 2
	add	t6, n3, t6
	lw	a3, 0(t6)
	slli	n1, n1, 2
	add	n1, n3, n1
	lw	a5, 0(n1)
	slli	n2, n2, 2
	add	n2, n3, n2
	lw	a6, 0(n2)
	add	a0, a4, a0
	add	a2, a3, a2
	add	a2, a5, a2
	add	a2, a6, a2
	add	a0, a2, a0
	slli	t1, t1, 2
	add	t1, n3, t1
	lw	a2, 0(t1)
	slli	t2, t2, 2
	add	t2, n3, t2
	lw	a3, 0(t2)
	slli	t3, t3, 2
	add	t3, n3, t3
	lw	a4, 0(t3)
	slli	t4, t4, 2
	add	t4, n3, t4
	lw	a5, 0(t4)
	slli	a1, a1, 2
	add	a1, n3, a1
	lw	a1, 0(a1)
	add	a2, a3, a2
	add	a2, a4, a2
	add	a2, a5, a2
	add	a1, a1, a2
	add	a0, a1, a0
	addi	a0, a0, 1
	sraiw	a0, a0, 1
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
	beqz	a1, .LBB11_2
# %bb.1:
	lw	a1, 0(a0)
	lw	a2, 16(a0)
	lw	a3, 4(a0)
	lw	a4, 20(a0)
	lw	a5, 8(a0)
	lw	a6, 24(a0)
	lw	a7, 12(a0)
	lw	t0, 28(a0)
	add	t1, a2, a1
	add	t2, a4, a3
	add	t3, a6, a5
	add	t4, t0, a7
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, a5, a6
	subw	a4, a7, t0
	add	a5, t3, t1
	add	a6, t4, t2
	subw	a7, t1, t3
	subw	t1, t2, t4
	add	t3, a2, a1
	add	t4, a4, a3
	subw	a1, a1, a2
	subw	a3, a3, a4
	add	t2, a6, a5
	subw	n2, a5, a6
	add	a2, t1, a7
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	subw	a2, a7, t1
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	add	a2, t4, t3
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	subw	t3, t3, t4
	sd	t3, 80(sp)                      # 8-byte Folded Spill
	add	a2, a3, a1
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	subw	a1, a1, a3
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	lw	a1, 32(a0)
	lw	a2, 48(a0)
	lw	a3, 36(a0)
	lw	a4, 52(a0)
	lw	a5, 40(a0)
	lw	a7, 56(a0)
	lw	t3, 44(a0)
	lw	t4, 60(a0)
	add	t5, a2, a1
	add	t6, a4, a3
	add	n1, a7, a5
	add	n3, t4, t3
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, a5, a7
	subw	t3, t3, t4
	add	a4, n1, t5
	add	a5, n3, t6
	subw	a7, t5, n1
	subw	t4, t6, n3
	add	t6, a2, a1
	add	n5, t3, a3
	subw	a1, a1, a2
	subw	a3, a3, t3
	add	n1, a5, a4
	subw	t5, a4, a5
	add	n4, t4, a7
	subw	n10, a7, t4
	add	n3, n5, t6
	subw	t3, t6, n5
	add	a2, a3, a1
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	subw	a1, a1, a3
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	lw	a1, 64(a0)
	lw	a2, 80(a0)
	lw	a3, 68(a0)
	lw	a4, 84(a0)
	lw	a7, 72(a0)
	lw	t4, 88(a0)
	lw	t6, 76(a0)
	lw	n5, 92(a0)
	add	n6, a2, a1
	add	n7, a4, a3
	add	n8, t4, a7
	add	n9, n5, t6
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, a7, t4
	subw	a4, t6, n5
	add	a7, n8, n6
	add	t4, n9, n7
	subw	t6, n6, n8
	subw	n5, n7, n9
	add	n7, a2, a1
	add	n9, a4, a3
	subw	a1, a1, a2
	subw	a3, a3, a4
	add	n8, t4, a7
	subw	n6, a7, t4
	add	n12, n5, t6
	subw	n17, t6, n5
	add	n11, n9, n7
	subw	n5, n7, n9
	add	t4, a3, a1
	subw	a1, a1, a3
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	lw	a1, 96(a0)
	lw	a2, 112(a0)
	lw	a3, 100(a0)
	lw	a4, 116(a0)
	lw	t6, 104(a0)
	lw	n7, 120(a0)
	lw	n9, 108(a0)
	lw	n13, 124(a0)
	add	n14, a2, a1
	add	n15, a4, a3
	add	n16, n7, t6
	add	n18, n13, n9
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, t6, n7
	subw	a4, n9, n13
	add	t6, n16, n14
	add	n7, n18, n15
	subw	n9, n14, n16
	subw	n13, n15, n18
	add	n16, a2, a1
	add	n18, a4, a3
	subw	a1, a1, a2
	subw	a3, a3, a4
	add	n15, n7, t6
	subw	n14, t6, n7
	add	n19, n13, n9
	subw	n24, n9, n13
	add	n20, n18, n16
	subw	n13, n16, n18
	add	n7, a3, a1
	subw	t6, a1, a3
	lw	a1, 128(a0)
	lw	a2, 144(a0)
	lw	a3, 132(a0)
	lw	a4, 148(a0)
	lw	n9, 136(a0)
	lw	n16, 152(a0)
	lw	n18, 140(a0)
	lw	n21, 156(a0)
	add	n22, a2, a1
	add	n23, a4, a3
	add	n25, n16, n9
	add	n26, n21, n18
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, n9, n16
	subw	a4, n18, n21
	add	n9, n25, n22
	add	n16, n26, n23
	subw	n18, n22, n25
	subw	n23, n23, n26
	add	n25, a2, a1
	add	n27, a4, a3
	subw	a1, a1, a2
	subw	a3, a3, a4
	add	n22, n16, n9
	subw	n21, n9, n16
	add	n26, n23, n18
	subw	s0, n18, n23
	add	n29, n27, n25
	subw	n23, n25, n27
	add	n16, a3, a1
	subw	n9, a1, a3
	lw	a1, 160(a0)
	lw	a2, 176(a0)
	lw	a3, 164(a0)
	lw	a4, 180(a0)
	lw	n18, 168(a0)
	lw	n25, 184(a0)
	lw	n27, 172(a0)
	lw	n28, 188(a0)
	add	n30, a2, a1
	add	n31, a4, a3
	add	s1, n25, n18
	add	s2, n28, n27
	subw	a1, a1, a2
	subw	a3, a3, a4
	subw	a2, n18, n25
	subw	a4, n27, n28
	add	n18, s1, n30
	add	n25, s2, n31
	subw	n27, n30, s1
	subw	n28, n31, s2
	add	n30, a2, a1
	add	n31, a4, a3
	subw	a1, a1, a2
	subw	a3, a3, a4
	add	s2, n25, n18
	subw	a6, n18, n25
	add	t1, n28, n27
	subw	s7, n27, n28
	add	s6, n31, n30
	subw	n31, n30, n31
	lw	n27, 192(a0)
	lw	n28, 208(a0)
	lw	n30, 196(a0)
	lw	s1, 212(a0)
	add	n25, a3, a1
	subw	n18, a1, a3
	add	a1, n28, n27
	add	a3, s1, n30
	lw	s3, 200(a0)
	lw	s4, 216(a0)
	lw	s5, 204(a0)
	lw	s8, 220(a0)
	subw	n27, n27, n28
	add	n28, s4, s3
	subw	n30, n30, s1
	add	s1, s8, s5
	subw	s3, s3, s4
	subw	s4, s5, s8
	add	s5, n28, a1
	add	s8, s1, a3
	subw	a1, a1, n28
	subw	a3, a3, s1
	add	n28, s3, n27
	add	s1, s4, n30
	subw	n27, n27, s3
	subw	n30, n30, s4
	add	s3, s8, s5
	subw	s9, s5, s8
	add	a5, a3, a1
	subw	t0, a1, a3
	add	ra, s1, n28
	lw	a3, 224(a0)
	lw	s4, 240(a0)
	subw	s8, n28, s1
	add	s1, n30, n27
	subw	n27, n27, n30
	add	n28, s4, a3
	subw	a3, a3, s4
	lw	n30, 228(a0)
	lw	s4, 244(a0)
	lw	s5, 232(a0)
	lw	s10, 248(a0)
	lw	s11, 236(a0)
	lw	a0, 252(a0)
	add	a1, s4, n30
	subw	n30, n30, s4
	add	s4, s10, s5
	subw	s5, s5, s10
	add	s10, a0, s11
	subw	a0, s11, a0
	add	s11, s4, n28
	subw	n28, n28, s4
	add	s4, s10, a1
	subw	a1, a1, s10
	add	s10, s5, a3
	subw	s5, a3, s5
	add	a3, a0, n30
	subw	n30, n30, a0
	add	a0, s4, s11
	subw	s11, s11, s4
	add	a2, a1, n28
	subw	a4, n28, a1
	add	a7, a3, s10
	subw	a3, s10, a3
	add	s10, n30, s5
	subw	s4, s5, n30
	add	n28, n22, t2
	subw	t2, t2, n22
	add	n22, s2, n1
	subw	n1, n1, s2
	add	n30, s3, n8
	subw	n8, n8, s3
	add	s2, a0, n15
	subw	s5, n15, a0
	add	n15, n30, n28
	subw	n28, n28, n30
	add	n30, s2, n22
	subw	s2, n22, s2
	add	s3, n8, t2
	subw	t2, t2, n8
	add	a0, s5, n1
	subw	a1, n1, s5
	add	s5, n30, n15
	sub	n30, n15, n30
	add	n22, s2, n28
	sub	n15, n28, s2
	add	n8, a0, s3
	sub	a0, s3, a0
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	add	a0, a1, t2
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	sub	a0, t2, a1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	add	a0, n21, n2
	subw	a1, n2, n21
	add	t2, a6, t5
	subw	a6, t5, a6
	add	t5, s9, n6
	subw	n2, n6, s9
	add	n6, s11, n14
	subw	n14, n14, s11
	add	n21, t5, a0
	subw	a0, a0, t5
	add	t5, n6, t2
	subw	t2, t2, n6
	add	n6, n2, a1
	subw	a1, a1, n2
	add	n2, n14, a6
	subw	a6, a6, n14
	add	s11, t5, n21
	sub	s3, n21, t5
	add	n28, t2, a0
	sub	n21, a0, t2
	add	n14, n2, n6
	sub	n6, n6, n2
	add	a0, a6, a1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	sub	a0, a1, a6
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	a0, n26, a1
	subw	a1, a1, n26
	add	a6, t1, n4
	subw	t1, n4, t1
	add	t2, a5, n12
	subw	a5, n12, a5
	add	n2, a2, n19
	subw	a2, n19, a2
	add	n4, t2, a0
	subw	a0, a0, t2
	add	t2, n2, a6
	subw	a6, a6, n2
	add	n2, a5, a1
	subw	a1, a1, a5
	add	a5, a2, t1
	subw	t1, t1, a2
	add	t5, t2, n4
	sub	s9, n4, t2
	add	s2, a6, a0
	sub	n26, a0, a6
	add	n19, a5, n2
	sub	n12, n2, a5
	add	n4, t1, a1
	sub	a0, a1, t1
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, s0, a1
	subw	a1, a1, s0
	add	a5, s7, n10
	subw	a6, n10, s7
	add	t1, t0, n17
	subw	t0, n17, t0
	add	n2, a4, n24
	subw	a4, n24, a4
	add	n10, t1, a0
	subw	a0, a0, t1
	add	t1, n2, a5
	subw	a5, a5, n2
	add	n2, t0, a1
	subw	t0, a1, t0
	add	n17, a4, a6
	subw	a6, a6, a4
	add	a4, t1, n10
	sub	t2, n10, t1
	add	s7, a5, a0
	sub	s0, a0, a5
	add	n24, n17, n2
	sub	n17, n2, n17
	add	n10, a6, t0
	sub	a0, t0, a6
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	add	a0, n29, a1
	subw	a5, a1, n29
	add	a6, s6, n3
	subw	t0, n3, s6
	add	t1, ra, n11
	subw	n3, n11, ra
	add	n11, a7, n20
	subw	a7, n20, a7
	add	n20, t1, a0
	subw	a0, a0, t1
	add	t1, n11, a6
	subw	a6, a6, n11
	add	n11, n3, a5
	subw	a5, a5, n3
	add	n3, a7, t0
	subw	a7, t0, a7
	add	t0, t1, n20
	sub	ra, n20, t1
	add	s6, a6, a0
	sub	n29, a0, a6
	add	n20, n3, n11
	sub	n11, n11, n3
	add	n3, a7, a5
	sub	n2, a5, a7
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	add	a0, n23, a1
	subw	a5, a1, n23
	add	a6, n31, t3
	subw	a7, t3, n31
	add	t3, s8, n5
	subw	n5, n5, s8
	add	n23, a3, n13
	subw	a3, n13, a3
	add	n13, t3, a0
	subw	a0, a0, t3
	add	t3, n23, a6
	subw	a6, a6, n23
	add	s8, n5, a5
	subw	a5, a5, n5
	add	n5, a3, a7
	subw	a3, a7, a3
	add	a7, t3, n13
	sub	t3, n13, t3
	add	n31, a6, a0
	sub	n23, a0, a6
	add	n13, n5, s8
	sub	n5, s8, n5
	add	s8, a3, a5
	sub	n1, a5, a3
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	add	a3, n16, a0
	subw	a0, a0, n16
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a6, n25, a1
	subw	n16, a1, n25
	add	n25, s1, t4
	subw	t4, t4, s1
	add	s1, s10, n7
	subw	n7, n7, s10
	add	s10, n25, a3
	subw	a3, a3, n25
	add	n25, s1, a6
	subw	a6, a6, s1
	add	a1, t4, a0
	subw	a0, a0, t4
	add	t4, n7, n16
	subw	a5, n16, n7
	add	a2, n25, s10
	sub	n25, s10, n25
	add	s1, a6, a3
	sub	n16, a3, a6
	add	n7, t4, a1
	sub	t4, a1, t4
	add	s10, a5, a0
	sub	t1, a0, a5
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a1, n9, a0
	subw	a3, a0, n9
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	a5, n18, a0
	subw	a0, a0, n18
	ld	a6, 56(sp)                      # 8-byte Folded Reload
	add	n9, n27, a6
	subw	n18, a6, n27
	add	n27, s4, t6
	subw	t6, t6, s4
	add	s4, n9, a1
	subw	a1, a1, n9
	add	n9, n27, a5
	subw	a5, a5, n27
	add	n27, n18, a3
	subw	a3, a3, n18
	add	a6, t6, a0
	subw	a0, a0, t6
	add	t6, n9, s4
	sub	s4, s4, n9
	add	n9, a5, a1
	sub	n18, a1, a5
	add	a5, a6, n27
	sub	a6, n27, a6
	add	a1, a0, a3
	sub	a3, a3, a0
	sraiw	a0, s5, 31
	xor	n27, s5, a0
	subw	a0, n27, a0
	sraiw	n27, s11, 31
	xor	s5, s11, n27
	subw	n27, s5, n27
	add	a0, n27, a0
	sraiw	n27, t5, 31
	xor	t5, t5, n27
	subw	t5, t5, n27
	add	a0, t5, a0
	sraiw	t5, a4, 31
	xor	a4, a4, t5
	subw	a4, a4, t5
	add	a0, a4, a0
	sraiw	a4, t0, 31
	xor	t0, t0, a4
	subw	a4, t0, a4
	add	a0, a4, a0
	sraiw	a4, a7, 31
	xor	a7, a7, a4
	subw	a4, a7, a4
	add	a0, a4, a0
	sraiw	a4, a2, 31
	xor	a2, a2, a4
	subw	a2, a2, a4
	add	a0, a2, a0
	sraiw	a2, t6, 31
	xor	t6, t6, a2
	subw	t6, t6, a2
	add	a0, t6, a0
	sraiw	a2, n30, 31
	xor	a4, n30, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s3, 31
	xor	a4, s3, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s9, 31
	xor	a4, s9, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, t2, 31
	xor	a4, t2, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, ra, 31
	xor	a4, ra, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, t3, 31
	xor	t3, t3, a2
	subw	t3, t3, a2
	add	a0, t3, a0
	sraiw	a2, n25, 31
	xor	a4, n25, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s4, 31
	xor	a4, s4, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n22, 31
	xor	a4, n22, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n28, 31
	xor	a4, n28, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s2, 31
	xor	a4, s2, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s7, 31
	xor	a4, s7, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s6, 31
	xor	a4, s6, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n31, 31
	xor	a4, n31, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s1, 31
	xor	s1, s1, a2
	subw	s1, s1, a2
	add	a0, s1, a0
	sraiw	a2, n9, 31
	xor	a4, n9, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n15, 31
	xor	a4, n15, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n21, 31
	xor	a4, n21, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n26, 31
	xor	a4, n26, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s0, 31
	xor	s0, s0, a2
	subw	s0, s0, a2
	add	a0, s0, a0
	sraiw	a2, n29, 31
	xor	a4, n29, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n23, 31
	xor	a4, n23, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n16, 31
	xor	a4, n16, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n18, 31
	xor	a4, n18, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n8, 31
	xor	a4, n8, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n14, 31
	xor	a4, n14, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n19, 31
	xor	a4, n19, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n24, 31
	xor	a4, n24, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n20, 31
	xor	a4, n20, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n13, 31
	xor	a4, n13, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n7, 31
	xor	a4, n7, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, a5, 31
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a0, a5, a0
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	sraiw	a2, a4, 31
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n6, 31
	xor	a4, n6, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n12, 31
	xor	a4, n12, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n17, 31
	xor	a4, n17, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n11, 31
	xor	a4, n11, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n5, 31
	xor	a4, n5, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, t4, 31
	xor	t4, t4, a2
	subw	t4, t4, a2
	add	a0, t4, a0
	sraiw	a2, a6, 31
	xor	a4, a6, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	sraiw	a2, a4, 31
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	sraiw	a2, a4, 31
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n4, 31
	xor	a4, n4, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n10, 31
	xor	a4, n10, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, n3, 31
	xor	a4, n3, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s8, 31
	xor	a4, s8, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, s10, 31
	xor	a4, s10, a2
	subw	a4, a4, a2
	add	a0, a4, a0
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	add	a0, a1, a0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	sraiw	a1, a2, 31
	xor	a2, a2, a1
	subw	a2, a2, a1
	add	a0, a2, a0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	sraiw	a1, a2, 31
	xor	a2, a2, a1
	subw	a2, a2, a1
	add	a0, a2, a0
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	sraiw	a1, a2, 31
	xor	a2, a2, a1
	subw	a2, a2, a1
	add	a0, a2, a0
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	sraiw	a1, a2, 31
	xor	a2, a2, a1
	subw	a2, a2, a1
	add	a0, a2, a0
	sraiw	a1, n2, 31
	xor	a2, n2, a1
	subw	a2, a2, a1
	add	a0, a2, a0
	sraiw	a1, n1, 31
	xor	a2, n1, a1
	subw	a2, a2, a1
	add	a0, a2, a0
	sraiw	a1, t1, 31
	xor	a2, t1, a1
	subw	a2, a2, a1
	add	a0, a2, a0
	sraiw	a1, a3, 31
	xor	a3, a3, a1
	subw	a3, a3, a1
	add	a0, a3, a0
	addi	a0, a0, 2
	srliw	a1, a0, 2
	j	.LBB11_4
.LBB11_2:
	lui	a1, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a1)
	li	a1, 0
	addi	a3, a0, 256
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a0)
	slli	a4, a4, 2
	add	a4, a2, a4
	lw	a4, 0(a4)
	addi	a0, a0, 4
	addw	a1, a4, a1
	bne	a0, a3, .LBB11_3
.LBB11_4:
	mv	a0, a1
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	ld	s7, 152(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	ld	s9, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	s11, 120(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 224
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
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	t0, 64
	sd	t0, 184(sp)                     # 8-byte Folded Spill
	sd	a5, 48(sp)                      # 8-byte Folded Spill
	beq	a5, a0, .LBB13_2
# %bb.1:
	li	a0, 128
	sd	a0, 184(sp)                     # 8-byte Folded Spill
.LBB13_2:
	lui	a0, %hi(input)
	ld	n1, %lo(input)(a0)
	ld	n5, 1472(sp)
	ld	n2, 1464(sp)
	ld	n3, 1456(sp)
	addi	a0, n1, 2047
	lw	a5, 1089(a0)
	lui	t0, %hi(img)
	ld	t6, %lo(img)(t0)
	beqz	a5, .LBB13_42
.LBB13_3:
	li	n4, 0
.LBB13_4:
	lw	a5, 24(n1)
	ld	t0, 48(sp)                      # 8-byte Folded Reload
	slli	t0, t0, 3
	mv	t1, n5
	bgtz	n5, .LBB13_6
# %bb.5:
	li	t1, 1
.LBB13_6:
	add	t0, n1, t0
	beqz	a5, .LBB13_8
# %bb.7:
	mv	n5, t1
.LBB13_8:
	lw	t1, 88(t0)
	sd	t1, 144(sp)                     # 8-byte Folded Spill
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
	slli	a4, a4, 2
	addw	a2, t1, a2
	slli	a2, a2, 3
	lui	t1, %hi(listX)
	addi	t1, t1, %lo(listX)
	add	a2, t1, a2
	ld	t1, 0(a2)
	addi	a2, a5, -1
	lw	t0, 84(t0)
	sd	t0, 256(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, t1, a1
	ld	a1, 0(a1)
	addi	a3, a3, 16
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	lui	t0, 2
	addiw	a3, t0, -1800
	add	a3, a1, a3
	beqz	t2, .LBB13_16
# %bb.14:
	lw	t1, 1912(n1)
	beqz	t1, .LBB13_16
# %bb.15:
	addiw	t0, t0, -1736
	j	.LBB13_17
.LBB13_16:
	addiw	t0, t0, -1744
.LBB13_17:
	addi	a4, a4, 16
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	lw	a4, 0(a3)
	lw	a3, 4(a3)
	snez	s1, a2
	add	a1, a1, t0
	slli	s5, a4, 2
	slli	s6, a3, 2
	ld	t0, 256(sp)                     # 8-byte Folded Reload
	subw	a4, a4, t0
	lh	s7, 0(n3)
	slli	t1, a4, 2
	ld	a4, 144(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	slli	t0, a3, 2
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	addw	a3, a3, s7
	li	a4, 2
	slli	s0, s7, 48
	sd	t0, 24(sp)                      # 8-byte Folded Spill
	sd	t1, 32(sp)                      # 8-byte Folded Spill
	blt	a3, a4, .LBB13_22
# %bb.18:
	addiw	a4, t1, 31
	bge	a3, a4, .LBB13_22
# %bb.19:
	lh	a3, 0(n2)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	li	a4, 2
	blt	a3, a4, .LBB13_22
# %bb.20:
	addiw	a4, t0, 31
	bge	a3, a4, .LBB13_22
# %bb.21:
	lui	a4, %hi(FastLine4X)
	addi	a4, a4, %lo(FastLine4X)
	j	.LBB13_23
.LBB13_22:
	lui	a4, %hi(UMVLine4X)
	addi	a4, a4, %lo(UMVLine4X)
.LBB13_23:
	addi	t3, a5, -2
	lw	a3, 1845(a0)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	slti	t2, a0, 5
	ld	t0, 1496(sp)
	lw	t1, 1488(sp)
	ld	s4, 0(a1)
	addiw	s5, s5, 28
	addiw	s6, s6, 28
	srli	s0, s0, 48
	lui	a0, %hi(get_line)
	sd	a4, %lo(get_line)(a0)
	sd	a7, 168(sp)                     # 8-byte Folded Spill
	sd	a6, 160(sp)                     # 8-byte Folded Spill
	sd	n2, 128(sp)                     # 8-byte Folded Spill
	sd	n3, 120(sp)                     # 8-byte Folded Spill
	sd	t0, 152(sp)                     # 8-byte Folded Spill
	bge	s1, n5, .LBB13_41
# %bb.24:
	sd	t3, 8(sp)                       # 8-byte Folded Spill
	seqz	a0, t3
	addi	a0, a0, -1
	and	a0, a0, a5
	snez	a1, a3
	snez	a3, a0
	sd	t2, 16(sp)                      # 8-byte Folded Spill
	and	a1, a1, t2
	and	a1, a1, a3
	srai	a5, t0, 12
	andi	s10, a1, 1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB13_49
# %bb.25:
	li	t2, 0
	snez	t3, a2
	lui	t4, %hi(spiral_hpel_search_x)
	lui	t5, %hi(spiral_hpel_search_y)
	lui	t6, %hi(mvbits)
	lui	s1, %hi(get_line)
	sext.w	a0, a0
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	sd	n4, 56(sp)                      # 8-byte Folded Spill
	sd	n5, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 224(sp)                    # 8-byte Folded Spill
	j	.LBB13_28
.LBB13_26:                              #   in Loop: Header=BB13_28 Depth=1
	mv	t2, a0
	mv	t1, s3
	ld	a7, 168(sp)                     # 8-byte Folded Reload
	ld	a6, 160(sp)                     # 8-byte Folded Reload
	ld	n2, 128(sp)                     # 8-byte Folded Reload
	ld	n3, 120(sp)                     # 8-byte Folded Reload
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	ld	n4, 56(sp)                      # 8-byte Folded Reload
	ld	n5, 40(sp)                      # 8-byte Folded Reload
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(spiral_hpel_search_x)
	lui	t5, %hi(spiral_hpel_search_y)
	lui	t6, %hi(mvbits)
.LBB13_27:                              #   in Loop: Header=BB13_28 Depth=1
	addi	t3, t3, 1
	beq	t3, n5, .LBB13_48
.LBB13_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
                                        #       Child Loop BB13_35 Depth 3
	ld	a0, %lo(spiral_hpel_search_x)(t4)
	lh	a1, 0(n3)
	slli	a2, t3, 1
	ld	a3, %lo(spiral_hpel_search_y)(t5)
	add	a0, a0, a2
	lh	a0, 0(a0)
	lh	a4, 0(n2)
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
	seqz	a3, t3
	and	a3, n4, a3
	neg	a3, a3
	and	a3, a3, a5
	sub	s3, a2, a3
	bge	s3, t1, .LBB13_27
# %bb.29:                               #   in Loop: Header=BB13_28 Depth=1
	sd	t3, 112(sp)                     # 8-byte Folded Spill
	sd	t2, 104(sp)                     # 8-byte Folded Spill
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	sd	t1, 216(sp)                     # 8-byte Folded Spill
	blez	a2, .LBB13_37
# %bb.30:                               # %.preheader3
                                        #   in Loop: Header=BB13_28 Depth=1
	li	a3, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	s2, a0, a2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	j	.LBB13_32
.LBB13_31:                              #   in Loop: Header=BB13_32 Depth=2
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	bge	a0, a1, .LBB13_37
.LBB13_32:                              #   Parent Loop BB13_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_35 Depth 3
	li	s7, 0
	li	s0, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s8, a2, a0
	addiw	a0, s8, 4
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 176(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	li	s11, 6
	j	.LBB13_35
.LBB13_33:                              #   in Loop: Header=BB13_35 Depth=3
	andi	a0, s7, 4
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
.LBB13_34:                              #   in Loop: Header=BB13_35 Depth=3
	addi	s0, s0, 4
	addiw	s7, s7, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bge	s7, a0, .LBB13_31
.LBB13_35:                              #   Parent Loop BB13_28 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s9)
	ld	a5, %lo(get_line)(s1)
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
	sw	a1, 264(sp)
	subw	a2, a2, a3
	sw	a2, 268(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 272(sp)
	ld	a2, 8(s9)
	ld	a5, %lo(get_line)(s1)
	subw	a1, a1, a0
	sw	a1, 276(sp)
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
	sw	a1, 280(sp)
	subw	a2, a2, a3
	sw	a2, 284(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 288(sp)
	ld	a2, 16(s9)
	ld	a5, %lo(get_line)(s1)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 240(sp)                     # 8-byte Folded Reload
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
	ld	a2, 24(s9)
	ld	a5, %lo(get_line)(s1)
	subw	a1, a1, a0
	sw	a1, 308(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
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
	ld	s10, 224(sp)                    # 8-byte Folded Reload
	bnez	s10, .LBB13_33
# %bb.36:                               #   in Loop: Header=BB13_35 Depth=3
	addi	a0, sp, 264
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	call	SATD
	addw	s3, a0, s3
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bge	a0, s3, .LBB13_34
	j	.LBB13_39
.LBB13_37:                              #   in Loop: Header=BB13_28 Depth=1
	ld	s10, 224(sp)                    # 8-byte Folded Reload
	beqz	s10, .LBB13_39
# %bb.38:                               #   in Loop: Header=BB13_28 Depth=1
	addi	a0, sp, 328
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	call	find_SATD
	add	s3, a0, s3
.LBB13_39:                              #   in Loop: Header=BB13_28 Depth=1
	sext.w	s3, s3
	ld	t3, 112(sp)                     # 8-byte Folded Reload
	mv	a0, t3
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	blt	s3, a1, .LBB13_26
# %bb.40:                               #   in Loop: Header=BB13_28 Depth=1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	mv	s3, a1
	j	.LBB13_26
.LBB13_41:
	mv	a5, t2
	mv	a3, t3
	j	.LBB13_64
.LBB13_42:
	li	a5, 1
	li	n4, 0
	ld	t0, 48(sp)                      # 8-byte Folded Reload
	bne	t0, a5, .LBB13_4
# %bb.43:
	bnez	a1, .LBB13_4
# %bb.44:
	lw	a5, 24(t6)
	li	t0, 1
	beq	a5, t0, .LBB13_4
# %bb.45:
	lhu	a5, 0(n3)
	bnez	a5, .LBB13_3
# %bb.46:
	lhu	a5, 0(n2)
	bnez	a5, .LBB13_3
# %bb.47:
	lw	a5, 24(n1)
	snez	n4, a5
	j	.LBB13_4
.LBB13_48:
	lhu	s0, 0(n3)
	j	.LBB13_62
.LBB13_49:
	lui	a0, %hi(spiral_hpel_search_x)
	ld	a1, %lo(spiral_hpel_search_x)(a0)
	lh	s9, 0(n2)
	lui	a0, %hi(spiral_hpel_search_y)
	ld	a0, %lo(spiral_hpel_search_y)(a0)
	lui	a3, %hi(mvbits)
	ld	t6, %lo(mvbits)(a3)
	snez	s8, a2
	slli	a2, n5, 32
	srli	s2, a2, 32
	beqz	s10, .LBB13_57
# %bb.50:                               # %.preheader5
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	sd	n4, 56(sp)                      # 8-byte Folded Spill
	sd	zero, 104(sp)                   # 8-byte Folded Spill
	slli	s11, s8, 1
	add	s10, a0, s11
	add	s11, a1, s11
	sd	t6, 248(sp)                     # 8-byte Folded Spill
	j	.LBB13_53
.LBB13_51:                              #   in Loop: Header=BB13_53 Depth=1
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	mv	t1, a0
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	ld	t6, 248(sp)                     # 8-byte Folded Reload
.LBB13_52:                              #   in Loop: Header=BB13_53 Depth=1
	addi	s8, s8, 1
	addi	s1, s1, 1
	addi	s10, s10, 2
	addi	s11, s11, 2
	beq	s2, s8, .LBB13_61
.LBB13_53:                              # =>This Inner Loop Header: Depth=1
	lh	a0, 0(s11)
	lh	a1, 0(s10)
	add	a0, a0, s7
	add	a1, a1, s9
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, t6, a0
	lw	a0, 0(a0)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, t6, a1
	lw	a1, 0(a1)
	add	a0, a1, a0
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a0, a0, 16
	seqz	a1, s8
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	and	a1, a2, a1
	neg	a1, a1
	and	a1, a1, a5
	sub	s0, a0, a1
	bge	s0, t1, .LBB13_56
# %bb.54:                               #   in Loop: Header=BB13_53 Depth=1
	addi	a0, sp, 328
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	mv	s3, t1
	call	find_SATD
	addw	a0, a0, s0
	mv	a1, s1
	blt	a0, s3, .LBB13_51
# %bb.55:                               #   in Loop: Header=BB13_53 Depth=1
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	mv	a0, s3
	j	.LBB13_51
.LBB13_56:                              #   in Loop: Header=BB13_53 Depth=1
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	j	.LBB13_52
.LBB13_57:                              # %.preheader7
	li	a2, 0
	slli	a3, s8, 1
	add	a0, a0, a3
	add	a1, a1, a3
	j	.LBB13_59
.LBB13_58:                              #   in Loop: Header=BB13_59 Depth=1
	addi	s8, s8, 1
	addi	s1, s1, 1
	addi	a0, a0, 2
	addi	a1, a1, 2
	mv	a2, t2
	beq	s2, s8, .LBB13_62
.LBB13_59:                              # =>This Inner Loop Header: Depth=1
	lh	a3, 0(a1)
	lh	a4, 0(a0)
	add	a3, a3, s7
	add	a4, a4, s9
	subw	a3, a3, a6
	slli	a3, a3, 2
	add	a3, t6, a3
	lw	a3, 0(a3)
	subw	a4, a4, a7
	slli	a4, a4, 2
	add	a4, t6, a4
	lw	a4, 0(a4)
	add	a3, a4, a3
	mul	a3, a3, t0
	sraiw	a3, a3, 16
	seqz	a4, s8
	and	a4, n4, a4
	neg	a4, a4
	and	a4, a4, a5
	sub	a4, a3, a4
	sext.w	a3, t1
	mv	t1, a4
	mv	t2, s1
	blt	a4, a3, .LBB13_58
# %bb.60:                               #   in Loop: Header=BB13_59 Depth=1
	mv	t1, a3
	mv	t2, a2
	j	.LBB13_58
.LBB13_61:
	ld	a7, 168(sp)                     # 8-byte Folded Reload
	ld	a6, 160(sp)                     # 8-byte Folded Reload
	ld	n2, 128(sp)                     # 8-byte Folded Reload
	ld	n3, 120(sp)                     # 8-byte Folded Reload
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	ld	t2, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
.LBB13_62:
	sext.w	a0, t2
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB13_64
# %bb.63:
	lui	a1, %hi(spiral_hpel_search_x)
	ld	a1, %lo(spiral_hpel_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lui	a2, %hi(spiral_hpel_search_y)
	ld	a2, %lo(spiral_hpel_search_y)(a2)
	add	a1, s0, a1
	sh	a1, 0(n3)
	add	a0, a2, a0
	lh	a0, 0(a0)
	lh	a1, 0(n2)
	add	a0, a1, a0
	sh	a0, 0(n2)
	lhu	s0, 0(n3)
.LBB13_64:
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	lw	a0, 24(a2)
	li	a1, 2
	bne	a0, a1, .LBB13_66
# %bb.65:
	lui	a1, 524288
	addi	t1, a1, -1
.LBB13_66:
	ld	a1, 1480(sp)
	snez	t2, a3
	slli	a3, s0, 48
	srai	a3, a3, 48
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	addi	a2, a2, 2047
	blez	a3, .LBB13_71
# %bb.67:
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	addiw	a4, a4, 32
	bge	a3, a4, .LBB13_71
# %bb.68:
	lh	a3, 0(n2)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	blez	a3, .LBB13_71
# %bb.69:
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	addiw	a4, a4, 32
	bge	a3, a4, .LBB13_71
# %bb.70:
	lui	a3, %hi(FastLine4X)
	addi	a3, a3, %lo(FastLine4X)
	lw	a2, 1845(a2)
	lui	s2, %hi(get_line)
	sd	a3, %lo(get_line)(s2)
	blt	t2, a1, .LBB13_72
	j	.LBB13_90
.LBB13_71:
	lui	a3, %hi(UMVLine4X)
	addi	a3, a3, %lo(UMVLine4X)
	lw	a2, 1845(a2)
	lui	s2, %hi(get_line)
	sd	a3, %lo(get_line)(s2)
	bge	t2, a1, .LBB13_90
.LBB13_72:
	li	t3, 0
	snez	a2, a2
	snez	a0, a0
	and	a0, a0, a5
	and	a0, a2, a0
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	slti	a0, a0, 1
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	slti	a2, a2, 1
	slli	a1, a1, 32
	srli	a5, a1, 32
	or	a0, a0, a2
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lui	t4, %hi(spiral_search_x)
	lui	t5, %hi(spiral_search_y)
	lui	t6, %hi(mvbits)
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	j	.LBB13_75
.LBB13_73:                              #   in Loop: Header=BB13_75 Depth=1
	mv	t3, a0
	mv	t1, s3
	ld	a7, 168(sp)                     # 8-byte Folded Reload
	ld	a6, 160(sp)                     # 8-byte Folded Reload
	ld	n2, 128(sp)                     # 8-byte Folded Reload
	ld	n3, 120(sp)                     # 8-byte Folded Reload
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	ld	a5, 72(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(spiral_search_x)
	lui	t5, %hi(spiral_search_y)
	lui	t6, %hi(mvbits)
.LBB13_74:                              #   in Loop: Header=BB13_75 Depth=1
	addi	t2, t2, 1
	beq	t2, a5, .LBB13_88
.LBB13_75:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_81 Depth 2
                                        #       Child Loop BB13_84 Depth 3
	ld	a0, %lo(spiral_search_x)(t4)
	lh	a1, 0(n3)
	slli	a2, t2, 1
	ld	a3, %lo(spiral_search_y)(t5)
	add	a0, a0, a2
	lh	a0, 0(a0)
	lh	a4, 0(n2)
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
	sraiw	s3, a2, 16
	sext.w	a2, t1
	bge	s3, a2, .LBB13_74
# %bb.76:                               #   in Loop: Header=BB13_75 Depth=1
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	sd	t3, 112(sp)                     # 8-byte Folded Spill
	sd	t2, 136(sp)                     # 8-byte Folded Spill
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	beqz	a2, .LBB13_79
.LBB13_77:                              #   in Loop: Header=BB13_75 Depth=1
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB13_86
# %bb.78:                               #   in Loop: Header=BB13_75 Depth=1
	addi	a0, sp, 328
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s3, a0, s3
	j	.LBB13_86
.LBB13_79:                              # %.preheader
                                        #   in Loop: Header=BB13_75 Depth=1
	li	a3, 0
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	s11, a0, a2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	j	.LBB13_81
.LBB13_80:                              #   in Loop: Header=BB13_81 Depth=2
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	bge	a0, a1, .LBB13_77
.LBB13_81:                              #   Parent Loop BB13_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_84 Depth 3
	li	s1, 0
	li	s0, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s7, a2, a0
	addiw	a0, s7, 4
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 8
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 12
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	sd	a3, 192(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	andi	a0, a0, 32
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	li	s10, 6
	j	.LBB13_84
.LBB13_82:                              #   in Loop: Header=BB13_84 Depth=3
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
.LBB13_83:                              #   in Loop: Header=BB13_84 Depth=3
	addi	s0, s0, 4
	addiw	s1, s1, 4
	addi	s10, s10, 8
	addiw	s11, s11, 16
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bge	s1, a0, .LBB13_80
.LBB13_84:                              #   Parent Loop BB13_75 Depth=1
                                        #     Parent Loop BB13_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s8)
	ld	a5, %lo(get_line)(s2)
	add	s9, a0, s10
	mv	a0, s4
	mv	a1, s7
	mv	a2, s11
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
	sw	a1, 264(sp)
	subw	a2, a2, a3
	sw	a2, 268(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 272(sp)
	ld	a2, 8(s8)
	ld	a5, %lo(get_line)(s2)
	subw	a1, a1, a0
	sw	a1, 276(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	mv	a2, s11
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
	ld	a2, 16(s8)
	ld	a5, %lo(get_line)(s2)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	mv	a2, s11
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
	ld	a2, 24(s8)
	ld	a5, %lo(get_line)(s2)
	subw	a1, a1, a0
	sw	a1, 308(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	lhu	a3, -4(s9)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 312(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s9)
	lhu	a2, 16(a0)
	lhu	a4, 0(s9)
	lhu	a0, 24(a0)
	sw	a3, 316(sp)
	subw	a1, a1, a2
	sw	a1, 320(sp)
	subw	a4, a4, a0
	sw	a4, 324(sp)
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB13_82
# %bb.85:                               #   in Loop: Header=BB13_84 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 264
	call	SATD
	addw	s3, a0, s3
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bge	a0, s3, .LBB13_83
.LBB13_86:                              #   in Loop: Header=BB13_75 Depth=1
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	mv	a0, t2
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	blt	s3, a1, .LBB13_73
# %bb.87:                               #   in Loop: Header=BB13_75 Depth=1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mv	s3, a1
	j	.LBB13_73
.LBB13_88:
	sext.w	a0, t3
	beqz	a0, .LBB13_90
# %bb.89:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lh	a2, 0(n3)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(n3)
	add	a0, a3, a0
	lh	a0, 0(a0)
	lh	a1, 0(n2)
	add	a0, a1, a0
	sh	a0, 0(n2)
.LBB13_90:
	sext.w	a0, t1
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
	sd	a7, 200(sp)                     # 8-byte Folded Spill
	sd	a6, 192(sp)                     # 8-byte Folded Spill
	mv	n1, a5
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	a5, 64
	sd	a5, 168(sp)                     # 8-byte Folded Spill
	beq	n1, a0, .LBB14_2
# %bb.1:
	li	a0, 128
	sd	a0, 168(sp)                     # 8-byte Folded Spill
.LBB14_2:
	lui	a0, %hi(input)
	ld	a6, %lo(input)(a0)
	ld	n2, 1488(sp)
	ld	a0, 1480(sp)
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	ld	t6, 1472(sp)
	addi	a0, a6, 2047
	lw	a5, 1089(a0)
	lui	a7, %hi(img)
	ld	a7, %lo(img)(a7)
	beqz	a5, .LBB14_74
.LBB14_3:
	li	n3, 0
.LBB14_4:
	lw	a5, 24(a6)
	slli	t0, n1, 3
	mv	t1, n2
	bgtz	n2, .LBB14_6
# %bb.5:
	li	t1, 1
.LBB14_6:
	add	t0, a6, t0
	beqz	a5, .LBB14_8
# %bb.7:
	mv	n2, t1
.LBB14_8:
	lw	t1, 88(t0)
	sd	t1, 136(sp)                     # 8-byte Folded Spill
	lui	t1, 8
	add	t1, a7, t1
	ld	t1, -1192(t1)
	lw	t2, 12(a7)
	lui	t3, %hi(active_pps)
	ld	t3, %lo(active_pps)(t3)
	li	t4, 528
	mul	t2, t2, t4
	add	t1, t1, t2
	lw	t2, 192(t3)
	lw	t1, 428(t1)
	slli	a3, a3, 2
	beqz	t2, .LBB14_11
# %bb.9:
	lw	t4, 24(a7)
	li	t2, 1
	beqz	t4, .LBB14_13
# %bb.10:
	li	t5, 3
	beq	t4, t5, .LBB14_13
.LBB14_11:
	lw	t2, 196(t3)
	beqz	t2, .LBB14_13
# %bb.12:
	lw	a7, 24(a7)
	addi	a7, a7, -1
	seqz	t2, a7
.LBB14_13:
	slli	a4, a4, 2
	addw	a2, t1, a2
	slli	a2, a2, 3
	lui	a7, %hi(listX)
	addi	a7, a7, %lo(listX)
	add	a2, a7, a2
	ld	a7, 0(a2)
	addi	a2, a5, -1
	lw	t0, 84(t0)
	sd	t0, 272(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a7, a1
	ld	a1, 0(a1)
	addi	a3, a3, 16
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	lui	a7, 2
	addiw	a3, a7, -1800
	add	a3, a1, a3
	beqz	t2, .LBB14_16
# %bb.14:
	lw	a6, 1912(a6)
	beqz	a6, .LBB14_16
# %bb.15:
	addiw	a6, a7, -1736
	j	.LBB14_17
.LBB14_16:
	addiw	a6, a7, -1744
.LBB14_17:
	addi	a4, a4, 16
	sd	a4, 88(sp)                      # 8-byte Folded Spill
	lw	a4, 0(a3)
	lw	a3, 4(a3)
	snez	t2, a2
	add	a1, a1, a6
	slli	s5, a4, 2
	slli	s6, a3, 2
	lh	a2, 0(t6)
	ld	a6, 272(sp)                     # 8-byte Folded Reload
	subw	a4, a4, a6
	slli	t0, a4, 2
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	subw	a4, a3, a4
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	addw	a3, a3, a2
	li	a6, 2
	slli	a7, a4, 2
	blt	a3, a6, .LBB14_22
# %bb.18:
	addiw	a4, t0, 31
	bge	a3, a4, .LBB14_22
# %bb.19:
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	lh	a3, 0(a3)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	li	a4, 2
	blt	a3, a4, .LBB14_22
# %bb.20:
	addiw	a4, a7, 31
	bge	a3, a4, .LBB14_22
# %bb.21:
	lui	a3, %hi(FastLine4X)
	addi	a3, a3, %lo(FastLine4X)
	j	.LBB14_23
.LBB14_22:
	lui	a3, %hi(UMVLine4X)
	addi	a3, a3, %lo(UMVLine4X)
.LBB14_23:
	addi	a6, a5, -2
	lw	a0, 1845(a0)
	slti	t1, n1, 5
	ld	s10, 1512(sp)
	lw	s7, 1504(sp)
	ld	s4, 0(a1)
	addiw	s5, s5, 28
	addiw	s6, s6, 28
	lui	s11, %hi(get_line)
	sd	a3, %lo(get_line)(s11)
	sd	t6, 152(sp)                     # 8-byte Folded Spill
	sd	s10, 176(sp)                    # 8-byte Folded Spill
	sd	n1, 40(sp)                      # 8-byte Folded Spill
	bge	t2, n2, .LBB14_44
# %bb.24:
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	sd	a7, 24(sp)                      # 8-byte Folded Spill
	li	a7, 0
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	seqz	a1, a6
	addi	a1, a1, -1
	and	a1, a1, a5
	snez	a0, a0
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	snez	a1, a1
	sd	t1, 8(sp)                       # 8-byte Folded Spill
	and	a0, a0, t1
	and	a0, a0, a1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	srai	a5, s10, 12
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	slti	a0, a0, 1
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	slti	a1, a1, 1
	slli	a2, n1, 1
	lui	a3, %hi(block_type_shift_factor)
	addi	a3, a3, %lo(block_type_shift_factor)
	add	a2, a3, a2
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	or	a0, a0, a1
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a6, %hi(spiral_hpel_search_x)
	lui	t0, %hi(spiral_hpel_search_y)
	lui	t1, %hi(mvbits)
	sd	n2, 80(sp)                      # 8-byte Folded Spill
	sd	n3, 72(sp)                      # 8-byte Folded Spill
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	j	.LBB14_27
.LBB14_25:                              #   in Loop: Header=BB14_27 Depth=1
	mv	a0, a7
	mv	s3, s7
.LBB14_26:                              #   in Loop: Header=BB14_27 Depth=1
	addi	t2, t2, 1
	beq	t2, n2, .LBB14_41
.LBB14_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_33 Depth 2
                                        #       Child Loop BB14_36 Depth 3
	ld	a0, %lo(spiral_hpel_search_x)(a6)
	lh	a1, 0(t6)
	slli	a2, t2, 1
	ld	a3, %lo(spiral_hpel_search_y)(t0)
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	lh	a4, 0(a4)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t1)
	add	a1, a2, a4
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	subw	a2, a0, a2
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	subw	a4, a1, a4
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	mul	a2, a2, a3
	sraiw	a2, a2, 16
	seqz	a3, t2
	and	a3, n3, a3
	neg	a3, a3
	and	a3, a3, a5
	sub	s3, a2, a3
	bge	s3, s7, .LBB14_25
# %bb.28:                               #   in Loop: Header=BB14_27 Depth=1
	sd	a7, 120(sp)                     # 8-byte Folded Spill
	sd	t2, 128(sp)                     # 8-byte Folded Spill
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	beqz	a2, .LBB14_31
.LBB14_29:                              #   in Loop: Header=BB14_27 Depth=1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB14_38
# %bb.30:                               #   in Loop: Header=BB14_27 Depth=1
	addi	a0, sp, 344
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	call	find_SATD
	add	s3, a0, s3
	j	.LBB14_38
.LBB14_31:                              # %.preheader13
                                        #   in Loop: Header=BB14_27 Depth=1
	li	a3, 0
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	addw	s2, a0, a2
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	j	.LBB14_33
.LBB14_32:                              #   in Loop: Header=BB14_33 Depth=2
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB14_29
.LBB14_33:                              #   Parent Loop BB14_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_36 Depth 3
	li	s0, 0
	li	s1, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s7, a2, a0
	addiw	a0, s7, 4
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 8
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 12
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	andi	a0, a0, 32
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	li	s10, 6
	j	.LBB14_36
.LBB14_34:                              #   in Loop: Header=BB14_36 Depth=3
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
.LBB14_35:                              #   in Loop: Header=BB14_36 Depth=3
	addi	s1, s1, 4
	addiw	s0, s0, 4
	addi	s10, s10, 8
	addiw	s2, s2, 16
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	bge	s0, a0, .LBB14_32
.LBB14_36:                              #   Parent Loop BB14_27 Depth=1
                                        #     Parent Loop BB14_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s8)
	ld	a5, %lo(get_line)(s11)
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
	ld	a5, %lo(get_line)(s11)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 264(sp)                     # 8-byte Folded Reload
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
	ld	a5, %lo(get_line)(s11)
	subw	a1, a1, a0
	sw	a1, 308(sp)
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
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 24(s8)
	ld	a5, %lo(get_line)(s11)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 248(sp)                     # 8-byte Folded Reload
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
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB14_34
# %bb.37:                               #   in Loop: Header=BB14_36 Depth=3
	lw	a1, 208(sp)                     # 8-byte Folded Reload
	addi	a0, sp, 280
	call	SATD
	addw	s3, a0, s3
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	blt	s3, a0, .LBB14_35
.LBB14_38:                              #   in Loop: Header=BB14_27 Depth=1
	sext.w	s3, s3
	ld	t2, 128(sp)                     # 8-byte Folded Reload
	mv	a0, t2
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	blt	s3, a1, .LBB14_40
# %bb.39:                               #   in Loop: Header=BB14_27 Depth=1
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	mv	s3, a1
.LBB14_40:                              #   in Loop: Header=BB14_27 Depth=1
	lui	a1, %hi(SubPelThreshold3)
	lhu	a1, %lo(SubPelThreshold3)(a1)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	lhu	a2, 0(a2)
	srlw	a1, a1, a2
	mv	a7, a0
	mv	s7, s3
	ld	t6, 152(sp)                     # 8-byte Folded Reload
	ld	n2, 80(sp)                      # 8-byte Folded Reload
	ld	n3, 72(sp)                      # 8-byte Folded Reload
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	lui	a6, %hi(spiral_hpel_search_x)
	lui	t0, %hi(spiral_hpel_search_y)
	lui	t1, %hi(mvbits)
	bge	s3, a1, .LBB14_26
.LBB14_41:
	lhu	a1, 0(t6)
	sext.w	a0, a0
	beqz	a0, .LBB14_43
# %bb.42:
	lui	a2, %hi(spiral_hpel_search_x)
	ld	a2, %lo(spiral_hpel_search_x)(a2)
	slli	a0, a0, 1
	add	a2, a2, a0
	lh	a2, 0(a2)
	lui	a3, %hi(spiral_hpel_search_y)
	ld	a3, %lo(spiral_hpel_search_y)(a3)
	add	a1, a1, a2
	sh	a1, 0(t6)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
	lhu	a1, 0(t6)
.LBB14_43:
	mv	s7, s3
	ld	n1, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 176(sp)                    # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 24(sp)                      # 8-byte Folded Reload
	ld	t0, 16(sp)                      # 8-byte Folded Reload
	ld	t1, 8(sp)                       # 8-byte Folded Reload
	bnez	a1, .LBB14_48
	j	.LBB14_45
.LBB14_44:
	slli	a1, a2, 48
	srli	a1, a1, 48
	bnez	a1, .LBB14_48
.LBB14_45:
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	bnez	a0, .LBB14_48
# %bb.46:
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	lhu	a0, 0(a0)
	bnez	a0, .LBB14_48
# %bb.47:
	lui	a0, %hi(SubPelThreshold1)
	lhu	a0, %lo(SubPelThreshold1)(a0)
	slli	a2, n1, 1
	lui	a3, %hi(block_type_shift_factor)
	addi	a3, a3, %lo(block_type_shift_factor)
	add	a2, a3, a2
	lhu	a2, 0(a2)
	srlw	a0, a0, a2
	blt	s7, a0, .LBB14_95
.LBB14_48:
	lui	a0, %hi(input)
	ld	a3, %lo(input)(a0)
	lw	a2, 24(a3)
	li	a0, 2
	bne	a2, a0, .LBB14_50
# %bb.49:
	lui	a0, 524288
	addiw	s7, a0, -1
.LBB14_50:
	ld	a0, 1496(sp)
	snez	s0, a6
	slli	a1, a1, 48
	srai	s1, a1, 48
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	addw	a4, a4, s1
	addi	a1, a3, 2047
	blez	a4, .LBB14_55
# %bb.51:
	addiw	a3, t0, 32
	bge	a4, a3, .LBB14_55
# %bb.52:
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	lh	a3, 0(a3)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	blez	a3, .LBB14_55
# %bb.53:
	addiw	a4, a7, 32
	bge	a3, a4, .LBB14_55
# %bb.54:
	lui	a3, %hi(FastLine4X)
	addi	a3, a3, %lo(FastLine4X)
	lw	a1, 1845(a1)
	lui	a4, %hi(get_line)
	sd	a3, %lo(get_line)(a4)
	blt	s0, a0, .LBB14_56
	j	.LBB14_95
.LBB14_55:
	lui	a3, %hi(UMVLine4X)
	addi	a3, a3, %lo(UMVLine4X)
	lw	a1, 1845(a1)
	lui	a4, %hi(get_line)
	sd	a3, %lo(get_line)(a4)
	bge	s0, a0, .LBB14_95
.LBB14_56:
	snez	a1, a1
	snez	a2, a2
	and	a2, a2, t1
	and	a1, a1, a2
	slli	a2, n1, 1
	lui	a3, %hi(block_type_shift_factor)
	addi	a3, a3, %lo(block_type_shift_factor)
	add	a2, a3, a2
	sd	a2, 112(sp)                     # 8-byte Folded Spill
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB14_80
# %bb.57:
	li	t1, 0
	snez	a6, a6
	slli	a0, a0, 32
	srli	a7, a0, 32
	lui	t0, %hi(spiral_search_x)
	lui	t2, %hi(spiral_search_y)
	lui	t3, %hi(mvbits)
	lui	s0, %hi(get_line)
	andi	a1, a1, 1
	sd	a1, 240(sp)                     # 8-byte Folded Spill
	mv	a5, s7
	sd	a7, 80(sp)                      # 8-byte Folded Spill
	j	.LBB14_60
.LBB14_58:                              #   in Loop: Header=BB14_60 Depth=1
	mv	a0, t1
	mv	s7, a5
.LBB14_59:                              #   in Loop: Header=BB14_60 Depth=1
	addi	a6, a6, 1
	beq	a6, a7, .LBB14_93
.LBB14_60:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_64 Depth 2
                                        #       Child Loop BB14_67 Depth 3
	ld	a0, %lo(spiral_search_x)(t0)
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a1)
	slli	a2, a6, 1
	ld	a3, %lo(spiral_search_y)(t2)
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	lh	a4, 0(a4)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t3)
	add	a1, a2, a4
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	subw	a2, a0, a2
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	subw	a4, a1, a4
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	mul	a2, a2, s10
	sraiw	s7, a2, 16
	bge	s7, a5, .LBB14_58
# %bb.61:                               #   in Loop: Header=BB14_60 Depth=1
	sd	t1, 104(sp)                     # 8-byte Folded Spill
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	sd	a5, 232(sp)                     # 8-byte Folded Spill
	blez	a2, .LBB14_69
# %bb.62:                               # %.preheader
                                        #   in Loop: Header=BB14_60 Depth=1
	li	a3, 0
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	addw	s2, a0, a2
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	a2, 120(sp)                     # 8-byte Folded Spill
	j	.LBB14_64
.LBB14_63:                              #   in Loop: Header=BB14_64 Depth=2
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB14_69
.LBB14_64:                              #   Parent Loop BB14_60 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_67 Depth 3
	li	s3, 0
	li	s1, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s8, a2, a0
	addiw	a0, s8, 4
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	sd	a3, 208(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	li	s11, 6
	j	.LBB14_67
.LBB14_65:                              #   in Loop: Header=BB14_67 Depth=3
	andi	a0, s3, 4
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
.LBB14_66:                              #   in Loop: Header=BB14_67 Depth=3
	addi	s1, s1, 4
	addiw	s3, s3, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	bge	s3, a0, .LBB14_63
.LBB14_67:                              #   Parent Loop BB14_60 Depth=1
                                        #     Parent Loop BB14_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s9)
	ld	a5, %lo(get_line)(s0)
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
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 292(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 264(sp)                     # 8-byte Folded Reload
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
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 308(sp)
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
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 24(s9)
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 248(sp)                     # 8-byte Folded Reload
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
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB14_65
# %bb.68:                               #   in Loop: Header=BB14_67 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 280
	call	SATD
	addw	s7, a0, s7
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	blt	s7, a0, .LBB14_66
	j	.LBB14_71
.LBB14_69:                              #   in Loop: Header=BB14_60 Depth=1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB14_71
# %bb.70:                               #   in Loop: Header=BB14_60 Depth=1
	addi	a0, sp, 344
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s7, a0, s7
.LBB14_71:                              #   in Loop: Header=BB14_60 Depth=1
	ld	a6, 144(sp)                     # 8-byte Folded Reload
	mv	a0, a6
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	blt	s7, a1, .LBB14_73
# %bb.72:                               #   in Loop: Header=BB14_60 Depth=1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	mv	s7, a1
.LBB14_73:                              #   in Loop: Header=BB14_60 Depth=1
	lui	a1, %hi(SubPelThreshold3)
	lhu	a1, %lo(SubPelThreshold3)(a1)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	lhu	a2, 0(a2)
	srlw	a1, a1, a2
	mv	t1, a0
	mv	a5, s7
	ld	s10, 176(sp)                    # 8-byte Folded Reload
	ld	a7, 80(sp)                      # 8-byte Folded Reload
	lui	t0, %hi(spiral_search_x)
	lui	t2, %hi(spiral_search_y)
	lui	t3, %hi(mvbits)
	bge	s7, a1, .LBB14_59
	j	.LBB14_93
.LBB14_74:
	li	a5, 1
	li	n3, 0
	bne	n1, a5, .LBB14_4
# %bb.75:
	bnez	a1, .LBB14_4
# %bb.76:
	lw	a5, 24(a7)
	li	t0, 1
	beq	a5, t0, .LBB14_4
# %bb.77:
	lhu	a5, 0(t6)
	bnez	a5, .LBB14_3
# %bb.78:
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	lhu	a5, 0(a5)
	bnez	a5, .LBB14_3
# %bb.79:
	lw	a5, 24(a6)
	snez	n3, a5
	j	.LBB14_4
.LBB14_80:
	snez	a2, a6
	lui	a3, %hi(spiral_search_x)
	ld	a3, %lo(spiral_search_x)(a3)
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	lh	s2, 0(a4)
	lui	a4, %hi(spiral_search_y)
	ld	s6, %lo(spiral_search_y)(a4)
	lui	a4, %hi(mvbits)
	ld	s3, %lo(mvbits)(a4)
	lui	a4, %hi(SubPelThreshold3)
	lhu	s4, %lo(SubPelThreshold3)(a4)
	slli	a0, a0, 32
	andi	a4, a1, 1
	srli	a1, a0, 32
	mv	a5, s7
	beqz	a4, .LBB14_88
# %bb.81:                               # %.preheader4
	li	s9, 0
	sub	s5, a1, a2
	slli	a2, a2, 1
	add	s6, s6, a2
	add	s8, a3, a2
	j	.LBB14_84
.LBB14_82:                              #   in Loop: Header=BB14_84 Depth=1
	mv	a0, s9
	mv	s7, a5
.LBB14_83:                              #   in Loop: Header=BB14_84 Depth=1
	addi	s5, s5, -1
	addi	s0, s0, 1
	addi	s6, s6, 2
	addi	s8, s8, 2
	beqz	s5, .LBB14_93
.LBB14_84:                              # =>This Inner Loop Header: Depth=1
	lh	a0, 0(s8)
	lh	a1, 0(s6)
	add	a0, a0, s1
	add	a1, a1, s2
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	subw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, s3, a0
	lw	a0, 0(a0)
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, s3, a1
	lw	a1, 0(a1)
	add	a0, a1, a0
	mul	a0, a0, s10
	sraiw	s7, a0, 16
	bge	s7, a5, .LBB14_82
# %bb.85:                               #   in Loop: Header=BB14_84 Depth=1
	addi	a0, sp, 344
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mv	s11, a5
	call	find_SATD
	addw	s7, a0, s7
	mv	a0, s0
	blt	s7, s11, .LBB14_87
# %bb.86:                               #   in Loop: Header=BB14_84 Depth=1
	mv	a0, s9
	mv	s7, s11
.LBB14_87:                              #   in Loop: Header=BB14_84 Depth=1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	lhu	a1, 0(a1)
	srlw	a1, s4, a1
	mv	s9, a0
	mv	a5, s7
	bge	s7, a1, .LBB14_83
	j	.LBB14_93
.LBB14_88:                              # %.preheader8
	li	a0, 0
	sub	a1, a1, a2
	slli	a4, a2, 1
	add	a2, s6, a4
	add	a3, a3, a4
	mv	s7, a5
	j	.LBB14_90
.LBB14_89:                              #   in Loop: Header=BB14_90 Depth=1
	addi	a1, a1, -1
	addi	s0, s0, 1
	addi	a2, a2, 2
	addi	a3, a3, 2
	beqz	a1, .LBB14_93
.LBB14_90:                              # =>This Inner Loop Header: Depth=1
	lh	a4, 0(a3)
	lh	a5, 0(a2)
	add	a4, a4, s1
	add	a5, a5, s2
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	subw	a4, a4, a6
	slli	a4, a4, 2
	add	a4, s3, a4
	lw	a4, 0(a4)
	ld	a6, 200(sp)                     # 8-byte Folded Reload
	subw	a5, a5, a6
	slli	a5, a5, 2
	add	a5, s3, a5
	lw	a5, 0(a5)
	add	a4, a5, a4
	mul	a4, a4, s10
	sraiw	a4, a4, 16
	bge	a4, s7, .LBB14_89
# %bb.91:                               #   in Loop: Header=BB14_90 Depth=1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	lhu	a0, 0(a0)
	srlw	a5, s4, a0
	mv	a0, s0
	mv	s7, a4
	bge	a4, a5, .LBB14_89
# %bb.92:
	mv	a0, s0
	mv	s7, a4
.LBB14_93:
	sext.w	a0, a0
	beqz	a0, .LBB14_95
# %bb.94:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a4)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(a4)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB14_95:
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
	li	t2, 528
	mul	t0, t0, t2
	add	t0, t1, t0
	lw	n1, 428(t0)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	n6, 328(sp)
	ld	n7, 320(sp)
	addw	a0, n1, a2
	slli	a0, a0, 3
	lui	t2, %hi(listX)
	addi	t2, t2, %lo(listX)
	add	a0, t2, a0
	ld	t0, 0(a0)
	ld	t4, 344(sp)
	ld	a0, 336(sp)
	slli	t1, a1, 3
	add	t0, t0, t1
	ld	t6, 0(t0)
	lui	t0, 2
	addiw	n2, n1, 1
	addiw	n3, t0, -1800
	mv	t3, n2
	beqz	a2, .LBB15_2
# %bb.1:
	mv	t3, n1
.LBB15_2:
	ld	a1, 352(sp)
	slli	t3, t3, 3
	lui	t5, %hi(input)
	ld	t5, %lo(input)(t5)
	add	t2, t2, t3
	ld	t2, 0(t2)
	slli	a5, a5, 3
	add	a5, t5, a5
	lw	t3, 88(a5)
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	lw	s0, 84(a5)
	lui	a5, %hi(active_pps)
	ld	a5, %lo(active_pps)(a5)
	lh	n4, 0(n7)
	lh	n5, 0(n6)
	lh	t3, 0(a0)
	lw	a0, 196(a5)
	lh	t5, 0(t4)
	add	a5, t6, n3
	add	t6, n4, a3
	add	t4, n5, a4
	sd	n6, 16(sp)                      # 8-byte Folded Spill
	sd	n7, 8(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB15_5
# %bb.3:
	lui	n3, %hi(wbp_weight)
	ld	n4, %lo(wbp_weight)(n3)
	lui	n3, %hi(wp_offset)
	ld	n3, %lo(wp_offset)(n3)
	slli	n2, n2, 3
	beqz	a2, .LBB15_6
# %bb.4:
	add	a2, n4, n2
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	slli	n1, n1, 3
	add	n4, n4, n1
	ld	n4, 0(n4)
	add	a2, a2, t1
	ld	a2, 0(a2)
	ld	n4, 0(n4)
	add	n2, n3, n2
	ld	n2, 0(n2)
	add	n1, n3, n1
	ld	n1, 0(n1)
	add	t1, n4, t1
	ld	t1, 0(t1)
	ld	n2, 0(n2)
	ld	n1, 0(n1)
	lw	s9, 0(a2)
	lw	s1, 0(t1)
	lw	a2, 0(n2)
	lw	t1, 0(n1)
	j	.LBB15_7
.LBB15_5:
	lui	a2, %hi(luma_log_weight_denom)
	lwu	a2, %lo(luma_log_weight_denom)(a2)
	li	t1, 1
	sllw	s9, t1, a2
	li	a2, 0
	li	t1, 0
	mv	s1, s9
	j	.LBB15_7
.LBB15_6:
	slli	n1, n1, 3
	add	a2, n4, n1
	ld	a2, 0(a2)
	add	a2, a2, t1
	ld	a2, 0(a2)
	add	n4, n4, n2
	ld	n4, 0(n4)
	ld	a2, 0(a2)
	add	n4, n4, t1
	ld	n4, 0(n4)
	add	n1, n3, n1
	ld	n1, 0(n1)
	add	n2, n3, n2
	ld	n2, 0(n2)
	ld	n3, 0(n4)
	add	n1, n1, t1
	ld	n1, 0(n1)
	add	t1, n2, t1
	ld	t1, 0(t1)
	lw	s9, 0(a2)
	lw	s1, 0(n3)
	lw	a2, 0(n1)
	lw	t1, 0(t1)
.LBB15_7:
	ld	n3, 0(t2)
	slli	n4, a1, 1
	slli	t2, a3, 2
	slli	n1, a4, 2
	lw	s2, 0(a5)
	lw	s3, 4(a5)
	add	n5, t3, a3
	add	n2, t5, a4
	slli	t6, t6, 48
	srai	n6, t6, 48
	slli	t4, t4, 48
	bge	a1, n6, .LBB15_12
# %bb.8:
	not	a3, a1
	subw	a4, a3, s0
	addw	a4, s2, a4
	bge	n6, a4, .LBB15_12
# %bb.9:
	srai	a4, t4, 48
	bge	a1, a4, .LBB15_12
# %bb.10:
	add	a3, s3, a3
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	subw	a3, a3, t3
	bge	a4, a3, .LBB15_12
# %bb.11:
	lui	n7, %hi(FastLineX)
	addi	n7, n7, %lo(FastLineX)
	j	.LBB15_13
.LBB15_12:
	lui	n7, %hi(UMVLineX)
	addi	n7, n7, %lo(UMVLineX)
.LBB15_13:
	add	a3, n3, t0
	addi	t5, n4, 1
	ld	a4, 304(sp)
	ld	t0, 312(sp)
	negw	t2, t2
	negw	t3, n1
	slli	n5, n5, 48
	srai	n3, n5, 48
	slli	n2, n2, 48
	bge	a1, n3, .LBB15_18
# %bb.14:
	not	t6, a1
	subw	n1, t6, s0
	addw	n1, s2, n1
	bge	n3, n1, .LBB15_18
# %bb.15:
	srai	n1, n2, 48
	bge	a1, n1, .LBB15_18
# %bb.16:
	add	t6, s3, t6
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	subw	a1, t6, a1
	bge	n1, a1, .LBB15_18
# %bb.17:
	lui	a1, %hi(FastLineX)
	addi	a1, a1, %lo(FastLineX)
	j	.LBB15_19
.LBB15_18:
	srai	n1, n2, 48
	lui	a1, %hi(UMVLineX)
	addi	a1, a1, %lo(UMVLineX)
.LBB15_19:
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	ld	t6, 368(sp)
	lw	n2, 360(sp)
	ld	a1, 40(a5)
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	ld	s6, -1760(a3)
	mulw	a1, t5, t5
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	sraiw	s11, s0, 2
	srai	t4, t4, 48
	slli	a1, n3, 2
	subw	a3, t2, a6
	addw	a3, a3, a1
	slli	a1, n1, 2
	subw	a5, t3, a7
	addw	a1, a5, a1
	subw	t2, t2, a4
	subw	t3, t3, t0
	sd	n6, 104(sp)                     # 8-byte Folded Spill
	sd	t6, 96(sp)                      # 8-byte Folded Spill
	sd	t4, 88(sp)                      # 8-byte Folded Spill
	sd	t2, 80(sp)                      # 8-byte Folded Spill
	sd	t3, 72(sp)                      # 8-byte Folded Spill
	sd	n7, 184(sp)                     # 8-byte Folded Spill
	sd	n3, 192(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB15_49
# %bb.20:
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB15_65
# %bb.21:
	sd	n1, 160(sp)                     # 8-byte Folded Spill
	blez	s11, .LBB15_69
# %bb.22:
	li	a5, 0
	li	t0, 0
	slli	t1, t1, 48
	slli	a2, a2, 48
	srai	a0, t1, 48
	srai	a2, a2, 48
	add	a0, a0, a2
	slli	a0, a0, 15
	lui	a2, 8
	add	a0, a0, a2
	mv	a2, s11
	sraiw	s11, a0, 16
	addi	a0, a2, -1
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	a0, a0, 8
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	lui	a6, %hi(spiral_search_x)
	lui	a7, %hi(spiral_search_y)
	lui	t1, %hi(mvbits)
	slli	t5, a3, 2
	slli	n1, a1, 2
	lui	a0, 22
	addiw	a0, a0, 420
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	sd	t5, 48(sp)                      # 8-byte Folded Spill
	sd	n1, 40(sp)                      # 8-byte Folded Spill
	j	.LBB15_25
.LBB15_23:                              #   in Loop: Header=BB15_25 Depth=1
	mv	t0, a0
	mv	n2, s10
	ld	n6, 104(sp)                     # 8-byte Folded Reload
	ld	t6, 96(sp)                      # 8-byte Folded Reload
	ld	t4, 88(sp)                      # 8-byte Folded Reload
	ld	t2, 80(sp)                      # 8-byte Folded Reload
	ld	t3, 72(sp)                      # 8-byte Folded Reload
	lui	a6, %hi(spiral_search_x)
	lui	a7, %hi(spiral_search_y)
	lui	t1, %hi(mvbits)
	ld	t5, 48(sp)                      # 8-byte Folded Reload
	ld	n1, 40(sp)                      # 8-byte Folded Reload
.LBB15_24:                              #   in Loop: Header=BB15_25 Depth=1
	addi	a5, a5, 1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	bgeu	a5, a0, .LBB15_76
.LBB15_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_27 Depth 2
                                        #       Child Loop BB15_30 Depth 3
	ld	a0, %lo(spiral_search_x)(a6)
	ld	a1, %lo(spiral_search_y)(a7)
	slli	a2, a5, 1
	add	a0, a0, a2
	lh	s7, 0(a0)
	add	a1, a1, a2
	lh	s4, 0(a1)
	ld	a0, %lo(mvbits)(t1)
	add	s7, s7, n6
	add	a4, s4, t4
	add	a1, a0, t5
	lw	a1, 0(a1)
	add	a2, a0, n1
	lw	a2, 0(a2)
	slli	a3, s7, 2
	addw	a3, t2, a3
	slli	a3, a3, 2
	add	a3, a0, a3
	sd	a4, 136(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 2
	addw	a4, t3, a4
	slli	a4, a4, 2
	add	a0, a0, a4
	lw	a3, 0(a3)
	lw	a0, 0(a0)
	add	a1, a2, a1
	mul	a1, a1, t6
	sraiw	s10, a1, 16
	add	a0, a0, a3
	mul	a0, a0, t6
	sraiw	a0, a0, 16
	add	s10, a0, s10
	bge	s10, n2, .LBB15_24
# %bb.26:                               # %.preheader4
                                        #   in Loop: Header=BB15_25 Depth=1
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	sd	t0, 64(sp)                      # 8-byte Folded Spill
	li	s5, 0
.LBB15_27:                              #   Parent Loop BB15_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_30 Depth 3
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	addw	a2, a0, s5
	mv	a0, s0
	mv	s4, s6
	mv	a1, s6
	mv	a3, s7
	mv	a4, s3
	mv	a5, s2
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	mv	s6, n2
	jalr	a6
	mv	s8, a0
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addw	a2, a0, s5
	mv	a0, s0
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	mv	a5, s2
	ld	a6, 176(sp)                     # 8-byte Folded Reload
	jalr	a6
	mv	n2, s6
	slli	a1, s5, 3
	ld	a2, 144(sp)                     # 8-byte Folded Reload
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
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	add	a5, a5, a6
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	add	a6, a0, a6
	j	.LBB15_30
.LBB15_28:                              #   in Loop: Header=BB15_30 Depth=3
	li	t2, 0
.LBB15_29:                              #   in Loop: Header=BB15_30 Depth=3
	lhu	t3, 6(a1)
	slli	t2, t2, 48
	srai	t2, t2, 48
	sub	t2, t3, t2
	slli	t2, t2, 2
	add	t2, a3, t2
	lw	t2, 0(t2)
	add	a7, a7, s10
	add	t0, t0, t1
	add	a7, a7, t0
	addw	s10, a7, t2
	addi	a0, a0, 8
	addi	s8, s8, 8
	addi	a1, a1, 8
	beq	a0, a6, .LBB15_45
.LBB15_30:                              #   Parent Loop BB15_25 Depth=1
                                        #     Parent Loop BB15_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lh	a7, 0(a0)
	lh	t0, 0(s8)
	mul	a7, a7, s9
	mul	t0, t0, s1
	slli	a7, a7, 48
	srai	a7, a7, 48
	slli	t0, t0, 48
	srai	t0, t0, 48
	add	a7, t0, a7
	add	a7, a7, a2
	sraw	a7, a7, a4
	addw	a7, a7, s11
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
	lhu	t0, 0(a1)
	slli	a7, a7, 48
	srai	a7, a7, 48
	sub	a7, t0, a7
	slli	a7, a7, 2
	lh	t0, 2(a0)
	lh	t1, 2(s8)
	add	a7, a3, a7
	lw	a7, 0(a7)
	mul	t0, t0, s9
	mul	t1, t1, s1
	slli	t0, t0, 48
	srai	t0, t0, 48
	slli	t1, t1, 48
	srai	t1, t1, 48
	add	t0, a2, t0
	add	t0, t0, t1
	sraw	t0, t0, a4
	addw	t0, t0, s11
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
	lhu	t1, 2(a1)
	slli	t0, t0, 48
	srai	t0, t0, 48
	sub	t0, t1, t0
	slli	t0, t0, 2
	lh	t1, 4(a0)
	lh	t2, 4(s8)
	add	t0, a3, t0
	lw	t0, 0(t0)
	mul	t1, t1, s9
	mul	t2, t2, s1
	slli	t1, t1, 48
	srai	t1, t1, 48
	slli	t2, t2, 48
	srai	t2, t2, 48
	add	t1, a2, t1
	add	t1, t1, t2
	sraw	t1, t1, a4
	addw	t1, t1, s11
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
	lhu	t2, 4(a1)
	slli	t1, t1, 48
	srai	t1, t1, 48
	sub	t1, t2, t1
	slli	t1, t1, 2
	lh	t2, 6(a0)
	lh	t3, 6(s8)
	add	t1, a3, t1
	lw	t1, 0(t1)
	mul	t2, t2, s9
	mul	t3, t3, s1
	slli	t2, t2, 48
	srai	t2, t2, 48
	slli	t3, t3, 48
	srai	t3, t3, 48
	add	t2, a2, t2
	add	t2, t2, t3
	sraw	t2, t2, a4
	addw	t2, t2, s11
	bltz	t2, .LBB15_28
# %bb.43:                               #   in Loop: Header=BB15_30 Depth=3
	lw	t3, 0(a5)
	blt	t2, t3, .LBB15_29
# %bb.44:                               #   in Loop: Header=BB15_30 Depth=3
	mv	t2, t3
	j	.LBB15_29
.LBB15_45:                              #   in Loop: Header=BB15_27 Depth=2
	mv	s6, s4
	bge	s10, n2, .LBB15_47
# %bb.46:                               #   in Loop: Header=BB15_27 Depth=2
	addi	s5, s5, 1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	bltu	s5, a0, .LBB15_27
.LBB15_47:                              #   in Loop: Header=BB15_25 Depth=1
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	mv	a0, a5
	blt	s10, n2, .LBB15_23
# %bb.48:                               #   in Loop: Header=BB15_25 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	mv	s10, n2
	j	.LBB15_23
.LBB15_49:
	li	s1, 0
	li	t0, 0
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	sd	n1, 160(sp)                     # 8-byte Folded Spill
	addw	a5, a0, n1
	addi	a0, s11, -1
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	a0, a0, 8
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	lui	a6, %hi(spiral_search_x)
	lui	a7, %hi(spiral_search_y)
	lui	t1, %hi(mvbits)
	slli	t5, a3, 2
	slli	n1, a1, 2
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	sd	t5, 48(sp)                      # 8-byte Folded Spill
	sd	n1, 40(sp)                      # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	j	.LBB15_52
.LBB15_50:                              #   in Loop: Header=BB15_52 Depth=1
	mv	t0, a0
	mv	n2, s5
	ld	n6, 104(sp)                     # 8-byte Folded Reload
	ld	t6, 96(sp)                      # 8-byte Folded Reload
	ld	t4, 88(sp)                      # 8-byte Folded Reload
	ld	t2, 80(sp)                      # 8-byte Folded Reload
	ld	t3, 72(sp)                      # 8-byte Folded Reload
	ld	n3, 192(sp)                     # 8-byte Folded Reload
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	lui	a6, %hi(spiral_search_x)
	lui	a7, %hi(spiral_search_y)
	lui	t1, %hi(mvbits)
	ld	t5, 48(sp)                      # 8-byte Folded Reload
	ld	n1, 40(sp)                      # 8-byte Folded Reload
.LBB15_51:                              #   in Loop: Header=BB15_52 Depth=1
	addi	s1, s1, 1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	bgeu	s1, a0, .LBB15_76
.LBB15_52:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_63 Depth 2
                                        #     Child Loop BB15_56 Depth 2
                                        #       Child Loop BB15_57 Depth 3
	ld	a0, %lo(spiral_search_x)(a6)
	ld	a1, %lo(spiral_search_y)(a7)
	slli	a2, s1, 1
	add	a0, a0, a2
	lh	s7, 0(a0)
	add	a1, a1, a2
	lh	a0, 0(a1)
	ld	a1, %lo(mvbits)(t1)
	add	a3, s7, n6
	addw	s8, a0, t4
	add	a0, a1, t5
	lw	a0, 0(a0)
	add	a2, a1, n1
	lw	a2, 0(a2)
	slli	a4, a3, 2
	addw	a4, t2, a4
	slli	a4, a4, 2
	add	n4, a1, a4
	slli	a4, s8, 2
	addw	a4, t3, a4
	slli	a4, a4, 2
	add	a1, a1, a4
	lw	a4, 0(n4)
	lw	a1, 0(a1)
	add	a0, a2, a0
	mul	a0, a0, t6
	sraiw	s5, a0, 16
	add	a1, a1, a4
	mul	a0, a1, t6
	sraiw	a0, a0, 16
	add	s5, a0, s5
	sext.w	a1, n2
	bge	s5, a1, .LBB15_51
# %bb.53:                               #   in Loop: Header=BB15_52 Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	sd	t0, 64(sp)                      # 8-byte Folded Spill
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB15_60
# %bb.54:                               #   in Loop: Header=BB15_52 Depth=1
	lui	s7, %hi(byte_abs)
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	blez	s11, .LBB15_62
# %bb.55:                               # %.preheader
                                        #   in Loop: Header=BB15_52 Depth=1
	li	s4, 0
	sext.w	s10, n2
.LBB15_56:                              #   Parent Loop BB15_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_57 Depth 3
	addw	a2, s8, s4
	mv	a0, s0
	mv	a1, s6
	mv	a4, s3
	mv	a5, s2
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	jalr	a6
	mv	s9, a0
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addw	a2, a0, s4
	mv	a0, s0
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	mv	a5, s2
	ld	a6, 176(sp)                     # 8-byte Folded Reload
	jalr	a6
	slli	a1, s4, 3
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s7)
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
.LBB15_57:                              #   Parent Loop BB15_52 Depth=1
                                        #     Parent Loop BB15_56 Depth=2
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
	add	a4, a4, s5
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s5, a4, a7
	addi	a1, a1, 8
	addi	a0, a0, 8
	addi	s9, s9, 8
	bne	a0, a3, .LBB15_57
# %bb.58:                               #   in Loop: Header=BB15_56 Depth=2
	bge	s5, s10, .LBB15_60
# %bb.59:                               #   in Loop: Header=BB15_56 Depth=2
	addi	s4, s4, 1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	blt	s4, a0, .LBB15_56
.LBB15_60:                              #   in Loop: Header=BB15_52 Depth=1
	mv	a0, s1
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	blt	s5, a1, .LBB15_50
.LBB15_61:                              #   in Loop: Header=BB15_52 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	mv	s5, a1
	j	.LBB15_50
.LBB15_62:                              #   in Loop: Header=BB15_52 Depth=1
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	ld	s4, 184(sp)                     # 8-byte Folded Reload
	ld	s10, 176(sp)                    # 8-byte Folded Reload
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	mv	s1, a5
	mv	s7, n3
.LBB15_63:                              #   Parent Loop BB15_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s0
	mv	a1, s6
	mv	a2, s8
	mv	a4, s3
	mv	a5, s2
	jalr	s4
	mv	a0, s0
	mv	a1, s11
	mv	a2, s9
	mv	a3, s7
	mv	a4, s3
	mv	a5, s2
	jalr	s10
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	addiw	s9, s9, 1
	addiw	s8, s8, 1
	bne	s9, s1, .LBB15_63
# %bb.64:                               #   in Loop: Header=BB15_52 Depth=1
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	mv	a0, s1
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	blt	s5, a1, .LBB15_50
	j	.LBB15_61
.LBB15_65:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	li	a2, 0
	li	a4, 0
	lui	a5, %hi(spiral_search_x)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a6, 0(a3)
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a7, 0(a1)
	ld	a1, %lo(spiral_search_x)(a5)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a6, a7, a6
	mul	a5, a6, t6
	sraiw	a5, a5, 16
	ld	a7, 112(sp)                     # 8-byte Folded Reload
	seqz	a6, a7
	add	a6, a7, a6
	slli	a6, a6, 1
	add	a6, a3, a6
	mv	a7, n2
	j	.LBB15_67
.LBB15_66:                              #   in Loop: Header=BB15_67 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 2
	addi	a1, a1, 2
	mv	a7, n2
	mv	a4, t0
	beq	a3, a6, .LBB15_76
.LBB15_67:                              # =>This Inner Loop Header: Depth=1
	lh	t0, 0(a1)
	lh	t1, 0(a3)
	add	t0, t0, n6
	add	t1, t1, t4
	slli	t0, t0, 2
	addw	t0, t2, t0
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	t0, 0(t0)
	slli	t1, t1, 2
	addw	t1, t3, t1
	slli	t1, t1, 2
	add	t1, a0, t1
	lw	t1, 0(t1)
	add	t0, t1, t0
	mul	t0, t0, t6
	sraiw	t0, t0, 16
	add	n2, t0, a5
	sext.w	a7, a7
	mv	t0, a2
	blt	n2, a7, .LBB15_66
# %bb.68:                               #   in Loop: Header=BB15_67 Depth=1
	mv	n2, a7
	mv	t0, a4
	j	.LBB15_66
.LBB15_69:
	li	a2, 0
	li	t0, 0
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	addw	s5, a0, n1
	slli	a3, a3, 2
	sd	a3, 128(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 2
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	ld	s10, 184(sp)                    # 8-byte Folded Reload
	ld	s4, 168(sp)                     # 8-byte Folded Reload
	j	.LBB15_72
.LBB15_70:                              #   in Loop: Header=BB15_72 Depth=1
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	ld	s9, 192(sp)                     # 8-byte Folded Reload
.LBB15_71:                              #   in Loop: Header=BB15_72 Depth=1
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	addi	a2, a2, 1
	ld	n6, 104(sp)                     # 8-byte Folded Reload
	ld	t6, 96(sp)                      # 8-byte Folded Reload
	ld	t4, 88(sp)                      # 8-byte Folded Reload
	ld	t2, 80(sp)                      # 8-byte Folded Reload
	ld	t3, 72(sp)                      # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mv	n3, s9
	bgeu	a2, a0, .LBB15_76
.LBB15_72:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_73 Depth 2
	lui	a0, %hi(spiral_search_x)
	ld	a0, %lo(spiral_search_x)(a0)
	lui	a1, %hi(spiral_search_y)
	ld	a1, %lo(spiral_search_y)(a1)
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 1
	add	a0, a0, a2
	lh	s1, 0(a0)
	add	a1, a1, a2
	lh	a0, 0(a1)
	lui	a1, %hi(mvbits)
	ld	a1, %lo(mvbits)(a1)
	add	s1, s1, n6
	addw	s7, a0, t4
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a0, 0(a0)
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	add	a2, a1, a2
	lw	a2, 0(a2)
	slli	a3, s1, 2
	addw	a3, t2, a3
	slli	a3, a3, 2
	add	a3, a1, a3
	slli	a4, s7, 2
	addw	a4, t3, a4
	slli	a4, a4, 2
	add	a1, a1, a4
	lw	a3, 0(a3)
	lw	a1, 0(a1)
	add	a0, a2, a0
	mul	a0, a0, t6
	sraiw	s11, a0, 16
	add	a1, a1, a3
	mul	a0, a1, t6
	sraiw	a0, a0, 16
	add	a0, a0, s11
	sext.w	a1, n2
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	mv	s9, n3
	ld	s11, 176(sp)                    # 8-byte Folded Reload
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB15_71
.LBB15_73:                              #   Parent Loop BB15_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s0
	mv	a1, s6
	mv	a2, s7
	mv	a3, s1
	mv	a4, s3
	mv	a5, s2
	jalr	s10
	mv	a0, s0
	mv	a1, s4
	mv	a2, s8
	mv	a3, s9
	mv	a4, s3
	mv	a5, s2
	jalr	s11
	addiw	s8, s8, 1
	addiw	s7, s7, 1
	bne	s8, s5, .LBB15_73
# %bb.74:                               #   in Loop: Header=BB15_72 Depth=1
	ld	n2, 144(sp)                     # 8-byte Folded Reload
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	blt	n2, a0, .LBB15_70
# %bb.75:                               #   in Loop: Header=BB15_72 Depth=1
	mv	n2, a0
	j	.LBB15_70
.LBB15_76:
	sext.w	a0, t0
	beqz	a0, .LBB15_78
# %bb.77:
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
.LBB15_78:
	sext.w	a0, n2
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
	addi	sp, sp, -1648
	sd	ra, 1640(sp)                    # 8-byte Folded Spill
	sd	s0, 1632(sp)                    # 8-byte Folded Spill
	sd	s1, 1624(sp)                    # 8-byte Folded Spill
	sd	s2, 1616(sp)                    # 8-byte Folded Spill
	sd	s3, 1608(sp)                    # 8-byte Folded Spill
	sd	s4, 1600(sp)                    # 8-byte Folded Spill
	sd	s5, 1592(sp)                    # 8-byte Folded Spill
	sd	s6, 1584(sp)                    # 8-byte Folded Spill
	sd	s7, 1576(sp)                    # 8-byte Folded Spill
	sd	s8, 1568(sp)                    # 8-byte Folded Spill
	sd	s9, 1560(sp)                    # 8-byte Folded Spill
	sd	s10, 1552(sp)                   # 8-byte Folded Spill
	sd	s11, 1544(sp)                   # 8-byte Folded Spill
	ld	n1, 1680(sp)
	mv	s10, a7
	mv	n7, a6
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	a6, 64
	sd	a6, 184(sp)                     # 8-byte Folded Spill
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	beq	a5, a0, .LBB16_2
# %bb.1:
	li	a0, 128
	sd	a0, 184(sp)                     # 8-byte Folded Spill
.LBB16_2:
	lui	a0, %hi(input)
	ld	a5, %lo(input)(a0)
	lw	a0, 24(a5)
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	slli	a7, a7, 3
	add	a7, a5, a7
	mv	t0, n1
	bgtz	n1, .LBB16_4
# %bb.3:
	li	t0, 1
.LBB16_4:
	lw	a6, 88(a7)
	sd	a6, 216(sp)                     # 8-byte Folded Spill
	slli	a6, a3, 2
	beqz	a0, .LBB16_6
# %bb.5:
	mv	n1, t0
.LBB16_6:
	ld	t3, 1672(sp)
	ld	t4, 1664(sp)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	ld	s6, 1648(sp)
	lw	a7, 84(a7)
	sd	a7, 400(sp)                     # 8-byte Folded Spill
	lui	a7, 8
	add	a7, a3, a7
	ld	a7, -1192(a7)
	lw	a3, 12(a3)
	lui	t0, %hi(active_pps)
	ld	t0, %lo(active_pps)(t0)
	li	t1, 528
	mul	a3, a3, t1
	add	a3, a7, a3
	lw	a7, 196(t0)
	lw	a3, 428(a3)
	slli	a4, a4, 2
	addi	a6, a6, 16
	sd	a6, 120(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	sd	a7, 96(sp)                      # 8-byte Folded Spill
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
	li	t6, 1
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
	lw	t6, 0(a7)
	lw	a6, 0(t1)
	lw	a7, 0(t2)
.LBB16_12:
	addi	a4, a4, 16
	sd	a4, 112(sp)                     # 8-byte Folded Spill
	ld	a4, 1656(sp)
	sd	a4, 208(sp)                     # 8-byte Folded Spill
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
	ld	t2, 120(sp)                     # 8-byte Folded Reload
	addw	a6, t2, a7
	sd	a6, 200(sp)                     # 8-byte Folded Spill
	add	a1, t0, a1
	seqz	a2, a2
	addw	a2, a3, a2
	slli	a2, a2, 3
	add	a2, t1, a2
	ld	a2, 0(a2)
	ld	a1, 0(a1)
	lui	a3, 2
	addiw	a6, a3, -1800
	ld	a2, 0(a2)
	add	a1, a1, a6
	lw	a7, 0(a1)
	lh	a6, 0(t3)
	add	a3, a2, a3
	lw	t1, 4(a1)
	ld	a2, 400(sp)                     # 8-byte Folded Reload
	subw	a2, a7, a2
	lh	s2, 0(s6)
	slli	n3, a2, 2
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	subw	a2, t1, a2
	slli	n2, a2, 2
	addw	a2, t2, s2
	li	t2, 3
	addiw	t0, n3, 31
	blt	a2, t2, .LBB16_17
# %bb.13:
	bge	a2, t0, .LBB16_17
# %bb.14:
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a2)
	ld	t2, 112(sp)                     # 8-byte Folded Reload
	addw	a2, t2, a2
	li	t2, 3
	blt	a2, t2, .LBB16_17
# %bb.15:
	addiw	t2, n2, 31
	bge	a2, t2, .LBB16_17
# %bb.16:
	lui	t2, %hi(FastLine4X)
	addi	t2, t2, %lo(FastLine4X)
	j	.LBB16_18
.LBB16_17:
	lui	t2, %hi(UMVLine4X)
	addi	t2, t2, %lo(UMVLine4X)
.LBB16_18:
	lw	a2, 1845(a5)
	addi	a4, a4, 1
	slli	a7, a7, 2
	slli	t1, t1, 2
	seqz	s1, a0
	ld	a5, 112(sp)                     # 8-byte Folded Reload
	addw	a5, a5, a6
	sd	a5, 192(sp)                     # 8-byte Folded Spill
	ld	a1, 56(a1)
	sd	a1, 440(sp)                     # 8-byte Folded Spill
	ld	a1, -1744(a3)
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(get_line_p2)
	li	a3, 3
	sd	t2, %lo(get_line_p2)(a1)
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	blt	a1, a3, .LBB16_23
# %bb.19:
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	bge	a1, t0, .LBB16_23
# %bb.20:
	li	a1, 3
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	blt	a3, a1, .LBB16_23
# %bb.21:
	addiw	a1, n2, 31
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	bge	a3, a1, .LBB16_23
# %bb.22:
	lui	a1, %hi(FastLine4X)
	addi	a1, a1, %lo(FastLine4X)
	j	.LBB16_24
.LBB16_23:
	lui	a1, %hi(UMVLine4X)
	addi	a1, a1, %lo(UMVLine4X)
.LBB16_24:
	ld	a3, 1704(sp)
	sd	a3, 224(sp)                     # 8-byte Folded Spill
	lw	s4, 1696(sp)
	srliw	a6, a4, 1
	addiw	a7, a7, 28
	sd	a7, 432(sp)                     # 8-byte Folded Spill
	addiw	t1, t1, 28
	sd	t1, 424(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(get_line_p1)
	sd	a1, %lo(get_line_p1)(a3)
	sd	s10, 136(sp)                    # 8-byte Folded Spill
	sd	n7, 160(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	blt	s1, n1, .LBB16_25
	j	.LBB16_65
.LBB16_25:
	sd	n3, 16(sp)                      # 8-byte Folded Spill
	sd	n2, 24(sp)                      # 8-byte Folded Spill
	sd	t4, 56(sp)                      # 8-byte Folded Spill
	sd	t3, 64(sp)                      # 8-byte Folded Spill
	snez	a1, a2
	snez	a2, a0
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	slti	a3, a3, 5
	and	a2, a2, a3
	and	a1, a1, a2
	andi	s7, a1, 1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	sd	t5, 48(sp)                      # 8-byte Folded Spill
	sd	t6, 40(sp)                      # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB16_51
# %bb.26:
	sd	s4, 392(sp)                     # 8-byte Folded Spill
	li	s0, 0
	slli	a1, t5, 48
	srai	a1, a1, 48
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	slli	a1, t6, 48
	srai	a1, a1, 48
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	slli	a1, a6, 48
	srai	a1, a1, 48
	sd	a1, 256(sp)                     # 8-byte Folded Spill
	seqz	a5, a0
	lui	s5, 16
	addi	s5, s5, -1
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	lui	a6, %hi(spiral_hpel_search_x)
	lui	t0, %hi(spiral_hpel_search_y)
	lui	t1, %hi(mvbits)
	sd	n1, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 344(sp)                     # 8-byte Folded Spill
	j	.LBB16_29
.LBB16_27:                              #   in Loop: Header=BB16_29 Depth=1
	sd	s5, 392(sp)                     # 8-byte Folded Spill
	ld	s10, 136(sp)                    # 8-byte Folded Reload
	ld	n7, 160(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	n1, 80(sp)                      # 8-byte Folded Reload
	lui	a6, %hi(spiral_hpel_search_x)
	lui	t0, %hi(spiral_hpel_search_y)
	lui	t1, %hi(mvbits)
.LBB16_28:                              #   in Loop: Header=BB16_29 Depth=1
	addi	a5, a5, 1
	beq	a5, n1, .LBB16_62
.LBB16_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_34 Depth 2
                                        #       Child Loop BB16_37 Depth 3
                                        #     Child Loop BB16_41 Depth 2
                                        #       Child Loop BB16_45 Depth 3
	ld	a0, %lo(spiral_hpel_search_x)(a6)
	lh	a1, 0(s6)
	slli	a2, a5, 1
	ld	a3, %lo(spiral_hpel_search_y)(t0)
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	lh	a4, 0(a4)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t1)
	add	a1, a2, a4
	sub	a2, a0, n7
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sub	a4, a1, s10
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	mul	a2, a2, a3
	sraiw	s5, a2, 16
	ld	a3, 392(sp)                     # 8-byte Folded Reload
	bge	s5, a3, .LBB16_28
# %bb.30:                               #   in Loop: Header=BB16_29 Depth=1
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	a5, 144(sp)                     # 8-byte Folded Spill
	sd	a3, 392(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB16_39
# %bb.31:                               #   in Loop: Header=BB16_29 Depth=1
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB16_47
# %bb.32:                               # %.preheader11
                                        #   in Loop: Header=BB16_29 Depth=1
	li	a2, 0
	j	.LBB16_34
.LBB16_33:                              #   in Loop: Header=BB16_34 Depth=2
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a2, a1, 4
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_47
.LBB16_34:                              #   Parent Loop BB16_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_37 Depth 3
	li	a7, 0
	li	t0, 0
	sltiu	a0, a2, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	slli	a0, a2, 2
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	addiw	a3, a1, 4
	sd	a3, 328(sp)                     # 8-byte Folded Spill
	addiw	a3, a1, 8
	sd	a3, 320(sp)                     # 8-byte Folded Spill
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, 12
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	addiw	a1, a0, 4
	sd	a1, 296(sp)                     # 8-byte Folded Spill
	addiw	a1, a0, 8
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	addiw	a0, a0, 12
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	slli	a0, a2, 3
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 384(sp)                     # 8-byte Folded Spill
	andi	a0, a0, 32
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	li	a1, 6
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	j	.LBB16_37
.LBB16_35:                              #   in Loop: Header=BB16_37 Depth=3
	ld	a7, 360(sp)                     # 8-byte Folded Reload
	andi	a0, a7, 4
	ld	t0, 352(sp)                     # 8-byte Folded Reload
	sltiu	a1, t0, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 520
	add	a1, a6, a0
	lw	a2, 468(sp)
	lw	a3, 464(sp)
	lw	a4, 460(sp)
	lw	a5, 456(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 472
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
	addi	a5, sp, 488
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
	addi	a4, sp, 504
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
	ld	s5, 368(sp)                     # 8-byte Folded Reload
.LBB16_36:                              #   in Loop: Header=BB16_37 Depth=3
	addi	t0, t0, 4
	addiw	a7, a7, 4
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 8
	addiw	s11, s11, 16
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	addiw	a2, a2, 16
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	bge	a7, a0, .LBB16_33
.LBB16_37:                              #   Parent Loop BB16_29 Depth=1
                                        #     Parent Loop BB16_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	sd	s11, 376(sp)                    # 8-byte Folded Spill
	sd	t0, 352(sp)                     # 8-byte Folded Spill
	sd	a7, 360(sp)                     # 8-byte Folded Spill
	sd	s5, 368(sp)                     # 8-byte Folded Spill
	ld	s5, 384(sp)                     # 8-byte Folded Reload
	ld	s3, 0(s5)
	lui	a0, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a0)
	lui	s8, %hi(get_line_p1)
	add	s3, s3, a1
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	sd	a2, 408(sp)                     # 8-byte Folded Spill
	ld	s1, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s1
	ld	s0, 432(sp)                     # 8-byte Folded Reload
	mv	a4, s0
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s1
	mv	a4, s0
	mv	s9, s0
	jalr	a5
	lhu	a1, 0(s2)
	mv	s0, a0
	lhu	a0, 0(a0)
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	mul	a1, s4, a1
	lui	a2, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(a2)
	lui	s11, %hi(wp_luma_round)
	ld	s6, 264(sp)                     # 8-byte Folded Reload
	mul	a0, s6, a0
	lui	a3, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(a3)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	ld	s7, 256(sp)                     # 8-byte Folded Reload
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s3)
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	and	a0, a0, s1
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s0)
	sw	a1, 456(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s1
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s0)
	sw	a1, 460(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s1
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s0)
	sw	a1, 464(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s1
	ld	s3, 8(s5)
	ld	a5, %lo(get_line_p1)(s8)
	subw	a1, a1, a0
	sw	a1, 468(sp)
	ld	s8, 416(sp)                     # 8-byte Folded Reload
	add	s3, s3, s8
	ld	s11, 440(sp)                    # 8-byte Folded Reload
	mv	a0, s11
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	ld	s10, 408(sp)                    # 8-byte Folded Reload
	mv	a2, s10
	ld	s2, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s2
	mv	a4, s9
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s0, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	ld	a2, 376(sp)                     # 8-byte Folded Reload
	mv	a3, s2
	mv	a4, s9
	jalr	a5
	lhu	a1, 0(s0)
	mv	s2, a0
	lhu	a0, 0(a0)
	mul	a1, s4, a1
	lui	s9, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s9)
	mul	a0, s6, a0
	lui	s5, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s5)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s3)
	and	a0, a0, s1
	lhu	a2, 8(s0)
	subw	a1, a1, a0
	lhu	a0, 8(s2)
	sw	a1, 472(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s9)
	lui	s9, %hi(wp_luma_round)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s5)
	lui	s5, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s1
	lhu	a2, 16(s0)
	subw	a1, a1, a0
	lhu	a0, 16(s2)
	sw	a1, 476(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s9)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s5)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s1
	lhu	a2, 24(s0)
	subw	a1, a1, a0
	lhu	a0, 24(s2)
	sw	a1, 480(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s9)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s5)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s1
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	ld	s3, 16(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s3, s3, s8
	mv	a0, s11
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	ld	s8, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	ld	s9, 432(sp)                     # 8-byte Folded Reload
	mv	a4, s9
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s0, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	ld	s5, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s5
	mv	a3, s8
	mv	a4, s9
	jalr	a5
	lhu	a1, 0(s0)
	mv	s2, a0
	lhu	a0, 0(a0)
	mul	a1, s4, a1
	lui	s11, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s6, a0
	lui	s10, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s3)
	and	a0, a0, s1
	lhu	a2, 8(s0)
	subw	a1, a1, a0
	lhu	a0, 8(s2)
	sw	a1, 488(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s1
	lhu	a2, 16(s0)
	subw	a1, a1, a0
	lhu	a0, 16(s2)
	sw	a1, 492(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s1
	lhu	a2, 24(s0)
	subw	a1, a1, a0
	lhu	a0, 24(s2)
	sw	a1, 496(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s1
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	ld	s3, 24(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	add	s3, s3, a0
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	mv	a3, s8
	mv	a4, s9
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s0, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	mv	s11, s5
	mv	a2, s5
	mv	a3, s8
	mv	a4, s9
	jalr	a5
	lhu	a1, 0(s0)
	mv	s2, a0
	lhu	a0, 0(a0)
	mul	a1, s4, a1
	lui	s5, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s5)
	mul	a0, s6, a0
	lui	s8, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -6(s3)
	and	a0, a0, s1
	lhu	a2, 8(s0)
	subw	a1, a1, a0
	lhu	a0, 8(s2)
	sw	a1, 504(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s5)
	lui	s5, %hi(wp_luma_round)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	lui	s8, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s1
	lhu	a2, 16(s0)
	subw	a1, a1, a0
	lhu	a0, 16(s2)
	sw	a1, 508(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s5)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s1
	lhu	a2, 24(s0)
	subw	a1, a1, a0
	lhu	a0, 24(s2)
	sw	a1, 512(sp)
	mul	a1, s4, a2
	lw	a2, %lo(wp_luma_round)(s5)
	mul	a0, s6, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s7
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s1
	subw	a1, a1, a0
	sw	a1, 516(sp)
	ld	s7, 344(sp)                     # 8-byte Folded Reload
	bnez	s7, .LBB16_35
# %bb.38:                               #   in Loop: Header=BB16_37 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 456
	call	SATD
	ld	s5, 368(sp)                     # 8-byte Folded Reload
	addw	s5, a0, s5
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	ld	a7, 360(sp)                     # 8-byte Folded Reload
	ld	t0, 352(sp)                     # 8-byte Folded Reload
	bge	a0, s5, .LBB16_36
	j	.LBB16_49
.LBB16_39:                              # %.preheader9
                                        #   in Loop: Header=BB16_29 Depth=1
	li	a2, 0
	j	.LBB16_41
.LBB16_40:                              #   in Loop: Header=BB16_41 Depth=2
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a2, a1, 4
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_47
.LBB16_41:                              #   Parent Loop BB16_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_45 Depth 3
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	sd	a2, 296(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB16_40
# %bb.42:                               #   in Loop: Header=BB16_41 Depth=2
	li	s11, 0
	li	a7, 0
	sltiu	a0, a2, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	slli	a0, a2, 2
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	addiw	a3, a1, 4
	sd	a3, 384(sp)                     # 8-byte Folded Spill
	addiw	a3, a1, 8
	sd	a3, 376(sp)                     # 8-byte Folded Spill
	sd	a1, 408(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, 12
	sd	a1, 368(sp)                     # 8-byte Folded Spill
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	addiw	a1, a0, 4
	sd	a1, 352(sp)                     # 8-byte Folded Spill
	addiw	a1, a0, 8
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	sd	a0, 360(sp)                     # 8-byte Folded Spill
	addiw	a0, a0, 12
	sd	a0, 328(sp)                     # 8-byte Folded Spill
	slli	a0, a2, 3
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 320(sp)                     # 8-byte Folded Spill
	andi	a0, a0, 32
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	li	s6, 6
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	j	.LBB16_45
.LBB16_43:                              #   in Loop: Header=BB16_45 Depth=3
	andi	a0, s11, 4
	ld	a7, 416(sp)                     # 8-byte Folded Reload
	sltiu	a1, a7, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 520
	add	a1, a6, a0
	lw	a2, 468(sp)
	lw	a3, 464(sp)
	lw	a4, 460(sp)
	lw	a5, 456(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 472
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
	addi	a5, sp, 488
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
	addi	a4, sp, 504
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB16_44:                              #   in Loop: Header=BB16_45 Depth=3
	addi	a7, a7, 4
	addiw	s11, s11, 4
	addi	s6, s6, 8
	addiw	s2, s2, 16
	addiw	s1, s1, 16
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	bge	s11, a0, .LBB16_40
.LBB16_45:                              #   Parent Loop BB16_29 Depth=1
                                        #     Parent Loop BB16_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	a7, 416(sp)                     # 8-byte Folded Spill
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	ld	a0, 0(s0)
	lui	a1, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a1)
	add	s10, a0, s6
	ld	s7, 440(sp)                     # 8-byte Folded Reload
	mv	a0, s7
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	ld	s4, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s4
	ld	s8, 432(sp)                     # 8-byte Folded Reload
	mv	a4, s8
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	ld	s9, 448(sp)                     # 8-byte Folded Reload
	mv	a0, s9
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s8
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s10)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 456(sp)
	lhu	a1, -4(s10)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 460(sp)
	lhu	a1, -2(s10)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 464(sp)
	lhu	a1, 0(s10)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 8(s0)
	lui	a3, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a3)
	subw	a1, a1, a0
	sw	a1, 468(sp)
	add	s10, a2, s6
	mv	a0, s7
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s4
	mv	a4, s8
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	mv	a0, s9
	ld	a1, 384(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s8
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s10)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 472(sp)
	lhu	a1, -4(s10)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 476(sp)
	lhu	a1, -2(s10)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 480(sp)
	lhu	a1, 0(s10)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 16(s0)
	lui	a3, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a3)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s10, a2, s6
	mv	a0, s7
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s4
	mv	a4, s8
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	mv	a0, s9
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s8
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s10)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 488(sp)
	lhu	a1, -4(s10)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 492(sp)
	lhu	a1, -2(s10)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 496(sp)
	lhu	a1, 0(s10)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 24(s0)
	lui	a3, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a3)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	add	s10, a2, s6
	mv	a0, s7
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s4
	mv	a4, s8
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	mv	a0, s9
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s8
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s10)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 504(sp)
	lhu	a1, -4(s10)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 508(sp)
	lhu	a1, -2(s10)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 512(sp)
	lhu	a1, 0(s10)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a1, a1, a0
	sw	a1, 516(sp)
	ld	s7, 344(sp)                     # 8-byte Folded Reload
	bnez	s7, .LBB16_43
# %bb.46:                               #   in Loop: Header=BB16_45 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 456
	call	SATD
	addw	s5, a0, s5
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	ld	a7, 416(sp)                     # 8-byte Folded Reload
	bge	a0, s5, .LBB16_44
	j	.LBB16_49
.LBB16_47:                              #   in Loop: Header=BB16_29 Depth=1
	ld	s7, 344(sp)                     # 8-byte Folded Reload
	beqz	s7, .LBB16_49
# %bb.48:                               #   in Loop: Header=BB16_29 Depth=1
	addi	a0, sp, 520
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s5, a0, s5
.LBB16_49:                              #   in Loop: Header=BB16_29 Depth=1
	ld	a5, 144(sp)                     # 8-byte Folded Reload
	mv	s0, a5
	ld	a1, 392(sp)                     # 8-byte Folded Reload
	blt	s5, a1, .LBB16_27
# %bb.50:                               #   in Loop: Header=BB16_29 Depth=1
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	mv	s5, a1
	j	.LBB16_27
.LBB16_51:
	lui	a1, %hi(spiral_hpel_search_x)
	ld	a1, %lo(spiral_hpel_search_x)(a1)
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	lh	s8, 0(a2)
	lui	a2, %hi(spiral_hpel_search_y)
	ld	a2, %lo(spiral_hpel_search_y)(a2)
	lui	a3, %hi(mvbits)
	ld	s3, %lo(mvbits)(a3)
	seqz	a0, a0
	slli	a4, n1, 32
	srli	a4, a4, 32
	beqz	s7, .LBB16_58
# %bb.52:                               # %.preheader14
	sd	s4, 392(sp)                     # 8-byte Folded Spill
	li	s0, 0
	slli	a0, a0, 1
	add	s4, a2, a0
	add	s5, a1, a0
	slli	a4, a4, 1
	add	s11, a2, a4
	j	.LBB16_55
.LBB16_53:                              #   in Loop: Header=BB16_55 Depth=1
	mv	s0, a1
	sd	a0, 392(sp)                     # 8-byte Folded Spill
	ld	n7, 160(sp)                     # 8-byte Folded Reload
.LBB16_54:                              #   in Loop: Header=BB16_55 Depth=1
	addi	s1, s1, 1
	addi	s4, s4, 2
	addi	s5, s5, 2
	beq	s4, s11, .LBB16_62
.LBB16_55:                              # =>This Inner Loop Header: Depth=1
	lh	a0, 0(s5)
	lh	a1, 0(s4)
	add	a0, a0, s2
	add	a1, a1, s8
	sub	a0, a0, n7
	slli	a0, a0, 2
	add	a0, s3, a0
	lw	a0, 0(a0)
	sub	a1, a1, s10
	slli	a1, a1, 2
	add	a1, s3, a1
	lw	a1, 0(a1)
	add	a0, a1, a0
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s9, a0, 16
	ld	s7, 392(sp)                     # 8-byte Folded Reload
	bge	s9, s7, .LBB16_54
# %bb.56:                               #   in Loop: Header=BB16_55 Depth=1
	addi	a0, sp, 520
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	a0, a0, s9
	mv	a1, s1
	blt	a0, s7, .LBB16_53
# %bb.57:                               #   in Loop: Header=BB16_55 Depth=1
	mv	a1, s0
	mv	a0, s7
	j	.LBB16_53
.LBB16_58:                              # %.preheader16
	li	a3, 0
	slli	a5, a0, 1
	add	a0, a2, a5
	add	a1, a1, a5
	slli	a4, a4, 1
	add	a2, a2, a4
	j	.LBB16_60
.LBB16_59:                              #   in Loop: Header=BB16_60 Depth=1
	addi	s1, s1, 1
	addi	a0, a0, 2
	addi	a1, a1, 2
	sd	a5, 392(sp)                     # 8-byte Folded Spill
	mv	s4, a5
	mv	a3, s0
	beq	a0, a2, .LBB16_62
.LBB16_60:                              # =>This Inner Loop Header: Depth=1
	lh	a5, 0(a1)
	lh	a6, 0(a0)
	add	a5, a5, s2
	add	a6, a6, s8
	sub	a5, a5, n7
	slli	a5, a5, 2
	add	a5, s3, a5
	lw	a5, 0(a5)
	sub	a6, a6, s10
	slli	a6, a6, 2
	add	a6, s3, a6
	lw	a6, 0(a6)
	add	a5, a6, a5
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	mul	a5, a5, a6
	sraiw	a5, a5, 16
	mv	s0, s1
	blt	a5, s4, .LBB16_59
# %bb.61:                               #   in Loop: Header=BB16_60 Depth=1
	mv	a5, s4
	mv	s0, a3
	j	.LBB16_59
.LBB16_62:
	sext.w	a0, s0
	beqz	a0, .LBB16_64
# %bb.63:
	lui	a1, %hi(spiral_hpel_search_x)
	ld	a1, %lo(spiral_hpel_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lh	a2, 0(s6)
	lui	a3, %hi(spiral_hpel_search_y)
	ld	a3, %lo(spiral_hpel_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(s6)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB16_64:
	ld	s4, 392(sp)                     # 8-byte Folded Reload
	ld	t3, 64(sp)                      # 8-byte Folded Reload
	ld	t4, 56(sp)                      # 8-byte Folded Reload
	ld	t5, 48(sp)                      # 8-byte Folded Reload
	ld	t6, 40(sp)                      # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	n2, 24(sp)                      # 8-byte Folded Reload
	ld	n3, 16(sp)                      # 8-byte Folded Reload
.LBB16_65:
	li	a0, 4
	sd	zero, 344(sp)                   # 8-byte Folded Spill
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	blt	a0, a1, .LBB16_68
# %bb.66:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1845(a1)
	beqz	a1, .LBB16_68
# %bb.67:
	lw	a0, 24(a0)
	snez	a0, a0
	sd	a0, 344(sp)                     # 8-byte Folded Spill
.LBB16_68:
	lh	a0, 0(s6)
	addiw	a1, n3, 32
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	addw	a2, a2, a0
	addiw	a0, n2, 32
	blez	a2, .LBB16_73
# %bb.69:
	bge	a2, a1, .LBB16_73
# %bb.70:
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a2)
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	addw	a2, a3, a2
	blez	a2, .LBB16_73
# %bb.71:
	bge	a2, a0, .LBB16_73
# %bb.72:
	lui	a2, %hi(FastLine4X)
	addi	a2, a2, %lo(FastLine4X)
	j	.LBB16_74
.LBB16_73:
	lui	a2, %hi(UMVLine4X)
	addi	a2, a2, %lo(UMVLine4X)
.LBB16_74:
	lh	a3, 0(t4)
	ld	a7, 1688(sp)
	lui	a4, %hi(get_line_p2)
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	addw	a3, a5, a3
	sd	a2, %lo(get_line_p2)(a4)
	blez	a3, .LBB16_79
# %bb.75:
	bge	a3, a1, .LBB16_79
# %bb.76:
	lh	a1, 0(t3)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	addw	a1, a2, a1
	blez	a1, .LBB16_79
# %bb.77:
	bge	a1, a0, .LBB16_79
# %bb.78:
	lui	a0, %hi(FastLine4X)
	addi	a0, a0, %lo(FastLine4X)
	lui	a2, %hi(get_line_p1)
	li	a1, 2
	sd	a0, %lo(get_line_p1)(a2)
	bge	a7, a1, .LBB16_80
	j	.LBB16_108
.LBB16_79:
	lui	a0, %hi(UMVLine4X)
	addi	a0, a0, %lo(UMVLine4X)
	lui	a2, %hi(get_line_p1)
	li	a1, 2
	sd	a0, %lo(get_line_p1)(a2)
	blt	a7, a1, .LBB16_108
.LBB16_80:
	li	a5, 0
	lui	s8, 16
	addi	s8, s8, -1
	sd	s8, 272(sp)                     # 8-byte Folded Spill
	slli	a0, t5, 48
	srai	a0, a0, 48
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	slli	a0, t6, 48
	srai	a0, a0, 48
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	slli	a0, a6, 48
	srai	a0, a0, 48
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	li	a6, 1
	lui	t0, %hi(spiral_search_x)
	lui	t1, %hi(spiral_search_y)
	lui	t2, %hi(mvbits)
	sd	a7, 80(sp)                      # 8-byte Folded Spill
	j	.LBB16_83
.LBB16_81:                              #   in Loop: Header=BB16_83 Depth=1
	mv	a5, a0
	mv	s4, s5
	ld	s10, 136(sp)                    # 8-byte Folded Reload
	ld	n7, 160(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	a7, 80(sp)                      # 8-byte Folded Reload
	lui	t0, %hi(spiral_search_x)
	lui	t1, %hi(spiral_search_y)
	lui	t2, %hi(mvbits)
.LBB16_82:                              #   in Loop: Header=BB16_83 Depth=1
	addi	a6, a6, 1
	beq	a6, a7, .LBB16_106
.LBB16_83:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_89 Depth 2
                                        #       Child Loop BB16_92 Depth 3
                                        #     Child Loop BB16_96 Depth 2
                                        #       Child Loop BB16_100 Depth 3
	ld	a0, %lo(spiral_search_x)(t0)
	lh	a1, 0(s6)
	slli	a2, a6, 1
	ld	a3, %lo(spiral_search_y)(t1)
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	lh	a4, 0(a4)
	add	a2, a3, a2
	lh	a2, 0(a2)
	add	a0, a0, a1
	ld	a3, %lo(mvbits)(t2)
	add	a1, a2, a4
	sub	a2, a0, n7
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a2, 0(a2)
	sub	a4, a1, s10
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a3, a2
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	mul	a2, a2, a3
	sraiw	s5, a2, 16
	bge	s5, s4, .LBB16_82
# %bb.84:                               #   in Loop: Header=BB16_83 Depth=1
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	sd	a5, 104(sp)                     # 8-byte Folded Spill
	sd	a6, 168(sp)                     # 8-byte Folded Spill
	blez	a2, .LBB16_102
# %bb.85:                               #   in Loop: Header=BB16_83 Depth=1
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB16_94
# %bb.86:                               #   in Loop: Header=BB16_83 Depth=1
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB16_102
# %bb.87:                               # %.preheader4
                                        #   in Loop: Header=BB16_83 Depth=1
	li	a2, 0
	sd	s4, 392(sp)                     # 8-byte Folded Spill
	j	.LBB16_89
.LBB16_88:                              #   in Loop: Header=BB16_89 Depth=2
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a2, a1, 4
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_102
.LBB16_89:                              #   Parent Loop BB16_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_92 Depth 3
	li	a7, 0
	li	t0, 0
	sltiu	a0, a2, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	slli	a0, a2, 2
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	addiw	a3, a1, 4
	sd	a3, 328(sp)                     # 8-byte Folded Spill
	addiw	a3, a1, 8
	sd	a3, 320(sp)                     # 8-byte Folded Spill
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, 12
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	addiw	a1, a0, 4
	sd	a1, 296(sp)                     # 8-byte Folded Spill
	addiw	a1, a0, 8
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	addiw	a0, a0, 12
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	slli	a0, a2, 3
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 384(sp)                     # 8-byte Folded Spill
	andi	a0, a0, 32
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	li	a1, 6
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	s11, 152(sp)                    # 8-byte Folded Reload
	j	.LBB16_92
.LBB16_90:                              #   in Loop: Header=BB16_92 Depth=3
	ld	a7, 360(sp)                     # 8-byte Folded Reload
	andi	a0, a7, 4
	ld	t0, 352(sp)                     # 8-byte Folded Reload
	sltiu	a1, t0, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 520
	add	a1, a6, a0
	lw	a2, 468(sp)
	lw	a3, 464(sp)
	lw	a4, 460(sp)
	lw	a5, 456(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 472
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
	addi	a5, sp, 488
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
	addi	a4, sp, 504
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
	ld	s5, 368(sp)                     # 8-byte Folded Reload
	ld	s4, 392(sp)                     # 8-byte Folded Reload
.LBB16_91:                              #   in Loop: Header=BB16_92 Depth=3
	addi	t0, t0, 4
	addiw	a7, a7, 4
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 8
	addiw	s11, s11, 16
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	addiw	a2, a2, 16
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	bge	a7, a0, .LBB16_88
.LBB16_92:                              #   Parent Loop BB16_83 Depth=1
                                        #     Parent Loop BB16_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	sd	s11, 376(sp)                    # 8-byte Folded Spill
	sd	t0, 352(sp)                     # 8-byte Folded Spill
	sd	a7, 360(sp)                     # 8-byte Folded Spill
	sd	s5, 368(sp)                     # 8-byte Folded Spill
	ld	s5, 384(sp)                     # 8-byte Folded Reload
	ld	s3, 0(s5)
	lui	a0, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a0)
	lui	s8, %hi(get_line_p1)
	add	s3, s3, a1
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	sd	a2, 408(sp)                     # 8-byte Folded Spill
	ld	s0, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s0
	ld	s1, 432(sp)                     # 8-byte Folded Reload
	mv	a4, s1
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s2, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s0
	mv	s9, s0
	mv	a4, s1
	jalr	a5
	lhu	a1, 0(s2)
	mv	s0, a0
	lhu	a0, 0(a0)
	ld	s6, 264(sp)                     # 8-byte Folded Reload
	mul	a1, s6, a1
	lui	a2, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(a2)
	lui	s11, %hi(wp_luma_round)
	ld	s7, 256(sp)                     # 8-byte Folded Reload
	mul	a0, s7, a0
	lui	a3, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(a3)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -6(s3)
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	and	a0, a0, s4
	lhu	a2, 8(s2)
	subw	a1, a1, a0
	lhu	a0, 8(s0)
	sw	a1, 456(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s4
	lhu	a2, 16(s2)
	subw	a1, a1, a0
	lhu	a0, 16(s0)
	sw	a1, 460(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s4
	lhu	a2, 24(s2)
	subw	a1, a1, a0
	lhu	a0, 24(s0)
	sw	a1, 464(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s4
	ld	s3, 8(s5)
	ld	a5, %lo(get_line_p1)(s8)
	subw	a1, a1, a0
	sw	a1, 468(sp)
	ld	s8, 416(sp)                     # 8-byte Folded Reload
	add	s3, s3, s8
	ld	s11, 440(sp)                    # 8-byte Folded Reload
	mv	a0, s11
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	ld	s10, 408(sp)                    # 8-byte Folded Reload
	mv	a2, s10
	mv	a3, s9
	ld	s2, 432(sp)                     # 8-byte Folded Reload
	mv	a4, s2
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s0, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	ld	a2, 376(sp)                     # 8-byte Folded Reload
	mv	a3, s9
	mv	a4, s2
	jalr	a5
	lhu	a1, 0(s0)
	mv	s2, a0
	lhu	a0, 0(a0)
	mul	a1, s6, a1
	lui	s9, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s9)
	mul	a0, s7, a0
	lui	s5, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s5)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -6(s3)
	and	a0, a0, s4
	lhu	a2, 8(s0)
	subw	a1, a1, a0
	lhu	a0, 8(s2)
	sw	a1, 472(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s9)
	lui	s9, %hi(wp_luma_round)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s5)
	lui	s5, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s4
	lhu	a2, 16(s0)
	subw	a1, a1, a0
	lhu	a0, 16(s2)
	sw	a1, 476(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s9)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s5)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s4
	lhu	a2, 24(s0)
	subw	a1, a1, a0
	lhu	a0, 24(s2)
	sw	a1, 480(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s9)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s5)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s4
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	ld	s3, 16(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s3, s3, s8
	mv	a0, s11
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	ld	s9, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s9
	ld	s8, 432(sp)                     # 8-byte Folded Reload
	mv	a4, s8
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s0, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	ld	s5, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s5
	mv	a3, s9
	mv	a4, s8
	jalr	a5
	lhu	a1, 0(s0)
	mv	s2, a0
	lhu	a0, 0(a0)
	mul	a1, s6, a1
	lui	s11, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s7, a0
	lui	s10, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -6(s3)
	and	a0, a0, s4
	lhu	a2, 8(s0)
	subw	a1, a1, a0
	lhu	a0, 8(s2)
	sw	a1, 488(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s11)
	lui	s11, %hi(wp_luma_round)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	lui	s10, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s4
	lhu	a2, 16(s0)
	subw	a1, a1, a0
	lhu	a0, 16(s2)
	sw	a1, 492(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s4
	lhu	a2, 24(s0)
	subw	a1, a1, a0
	lhu	a0, 24(s2)
	sw	a1, 496(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s11)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s10)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s4
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	ld	s3, 24(a2)
	lui	a2, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a2)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	add	s3, s3, a0
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	mv	a3, s9
	mv	a4, s8
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s0, a0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	mv	s11, s5
	mv	a2, s5
	mv	a3, s9
	mv	a4, s8
	jalr	a5
	lhu	a1, 0(s0)
	mv	s2, a0
	lhu	a0, 0(a0)
	mul	a1, s6, a1
	lui	s5, %hi(wp_luma_round)
	lw	a2, %lo(wp_luma_round)(s5)
	mul	a0, s7, a0
	lui	s8, %hi(luma_log_weight_denom)
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -6(s3)
	and	a0, a0, s4
	lhu	a2, 8(s0)
	subw	a1, a1, a0
	lhu	a0, 8(s2)
	sw	a1, 504(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s5)
	lui	s5, %hi(wp_luma_round)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	lui	s8, %hi(luma_log_weight_denom)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -4(s3)
	and	a0, a0, s4
	lhu	a2, 16(s0)
	subw	a1, a1, a0
	lhu	a0, 16(s2)
	sw	a1, 508(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s5)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, -2(s3)
	and	a0, a0, s4
	lhu	a2, 24(s0)
	subw	a1, a1, a0
	lhu	a0, 24(s2)
	sw	a1, 512(sp)
	mul	a1, s6, a2
	lw	a2, %lo(wp_luma_round)(s5)
	mul	a0, s7, a0
	lw	a3, %lo(luma_log_weight_denom)(s8)
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a0, a0, a2
	addi	a3, a3, 1
	sraw	a0, a0, a3
	addw	a0, a0, s1
	call	clip1a
	lhu	a1, 0(s3)
	and	a0, a0, s4
	subw	a1, a1, a0
	sw	a1, 516(sp)
	ld	a0, 344(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB16_90
# %bb.93:                               #   in Loop: Header=BB16_92 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 456
	call	SATD
	ld	s5, 368(sp)                     # 8-byte Folded Reload
	addw	s5, a0, s5
	ld	s4, 392(sp)                     # 8-byte Folded Reload
	ld	a7, 360(sp)                     # 8-byte Folded Reload
	ld	t0, 352(sp)                     # 8-byte Folded Reload
	bge	s4, s5, .LBB16_91
	j	.LBB16_104
.LBB16_94:                              # %.preheader
                                        #   in Loop: Header=BB16_83 Depth=1
	li	a2, 0
	sd	s4, 392(sp)                     # 8-byte Folded Spill
	j	.LBB16_96
.LBB16_95:                              #   in Loop: Header=BB16_96 Depth=2
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a2, a1, 4
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_102
.LBB16_96:                              #   Parent Loop BB16_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_100 Depth 3
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	sd	a2, 296(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB16_95
# %bb.97:                               #   in Loop: Header=BB16_96 Depth=2
	li	s11, 0
	li	a7, 0
	sltiu	a0, a2, 8
	addi	a0, a0, -1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	slli	a0, a2, 2
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	addiw	a3, a1, 4
	sd	a3, 384(sp)                     # 8-byte Folded Spill
	addiw	a3, a1, 8
	sd	a3, 376(sp)                     # 8-byte Folded Spill
	sd	a1, 408(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, 12
	sd	a1, 368(sp)                     # 8-byte Folded Spill
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	addiw	a1, a0, 4
	sd	a1, 352(sp)                     # 8-byte Folded Spill
	addiw	a1, a0, 8
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	sd	a0, 360(sp)                     # 8-byte Folded Spill
	addiw	a0, a0, 12
	sd	a0, 328(sp)                     # 8-byte Folded Spill
	slli	a0, a2, 3
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 320(sp)                     # 8-byte Folded Spill
	andi	a0, a0, 32
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	li	s10, 6
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 152(sp)                     # 8-byte Folded Reload
	j	.LBB16_100
.LBB16_98:                              #   in Loop: Header=BB16_100 Depth=3
	andi	a0, s11, 4
	ld	a7, 416(sp)                     # 8-byte Folded Reload
	sltiu	a1, a7, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 520
	add	a1, a6, a0
	lw	a2, 468(sp)
	lw	a3, 464(sp)
	lw	a4, 460(sp)
	lw	a5, 456(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 472
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
	addi	a5, sp, 488
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
	addi	a4, sp, 504
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
	ld	s4, 392(sp)                     # 8-byte Folded Reload
.LBB16_99:                              #   in Loop: Header=BB16_100 Depth=3
	addi	a7, a7, 4
	addiw	s11, s11, 4
	addi	s10, s10, 8
	addiw	s2, s2, 16
	addiw	s1, s1, 16
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	bge	s11, a0, .LBB16_95
.LBB16_100:                             #   Parent Loop BB16_83 Depth=1
                                        #     Parent Loop BB16_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	a7, 416(sp)                     # 8-byte Folded Spill
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	ld	a0, 0(s0)
	lui	a1, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a1)
	add	s6, a0, s10
	ld	s7, 440(sp)                     # 8-byte Folded Reload
	mv	a0, s7
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	ld	s4, 424(sp)                     # 8-byte Folded Reload
	mv	a3, s4
	ld	s9, 432(sp)                     # 8-byte Folded Reload
	mv	a4, s9
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	ld	s8, 448(sp)                     # 8-byte Folded Reload
	mv	a0, s8
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s9
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s6)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 456(sp)
	lhu	a1, -4(s6)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 460(sp)
	lhu	a1, -2(s6)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 464(sp)
	lhu	a1, 0(s6)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 8(s0)
	lui	a3, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a3)
	subw	a1, a1, a0
	sw	a1, 468(sp)
	add	s6, a2, s10
	mv	a0, s7
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s4
	mv	a4, s9
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	mv	a0, s8
	ld	a1, 384(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s9
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s6)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 472(sp)
	lhu	a1, -4(s6)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 476(sp)
	lhu	a1, -2(s6)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 480(sp)
	lhu	a1, 0(s6)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 16(s0)
	lui	a3, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a3)
	subw	a1, a1, a0
	sw	a1, 484(sp)
	add	s6, a2, s10
	mv	a0, s7
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s4
	mv	a4, s9
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	mv	a0, s8
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s9
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s6)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 488(sp)
	lhu	a1, -4(s6)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 492(sp)
	lhu	a1, -2(s6)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 496(sp)
	lhu	a1, 0(s6)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	ld	a2, 24(s0)
	lui	a3, %hi(get_line_p1)
	ld	a5, %lo(get_line_p1)(a3)
	subw	a1, a1, a0
	sw	a1, 500(sp)
	add	s6, a2, s10
	mv	a0, s7
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s4
	mv	a4, s9
	jalr	a5
	lui	a1, %hi(get_line_p2)
	ld	a5, %lo(get_line_p2)(a1)
	mv	s3, a0
	mv	a0, s8
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s4
	mv	a4, s9
	jalr	a5
	lhu	a1, 0(s3)
	lhu	a2, 0(a0)
	lhu	a3, -6(s6)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	lhu	a2, 8(s3)
	lhu	a4, 8(a0)
	subw	a3, a3, a1
	sw	a3, 504(sp)
	lhu	a1, -4(s6)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	lhu	a3, 16(s3)
	lhu	a4, 16(a0)
	subw	a1, a1, a2
	sw	a1, 508(sp)
	lhu	a1, -2(s6)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	lhu	a2, 24(s3)
	lhu	a0, 24(a0)
	subw	a1, a1, a3
	sw	a1, 512(sp)
	lhu	a1, 0(s6)
	add	a0, a2, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a1, a1, a0
	sw	a1, 516(sp)
	ld	a0, 344(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB16_98
# %bb.101:                              #   in Loop: Header=BB16_100 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 456
	call	SATD
	addw	s5, a0, s5
	ld	s4, 392(sp)                     # 8-byte Folded Reload
	ld	a7, 416(sp)                     # 8-byte Folded Reload
	bge	s4, s5, .LBB16_99
	j	.LBB16_104
.LBB16_102:                             #   in Loop: Header=BB16_83 Depth=1
	ld	a0, 344(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB16_104
# %bb.103:                              #   in Loop: Header=BB16_83 Depth=1
	addi	a0, sp, 520
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s5, a0, s5
.LBB16_104:                             #   in Loop: Header=BB16_83 Depth=1
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	mv	a0, a6
	blt	s5, s4, .LBB16_81
# %bb.105:                              #   in Loop: Header=BB16_83 Depth=1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	mv	s5, s4
	j	.LBB16_81
.LBB16_106:
	sext.w	a0, a5
	beqz	a0, .LBB16_108
# %bb.107:
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	slli	a0, a0, 1
	add	a1, a1, a0
	lh	a1, 0(a1)
	lh	a2, 0(s6)
	lui	a3, %hi(spiral_search_y)
	ld	a3, %lo(spiral_search_y)(a3)
	add	a1, a2, a1
	sh	a1, 0(s6)
	add	a0, a3, a0
	lh	a0, 0(a0)
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a2)
	add	a0, a1, a0
	sh	a0, 0(a2)
.LBB16_108:
	mv	a0, s4
	ld	ra, 1640(sp)                    # 8-byte Folded Reload
	ld	s0, 1632(sp)                    # 8-byte Folded Reload
	ld	s1, 1624(sp)                    # 8-byte Folded Reload
	ld	s2, 1616(sp)                    # 8-byte Folded Reload
	ld	s3, 1608(sp)                    # 8-byte Folded Reload
	ld	s4, 1600(sp)                    # 8-byte Folded Reload
	ld	s5, 1592(sp)                    # 8-byte Folded Reload
	ld	s6, 1584(sp)                    # 8-byte Folded Reload
	ld	s7, 1576(sp)                    # 8-byte Folded Reload
	ld	s8, 1568(sp)                    # 8-byte Folded Reload
	ld	s9, 1560(sp)                    # 8-byte Folded Reload
	ld	s10, 1552(sp)                   # 8-byte Folded Reload
	ld	s11, 1544(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1648
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
	mv	s1, a0
	slli	a0, a0, 3
	add	a6, s9, a0
	lw	t0, 88(a6)
	li	a7, 8
	sd	a5, 112(sp)                     # 8-byte Folded Spill
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	mv	a2, t0
	sd	t0, 24(sp)                      # 8-byte Folded Spill
	blt	t0, a7, .LBB17_2
# %bb.1:
	li	a2, 8
.LBB17_2:
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	li	a2, 4
	mv	a3, s1
	blt	s1, a2, .LBB17_4
# %bb.3:
	li	a3, 4
.LBB17_4:
	addi	t1, s9, 148
	slli	a5, a3, 3
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	add	a5, t1, a5
	lw	a2, 4(a5)
	lui	t3, 22
	ld	a7, 112(sp)                     # 8-byte Folded Reload
	beqz	a7, .LBB17_7
# %bb.5:
	addiw	t2, t3, -768
	lw	a6, 84(a6)
	sd	a6, 72(sp)                      # 8-byte Folded Spill
	bgtz	a2, .LBB17_8
.LBB17_6:
	li	s0, 0
	j	.LBB17_25
.LBB17_7:
	addiw	t2, t3, -760
	lw	a6, 84(a6)
	sd	a6, 72(sp)                      # 8-byte Folded Spill
	blez	a2, .LBB17_6
.LBB17_8:
	add	t1, t1, a0
	slli	a3, a3, 4
	lui	a6, %hi(PartitionMotionSearch.by0)
	addi	a6, a6, %lo(PartitionMotionSearch.by0)
	add	a6, a6, a3
	slli	a1, a1, 2
	add	a6, a6, a1
	lw	n15, 0(a6)
	lw	a5, 0(a5)
	lw	a7, 4(t1)
	addw	n16, n15, a2
	lui	a6, %hi(PartitionMotionSearch.bx0)
	addi	a6, a6, %lo(PartitionMotionSearch.bx0)
	blez	a5, .LBB17_14
# %bb.9:
	lui	t0, %hi(img)
	ld	t4, %lo(img)(t0)
	li	t0, 0
	lw	t1, 0(t1)
	add	t2, t4, t2
	ld	t2, 0(t2)
	add	t4, t4, t3
	add	t3, a6, a3
	add	t3, t3, a1
	lw	t3, 0(t3)
	ld	t4, -784(t4)
	lui	t5, %hi(mvbits)
	ld	t5, %lo(mvbits)(t5)
	addw	t6, t3, a5
	slli	n1, t3, 3
	slli	n2, t1, 3
	ld	n3, 96(sp)                      # 8-byte Folded Reload
	slli	n3, n3, 3
	ld	n4, 104(sp)                     # 8-byte Folded Reload
	slli	n4, n4, 3
	mv	n5, n15
.LBB17_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_11 Depth 2
	slli	n6, n5, 3
	add	n7, t2, n6
	add	n6, t4, n6
	ld	n6, 0(n6)
	ld	n7, 0(n7)
	add	n6, n6, n1
	add	n7, n7, n1
	mv	n8, t3
.LBB17_11:                              #   Parent Loop BB17_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n9, 0(n7)
	ld	n10, 0(n6)
	ld	n11, 0(n9)
	ld	n12, 0(n10)
	add	n11, n11, n3
	ld	n11, 0(n11)
	add	n12, n12, n3
	ld	n12, 0(n12)
	add	n11, n11, a0
	ld	n11, 0(n11)
	add	n12, n12, a0
	ld	n12, 0(n12)
	lh	n13, 0(n11)
	lh	n14, 0(n12)
	sub	n13, n13, n14
	slli	n13, n13, 2
	ld	n9, 8(n9)
	add	n13, t5, n13
	ld	n10, 8(n10)
	lh	n11, 2(n11)
	add	n9, n9, n4
	ld	n9, 0(n9)
	add	n10, n10, n4
	ld	n10, 0(n10)
	lh	n12, 2(n12)
	add	n9, n9, a0
	ld	n9, 0(n9)
	add	n10, n10, a0
	ld	n10, 0(n10)
	lw	n13, 0(n13)
	sub	n11, n11, n12
	lh	n12, 0(n9)
	lh	n14, 0(n10)
	slli	n11, n11, 2
	add	n11, t5, n11
	lw	n11, 0(n11)
	sub	n12, n12, n14
	lh	n9, 2(n9)
	lh	n10, 2(n10)
	slli	n12, n12, 2
	add	n12, t5, n12
	lw	n12, 0(n12)
	sub	n9, n9, n10
	slli	n9, n9, 2
	add	n9, t5, n9
	lw	n9, 0(n9)
	add	t0, n13, t0
	add	n11, n11, n12
	add	t0, t0, n11
	add	t0, t0, n9
	add	n8, n8, t1
	add	n6, n6, n2
	add	n7, n7, n2
	blt	n8, t6, .LBB17_11
# %bb.12:                               #   in Loop: Header=BB17_10 Depth=1
	add	n5, n5, a7
	blt	n5, n16, .LBB17_10
# %bb.13:
	mul	a0, t0, a4
	sraiw	s0, a0, 16
	bgtz	a2, .LBB17_17
	j	.LBB17_25
.LBB17_14:
	mv	a0, n15
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	addw	a0, a0, a7
	blt	a0, n16, .LBB17_15
# %bb.16:
	mul	a0, zero, a4
	sraiw	s0, a0, 16
	blez	a2, .LBB17_25
.LBB17_17:
	blez	a5, .LBB17_25
# %bb.18:
	add	a3, a6, a3
	add	a1, a3, a1
	lw	a0, 0(a1)
	addw	a5, a0, a5
	sd	a5, 88(sp)                      # 8-byte Folded Spill
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	slliw	a0, a0, 2
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addi	s8, sp, 264
	lui	s10, %hi(img)
	lui	a0, 3
	addiw	a0, a0, 312
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	sd	n16, 48(sp)                     # 8-byte Folded Spill
	lui	s2, %hi(img)
	j	.LBB17_20
.LBB17_19:                              #   in Loop: Header=BB17_20 Depth=1
	ld	n15, 64(sp)                     # 8-byte Folded Reload
	addi	n15, n15, 1
	ld	s8, 56(sp)                      # 8-byte Folded Reload
	addi	s8, s8, 256
	ld	n16, 48(sp)                     # 8-byte Folded Reload
	bge	n15, n16, .LBB17_25
.LBB17_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_23 Depth 2
	ld	a0, %lo(img)(s10)
	lw	a0, 172(a0)
	sd	n15, 64(sp)                     # 8-byte Folded Spill
	slliw	s5, n15, 2
	addw	s10, a0, s5
	addi	s3, s5, 1
	addi	s4, s5, 2
	addi	s7, s5, 3
	slli	s10, s10, 3
	sd	s10, 128(sp)                    # 8-byte Folded Spill
	slli	a0, s5, 5
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	slli	s3, s3, 5
	slli	s4, s4, 5
	slli	s7, s7, 5
	sd	s8, 56(sp)                      # 8-byte Folded Spill
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	j	.LBB17_23
.LBB17_21:                              #   in Loop: Header=BB17_23 Depth=2
	lw	a1, 24(s9)
	addi	a0, sp, 1160
	call	SATD
	addw	s0, a0, s0
.LBB17_22:                              #   in Loop: Header=BB17_23 Depth=2
	addi	s11, s11, 1
	addiw	s6, s6, 4
	addi	s8, s8, 16
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	bge	s11, a0, .LBB17_19
.LBB17_23:                              #   Parent Loop BB17_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s2)
	lw	a0, 168(a0)
	addw	s9, s6, a0
	li	a2, 2
	mv	a0, s6
	mv	a1, s5
	mv	a3, s1
	mv	a4, s1
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	ld	a7, 112(sp)                     # 8-byte Folded Reload
	call	LumaPrediction4x4Bi
	lui	a0, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a0)
	lui	s10, %hi(img)
	ld	a0, %lo(img)(s2)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	ld	t1, 0(a4)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	slli	a2, s9, 1
	add	a1, t1, a2
	lhu	a1, 0(a1)
	ld	t2, 120(sp)                     # 8-byte Folded Reload
	add	t2, a0, t2
	slli	a5, s6, 1
	add	a3, t2, a5
	lhu	a3, 0(a3)
	subw	a1, a1, a3
	sw	a1, -128(s8)
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
	sw	t0, -124(s8)
	sw	t0, 1164(sp)
	subw	t4, t4, t5
	sw	t4, -120(s8)
	sw	t4, 1168(sp)
	addi	t0, a2, 6
	add	t1, t1, t0
	lhu	t1, 0(t1)
	ld	t3, 8(a4)
	addi	t4, a5, 6
	add	t2, t2, t4
	lhu	t2, 0(t2)
	add	t5, t3, a2
	lhu	t5, 0(t5)
	add	t6, a0, s3
	add	n1, t6, a5
	lhu	n1, 0(n1)
	subw	t1, t1, t2
	sw	t1, -116(s8)
	sw	t1, 1172(sp)
	subw	t1, t5, n1
	sw	t1, -64(s8)
	sw	t1, 1176(sp)
	add	t1, t3, a1
	lhu	t1, 0(t1)
	add	t2, t6, a3
	lhu	t2, 0(t2)
	add	t5, t3, a6
	lhu	t5, 0(t5)
	add	n1, t6, a7
	lhu	n1, 0(n1)
	subw	t1, t1, t2
	sw	t1, -60(s8)
	sw	t1, 1180(sp)
	subw	t1, t5, n1
	sw	t1, -56(s8)
	sw	t1, 1184(sp)
	add	t3, t3, t0
	ld	t1, 16(a4)
	lhu	t2, 0(t3)
	add	t6, t6, t4
	lhu	t3, 0(t6)
	add	t5, t1, a2
	lhu	t5, 0(t5)
	add	t6, a0, s4
	add	n1, t6, a5
	lhu	n1, 0(n1)
	subw	t2, t2, t3
	sw	t2, -52(s8)
	sw	t2, 1188(sp)
	subw	t2, t5, n1
	sw	t2, 0(s8)
	sw	t2, 1192(sp)
	add	t2, t1, a1
	lhu	t2, 0(t2)
	add	t3, t6, a3
	lhu	t3, 0(t3)
	add	t5, t1, a6
	lhu	t5, 0(t5)
	add	n1, t6, a7
	lhu	n1, 0(n1)
	subw	t2, t2, t3
	sw	t2, 4(s8)
	sw	t2, 1196(sp)
	subw	t2, t5, n1
	sw	t2, 8(s8)
	sw	t2, 1200(sp)
	add	t1, t1, t0
	ld	a4, 24(a4)
	lhu	t1, 0(t1)
	add	t6, t6, t4
	lhu	t2, 0(t6)
	add	a2, a4, a2
	lhu	a2, 0(a2)
	add	a0, a0, s7
	add	a5, a0, a5
	lhu	a5, 0(a5)
	subw	t1, t1, t2
	sw	t1, 12(s8)
	sw	t1, 1204(sp)
	subw	a2, a2, a5
	sw	a2, 64(s8)
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
	sw	a1, 68(s8)
	sw	a1, 1212(sp)
	subw	a3, a3, a5
	add	a4, a4, t0
	lhu	a1, 0(a4)
	add	a0, a0, t4
	lhu	a0, 0(a0)
	sw	a3, 72(s8)
	sw	a3, 1216(sp)
	lui	a2, %hi(input)
	ld	s9, %lo(input)(a2)
	subw	a1, a1, a0
	sw	a1, 76(s8)
	sw	a1, 1220(sp)
	li	a0, 4
	blt	a0, s1, .LBB17_21
# %bb.24:                               #   in Loop: Header=BB17_23 Depth=2
	addi	a0, s9, 2047
	lw	a0, 1845(a0)
	bnez	a0, .LBB17_22
	j	.LBB17_21
.LBB17_25:
	li	a0, 4
	blt	a0, s1, .LBB17_39
# %bb.26:
	addi	a0, s9, 2047
	lw	a0, 1845(a0)
	beqz	a0, .LBB17_39
# %bb.27:
	addi	a0, s9, 84
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lw	a2, 4(a0)
	blez	a2, .LBB17_39
# %bb.28:
	lw	s3, 0(a0)
	blez	s3, .LBB17_37
# %bb.29:
	li	a0, 8
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	blt	a1, a0, .LBB17_31
# %bb.30:
	li	a1, 8
	sd	a1, 24(sp)                      # 8-byte Folded Spill
.LBB17_31:
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	blt	a3, a0, .LBB17_33
# %bb.32:
	li	a3, 8
.LBB17_33:
	li	a1, 0
	lw	a4, 24(s9)
	addi	s6, sp, 1192
	addi	s7, sp, 1224
	addi	s8, sp, 1256
	addi	s9, sp, 1288
	addi	s10, sp, 1320
	addi	s11, sp, 1352
	addi	s2, sp, 1384
	addi	s4, sp, 392
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 6
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	slli	s1, a3, 2
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	sd	a3, 72(sp)                      # 8-byte Folded Spill
.LBB17_34:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_35 Depth 2
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	li	a0, 0
	sd	s4, 112(sp)                     # 8-byte Folded Spill
.LBB17_35:                              #   Parent Loop BB17_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	a0, 128(sp)                     # 8-byte Folded Spill
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
	sw	a0, 0(s6)
	sw	a1, 4(s6)
	sw	a2, 8(s6)
	sw	a3, 12(s6)
	lw	a0, -176(s4)
	lw	a1, -172(s4)
	lw	a2, -168(s4)
	lw	a3, -164(s4)
	sw	a0, 16(s6)
	sw	a1, 20(s6)
	sw	a2, 24(s6)
	sw	a3, 28(s6)
	lw	a0, -100(s4)
	lw	a1, -104(s4)
	lw	a2, -108(s4)
	lw	a3, -112(s4)
	sw	a0, 28(s7)
	sw	a1, 24(s7)
	sw	a2, 20(s7)
	sw	a3, 16(s7)
	lw	a0, -116(s4)
	lw	a1, -120(s4)
	lw	a2, -124(s4)
	lw	a3, -128(s4)
	sw	a0, 12(s7)
	sw	a1, 8(s7)
	sw	a2, 4(s7)
	sw	a3, 0(s7)
	lw	a0, -64(s4)
	lw	a1, -60(s4)
	lw	a2, -56(s4)
	lw	a3, -52(s4)
	sw	a0, 0(s8)
	sw	a1, 4(s8)
	sw	a2, 8(s8)
	sw	a3, 12(s8)
	lw	a0, -48(s4)
	lw	a1, -44(s4)
	lw	a2, -40(s4)
	lw	a3, -36(s4)
	sw	a0, 16(s8)
	sw	a1, 20(s8)
	sw	a2, 24(s8)
	sw	a3, 28(s8)
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
	addi	a0, sp, 1160
	mv	a1, a4
	mv	s5, s0
	mv	s0, a4
	call	SATD8X8
	mv	a4, s0
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	addw	s0, a0, s5
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, a3
	add	s4, s4, s1
	blt	a0, s3, .LBB17_35
# %bb.36:                               #   in Loop: Header=BB17_34 Depth=1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	s4, s4, a0
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB17_34
	j	.LBB17_39
.LBB17_37:                              # %.preheader
	li	a0, 0
	ld	a1, 8(sp)                       # 8-byte Folded Reload
.LBB17_38:                              # =>This Inner Loop Header: Depth=1
	addw	a0, a0, a1
	blt	a0, a2, .LBB17_38
.LBB17_39:
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
	srai	s5, a3, 2
	slli	t6, s5, 3
	add	t1, t1, t6
	ld	t1, 0(t1)
	srai	t3, a2, 2
	slli	s8, t3, 3
	add	t1, t1, s8
	ld	t1, 0(t1)
	slli	s6, a1, 3
	add	t1, t1, s6
	ld	t2, 0(t1)
	lui	t1, %hi(input)
	ld	t4, %lo(input)(t1)
	slli	s11, a0, 3
	add	t1, t2, s11
	lw	t2, 892(a7)
	ld	t1, 0(t1)
	sd	a6, 208(sp)                     # 8-byte Folded Spill
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	sd	a4, 184(sp)                     # 8-byte Folded Spill
	slli	s7, a4, 3
	add	t5, t4, s7
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
	sd	a5, 168(sp)                     # 8-byte Folded Spill
	beqz	a4, .LBB18_5
# %bb.3:
	li	a4, 4
	sd	a4, 168(sp)                     # 8-byte Folded Spill
	j	.LBB18_5
.LBB18_4:
	sd	zero, 168(sp)                   # 8-byte Folded Spill
.LBB18_5:
	lw	a4, 168(t0)
	lw	a5, 172(t0)
	addi	a6, t4, 2047
	lw	t0, 1917(a6)
	lw	a6, 88(t5)
	sd	a6, 176(sp)                     # 8-byte Folded Spill
	li	a6, 3
	add	t1, t1, s7
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	sd	s8, 144(sp)                     # 8-byte Folded Spill
	sd	t6, 120(sp)                     # 8-byte Folded Spill
	bne	t0, a6, .LBB18_7
# %bb.6:
	lui	a6, %hi(EPZSDistortion)
	ld	t0, %lo(EPZSDistortion)(a6)
	mv	s9, a1
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	addw	a6, a6, a1
	slli	a6, a6, 3
	add	a1, t0, a6
	ld	a1, 0(a1)
	add	a1, a1, s7
	ld	a0, -8(a1)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	j	.LBB18_8
.LBB18_7:
	mv	s9, a1
	sd	zero, 112(sp)                   # 8-byte Folded Spill
.LBB18_8:
	lw	a0, 84(t5)
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	ld	a0, 0(t1)
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	s8, 8(a7)
	addw	a2, a4, a2
	sd	a2, 224(sp)                     # 8-byte Folded Spill
	addw	a3, a5, a3
	sd	a3, 216(sp)                     # 8-byte Folded Spill
	addi	a0, sp, 256
	call	ftime
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB18_11
# %bb.9:
	ld	s3, 160(sp)                     # 8-byte Folded Reload
	slli	s3, s3, 1
	ld	s2, 216(sp)                     # 8-byte Folded Reload
	slli	s2, s2, 3
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	slli	s4, s4, 3
	add	s4, s2, s4
	lui	s10, %hi(BlockMotionSearch.orig_pic)
	addi	s10, s10, %lo(BlockMotionSearch.orig_pic)
	lui	s0, %hi(imgY_org)
	ld	s1, 224(sp)                     # 8-byte Folded Reload
	slli	s1, s1, 1
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(imgY_org)(s0)
	add	a0, a0, s2
	ld	a1, 0(a0)
	ld	a0, 0(s10)
	add	a1, a1, s1
	mv	a2, s3
	call	memcpy
	addi	s2, s2, 8
	addi	s10, s10, 8
	bne	s2, s4, .LBB18_10
.LBB18_11:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	li	a1, 2
	beq	a0, a1, .LBB18_14
# %bb.12:
	li	a1, 1
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	mv	s10, s9
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	bne	a0, a1, .LBB18_15
# %bb.13:
	mv	a0, a3
	mv	a1, s10
	mv	a2, s5
	mv	a3, s3
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	mv	a5, s8
	call	setup_FME
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	j	.LBB18_15
.LBB18_14:
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	mv	a0, s0
	mv	s10, s9
	mv	a1, s9
	mv	a2, s5
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	mv	a3, s3
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	mv	a5, s8
	call	simplified_setup_FME
	mv	a3, s0
	ld	s4, 160(sp)                     # 8-byte Folded Reload
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
	ld	s1, 176(sp)                     # 8-byte Folded Reload
	sd	s1, 0(sp)
	ld	s0, 200(sp)                     # 8-byte Folded Reload
	mv	a0, s0
	mv	a4, s10
	mv	a5, s3
	mv	a6, s5
	mv	a7, s4
	call	SetMotionVectorPredictor
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lh	s2, 0(s0)
	addi	a0, a0, 2047
	lw	a1, 1917(a0)
	lh	s0, 2(s0)
	li	a2, 3
	srai	s9, s1, 2
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	beq	a1, a2, .LBB18_28
# %bb.16:
	li	a2, 2
	ld	s1, 144(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	ld	a7, 136(sp)                     # 8-byte Folded Reload
	beq	a1, a2, .LBB18_23
# %bb.17:
	li	a2, 1
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	bne	a1, a2, .LBB18_30
# %bb.18:
	slli	a1, s2, 33
	srli	a1, a1, 62
	add	a1, s2, a1
	slli	a1, a1, 48
	srai	a1, a1, 50
	slli	a2, s0, 33
	lw	a3, 1089(a0)
	srli	a2, a2, 62
	add	a2, s0, a2
	slli	a0, a2, 48
	srai	a0, a0, 50
	bnez	a3, .LBB18_69
# %bb.19:
	negw	a2, a7
	blt	a1, a7, .LBB18_65
# %bb.20:
	mv	a1, a7
	bge	a2, a7, .LBB18_66
.LBB18_21:
	blt	a0, a7, .LBB18_67
.LBB18_22:
	mv	a0, a7
	bge	a2, a7, .LBB18_68
	j	.LBB18_69
.LBB18_23:
	slli	a1, s2, 33
	srli	a1, a1, 62
	add	a1, s2, a1
	slli	a1, a1, 48
	srai	a4, a1, 50
	slli	a2, s0, 33
	lw	a3, 1089(a0)
	srli	a2, a2, 62
	add	a2, s0, a2
	slli	a0, a2, 48
	srai	a0, a0, 50
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	bnez	a3, .LBB18_35
# %bb.24:
	negw	a2, a7
	blt	a4, a7, .LBB18_31
# %bb.25:
	mv	a4, a7
	bge	a2, a7, .LBB18_32
.LBB18_26:
	blt	a0, a7, .LBB18_33
.LBB18_27:
	mv	a0, a7
	bge	a2, a7, .LBB18_34
	j	.LBB18_35
.LBB18_28:
	slli	a1, s2, 33
	srli	a1, a1, 62
	add	a1, s2, a1
	slli	a1, a1, 48
	srai	a4, a1, 50
	slli	a2, s0, 33
	lw	a3, 1089(a0)
	srli	a2, a2, 62
	add	a2, s0, a2
	slli	a0, a2, 48
	srai	a0, a0, 50
	ld	s1, 144(sp)                     # 8-byte Folded Reload
	ld	a7, 136(sp)                     # 8-byte Folded Reload
	beqz	a3, .LBB18_49
# %bb.29:
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	j	.LBB18_57
.LBB18_30:
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	sd	a0, 32(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 24(sp)
	sd	a7, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a0, sp, 278
	sd	a0, 0(sp)
	mv	a1, a6
	mv	a2, s10
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	mv	a7, s0
	call	FastFullPelBlockMotionSearch
	j	.LBB18_92
.LBB18_31:
	blt	a2, a4, .LBB18_26
.LBB18_32:
	mv	a4, a2
	bge	a0, a7, .LBB18_27
.LBB18_33:
	blt	a2, a0, .LBB18_35
.LBB18_34:
	mv	a0, a2
.LBB18_35:
	slli	a2, a4, 48
	srai	a2, a2, 48
	li	a3, 2047
	subw	a3, a3, a7
	addiw	a6, a7, -2047
	blt	a3, a2, .LBB18_37
# %bb.36:
	mv	a3, a2
.LBB18_37:
	blt	a2, a6, .LBB18_39
# %bb.38:
	mv	a6, a3
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
	addw	a0, a4, a7
	sh	a6, 278(sp)
	blt	a2, a0, .LBB18_42
# %bb.40:
	lw	a0, 4(a3)
	subw	a0, a0, a7
	blt	a0, a2, .LBB18_42
# %bb.41:
	mv	a0, a2
.LBB18_42:
	sh	a0, 276(sp)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	sd	a0, 32(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 24(sp)
	sd	a7, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a2, sp, 278
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a2, 0(sp)
	mv	a2, s10
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	mv	a7, s0
	call	simplified_FastIntegerPelBlockMotionSearch
	srai	a1, s4, 2
	blez	a1, .LBB18_92
# %bb.43:
	blez	s9, .LBB18_92
# %bb.44:
	add	a2, s9, s5
	li	a3, 0
	beqz	s10, .LBB18_88
# %bb.45:                               # %.preheader9
	lui	a4, %hi(simplified_fastme_l1_cost)
	lui	a5, %hi(img)
.LBB18_46:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_47 Depth 2
	ld	a6, %lo(simplified_fastme_l1_cost)(a4)
	add	a7, a6, s7
	ld	a6, %lo(img)(a5)
	ld	a7, 0(a7)
	add	t0, a3, s3
	mv	t1, s5
.LBB18_47:                              #   Parent Loop BB18_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t2, 156(a6)
	srli	t2, t2, 2
	addw	t2, t1, t2
	lw	t3, 152(a6)
	slli	t2, t2, 3
	add	t2, a7, t2
	ld	t2, 0(t2)
	srli	t3, t3, 2
	addw	t3, t0, t3
	slli	t3, t3, 2
	add	t2, t2, t3
	addiw	t1, t1, 1
	sw	a0, 0(t2)
	bne	t1, a2, .LBB18_47
# %bb.48:                               #   in Loop: Header=BB18_46 Depth=1
	addiw	a3, a3, 1
	bne	a3, a1, .LBB18_46
	j	.LBB18_92
.LBB18_49:
	negw	a2, a7
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	blt	a4, a7, .LBB18_53
# %bb.50:
	mv	a4, a7
	bge	a2, a7, .LBB18_54
.LBB18_51:
	blt	a0, a7, .LBB18_55
.LBB18_52:
	mv	a0, a7
	bge	a2, a7, .LBB18_56
	j	.LBB18_57
.LBB18_53:
	blt	a2, a4, .LBB18_51
.LBB18_54:
	mv	a4, a2
	bge	a0, a7, .LBB18_52
.LBB18_55:
	blt	a2, a0, .LBB18_57
.LBB18_56:
	mv	a0, a2
.LBB18_57:
	slli	a2, a4, 48
	srai	a2, a2, 48
	li	a3, 2047
	subw	a3, a3, a7
	addiw	a5, a7, -2047
	blt	a3, a2, .LBB18_59
# %bb.58:
	mv	a3, a2
.LBB18_59:
	blt	a2, a5, .LBB18_61
# %bb.60:
	mv	a5, a3
.LBB18_61:
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
	sh	a5, 278(sp)
	blt	a2, a0, .LBB18_64
# %bb.62:
	lw	a0, 4(a3)
	subw	a0, a0, a7
	blt	a0, a2, .LBB18_64
# %bb.63:
	mv	a0, a2
.LBB18_64:
	lui	a2, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a2)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a2, a3, a2
	ld	a4, 0(a2)
	ld	a5, 24(a2)
	sh	a0, 276(sp)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	sd	a0, 56(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 48(sp)
	sd	a7, 40(sp)
	addi	a0, sp, 276
	sd	a0, 32(sp)
	addi	a0, sp, 278
	sd	a0, 24(sp)
	sd	s0, 16(sp)
	sd	s2, 8(sp)
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a6, 0(sp)
	mv	a2, s10
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	call	EPZSPelBlockMotionSearch
	j	.LBB18_92
.LBB18_65:
	blt	a2, a1, .LBB18_21
.LBB18_66:
	mv	a1, a2
	bge	a0, a7, .LBB18_22
.LBB18_67:
	blt	a2, a0, .LBB18_69
.LBB18_68:
	mv	a0, a2
.LBB18_69:
	slli	a1, a1, 48
	srai	a2, a1, 48
	li	a1, 2047
	subw	a3, a1, a7
	addiw	a1, a7, -2047
	blt	a3, a2, .LBB18_71
# %bb.70:
	mv	a3, a2
.LBB18_71:
	blt	a2, a1, .LBB18_73
# %bb.72:
	mv	a1, a3
.LBB18_73:
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
	blt	a2, a0, .LBB18_76
# %bb.74:
	lw	a0, 4(a3)
	subw	a0, a0, a7
	blt	a0, a2, .LBB18_76
# %bb.75:
	mv	a0, a2
.LBB18_76:
	sh	a0, 276(sp)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	sd	a0, 32(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 24(sp)
	sd	a7, 16(sp)
	addi	a0, sp, 276
	sd	a0, 8(sp)
	addi	a1, sp, 278
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 0(sp)
	mv	a1, a6
	mv	a2, s10
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	mv	a7, s0
	call	FastIntegerPelBlockMotionSearch
	srai	a1, s4, 2
	blez	a1, .LBB18_92
# %bb.77:
	blez	s9, .LBB18_92
# %bb.78:
	li	a2, 0
	add	a3, s9, s5
	slli	a4, s9, 3
	ld	n4, 120(sp)                     # 8-byte Folded Reload
	add	a4, n4, a4
	lui	a5, %hi(img)
	lui	a6, %hi(fastme_l0_cost)
	lui	a7, %hi(fastme_ref_cost)
	lui	t0, %hi(fastme_l1_cost)
	ld	n3, 192(sp)                     # 8-byte Folded Reload
	j	.LBB18_80
.LBB18_79:                              #   in Loop: Header=BB18_80 Depth=1
	addi	a2, a2, 1
	beq	a2, a1, .LBB18_92
.LBB18_80:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_82 Depth 2
                                        #     Child Loop BB18_85 Depth 2
                                        #     Child Loop BB18_87 Depth 2
	ld	t1, %lo(img)(a5)
	add	t2, a2, s3
	beqz	s10, .LBB18_83
# %bb.81:                               #   in Loop: Header=BB18_80 Depth=1
	ld	t3, %lo(fastme_l1_cost)(t0)
	add	t3, t3, s7
	ld	t3, 0(t3)
	mv	t4, s5
.LBB18_82:                              #   Parent Loop BB18_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t5, 156(t1)
	srli	t5, t5, 2
	addw	t5, t4, t5
	lw	t6, 152(t1)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	srli	t6, t6, 2
	addw	t6, t6, t2
	slli	t6, t6, 2
	add	t5, t5, t6
	addiw	t4, t4, 1
	sw	a0, 0(t5)
	bne	t4, a3, .LBB18_82
	j	.LBB18_79
.LBB18_83:                              #   in Loop: Header=BB18_80 Depth=1
	ld	t3, %lo(fastme_ref_cost)(a7)
	add	t3, t3, s11
	ld	t3, 0(t3)
	add	t3, t3, s7
	ld	t5, 0(t3)
	slli	t3, t2, 2
	beqz	n3, .LBB18_86
# %bb.84:                               #   in Loop: Header=BB18_80 Depth=1
	add	t1, t5, n4
	add	t2, t5, a4
.LBB18_85:                              #   Parent Loop BB18_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(t1)
	add	t4, t4, t3
	addi	t1, t1, 8
	sw	a0, 0(t4)
	bne	t1, t2, .LBB18_85
	j	.LBB18_79
.LBB18_86:                              #   in Loop: Header=BB18_80 Depth=1
	ld	t4, %lo(fastme_l0_cost)(a6)
	add	t4, t4, s7
	ld	t4, 0(t4)
	add	t5, t5, n4
	mv	t6, s5
.LBB18_87:                              #   Parent Loop BB18_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n1, 0(t5)
	add	n1, n1, t3
	sw	a0, 0(n1)
	lw	n1, 156(t1)
	srli	n1, n1, 2
	addw	n1, t6, n1
	lw	n2, 152(t1)
	slli	n1, n1, 3
	add	n1, t4, n1
	ld	n1, 0(n1)
	srli	n2, n2, 2
	addw	n2, n2, t2
	slli	n2, n2, 2
	add	n1, n1, n2
	sw	a0, 0(n1)
	addiw	t6, t6, 1
	addi	t5, t5, 8
	bne	t6, a3, .LBB18_87
	j	.LBB18_79
.LBB18_88:                              # %.preheader7
	lui	a4, %hi(simplified_fastme_l0_cost)
	lui	a5, %hi(img)
.LBB18_89:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_90 Depth 2
	ld	a6, %lo(simplified_fastme_l0_cost)(a4)
	add	a7, a6, s7
	ld	a6, %lo(img)(a5)
	ld	a7, 0(a7)
	add	t0, a3, s3
	mv	t1, s5
.LBB18_90:                              #   Parent Loop BB18_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t2, 156(a6)
	srli	t2, t2, 2
	addw	t2, t1, t2
	lw	t3, 152(a6)
	slli	t2, t2, 3
	add	t2, a7, t2
	ld	t2, 0(t2)
	srli	t3, t3, 2
	addw	t3, t0, t3
	slli	t3, t3, 2
	add	t2, t2, t3
	addiw	t1, t1, 1
	sw	a0, 0(t2)
	bne	t1, a2, .LBB18_90
# %bb.91:                               #   in Loop: Header=BB18_89 Depth=1
	addiw	a3, a3, 1
	bne	a3, a1, .LBB18_89
.LBB18_92:
	lui	s0, %hi(input)
	ld	a1, %lo(input)(s0)
	lh	a2, 278(sp)
	lh	a3, 276(sp)
	lw	a4, 28(a1)
	slli	a2, a2, 2
	sh	a2, 278(sp)
	slli	a3, a3, 2
	sh	a3, 276(sp)
	sd	s2, 104(sp)                     # 8-byte Folded Spill
	bnez	a4, .LBB18_105
# %bb.93:
	addi	a2, a1, 2047
	lw	a3, 1917(a2)
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	beqz	a6, .LBB18_98
# %bb.94:
	li	a4, 3
	bne	a3, a4, .LBB18_98
# %bb.95:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 28(a2)
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB18_140
.LBB18_96:
	lw	a1, 24(a1)
	li	a2, 1
	bne	a1, a2, .LBB18_104
# %bb.97:
	lui	a0, 524288
	addiw	a0, a0, -1
	j	.LBB18_104
.LBB18_98:
	lw	a1, 24(a1)
	li	a4, 1
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	bne	a1, a4, .LBB18_100
# %bb.99:
	lui	a0, 524288
	addiw	a0, a0, -1
.LBB18_100:
	li	a4, 2
	beq	a3, a4, .LBB18_142
# %bb.101:
	li	a4, 1
	bne	a3, a4, .LBB18_104
# %bb.102:
	li	a3, 4
	blt	a5, a3, .LBB18_104
# %bb.103:
	lw	a2, 1845(a2)
	snez	a2, a2
	addi	a3, a5, -4
	seqz	a3, a3
	snez	a1, a1
	and	a1, a1, a3
	and	a1, a2, a1
	ld	a2, 208(sp)                     # 8-byte Folded Reload
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
	mv	a1, a6
	mv	a2, s10
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	call	FastSubPelBlockMotionSearch
	j	.LBB18_144
.LBB18_104:
	ld	a1, 208(sp)                     # 8-byte Folded Reload
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
	mv	a1, a6
	mv	a2, s10
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	call	SubPelBlockMotionSearch
.LBB18_105:
	ld	a5, 184(sp)                     # 8-byte Folded Reload
.LBB18_106:
	addi	a1, a5, -1
	li	a2, 1
	seqz	s2, a1
	bne	a5, a2, .LBB18_112
# %bb.107:
	ld	a1, %lo(input)(s0)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	bnez	a1, .LBB18_112
# %bb.108:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	li	a2, 3
	li	s2, 1
	beq	a1, a2, .LBB18_110
# %bb.109:
	bnez	a1, .LBB18_112
.LBB18_110:
	mv	s0, a0
	call	FindSkipModeMotionVector
	li	a0, 0
	call	GetSkipCostMB
	lui	a1, 1
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	sraiw	a1, a1, 13
	subw	a0, a0, a1
	bge	a0, s0, .LBB18_124
# %bb.111:
	sd	a0, 184(sp)                     # 8-byte Folded Spill
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
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	add	s0, s9, s5
	bgtz	s9, .LBB18_113
	j	.LBB18_120
.LBB18_112:
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	add	s0, s9, s5
	blez	s9, .LBB18_120
.LBB18_113:
	srai	a0, s4, 2
	blez	a0, .LBB18_120
# %bb.114:
	add	a1, a0, s3
	addi	a0, s3, 1
	blt	a1, a0, .LBB18_116
# %bb.115:
	mv	a0, a1
.LBB18_116:
	slli	a0, a0, 3
	mv	a1, s5
.LBB18_117:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_118 Depth 2
	slli	a2, a1, 3
	add	a2, s8, a2
	ld	a4, 0(a2)
	lhu	a2, 278(sp)
	add	a3, a4, s1
	add	a4, a4, a0
.LBB18_118:                             #   Parent Loop BB18_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 0(a3)
	add	a5, a5, s6
	ld	a5, 0(a5)
	add	a5, a5, s11
	ld	a5, 0(a5)
	add	a5, a5, s7
	ld	a5, 0(a5)
	sh	a2, 0(a5)
	lh	a6, 276(sp)
	addi	a3, a3, 8
	sh	a6, 2(a5)
	bne	a3, a4, .LBB18_118
# %bb.119:                              #   in Loop: Header=BB18_117 Depth=1
	addi	a1, a1, 1
	blt	a1, s0, .LBB18_117
.LBB18_120:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 1
	bne	a1, a2, .LBB18_165
# %bb.121:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a1, 1264(a1)
	snez	a1, a1
	seqz	a2, a7
	and	a2, s2, a2
	and	a1, a2, a1
	beqz	a1, .LBB18_165
# %bb.122:
	seqz	a4, s10
	lui	a1, 22
	beqz	s10, .LBB18_125
# %bb.123:
	addiw	a1, a1, -768
	j	.LBB18_126
.LBB18_124:
	sd	s0, 184(sp)                     # 8-byte Folded Spill
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	add	s0, s9, s5
	bgtz	s9, .LBB18_113
	j	.LBB18_120
.LBB18_125:
	addiw	a1, a1, -760
.LBB18_126:
	sd	s9, 136(sp)                     # 8-byte Folded Spill
	add	a0, a0, a1
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	ld	s2, 0(a0)
	lui	a0, 2
	addiw	a0, a0, -1712
	add	a0, a1, a0
	ld	a1, 0(a0)
	xori	a2, s10, 1
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 3
	ld	a0, 24(a0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a2, a4, 3
	add	a0, a0, a2
	ld	a2, 0(a0)
	addi	a0, sp, 240
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	sd	a3, 0(sp)
	li	a3, 0
	mv	a5, s3
	mv	a6, s5
	mv	a7, s4
	call	SetMotionVectorPredictor
	lh	a0, 278(sp)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a0, a0, 2
	lh	a2, 276(sp)
	srai	a0, a0, 2
	lw	a3, 1268(a1)
	sh	a0, 278(sp)
	addi	a2, a2, 2
	srai	a2, a2, 2
	sh	a2, 276(sp)
	sd	s2, 120(sp)                     # 8-byte Folded Spill
	bltz	a3, .LBB18_129
# %bb.127:
	lh	s6, 240(sp)
	lh	s9, 242(sp)
	addi	a3, s6, 2
	srli	a3, a3, 2
	addi	a4, s9, 2
	srli	a4, a4, 2
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	lh	a6, 0(a5)
	lh	a7, 2(a5)
	sh	a0, 234(sp)
	sh	a2, 232(sp)
	sh	a3, 238(sp)
	addi	a0, a1, 2047
	lw	a0, 1917(a0)
	sh	a4, 236(sp)
	slli	a2, s10, 48
	li	a3, 3
	srai	a2, a2, 48
	bne	a0, a3, .LBB18_130
# %bb.128:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a3, 2
	addiw	a3, a3, -1712
	add	a0, a0, a3
	ld	a4, 0(a0)
	ld	a5, 24(a0)
	lw	a0, 1272(a1)
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	sd	a1, 88(sp)
	lui	a1, 524288
	addiw	a1, a1, -1
	sd	a1, 80(sp)
	sd	a0, 72(sp)
	addi	a0, sp, 232
	sd	a0, 64(sp)
	addi	a0, sp, 234
	sd	a0, 56(sp)
	addi	a0, sp, 236
	sd	a0, 48(sp)
	addi	a0, sp, 238
	sd	a0, 40(sp)
	sd	s9, 32(sp)
	sd	s6, 24(sp)
	sd	a7, 16(sp)
	sd	a6, 8(sp)
	li	a1, 1
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	sd	a1, 0(sp)
	li	a1, 0
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	call	EPZSBiPredBlockMotionSearch
	j	.LBB18_131
.LBB18_129:
	lhu	a2, 234(sp)
	lhu	a3, 232(sp)
	li	s11, 0
	li	s3, 0
	lui	a0, 524288
	addiw	a0, a0, -1
	j	.LBB18_146
.LBB18_130:
	lw	a0, 1272(a1)
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	sd	a1, 64(sp)
	lui	a1, 524288
	addiw	a1, a1, -1
	sd	a1, 56(sp)
	sd	a0, 48(sp)
	addi	a0, sp, 232
	sd	a0, 40(sp)
	addi	a0, sp, 234
	sd	a0, 32(sp)
	addi	a0, sp, 236
	sd	a0, 24(sp)
	addi	a0, sp, 238
	sd	a0, 16(sp)
	sd	s9, 8(sp)
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	li	a5, 1
	sd	s6, 0(sp)
	li	a1, 0
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	call	FullPelBlockMotionBiPred
.LBB18_131:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lhu	a2, 234(sp)
	lhu	a3, 232(sp)
	lw	a4, 1268(a1)
	sh	a2, 278(sp)
	sh	a3, 276(sp)
	blez	a4, .LBB18_145
# %bb.132:                              # %.preheader
	sd	s10, 176(sp)                    # 8-byte Folded Spill
	li	s2, 0
	lui	a4, 2
	addiw	s10, a4, -1712
	lui	s8, %hi(BlockMotionSearch.orig_pic)
	addi	s8, s8, %lo(BlockMotionSearch.orig_pic)
	j	.LBB18_135
.LBB18_133:                             #   in Loop: Header=BB18_135 Depth=1
	lw	a1, 1272(a1)
	sraw	a1, a1, s2
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	sd	a4, 64(sp)
	sd	a0, 56(sp)
	sd	a1, 48(sp)
	addi	a0, sp, 232
	sd	a0, 40(sp)
	addi	a0, sp, 234
	sd	a0, 32(sp)
	addi	a0, sp, 236
	sd	a0, 24(sp)
	addi	a0, sp, 238
	sd	a0, 16(sp)
	srai	a0, t0, 48
	sd	a0, 8(sp)
	srai	a0, a7, 48
	srai	a6, a6, 48
	srai	a7, a3, 48
	li	a5, 1
	sd	a0, 0(sp)
	mv	a0, s8
	li	a1, 0
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	call	FullPelBlockMotionBiPred
.LBB18_134:                             #   in Loop: Header=BB18_135 Depth=1
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lhu	a2, 234(sp)
	lhu	a3, 232(sp)
	lw	a4, 1268(a1)
	sh	a2, 278(sp)
	sh	a3, 276(sp)
	bge	s2, a4, .LBB18_147
.LBB18_135:                             # =>This Inner Loop Header: Depth=1
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	lhu	s11, 0(a4)
	lhu	s3, 2(a4)
	addiw	s2, s2, 1
	andi	a4, s2, 1
	bnez	a4, .LBB18_137
# %bb.136:                              #   in Loop: Header=BB18_135 Depth=1
	lh	a4, 238(sp)
	lhu	a5, 236(sp)
	sh	a4, 234(sp)
	mv	a6, s11
	mv	a4, s3
	mv	s11, s6
	mv	s3, s9
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	j	.LBB18_138
.LBB18_137:                             #   in Loop: Header=BB18_135 Depth=1
	lh	a4, 238(sp)
	lhu	a5, 236(sp)
	sh	a4, 234(sp)
	mv	a6, s6
	mv	a4, s9
	ld	s4, 192(sp)                     # 8-byte Folded Reload
.LBB18_138:                             #   in Loop: Header=BB18_135 Depth=1
	sh	a5, 232(sp)
	sh	a2, 238(sp)
	sh	a3, 236(sp)
	addi	a2, a1, 2047
	lw	a5, 1917(a2)
	slli	a2, s4, 48
	srai	a2, a2, 48
	slli	t0, s3, 48
	slli	a7, s11, 48
	slli	a3, a4, 48
	slli	a6, a6, 48
	li	a4, 3
	bne	a5, a4, .LBB18_133
# %bb.139:                              #   in Loop: Header=BB18_135 Depth=1
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	add	a5, a4, s10
	ld	a4, 0(a5)
	ld	a5, 24(a5)
	lw	a1, 1272(a1)
	ld	t1, 208(sp)                     # 8-byte Folded Reload
	sd	t1, 88(sp)
	sd	a0, 80(sp)
	sd	a1, 72(sp)
	addi	a0, sp, 232
	sd	a0, 64(sp)
	addi	a0, sp, 234
	sd	a0, 56(sp)
	addi	a0, sp, 236
	sd	a0, 48(sp)
	addi	a0, sp, 238
	sd	a0, 40(sp)
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
	mv	a0, s8
	li	a1, 0
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	call	EPZSBiPredBlockMotionSearch
	j	.LBB18_134
.LBB18_140:
	blez	a6, .LBB18_106
# %bb.141:
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	andi	a2, a2, -4
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	lw	a2, 0(a2)
	lui	a3, %hi(.LCPI18_0)
	fld	fa5, %lo(.LCPI18_0)(a3)
	fcvt.d.w	fa4, a0
	fcvt.d.w	fa3, a2
	fmul.d	fa5, fa3, fa5
	flt.d	a2, fa4, fa5
	bnez	a2, .LBB18_96
	j	.LBB18_106
.LBB18_142:
	blt	a5, a4, .LBB18_166
# %bb.143:
	lw	a2, 1845(a2)
	snez	a2, a2
	sltiu	a3, a5, 5
	snez	a1, a1
	and	a1, a1, a3
	and	a1, a2, a1
	ld	a2, 208(sp)                     # 8-byte Folded Reload
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
	mv	a1, a6
	mv	a2, s10
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	call	simplified_FastSubPelBlockMotionSearch
.LBB18_144:
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	li	s2, 0
	add	s0, s9, s5
	bgtz	s9, .LBB18_113
	j	.LBB18_120
.LBB18_145:
	mv	s11, s6
	mv	s3, s9
.LBB18_146:
	mv	s4, s10
.LBB18_147:
	slli	a2, a2, 2
	sh	a2, 278(sp)
	slli	a3, a3, 2
	lh	a4, 238(sp)
	sh	a3, 276(sp)
	lh	a3, 236(sp)
	lw	a2, 1276(a1)
	slli	a4, a4, 2
	sh	a4, 238(sp)
	slli	a3, a3, 2
	sh	a3, 236(sp)
	ld	s2, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 120(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB18_157
# %bb.148:
	lw	a3, 28(a1)
	bnez	a3, .LBB18_152
# %bb.149:
	lw	a1, 24(a1)
	beqz	a1, .LBB18_151
# %bb.150:
	lui	a0, 524288
	addiw	a0, a0, -1
.LBB18_151:
	ld	a1, 208(sp)                     # 8-byte Folded Reload
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
	slli	a2, s4, 48
	srai	a2, a2, 48
	slli	s11, s11, 48
	srai	a6, s11, 48
	slli	s3, s3, 48
	srai	a7, s3, 48
	lui	a0, %hi(BlockMotionSearch.orig_pic)
	addi	a0, a0, %lo(BlockMotionSearch.orig_pic)
	li	a5, 1
	sd	a1, 0(sp)
	li	a1, 0
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	call	SubPelBlockSearchBiPred
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a2, 1276(a1)
.LBB18_152:
	li	a3, 2
	bne	a2, a3, .LBB18_157
# %bb.153:
	lw	a2, 28(a1)
	bnez	a2, .LBB18_157
# %bb.154:
	lw	a1, 24(a1)
	beqz	a1, .LBB18_156
# %bb.155:
	lui	a0, 524288
	addiw	a0, a0, -1
.LBB18_156:
	slli	a1, s4, 48
	srli	a1, a1, 48
	seqz	a2, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
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
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	call	SubPelBlockSearchBiPred
.LBB18_157:
	blez	s2, .LBB18_165
# %bb.158:
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	srai	a0, a0, 2
	blez	a0, .LBB18_165
# %bb.159:
	slli	a1, s4, 48
	srai	a1, a1, 48
	xori	a2, s4, 1
	slli	a2, a2, 48
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	add	a3, a0, a4
	addi	a0, a4, 1
	srai	a2, a2, 48
	blt	a3, a0, .LBB18_161
# %bb.160:
	mv	a0, a3
.LBB18_161:
	slli	a0, a0, 3
	slli	a1, a1, 3
	slli	a2, a2, 3
.LBB18_162:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_163 Depth 2
	slli	a3, s5, 3
	add	a3, s6, a3
	ld	a4, 0(a3)
	add	a3, a4, s1
	add	a4, a4, a0
.LBB18_163:                             #   Parent Loop BB18_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 0(a3)
	add	a6, a5, a1
	ld	a6, 0(a6)
	ld	a6, 0(a6)
	lh	a7, 278(sp)
	add	a6, a6, s7
	ld	a6, 0(a6)
	sh	a7, 0(a6)
	lh	a7, 276(sp)
	sh	a7, 2(a6)
	add	a5, a5, a2
	ld	a5, 0(a5)
	ld	a5, 0(a5)
	lh	a6, 238(sp)
	add	a5, a5, s7
	ld	a5, 0(a5)
	sh	a6, 0(a5)
	lh	a6, 236(sp)
	addi	a3, a3, 8
	sh	a6, 2(a5)
	bne	a3, a4, .LBB18_163
# %bb.164:                              #   in Loop: Header=BB18_162 Depth=1
	addi	s5, s5, 1
	blt	s5, s0, .LBB18_162
.LBB18_165:
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
	ld	a0, 184(sp)                     # 8-byte Folded Reload
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
.LBB18_166:
	ld	a1, 208(sp)                     # 8-byte Folded Reload
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
	mv	a1, a6
	mv	a2, s10
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	call	simplified_FastFullSubPelBlockMotionSearch
	j	.LBB18_105
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
	ld	a1, 0(a1)
	srli	a2, a0, 16
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 0(s0)
	ld	a1, 8(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 0(s0)
	ld	a1, 16(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 0(s0)
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 8(s0)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 8(s0)
	ld	a1, 8(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 8(s0)
	ld	a1, 16(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 8(s0)
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 16(s0)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 16(s0)
	ld	a1, 8(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 16(s0)
	ld	a1, 16(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 16(s0)
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 24(s0)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 24(s0)
	ld	a1, 8(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 24(s0)
	ld	a1, 16(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
	ld	a1, 24(s0)
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	sh	a2, 2(a1)
	sh	a0, 0(a1)
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
	ld	a0, %lo(imgY_org)(a0)
	add	a1, a0, s4
	ld	a2, 0(a1)
	ld	a0, %lo(img)(s8)
	slli	s5, s5, 1
	add	a3, a2, s5
	lhu	a3, 0(a3)
	add	a0, a0, s2
	lhu	a4, -102(a0)
	subw	a3, a3, a4
	sw	a3, -64(s3)
	sw	a3, 600(sp)
	addi	a3, s5, 2
	add	a4, a2, a3
	lhu	a4, 0(a4)
	lhu	a5, -100(a0)
	addi	a6, s5, 4
	add	a7, a2, a6
	lhu	a7, 0(a7)
	lhu	t0, -98(a0)
	subw	a4, a4, a5
	sw	a4, -60(s3)
	sw	a4, 604(sp)
	subw	a4, a7, t0
	sw	a4, -56(s3)
	sw	a4, 608(sp)
	addi	a4, s5, 6
	ld	a5, 8(a1)
	add	a2, a2, a4
	lhu	a2, 0(a2)
	lhu	a7, -96(a0)
	add	t0, a5, s5
	lhu	t0, 0(t0)
	lhu	t1, -70(a0)
	subw	a2, a2, a7
	sw	a2, -52(s3)
	sw	a2, 612(sp)
	subw	a2, t0, t1
	sw	a2, -32(s3)
	sw	a2, 616(sp)
	add	a2, a5, a3
	lhu	a2, 0(a2)
	lhu	a7, -68(a0)
	add	t0, a5, a6
	lhu	t0, 0(t0)
	lhu	t1, -66(a0)
	subw	a2, a2, a7
	sw	a2, -28(s3)
	sw	a2, 620(sp)
	subw	a2, t0, t1
	sw	a2, -24(s3)
	sw	a2, 624(sp)
	ld	a2, 16(a1)
	add	a5, a5, a4
	lhu	a5, 0(a5)
	lhu	a7, -64(a0)
	add	t0, a2, s5
	lhu	t0, 0(t0)
	lhu	t1, -38(a0)
	subw	a5, a5, a7
	sw	a5, -20(s3)
	sw	a5, 628(sp)
	subw	a5, t0, t1
	sw	a5, 0(s3)
	sw	a5, 632(sp)
	add	a5, a2, a3
	lhu	a5, 0(a5)
	lhu	a7, -36(a0)
	add	t0, a2, a6
	lhu	t0, 0(t0)
	lhu	t1, -34(a0)
	subw	a5, a5, a7
	sw	a5, 4(s3)
	sw	a5, 636(sp)
	subw	a5, t0, t1
	sw	a5, 8(s3)
	sw	a5, 640(sp)
	ld	a1, 24(a1)
	add	a2, a2, a4
	lhu	a2, 0(a2)
	lhu	a5, -32(a0)
	add	s5, a1, s5
	lhu	a7, 0(s5)
	lhu	t0, -6(a0)
	subw	a2, a2, a5
	sw	a2, 12(s3)
	sw	a2, 644(sp)
	subw	a2, a7, t0
	sw	a2, 32(s3)
	sw	a2, 648(sp)
	add	a3, a1, a3
	lhu	a2, 0(a3)
	lhu	a3, -4(a0)
	add	a6, a1, a6
	lhu	a5, 0(a6)
	lhu	a6, -2(a0)
	subw	a2, a2, a3
	sw	a2, 36(s3)
	sw	a2, 652(sp)
	subw	a2, a5, a6
	sw	a2, 40(s3)
	lui	a3, %hi(input)
	ld	s5, %lo(input)(a3)
	add	a1, a1, a4
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
	lui	a5, %hi(input)
	ld	s6, %lo(input)(a5)
	mv	s1, a0
	slli	a0, a0, 3
	add	a5, s6, a0
	lw	a7, 88(a5)
	li	a6, 8
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	mv	a2, a7
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	blt	a7, a6, .LBB21_2
# %bb.1:
	li	a2, 8
.LBB21_2:
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	li	a2, 4
	mv	a7, s1
	blt	s1, a2, .LBB21_4
# %bb.3:
	li	a7, 4
.LBB21_4:
	addi	a6, s6, 148
	slli	a3, a7, 3
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	add	a3, a6, a3
	lw	a2, 4(a3)
	lw	a5, 84(a5)
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	blez	a2, .LBB21_11
# %bb.5:
	lw	a3, 0(a3)
	add	a6, a6, a0
	slli	a7, a7, 4
	lui	a5, %hi(PartitionMotionSearch.bx0)
	addi	a5, a5, %lo(PartitionMotionSearch.bx0)
	add	a5, a5, a7
	slli	a1, a1, 2
	add	a5, a5, a1
	lui	t0, %hi(PartitionMotionSearch.by0)
	addi	t0, t0, %lo(PartitionMotionSearch.by0)
	add	a7, t0, a7
	add	a1, a7, a1
	lw	n10, 0(a1)
	lw	s7, 0(a5)
	lw	a1, 4(a6)
	addw	n11, n10, a2
	addw	s8, s7, a3
	blez	a3, .LBB21_12
# %bb.6:
	li	a5, 0
	lui	a7, %hi(img)
	ld	a7, %lo(img)(a7)
	lw	a6, 0(a6)
	lui	t0, 22
	addiw	t0, t0, -784
	add	t0, a7, t0
	ld	a7, 8(t0)
	ld	t0, 0(t0)
	lui	t1, %hi(mvbits)
	ld	t1, %lo(mvbits)(t1)
	slli	t2, s7, 3
	slli	t3, a6, 3
	ld	t4, 96(sp)                      # 8-byte Folded Reload
	slli	t4, t4, 3
	ld	t5, 104(sp)                     # 8-byte Folded Reload
	slli	t5, t5, 3
	mv	t6, n10
.LBB21_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
	slli	n1, t6, 3
	add	n2, a7, n1
	add	n1, t0, n1
	ld	n1, 0(n1)
	ld	n2, 0(n2)
	add	n1, n1, t2
	add	n2, n2, t2
	mv	n3, s7
.LBB21_8:                               #   Parent Loop BB21_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n4, 0(n2)
	ld	n5, 0(n1)
	ld	n6, 0(n4)
	ld	n7, 0(n5)
	add	n6, n6, t4
	ld	n6, 0(n6)
	add	n7, n7, t4
	ld	n7, 0(n7)
	add	n6, n6, a0
	ld	n6, 0(n6)
	add	n7, n7, a0
	ld	n7, 0(n7)
	lh	n8, 0(n6)
	lh	n9, 0(n7)
	sub	n8, n8, n9
	slli	n8, n8, 2
	ld	n4, 8(n4)
	add	n8, t1, n8
	ld	n5, 8(n5)
	lh	n6, 2(n6)
	add	n4, n4, t5
	ld	n4, 0(n4)
	add	n5, n5, t5
	ld	n5, 0(n5)
	lh	n7, 2(n7)
	add	n4, n4, a0
	ld	n4, 0(n4)
	add	n5, n5, a0
	ld	n5, 0(n5)
	lw	n8, 0(n8)
	sub	n6, n6, n7
	lh	n7, 0(n4)
	lh	n9, 0(n5)
	slli	n6, n6, 2
	add	n6, t1, n6
	lw	n6, 0(n6)
	sub	n7, n7, n9
	lh	n4, 2(n4)
	lh	n5, 2(n5)
	slli	n7, n7, 2
	add	n7, t1, n7
	lw	n7, 0(n7)
	sub	n4, n4, n5
	slli	n4, n4, 2
	add	n4, t1, n4
	lw	n4, 0(n4)
	add	a5, n8, a5
	add	n6, n6, n7
	add	a5, a5, n6
	add	a5, a5, n4
	add	n3, n3, a6
	add	n1, n1, t3
	add	n2, n2, t3
	blt	n3, s8, .LBB21_8
# %bb.9:                                #   in Loop: Header=BB21_7 Depth=1
	add	t6, t6, a1
	blt	t6, n11, .LBB21_7
# %bb.10:
	mul	a0, a5, a4
	sraiw	s0, a0, 16
	bgtz	a2, .LBB21_15
	j	.LBB21_23
.LBB21_11:
	li	s0, 0
	j	.LBB21_23
.LBB21_12:
	mv	a0, n10
.LBB21_13:                              # =>This Inner Loop Header: Depth=1
	addw	a0, a0, a1
	blt	a0, n11, .LBB21_13
# %bb.14:
	mul	a0, zero, a4
	sraiw	s0, a0, 16
	blez	a2, .LBB21_23
.LBB21_15:
	blez	a3, .LBB21_23
# %bb.16:
	slliw	a0, s7, 2
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	s9, sp, 264
	lui	s10, %hi(img)
	lui	a0, 3
	addiw	a0, a0, 312
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	n11, 48(sp)                     # 8-byte Folded Spill
	j	.LBB21_18
.LBB21_17:                              #   in Loop: Header=BB21_18 Depth=1
	ld	n10, 72(sp)                     # 8-byte Folded Reload
	addi	n10, n10, 1
	ld	s9, 64(sp)                      # 8-byte Folded Reload
	addi	s9, s9, 256
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	n11, 48(sp)                     # 8-byte Folded Reload
	bge	n10, n11, .LBB21_23
.LBB21_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_21 Depth 2
	ld	a0, %lo(img)(s10)
	lw	a0, 172(a0)
	sd	n10, 72(sp)                     # 8-byte Folded Spill
	slliw	s4, n10, 2
	addw	a0, a0, s4
	addi	s2, s4, 1
	addi	s3, s4, 2
	addi	s11, s4, 3
	slli	a0, a0, 3
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	slli	a0, s4, 5
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	slli	s2, s2, 5
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	slli	s3, s3, 5
	slli	s11, s11, 5
	sd	s9, 64(sp)                      # 8-byte Folded Spill
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	j	.LBB21_21
.LBB21_19:                              #   in Loop: Header=BB21_21 Depth=2
	lw	a1, 24(s6)
	addi	a0, sp, 1160
	call	SATD
	addw	s0, a0, s0
.LBB21_20:                              #   in Loop: Header=BB21_21 Depth=2
	addi	s7, s7, 1
	addiw	s5, s5, 4
	addi	s9, s9, 16
	bge	s7, s8, .LBB21_17
.LBB21_21:                              #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a0, 168(a0)
	addw	s6, s5, a0
	li	a2, 2
	mv	a0, s5
	mv	a1, s4
	mv	a3, s1
	mv	a4, s1
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	call	LumaPrediction4x4
	lui	a0, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a0)
	lui	s10, %hi(img)
	ld	a0, %lo(img)(s2)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	ld	t1, 0(a4)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	slli	a2, s6, 1
	add	a1, t1, a2
	lhu	a1, 0(a1)
	ld	t2, 120(sp)                     # 8-byte Folded Reload
	add	t2, a0, t2
	slli	a5, s5, 1
	add	a3, t2, a5
	lhu	a3, 0(a3)
	subw	a1, a1, a3
	sw	a1, -128(s9)
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
	sw	t0, -124(s9)
	sw	t0, 1164(sp)
	subw	t4, t4, t5
	sw	t4, -120(s9)
	sw	t4, 1168(sp)
	addi	t0, a2, 6
	add	t1, t1, t0
	lhu	t1, 0(t1)
	ld	t3, 8(a4)
	addi	t4, a5, 6
	add	t2, t2, t4
	lhu	t2, 0(t2)
	add	t5, t3, a2
	lhu	t5, 0(t5)
	ld	t6, 112(sp)                     # 8-byte Folded Reload
	add	t6, a0, t6
	add	n1, t6, a5
	lhu	n1, 0(n1)
	subw	t1, t1, t2
	sw	t1, -116(s9)
	sw	t1, 1172(sp)
	subw	t1, t5, n1
	sw	t1, -64(s9)
	sw	t1, 1176(sp)
	add	t1, t3, a1
	lhu	t1, 0(t1)
	add	t2, t6, a3
	lhu	t2, 0(t2)
	add	t5, t3, a6
	lhu	t5, 0(t5)
	add	n1, t6, a7
	lhu	n1, 0(n1)
	subw	t1, t1, t2
	sw	t1, -60(s9)
	sw	t1, 1180(sp)
	subw	t1, t5, n1
	sw	t1, -56(s9)
	sw	t1, 1184(sp)
	add	t3, t3, t0
	ld	t1, 16(a4)
	lhu	t2, 0(t3)
	add	t6, t6, t4
	lhu	t3, 0(t6)
	add	t5, t1, a2
	lhu	t5, 0(t5)
	add	t6, a0, s3
	add	n1, t6, a5
	lhu	n1, 0(n1)
	subw	t2, t2, t3
	sw	t2, -52(s9)
	sw	t2, 1188(sp)
	subw	t2, t5, n1
	sw	t2, 0(s9)
	sw	t2, 1192(sp)
	add	t2, t1, a1
	lhu	t2, 0(t2)
	add	t3, t6, a3
	lhu	t3, 0(t3)
	add	t5, t1, a6
	lhu	t5, 0(t5)
	add	n1, t6, a7
	lhu	n1, 0(n1)
	subw	t2, t2, t3
	sw	t2, 4(s9)
	sw	t2, 1196(sp)
	subw	t2, t5, n1
	sw	t2, 8(s9)
	sw	t2, 1200(sp)
	add	t1, t1, t0
	ld	a4, 24(a4)
	lhu	t1, 0(t1)
	add	t6, t6, t4
	lhu	t2, 0(t6)
	add	a2, a4, a2
	lhu	a2, 0(a2)
	add	a0, a0, s11
	add	a5, a0, a5
	lhu	a5, 0(a5)
	subw	t1, t1, t2
	sw	t1, 12(s9)
	sw	t1, 1204(sp)
	subw	a2, a2, a5
	sw	a2, 64(s9)
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
	sw	a1, 68(s9)
	sw	a1, 1212(sp)
	subw	a3, a3, a5
	add	a4, a4, t0
	lhu	a1, 0(a4)
	add	a0, a0, t4
	lhu	a0, 0(a0)
	sw	a3, 72(s9)
	sw	a3, 1216(sp)
	lui	a2, %hi(input)
	ld	s6, %lo(input)(a2)
	subw	a1, a1, a0
	sw	a1, 76(s9)
	sw	a1, 1220(sp)
	li	a0, 4
	blt	a0, s1, .LBB21_19
# %bb.22:                               #   in Loop: Header=BB21_21 Depth=2
	addi	a0, s6, 2047
	lw	a0, 1845(a0)
	bnez	a0, .LBB21_20
	j	.LBB21_19
.LBB21_23:
	li	a0, 4
	blt	a0, s1, .LBB21_37
# %bb.24:
	addi	a0, s6, 2047
	lw	a0, 1845(a0)
	beqz	a0, .LBB21_37
# %bb.25:
	addi	a0, s6, 84
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lw	a2, 4(a0)
	blez	a2, .LBB21_37
# %bb.26:
	lw	s3, 0(a0)
	blez	s3, .LBB21_35
# %bb.27:
	li	a0, 8
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	blt	a1, a0, .LBB21_29
# %bb.28:
	li	a1, 8
	sd	a1, 32(sp)                      # 8-byte Folded Spill
.LBB21_29:
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	blt	a3, a0, .LBB21_31
# %bb.30:
	li	a3, 8
.LBB21_31:
	li	a1, 0
	lw	a4, 24(s6)
	addi	s6, sp, 1192
	addi	s7, sp, 1224
	addi	s8, sp, 1256
	addi	s9, sp, 1288
	addi	s10, sp, 1320
	addi	s11, sp, 1352
	addi	s2, sp, 1384
	addi	s4, sp, 392
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 6
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	slli	s1, a3, 2
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	sd	a3, 80(sp)                      # 8-byte Folded Spill
.LBB21_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_33 Depth 2
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	li	a0, 0
	sd	s4, 112(sp)                     # 8-byte Folded Spill
.LBB21_33:                              #   Parent Loop BB21_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	a0, 128(sp)                     # 8-byte Folded Spill
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
	sw	a0, 0(s6)
	sw	a1, 4(s6)
	sw	a2, 8(s6)
	sw	a3, 12(s6)
	lw	a0, -176(s4)
	lw	a1, -172(s4)
	lw	a2, -168(s4)
	lw	a3, -164(s4)
	sw	a0, 16(s6)
	sw	a1, 20(s6)
	sw	a2, 24(s6)
	sw	a3, 28(s6)
	lw	a0, -100(s4)
	lw	a1, -104(s4)
	lw	a2, -108(s4)
	lw	a3, -112(s4)
	sw	a0, 28(s7)
	sw	a1, 24(s7)
	sw	a2, 20(s7)
	sw	a3, 16(s7)
	lw	a0, -116(s4)
	lw	a1, -120(s4)
	lw	a2, -124(s4)
	lw	a3, -128(s4)
	sw	a0, 12(s7)
	sw	a1, 8(s7)
	sw	a2, 4(s7)
	sw	a3, 0(s7)
	lw	a0, -64(s4)
	lw	a1, -60(s4)
	lw	a2, -56(s4)
	lw	a3, -52(s4)
	sw	a0, 0(s8)
	sw	a1, 4(s8)
	sw	a2, 8(s8)
	sw	a3, 12(s8)
	lw	a0, -48(s4)
	lw	a1, -44(s4)
	lw	a2, -40(s4)
	lw	a3, -36(s4)
	sw	a0, 16(s8)
	sw	a1, 20(s8)
	sw	a2, 24(s8)
	sw	a3, 28(s8)
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
	addi	a0, sp, 1160
	mv	a1, a4
	mv	s5, s0
	mv	s0, a4
	call	SATD8X8
	mv	a4, s0
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	addw	s0, a0, s5
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, a3
	add	s4, s4, s1
	blt	a0, s3, .LBB21_33
# %bb.34:                               #   in Loop: Header=BB21_32 Depth=1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	s4, s4, a0
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB21_32
	j	.LBB21_37
.LBB21_35:                              # %.preheader
	li	a0, 0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
.LBB21_36:                              # =>This Inner Loop Header: Depth=1
	addw	a0, a0, a1
	blt	a0, a2, .LBB21_36
.LBB21_37:
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
	addw	s11, a0, a1
	sraiw	s9, s11, 2
	slli	s9, s9, 3
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sext.w	s2, a1
	slli	s11, s11, 3
	sd	s8, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
.LBB22_2:                               #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s0)
	lui	a1, %hi(direct_pdir)
	ld	a1, %lo(direct_pdir)(a1)
	lw	s4, 168(a0)
	add	a1, a1, s9
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
	add	a3, a3, s9
	ld	a3, 0(a3)
	add	a1, a1, s9
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
	ld	a0, %lo(imgY_org)(a0)
	ld	a1, %lo(img)(s0)
	add	a2, a0, s11
	ld	a3, 0(a2)
	add	s4, s5, s4
	slli	s4, s4, 1
	addi	a4, s4, 8
	add	a0, a3, a4
	lhu	a5, 0(a0)
	add	a0, a1, s8
	lhu	a1, -102(a0)
	subw	a5, a5, a1
	sw	a5, -64(s10)
	sw	a5, 72(sp)
	addi	a1, s4, 10
	add	a5, a3, a1
	lhu	a5, 0(a5)
	lhu	a6, -100(a0)
	addi	a7, s4, 12
	add	t0, a3, a7
	lhu	t0, 0(t0)
	lhu	t1, -98(a0)
	subw	a5, a5, a6
	sw	a5, -60(s10)
	sw	a5, 76(sp)
	subw	a5, t0, t1
	sw	a5, -56(s10)
	sw	a5, 80(sp)
	addi	s4, s4, 14
	ld	a5, 8(a2)
	add	a3, a3, s4
	lhu	a3, 0(a3)
	lhu	a6, -96(a0)
	add	t0, a5, a4
	lhu	t0, 0(t0)
	lhu	t1, -70(a0)
	subw	a3, a3, a6
	sw	a3, -52(s10)
	sw	a3, 84(sp)
	subw	a3, t0, t1
	sw	a3, -32(s10)
	sw	a3, 88(sp)
	add	a3, a5, a1
	lhu	a3, 0(a3)
	lhu	a6, -68(a0)
	add	t0, a5, a7
	lhu	t0, 0(t0)
	lhu	t1, -66(a0)
	subw	a3, a3, a6
	sw	a3, -28(s10)
	sw	a3, 92(sp)
	subw	a3, t0, t1
	sw	a3, -24(s10)
	sw	a3, 96(sp)
	ld	a3, 16(a2)
	add	a5, a5, s4
	lhu	a5, 0(a5)
	lhu	a6, -64(a0)
	add	t0, a3, a4
	lhu	t0, 0(t0)
	lhu	t1, -38(a0)
	subw	a5, a5, a6
	sw	a5, -20(s10)
	sw	a5, 100(sp)
	subw	a5, t0, t1
	sw	a5, 0(s10)
	sw	a5, 104(sp)
	add	a5, a3, a1
	lhu	a5, 0(a5)
	lhu	a6, -36(a0)
	add	t0, a3, a7
	lhu	t0, 0(t0)
	lhu	t1, -34(a0)
	subw	a5, a5, a6
	sw	a5, 4(s10)
	sw	a5, 108(sp)
	subw	a5, t0, t1
	sw	a5, 8(s10)
	sw	a5, 112(sp)
	ld	a2, 24(a2)
	add	a3, a3, s4
	lhu	a3, 0(a3)
	lhu	a5, -32(a0)
	add	a4, a2, a4
	lhu	a4, 0(a4)
	lhu	a6, -6(a0)
	subw	a3, a3, a5
	sw	a3, 12(s10)
	sw	a3, 116(sp)
	subw	a3, a4, a6
	sw	a3, 32(s10)
	sw	a3, 120(sp)
	add	a1, a2, a1
	lhu	a1, 0(a1)
	lhu	a3, -4(a0)
	add	a7, a2, a7
	lhu	a4, 0(a7)
	lhu	a5, -2(a0)
	subw	a1, a1, a3
	sw	a1, 36(s10)
	sw	a1, 124(sp)
	subw	a4, a4, a5
	add	a2, a2, s4
	lhu	a1, 0(a2)
	lui	a2, %hi(input)
	ld	s7, %lo(input)(a2)
	lhu	a0, 0(a0)
	sw	a4, 40(s10)
	sw	a4, 128(sp)
	lw	s4, 24(s7)
	subw	a1, a1, a0
	sw	a1, 44(s10)
	sw	a1, 132(sp)
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
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	li	a4, 4
	mv	s10, a2
	mv	s3, a0
	mv	a2, a0
	blt	a0, a4, .LBB24_2
# %bb.1:
	li	a2, 4
.LBB24_2:
	lui	a0, %hi(input)
	ld	a4, %lo(input)(a0)
	lw	a0, 24(a3)
	addi	a4, a4, 148
	slli	a5, a2, 3
	add	a5, a4, a5
	lw	a6, 0(a5)
	sd	a6, 48(sp)                      # 8-byte Folded Spill
	lw	a5, 4(a5)
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	slli	a5, s3, 3
	sd	a5, 160(sp)                     # 8-byte Folded Spill
	add	a4, a4, a5
	lw	s2, 0(a4)
	lw	a4, 4(a4)
	sd	a4, 240(sp)                     # 8-byte Folded Spill
	lui	a4, 8
	add	a4, a3, a4
	ld	a4, -1192(a4)
	lw	a3, 12(a3)
	slli	a2, a2, 4
	lui	a5, %hi(PartitionMotionSearch.by0)
	addi	a5, a5, %lo(PartitionMotionSearch.by0)
	add	a5, a5, a2
	lui	a6, %hi(PartitionMotionSearch.bx0)
	addi	a6, a6, %lo(PartitionMotionSearch.bx0)
	add	a2, a6, a2
	li	a6, 528
	slli	a1, a1, 2
	add	a5, a5, a1
	lw	a5, 0(a5)
	sd	a5, 88(sp)                      # 8-byte Folded Spill
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	add	a2, a2, a1
	lw	a1, 0(a2)
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	mul	a1, a3, a6
	li	a2, 2
	add	a1, a4, a1
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	blt	s3, a2, .LBB24_4
# %bb.3:
	li	a2, 2
	sd	a2, 40(sp)                      # 8-byte Folded Spill
.LBB24_4:
	li	s11, 0
	lw	a1, 428(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	addw	a6, a2, a1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addw	s6, a2, a1
	slliw	a1, a2, 2
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	slli	a1, s2, 2
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 32
	srli	a1, a1, 29
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	slli	a1, s2, 32
	srli	a1, a1, 29
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	lui	a1, 2
	addiw	a1, a1, -1712
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	addi	a0, a0, -1
	seqz	a0, a0
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a1, 1
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	a6, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 192(sp)                     # 8-byte Folded Spill
	sd	s10, 144(sp)                    # 8-byte Folded Spill
	j	.LBB24_6
.LBB24_5:                               #   in Loop: Header=BB24_6 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	and	a0, a0, a1
	li	s11, 1
	li	a1, 0
	beqz	a0, .LBB24_40
.LBB24_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_9 Depth 2
                                        #       Child Loop BB24_30 Depth 3
                                        #       Child Loop BB24_31 Depth 3
                                        #         Child Loop BB24_32 Depth 4
                                        #       Child Loop BB24_35 Depth 3
                                        #         Child Loop BB24_36 Depth 4
                                        #           Child Loop BB24_37 Depth 5
                                        #       Child Loop BB24_23 Depth 3
                                        #         Child Loop BB24_24 Depth 4
                                        #           Child Loop BB24_25 Depth 5
                                        #             Child Loop BB24_26 Depth 6
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	a0, s11, a0
	slli	a0, a0, 2
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	add	a0, a1, a0
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	lw	a0, 0(a0)
	blez	a0, .LBB24_5
# %bb.7:                                #   in Loop: Header=BB24_6 Depth=1
	li	a0, 0
	li	s4, 0
	slli	a1, s11, 3
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	sd	s11, 208(sp)                    # 8-byte Folded Spill
	j	.LBB24_9
.LBB24_8:                               #   in Loop: Header=BB24_9 Depth=2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a0)
	addi	s4, s4, 1
	slli	a0, s4, 48
	srai	a0, a0, 48
	bge	a0, a1, .LBB24_5
.LBB24_9:                               #   Parent Loop BB24_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_30 Depth 3
                                        #       Child Loop BB24_31 Depth 3
                                        #         Child Loop BB24_32 Depth 4
                                        #       Child Loop BB24_35 Depth 3
                                        #         Child Loop BB24_36 Depth 4
                                        #           Child Loop BB24_37 Depth 5
                                        #       Child Loop BB24_23 Depth 3
                                        #         Child Loop BB24_24 Depth 4
                                        #           Child Loop BB24_25 Depth 5
                                        #             Child Loop BB24_26 Depth 6
	lui	a1, %hi(input)
	ld	a2, %lo(input)(a1)
	addi	a1, a2, 2047
	lw	a1, 1061(a1)
	lw	a5, 32(a2)
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
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mul	a0, a0, a1
.LBB24_17:                              #   in Loop: Header=BB24_9 Depth=2
	divw	a5, a5, a0
.LBB24_18:                              #   in Loop: Header=BB24_9 Depth=2
	lui	a0, %hi(motion_cost)
	ld	a0, %lo(motion_cost)(a0)
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	add	a0, a0, a3
	ld	a0, 0(a0)
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	slli	a2, s4, 48
	srai	a4, a2, 48
	slli	a7, a4, 3
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 0(a1)
	sd	a7, 152(sp)                     # 8-byte Folded Spill
	add	a0, a0, a7
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	add	a2, a2, a3
	ld	s8, 0(a2)
	add	a1, a1, a3
	ld	s1, 0(a1)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	sw	zero, 0(a0)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB24_8
# %bb.19:                               #   in Loop: Header=BB24_9 Depth=2
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	blez	a1, .LBB24_30
# %bb.20:                               #   in Loop: Header=BB24_9 Depth=2
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	sd	a5, 232(sp)                     # 8-byte Folded Spill
	sd	a4, 224(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB24_31
# %bb.21:                               #   in Loop: Header=BB24_9 Depth=2
	blez	s2, .LBB24_34
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB24_9 Depth=2
	ld	a1, 88(sp)                      # 8-byte Folded Reload
.LBB24_23:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_24 Depth 4
                                        #           Child Loop BB24_25 Depth 5
                                        #             Child Loop BB24_26 Depth 6
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s0, 148(a0)
	add	s0, a1, s0
	slliw	a0, a1, 2
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	ld	s9, 128(sp)                     # 8-byte Folded Reload
.LBB24_24:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_23 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB24_25 Depth 5
                                        #             Child Loop BB24_26 Depth 6
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	ld	a1, -776(a1)
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a2, s9, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	s6, 144(a0)
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s5, 0(a1)
	add	s6, s9, s6
	slliw	a2, s9, 2
	mv	a0, a4
	mv	a1, s11
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	mv	a6, s10
	call	BlockMotionSearch
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a2)
	li	s7, 0
	add	a0, a1, a0
	sw	a0, 0(a2)
	slli	s11, s6, 3
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	add	s3, s3, s11
.LBB24_25:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_23 Depth=3
                                        #         Parent Loop BB24_24 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB24_26 Depth 6
	add	a0, s0, s7
	slli	s10, a0, 3
	add	a0, s8, s10
	ld	a0, 0(a0)
	add	a0, a0, s6
	mv	a1, s4
	mv	a2, s2
	call	memset
	add	a0, s1, s10
	mv	a1, s11
.LBB24_26:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_23 Depth=3
                                        #         Parent Loop BB24_24 Depth=4
                                        #           Parent Loop BB24_25 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld	a2, 0(a0)
	add	a2, a2, a1
	ld	a2, 0(a2)
	lh	a3, 2(s5)
	lhu	a4, 0(s5)
	sh	a3, 2(a2)
	addi	a1, a1, 8
	sh	a4, 0(a2)
	bne	a1, s3, .LBB24_26
# %bb.27:                               #   in Loop: Header=BB24_25 Depth=5
	addi	s7, s7, 1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	bne	s7, a0, .LBB24_25
# %bb.28:                               #   in Loop: Header=BB24_24 Depth=4
	add	s9, s9, s2
	ld	s10, 144(sp)                    # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s11, 208(sp)                    # 8-byte Folded Reload
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	blt	s9, s6, .LBB24_24
# %bb.29:                               #   in Loop: Header=BB24_23 Depth=3
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	blt	a1, a6, .LBB24_23
	j	.LBB24_8
.LBB24_30:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a1
	blt	a0, a6, .LBB24_30
	j	.LBB24_8
.LBB24_31:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_32 Depth 4
	slliw	s7, s0, 2
	ld	s8, 104(sp)                     # 8-byte Folded Reload
	ld	s1, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 216(sp)                     # 8-byte Folded Reload
.LBB24_32:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a0, a4
	mv	a1, s11
	mv	a2, s8
	mv	a3, s7
	mv	a4, s3
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	mv	a6, s10
	call	BlockMotionSearch
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	lw	a1, 0(s5)
	add	a0, a1, a0
	sw	a0, 0(s5)
	addw	s1, s1, s2
	addw	s8, s8, s9
	blt	s1, s6, .LBB24_32
# %bb.33:                               #   in Loop: Header=BB24_31 Depth=3
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	addw	s0, s0, a0
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	blt	s0, a6, .LBB24_31
	j	.LBB24_8
.LBB24_34:                              # %.preheader1
                                        #   in Loop: Header=BB24_9 Depth=2
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	add	s0, s8, s0
	ld	s1, 88(sp)                      # 8-byte Folded Reload
.LBB24_35:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_36 Depth 4
                                        #           Child Loop BB24_37 Depth 5
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 148(a0)
	slliw	s7, s1, 2
	addw	a0, a0, s1
	slli	a0, a0, 3
	add	s3, s8, a0
	add	s5, s0, a0
	ld	s11, 128(sp)                    # 8-byte Folded Reload
.LBB24_36:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_35 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB24_37 Depth 5
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 144(a0)
	addw	s6, a0, s11
	slliw	a2, s11, 2
	mv	a0, a4
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mv	a3, s7
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	mv	a6, s10
	call	BlockMotionSearch
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a2)
	add	a0, a1, a0
	sw	a0, 0(a2)
	mv	s9, s3
.LBB24_37:                              #   Parent Loop BB24_6 Depth=1
                                        #     Parent Loop BB24_9 Depth=2
                                        #       Parent Loop BB24_35 Depth=3
                                        #         Parent Loop BB24_36 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a0, 0(s9)
	add	a0, a0, s6
	mv	a1, s4
	mv	a2, s2
	call	memset
	addi	s9, s9, 8
	bne	s9, s5, .LBB24_37
# %bb.38:                               #   in Loop: Header=BB24_36 Depth=4
	addw	s11, s11, s2
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	blt	s11, s6, .LBB24_36
# %bb.39:                               #   in Loop: Header=BB24_35 Depth=3
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	addw	s1, s1, a0
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	ld	s11, 208(sp)                    # 8-byte Folded Reload
	blt	s1, a6, .LBB24_35
	j	.LBB24_8
.LBB24_40:
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
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
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
	ld	s2, 0(a6)
	sw	zero, 108(sp)
	sw	zero, 104(sp)
	li	a3, -1
	addi	a5, sp, 80
	li	a1, 0
	li	a2, 0
	li	a4, 0
	call	getLuma4x4Neighbour
	lui	s4, %hi(img)
	ld	a0, %lo(img)(s4)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 56
	li	a1, 0
	li	a2, 0
	li	a3, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s4)
	lw	a0, 12(a0)
	li	a3, 16
	li	a4, -1
	addi	a5, sp, 8
	li	a1, 0
	li	a2, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s4)
	lw	a0, 12(a0)
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 32
	li	a1, 0
	li	a2, 0
	call	getLuma4x4Neighbour
	ld	a2, %lo(img)(s4)
	lui	a0, 22
	add	a0, a2, a0
	lw	a0, 108(a0)
	beqz	a0, .LBB25_40
# %bb.5:
	lw	a0, 424(s1)
	lw	a6, 80(sp)
	lui	a1, 8
	addiw	a1, a1, -1192
	add	a2, a2, a1
	beqz	a0, .LBB25_53
# %bb.6:
	lui	a0, 16
	addi	a0, a0, -1
	mv	a1, a0
	beqz	a6, .LBB25_8
# %bb.7:
	lw	a1, 100(sp)
	ld	a3, 0(a2)
	lw	a4, 84(sp)
	li	a5, 528
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a7, 96(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a1, a1, a7
	lbu	a1, 0(a1)
	seqz	a3, a3
	sll	a1, a1, a3
.LBB25_8:
	lw	a7, 56(sp)
	beqz	a7, .LBB25_10
# %bb.9:
	lw	a0, 76(sp)
	ld	a3, 0(a2)
	lw	a4, 60(sp)
	li	a5, 528
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	t0, 72(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a0, a0, t0
	lbu	a0, 0(a0)
	seqz	a3, a3
	sll	a0, a0, a3
.LBB25_10:
	lw	t0, 32(sp)
	beqz	t0, .LBB25_63
# %bb.11:
	lw	a3, 52(sp)
	ld	a4, 0(a2)
	lw	a5, 36(sp)
	li	t1, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t2, 48(sp)
	mul	a5, a5, t1
	add	a4, a4, a5
	lw	a4, 424(a4)
	add	a3, a3, t2
	lbu	a3, 0(a3)
	seqz	a4, a4
	sll	a3, a3, a4
	lw	t1, 8(sp)
	beqz	t1, .LBB25_13
.LBB25_12:
	lw	a3, 28(sp)
	ld	a4, 0(a2)
	lw	a5, 12(sp)
	li	t2, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t3, 24(sp)
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
	lw	a5, 100(sp)
	ld	a6, 0(a2)
	lw	t2, 84(sp)
	li	t3, 528
	slli	a5, a5, 3
	add	a5, s0, a5
	ld	a5, 0(a5)
	lw	t4, 96(sp)
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
	lw	a4, 76(sp)
	ld	a6, 0(a2)
	lw	a7, 60(sp)
	li	t2, 528
	slli	a4, a4, 3
	add	a4, s0, a4
	ld	a4, 0(a4)
	lw	t3, 72(sp)
	mul	a7, a7, t2
	add	a6, a6, a7
	lw	a6, 424(a6)
	add	a4, a4, t3
	lbu	a4, 0(a4)
	seqz	a6, a6
	sll	a4, a4, a6
.LBB25_17:
	beqz	t0, .LBB25_64
# %bb.18:
	lw	a6, 52(sp)
	ld	a7, 0(a2)
	lw	t0, 36(sp)
	li	t2, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t3, 48(sp)
	mul	t0, t0, t2
	add	a7, a7, t0
	lw	a7, 424(a7)
	add	a6, a6, t3
	lbu	a6, 0(a6)
	seqz	a7, a7
	sll	a6, a6, a7
	bnez	t1, .LBB25_65
	j	.LBB25_85
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
	li	a0, 0
	ld	a1, 0(a1)
	ld	a2, 0(a2)
	li	a5, 264
	mul	a3, a3, a5
	add	a3, a4, a3
	lui	a4, %hi(img)
	lui	a7, 22
	addiw	a5, a7, -776
	lui	a6, %hi(listXsize)
	addi	a6, a6, %lo(listXsize)
	addiw	a7, a7, -688
	lui	t0, 2
	addiw	t0, t0, 1807
	lui	t1, 1048574
	li	t2, 3
	lui	t3, %hi(direct_ref_idx)
	lui	t4, 16
	addi	t4, t4, -1
	li	t5, 24
	lui	t6, %hi(LEVELMVLIMIT)
	addi	t6, t6, %lo(LEVELMVLIMIT)
	lui	n1, %hi(direct_pdir)
	li	n2, 4
	j	.LBB25_22
.LBB25_21:                              #   in Loop: Header=BB25_22 Depth=1
	addi	a0, a0, 1
	beq	a0, n2, .LBB25_140
.LBB25_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_23 Depth 2
                                        #       Child Loop BB25_27 Depth 3
	ld	n3, %lo(img)(a4)
	lw	n4, 156(n3)
	lw	n5, 172(n3)
	li	n3, 0
	srli	n4, n4, 2
	addw	n6, n4, a0
	srli	n4, n5, 2
	addw	n5, n4, a0
	slli	n4, a0, 3
	slli	n5, n5, 3
	slli	n6, n6, 3
.LBB25_23:                              #   Parent Loop BB25_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_27 Depth 3
	ld	n8, %lo(img)(a4)
	lw	n12, 428(s1)
	add	n11, n8, a5
	lw	n10, 72(n11)
	slli	n7, n12, 2
	add	n7, a6, n7
	lw	n7, 0(n7)
	blt	n10, n7, .LBB25_25
# %bb.24:                               #   in Loop: Header=BB25_23 Depth=2
	mv	n10, n7
.LBB25_25:                              #   in Loop: Header=BB25_23 Depth=2
	lw	n7, 152(n8)
	srli	n7, n7, 2
	addw	n7, n7, n3
	blez	n10, .LBB25_33
# %bb.26:                               #   in Loop: Header=BB25_23 Depth=2
	lw	n13, 168(n8)
	li	n9, 0
	ld	n11, 0(n11)
	srli	n13, n13, 2
	addw	n13, n13, n3
	ld	n14, 0(a1)
	add	n11, n11, n4
	ld	n11, 0(n11)
	slli	n15, n3, 3
	add	n14, n14, n5
	ld	n14, 0(n14)
	add	n11, n11, n15
	ld	n11, 0(n11)
	slli	n13, n13, 3
	add	n14, n14, n13
	ld	n15, 0(n14)
	slli	n12, n12, 7
	add	n14, n8, a7
	add	n14, n14, n12
	li	n12, 24
.LBB25_27:                              #   Parent Loop BB25_22 Depth=1
                                        #     Parent Loop BB25_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	n16, a3, n12
	ld	n16, 0(n16)
	beq	n16, n15, .LBB25_29
# %bb.28:                               #   in Loop: Header=BB25_27 Depth=3
	addi	n9, n9, 1
	addi	n12, n12, 8
	addi	n14, n14, 4
	bne	n10, n9, .LBB25_27
	j	.LBB25_33
.LBB25_29:                              #   in Loop: Header=BB25_23 Depth=2
	ld	n10, 0(a2)
	add	n10, n10, n5
	ld	n10, 0(n10)
	add	n10, n10, n13
	ld	n10, 0(n10)
	lw	n13, 0(n14)
	lhu	n14, 0(n10)
	bne	n13, t0, .LBB25_31
# %bb.30:                               #   in Loop: Header=BB25_23 Depth=2
	ld	n13, 0(n11)
	ld	n15, 0(n13)
	ld	n15, 0(n15)
	ld	n11, 8(n11)
	sh	n14, 0(n15)
	ld	n11, 0(n11)
	add	n12, n13, n12
	ld	n12, -24(n12)
	lh	n13, 2(n10)
	ld	n14, 0(n11)
	li	n10, 0
	li	n11, 0
	ld	n12, 0(n12)
	sh	n13, 2(n15)
	sh	zero, 0(n14)
	sh	zero, 2(n14)
	lhu	n13, 0(n12)
	add	n13, n13, t1
	srli	n13, n13, 14
	bgeu	n13, t2, .LBB25_32
	j	.LBB25_33
.LBB25_31:                              #   in Loop: Header=BB25_23 Depth=2
	ld	n15, 0(n11)
	add	n12, n15, n12
	ld	n12, -24(n12)
	slli	n14, n14, 48
	srai	n14, n14, 48
	ld	n12, 0(n12)
	mul	n14, n13, n14
	addi	n14, n14, 128
	srli	n14, n14, 8
	sh	n14, 0(n12)
	lh	n14, 2(n10)
	mul	n14, n13, n14
	ld	n11, 8(n11)
	addi	n14, n14, 128
	srli	n14, n14, 8
	sh	n14, 2(n12)
	ld	n11, 0(n11)
	lh	n14, 0(n10)
	addi	n13, n13, -256
	ld	n15, 0(n11)
	mul	n11, n13, n14
	addi	n11, n11, 128
	srliw	n11, n11, 8
	sh	n11, 0(n15)
	lh	n10, 2(n10)
	slli	n11, n11, 48
	srli	n11, n11, 48
	mul	n10, n13, n10
	addi	n10, n10, 128
	srliw	n10, n10, 8
	sh	n10, 2(n15)
	lhu	n13, 0(n12)
	add	n13, n13, t1
	srli	n13, n13, 14
	bltu	n13, t2, .LBB25_33
.LBB25_32:                              #   in Loop: Header=BB25_23 Depth=2
	lw	n8, 8(n8)
	lh	n13, 2(n12)
	mul	n12, n8, t5
	add	n12, t6, n12
	lw	n8, 16(n12)
	bge	n13, n8, .LBB25_35
.LBB25_33:                              #   in Loop: Header=BB25_23 Depth=2
	ld	n8, %lo(direct_ref_idx)(t3)
	ld	n8, 0(n8)
	add	n8, n8, n6
	ld	n8, 0(n8)
	add	n9, n8, n7
	li	n8, 255
	sb	n8, 0(n9)
	mv	n9, t4
.LBB25_34:                              #   in Loop: Header=BB25_23 Depth=2
	ld	n10, %lo(direct_ref_idx)(t3)
	ld	n10, 8(n10)
	add	n10, n10, n6
	ld	n10, 0(n10)
	add	n10, n10, n7
	sb	n8, 0(n10)
	ld	n8, %lo(direct_pdir)(n1)
	add	n8, n8, n6
	ld	n8, 0(n8)
	slli	n7, n7, 1
	add	n7, n8, n7
	addi	n3, n3, 1
	sh	n9, 0(n7)
	bne	n3, n2, .LBB25_23
	j	.LBB25_21
.LBB25_35:                              #   in Loop: Header=BB25_23 Depth=2
	lw	n12, 20(n12)
	blt	n12, n13, .LBB25_33
# %bb.36:                               #   in Loop: Header=BB25_23 Depth=2
	add	n11, n11, t1
	srli	n11, n11, 14
	bltu	n11, t2, .LBB25_33
# %bb.37:                               #   in Loop: Header=BB25_23 Depth=2
	slli	n10, n10, 48
	srai	n10, n10, 48
	blt	n10, n8, .LBB25_33
# %bb.38:                               #   in Loop: Header=BB25_23 Depth=2
	blt	n12, n10, .LBB25_33
# %bb.39:                               #   in Loop: Header=BB25_23 Depth=2
	ld	n8, %lo(direct_ref_idx)(t3)
	ld	n8, 0(n8)
	add	n8, n8, n6
	ld	n10, 0(n8)
	li	n8, 0
	add	n10, n10, n7
	sb	n9, 0(n10)
	li	n9, 2
	j	.LBB25_34
.LBB25_40:
	lw	a2, 80(sp)
	lui	a0, 16
	addi	a0, a0, -1
	mv	a1, a0
	beqz	a2, .LBB25_42
# %bb.41:
	lw	a1, 100(sp)
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a3, 96(sp)
	add	a1, a1, a3
	lbu	a1, 0(a1)
.LBB25_42:
	lw	a6, 56(sp)
	beqz	a6, .LBB25_44
# %bb.43:
	lw	a0, 76(sp)
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	a3, 72(sp)
	add	a0, a0, a3
	lbu	a0, 0(a0)
.LBB25_44:
	lw	a7, 32(sp)
	beqz	a7, .LBB25_66
# %bb.45:
	lw	a3, 52(sp)
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	a4, 48(sp)
	add	a3, a3, a4
	lbu	a3, 0(a3)
	lw	t0, 8(sp)
	beqz	t0, .LBB25_47
.LBB25_46:
	lw	a3, 28(sp)
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	a4, 24(sp)
	add	a3, a3, a4
	lbu	a3, 0(a3)
.LBB25_47:
	lui	a4, 16
	addi	a4, a4, -1
	mv	a5, a4
	beqz	a2, .LBB25_49
# %bb.48:
	lw	a2, 100(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a5, 96(sp)
	add	a2, a2, a5
	lbu	a5, 0(a2)
.LBB25_49:
	beqz	a6, .LBB25_51
# %bb.50:
	lw	a2, 76(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a4, 72(sp)
	add	a2, a2, a4
	lbu	a4, 0(a2)
.LBB25_51:
	beqz	a7, .LBB25_67
# %bb.52:
	lw	a2, 52(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a6, 48(sp)
	add	a2, a2, a6
	lbu	a6, 0(a2)
	bnez	t0, .LBB25_68
	j	.LBB25_85
.LBB25_53:
	lui	a0, 16
	addi	a0, a0, -1
	mv	a1, a0
	beqz	a6, .LBB25_56
# %bb.54:
	lw	a1, 100(sp)
	ld	a3, 0(a2)
	lw	a4, 84(sp)
	li	a5, 528
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a7, 96(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a1, a1, a7
	lbu	a1, 0(a1)
	beqz	a3, .LBB25_56
# %bb.55:
	srli	a1, a1, 1
.LBB25_56:
	lw	a7, 56(sp)
	beqz	a7, .LBB25_59
# %bb.57:
	lw	a0, 76(sp)
	ld	a3, 0(a2)
	lw	a4, 60(sp)
	li	a5, 528
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	t0, 72(sp)
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	add	a0, a0, t0
	lbu	a0, 0(a0)
	beqz	a3, .LBB25_59
# %bb.58:
	srli	a0, a0, 1
.LBB25_59:
	lw	t0, 32(sp)
	beqz	t0, .LBB25_69
# %bb.60:
	lw	a3, 52(sp)
	ld	a4, 0(a2)
	lw	a5, 36(sp)
	li	t1, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t2, 48(sp)
	mul	a5, a5, t1
	add	a4, a4, a5
	lw	a4, 424(a4)
	add	a3, a3, t2
	lbu	a3, 0(a3)
	beqz	a4, .LBB25_62
# %bb.61:
	srli	a3, a3, 1
.LBB25_62:
	lw	t1, 8(sp)
	bnez	t1, .LBB25_70
	j	.LBB25_72
.LBB25_63:
	lui	a3, 16
	addi	a3, a3, -1
	lw	t1, 8(sp)
	bnez	t1, .LBB25_12
	j	.LBB25_13
.LBB25_64:
	lui	a6, 16
	addi	a6, a6, -1
	beqz	t1, .LBB25_85
.LBB25_65:
	lw	a6, 28(sp)
	ld	a2, 0(a2)
	lw	a7, 12(sp)
	li	t0, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t1, 24(sp)
	mul	a7, a7, t0
	add	a2, a2, a7
	lw	a2, 424(a2)
	add	a6, a6, t1
	lbu	a6, 0(a6)
	seqz	a2, a2
	sll	a6, a6, a2
	j	.LBB25_85
.LBB25_66:
	lui	a3, 16
	addi	a3, a3, -1
	lw	t0, 8(sp)
	bnez	t0, .LBB25_46
	j	.LBB25_47
.LBB25_67:
	lui	a6, 16
	addi	a6, a6, -1
	beqz	t0, .LBB25_85
.LBB25_68:
	lw	a2, 28(sp)
	slli	a2, a2, 3
	add	a2, s0, a2
	ld	a2, 0(a2)
	lw	a6, 24(sp)
	add	a2, a2, a6
	lbu	a6, 0(a2)
	j	.LBB25_85
.LBB25_69:
	lui	a3, 16
	addi	a3, a3, -1
	lw	t1, 8(sp)
	beqz	t1, .LBB25_72
.LBB25_70:
	lw	a3, 28(sp)
	ld	a4, 0(a2)
	lw	a5, 12(sp)
	li	t2, 528
	slli	a3, a3, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	lw	t3, 24(sp)
	mul	a5, a5, t2
	add	a4, a4, a5
	lw	a4, 424(a4)
	add	a3, a3, t3
	lbu	a3, 0(a3)
	beqz	a4, .LBB25_72
# %bb.71:
	srli	a3, a3, 1
.LBB25_72:
	lui	a4, 16
	addi	a4, a4, -1
	mv	a5, a4
	beqz	a6, .LBB25_75
# %bb.73:
	lw	a5, 100(sp)
	ld	a6, 0(a2)
	lw	t2, 84(sp)
	li	t3, 528
	slli	a5, a5, 3
	add	a5, s0, a5
	ld	a5, 0(a5)
	lw	t4, 96(sp)
	mul	t2, t2, t3
	add	a6, a6, t2
	lw	a6, 424(a6)
	add	a5, a5, t4
	lbu	a5, 0(a5)
	beqz	a6, .LBB25_75
# %bb.74:
	srli	a5, a5, 1
.LBB25_75:
	beqz	a7, .LBB25_78
# %bb.76:
	lw	a4, 76(sp)
	ld	a6, 0(a2)
	lw	a7, 60(sp)
	li	t2, 528
	slli	a4, a4, 3
	add	a4, s0, a4
	ld	a4, 0(a4)
	lw	t3, 72(sp)
	mul	a7, a7, t2
	add	a6, a6, a7
	lw	a6, 424(a6)
	add	a4, a4, t3
	lbu	a4, 0(a4)
	beqz	a6, .LBB25_78
# %bb.77:
	srli	a4, a4, 1
.LBB25_78:
	beqz	t0, .LBB25_82
# %bb.79:
	lw	a6, 52(sp)
	ld	a7, 0(a2)
	lw	t0, 36(sp)
	li	t2, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t3, 48(sp)
	mul	t0, t0, t2
	add	a7, a7, t0
	lw	a7, 424(a7)
	add	a6, a6, t3
	lbu	a6, 0(a6)
	beqz	a7, .LBB25_81
# %bb.80:
	srli	a6, a6, 1
.LBB25_81:
	bnez	t1, .LBB25_83
	j	.LBB25_85
.LBB25_82:
	lui	a6, 16
	addi	a6, a6, -1
	beqz	t1, .LBB25_85
.LBB25_83:
	lw	a6, 28(sp)
	ld	a2, 0(a2)
	lw	a7, 12(sp)
	li	t0, 528
	slli	a6, a6, 3
	add	a6, s0, a6
	ld	a6, 0(a6)
	lw	t1, 24(sp)
	mul	a7, a7, t0
	add	a2, a2, a7
	lw	a2, 424(a2)
	add	a6, a6, t1
	lbu	a6, 0(a6)
	beqz	a2, .LBB25_85
# %bb.84:
	srli	a6, a6, 1
.LBB25_85:
	slli	a2, a1, 48
	srai	a2, a2, 48
	slli	a7, a0, 48
	srai	a7, a7, 48
	or	a1, a1, a0
	mv	a0, a2
	bge	a2, a7, .LBB25_102
# %bb.86:
	slli	a1, a1, 48
	bge	a7, a2, .LBB25_103
.LBB25_87:
	bltz	a1, .LBB25_104
.LBB25_88:
	slli	a1, a3, 48
	srai	a1, a1, 48
	mv	s0, a0
	bge	a0, a1, .LBB25_105
.LBB25_89:
	or	a2, a0, a1
	bge	a1, a0, .LBB25_106
.LBB25_90:
	bgez	a2, .LBB25_92
.LBB25_91:
	mv	s0, a0
.LBB25_92:
	slli	a1, a5, 48
	srai	a1, a1, 48
	slli	a2, a4, 48
	srai	a2, a2, 48
	or	a3, a5, a4
	mv	a0, a1
	bge	a1, a2, .LBB25_107
# %bb.93:
	slli	a3, a3, 48
	bge	a2, a1, .LBB25_108
.LBB25_94:
	bltz	a3, .LBB25_109
.LBB25_95:
	slli	a1, a6, 48
	srai	a1, a1, 48
	mv	s1, a0
	bge	a0, a1, .LBB25_110
.LBB25_96:
	or	a2, a0, a1
	bge	a1, a0, .LBB25_111
.LBB25_97:
	bltz	a2, .LBB25_112
.LBB25_98:
	bltz	s0, .LBB25_100
.LBB25_99:
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
	addi	a0, sp, 108
	li	a7, 16
	sd	a3, 0(sp)
	mv	a3, s0
	li	a4, 0
	li	a5, 0
	li	a6, 0
	call	SetMotionVectorPredictor
.LBB25_100:
	bltz	s1, .LBB25_113
# %bb.101:
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
	addi	a0, sp, 104
	li	a4, 1
	li	a7, 16
	sd	a3, 0(sp)
	mv	a3, s1
	li	a5, 0
	li	a6, 0
	call	SetMotionVectorPredictor
	lhu	a1, 104(sp)
	lhu	a0, 106(sp)
	j	.LBB25_114
.LBB25_102:
	mv	a0, a7
	slli	a1, a1, 48
	blt	a7, a2, .LBB25_87
.LBB25_103:
	mv	a2, a7
	bgez	a1, .LBB25_88
.LBB25_104:
	mv	a0, a2
	slli	a1, a3, 48
	srai	a1, a1, 48
	mv	s0, a0
	blt	a2, a1, .LBB25_89
.LBB25_105:
	mv	s0, a1
	or	a2, a0, a1
	blt	a1, a0, .LBB25_90
.LBB25_106:
	mv	a0, a1
	bltz	a2, .LBB25_91
	j	.LBB25_92
.LBB25_107:
	mv	a0, a2
	slli	a3, a3, 48
	blt	a2, a1, .LBB25_94
.LBB25_108:
	mv	a1, a2
	bgez	a3, .LBB25_95
.LBB25_109:
	mv	a0, a1
	slli	a1, a6, 48
	srai	a1, a1, 48
	mv	s1, a0
	blt	a0, a1, .LBB25_96
.LBB25_110:
	mv	s1, a1
	or	a2, a0, a1
	blt	a1, a0, .LBB25_97
.LBB25_111:
	mv	a0, a1
	bgez	a2, .LBB25_98
.LBB25_112:
	mv	s1, a0
	bgez	s0, .LBB25_99
	j	.LBB25_100
.LBB25_113:
	li	a0, 0
	li	a1, 0
.LBB25_114:
	li	a2, 0
	lhu	a3, 108(sp)
	lhu	a4, 110(sp)
	sgtz	a5, s0
	neg	a5, a5
	and	t6, a5, s0
	sgtz	a5, s1
	neg	a5, a5
	and	n7, a5, s1
	and	a5, s1, s0
	lui	a6, %hi(img)
	lui	a7, 22
	slli	t0, s0, 3
	lui	t1, %hi(direct_ref_idx)
	slli	t2, s1, 3
	lui	t3, %hi(direct_pdir)
	li	t4, 32
	li	t5, 4
	slli	t6, t6, 3
	lui	n1, 1048574
	li	n2, 3
	li	n3, -1
	lui	n4, 16
	addi	n4, n4, -1
	li	n5, 24
	lui	n6, %hi(LEVELMVLIMIT)
	addi	n6, n6, %lo(LEVELMVLIMIT)
	slli	n7, n7, 3
	j	.LBB25_116
.LBB25_115:                             #   in Loop: Header=BB25_116 Depth=1
	addi	a2, a2, 1
	beq	a2, t5, .LBB25_140
.LBB25_116:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_119 Depth 2
	ld	n8, %lo(img)(a6)
	lw	n10, 156(n8)
	lw	n11, 172(n8)
	li	n8, 0
	li	n9, 0
	srli	n10, n10, 2
	addw	n12, n10, a2
	srli	n10, n11, 2
	addw	n10, n10, a2
	slli	n10, n10, 3
	add	n10, s2, n10
	slli	n11, a2, 3
	slli	n12, n12, 3
	j	.LBB25_119
.LBB25_117:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n14, %lo(direct_ref_idx)(t1)
	ld	n14, 0(n14)
	add	n14, n14, n12
	ld	n14, 0(n14)
	add	n14, n14, n13
	sb	n3, 0(n14)
	ld	n14, %lo(direct_ref_idx)(t1)
	ld	n14, 8(n14)
	add	n14, n14, n12
	ld	n14, 0(n14)
	add	n14, n14, n13
	sb	n3, 0(n14)
	mv	n14, n4
.LBB25_118:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n15, %lo(direct_pdir)(t3)
	add	n15, n15, n12
	ld	n15, 0(n15)
	slli	n13, n13, 1
	add	n13, n15, n13
	sh	n14, 0(n13)
	addi	n9, n9, 8
	addi	n8, n8, 1
	beq	n9, t4, .LBB25_115
.LBB25_119:                             #   Parent Loop BB25_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n14, %lo(img)(a6)
	add	n13, n14, a7
	ld	n13, -776(n13)
	add	n13, n13, n11
	ld	n15, 0(n13)
	lw	n13, 152(n14)
	lw	n16, 168(n14)
	add	n15, n15, n9
	ld	n14, 0(n15)
	srli	n15, n16, 2
	addw	n15, n8, n15
	bltz	s0, .LBB25_123
# %bb.120:                              #   in Loop: Header=BB25_119 Depth=2
	bnez	s0, .LBB25_122
# %bb.121:                              #   in Loop: Header=BB25_119 Depth=2
	ld	n16, 0(n10)
	add	n16, n16, n15
	lbu	n16, 0(n16)
	beqz	n16, .LBB25_135
.LBB25_122:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n16, 0(n14)
	add	n16, n16, t0
	ld	n16, 0(n16)
	ld	n16, 0(n16)
	sh	a3, 0(n16)
	sh	a4, 2(n16)
	mv	n16, s0
	j	.LBB25_124
.LBB25_123:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n16, 0(n14)
	ld	n16, 0(n16)
	ld	n16, 0(n16)
	sh	zero, 0(n16)
	sh	zero, 2(n16)
	li	n16, 255
.LBB25_124:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n17, %lo(direct_ref_idx)(t1)
	ld	n17, 0(n17)
	add	n17, n17, n12
	ld	n17, 0(n17)
	srli	n13, n13, 2
	addw	n13, n8, n13
	add	n17, n17, n13
	sb	n16, 0(n17)
	bltz	s1, .LBB25_128
# %bb.125:                              #   in Loop: Header=BB25_119 Depth=2
	bnez	s1, .LBB25_127
# %bb.126:                              #   in Loop: Header=BB25_119 Depth=2
	ld	n16, 0(n10)
	add	n15, n16, n15
	lbu	n15, 0(n15)
	beqz	n15, .LBB25_136
.LBB25_127:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n15, 8(n14)
	ld	n16, %lo(direct_ref_idx)(t1)
	add	n15, n15, t2
	ld	n15, 0(n15)
	ld	n16, 8(n16)
	ld	n15, 0(n15)
	add	n16, n16, n12
	ld	n16, 0(n16)
	sh	a1, 0(n15)
	sh	a0, 2(n15)
	add	n16, n16, n13
	sb	s1, 0(n16)
	ld	n15, %lo(img)(a6)
	add	n16, n15, a7
	lw	n16, 108(n16)
	bnez	n16, .LBB25_129
	j	.LBB25_137
.LBB25_128:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n15, %lo(direct_ref_idx)(t1)
	ld	n15, 8(n15)
	add	n15, n15, n12
	ld	n15, 0(n15)
	add	n15, n15, n13
	sb	n3, 0(n15)
	ld	n15, 8(n14)
	ld	n15, 0(n15)
	ld	n15, 0(n15)
	sh	zero, 0(n15)
	sh	zero, 2(n15)
	ld	n15, %lo(img)(a6)
	add	n16, n15, a7
	lw	n16, 108(n16)
	beqz	n16, .LBB25_137
.LBB25_129:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n16, 0(n14)
	add	n16, n16, t6
	ld	n16, 0(n16)
	ld	n16, 0(n16)
	lhu	n17, 0(n16)
	add	n17, n17, n1
	srli	n17, n17, 14
	bltu	n17, n2, .LBB25_117
# %bb.130:                              #   in Loop: Header=BB25_119 Depth=2
	lw	n15, 8(n15)
	lh	n17, 2(n16)
	mul	n16, n15, n5
	add	n16, n6, n16
	lw	n15, 16(n16)
	blt	n17, n15, .LBB25_117
# %bb.131:                              #   in Loop: Header=BB25_119 Depth=2
	lw	n16, 20(n16)
	blt	n16, n17, .LBB25_117
# %bb.132:                              #   in Loop: Header=BB25_119 Depth=2
	ld	n14, 8(n14)
	add	n14, n14, n7
	ld	n14, 0(n14)
	ld	n14, 0(n14)
	lhu	n17, 0(n14)
	add	n17, n17, n1
	srli	n17, n17, 14
	bltu	n17, n2, .LBB25_117
# %bb.133:                              #   in Loop: Header=BB25_119 Depth=2
	lh	n14, 2(n14)
	blt	n14, n15, .LBB25_117
# %bb.134:                              #   in Loop: Header=BB25_119 Depth=2
	bge	n16, n14, .LBB25_137
	j	.LBB25_117
.LBB25_135:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n16, 0(n14)
	ld	n16, 0(n16)
	ld	n17, 0(n16)
	li	n16, 0
	sh	zero, 2(n17)
	sh	zero, 0(n17)
	j	.LBB25_124
.LBB25_136:                             #   in Loop: Header=BB25_119 Depth=2
	ld	n15, 8(n14)
	ld	n16, %lo(direct_ref_idx)(t1)
	ld	n15, 0(n15)
	ld	n16, 8(n16)
	ld	n15, 0(n15)
	add	n16, n16, n12
	ld	n16, 0(n16)
	sh	zero, 0(n15)
	sh	zero, 2(n15)
	add	n16, n16, n13
	sb	zero, 0(n16)
	ld	n15, %lo(img)(a6)
	add	n16, n15, a7
	lw	n16, 108(n16)
	bnez	n16, .LBB25_129
.LBB25_137:                             #   in Loop: Header=BB25_119 Depth=2
	bgez	a5, .LBB25_139
# %bb.138:                              #   in Loop: Header=BB25_119 Depth=2
	ld	n14, %lo(direct_ref_idx)(t1)
	ld	n14, 8(n14)
	add	n14, n14, n12
	ld	n14, 0(n14)
	add	n14, n14, n13
	sb	zero, 0(n14)
	ld	n14, %lo(direct_ref_idx)(t1)
	ld	n14, 0(n14)
	add	n14, n14, n12
	ld	n14, 0(n14)
	add	n14, n14, n13
	sb	zero, 0(n14)
.LBB25_139:                             #   in Loop: Header=BB25_119 Depth=2
	li	n14, 2
	j	.LBB25_118
.LBB25_140:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
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
