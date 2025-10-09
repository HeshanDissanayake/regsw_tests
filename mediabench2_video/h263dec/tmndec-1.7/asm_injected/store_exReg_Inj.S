	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"store.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	storeframe                      # -- Begin function storeframe
	.p2align	2
	.type	storeframe,@function
storeframe:                             # @storeframe
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
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(outputname)
	ld	a2, %lo(outputname)(a2)
	mv	a4, a1
	mv	s0, a0
	addi	a0, sp, 24
	li	a3, 102
	mv	a1, a2
	mv	a2, a4
	call	sprintf
	lui	a0, %hi(outtype)
	lw	a0, %lo(outtype)(a0)
	li	a1, 5
	bltu	a1, a0, .LBB0_35
# %bb.1:
	lui	a1, %hi(coded_picture_width)
	lw	s6, %lo(coded_picture_width)(a1)
	lui	a1, %hi(vertical_size)
	slli	a0, a0, 2
	lui	a2, %hi(.LJTI0_0)
	addi	a2, a2, %lo(.LJTI0_0)
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	s2, %lo(vertical_size)(a1)
	jr	a0
.LBB0_2:
	lui	a0, %hi(horizontal_size)
	lw	s3, %lo(horizontal_size)(a0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	addi	a0, sp, 56
	addi	a2, sp, 24
	call	sprintf
	ld	a1, 0(s0)
	addi	a0, sp, 56
	mv	a2, s6
	mv	a3, s3
	mv	a4, s2
	li	a5, 0
	call	store_yuv1
	srai	s1, s6, 1
	srai	s3, s3, 1
	srai	s2, s2, 1
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	addi	a0, sp, 56
	addi	a2, sp, 24
	call	sprintf
	ld	a1, 8(s0)
	addi	a0, sp, 56
	mv	a2, s1
	mv	a3, s3
	mv	a4, s2
	li	a5, 0
	call	store_yuv1
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	addi	a0, sp, 56
	addi	a2, sp, 24
	call	sprintf
	ld	a1, 16(s0)
	addi	a0, sp, 56
	mv	a2, s1
	mv	a3, s3
	mv	a4, s2
	li	a5, 0
	call	store_yuv1
	j	.LBB0_35
.LBB0_3:
	addi	a0, sp, 24
	li	a4, 1
	mv	a1, s0
	mv	a2, s6
	mv	a3, s2
	j	.LBB0_29
.LBB0_4:
	lui	s1, %hi(store_sif.u422)
	ld	a0, %lo(store_sif.u422)(s1)
	bnez	a0, .LBB0_9
# %bb.5:
	lui	s4, %hi(coded_picture_height)
	lw	a0, %lo(coded_picture_height)(s4)
	srli	a1, s6, 1
	mulw	s3, a0, a1
	mv	a0, s3
	call	malloc
	sd	a0, %lo(store_sif.u422)(s1)
	bnez	a0, .LBB0_7
# %bb.6:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
	lui	a0, %hi(coded_picture_width)
	lw	a0, %lo(coded_picture_width)(a0)
	lw	a1, %lo(coded_picture_height)(s4)
	srli	a0, a0, 1
	mulw	s3, a0, a1
.LBB0_7:
	mv	a0, s3
	call	malloc
	lui	a1, %hi(store_sif.v422)
	sd	a0, %lo(store_sif.v422)(a1)
	bnez	a0, .LBB0_9
# %bb.8:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
.LBB0_9:
	ld	a0, 8(s0)
	ld	a1, %lo(store_sif.u422)(s1)
	call	conv420to422
	ld	a0, 16(s0)
	lui	a1, %hi(store_sif.v422)
	ld	a1, %lo(store_sif.v422)(a1)
	call	conv420to422
	addi	a0, sp, 24
	addi	s1, sp, 24
	call	strlen
	add	a0, s1, a0
	li	a1, 46
	sb	a1, 0(a0)
	li	a1, 83
	sb	a1, 1(a0)
	li	a1, 73
	lui	a2, %hi(quiet)
	lw	a2, %lo(quiet)(a2)
	sb	a1, 2(a0)
	li	a1, 70
	sb	a1, 3(a0)
	sb	zero, 4(a0)
	beqz	a2, .LBB0_36
.LBB0_10:
	addi	a0, sp, 24
	li	a1, 577
	li	a2, 438
	call	open
	lui	a1, %hi(outfile)
	li	a2, -1
	sw	a0, %lo(outfile)(a1)
	bne	a0, a2, .LBB0_12
# %bb.11:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	addi	a2, sp, 24
	mv	a0, s3
	call	sprintf
	mv	a0, s3
	call	error
.LBB0_12:
	lui	a0, %hi(optr)
	lui	s3, %hi(obfr)
	addi	s3, s3, %lo(obfr)
	sd	s3, %lo(optr)(a0)
	blez	s2, .LBB0_31
# %bb.13:
	lui	s4, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(s4)
	blez	a0, .LBB0_31
# %bb.14:
	li	s5, 0
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	srai	a1, s6, 1
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	lui	s9, %hi(optr)
	lui	s10, 1
	add	s10, s3, s10
	lui	s11, %hi(outfile)
	mv	a2, s3
	j	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=1
	addi	s5, s5, 1
	beq	s5, s2, .LBB0_32
.LBB0_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
	blez	a0, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	li	s7, 0
	lui	a0, %hi(store_sif.v422)
	ld	s8, %lo(store_sif.v422)(a0)
	lui	a0, %hi(store_sif.u422)
	ld	s6, %lo(store_sif.u422)(a0)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	mul	a0, s5, a0
	ld	s1, 0(s0)
	add	s8, s8, a0
	add	s6, s6, a0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	mul	a0, s5, a0
	add	s1, s1, a0
	j	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
	lw	a0, %lo(horizontal_size)(s4)
	addi	s6, s6, 1
	addi	s8, s8, 1
	addiw	s7, s7, 2
	addi	s1, s1, 2
	bge	s7, a0, .LBB0_15
.LBB0_19:                               #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, 0(s6)
	addi	a1, a2, 1
	sd	a1, %lo(optr)(s9)
	sb	a0, 0(a2)
	beq	a1, s10, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	ld	a1, %lo(optr)(s9)
	j	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_19 Depth=2
	lw	a0, %lo(outfile)(s11)
	lui	a2, 1
	mv	a1, s3
	call	write
	mv	a1, s3
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	lbu	a2, 0(s1)
	addi	a0, a1, 1
	sd	a0, %lo(optr)(s9)
	sb	a2, 0(a1)
	bne	a0, s10, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	lw	a0, %lo(outfile)(s11)
	lui	a2, 1
	mv	a1, s3
	call	write
	mv	a0, s3
.LBB0_24:                               #   in Loop: Header=BB0_19 Depth=2
	lbu	a2, 0(s8)
	addi	a1, a0, 1
	sd	a1, %lo(optr)(s9)
	sb	a2, 0(a0)
	bne	a1, s10, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_19 Depth=2
	lw	a0, %lo(outfile)(s11)
	lui	a2, 1
	mv	a1, s3
	call	write
	mv	a1, s3
.LBB0_26:                               #   in Loop: Header=BB0_19 Depth=2
	lbu	a0, 1(s1)
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s9)
	sb	a0, 0(a1)
	bne	a2, s10, .LBB0_18
# %bb.27:                               #   in Loop: Header=BB0_19 Depth=2
	lw	a0, %lo(outfile)(s11)
	lui	a2, 1
	mv	a1, s3
	call	write
	sd	s3, %lo(optr)(s9)
	mv	a2, s3
	j	.LBB0_18
.LBB0_28:
	addi	a0, sp, 24
	mv	a1, s0
	mv	a2, s6
	mv	a3, s2
	li	a4, 0
.LBB0_29:
	call	store_ppm_tga
	j	.LBB0_35
.LBB0_30:
	lui	a0, %hi(horizontal_size)
	lw	s3, %lo(horizontal_size)(a0)
	ld	a1, 0(s0)
	addi	a0, sp, 24
	li	a5, 1
	mv	a2, s6
	mv	a3, s3
	mv	a4, s2
	call	store_yuv1
	ld	a1, 8(s0)
	srai	s1, s6, 1
	srai	s3, s3, 1
	srai	s2, s2, 1
	addi	a0, sp, 24
	li	a5, 1
	mv	a2, s1
	mv	a3, s3
	mv	a4, s2
	call	store_yuv1
	ld	a1, 16(s0)
	addi	a0, sp, 24
	li	a5, 1
	mv	a2, s1
	mv	a3, s3
	mv	a4, s2
	call	store_yuv1
	j	.LBB0_35
.LBB0_31:
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	j	.LBB0_34
.LBB0_32:
	lui	s0, %hi(outfile)
	lw	a0, %lo(outfile)(s0)
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	beq	a2, a1, .LBB0_34
# %bb.33:
	sub	a2, a2, a1
	call	write
	lw	a0, %lo(outfile)(s0)
.LBB0_34:
	call	close
.LBB0_35:
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
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.LBB0_36:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	addi	a2, sp, 24
	call	fprintf
	j	.LBB0_10
.Lfunc_end0:
	.size	storeframe, .Lfunc_end0-storeframe
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_2
	.word	.LBB0_4
	.word	.LBB0_3
	.word	.LBB0_28
	.word	.LBB0_35
	.word	.LBB0_30
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function store_ppm_tga
	.type	store_ppm_tga,@function
store_ppm_tga:                          # @store_ppm_tga
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
	lui	s0, %hi(store_ppm_tga.u444)
	ld	a5, %lo(store_ppm_tga.u444)(s0)
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	mv	s4, a0
	bnez	a5, .LBB1_9
# %bb.1:
	lui	s3, %hi(coded_picture_width)
	lw	s1, %lo(coded_picture_width)(s3)
	lui	s6, %hi(coded_picture_height)
	lw	s2, %lo(coded_picture_height)(s6)
	srli	a0, s1, 1
	mulw	s5, a0, s2
	mv	a0, s5
	call	malloc
	lui	a1, %hi(store_ppm_tga.u422)
	sd	a0, %lo(store_ppm_tga.u422)(a1)
	bnez	a0, .LBB1_3
# %bb.2:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
	lw	s1, %lo(coded_picture_width)(s3)
	lw	s2, %lo(coded_picture_height)(s6)
	srli	a0, s1, 1
	mulw	s5, a0, s2
.LBB1_3:
	mv	a0, s5
	call	malloc
	lui	a1, %hi(store_ppm_tga.v422)
	sd	a0, %lo(store_ppm_tga.v422)(a1)
	bnez	a0, .LBB1_5
# %bb.4:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
	lui	a0, %hi(coded_picture_width)
	lw	s1, %lo(coded_picture_width)(a0)
	lui	a0, %hi(coded_picture_height)
	lw	s2, %lo(coded_picture_height)(a0)
.LBB1_5:
	mulw	s5, s2, s1
	mv	a0, s5
	call	malloc
	lui	a1, %hi(store_ppm_tga.u444)
	sd	a0, %lo(store_ppm_tga.u444)(a1)
	bnez	a0, .LBB1_7
# %bb.6:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
	lui	a0, %hi(coded_picture_width)
	lw	a0, %lo(coded_picture_width)(a0)
	lui	a1, %hi(coded_picture_height)
	lw	a1, %lo(coded_picture_height)(a1)
	mulw	s5, a1, a0
.LBB1_7:
	mv	a0, s5
	call	malloc
	lui	a1, %hi(store_ppm_tga.v444)
	sd	a0, %lo(store_ppm_tga.v444)(a1)
	bnez	a0, .LBB1_9
# %bb.8:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
.LBB1_9:
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	ld	a0, 8(s1)
	lui	a1, %hi(store_ppm_tga.u422)
	ld	s5, %lo(store_ppm_tga.u422)(a1)
	mv	a1, s5
	call	conv420to422
	ld	a0, 16(s1)
	lui	a1, %hi(store_ppm_tga.v422)
	ld	s6, %lo(store_ppm_tga.v422)(a1)
	mv	a1, s6
	call	conv420to422
	ld	a1, %lo(store_ppm_tga.u444)(s0)
	mv	a0, s5
	call	conv422to444
	lui	a0, %hi(store_ppm_tga.v444)
	ld	a1, %lo(store_ppm_tga.v444)(a0)
	mv	a0, s6
	call	conv422to444
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB1_11
# %bb.10:
	lui	s0, %hi(.L.str.8)
	addi	s0, s0, %lo(.L.str.8)
	j	.LBB1_12
.LBB1_11:
	lui	s0, %hi(.L.str.9)
	addi	s0, s0, %lo(.L.str.9)
.LBB1_12:
	mv	a0, s4
	call	strlen
	lbu	a1, 4(s0)
	add	a0, s4, a0
	sb	a1, 4(a0)
	lbu	a1, 3(s0)
	lbu	a2, 2(s0)
	lbu	a3, 1(s0)
	lbu	a4, 0(s0)
	sb	a1, 3(a0)
	sb	a2, 2(a0)
	sb	a3, 1(a0)
	sb	a4, 0(a0)
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB1_47
.LBB1_13:
	li	a1, 577
	li	a2, 438
	mv	a0, s4
	call	open
	lui	a1, %hi(outfile)
	li	a2, -1
	sw	a0, %lo(outfile)(a1)
	bne	a0, a2, .LBB1_15
# %bb.14:
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a0, s5
	mv	a2, s4
	call	sprintf
	mv	a0, s5
	call	error
.LBB1_15:
	lui	a0, %hi(optr)
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	sd	a1, %lo(optr)(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB1_42
# %bb.16:
	lui	a1, %hi(obfr)
	sb	zero, %lo(obfr)(a1)
	addi	a1, a1, %lo(obfr)
	sb	zero, 1(a1)
	li	a2, 2
	sb	a2, 2(a1)
	sb	zero, 3(a1)
	sb	zero, 4(a1)
	sb	zero, 5(a1)
	sb	zero, 6(a1)
	sb	zero, 7(a1)
	sb	zero, 8(a1)
	lui	a2, %hi(horizontal_size)
	lw	a2, %lo(horizontal_size)(a2)
	sb	zero, 9(a1)
	sb	zero, 10(a1)
	sb	zero, 11(a1)
	sb	a2, 12(a1)
	srli	a2, a2, 8
	sb	a2, 13(a1)
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	sb	a2, 14(a1)
	srli	a2, a2, 8
	sb	a2, 15(a1)
	li	a2, 24
	sb	a2, 16(a1)
	addi	a2, a1, 18
	sd	a2, %lo(optr)(a0)
	li	a0, 32
	sb	a0, 17(a1)
.LBB1_17:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB1_39
# %bb.18:
	lui	s11, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(s11)
	blez	a1, .LBB1_39
# %bb.19:
	lui	a0, %hi(matrix_coefficients)
	lw	a0, %lo(matrix_coefficients)(a0)
	sd	zero, 40(sp)                    # 8-byte Folded Spill
	slli	a0, a0, 4
	lui	a2, %hi(convmat)
	addi	a2, a2, %lo(convmat)
	add	a0, a2, a0
	lw	a2, 8(a0)
	lw	a3, 12(a0)
	lw	a4, 0(a0)
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	lw	a0, 4(a0)
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	negw	a0, a2
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	negw	a0, a3
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, 1048286
	addi	a0, a0, -336
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, 1048278
	addi	s2, a0, -336
	lui	a0, 19
	addi	s0, a0, -1515
	lui	s3, 8
	addi	s3, s3, 18
	lui	s6, %hi(optr)
	lui	s4, 1
	lui	a0, %hi(obfr)
	addi	a0, a0, %lo(obfr)
	add	s4, a0, s4
	j	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	beq	a2, a0, .LBB1_39
.LBB1_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_33 Depth 2
	blez	a1, .LBB1_20
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=1
	lui	a0, %hi(store_ppm_tga.v444)
	ld	s5, %lo(store_ppm_tga.v444)(a0)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mul	s7, a1, a0
	lui	a0, %hi(store_ppm_tga.u444)
	ld	s1, %lo(store_ppm_tga.u444)(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a0)
	ld	a0, %lo(optr)(s6)
	add	s5, s5, s7
	add	s1, s1, s7
	add	s7, a1, s7
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB1_31
# %bb.23:                               # %.preheader1
                                        #   in Loop: Header=BB1_21 Depth=1
	li	s8, 0
	j	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_25 Depth=2
	lw	a1, %lo(horizontal_size)(s11)
	addi	s1, s1, 1
	addi	s5, s5, 1
	addiw	s8, s8, 1
	addi	s7, s7, 1
	bge	s8, a1, .LBB1_20
.LBB1_25:                               #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, 0(s1)
	lbu	a2, 0(s5)
	lbu	a3, 0(s7)
	addi	a1, a1, -128
	addi	a2, a2, -128
	mul	a3, a3, s0
	add	a4, a3, s2
	lui	a5, %hi(clp)
	ld	a5, %lo(clp)(a5)
	ld	a6, 80(sp)                      # 8-byte Folded Reload
	mul	a6, a2, a6
	add	a6, a6, a4
	lui	a7, 8
	add	a6, a6, a7
	sraiw	a6, a6, 16
	add	a6, a5, a6
	lbu	s9, 0(a6)
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	mul	a6, a1, a6
	ld	a7, 56(sp)                      # 8-byte Folded Reload
	mul	a2, a2, a7
	add	a2, a2, a6
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	add	a3, a3, a6
	add	a2, a3, a2
	sraiw	a2, a2, 16
	add	a2, a5, a2
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	mul	a1, a1, a3
	add	a1, a1, s3
	add	a1, a1, a4
	sraiw	a1, a1, 16
	add	a1, a5, a1
	lbu	a3, 0(a1)
	lbu	s10, 0(a2)
	addi	a1, a0, 1
	sd	a1, %lo(optr)(s6)
	sb	a3, 0(a0)
	beq	a1, s4, .LBB1_28
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=2
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s6)
	sb	s10, 0(a1)
	beq	a2, s4, .LBB1_29
.LBB1_27:                               #   in Loop: Header=BB1_25 Depth=2
	addi	a0, a2, 1
	sd	a0, %lo(optr)(s6)
	sb	s9, 0(a2)
	bne	a0, s4, .LBB1_24
	j	.LBB1_30
.LBB1_28:                               #   in Loop: Header=BB1_25 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s11, %hi(obfr)
	addi	s11, s11, %lo(obfr)
	mv	a1, s11
	call	write
	mv	a1, s11
	lui	s11, %hi(horizontal_size)
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s6)
	sb	s10, 0(a1)
	bne	a2, s4, .LBB1_27
.LBB1_29:                               #   in Loop: Header=BB1_25 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s10, %hi(obfr)
	addi	s10, s10, %lo(obfr)
	mv	a1, s10
	call	write
	addi	a0, s10, 1
	sd	a0, %lo(optr)(s6)
	sb	s9, 0(s10)
	bne	a0, s4, .LBB1_24
.LBB1_30:                               #   in Loop: Header=BB1_25 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s9, %hi(obfr)
	addi	s9, s9, %lo(obfr)
	mv	a1, s9
	call	write
	sd	s9, %lo(optr)(s6)
	mv	a0, s9
	j	.LBB1_24
.LBB1_31:                               # %.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	li	s8, 0
	j	.LBB1_33
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=2
	lw	a1, %lo(horizontal_size)(s11)
	addi	s1, s1, 1
	addi	s5, s5, 1
	addiw	s8, s8, 1
	addi	s7, s7, 1
	bge	s8, a1, .LBB1_20
.LBB1_33:                               #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, 0(s1)
	lbu	a2, 0(s5)
	lbu	a3, 0(s7)
	addi	a1, a1, -128
	addi	a2, a2, -128
	mul	a3, a3, s0
	add	a4, a3, s2
	lui	a5, %hi(clp)
	ld	a5, %lo(clp)(a5)
	ld	a6, 80(sp)                      # 8-byte Folded Reload
	mul	a6, a2, a6
	add	a6, a6, a4
	lui	a7, 8
	add	a6, a6, a7
	sraiw	a6, a6, 16
	add	a6, a5, a6
	lbu	a6, 0(a6)
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	mul	a7, a1, a7
	ld	t0, 56(sp)                      # 8-byte Folded Reload
	mul	a2, a2, t0
	add	a2, a2, a7
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	add	a3, a3, a7
	add	a2, a3, a2
	sraiw	a2, a2, 16
	add	a2, a5, a2
	lbu	s10, 0(a2)
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	mul	a1, a1, a2
	add	a1, a1, s3
	add	a1, a1, a4
	sraiw	a1, a1, 16
	add	a1, a5, a1
	lbu	s9, 0(a1)
	addi	a1, a0, 1
	sd	a1, %lo(optr)(s6)
	sb	a6, 0(a0)
	beq	a1, s4, .LBB1_36
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=2
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s6)
	sb	s10, 0(a1)
	beq	a2, s4, .LBB1_37
.LBB1_35:                               #   in Loop: Header=BB1_33 Depth=2
	addi	a0, a2, 1
	sd	a0, %lo(optr)(s6)
	sb	s9, 0(a2)
	bne	a0, s4, .LBB1_32
	j	.LBB1_38
.LBB1_36:                               #   in Loop: Header=BB1_33 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s11, %hi(obfr)
	addi	s11, s11, %lo(obfr)
	mv	a1, s11
	call	write
	mv	a1, s11
	lui	s11, %hi(horizontal_size)
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s6)
	sb	s10, 0(a1)
	bne	a2, s4, .LBB1_35
.LBB1_37:                               #   in Loop: Header=BB1_33 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s10, %hi(obfr)
	addi	s10, s10, %lo(obfr)
	mv	a1, s10
	call	write
	addi	a0, s10, 1
	sd	a0, %lo(optr)(s6)
	sb	s9, 0(s10)
	bne	a0, s4, .LBB1_32
.LBB1_38:                               #   in Loop: Header=BB1_33 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s9, %hi(obfr)
	addi	s9, s9, %lo(obfr)
	mv	a1, s9
	call	write
	sd	s9, %lo(optr)(s6)
	mv	a0, s9
	j	.LBB1_32
.LBB1_39:
	lui	a0, %hi(optr)
	ld	a2, %lo(optr)(a0)
	lui	s0, %hi(outfile)
	lw	a0, %lo(outfile)(s0)
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	beq	a2, a1, .LBB1_41
# %bb.40:
	sub	a2, a2, a1
	call	write
	lw	a0, %lo(outfile)(s0)
.LBB1_41:
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
	tail	close
.LBB1_42:
	lui	a0, %hi(horizontal_size)
	lw	a2, %lo(horizontal_size)(a0)
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	addi	a0, sp, 88
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	call	sprintf
	lbu	a0, 88(sp)
	beqz	a0, .LBB1_17
# %bb.43:
	lui	s0, %hi(optr)
	ld	a1, %lo(optr)(s0)
	addi	s1, sp, 89
	lui	s5, %hi(obfr)
	addi	s5, s5, %lo(obfr)
	lui	s2, 1
	add	s2, s5, s2
	lui	s3, %hi(outfile)
	j	.LBB1_45
.LBB1_44:                               #   in Loop: Header=BB1_45 Depth=1
	lbu	a0, 0(s1)
	addi	s1, s1, 1
	mv	a1, a2
	beqz	a0, .LBB1_17
.LBB1_45:                               # =>This Inner Loop Header: Depth=1
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s0)
	sb	a0, 0(a1)
	bne	a2, s2, .LBB1_44
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=1
	lw	a0, %lo(outfile)(s3)
	lui	a2, 1
	mv	a1, s5
	call	write
	sd	s5, %lo(optr)(s0)
	mv	a2, s5
	j	.LBB1_44
.LBB1_47:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	mv	a2, s4
	call	fprintf
	j	.LBB1_13
.Lfunc_end1:
	.size	store_ppm_tga, .Lfunc_end1-store_ppm_tga
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function store_yuv1
	.type	store_yuv1,@function
store_yuv1:                             # @store_yuv1
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
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	mv	s0, a4
	mv	s3, a3
	mv	s1, a2
	mv	s2, a1
	mv	s4, a0
	beqz	a5, .LBB2_3
# %bb.1:
	li	a1, 1025
	li	a2, 438
	mv	a0, s4
	call	open
	lui	a1, %hi(outfile)
	li	a2, -1
	sw	a0, %lo(outfile)(a1)
	bne	a0, a2, .LBB2_6
# %bb.2:
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	j	.LBB2_5
.LBB2_3:
	li	a1, 577
	li	a2, 438
	mv	a0, s4
	call	open
	lui	a1, %hi(outfile)
	li	a2, -1
	sw	a0, %lo(outfile)(a1)
	bne	a0, a2, .LBB2_6
# %bb.4:
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
.LBB2_5:
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	mv	a0, s5
	mv	a2, s4
	call	sprintf
	mv	a0, s5
	call	error
.LBB2_6:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB2_19
.LBB2_7:
	lui	a0, %hi(optr)
	lui	s4, %hi(obfr)
	addi	s4, s4, %lo(obfr)
	sd	s4, %lo(optr)(a0)
	blez	s0, .LBB2_15
# %bb.8:
	blez	s3, .LBB2_15
# %bb.9:
	li	a2, 0
	li	s5, 0
	addi	s3, s3, -1
	slli	s3, s3, 32
	srli	s3, s3, 32
	addi	s3, s3, 1
	lui	s6, %hi(optr)
	lui	s7, 1
	lui	s8, %hi(outfile)
	j	.LBB2_11
.LBB2_10:                               #   in Loop: Header=BB2_11 Depth=1
	addi	s5, s5, 1
	beq	s5, s0, .LBB2_16
.LBB2_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	mul	s10, s1, s5
	add	s9, s3, s10
	add	s9, s2, s9
	add	s10, s2, s10
	j	.LBB2_13
.LBB2_12:                               #   in Loop: Header=BB2_13 Depth=2
	addi	s10, s10, 1
	beq	s10, s9, .LBB2_10
.LBB2_13:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, s4, a2
	lbu	a1, 0(s10)
	addi	a2, a2, 1
	add	a3, s4, a2
	sd	a3, %lo(optr)(s6)
	sb	a1, 0(a0)
	bne	a2, s7, .LBB2_12
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=2
	lw	a0, %lo(outfile)(s8)
	lui	a2, 1
	mv	a1, s4
	call	write
	li	a2, 0
	sd	s4, %lo(optr)(s6)
	j	.LBB2_12
.LBB2_15:
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	j	.LBB2_18
.LBB2_16:
	lui	s0, %hi(outfile)
	lw	a0, %lo(outfile)(s0)
	beqz	a2, .LBB2_18
# %bb.17:
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	call	write
	lw	a0, %lo(outfile)(s0)
.LBB2_18:
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
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	tail	close
.LBB2_19:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	mv	a2, s4
	call	fprintf
	j	.LBB2_7
.Lfunc_end2:
	.size	store_yuv1, .Lfunc_end2-store_yuv1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function conv420to422
	.type	conv420to422,@function
conv420to422:                           # @conv420to422
# %bb.0:
	lui	a2, %hi(coded_picture_width)
	lw	a2, %lo(coded_picture_width)(a2)
	srai	a2, a2, 1
	blez	a2, .LBB3_12
# %bb.1:
	lui	a3, %hi(coded_picture_height)
	lw	a3, %lo(coded_picture_height)(a3)
	srai	a3, a3, 1
	blez	a3, .LBB3_12
# %bb.2:
	li	a4, 0
	addi	a5, a3, -1
	addi	a6, a3, -3
	addi	a7, a3, -2
	slli	t1, a2, 32
	srli	t0, t1, 32
	srli	t1, t1, 31
	lui	t2, %hi(clp)
	li	t3, 67
	li	t4, 227
	j	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	addi	a0, a0, 1
	addiw	a4, a4, 1
	addi	a1, a1, 1
	beq	a4, a2, .LBB3_12
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	li	t5, 0
	regsw_c	x9, 0x0(x16)		# 100000100100000000000
	li	x7, 0
	li	t6, 3
	mv	x1, a1
	mv	x2, a0
	j	.LBB3_6
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=2
	regsw_c	x29, 0x72c(x18)		# 100101110111100101100
	addiw	x7, t5, -1
	sltu	x8, t5, x7
	addi	x8, x8, -1
	and	x7, x8, x7
	addiw	x8, t5, -2
	sltu	x9, t5, x8
	addiw	x10, t5, -3
	regsw_c	x15, 0x576(x23)		# 101110111110101110110
	sltu	x11, t5, x10
	addi	x11, x11, -1
	and	x10, x11, x10
	mulw	x10, x10, a2
	add	x10, a0, x10
	lbu	x10, 0(x10)
	addi	x9, x9, -1
	regsw_c	x13, 0x7b5(x30)		# 111100110111110110101
	and	x8, x9, x8
	ld	x9, %lo(clp)(t2)
	slli	x11, x10, 1
	add	x10, x11, x10
	mulw	x8, x8, a2
	mulw	x7, x7, a2
	add	x7, a0, x7
	regsw_c	x11, 0x5b6(x27)		# 110110101110110110110
	lbu	x11, 0(x7)
	lbu	x12, 0(x2)
	add	x8, a0, x8
	lbu	x13, 0(x8)
	mul	x11, x11, t3
	mul	x12, x12, t4
	mulw	x6, x6, a2
	regsw_c	x13, 0x3b7(x23)		# 101110110101110110111
	add	x6, a0, x6
	lbu	x14, 0(x6)
	mulw	x5, x5, a2
	add	x5, a0, x5
	lbu	x15, 0(x5)
	slli	x16, x14, 3
	subw	x14, x16, x14
	regsw_c	x31, 0x5ff(x27)		# 110111111110111111111
	slli	x13, x13, 4
	subw	x11, x13, x11
	subw	x10, x10, x11
	slli	x15, x15, 5
	subw	x11, x12, x15
	add	x11, x11, x14
	add	x10, x10, x11
	regsw_c	x15, 0x4f5(x27)		# 110110111110011110101
	addi	x10, x10, 128
	sraiw	x10, x10, 8
	add	x9, x9, x10
	lbu	x9, 0(x9)
	sb	x9, 0(x1)
	mulw	x4, x4, a2
	add	x4, a0, x4
	regsw_c	x13, 0x7b6(x26)		# 110100110111110110110
	lbu	x4, 0(x4)
	ld	x9, %lo(clp)(t2)
	slli	x10, x4, 1
	add	x4, x10, x4
	lbu	x5, 0(x5)
	lbu	x10, 0(x2)
	lbu	x6, 0(x6)
	regsw_c	x13, 0x5be(x27)		# 110110110110110111110
	lbu	x8, 0(x8)
	mul	x5, x5, t3
	mul	x10, x10, t4
	lbu	x7, 0(x7)
	slli	x11, x8, 3
	subw	x8, x11, x8
	slli	x6, x6, 4
	regsw_c	x31, 0x5fe(x31)		# 111111111110111111110
	subw	x4, x4, x6
	add	x5, x5, x10
	add	x4, x4, x5
	slli	x7, x7, 5
	subw	x4, x4, x7
	add	x4, x4, x8
	addi	x4, x4, 128
	regsw_c	x29, 0x4f0(x27)		# 110111110110011110000
	sraiw	x4, x4, 8
	add	x4, x9, x4
	lbu	x4, 0(x4)
	add	x5, x1, t0
	sb	x4, 0(x5)
	add	x2, x2, t0
	addi	t6, t6, 1
	addiw	t5, t5, 1
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	add	x1, x1, t1
	mv	x7, x3
	beq	x3, a3, .LBB3_3
.LBB3_6:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addi	x3, x7, 1
	mv	x5, x3
	bltu	x7, a5, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB3_8:                                #   in Loop: Header=BB3_6 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x7, a7, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_6 Depth=2
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	mv	x6, a5
	mv	x4, t6
	blt	x7, a6, .LBB3_5
	j	.LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_6 Depth=2
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	addi	x6, t6, -1
	mv	x4, t6
	blt	x7, a6, .LBB3_5
.LBB3_11:                               #   in Loop: Header=BB3_6 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, a5
	j	.LBB3_5
.LBB3_12:
	ret
.Lfunc_end3:
	.size	conv420to422, .Lfunc_end3-conv420to422
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function conv422to444
	.type	conv422to444,@function
conv422to444:                           # @conv422to444
# %bb.0:
	lui	a2, %hi(coded_picture_height)
	lw	a2, %lo(coded_picture_height)(a2)
	blez	a2, .LBB4_13
# %bb.1:
	lui	a2, %hi(coded_picture_width)
	lw	a2, %lo(coded_picture_width)(a2)
	srai	a2, a2, 1
	blez	a2, .LBB4_13
# %bb.2:
	li	a3, 0
	addi	a4, a2, -1
	addi	a5, a2, -3
	addi	a6, a2, -2
	lui	a7, %hi(clp)
	li	t0, -21
	li	t1, 70
	li	t2, 228
	li	t3, -37
	li	t4, 11
	lui	t5, %hi(coded_picture_width)
	lui	t6, %hi(coded_picture_height)
	j	.LBB4_4
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, %lo(coded_picture_width)(t5)
	lw	x2, %lo(coded_picture_height)(t6)
	add	a0, a0, a2
	addiw	a3, a3, 1
	add	a1, a1, x1
	bge	a3, x2, .LBB4_13
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	li	x1, 0
	li	x4, 0
	addi	x2, a1, 1
	j	.LBB4_7
.LBB4_5:                                #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a4
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x29, 0x7be(x27)		# 110111110111110111110
	addiw	x8, x1, -3
	sltu	x9, x1, x8
	addi	x9, x9, -1
	and	x8, x9, x8
	addiw	x9, x1, -2
	sltu	x10, x1, x9
	addi	x10, x10, -1
	regsw_c	x15, 0x5ee(x31)		# 111110111110111101110
	and	x9, x10, x9
	addiw	x10, x1, -1
	sltu	x11, x1, x10
	addi	x11, x11, -1
	and	x10, x11, x10
	add	x8, a0, x8
	lbu	x8, 0(x8)
	regsw_c	x9, 0x5f5(x23)		# 101110100110111110101
	add	x9, a0, x9
	lbu	x11, 0(x9)
	ld	x12, %lo(clp)(a7)
	slli	x13, x8, 2
	add	x8, x13, x8
	mul	x11, x11, t0
	add	x10, a0, x10
	regsw_c	x29, 0x575(x26)		# 110101110110101110101
	lbu	x13, 0(x10)
	add	x4, a0, x4
	lbu	x14, 0(x4)
	sext.w	x6, x6
	add	x6, a0, x6
	lbu	x15, 0(x6)
	add	x7, a0, x7
	regsw_c	x13, 0x5bf(x27)		# 110110110110110111111
	lbu	x16, 0(x7)
	mul	x13, x13, t1
	mul	x14, x14, t2
	mul	x15, x15, t3
	mul	x16, x16, t4
	add	x11, x11, x13
	add	x8, x8, x11
	regsw_c	x31, 0x5be(x31)		# 111111111110110111110
	add	x14, x14, x15
	add	x14, x14, x16
	add	x8, x8, x14
	addi	x8, x8, 128
	sraiw	x8, x8, 8
	add	x8, x12, x8
	lbu	x8, 0(x8)
	regsw_c	x29, 0x537(x14)		# 011101110110100110111
	sb	x8, -1(x2)
	add	x5, a0, x5
	lbu	x5, 0(x5)
	lbu	x7, 0(x7)
	ld	x8, %lo(clp)(a7)
	slli	x11, x5, 2
	add	x5, x11, x5
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	mul	x7, x7, t0
	lbu	x6, 0(x6)
	lbu	x4, 0(x4)
	lbu	x10, 0(x10)
	lbu	x9, 0(x9)
	mul	x6, x6, t1
	mul	x4, x4, t2
	regsw_c	x15, 0x7ff(x27)		# 110110111111111111111
	mul	x10, x10, t3
	mul	x9, x9, t4
	add	x5, x5, x7
	add	x5, x5, x6
	add	x4, x5, x4
	add	x4, x4, x10
	add	x4, x4, x9
	regsw_c	x15, 0x4f6(x27)		# 110110111110011110110
	addi	x4, x4, 128
	sraiw	x4, x4, 8
	add	x4, x8, x4
	lbu	x4, 0(x4)
	sb	x4, 0(x2)
	addiw	x1, x1, 1
	addi	x2, x2, 2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	mv	x4, x3
	beq	x3, a2, .LBB4_3
.LBB4_7:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addi	x3, x4, 1
	mv	x6, x3
	bltu	x4, a4, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x6, a4
.LBB4_9:                                #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x4, a6, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x7, a4
	bge	x4, a5, .LBB4_5
	j	.LBB4_12
.LBB4_11:                               #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addiw	x7, x1, 2
	bge	x4, a5, .LBB4_5
.LBB4_12:                               #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addiw	x5, x1, 3
	j	.LBB4_6
.LBB4_13:
	ret
.Lfunc_end4:
	.size	conv422to444, .Lfunc_end4-conv422to444
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.Y"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s.U"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s.V"
	.size	.L.str.2, 5

	.type	outfile,@object                 # @outfile
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
outfile:
	.word	0                               # 0x0
	.size	outfile, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Couldn't append to %s\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Couldn't create %s\n"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"saving %s\n"
	.size	.L.str.5, 11

	.type	obfr,@object                    # @obfr
	.local	obfr
	.comm	obfr,4096,1
	.type	optr,@object                    # @optr
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
optr:
	.quad	0
	.size	optr, 8

	.type	store_sif.u422,@object          # @store_sif.u422
	.p2align	3, 0x0
store_sif.u422:
	.quad	0
	.size	store_sif.u422, 8

	.type	store_sif.v422,@object          # @store_sif.v422
	.p2align	3, 0x0
store_sif.v422:
	.quad	0
	.size	store_sif.v422, 8

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"malloc failed"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	".SIF"
	.size	.L.str.7, 5

	.type	store_ppm_tga.u422,@object      # @store_ppm_tga.u422
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
store_ppm_tga.u422:
	.quad	0
	.size	store_ppm_tga.u422, 8

	.type	store_ppm_tga.v422,@object      # @store_ppm_tga.v422
	.p2align	3, 0x0
store_ppm_tga.v422:
	.quad	0
	.size	store_ppm_tga.v422, 8

	.type	store_ppm_tga.u444,@object      # @store_ppm_tga.u444
	.p2align	3, 0x0
store_ppm_tga.u444:
	.quad	0
	.size	store_ppm_tga.u444, 8

	.type	store_ppm_tga.v444,@object      # @store_ppm_tga.v444
	.p2align	3, 0x0
store_ppm_tga.v444:
	.quad	0
	.size	store_ppm_tga.v444, 8

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	".tga"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	".ppm"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"P6\n%d %d\n255\n"
	.size	.L.str.10, 14

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
