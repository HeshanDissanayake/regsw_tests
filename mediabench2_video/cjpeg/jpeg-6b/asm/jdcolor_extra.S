	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdcolor.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_color_deconverter         # -- Begin function jinit_color_deconverter
	.p2align	2
	.type	jinit_color_deconverter,@function
jinit_color_deconverter:                # @jinit_color_deconverter
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
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 48
	mv	a0, s0
	jalr	a3
	lw	a1, 60(s0)
	mv	s1, a0
	sd	a0, 616(s0)
	lui	a2, %hi(start_pass_dcolor)
	addi	a2, a2, %lo(start_pass_dcolor)
	addi	a3, a1, -2
	li	a0, 2
	sd	a2, 0(s1)
	bltu	a3, a0, .LBB0_3
# %bb.1:
	addi	a2, a1, -4
	bgeu	a2, a0, .LBB0_12
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
	li	a2, 10
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_5:
	lw	a0, 64(s0)
	li	a1, 4
	beq	a0, a1, .LBB0_19
# %bb.6:
	li	a1, 2
	beq	a0, a1, .LBB0_14
# %bb.7:
	li	a1, 1
	bne	a0, a1, .LBB0_23
# %bb.8:
	lw	a0, 60(s0)
	ori	a0, a0, 2
	li	a2, 3
	sw	a1, 144(s0)
	bne	a0, a2, .LBB0_26
# %bb.9:
	lw	a1, 56(s0)
	lui	a0, %hi(grayscale_convert)
	addi	a0, a0, %lo(grayscale_convert)
	li	a2, 2
	sd	a0, 8(s1)
	blt	a1, a2, .LBB0_27
# %bb.10:
	ld	a2, 304(s0)
	addi	a0, a2, 144
	li	a3, 96
	mul	a1, a1, a3
	add	a1, a1, a2
	addi	a1, a1, 48
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a0)
	addi	a0, a0, 96
	bne	a0, a1, .LBB0_11
	j	.LBB0_27
.LBB0_12:
	li	a0, 1
	bne	a1, a0, .LBB0_30
# %bb.13:
	lw	a1, 56(s0)
	bne	a1, a0, .LBB0_4
	j	.LBB0_5
.LBB0_14:
	lw	a0, 60(s0)
	li	a1, 3
	li	a2, 1
	sw	a1, 144(s0)
	beq	a0, a2, .LBB0_31
# %bb.15:
	li	a1, 2
	beq	a0, a1, .LBB0_25
# %bb.16:
	li	a1, 3
	bne	a0, a1, .LBB0_26
# %bb.17:
	lui	a0, 1048570
	addiw	s2, a0, 2022
	lui	a0, 1048565
	addiw	s3, a0, -1746
	lui	a0, 28
	ld	a1, 8(s0)
	addiw	s4, a0, 1442
	lui	a0, 22
	ld	s6, 616(s0)
	ld	a3, 0(a1)
	addiw	s5, a0, 1769
	lui	a0, %hi(ycc_rgb_convert)
	addi	a0, a0, %lo(ycc_rgb_convert)
	sd	a0, 8(s1)
	li	a1, 1
	li	a2, 1024
	li	s1, 1
	mv	a0, s0
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 16(s6)
	li	a1, 1
	li	a2, 1024
	mv	a0, s0
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 24(s6)
	slli	s1, s1, 11
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 32(s6)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 40(s6)
	ld	a1, 16(s6)
	ld	a2, 24(s6)
	ld	a3, 32(s6)
	add	s1, a0, s1
	lui	a4, 713
	addiw	a4, a4, -768
	lui	a5, 1463
	addiw	a5, a5, -1792
	lui	a6, 1044955
	addiw	a6, a6, -256
	lui	a7, 1045713
	addiw	a7, a7, -1152
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	srli	t0, a7, 16
	sw	t0, 0(a1)
	srli	t0, a6, 16
	sw	t0, 0(a2)
	sd	a5, 0(a3)
	sd	a4, 0(a0)
	addi	a0, a0, 8
	addi	a3, a3, 8
	addi	a2, a2, 4
	addi	a1, a1, 4
	add	a4, a4, s2
	add	a5, a5, s3
	add	a6, a6, s4
	add	a7, a7, s5
	bne	a0, s1, .LBB0_18
	j	.LBB0_27
.LBB0_19:
	lw	a0, 60(s0)
	sw	a1, 144(s0)
	beq	a0, a1, .LBB0_25
# %bb.20:
	li	a1, 5
	bne	a0, a1, .LBB0_26
# %bb.21:
	lui	a0, 1048570
	addiw	s2, a0, 2022
	lui	a0, 1048565
	addiw	s3, a0, -1746
	lui	a0, 28
	ld	a1, 8(s0)
	addiw	s4, a0, 1442
	lui	a0, 22
	ld	s6, 616(s0)
	ld	a3, 0(a1)
	addiw	s5, a0, 1769
	lui	a0, %hi(ycck_cmyk_convert)
	addi	a0, a0, %lo(ycck_cmyk_convert)
	sd	a0, 8(s1)
	li	a1, 1
	li	a2, 1024
	li	s1, 1
	mv	a0, s0
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 16(s6)
	li	a1, 1
	li	a2, 1024
	mv	a0, s0
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 24(s6)
	slli	s1, s1, 11
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 32(s6)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 40(s6)
	ld	a1, 16(s6)
	ld	a2, 24(s6)
	ld	a3, 32(s6)
	add	s1, a0, s1
	lui	a4, 713
	addiw	a4, a4, -768
	lui	a5, 1463
	addiw	a5, a5, -1792
	lui	a6, 1044955
	addiw	a6, a6, -256
	lui	a7, 1045713
	addiw	a7, a7, -1152
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	srli	t0, a7, 16
	sw	t0, 0(a1)
	srli	t0, a6, 16
	sw	t0, 0(a2)
	sd	a5, 0(a3)
	sd	a4, 0(a0)
	addi	a0, a0, 8
	addi	a3, a3, 8
	addi	a2, a2, 4
	addi	a1, a1, 4
	add	a4, a4, s2
	add	a5, a5, s3
	add	a6, a6, s4
	add	a7, a7, s5
	bne	a0, s1, .LBB0_22
	j	.LBB0_27
.LBB0_23:
	lw	a1, 60(s0)
	bne	a0, a1, .LBB0_26
# %bb.24:
	lw	a0, 56(s0)
	sw	a0, 144(s0)
.LBB0_25:
	lui	a0, %hi(null_convert)
	addi	a0, a0, %lo(null_convert)
	sd	a0, 8(s1)
	lw	a1, 108(s0)
	li	a0, 1
	bnez	a1, .LBB0_29
	j	.LBB0_28
.LBB0_26:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 27
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_27:
	lw	a1, 108(s0)
	li	a0, 1
	bnez	a1, .LBB0_29
.LBB0_28:
	lw	a0, 144(s0)
.LBB0_29:
	sw	a0, 148(s0)
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
.LBB0_30:
	lw	a0, 56(s0)
	bgtz	a0, .LBB0_5
	j	.LBB0_4
.LBB0_31:
	lui	a0, %hi(gray_rgb_convert)
	addi	a0, a0, %lo(gray_rgb_convert)
	sd	a0, 8(s1)
	lw	a1, 108(s0)
	li	a0, 1
	bnez	a1, .LBB0_29
	j	.LBB0_28
.Lfunc_end0:
	.size	jinit_color_deconverter, .Lfunc_end0-jinit_color_deconverter
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_dcolor
	.type	start_pass_dcolor,@function
start_pass_dcolor:                      # @start_pass_dcolor
# %bb.0:
	ret
.Lfunc_end1:
	.size	start_pass_dcolor, .Lfunc_end1-start_pass_dcolor
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function grayscale_convert
	.type	grayscale_convert,@function
grayscale_convert:                      # @grayscale_convert
# %bb.0:
	ld	a1, 0(a1)
	lw	a5, 136(a0)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	li	a3, 0
	tail	jcopy_sample_rows
.Lfunc_end2:
	.size	grayscale_convert, .Lfunc_end2-grayscale_convert
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function ycc_rgb_convert
	.type	ycc_rgb_convert,@function
ycc_rgb_convert:                        # @ycc_rgb_convert
# %bb.0:
	blez	a4, .LBB3_6
# %bb.1:
	lwu	t1, 136(a0)
	beqz	t1, .LBB3_6
# %bb.2:
	ld	t0, 616(a0)
	ld	a0, 424(a0)
	ld	a5, 16(t0)
	ld	a6, 24(t0)
	ld	a7, 32(t0)
	ld	t0, 40(t0)
	slli	t2, t1, 1
	add	t1, t2, t1
	li	t2, 1
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	mv	t3, a4
	ld	a4, 0(a1)
	slli	t4, a2, 32
	srli	t6, t4, 29
	ld	t5, 8(a1)
	add	a4, a4, t6
	ld	n1, 16(a1)
	ld	t4, 0(a4)
	add	t5, t5, t6
	ld	t5, 0(t5)
	add	n1, n1, t6
	ld	t6, 0(a3)
	ld	n1, 0(n1)
	addiw	a4, t3, -1
	addi	a2, a2, 1
	add	n2, t6, t1
.LBB3_4:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	n3, 0(n1)
	lbu	n4, 0(t4)
	slli	n5, n3, 2
	add	n5, a5, n5
	lw	n5, 0(n5)
	addw	n5, n5, n4
	add	n5, a0, n5
	lbu	n5, 0(n5)
	lbu	n6, 0(t5)
	sb	n5, 0(t6)
	slli	n5, n6, 3
	add	n5, t0, n5
	ld	n5, 0(n5)
	slli	n3, n3, 3
	add	n3, a7, n3
	ld	n3, 0(n3)
	add	n3, n3, n5
	srli	n3, n3, 16
	addw	n3, n3, n4
	add	n3, a0, n3
	lbu	n3, 0(n3)
	sb	n3, 1(t6)
	slli	n6, n6, 2
	add	n6, a6, n6
	lw	n3, 0(n6)
	addw	n3, n3, n4
	add	n3, a0, n3
	lbu	n3, 0(n3)
	sb	n3, 2(t6)
	addi	n1, n1, 1
	addi	t5, t5, 1
	addi	t6, t6, 3
	addi	t4, t4, 1
	bne	t6, n2, .LBB3_4
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	addi	a3, a3, 8
	blt	t2, t3, .LBB3_3
.LBB3_6:
	ret
.Lfunc_end3:
	.size	ycc_rgb_convert, .Lfunc_end3-ycc_rgb_convert
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function gray_rgb_convert
	.type	gray_rgb_convert,@function
gray_rgb_convert:                       # @gray_rgb_convert
# %bb.0:
	blez	a4, .LBB4_6
# %bb.1:
	lwu	a0, 136(a0)
	beqz	a0, .LBB4_6
# %bb.2:
	li	a5, 1
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	ld	a6, 0(a1)
	slli	a7, a2, 32
	srli	a7, a7, 29
	add	a6, a6, a7
	ld	t0, 0(a3)
	ld	a7, 0(a6)
	mv	a6, a4
	addiw	a4, a4, -1
	addi	t0, t0, 2
	add	t1, a7, a0
.LBB4_4:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(a7)
	sb	t2, 0(t0)
	sb	t2, -1(t0)
	sb	t2, -2(t0)
	addi	a7, a7, 1
	addi	t0, t0, 3
	bne	a7, t1, .LBB4_4
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 8
	blt	a5, a6, .LBB4_3
.LBB4_6:
	ret
.Lfunc_end4:
	.size	gray_rgb_convert, .Lfunc_end4-gray_rgb_convert
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
	lw	a5, 56(a0)
	blez	a5, .LBB5_9
# %bb.2:
	lw	a0, 136(a0)
	beqz	a0, .LBB5_9
# %bb.3:
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
	addi	a0, a0, 1
	li	a6, 1
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #       Child Loop BB5_6 Depth 3
	li	t0, 0
	mv	a7, a4
	addiw	a4, a4, -1
	slli	t1, a2, 32
	srli	t1, t1, 32
	slli	t1, t1, 3
.LBB5_5:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_6 Depth 3
	slli	t2, t0, 3
	add	t2, a1, t2
	ld	t2, 0(t2)
	add	t2, t2, t1
	ld	t3, 0(a3)
	ld	t4, 0(t2)
	add	t2, t3, t0
	add	t3, t4, a0
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t5, 0(t4)
	addi	t6, t4, 1
	sb	t5, 0(t2)
	add	t2, t2, a5
	mv	t4, t6
	bne	t6, t3, .LBB5_6
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=2
	addi	t0, t0, 1
	bne	t0, a5, .LBB5_5
# %bb.8:                                #   in Loop: Header=BB5_4 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 8
	blt	a6, a7, .LBB5_4
.LBB5_9:
	ret
.Lfunc_end5:
	.size	null_convert, .Lfunc_end5-null_convert
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function ycck_cmyk_convert
	.type	ycck_cmyk_convert,@function
ycck_cmyk_convert:                      # @ycck_cmyk_convert
# %bb.0:
	blez	a4, .LBB6_6
# %bb.1:
	lwu	t1, 136(a0)
	beqz	t1, .LBB6_6
# %bb.2:
	ld	t0, 616(a0)
	ld	a0, 424(a0)
	ld	a5, 16(t0)
	ld	a6, 24(t0)
	ld	a7, 32(t0)
	ld	t0, 40(t0)
	slli	t1, t1, 2
	li	t2, 1
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	mv	t3, a4
	ld	a4, 0(a1)
	slli	t4, a2, 32
	srli	n1, t4, 29
	ld	t5, 8(a1)
	add	a4, a4, n1
	ld	t4, 0(a4)
	ld	a4, 16(a1)
	add	t5, t5, n1
	ld	n2, 24(a1)
	ld	t5, 0(t5)
	add	a4, a4, n1
	ld	t6, 0(a4)
	add	n2, n2, n1
	ld	n1, 0(a3)
	ld	n2, 0(n2)
	addiw	a4, t3, -1
	addi	a2, a2, 1
	add	n3, n1, t1
.LBB6_4:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	n4, 0(t6)
	lbu	n5, 0(t4)
	slli	n6, n4, 2
	add	n6, a5, n6
	lw	n6, 0(n6)
	xori	n5, n5, 255
	subw	n6, n5, n6
	add	n6, a0, n6
	lbu	n6, 0(n6)
	lbu	n7, 0(t5)
	sb	n6, 0(n1)
	slli	n6, n7, 3
	add	n6, t0, n6
	ld	n6, 0(n6)
	slli	n4, n4, 3
	add	n4, a7, n4
	ld	n4, 0(n4)
	add	n4, n4, n6
	srli	n4, n4, 16
	subw	n4, n5, n4
	add	n4, a0, n4
	lbu	n4, 0(n4)
	sb	n4, 1(n1)
	slli	n7, n7, 2
	add	n7, a6, n7
	lw	n4, 0(n7)
	subw	n4, n5, n4
	add	n4, a0, n4
	lbu	n4, 0(n4)
	sb	n4, 2(n1)
	lbu	n4, 0(n2)
	sb	n4, 3(n1)
	addi	n2, n2, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	n1, n1, 4
	addi	t4, t4, 1
	bne	n1, n3, .LBB6_4
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	addi	a3, a3, 8
	blt	t2, t3, .LBB6_3
.LBB6_6:
	ret
.Lfunc_end6:
	.size	ycck_cmyk_convert, .Lfunc_end6-ycck_cmyk_convert
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
