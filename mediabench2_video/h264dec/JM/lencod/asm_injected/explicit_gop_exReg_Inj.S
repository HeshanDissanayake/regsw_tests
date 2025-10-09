	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"explicit_gop.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	create_pyramid                  # -- Begin function create_pyramid
	.p2align	2
	.type	create_pyramid,@function
create_pyramid:                         # @create_pyramid
# %bb.0:
	addi	sp, sp, -32
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	lw	a2, 1944(a1)
	lw	a0, 1244(a1)
	li	a4, 1
	bne	a2, a4, .LBB0_11
# %bb.1:
	blez	a0, .LBB0_37
# %bb.2:
	li	a2, 0
	lui	a3, %hi(gop_structure)
	ld	a4, %lo(gop_structure)(a3)
	srliw	a3, a0, 31
	add	a3, a0, a3
	sraiw	a3, a3, 1
	addi	a4, a4, 8
	slli	a5, a3, 1
	negw	a5, a5
	li	a6, 1
	li	a7, 2
	li	t0, 1
	j	.LBB0_5
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	add	t1, a5, t0
	addi	t2, t1, -1
	lw	t1, 1248(a1)
	sw	t2, -4(a4)
	sw	a6, 8(a4)
	sw	zero, 0(a4)
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	sw	t1, 4(a4)
	addi	a2, a2, 1
	addi	t0, t0, 2
	addi	a4, a4, 24
	beq	a0, a2, .LBB0_37
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	sw	a6, -8(a4)
	bgeu	a2, a3, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	lw	t2, 1948(a1)
	lw	t1, 1248(a1)
	sw	t0, -4(a4)
	sw	zero, 8(a4)
	sw	a7, 0(a4)
	beqz	t2, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	li	t2, -1
	blez	t1, .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	add	t1, t2, t1
	j	.LBB0_4
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	lw	t2, 1252(a1)
	addw	t3, t2, t1
	bgez	t3, .LBB0_8
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	li	t1, 0
	j	.LBB0_4
.LBB0_11:
	li	a2, 0
	addi	a3, a0, 1
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	addiw	a2, a2, 1
	sraw	a5, a3, a2
	blt	a4, a5, .LBB0_12
# %bb.13:
	blez	a0, .LBB0_16
# %bb.14:
	lui	a4, %hi(gop_structure)
	ld	a6, %lo(gop_structure)(a4)
	li	a4, 0
	lw	a5, 1248(a1)
	addi	a6, a6, 8
	li	a7, 24
	mul	a7, a0, a7
	add	a7, a6, a7
	li	t0, 1
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	sw	a4, -4(a6)
	sw	t0, -8(a6)
	sw	zero, 8(a6)
	sw	zero, 0(a6)
	sw	a5, 4(a6)
	addi	a6, a6, 24
	addi	a4, a4, 1
	bne	a6, a7, .LBB0_15
.LBB0_16:
	li	a4, 2
	bltu	a2, a4, .LBB0_31
# %bb.17:
	lui	a5, %hi(gop_structure)
	ld	a5, %lo(gop_structure)(a5)
	addi	a5, a5, 16
	li	a6, 1
	li	a7, 24
	li	t0, 1
	j	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	addiw	t0, t0, 1
	beq	a2, t0, .LBB0_31
.LBB0_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_30 Depth 2
	sllw	t1, a6, t0
	subw	t2, a3, t1
	blt	t2, t1, .LBB0_18
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	lw	t5, 1948(a1)
	lw	t4, 1248(a1)
	addiw	t3, t1, -1
	beqz	t5, .LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	subw	t5, t4, t0
	mul	t6, t3, a7
	mul	t4, t1, a7
	bltz	t5, .LBB0_27
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_19 Depth=1
	add	t6, a5, t6
.LBB0_23:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	t0, 0(t6)
	sw	a4, -8(t6)
	sw	t5, -4(t6)
	add	t3, t3, t1
	add	t6, t6, t4
	blt	t3, t2, .LBB0_23
	j	.LBB0_18
.LBB0_24:                               #   in Loop: Header=BB0_19 Depth=1
	lw	t5, 1252(a1)
	addw	t5, t5, t4
	mul	t6, t3, a7
	mul	t4, t1, a7
	bltz	t5, .LBB0_29
# %bb.25:                               # %.preheader4
                                        #   in Loop: Header=BB0_19 Depth=1
	add	t6, a5, t6
.LBB0_26:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	t0, 0(t6)
	sw	a4, -8(t6)
	sw	t5, -4(t6)
	add	t3, t3, t1
	add	t6, t6, t4
	blt	t3, t2, .LBB0_26
	j	.LBB0_18
.LBB0_27:                               # %.preheader6
                                        #   in Loop: Header=BB0_19 Depth=1
	add	t5, a5, t6
.LBB0_28:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	t0, 0(t5)
	sw	a4, -8(t5)
	sw	zero, -4(t5)
	add	t3, t3, t1
	add	t5, t5, t4
	blt	t3, t2, .LBB0_28
	j	.LBB0_18
.LBB0_29:                               # %.preheader2
                                        #   in Loop: Header=BB0_19 Depth=1
	add	t5, a5, t6
.LBB0_30:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	t0, 0(t5)
	sw	a4, -8(t5)
	sw	zero, -4(t5)
	add	t3, t3, t1
	add	t5, t5, t4
	blt	t3, t2, .LBB0_30
	j	.LBB0_18
.LBB0_31:
	blt	a0, a4, .LBB0_37
# %bb.32:                               # %.preheader
	li	a1, 1
	li	a2, 2
	lui	a3, %hi(gop_structure)
	li	a4, 24
	li	a5, 1
	j	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=1
	addiw	a5, a5, 1
	addi	a2, a2, 1
	beq	a5, a0, .LBB0_37
.LBB0_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
	mv	a6, a2
.LBB0_35:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, %lo(gop_structure)(a3)
	addiw	t2, a6, -2
	addiw	a6, a6, -1
	mul	a7, a6, a4
	add	t1, t0, a7
	lw	t3, 16(t1)
	mul	t2, t2, a4
	add	t0, t0, t2
	lw	t2, 16(t0)
	bge	t2, t3, .LBB0_33
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	lwu	t2, 20(t0)
	lwu	t3, 16(t0)
	slli	t2, t2, 32
	lwu	t4, 12(t0)
	lwu	t5, 8(t0)
	or	t2, t2, t3
	sd	t2, 24(sp)
	slli	t4, t4, 32
	or	t4, t4, t5
	sd	t4, 16(sp)
	lwu	t2, 4(t0)
	lwu	t3, 0(t0)
	lw	t4, 0(t1)
	lw	t5, 20(t1)
	slli	t2, t2, 32
	or	t2, t2, t3
	sw	t4, 0(t0)
	sw	t5, 20(t0)
	lw	t3, 16(t1)
	lw	t4, 12(t1)
	lw	t5, 8(t1)
	lw	t1, 4(t1)
	sw	t3, 16(t0)
	sw	t4, 12(t0)
	sw	t5, 8(t0)
	sw	t1, 4(t0)
	ld	t0, %lo(gop_structure)(a3)
	lw	t1, 28(sp)
	lw	t3, 24(sp)
	sd	t2, 8(sp)
	add	a7, t0, a7
	sw	t1, 20(a7)
	sw	t3, 16(a7)
	lw	t0, 20(sp)
	lw	t1, 16(sp)
	lw	t2, 12(sp)
	lw	t3, 8(sp)
	sw	t0, 12(a7)
	sw	t1, 8(a7)
	sw	t2, 4(a7)
	sw	t3, 0(a7)
	blt	a1, a6, .LBB0_35
	j	.LBB0_33
.LBB0_37:
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	create_pyramid, .Lfunc_end0-create_pyramid
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_gop_structure              # -- Begin function init_gop_structure
	.p2align	2
	.type	init_gop_structure,@function
init_gop_structure:                     # @init_gop_structure
# %bb.0:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a2, 1944(a0)
	li	a3, 3
	li	a1, 20
	beq	a2, a3, .LBB1_2
# %bb.1:
	li	a1, 1244
.LBB1_2:
	add	a0, a0, a1
	lw	a0, 0(a0)
	li	a1, 10
	blt	a1, a0, .LBB1_4
# %bb.3:
	li	a0, 10
.LBB1_4:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	li	a1, 24
	call	calloc
	lui	a1, %hi(gop_structure)
	sd	a0, %lo(gop_structure)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	beqz	a0, .LBB1_6
# %bb.5:
	ret
.LBB1_6:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	tail	no_mem_exit
.Lfunc_end1:
	.size	init_gop_structure, .Lfunc_end1-init_gop_structure
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_gop_structure             # -- Begin function clear_gop_structure
	.p2align	2
	.type	clear_gop_structure,@function
clear_gop_structure:                    # @clear_gop_structure
# %bb.0:
	lui	a0, %hi(gop_structure)
	ld	a0, %lo(gop_structure)(a0)
	beqz	a0, .LBB2_2
# %bb.1:
	tail	free
.LBB2_2:
	ret
.Lfunc_end2:
	.size	clear_gop_structure, .Lfunc_end2-clear_gop_structure
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	interpret_gop_structure         # -- Begin function interpret_gop_structure
	.p2align	2
	.type	interpret_gop_structure,@function
interpret_gop_structure:                # @interpret_gop_structure
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	lui	s2, %hi(input)
	ld	a0, %lo(input)(s2)
	addi	a0, a0, 1952
	call	strlen
	sext.w	s7, a0
	blez	s7, .LBB3_61
# %bb.1:
	li	s0, 0
	li	s6, 0
	li	s3, 0
	li	s10, 0
	li	s8, 0
	li	s9, 0
	li	s11, 1
	slli	a1, s11, 11
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	addiw	a0, a0, -2
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(errortext)
	addi	s1, s1, %lo(errortext)
	slli	a0, s11, 32
	addi	a0, a0, 1
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	s4, %hi(gop_structure)
	slli	a0, s11, 39
	addi	a0, a0, 128
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	lui	a0, 4
	slli	a1, a0, 32
	add	a0, a0, a1
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	s5, %hi(.L.str.6)
	addi	s5, s5, %lo(.L.str.6)
	j	.LBB3_5
.LBB3_2:                                #   in Loop: Header=BB3_5 Depth=1
	li	a2, 83
	mv	a0, s1
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	memcpy
	li	a1, 400
	mv	a0, s1
	call	error
	li	s10, 0
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	li	s8, 1
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	addiw	s9, s9, 1
	bge	s9, s7, .LBB3_60
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
	beqz	s8, .LBB3_12
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	beqz	s10, .LBB3_17
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	beqz	s3, .LBB3_25
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	bne	s3, s11, .LBB3_29
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	bnez	s6, .LBB3_29
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	call	__ctype_b_loc
	ld	a1, %lo(input)(s2)
	add	a1, a1, s9
	lbu	a2, 1952(a1)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	and	a0, a0, a2
	bnez	a0, .LBB3_41
# %bb.11:                               #   in Loop: Header=BB3_5 Depth=1
	li	a2, 75
	mv	a0, s1
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	memcpy
	li	a1, 400
	mv	a0, s1
	call	error
	li	s6, 0
	j	.LBB3_59
.LBB3_12:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, %lo(input)(s2)
	add	a0, a0, s9
	lbu	a0, 1952(a0)
	addi	a0, a0, -66
	li	a1, 46
	bltu	a1, a0, .LBB3_53
# %bb.13:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	srl	a1, a1, a0
	andi	a1, a1, 1
	bnez	a1, .LBB3_37
# %bb.14:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	srl	a1, a1, a0
	andi	a1, a1, 1
	bnez	a1, .LBB3_36
# %bb.15:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	srl	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB3_53
# %bb.16:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, %lo(gop_structure)(s4)
	li	a1, 24
	mul	a1, s0, a1
	add	a0, a0, a1
	sw	zero, 0(a0)
	j	.LBB3_3
.LBB3_17:                               #   in Loop: Header=BB3_5 Depth=1
	call	__ctype_b_loc
	ld	a1, %lo(input)(s2)
	add	a1, a1, s9
	lbu	a2, 1952(a1)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	and	a0, a0, a2
	beqz	a0, .LBB3_2
# %bb.18:                               #   in Loop: Header=BB3_5 Depth=1
	addi	a0, a1, 1952
	addi	a2, sp, 48
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	__isoc99_sscanf
	ld	a1, %lo(input)(s2)
	ld	a2, %lo(gop_structure)(s4)
	lw	a0, 48(sp)
	lw	a3, 20(a1)
	li	a1, 24
	mul	s11, s0, a1
	add	a2, a2, s11
	sw	a0, 4(a2)
	bltz	a0, .LBB3_51
# %bb.19:                               #   in Loop: Header=BB3_5 Depth=1
	bge	a0, a3, .LBB3_51
# %bb.20:                               #   in Loop: Header=BB3_5 Depth=1
	li	s8, 1
	blez	s0, .LBB3_52
.LBB3_21:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, %lo(gop_structure)(s4)
	li	s10, 0
	addi	s11, s11, 4
	li	s2, 4
	j	.LBB3_23
.LBB3_22:                               #   in Loop: Header=BB3_23 Depth=2
	addi	s2, s2, 24
	addiw	s10, s10, 1
	beq	s2, s11, .LBB3_38
.LBB3_23:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a1, a0, s2
	lw	a3, 0(a1)
	lw	a1, 48(sp)
	bne	a3, a1, .LBB3_22
# %bb.24:                               #   in Loop: Header=BB3_23 Depth=2
	li	a1, 300
	mv	a0, s1
	mv	a2, s5
	mv	a4, s0
	mv	a5, s10
	call	snprintf
	li	a1, 400
	mv	a0, s1
	call	error
	ld	a0, %lo(gop_structure)(s4)
	j	.LBB3_22
.LBB3_25:                               #   in Loop: Header=BB3_5 Depth=1
	call	__ctype_b_loc
	ld	a1, %lo(input)(s2)
	add	a1, a1, s9
	lbu	a1, 1952(a1)
	ld	a0, 0(a0)
	slli	a2, a1, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	and	a0, a0, a2
	bnez	a0, .LBB3_39
# %bb.26:                               #   in Loop: Header=BB3_5 Depth=1
	li	a0, 100
	blt	a0, a1, .LBB3_54
# %bb.27:                               #   in Loop: Header=BB3_5 Depth=1
	li	a0, 69
	beq	a1, a0, .LBB3_56
# %bb.28:                               #   in Loop: Header=BB3_5 Depth=1
	li	a0, 82
	beq	a1, a0, .LBB3_57
	j	.LBB3_58
.LBB3_29:                               #   in Loop: Header=BB3_5 Depth=1
	li	s8, 1
	bne	s3, s8, .LBB3_40
# %bb.30:                               #   in Loop: Header=BB3_5 Depth=1
	bne	s6, s11, .LBB3_40
# %bb.31:                               #   in Loop: Header=BB3_5 Depth=1
	call	__ctype_b_loc
	ld	a1, %lo(input)(s2)
	add	a2, a1, s9
	lbu	a2, 1952(a2)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	and	a0, a0, a2
	li	s8, 1
	bnez	a0, .LBB3_50
# %bb.32:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	bge	s9, a0, .LBB3_50
# %bb.33:                               #   in Loop: Header=BB3_5 Depth=1
	lw	a0, 20(a1)
	addiw	s0, s0, 1
	addi	s9, s9, -1
	blt	s0, a0, .LBB3_35
# %bb.34:                               #   in Loop: Header=BB3_5 Depth=1
	li	a2, 92
	mv	a0, s1
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	call	memcpy
	li	a1, 400
	mv	a0, s1
	call	error
.LBB3_35:                               #   in Loop: Header=BB3_5 Depth=1
	li	s8, 0
	li	s10, 0
	li	s3, 0
	li	s6, 0
	j	.LBB3_4
.LBB3_36:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, %lo(gop_structure)(s4)
	li	a1, 24
	mul	a1, s0, a1
	add	a0, a0, a1
	li	a1, 2
	sw	a1, 0(a0)
	j	.LBB3_3
.LBB3_37:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, %lo(gop_structure)(s4)
	li	a1, 24
	mul	a1, s0, a1
	add	a0, a0, a1
	li	s8, 1
	sw	s8, 0(a0)
	j	.LBB3_4
.LBB3_38:                               #   in Loop: Header=BB3_5 Depth=1
	li	s10, 1
	lui	s2, %hi(input)
	li	s11, 1
	j	.LBB3_4
.LBB3_39:                               #   in Loop: Header=BB3_5 Depth=1
	li	s3, 0
	li	s8, 1
	li	s10, 1
	j	.LBB3_4
.LBB3_40:                               #   in Loop: Header=BB3_5 Depth=1
	li	s10, 1
	j	.LBB3_4
.LBB3_41:                               #   in Loop: Header=BB3_5 Depth=1
	addi	a0, a1, 1952
	addi	a2, sp, 52
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	__isoc99_sscanf
	ld	a0, %lo(gop_structure)(s4)
	li	a1, 24
	mul	a1, s0, a1
	add	a0, a0, a1
	lw	a2, 0(a0)
	li	a1, 16
	beqz	a2, .LBB3_43
# %bb.42:                               #   in Loop: Header=BB3_5 Depth=1
	li	a1, 1248
.LBB3_43:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a3, %lo(input)(s2)
	li	a4, 2
	bne	a2, a4, .LBB3_45
# %bb.44:                               #   in Loop: Header=BB3_5 Depth=1
	li	a1, 12
.LBB3_45:                               #   in Loop: Header=BB3_5 Depth=1
	add	a1, a3, a1
	lw	a1, 0(a1)
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	sw	a1, 12(a0)
	lw	a3, 52(sp)
	lui	a4, 22
	add	a2, a2, a4
	lw	a2, 380(a2)
	addw	a1, a3, a1
	li	a4, 51
	mv	a3, a1
	blt	a1, a4, .LBB3_47
# %bb.46:                               #   in Loop: Header=BB3_5 Depth=1
	li	a3, 51
.LBB3_47:                               #   in Loop: Header=BB3_5 Depth=1
	negw	a2, a2
	blt	a1, a2, .LBB3_49
# %bb.48:                               #   in Loop: Header=BB3_5 Depth=1
	mv	a2, a3
.LBB3_49:                               #   in Loop: Header=BB3_5 Depth=1
	sw	a2, 12(a0)
	li	s8, 1
.LBB3_50:                               #   in Loop: Header=BB3_5 Depth=1
	li	s10, 1
	li	s3, 1
	li	s6, 1
	j	.LBB3_4
.LBB3_51:                               #   in Loop: Header=BB3_5 Depth=1
	addiw	a3, a3, -1
	li	a1, 300
	mv	a0, s1
	lui	a2, %hi(.L.str.5)
	addi	a2, a2, %lo(.L.str.5)
	call	snprintf
	li	a1, 400
	mv	a0, s1
	call	error
	li	s8, 1
	bgtz	s0, .LBB3_21
.LBB3_52:                               #   in Loop: Header=BB3_5 Depth=1
	li	s10, 1
	li	s11, 1
	j	.LBB3_4
.LBB3_53:                               #   in Loop: Header=BB3_5 Depth=1
	li	a2, 84
	mv	a0, s1
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	memcpy
	li	a1, 400
	mv	a0, s1
	call	error
	j	.LBB3_3
.LBB3_54:                               #   in Loop: Header=BB3_5 Depth=1
	li	a0, 114
	beq	a1, a0, .LBB3_57
# %bb.55:                               #   in Loop: Header=BB3_5 Depth=1
	li	a0, 101
	bne	a1, a0, .LBB3_58
.LBB3_56:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, %lo(gop_structure)(s4)
	li	a1, 24
	mul	a1, s0, a1
	add	a0, a0, a1
	sw	zero, 8(a0)
	j	.LBB3_59
.LBB3_57:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a0, %lo(gop_structure)(s4)
	li	a1, 24
	mul	a1, s0, a1
	add	a0, a0, a1
	li	a1, 2
	sw	a1, 8(a0)
	j	.LBB3_59
.LBB3_58:                               #   in Loop: Header=BB3_5 Depth=1
	li	a2, 87
	mv	a0, s1
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	call	memcpy
	li	a1, 400
	mv	a0, s1
	call	error
.LBB3_59:                               #   in Loop: Header=BB3_5 Depth=1
	li	s8, 1
	li	s10, 1
	li	s3, 1
	j	.LBB3_4
.LBB3_60:
	addi	s0, s0, 1
	j	.LBB3_62
.LBB3_61:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.11)
	addi	a1, a1, %lo(.L.str.11)
	li	a2, 65
	mv	a0, s0
	call	memcpy
	li	a1, 400
	mv	a0, s0
	call	error
	li	s0, 1
.LBB3_62:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	sw	s0, 1244(a0)
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end3:
	.size	interpret_gop_structure, .Lfunc_end3-interpret_gop_structure
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function encode_enhancement_layer
.LCPI4_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	encode_enhancement_layer
	.p2align	2
	.type	encode_enhancement_layer,@function
encode_enhancement_layer:               # @encode_enhancement_layer
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
	fsd	fs0, 0(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a2, 1244(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	s10, 22
	beqz	a2, .LBB4_33
# %bb.1:
	lw	a2, 0(a1)
	lui	a3, %hi(start_frame_no_in_this_IGOP)
	lw	a3, %lo(start_frame_no_in_this_IGOP)(a3)
	bge	a3, a2, .LBB4_33
# %bb.2:
	addi	a2, a0, 2047
	lw	a3, 1537(a2)
	addiw	a2, s10, -796
	add	a2, a1, a2
	snez	a3, a3
	sw	a3, 884(a2)
	lw	a4, 1940(a0)
	lw	a3, 1944(a0)
	li	a5, 1
	sw	a5, 24(a1)
	bne	a4, a5, .LBB4_5
# %bb.3:
	sw	zero, 1000(a2)
	beqz	a3, .LBB4_35
# %bb.4:
	lw	a5, 1244(a0)
	li	s1, 1
	sw	s1, 0(a2)
	bgtz	a5, .LBB4_7
	j	.LBB4_32
.LBB4_5:
	beqz	a3, .LBB4_34
# %bb.6:
	sw	zero, 1000(a2)
	lw	a5, 1244(a0)
	li	s1, 1
	sw	s1, 0(a2)
	blez	a5, .LBB4_32
.LBB4_7:
	lui	s2, %hi(gop_structure)
	ld	a4, %lo(gop_structure)(s2)
	lui	a2, 22
	addiw	s3, a2, -808
	li	s4, 24
	li	s7, 2
	lui	a3, %hi(.LCPI4_0)
	fld	fs0, %lo(.LCPI4_0)(a3)
	li	s8, 3
	lui	s9, %hi(start_frame_no_in_this_IGOP)
	lui	s10, %hi(start_tr_in_this_IGOP)
	lui	s11, %hi(input)
	lui	s0, %hi(img)
	addiw	s5, a2, -796
	li	a3, 1
	li	s6, 1
	j	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=1
	addiw	a3, a6, 1
	sw	a3, 0(a2)
	bge	a6, a5, .LBB4_32
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	mul	a2, a3, s4
	add	a4, a4, a2
	lw	a6, -24(a4)
	add	a2, a1, s3
	sw	zero, 1012(a2)
	sw	a6, 24(a1)
	bne	s6, s1, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a6, 980(a2)
	lui	a7, %hi(log2_max_frame_num_minus4)
	lw	a7, %lo(log2_max_frame_num_minus4)(a7)
	addi	a6, a6, 1
	addi	a7, a7, 4
	li	t0, -1
	sllw	a7, t0, a7
	not	a7, a7
	and	a6, a6, a7
	sw	a6, 980(a2)
.LBB4_11:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a6, -16(a4)
	bne	a6, s7, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_9 Depth=1
	li	s6, 1
	sw	s6, 1012(a2)
	j	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_9 Depth=1
	li	s6, 0
.LBB4_14:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a6, 20(a0)
	lw	a7, 1944(a0)
	addi	a6, a6, 1
	fmv.d	fa5, fs0
	beq	a7, s8, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_9 Depth=1
	fcvt.d.w	fa5, a6
	fcvt.d.w	fa4, a5
	fadd.d	fa4, fa4, fs0
	fdiv.d	fa5, fa5, fa4
.LBB4_16:                               #   in Loop: Header=BB4_9 Depth=1
	fsd	fa5, 0(a2)
	lw	a5, 1228(a0)
	beqz	a5, .LBB4_19
# %bb.17:                               #   in Loop: Header=BB4_9 Depth=1
	lw	t0, 1236(a0)
	lw	a1, 0(a1)
	lw	a7, %lo(start_frame_no_in_this_IGOP)(s9)
	beqz	t0, .LBB4_20
# %bb.18:                               #   in Loop: Header=BB4_9 Depth=1
	subw	t0, a1, a7
	remw	a5, t0, a5
	addi	a5, a5, -1
	j	.LBB4_21
.LBB4_19:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a1, 0(a1)
	lw	a7, %lo(start_frame_no_in_this_IGOP)(s9)
.LBB4_20:                               #   in Loop: Header=BB4_9 Depth=1
	not	a5, a7
	add	a5, a1, a5
.LBB4_21:                               #   in Loop: Header=BB4_9 Depth=1
	lw	t0, -20(a4)
	mul	a5, a5, a6
	addi	t0, t0, 1
	fcvt.d.w	fa4, t0
	fmul.d	fa4, fa5, fa4
	fcvt.w.d	t0, fa4, rtz
	add	t0, a5, t0
	slli	a5, t0, 1
	sw	a5, 964(a2)
	lw	t1, %lo(start_tr_in_this_IGOP)(s10)
	bne	a3, s1, .LBB4_23
# %bb.22:                               #   in Loop: Header=BB4_9 Depth=1
	subw	a1, a1, a7
	mul	a1, a1, a6
	j	.LBB4_24
.LBB4_23:                               #   in Loop: Header=BB4_9 Depth=1
	not	a3, a7
	add	a1, a1, a3
	lw	a3, -44(a4)
	mul	a1, a1, a6
	add	a1, a1, t1
	fadd.d	fa5, fa5, fa5
	addi	a3, a3, 1
	fcvt.d.w	fa4, a3
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	t1, fa5, rtz
.LBB4_24:                               #   in Loop: Header=BB4_9 Depth=1
	add	t1, a1, t1
	addi	a0, a0, 2047
	subw	a1, t0, t1
	slli	a1, a1, 1
	sw	a1, 952(a2)
	lw	a1, 1505(a0)
	bnez	a1, .LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a1, 1509(a0)
	mv	a0, a5
	beqz	a1, .LBB4_27
.LBB4_26:                               #   in Loop: Header=BB4_9 Depth=1
	ori	a0, a5, 1
.LBB4_27:                               #   in Loop: Header=BB4_9 Depth=1
	sw	a0, 968(a2)
	sw	a5, 972(a2)
	sw	zero, 956(a2)
	call	encode_one_frame
	ld	a0, %lo(input)(s11)
	addi	a1, a0, 2047
	lw	a1, 1849(a1)
	beqz	a1, .LBB4_29
# %bb.28:                               #   in Loop: Header=BB4_9 Depth=1
	call	report_frame_statistic
	ld	a0, %lo(input)(s11)
.LBB4_29:                               #   in Loop: Header=BB4_9 Depth=1
	ld	a1, %lo(img)(s0)
	add	a2, a1, s5
	lw	a6, 0(a2)
	ld	a4, %lo(gop_structure)(s2)
	mul	a3, a6, s4
	add	a3, a4, a3
	lw	a3, -16(a3)
	lw	a5, 1244(a0)
	bne	a3, s7, .LBB4_8
# %bb.30:                               #   in Loop: Header=BB4_9 Depth=1
	bne	a6, a5, .LBB4_8
# %bb.31:
	lw	a0, 968(a2)
	lui	a3, %hi(log2_max_frame_num_minus4)
	lw	a3, %lo(log2_max_frame_num_minus4)(a3)
	addi	a0, a0, 1
	addi	a3, a3, 4
	li	a4, -1
	sllw	a3, a4, a3
	not	a3, a3
	and	a0, a0, a3
	sw	a0, 968(a2)
	addi	a6, a6, 1
	sw	a6, 0(a2)
.LBB4_32:
	sw	zero, 0(a2)
	lui	s10, 22
.LBB4_33:
	add	a1, a1, s10
	sw	zero, -796(a1)
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
	fld	fs0, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.LBB4_34:
	lw	a3, 968(a2)
	lui	a4, %hi(log2_max_frame_num_minus4)
	lw	a4, %lo(log2_max_frame_num_minus4)(a4)
	addi	a3, a3, 1
	addi	a4, a4, 4
	li	a5, -1
	sllw	a4, a5, a4
	not	a4, a4
	and	a3, a3, a4
	sw	a3, 968(a2)
	sw	zero, 1000(a2)
.LBB4_35:
	lw	a5, 1244(a0)
	li	s0, 1
	sw	s0, 0(a2)
	blez	a5, .LBB4_33
# %bb.36:                               # %.preheader
	lui	s1, 22
	addiw	s2, s1, -808
	lui	s3, %hi(log2_max_frame_num_minus4)
	li	s4, -1
	lui	a2, %hi(.LCPI4_0)
	fld	fs0, %lo(.LCPI4_0)(a2)
	li	s5, 3
	lui	s6, %hi(start_frame_no_in_this_IGOP)
	lui	s7, %hi(input)
	lui	s8, %hi(img)
	addiw	s9, s1, -796
	li	a2, 1
	j	.LBB4_38
.LBB4_37:                               #   in Loop: Header=BB4_38 Depth=1
	ld	a1, %lo(img)(s8)
	add	a3, a1, s1
	lw	a4, -796(a3)
	lw	a5, 1244(a0)
	addi	a2, a4, 1
	sw	a2, -796(a3)
	bge	a4, a5, .LBB4_33
.LBB4_38:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 1940(a0)
	add	a3, a1, s2
	sw	zero, 1012(a3)
	bne	a4, s0, .LBB4_40
# %bb.39:                               #   in Loop: Header=BB4_38 Depth=1
	sw	s0, 1012(a3)
	lw	a6, 980(a3)
	lw	a7, %lo(log2_max_frame_num_minus4)(s3)
	addi	a6, a6, 1
	addi	a7, a7, 4
	sllw	a7, s4, a7
	not	a7, a7
	and	a6, a6, a7
	sw	a6, 980(a3)
.LBB4_40:                               #   in Loop: Header=BB4_38 Depth=1
	lw	a6, 20(a0)
	lw	a7, 1944(a0)
	addi	a6, a6, 1
	fmv.d	fa5, fs0
	beq	a7, s5, .LBB4_42
# %bb.41:                               #   in Loop: Header=BB4_38 Depth=1
	fcvt.d.w	fa5, a6
	fcvt.d.w	fa4, a5
	fadd.d	fa4, fa4, fs0
	fdiv.d	fa5, fa5, fa4
.LBB4_42:                               #   in Loop: Header=BB4_38 Depth=1
	fsd	fa5, 0(a3)
	lw	a7, 1228(a0)
	beqz	a7, .LBB4_45
# %bb.43:                               #   in Loop: Header=BB4_38 Depth=1
	lw	t0, 1236(a0)
	lw	a1, 0(a1)
	lw	a5, %lo(start_frame_no_in_this_IGOP)(s6)
	beqz	t0, .LBB4_46
# %bb.44:                               #   in Loop: Header=BB4_38 Depth=1
	subw	a1, a1, a5
	remw	a1, a1, a7
	addi	a1, a1, -1
	j	.LBB4_47
.LBB4_45:                               #   in Loop: Header=BB4_38 Depth=1
	lw	a1, 0(a1)
	lw	a5, %lo(start_frame_no_in_this_IGOP)(s6)
.LBB4_46:                               #   in Loop: Header=BB4_38 Depth=1
	not	a5, a5
	add	a1, a1, a5
.LBB4_47:                               #   in Loop: Header=BB4_38 Depth=1
	addi	a0, a0, 2047
	mul	a1, a1, a6
	fcvt.d.w	fa4, a2
	fmul.d	fa5, fa5, fa4
	lw	a5, 1505(a0)
	fcvt.w.d	a6, fa5, rtz
	add	a1, a1, a6
	slli	a1, a1, 1
	sw	a1, 964(a3)
	bnez	a5, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_38 Depth=1
	lw	a5, 1509(a0)
	mv	a0, a1
	beqz	a5, .LBB4_50
.LBB4_49:                               #   in Loop: Header=BB4_38 Depth=1
	ori	a0, a1, 1
.LBB4_50:                               #   in Loop: Header=BB4_38 Depth=1
	sw	a0, 968(a3)
	sw	a1, 972(a3)
	bne	a4, s0, .LBB4_52
# %bb.51:                               #   in Loop: Header=BB4_38 Depth=1
	li	a0, -2
	j	.LBB4_53
.LBB4_52:                               #   in Loop: Header=BB4_38 Depth=1
	slli	a0, a2, 1
	addi	a0, a0, -2
.LBB4_53:                               #   in Loop: Header=BB4_38 Depth=1
	sw	a0, 952(a3)
	sw	zero, 956(a3)
	call	encode_one_frame
	ld	a0, %lo(input)(s7)
	lw	a1, 1940(a0)
	bne	a1, s0, .LBB4_56
# %bb.54:                               #   in Loop: Header=BB4_38 Depth=1
	ld	a1, %lo(img)(s8)
	add	a1, a1, s9
	lw	a2, 0(a1)
	lw	a3, 1244(a0)
	bne	a2, a3, .LBB4_56
# %bb.55:                               #   in Loop: Header=BB4_38 Depth=1
	lw	a2, 968(a1)
	lw	a3, %lo(log2_max_frame_num_minus4)(s3)
	addi	a2, a2, 1
	addi	a3, a3, 4
	sllw	a3, s4, a3
	not	a3, a3
	and	a2, a2, a3
	sw	a2, 968(a1)
.LBB4_56:                               #   in Loop: Header=BB4_38 Depth=1
	addi	a1, a0, 2047
	lw	a1, 1849(a1)
	beqz	a1, .LBB4_37
# %bb.57:                               #   in Loop: Header=BB4_38 Depth=1
	call	report_frame_statistic
	ld	a0, %lo(input)(s7)
	j	.LBB4_37
.Lfunc_end4:
	.size	encode_enhancement_layer, .Lfunc_end4-encode_enhancement_layer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	poc_based_ref_management        # -- Begin function poc_based_ref_management
	.p2align	2
	.type	poc_based_ref_management,@function
poc_based_ref_management:               # @poc_based_ref_management
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	ld	a1, 224(a1)
	beqz	a1, .LBB5_2
.LBB5_1:
	ret
.LBB5_2:
	lui	a1, %hi(dpb)
	addi	a1, a1, %lo(dpb)
	lw	a2, 36(a1)
	lw	a3, 32(a1)
	negw	a2, a2
	beq	a3, a2, .LBB5_1
# %bb.3:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lwu	a2, 28(a1)
	beqz	a2, .LBB5_11
# %bb.4:
	lui	a1, %hi(dpb)
	ld	a1, %lo(dpb)(a1)
	li	a3, 0
	slli	a2, a2, 3
	add	a2, a1, a2
	lui	a5, 524288
	addiw	a5, a5, -1
	lui	a4, 2
	j	.LBB5_6
.LBB5_5:                                #   in Loop: Header=BB5_6 Depth=1
	addi	a1, a1, 8
	beq	a1, a2, .LBB5_10
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a1)
	lw	a7, 4(a6)
	beqz	a7, .LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	lw	a7, 8(a6)
	bnez	a7, .LBB5_5
# %bb.8:                                #   in Loop: Header=BB5_6 Depth=1
	lw	a7, 36(a6)
	bge	a7, a5, .LBB5_5
# %bb.9:                                #   in Loop: Header=BB5_6 Depth=1
	ld	a3, 40(a6)
	lw	a5, 4(a3)
	add	a3, a3, a4
	lw	a3, -1828(a3)
	j	.LBB5_5
.LBB5_10:
	mv	s2, a0
	not	s3, a3
	j	.LBB5_12
.LBB5_11:
	mv	s2, a0
	li	s3, -1
.LBB5_12:
	li	a0, 1
	li	a1, 32
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB5_14
# %bb.13:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	no_mem_exit
.LBB5_14:
	li	a0, 1
	li	a1, 32
	li	s4, 1
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB5_16
# %bb.15:
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	call	no_mem_exit
.LBB5_16:
	sd	s0, 24(s1)
	sw	s4, 0(s1)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	add	s2, s3, s2
	sw	s2, 4(s1)
	lui	a1, 22
	add	a0, a0, a1
	sd	s1, 224(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	poc_based_ref_management, .Lfunc_end5-poc_based_ref_management
                                        # -- End function
	.option	pop
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"init_gop_structure: gop_structure"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Slice Type invalid in ExplicitPyramidFormat param. Please check configuration file."
	.size	.L.str.3, 84

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d"
	.size	.L.str.4, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Invalid Frame Order value. Frame position needs to be in [0,%d] range."
	.size	.L.str.5, 71

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Frame Order value %d in frame %d already used for enhancement frame %d."
	.size	.L.str.6, 72

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Slice Type needs to be followed by Display Order. Please check configuration file."
	.size	.L.str.7, 83

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Reference_IDC invalid in ExplicitPyramidFormat param. Please check configuration file."
	.size	.L.str.8, 87

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Reference_IDC needs to be followed by QP. Please check configuration file."
	.size	.L.str.9, 75

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter."
	.size	.L.str.10, 92

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"ExplicitPyramidFormat is empty. Please check configuration file."
	.size	.L.str.11, 65

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"poc_based_ref_management: tmp_drpm"
	.size	.L.str.12, 35

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"poc_based_ref_management: tmp_drpm2"
	.size	.L.str.13, 36

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
