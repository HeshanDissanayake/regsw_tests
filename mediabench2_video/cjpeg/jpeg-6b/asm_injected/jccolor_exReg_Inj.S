	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jccolor.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_color_converter           # -- Begin function jinit_color_converter
	.p2align	2
	.type	jinit_color_converter,@function
jinit_color_converter:                  # @jinit_color_converter
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 24
	mv	a0, s0
	jalr	a3
	lw	a1, 60(s0)
	mv	s1, a0
	sd	a0, 472(s0)
	lui	a2, %hi(null_method)
	addi	a2, a2, %lo(null_method)
	addi	a3, a1, -2
	li	a0, 2
	sd	a2, 0(s1)
	bltu	a3, a0, .LBB0_3
# %bb.1:
	addi	a2, a1, -4
	bgeu	a2, a0, .LBB0_13
# %bb.2:
	lw	a0, 56(s0)
	li	a1, 4
	bne	a0, a1, .LBB0_4
	j	.LBB0_5
.LBB0_3:
	lw	a0, 56(s0)
	li	a1, 3
	beq	a0, a1, .LBB0_5
.LBB0_4:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 9
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_5:
	lw	a0, 80(s0)
	addi	a1, a0, -1
	li	a2, 4
	bltu	a2, a1, .LBB0_33
# %bb.6:
	slli	a1, a1, 2
	lui	a0, %hi(.LJTI0_0)
	addi	a0, a0, %lo(.LJTI0_0)
	add	a0, a1, a0
	lw	a0, 0(a0)
	jr	a0
.LBB0_7:
	lw	a0, 76(s0)
	li	a1, 1
	beq	a0, a1, .LBB0_9
# %bb.8:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 10
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_9:
	lw	a0, 60(s0)
	li	a1, 3
	beq	a0, a1, .LBB0_12
# %bb.10:
	li	a1, 2
	beq	a0, a1, .LBB0_38
# %bb.11:
	li	a1, 1
	bne	a0, a1, .LBB0_32
.LBB0_12:
	lui	a0, %hi(grayscale_convert)
	addi	a0, a0, %lo(grayscale_convert)
	j	.LBB0_37
.LBB0_13:
	li	a0, 1
	bne	a1, a0, .LBB0_28
# %bb.14:
	lw	a1, 56(s0)
	bne	a1, a0, .LBB0_4
	j	.LBB0_5
.LBB0_15:
	lw	a0, 76(s0)
	li	a1, 4
	beq	a0, a1, .LBB0_17
# %bb.16:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 10
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_17:
	lw	a0, 60(s0)
	li	a1, 5
	beq	a0, a1, .LBB0_36
# %bb.18:
	li	a1, 4
	bne	a0, a1, .LBB0_32
# %bb.19:
	lui	a0, %hi(rgb_ycc_start)
	addi	a0, a0, %lo(rgb_ycc_start)
	sd	a0, 0(s1)
	lui	a0, %hi(cmyk_ycck_convert)
	addi	a0, a0, %lo(cmyk_ycck_convert)
	j	.LBB0_37
.LBB0_20:
	lw	a0, 76(s0)
	li	s2, 3
	beq	a0, s2, .LBB0_22
# %bb.21:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 10
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_22:
	lw	a0, 60(s0)
	beq	a0, s2, .LBB0_36
# %bb.23:
	li	a1, 2
	bne	a0, a1, .LBB0_32
# %bb.24:
	lui	a0, %hi(rgb_ycc_start)
	addi	a0, a0, %lo(rgb_ycc_start)
	sd	a0, 0(s1)
	lui	a0, %hi(rgb_ycc_convert)
	addi	a0, a0, %lo(rgb_ycc_convert)
	j	.LBB0_37
.LBB0_25:
	lw	a0, 76(s0)
	li	s2, 4
	beq	a0, s2, .LBB0_27
# %bb.26:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 10
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_27:
	lw	a0, 60(s0)
	bne	a0, s2, .LBB0_32
	j	.LBB0_36
.LBB0_28:
	lw	a0, 56(s0)
	bgtz	a0, .LBB0_5
	j	.LBB0_4
.LBB0_29:
	lw	a0, 76(s0)
	li	a1, 3
	beq	a0, a1, .LBB0_31
# %bb.30:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 10
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_31:
	lw	a0, 60(s0)
	li	a1, 2
	beq	a0, a1, .LBB0_36
.LBB0_32:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 27
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.LBB0_33:
	lw	a1, 60(s0)
	bne	a0, a1, .LBB0_35
# %bb.34:
	lw	a0, 76(s0)
	lw	a1, 56(s0)
	beq	a0, a1, .LBB0_36
.LBB0_35:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 27
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_36:
	lui	a0, %hi(null_convert)
	addi	a0, a0, %lo(null_convert)
.LBB0_37:
	sd	a0, 8(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB0_38:
	lui	a0, %hi(rgb_ycc_start)
	addi	a0, a0, %lo(rgb_ycc_start)
	sd	a0, 0(s1)
	lui	a0, %hi(rgb_gray_convert)
	addi	a0, a0, %lo(rgb_gray_convert)
	j	.LBB0_37
.Lfunc_end0:
	.size	jinit_color_converter, .Lfunc_end0-jinit_color_converter
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_7
	.word	.LBB0_29
	.word	.LBB0_20
	.word	.LBB0_25
	.word	.LBB0_15
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function null_method
	.type	null_method,@function
null_method:                            # @null_method
# %bb.0:
	ret
.Lfunc_end1:
	.size	null_method, .Lfunc_end1-null_method
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function grayscale_convert
	.type	grayscale_convert,@function
grayscale_convert:                      # @grayscale_convert
# %bb.0:
	blez	a4, .LBB2_6
# %bb.1:
	lwu	a5, 48(a0)
	beqz	a5, .LBB2_6
# %bb.2:
	lw	a0, 56(a0)
	li	a6, 1
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	ld	a7, 0(a2)
	slli	t0, a3, 32
	srli	t0, t0, 29
	add	a7, a7, t0
	ld	t0, 0(a7)
	ld	t1, 0(a1)
	mv	a7, a4
	addiw	a4, a4, -1
	add	t2, t0, a5
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t1)
	sb	t3, 0(t0)
	addi	t0, t0, 1
	add	t1, t1, a0
	bne	t0, t2, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	addi	a1, a1, 8
	addi	a3, a3, 1
	blt	a6, a7, .LBB2_3
.LBB2_6:
	ret
.Lfunc_end2:
	.size	grayscale_convert, .Lfunc_end2-grayscale_convert
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function rgb_ycc_start
	.type	rgb_ycc_start,@function
rgb_ycc_start:                          # @rgb_ycc_start
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 8(a0)
	ld	s0, 472(a0)
	ld	a3, 0(a1)
	li	a1, 1
	lui	a2, 4
	lui	s1, 4
	jalr	a3
	li	a1, 0
	li	a2, 0
	li	a3, 0
	li	a4, 0
	li	a5, 0
	li	a6, 0
	li	a7, 7
	slli	a7, a7, 11
	add	a7, a0, a7
	li	t0, 5
	slli	t0, t0, 11
	add	t0, a0, t0
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	lui	x5, 2
	add	t1, a0, x5
	lui	t2, 1
	add	t2, a0, t2
	addi	t3, a0, 2047
	addi	t3, t3, 1
	sd	a0, 16(s0)
	add	t4, a0, s1
	lui	t5, 8
	lui	t6, 2056
	addiw	t6, t6, -1
	regsw_c	x9, 0x534(x19)		# 100110100110100110100
	lui	x1, 1048575
	addiw	x1, x1, -1233
	lui	x2, 1048569
	addiw	x2, x2, 1233
	lui	x3, 1048571
	addiw	x3, x3, -1229
	lui	x4, 1048573
	regsw_c	x9, 0x534(x27)		# 110110100110100110100
	addiw	x4, x4, 1229
	addiw	x5, x5, -721
	lui	x6, 9
	addiw	x6, x6, 1606
	lui	x7, 5
	addiw	x7, x7, -885
	lui	x8, 8
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	sd	a1, 0(a0)
	sd	a2, 0(t3)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x8, 0(t2)
	sd	a3, -2048(t1)
	sd	a4, 0(t1)
	sd	t6, 0(t0)
	sd	a5, -2048(a7)
	sd	a6, 0(a7)
	addi	a7, a7, 8
	regsw_c	x16, 0x9(x4)		# 001001000000000001001
	add	a6, a6, x1
	add	a5, a5, x2
	addi	t0, t0, 8
	add	t6, t6, t5
	addi	t1, t1, 8
	add	a4, a4, x3
	add	a3, a3, x4
	addi	t2, t2, 8
	regsw_c	x2, 0x40(x28)		# 111000001000001000000
	add	x8, x8, x5
	addi	t3, t3, 8
	add	a2, a2, x6
	addi	a0, a0, 8
	add	a1, a1, x7
	bne	a7, t4, .LBB3_1
# %bb.2:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	rgb_ycc_start, .Lfunc_end3-rgb_ycc_start
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function rgb_gray_convert
	.type	rgb_gray_convert,@function
rgb_gray_convert:                       # @rgb_gray_convert
# %bb.0:
	blez	a4, .LBB4_6
# %bb.1:
	lwu	a5, 48(a0)
	beqz	a5, .LBB4_6
# %bb.2:
	ld	a0, 472(a0)
	ld	a0, 16(a0)
	slli	a6, a5, 1
	add	a5, a6, a5
	li	a6, 1
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	ld	a7, 0(a2)
	ld	t0, 0(a1)
	slli	t1, a3, 32
	srli	t1, t1, 29
	add	a7, a7, t1
	ld	t1, 0(a7)
	mv	a7, a4
	addiw	a4, a4, -1
	add	t2, t0, a5
.LBB4_4:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t0)
	lbu	t4, 1(t0)
	lbu	t5, 2(t0)
	slli	t3, t3, 3
	add	t3, a0, t3
	ld	t3, 0(t3)
	addi	t4, t4, 256
	slli	t4, t4, 3
	add	t4, a0, t4
	ld	t4, 0(t4)
	addi	t5, t5, 512
	slli	t5, t5, 3
	add	t5, a0, t5
	ld	t5, 0(t5)
	add	t3, t4, t3
	add	t3, t3, t5
	srli	t3, t3, 16
	sb	t3, 0(t1)
	addi	t0, t0, 3
	addi	t1, t1, 1
	bne	t0, t2, .LBB4_4
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	addi	a1, a1, 8
	addi	a3, a3, 1
	blt	a6, a7, .LBB4_3
.LBB4_6:
	ret
.Lfunc_end4:
	.size	rgb_gray_convert, .Lfunc_end4-rgb_gray_convert
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function null_convert
	.type	null_convert,@function
null_convert:                           # @null_convert
# %bb.0:
	blez	a4, .LBB5_9
# %bb.1:
	lw	a5, 76(a0)
	blez	a5, .LBB5_9
# %bb.2:
	lwu	a0, 48(a0)
	beqz	a0, .LBB5_9
# %bb.3:
	li	a6, 1
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #       Child Loop BB5_6 Depth 3
	li	t0, 0
	mv	a7, a4
	addiw	a4, a4, -1
	slli	t1, a3, 32
	srli	t1, t1, 32
	slli	t1, t1, 3
.LBB5_5:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_6 Depth 3
	slli	t2, t0, 3
	add	t2, a2, t2
	ld	t2, 0(t2)
	ld	t3, 0(a1)
	add	t2, t2, t1
	ld	t2, 0(t2)
	add	t3, t3, t0
	add	t4, t2, a0
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t5, 0(t3)
	sb	t5, 0(t2)
	addi	t2, t2, 1
	add	t3, t3, a5
	bne	t2, t4, .LBB5_6
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=2
	addi	t0, t0, 1
	bne	t0, a5, .LBB5_5
# %bb.8:                                #   in Loop: Header=BB5_4 Depth=1
	addi	a1, a1, 8
	addi	a3, a3, 1
	blt	a6, a7, .LBB5_4
.LBB5_9:
	ret
.Lfunc_end5:
	.size	null_convert, .Lfunc_end5-null_convert
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function rgb_ycc_convert
	.type	rgb_ycc_convert,@function
rgb_ycc_convert:                        # @rgb_ycc_convert
# %bb.0:
	blez	a4, .LBB6_6
# %bb.1:
	lwu	a5, 48(a0)
	beqz	a5, .LBB6_6
# %bb.2:
	ld	a0, 472(a0)
	ld	a0, 16(a0)
	slli	a6, a5, 1
	add	a5, a6, a5
	li	a6, 1
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	ld	a7, 0(a1)
	ld	t0, 0(a2)
	slli	t1, a3, 32
	srli	t3, t1, 29
	ld	t2, 8(a2)
	add	t0, t0, t3
	ld	t4, 16(a2)
	ld	t1, 0(t0)
	add	t2, t2, t3
	ld	t2, 0(t2)
	add	t3, t4, t3
	ld	t3, 0(t3)
	mv	t0, a4
	addiw	a4, a4, -1
	add	t4, a7, a5
.LBB6_4:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t5, 0(a7)
	lbu	t6, 1(a7)
	regsw_c	x11, 0x535(x18)		# 100100101110100110101
	lbu	x1, 2(a7)
	slli	x2, t5, 3
	add	x2, a0, x2
	ld	x2, 0(x2)
	addi	x3, t6, 256
	slli	x3, x3, 3
	add	x3, a0, x3
	regsw_c	x13, 0x3bf(x27)		# 110110110101110111111
	ld	x3, 0(x3)
	addi	x4, x1, 512
	slli	x4, x4, 3
	add	x4, a0, x4
	ld	x4, 0(x4)
	add	x2, x3, x2
	add	x2, x2, x4
	regsw_c	x25, 0x574(x24)		# 110001100110101110100
	srli	x2, x2, 16
	sb	x2, 0(t1)
	addi	x2, t5, 768
	slli	x2, x2, 3
	add	x2, a0, x2
	ld	x2, 0(x2)
	addi	x3, t6, 1024
	regsw_c	x29, 0x5ae(x26)		# 110101110110110101110
	slli	x3, x3, 3
	add	x3, a0, x3
	ld	x3, 0(x3)
	addi	x4, x1, 1280
	slli	x4, x4, 3
	add	x4, a0, x4
	ld	x4, 0(x4)
	regsw_c	x28, 0x200(x31)		# 111111110001000000000
	add	x2, x3, x2
	add	x2, x2, x4
	srli	x2, x2, 16
	sb	x2, 0(t2)
	addi	t5, t5, 1280
	slli	t5, t5, 3
	add	t5, a0, t5
	ld	t5, 0(t5)
	addi	t6, t6, 1536
	slli	t6, t6, 3
	add	t6, a0, t6
	ld	t6, 0(t6)
	regsw_c	x11, 0x408(x27)		# 110110101110000001000
	addi	x1, x1, 1792
	slli	x1, x1, 3
	add	x1, a0, x1
	ld	x1, 0(x1)
	add	t5, t6, t5
	add	t5, t5, x1
	srli	t5, t5, 16
	sb	t5, 0(t3)
	addi	t3, t3, 1
	addi	t2, t2, 1
	addi	a7, a7, 3
	addi	t1, t1, 1
	bne	a7, t4, .LBB6_4
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	addi	a1, a1, 8
	addi	a3, a3, 1
	blt	a6, t0, .LBB6_3
.LBB6_6:
	ret
.Lfunc_end6:
	.size	rgb_ycc_convert, .Lfunc_end6-rgb_ycc_convert
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function cmyk_ycck_convert
	.type	cmyk_ycck_convert,@function
cmyk_ycck_convert:                      # @cmyk_ycck_convert
# %bb.0:
	blez	a4, .LBB7_6
# %bb.1:
	lwu	a5, 48(a0)
	beqz	a5, .LBB7_6
# %bb.2:
	ld	a0, 472(a0)
	ld	a0, 16(a0)
	slli	a5, a5, 2
	li	a6, 1
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	ld	a7, 0(a1)
	ld	t0, 0(a2)
	slli	t1, a3, 32
	srli	t1, t1, 29
	ld	t2, 8(a2)
	add	t0, t0, t1
	ld	t0, 0(t0)
	ld	t3, 16(a2)
	add	t2, t2, t1
	ld	t4, 24(a2)
	ld	t2, 0(t2)
	add	t3, t3, t1
	ld	t3, 0(t3)
	add	t1, t4, t1
	ld	t4, 0(t1)
	mv	t1, a4
	addiw	a4, a4, -1
	add	t5, a7, a5
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t6, 1(a7)
	regsw_c	x8, 0x18e(x18)		# 100100100000110001110
	lbu	x1, 2(a7)
	lbu	x2, 3(a7)
	lbu	x3, 0(a7)
	xori	t6, t6, 255
	xori	x1, x1, 255
	sb	x2, 0(t4)
	xori	x2, x3, 255
	regsw_c	x29, 0x1ae(x26)		# 110101110100110101110
	slli	x3, x2, 3
	add	x3, a0, x3
	ld	x3, 0(x3)
	addi	x4, t6, 256
	slli	x4, x4, 3
	add	x4, a0, x4
	ld	x4, 0(x4)
	regsw_c	x11, 0x5fe(x27)		# 110110101110111111110
	addi	x5, x1, 512
	slli	x5, x5, 3
	add	x5, a0, x5
	ld	x5, 0(x5)
	add	x3, x4, x3
	add	x3, x3, x5
	srli	x3, x3, 16
	regsw_c	x13, 0x3a6(x7)		# 001110110101110100110
	sb	x3, 0(t0)
	addi	x3, x2, 768
	slli	x3, x3, 3
	add	x3, a0, x3
	ld	x3, 0(x3)
	addi	x4, t6, 1024
	slli	x4, x4, 3
	regsw_c	x13, 0x577(x23)		# 101110110110101110111
	add	x4, a0, x4
	ld	x4, 0(x4)
	addi	x5, x1, 1280
	slli	x5, x5, 3
	add	x5, a0, x5
	ld	x5, 0(x5)
	add	x3, x4, x3
	regsw_c	x3, 0x5ae(x31)		# 111110001110110101110
	add	x3, x3, x5
	srli	x3, x3, 16
	sb	x3, 0(t2)
	addi	x2, x2, 1280
	slli	x2, x2, 3
	add	x2, a0, x2
	ld	x2, 0(x2)
	addi	t6, t6, 1536
	slli	t6, t6, 3
	add	t6, a0, t6
	ld	t6, 0(t6)
	regsw_c	x11, 0x448(x27)		# 110110101110001001000
	addi	x1, x1, 1792
	slli	x1, x1, 3
	add	x1, a0, x1
	ld	x1, 0(x1)
	add	t6, t6, x2
	add	t6, t6, x1
	srli	t6, t6, 16
	sb	t6, 0(t3)
	addi	t3, t3, 1
	addi	t2, t2, 1
	addi	t0, t0, 1
	addi	a7, a7, 4
	addi	t4, t4, 1
	bne	a7, t5, .LBB7_4
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	addi	a1, a1, 8
	addi	a3, a3, 1
	blt	a6, t1, .LBB7_3
.LBB7_6:
	ret
.Lfunc_end7:
	.size	cmyk_ycck_convert, .Lfunc_end7-cmyk_ycck_convert
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
