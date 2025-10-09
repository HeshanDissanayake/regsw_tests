	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"store.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Write_Frame                     # -- Begin function Write_Frame
	.p2align	2
	.type	Write_Frame,@function
Write_Frame:                            # @Write_Frame
# %bb.0:
	addi	sp, sp, -304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	sd	s3, 264(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(progressive_sequence)
	lw	a3, %lo(progressive_sequence)(a2)
	lui	a2, %hi(Output_Picture_Filename)
	ld	a4, %lo(Output_Picture_Filename)(a2)
	mv	a2, a1
	mv	s0, a0
	bnez	a3, .LBB0_4
# %bb.1:
	lui	a0, %hi(progressive_frame)
	lw	a0, %lo(progressive_frame)(a0)
	bnez	a0, .LBB0_4
# %bb.2:
	lui	a0, %hi(Frame_Store_Flag)
	lw	a0, %lo(Frame_Store_Flag)(a0)
	bnez	a0, .LBB0_4
# %bb.3:
	addi	a0, sp, 8
	li	a3, 97
	mv	a1, a4
	mv	s1, a2
	call	sprintf
	lui	s2, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(s2)
	lui	s3, %hi(vertical_size)
	lw	a4, %lo(vertical_size)(s3)
	slliw	a3, a0, 1
	srai	a4, a4, 1
	addi	a0, sp, 8
	mv	a1, s0
	li	a2, 0
	call	store_one
	lui	a0, %hi(Output_Picture_Filename)
	ld	a1, %lo(Output_Picture_Filename)(a0)
	addi	a0, sp, 8
	li	a3, 98
	mv	a2, s1
	call	sprintf
	lw	a2, %lo(Coded_Picture_Width)(s2)
	lw	a4, %lo(vertical_size)(s3)
	slliw	a3, a2, 1
	srai	a4, a4, 1
	addi	a0, sp, 8
	mv	a1, s0
	j	.LBB0_5
.LBB0_4:
	addi	a0, sp, 8
	li	a3, 102
	mv	a1, a4
	call	sprintf
	lui	a0, %hi(Coded_Picture_Width)
	lw	a3, %lo(Coded_Picture_Width)(a0)
	lui	a0, %hi(vertical_size)
	lw	a4, %lo(vertical_size)(a0)
	addi	a0, sp, 8
	mv	a1, s0
	li	a2, 0
.LBB0_5:
	call	store_one
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s3, 264(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end0:
	.size	Write_Frame, .Lfunc_end0-Write_Frame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function store_one
	.type	store_one,@function
store_one:                              # @store_one
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
	lui	a5, %hi(Output_Type)
	lw	a5, %lo(Output_Type)(a5)
	li	a6, 1
	mv	s1, a4
	mv	s6, a1
	mv	s4, a0
	blt	a6, a5, .LBB1_7
# %bb.1:
	beqz	a5, .LBB1_10
# %bb.2:
	li	a0, 1
	bne	a5, a0, .LBB1_11
# %bb.3:
	mv	s7, a2
	mv	s8, a3
	lui	s0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(s0)
	li	a1, 3
	bne	a0, a1, .LBB1_5
# %bb.4:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	Error
	lw	a0, %lo(chroma_format)(s0)
.LBB1_5:
	li	a1, 2
	bne	a0, a1, .LBB1_14
# %bb.6:
	ld	a0, 8(s6)
	ld	a1, 16(s6)
	lui	a2, %hi(store_sif.u422)
	sd	a0, %lo(store_sif.u422)(a2)
	lui	a0, %hi(store_sif.v422)
	sd	a1, %lo(store_sif.v422)(a0)
	j	.LBB1_20
.LBB1_7:
	li	a0, 2
	beq	a5, a0, .LBB1_12
# %bb.8:
	li	a0, 3
	bne	a5, a0, .LBB1_11
# %bb.9:
	mv	a0, s4
	mv	a1, s6
	mv	a4, s1
	li	a5, 0
	j	.LBB1_13
.LBB1_10:
	lui	a0, %hi(horizontal_size)
	lw	s5, %lo(horizontal_size)(a0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	addi	a0, sp, 40
	mv	s2, a2
	mv	a2, s4
	mv	s0, a3
	call	sprintf
	ld	a1, 0(s6)
	addi	a0, sp, 40
	mv	a2, s2
	mv	a3, s0
	mv	a4, s5
	mv	a5, s1
	call	store_yuv1
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	addi	a1, a0, -3
	snez	a1, a1
	sraw	s3, s2, a1
	sraw	s2, s0, a1
	sraw	s5, s5, a1
	addi	a0, a0, -1
	seqz	a0, a0
	sraw	s1, s1, a0
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	addi	a0, sp, 40
	mv	a2, s4
	call	sprintf
	ld	a1, 8(s6)
	addi	a0, sp, 40
	mv	a2, s3
	mv	a3, s2
	mv	a4, s5
	mv	a5, s1
	call	store_yuv1
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	addi	a0, sp, 40
	mv	a2, s4
	call	sprintf
	ld	a1, 16(s6)
	addi	a0, sp, 40
	mv	a2, s3
	mv	a3, s2
	mv	a4, s5
	mv	a5, s1
	call	store_yuv1
.LBB1_11:
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
.LBB1_12:
	li	a5, 1
	mv	a0, s4
	mv	a1, s6
	mv	a4, s1
.LBB1_13:
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
	tail	store_ppm_tga
.LBB1_14:
	lui	s0, %hi(store_sif.u422)
	ld	a0, %lo(store_sif.u422)(s0)
	bnez	a0, .LBB1_19
# %bb.15:
	lui	s2, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(s2)
	lui	s3, %hi(Coded_Picture_Height)
	lw	a1, %lo(Coded_Picture_Height)(s3)
	srli	a0, a0, 1
	mulw	s5, a0, a1
	mv	a0, s5
	call	malloc
	sd	a0, %lo(store_sif.u422)(s0)
	bnez	a0, .LBB1_17
# %bb.16:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	Error
	lw	a0, %lo(Coded_Picture_Width)(s2)
	lw	a1, %lo(Coded_Picture_Height)(s3)
	srli	a0, a0, 1
	mulw	s5, a0, a1
.LBB1_17:
	mv	a0, s5
	call	malloc
	lui	a1, %hi(store_sif.v422)
	sd	a0, %lo(store_sif.v422)(a1)
	bnez	a0, .LBB1_19
# %bb.18:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	Error
.LBB1_19:
	ld	a0, 8(s6)
	ld	a1, %lo(store_sif.u422)(s0)
	call	conv420to422
	ld	a0, 16(s6)
	lui	a1, %hi(store_sif.v422)
	ld	a1, %lo(store_sif.v422)(a1)
	call	conv420to422
.LBB1_20:
	mv	a0, s4
	call	strlen
	add	a0, s4, a0
	li	a1, 46
	sb	a1, 0(a0)
	li	a1, 83
	sb	a1, 1(a0)
	li	a1, 73
	sb	a1, 2(a0)
	li	a1, 70
	sb	a1, 3(a0)
	sb	zero, 4(a0)
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB1_43
.LBB1_21:
	li	a1, 577
	li	a2, 438
	mv	a0, s4
	call	open
	lui	a1, %hi(outfile)
	li	a2, -1
	sw	a0, %lo(outfile)(a1)
	bne	a0, a2, .LBB1_23
# %bb.22:
	lui	s5, %hi(Error_Text)
	addi	s5, s5, %lo(Error_Text)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a0, s5
	mv	a2, s4
	call	sprintf
	mv	a0, s5
	call	Error
.LBB1_23:
	lui	a0, %hi(optr)
	lui	s9, %hi(obfr)
	addi	s9, s9, %lo(obfr)
	sd	s9, %lo(optr)(a0)
	blez	s1, .LBB1_39
# %bb.24:
	lui	s5, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(s5)
	blez	a0, .LBB1_39
# %bb.25:
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	li	s6, 0
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	srai	s7, s7, 1
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	srai	a1, s8, 1
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	lui	s11, %hi(optr)
	lui	s4, 1
	add	s4, s9, s4
	lui	s10, %hi(outfile)
	mv	a2, s9
	j	.LBB1_27
.LBB1_26:                               #   in Loop: Header=BB1_27 Depth=1
	addi	s6, s6, 1
	beq	s6, s1, .LBB1_40
.LBB1_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
	blez	a0, .LBB1_26
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=1
	li	s2, 0
	lui	a0, %hi(store_sif.v422)
	ld	s3, %lo(store_sif.v422)(a0)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	mul	a0, s6, a0
	add	a1, s7, a0
	lui	a3, %hi(store_sif.u422)
	ld	s8, %lo(store_sif.u422)(a3)
	add	s3, s3, a1
	add	a0, s7, a0
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	s0, 0(a1)
	add	s8, s8, a0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	mul	a0, s6, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	add	s0, s0, a0
	j	.LBB1_30
.LBB1_29:                               #   in Loop: Header=BB1_30 Depth=2
	lw	a0, %lo(horizontal_size)(s5)
	addi	s8, s8, 1
	addi	s3, s3, 1
	addiw	s2, s2, 2
	addi	s0, s0, 2
	bge	s2, a0, .LBB1_26
.LBB1_30:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, 0(s8)
	addi	a1, a2, 1
	sd	a1, %lo(optr)(s11)
	sb	a0, 0(a2)
	beq	a1, s4, .LBB1_32
# %bb.31:                               #   in Loop: Header=BB1_30 Depth=2
	ld	a1, %lo(optr)(s11)
	j	.LBB1_33
.LBB1_32:                               #   in Loop: Header=BB1_30 Depth=2
	lw	a0, %lo(outfile)(s10)
	lui	a2, 1
	mv	a1, s9
	call	write
	mv	a1, s9
.LBB1_33:                               #   in Loop: Header=BB1_30 Depth=2
	lbu	a2, 0(s0)
	addi	a0, a1, 1
	sd	a0, %lo(optr)(s11)
	sb	a2, 0(a1)
	bne	a0, s4, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_30 Depth=2
	lw	a0, %lo(outfile)(s10)
	lui	a2, 1
	mv	a1, s9
	call	write
	mv	a0, s9
.LBB1_35:                               #   in Loop: Header=BB1_30 Depth=2
	lbu	a2, 0(s3)
	addi	a1, a0, 1
	sd	a1, %lo(optr)(s11)
	sb	a2, 0(a0)
	bne	a1, s4, .LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_30 Depth=2
	lw	a0, %lo(outfile)(s10)
	lui	a2, 1
	mv	a1, s9
	call	write
	mv	a1, s9
.LBB1_37:                               #   in Loop: Header=BB1_30 Depth=2
	lbu	a0, 1(s0)
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s11)
	sb	a0, 0(a1)
	bne	a2, s4, .LBB1_29
# %bb.38:                               #   in Loop: Header=BB1_30 Depth=2
	lw	a0, %lo(outfile)(s10)
	lui	a2, 1
	mv	a1, s9
	call	write
	sd	s9, %lo(optr)(s11)
	mv	a2, s9
	j	.LBB1_29
.LBB1_39:
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	j	.LBB1_42
.LBB1_40:
	lui	s0, %hi(outfile)
	lw	a0, %lo(outfile)(s0)
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	beq	a2, a1, .LBB1_42
# %bb.41:
	sub	a2, a2, a1
	call	write
	lw	a0, %lo(outfile)(s0)
.LBB1_42:
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
	tail	close
.LBB1_43:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a2, s4
	call	fprintf
	j	.LBB1_21
.Lfunc_end1:
	.size	store_one, .Lfunc_end1-store_one
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function store_ppm_tga
	.type	store_ppm_tga,@function
store_ppm_tga:                          # @store_ppm_tga
# %bb.0:
	addi	sp, sp, -448
	sd	ra, 440(sp)                     # 8-byte Folded Spill
	sd	s0, 432(sp)                     # 8-byte Folded Spill
	sd	s1, 424(sp)                     # 8-byte Folded Spill
	sd	s2, 416(sp)                     # 8-byte Folded Spill
	sd	s3, 408(sp)                     # 8-byte Folded Spill
	sd	s4, 400(sp)                     # 8-byte Folded Spill
	sd	s5, 392(sp)                     # 8-byte Folded Spill
	sd	s6, 384(sp)                     # 8-byte Folded Spill
	sd	s7, 376(sp)                     # 8-byte Folded Spill
	sd	s8, 368(sp)                     # 8-byte Folded Spill
	sd	s9, 360(sp)                     # 8-byte Folded Spill
	sd	s10, 352(sp)                    # 8-byte Folded Spill
	sd	s11, 344(sp)                    # 8-byte Folded Spill
	lui	a6, %hi(chroma_format)
	lw	a6, %lo(chroma_format)(a6)
	li	a7, 3
	sd	a5, 24(sp)                      # 8-byte Folded Spill
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	mv	s2, a1
	mv	s5, a0
	bne	a6, a7, .LBB2_3
# %bb.1:
	ld	a0, 8(s2)
	ld	a1, 16(s2)
	lui	a2, %hi(store_ppm_tga.u444)
	sd	a0, %lo(store_ppm_tga.u444)(a2)
	lui	a0, %hi(store_ppm_tga.v444)
	sd	a1, %lo(store_ppm_tga.v444)(a0)
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB2_17
.LBB2_2:
	lui	s0, %hi(.L.str.9)
	addi	s0, s0, %lo(.L.str.9)
	j	.LBB2_18
.LBB2_3:
	lui	a0, %hi(store_ppm_tga.u444)
	ld	a0, %lo(store_ppm_tga.u444)(a0)
	beqz	a0, .LBB2_6
# %bb.4:
	ld	a0, 8(s2)
	li	a1, 1
	bne	a6, a1, .LBB2_16
.LBB2_5:
	lui	a1, %hi(store_ppm_tga.u422)
	ld	s6, %lo(store_ppm_tga.u422)(a1)
	mv	a1, s6
	call	conv420to422
	ld	a0, 16(s2)
	lui	a1, %hi(store_ppm_tga.v422)
	ld	s7, %lo(store_ppm_tga.v422)(a1)
	mv	a1, s7
	call	conv420to422
	lui	a0, %hi(store_ppm_tga.u444)
	ld	a1, %lo(store_ppm_tga.u444)(a0)
	mv	a0, s6
	call	conv422to444
	lui	a0, %hi(store_ppm_tga.v444)
	ld	a1, %lo(store_ppm_tga.v444)(a0)
	mv	a0, s7
	call	conv422to444
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB2_2
	j	.LBB2_17
.LBB2_6:
	lui	a0, %hi(Coded_Picture_Width)
	lw	s0, %lo(Coded_Picture_Width)(a0)
	lui	a0, %hi(Coded_Picture_Height)
	lw	s1, %lo(Coded_Picture_Height)(a0)
	li	a0, 1
	bne	a6, a0, .LBB2_11
# %bb.7:
	sraiw	a0, s0, 1
	mulw	s6, a0, s1
	mv	a0, s6
	call	malloc
	lui	a1, %hi(store_ppm_tga.u422)
	sd	a0, %lo(store_ppm_tga.u422)(a1)
	bnez	a0, .LBB2_9
# %bb.8:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	Error
	lui	a0, %hi(Coded_Picture_Width)
	lw	s0, %lo(Coded_Picture_Width)(a0)
	lui	a0, %hi(Coded_Picture_Height)
	lw	s1, %lo(Coded_Picture_Height)(a0)
	srli	a0, s0, 1
	mulw	s6, a0, s1
.LBB2_9:
	mv	a0, s6
	call	malloc
	lui	a1, %hi(store_ppm_tga.v422)
	sd	a0, %lo(store_ppm_tga.v422)(a1)
	bnez	a0, .LBB2_11
# %bb.10:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	Error
	lui	a0, %hi(Coded_Picture_Width)
	lw	s0, %lo(Coded_Picture_Width)(a0)
	lui	a0, %hi(Coded_Picture_Height)
	lw	s1, %lo(Coded_Picture_Height)(a0)
.LBB2_11:
	mulw	s6, s1, s0
	mv	a0, s6
	call	malloc
	lui	a1, %hi(store_ppm_tga.u444)
	sd	a0, %lo(store_ppm_tga.u444)(a1)
	bnez	a0, .LBB2_13
# %bb.12:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	Error
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	lui	a1, %hi(Coded_Picture_Height)
	lw	a1, %lo(Coded_Picture_Height)(a1)
	mulw	s6, a1, a0
.LBB2_13:
	mv	a0, s6
	call	malloc
	lui	a1, %hi(store_ppm_tga.v444)
	sd	a0, %lo(store_ppm_tga.v444)(a1)
	bnez	a0, .LBB2_15
# %bb.14:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	Error
.LBB2_15:
	lui	a0, %hi(chroma_format)
	lw	a6, %lo(chroma_format)(a0)
	ld	a0, 8(s2)
	li	a1, 1
	beq	a6, a1, .LBB2_5
.LBB2_16:
	lui	a1, %hi(store_ppm_tga.u444)
	ld	a1, %lo(store_ppm_tga.u444)(a1)
	call	conv422to444
	ld	a0, 16(s2)
	lui	a1, %hi(store_ppm_tga.v444)
	ld	a1, %lo(store_ppm_tga.v444)(a1)
	call	conv422to444
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB2_2
.LBB2_17:
	lui	s0, %hi(.L.str.8)
	addi	s0, s0, %lo(.L.str.8)
.LBB2_18:
	mv	a0, s5
	call	strlen
	lbu	a1, 4(s0)
	add	a0, s5, a0
	sb	a1, 4(a0)
	lbu	a1, 3(s0)
	lbu	a2, 2(s0)
	lbu	a3, 1(s0)
	lbu	a4, 0(s0)
	sb	a1, 3(a0)
	sb	a2, 2(a0)
	sb	a3, 1(a0)
	sb	a4, 0(a0)
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB2_53
.LBB2_19:
	li	a1, 577
	li	a2, 438
	mv	a0, s5
	call	open
	lui	a1, %hi(outfile)
	li	a2, -1
	sw	a0, %lo(outfile)(a1)
	bne	a0, a2, .LBB2_21
# %bb.20:
	lui	s6, %hi(Error_Text)
	addi	s6, s6, %lo(Error_Text)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a0, s6
	mv	a2, s5
	call	sprintf
	mv	a0, s6
	call	Error
.LBB2_21:
	lui	a0, %hi(optr)
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	sd	a1, %lo(optr)(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	beqz	a1, .LBB2_48
# %bb.22:
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
.LBB2_23:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB2_45
# %bb.24:
	lui	a0, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(a0)
	blez	a1, .LBB2_45
# %bb.25:
	lui	a0, %hi(matrix_coefficients)
	lw	a0, %lo(matrix_coefficients)(a0)
	sd	zero, 40(sp)                    # 8-byte Folded Spill
	slli	a0, a0, 4
	lui	a2, %hi(Inverse_Table_6_9)
	addi	a2, a2, %lo(Inverse_Table_6_9)
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
	addi	s0, a0, -336
	lui	a0, 19
	addi	s4, a0, -1515
	lui	s1, 8
	addi	s1, s1, 18
	lui	s7, %hi(optr)
	lui	s5, 1
	lui	a0, %hi(obfr)
	addi	a0, a0, %lo(obfr)
	add	s5, a0, s5
	j	.LBB2_27
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	beq	a2, a0, .LBB2_45
.LBB2_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
                                        #     Child Loop BB2_39 Depth 2
	blez	a1, .LBB2_26
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=1
	lui	a0, %hi(store_ppm_tga.v444)
	ld	s6, %lo(store_ppm_tga.v444)(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mul	a1, a1, a0
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	add	a0, a3, a1
	add	s6, s6, a0
	lui	a0, %hi(store_ppm_tga.u444)
	ld	s3, %lo(store_ppm_tga.u444)(a0)
	add	a2, a3, a1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	ld	s8, 0(a0)
	ld	a0, %lo(optr)(s7)
	add	s3, s3, a2
	add	a1, a3, a1
	add	s8, s8, a1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB2_37
# %bb.29:                               # %.preheader1
                                        #   in Loop: Header=BB2_27 Depth=1
	li	s9, 0
	j	.LBB2_31
.LBB2_30:                               #   in Loop: Header=BB2_31 Depth=2
	lui	a1, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(a1)
	addi	s3, s3, 1
	addi	s6, s6, 1
	addiw	s9, s9, 1
	addi	s8, s8, 1
	bge	s9, a1, .LBB2_26
.LBB2_31:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, 0(s3)
	lbu	a2, 0(s6)
	lbu	a3, 0(s8)
	addi	a1, a1, -128
	addi	a2, a2, -128
	mul	a3, a3, s4
	add	a4, a3, s0
	lui	a5, %hi(Clip)
	ld	a5, %lo(Clip)(a5)
	ld	a6, 80(sp)                      # 8-byte Folded Reload
	mul	a6, a2, a6
	add	a6, a6, a4
	lui	a7, 8
	add	a6, a6, a7
	sraiw	a6, a6, 16
	add	a6, a5, a6
	lbu	s10, 0(a6)
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
	add	a1, a1, s1
	add	a1, a1, a4
	sraiw	a1, a1, 16
	add	a1, a5, a1
	lbu	a3, 0(a1)
	lbu	s11, 0(a2)
	addi	s2, a0, 1
	sd	s2, %lo(optr)(s7)
	sb	a3, 0(a0)
	beq	s2, s5, .LBB2_34
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=2
	addi	a2, s2, 1
	sd	a2, %lo(optr)(s7)
	sb	s11, 0(s2)
	beq	a2, s5, .LBB2_35
.LBB2_33:                               #   in Loop: Header=BB2_31 Depth=2
	addi	a0, a2, 1
	sd	a0, %lo(optr)(s7)
	sb	s10, 0(a2)
	bne	a0, s5, .LBB2_30
	j	.LBB2_36
.LBB2_34:                               #   in Loop: Header=BB2_31 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s2, %hi(obfr)
	addi	s2, s2, %lo(obfr)
	mv	a1, s2
	call	write
	addi	a2, s2, 1
	sd	a2, %lo(optr)(s7)
	sb	s11, 0(s2)
	bne	a2, s5, .LBB2_33
.LBB2_35:                               #   in Loop: Header=BB2_31 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s2, %hi(obfr)
	addi	s2, s2, %lo(obfr)
	mv	a1, s2
	call	write
	addi	a0, s2, 1
	sd	a0, %lo(optr)(s7)
	sb	s10, 0(s2)
	bne	a0, s5, .LBB2_30
.LBB2_36:                               #   in Loop: Header=BB2_31 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s2, %hi(obfr)
	addi	s2, s2, %lo(obfr)
	mv	a1, s2
	call	write
	sd	s2, %lo(optr)(s7)
	mv	a0, s2
	j	.LBB2_30
.LBB2_37:                               # %.preheader
                                        #   in Loop: Header=BB2_27 Depth=1
	li	s9, 0
	j	.LBB2_39
.LBB2_38:                               #   in Loop: Header=BB2_39 Depth=2
	lui	a1, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(a1)
	addi	s3, s3, 1
	addi	s6, s6, 1
	addiw	s9, s9, 1
	addi	s8, s8, 1
	bge	s9, a1, .LBB2_26
.LBB2_39:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, 0(s3)
	lbu	a2, 0(s6)
	lbu	a3, 0(s8)
	addi	a1, a1, -128
	addi	a2, a2, -128
	mul	a3, a3, s4
	add	a4, a3, s0
	lui	a5, %hi(Clip)
	ld	a5, %lo(Clip)(a5)
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
	lbu	s11, 0(a2)
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	mul	a1, a1, a2
	add	a1, a1, s1
	add	a1, a1, a4
	sraiw	a1, a1, 16
	add	a1, a5, a1
	lbu	s10, 0(a1)
	addi	s2, a0, 1
	sd	s2, %lo(optr)(s7)
	sb	a6, 0(a0)
	beq	s2, s5, .LBB2_42
# %bb.40:                               #   in Loop: Header=BB2_39 Depth=2
	addi	a2, s2, 1
	sd	a2, %lo(optr)(s7)
	sb	s11, 0(s2)
	beq	a2, s5, .LBB2_43
.LBB2_41:                               #   in Loop: Header=BB2_39 Depth=2
	addi	a0, a2, 1
	sd	a0, %lo(optr)(s7)
	sb	s10, 0(a2)
	bne	a0, s5, .LBB2_38
	j	.LBB2_44
.LBB2_42:                               #   in Loop: Header=BB2_39 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s2, %hi(obfr)
	addi	s2, s2, %lo(obfr)
	mv	a1, s2
	call	write
	addi	a2, s2, 1
	sd	a2, %lo(optr)(s7)
	sb	s11, 0(s2)
	bne	a2, s5, .LBB2_41
.LBB2_43:                               #   in Loop: Header=BB2_39 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s2, %hi(obfr)
	addi	s2, s2, %lo(obfr)
	mv	a1, s2
	call	write
	addi	a0, s2, 1
	sd	a0, %lo(optr)(s7)
	sb	s10, 0(s2)
	bne	a0, s5, .LBB2_38
.LBB2_44:                               #   in Loop: Header=BB2_39 Depth=2
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	lui	a2, 1
	lui	s2, %hi(obfr)
	addi	s2, s2, %lo(obfr)
	mv	a1, s2
	call	write
	sd	s2, %lo(optr)(s7)
	mv	a0, s2
	j	.LBB2_38
.LBB2_45:
	lui	a0, %hi(optr)
	ld	a2, %lo(optr)(a0)
	lui	s0, %hi(outfile)
	lw	a0, %lo(outfile)(s0)
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	beq	a2, a1, .LBB2_47
# %bb.46:
	sub	a2, a2, a1
	call	write
	lw	a0, %lo(outfile)(s0)
.LBB2_47:
	ld	ra, 440(sp)                     # 8-byte Folded Reload
	ld	s0, 432(sp)                     # 8-byte Folded Reload
	ld	s1, 424(sp)                     # 8-byte Folded Reload
	ld	s2, 416(sp)                     # 8-byte Folded Reload
	ld	s3, 408(sp)                     # 8-byte Folded Reload
	ld	s4, 400(sp)                     # 8-byte Folded Reload
	ld	s5, 392(sp)                     # 8-byte Folded Reload
	ld	s6, 384(sp)                     # 8-byte Folded Reload
	ld	s7, 376(sp)                     # 8-byte Folded Reload
	ld	s8, 368(sp)                     # 8-byte Folded Reload
	ld	s9, 360(sp)                     # 8-byte Folded Reload
	ld	s10, 352(sp)                    # 8-byte Folded Reload
	ld	s11, 344(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 448
	tail	close
.LBB2_48:
	lui	a0, %hi(horizontal_size)
	lw	a2, %lo(horizontal_size)(a0)
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	addi	a0, sp, 88
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	call	sprintf
	lbu	a0, 88(sp)
	beqz	a0, .LBB2_23
# %bb.49:
	lui	s0, %hi(optr)
	ld	a1, %lo(optr)(s0)
	addi	s1, sp, 89
	lui	s6, %hi(obfr)
	addi	s6, s6, %lo(obfr)
	lui	s2, 1
	add	s2, s6, s2
	lui	s3, %hi(outfile)
	j	.LBB2_51
.LBB2_50:                               #   in Loop: Header=BB2_51 Depth=1
	lbu	a0, 0(s1)
	addi	s1, s1, 1
	mv	a1, a2
	beqz	a0, .LBB2_23
.LBB2_51:                               # =>This Inner Loop Header: Depth=1
	addi	a2, a1, 1
	sd	a2, %lo(optr)(s0)
	sb	a0, 0(a1)
	bne	a2, s2, .LBB2_50
# %bb.52:                               #   in Loop: Header=BB2_51 Depth=1
	lw	a0, %lo(outfile)(s3)
	lui	a2, 1
	mv	a1, s6
	call	write
	sd	s6, %lo(optr)(s0)
	mv	a2, s6
	j	.LBB2_50
.LBB2_53:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a2, s5
	call	fprintf
	j	.LBB2_19
.Lfunc_end2:
	.size	store_ppm_tga, .Lfunc_end2-store_ppm_tga
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function store_yuv1
	.type	store_yuv1,@function
store_yuv1:                             # @store_yuv1
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
	lui	a6, %hi(Quiet_Flag)
	lw	a6, %lo(Quiet_Flag)(a6)
	mv	s0, a5
	mv	s5, a4
	mv	s1, a3
	mv	s4, a2
	mv	s2, a1
	mv	s3, a0
	beqz	a6, .LBB3_15
.LBB3_1:
	li	a1, 577
	li	a2, 438
	mv	a0, s3
	call	open
	lui	a1, %hi(outfile)
	li	a2, -1
	sw	a0, %lo(outfile)(a1)
	bne	a0, a2, .LBB3_3
# %bb.2:
	lui	s6, %hi(Error_Text)
	addi	s6, s6, %lo(Error_Text)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a0, s6
	mv	a2, s3
	call	sprintf
	mv	a0, s6
	call	Error
.LBB3_3:
	lui	a0, %hi(optr)
	lui	s3, %hi(obfr)
	addi	s3, s3, %lo(obfr)
	sd	s3, %lo(optr)(a0)
	blez	s0, .LBB3_11
# %bb.4:
	blez	s5, .LBB3_11
# %bb.5:
	li	a2, 0
	li	s6, 0
	add	s7, s2, s4
	addi	s5, s5, -1
	slli	s5, s5, 32
	srli	a0, s5, 32
	add	a0, s4, a0
	addi	s4, a0, 1
	lui	s5, %hi(optr)
	lui	s8, 1
	lui	s9, %hi(outfile)
	j	.LBB3_7
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=1
	addi	s6, s6, 1
	beq	s6, s0, .LBB3_12
.LBB3_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	mul	s11, s1, s6
	add	s10, s4, s11
	add	s10, s2, s10
	add	s11, s7, s11
	j	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_9 Depth=2
	addi	s11, s11, 1
	beq	s11, s10, .LBB3_6
.LBB3_9:                                #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, s3, a2
	lbu	a1, 0(s11)
	addi	a2, a2, 1
	add	a3, s3, a2
	sd	a3, %lo(optr)(s5)
	sb	a1, 0(a0)
	bne	a2, s8, .LBB3_8
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=2
	lw	a0, %lo(outfile)(s9)
	lui	a2, 1
	mv	a1, s3
	call	write
	li	a2, 0
	sd	s3, %lo(optr)(s5)
	j	.LBB3_8
.LBB3_11:
	lui	a0, %hi(outfile)
	lw	a0, %lo(outfile)(a0)
	j	.LBB3_14
.LBB3_12:
	lui	s0, %hi(outfile)
	lw	a0, %lo(outfile)(s0)
	beqz	a2, .LBB3_14
# %bb.13:
	lui	a1, %hi(obfr)
	addi	a1, a1, %lo(obfr)
	call	write
	lw	a0, %lo(outfile)(s0)
.LBB3_14:
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
	tail	close
.LBB3_15:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a2, s3
	call	fprintf
	j	.LBB3_1
.Lfunc_end3:
	.size	store_yuv1, .Lfunc_end3-store_yuv1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function conv420to422
	.type	conv420to422,@function
conv420to422:                           # @conv420to422
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
	lui	a2, %hi(Coded_Picture_Width)
	lw	a2, %lo(Coded_Picture_Width)(a2)
	lui	a3, %hi(Coded_Picture_Height)
	lw	a3, %lo(Coded_Picture_Height)(a3)
	lui	a4, %hi(progressive_frame)
	lw	a4, %lo(progressive_frame)(a4)
	srai	a2, a2, 1
	srai	a3, a3, 1
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	beqz	a4, .LBB4_13
# %bb.1:
	blez	a2, .LBB4_41
# %bb.2:
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	blez	a3, .LBB4_41
# %bb.3:
	li	t4, 0
	ld	a6, 80(sp)                      # 8-byte Folded Reload
	addi	a4, a6, -1
	addi	a5, a6, -3
	addi	a6, a6, -2
	slli	a3, a2, 32
	srli	a7, a3, 32
	srli	t0, a3, 31
	lui	t1, %hi(Clip)
	li	t2, 67
	li	t3, 227
	j	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi	a0, a0, 1
	ld	t4, 72(sp)                      # 8-byte Folded Reload
	addiw	t4, t4, 1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	addi	a1, a1, 1
	beq	t4, a2, .LBB4_41
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	sd	t4, 72(sp)                      # 8-byte Folded Spill
	li	t4, 0
	li	s5, 0
	li	t5, 3
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	mv	t6, a1
	mv	s0, a0
	j	.LBB4_7
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	addiw	s4, t4, -1
	sltu	s5, t4, s4
	addi	s5, s5, -1
	and	s4, s5, s4
	addiw	s5, t4, -2
	sltu	s7, t4, s5
	addiw	s8, t4, -3
	sltu	s9, t4, s8
	addi	s9, s9, -1
	and	s8, s9, s8
	mulw	s8, s8, a2
	add	s8, a0, s8
	lbu	s8, 0(s8)
	addi	s7, s7, -1
	and	s5, s7, s5
	ld	s7, %lo(Clip)(t1)
	slli	s9, s8, 1
	add	s8, s9, s8
	mulw	s5, s5, a2
	mulw	s4, s4, a2
	add	s4, a0, s4
	lbu	s9, 0(s4)
	lbu	s10, 0(s0)
	add	s5, a0, s5
	lbu	s11, 0(s5)
	mul	s9, s9, t2
	mul	s10, s10, t3
	mulw	a3, a3, a2
	add	a3, a0, a3
	lbu	s6, 0(a3)
	mulw	s3, s3, a2
	add	s3, a0, s3
	lbu	a1, 0(s3)
	slli	ra, s6, 3
	subw	s6, ra, s6
	slli	s11, s11, 4
	subw	s9, s11, s9
	subw	s8, s8, s9
	slli	a1, a1, 5
	subw	a1, s10, a1
	add	a1, a1, s6
	add	a1, s8, a1
	addi	a1, a1, 128
	sraiw	a1, a1, 8
	add	a1, s7, a1
	lbu	a1, 0(a1)
	sb	a1, 0(t6)
	mulw	a1, s2, a2
	add	a1, a0, a1
	lbu	a1, 0(a1)
	ld	s2, %lo(Clip)(t1)
	slli	s6, a1, 1
	add	a1, s6, a1
	lbu	s3, 0(s3)
	lbu	s6, 0(s0)
	lbu	a3, 0(a3)
	lbu	s5, 0(s5)
	mul	s3, s3, t2
	mul	s6, s6, t3
	lbu	s4, 0(s4)
	slli	s7, s5, 3
	subw	s5, s7, s5
	slli	a3, a3, 4
	subw	a1, a1, a3
	add	s3, s3, s6
	add	a1, a1, s3
	slli	s4, s4, 5
	subw	a1, a1, s4
	add	a1, a1, s5
	addi	a1, a1, 128
	sraiw	a1, a1, 8
	add	a1, s2, a1
	lbu	a1, 0(a1)
	add	a3, t6, a7
	sb	a1, 0(a3)
	add	s0, s0, a7
	addi	t5, t5, 1
	addiw	t4, t4, 1
	add	t6, t6, t0
	mv	s5, s1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	beq	s1, a1, .LBB4_4
.LBB4_7:                                #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	s1, s5, 1
	mv	s3, s1
	bltu	s5, a4, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	mv	s3, a4
.LBB4_9:                                #   in Loop: Header=BB4_7 Depth=2
	blt	s5, a6, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_7 Depth=2
	mv	a3, a4
	mv	s2, t5
	blt	s5, a5, .LBB4_6
	j	.LBB4_12
.LBB4_11:                               #   in Loop: Header=BB4_7 Depth=2
	addi	a3, t5, -1
	mv	s2, t5
	blt	s5, a5, .LBB4_6
.LBB4_12:                               #   in Loop: Header=BB4_7 Depth=2
	mv	s2, a4
	j	.LBB4_6
.LBB4_13:
	blez	a2, .LBB4_41
# %bb.14:
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	blez	a3, .LBB4_41
# %bb.15:
	li	a6, 0
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	addi	a5, a3, -2
	addi	s4, a3, -1
	addi	a4, a3, -7
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	addi	a4, a3, -5
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	addi	a4, a3, -3
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	addi	a4, a3, -6
	sd	a4, 48(sp)                      # 8-byte Folded Spill
	addi	a3, a3, -4
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	slli	s0, a2, 32
	srli	a3, s0, 32
	srli	t6, s0, 31
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	add	a3, t6, a3
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	srli	s0, s0, 30
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	lui	s1, %hi(Clip)
	li	s3, 30
	li	a4, -21
	li	s5, -35
	li	t4, 194
	li	s7, 110
	li	s8, -24
	j	.LBB4_17
.LBB4_16:                               #   in Loop: Header=BB4_17 Depth=1
	addi	a0, a0, 1
	ld	a6, 0(sp)                       # 8-byte Folded Reload
	addiw	a6, a6, 1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	addi	a1, a1, 1
	beq	a6, a2, .LBB4_41
.LBB4_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	sd	a6, 0(sp)                       # 8-byte Folded Spill
	li	s11, 0
	li	ra, 0
	li	s9, 0
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	mv	t5, a0
	j	.LBB4_20
.LBB4_18:                               #   in Loop: Header=BB4_20 Depth=2
	mv	a6, s4
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=2
	mulw	s9, a3, a2
	add	s9, a0, s9
	lbu	a3, 0(s9)
	mulw	t2, t2, a2
	add	t2, a0, t2
	lbu	s0, 0(t2)
	mulw	t3, t3, a2
	add	t3, a0, t3
	lbu	s2, 0(t3)
	slli	s6, a3, 3
	subw	a3, s6, a3
	mul	s0, s0, s5
	mul	s2, s2, t4
	mulw	t0, t0, a2
	add	t0, a0, t0
	lbu	s6, 0(t0)
	mulw	t1, t1, a2
	add	t1, a0, t1
	lbu	s3, 0(t1)
	add	s0, s0, s2
	add	a3, a3, s0
	mul	s0, s6, s7
	mul	s2, s3, s8
	mulw	a7, a7, a2
	add	a7, a0, a7
	lbu	a7, 0(a7)
	add	s0, s0, s2
	add	a3, a3, s0
	ld	s0, %lo(Clip)(s1)
	slli	a7, a7, 2
	add	a3, a3, a7
	addi	a3, a3, 128
	sraiw	a3, a3, 8
	add	a3, s0, a3
	lbu	a3, 0(a3)
	ld	a7, 32(sp)                      # 8-byte Folded Reload
	add	a7, a1, a7
	sb	a3, 0(a7)
	mulw	a3, a6, a2
	lbu	a6, 0(t1)
	add	a3, a0, a3
	lbu	a3, 0(a3)
	lbu	a7, 0(s9)
	slli	t1, a6, 2
	add	a6, t1, a6
	lbu	t1, 0(t2)
	add	a3, a3, a7
	slli	a7, a7, 3
	lbu	t2, 0(t3)
	subw	a3, a3, a7
	li	s3, 30
	mul	a7, t1, s3
	lbu	t0, 0(t0)
	li	t1, 248
	mul	t1, t2, t1
	add	a7, a7, t1
	add	a3, a3, a7
	mul	a7, t0, a4
	add	a3, a3, a7
	ld	a7, %lo(Clip)(s1)
	add	a3, a3, a6
	addi	a3, a3, 128
	sraiw	a3, a3, 8
	add	a3, a7, a3
	lbu	a3, 0(a3)
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	add	a6, a1, a6
	sb	a3, 0(a6)
	addiw	ra, ra, 2
	add	t5, t5, t6
	addi	s11, s11, -2
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, a3
	mv	s9, s10
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	bgeu	s10, a3, .LBB4_16
.LBB4_20:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	s10, s9, 2
	mv	t0, s10
	blt	s9, a5, .LBB4_22
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=2
	mv	t0, a5
.LBB4_22:                               #   in Loop: Header=BB4_20 Depth=2
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	blt	s9, a3, .LBB4_25
# %bb.23:                               #   in Loop: Header=BB4_20 Depth=2
	mv	a6, a5
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	bge	s9, a3, .LBB4_26
.LBB4_24:                               #   in Loop: Header=BB4_20 Depth=2
	addi	a7, ra, 6
	j	.LBB4_27
.LBB4_25:                               #   in Loop: Header=BB4_20 Depth=2
	addi	a6, ra, 4
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	blt	s9, a3, .LBB4_24
.LBB4_26:                               #   in Loop: Header=BB4_20 Depth=2
	mv	a7, a5
.LBB4_27:                               #   in Loop: Header=BB4_20 Depth=2
	addiw	a3, ra, -6
	sltu	t1, ra, a3
	addi	t1, t1, -1
	and	a3, t1, a3
	addiw	t1, ra, -4
	sltu	t2, ra, t1
	addi	t2, t2, -1
	and	t1, t2, t1
	seqz	t2, s11
	addi	t3, ra, -2
	addi	t2, t2, -1
	and	t2, t2, t3
	mulw	a3, a3, a2
	add	a3, a0, a3
	lbu	a3, 0(a3)
	mulw	t1, t1, a2
	add	t1, a0, t1
	lbu	t3, 0(t1)
	mulw	a6, a6, a2
	add	a6, a0, a6
	lbu	s2, 0(a6)
	slli	s0, t3, 3
	mulw	t2, t2, a2
	add	t2, a0, t2
	slli	s6, s2, 2
	add	s2, s6, s2
	lbu	s6, 0(t2)
	add	a3, a3, t3
	lbu	t3, 0(t5)
	mulw	t0, t0, a2
	add	t0, a0, t0
	subw	a3, a3, s0
	lbu	s0, 0(t0)
	mul	s6, s6, s3
	li	s3, 248
	mul	t3, t3, s3
	add	t3, s6, t3
	mul	s0, s0, a4
	add	t3, t3, s0
	add	a3, a3, t3
	ld	t3, %lo(Clip)(s1)
	add	a3, a3, s2
	addi	a3, a3, 128
	sraiw	a3, a3, 8
	add	a3, t3, a3
	lbu	a3, 0(a3)
	sb	a3, 0(a1)
	lbu	a3, 0(t2)
	lbu	t1, 0(t1)
	mul	a3, a3, s5
	lbu	t2, 0(t5)
	lbu	t0, 0(t0)
	subw	a3, t1, a3
	slli	t1, t1, 3
	subw	a3, t1, a3
	mul	t1, t2, t4
	mul	t0, t0, s7
	lbu	a6, 0(a6)
	mulw	a7, a7, a2
	add	a7, a0, a7
	lbu	a7, 0(a7)
	add	t0, t1, t0
	mul	a6, a6, s8
	add	a6, t0, a6
	slli	a7, a7, 2
	add	a6, a6, a7
	ld	a7, %lo(Clip)(s1)
	add	a3, a3, a6
	addi	a3, a3, 128
	sraiw	a3, a3, 8
	add	a3, a7, a3
	lbu	a3, 0(a3)
	add	a6, a1, t6
	sb	a3, 0(a6)
	li	t0, 1
	li	a3, 5
	bgeu	s9, a3, .LBB4_30
# %bb.28:                               #   in Loop: Header=BB4_20 Depth=2
	li	a7, 1
	li	a3, 3
	bltu	s9, a3, .LBB4_31
.LBB4_29:                               #   in Loop: Header=BB4_20 Depth=2
	addi	t1, ra, -3
	bnez	s11, .LBB4_32
	j	.LBB4_33
.LBB4_30:                               #   in Loop: Header=BB4_20 Depth=2
	addi	a7, ra, -5
	li	a3, 3
	bgeu	s9, a3, .LBB4_29
.LBB4_31:                               #   in Loop: Header=BB4_20 Depth=2
	li	t1, 1
	beqz	s11, .LBB4_33
.LBB4_32:                               #   in Loop: Header=BB4_20 Depth=2
	addi	t0, ra, -1
.LBB4_33:                               #   in Loop: Header=BB4_20 Depth=2
	bltu	s9, s4, .LBB4_37
# %bb.34:                               #   in Loop: Header=BB4_20 Depth=2
	mv	t3, s4
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	bge	s9, a3, .LBB4_38
.LBB4_35:                               #   in Loop: Header=BB4_20 Depth=2
	addi	t2, ra, 3
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	bge	s9, a3, .LBB4_39
.LBB4_36:                               #   in Loop: Header=BB4_20 Depth=2
	addi	a3, ra, 5
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	bge	s9, a6, .LBB4_18
	j	.LBB4_40
.LBB4_37:                               #   in Loop: Header=BB4_20 Depth=2
	addi	t3, ra, 1
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	blt	s9, a3, .LBB4_35
.LBB4_38:                               #   in Loop: Header=BB4_20 Depth=2
	mv	t2, s4
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	blt	s9, a3, .LBB4_36
.LBB4_39:                               #   in Loop: Header=BB4_20 Depth=2
	mv	a3, s4
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	bge	s9, a6, .LBB4_18
.LBB4_40:                               #   in Loop: Header=BB4_20 Depth=2
	addi	a6, ra, 7
	j	.LBB4_19
.LBB4_41:
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
.Lfunc_end4:
	.size	conv420to422, .Lfunc_end4-conv420to422
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function conv422to444
	.type	conv422to444,@function
conv422to444:                           # @conv422to444
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
	lui	a2, %hi(Coded_Picture_Width)
	lw	a2, %lo(Coded_Picture_Width)(a2)
	lui	a3, %hi(base+3144)
	lw	a4, %lo(base+3144)(a3)
	lui	a3, %hi(Coded_Picture_Height)
	lw	a3, %lo(Coded_Picture_Height)(a3)
	srai	a2, a2, 1
	beqz	a4, .LBB5_14
# %bb.1:
	blez	a3, .LBB5_27
# %bb.2:
	blez	a2, .LBB5_27
# %bb.3:
	li	a3, 0
	addi	a4, a2, -1
	addi	a5, a2, -3
	addi	a6, a2, -2
	lui	a7, %hi(Clip)
	li	t0, 21
	li	t1, -52
	li	t2, 159
	lui	t3, %hi(Coded_Picture_Width)
	lui	t4, %hi(Coded_Picture_Height)
	j	.LBB5_5
.LBB5_4:                                #   in Loop: Header=BB5_5 Depth=1
	lw	t5, %lo(Coded_Picture_Width)(t3)
	lw	t6, %lo(Coded_Picture_Height)(t4)
	add	a0, a0, a2
	addiw	a3, a3, 1
	add	a1, a1, t5
	bge	a3, t6, .LBB5_27
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	li	t5, 0
	li	s2, 0
	addi	t6, a1, 1
	j	.LBB5_8
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=2
	mv	s4, a4
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=2
	addiw	s5, t5, -2
	sltu	s6, t5, s5
	addi	s6, s6, -1
	add	s2, a0, s2
	lbu	s2, 0(s2)
	and	s5, s6, s5
	addiw	s6, t5, -1
	sltu	s7, t5, s6
	sb	s2, -1(t6)
	add	s5, a0, s5
	lbu	s5, 0(s5)
	add	s4, a0, s4
	lbu	s4, 0(s4)
	addi	s7, s7, -1
	and	s6, s7, s6
	ld	s7, %lo(Clip)(a7)
	add	s4, s4, s5
	add	s6, a0, s6
	lbu	s5, 0(s6)
	add	s3, a0, s3
	lbu	s3, 0(s3)
	sext.w	s1, s1
	add	s1, a0, s1
	lbu	s1, 0(s1)
	mul	s4, s4, t0
	add	s3, s3, s5
	mul	s3, s3, t1
	add	s1, s1, s2
	mul	s1, s1, t2
	add	s3, s4, s3
	add	s1, s3, s1
	addi	s1, s1, 128
	srai	s1, s1, 8
	add	s1, s7, s1
	lbu	s1, 0(s1)
	sb	s1, 0(t6)
	addiw	t5, t5, 1
	addi	t6, t6, 2
	mv	s2, s0
	beq	s0, a2, .LBB5_4
.LBB5_8:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	s0, s2, 1
	mv	s1, s0
	bltu	s2, a4, .LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=2
	mv	s1, a4
.LBB5_10:                               #   in Loop: Header=BB5_8 Depth=2
	blt	s2, a6, .LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_8 Depth=2
	mv	s3, a4
	bge	s2, a5, .LBB5_6
	j	.LBB5_13
.LBB5_12:                               #   in Loop: Header=BB5_8 Depth=2
	addiw	s3, t5, 2
	bge	s2, a5, .LBB5_6
.LBB5_13:                               #   in Loop: Header=BB5_8 Depth=2
	addiw	s4, t5, 3
	j	.LBB5_7
.LBB5_14:
	blez	a3, .LBB5_27
# %bb.15:
	blez	a2, .LBB5_27
# %bb.16:
	li	t6, 0
	addi	a4, a2, -1
	addi	a5, a2, -3
	addi	a6, a2, -2
	lui	a7, %hi(Clip)
	li	t0, -21
	li	t1, 70
	li	t2, 228
	li	t3, -37
	li	t4, 11
	j	.LBB5_18
.LBB5_17:                               #   in Loop: Header=BB5_18 Depth=1
	lui	a3, %hi(Coded_Picture_Width)
	lw	a3, %lo(Coded_Picture_Width)(a3)
	lui	t5, %hi(Coded_Picture_Height)
	lw	t5, %lo(Coded_Picture_Height)(t5)
	add	a0, a0, a2
	ld	t6, 0(sp)                       # 8-byte Folded Reload
	addiw	t6, t6, 1
	add	a1, a1, a3
	bge	t6, t5, .LBB5_27
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	sd	t6, 0(sp)                       # 8-byte Folded Spill
	li	s0, 0
	li	s3, 0
	addi	s1, a1, 1
	j	.LBB5_21
.LBB5_19:                               #   in Loop: Header=BB5_21 Depth=2
	mv	s4, a4
.LBB5_20:                               #   in Loop: Header=BB5_21 Depth=2
	addiw	s7, s0, -3
	sltu	s8, s0, s7
	addi	s8, s8, -1
	and	s7, s8, s7
	addiw	s8, s0, -2
	sltu	s9, s0, s8
	addi	s9, s9, -1
	and	s8, s9, s8
	addiw	s9, s0, -1
	sltu	s10, s0, s9
	addi	s10, s10, -1
	and	s9, s10, s9
	add	s7, a0, s7
	lbu	s7, 0(s7)
	add	s8, a0, s8
	lbu	s10, 0(s8)
	ld	s11, %lo(Clip)(a7)
	slli	ra, s7, 2
	add	s7, ra, s7
	mul	s10, s10, t0
	add	s9, a0, s9
	lbu	ra, 0(s9)
	add	s3, a0, s3
	lbu	t5, 0(s3)
	sext.w	s5, s5
	add	s5, a0, s5
	lbu	t6, 0(s5)
	add	s6, a0, s6
	lbu	a3, 0(s6)
	mul	ra, ra, t1
	mul	t5, t5, t2
	mul	t6, t6, t3
	mul	a3, a3, t4
	add	s10, s10, ra
	add	s7, s7, s10
	add	t5, t5, t6
	add	a3, t5, a3
	add	a3, s7, a3
	addi	a3, a3, 128
	sraiw	a3, a3, 8
	add	a3, s11, a3
	lbu	a3, 0(a3)
	sb	a3, -1(s1)
	add	s4, a0, s4
	lbu	a3, 0(s4)
	lbu	t5, 0(s6)
	ld	t6, %lo(Clip)(a7)
	slli	s4, a3, 2
	add	a3, s4, a3
	mul	t5, t5, t0
	lbu	s4, 0(s5)
	lbu	s3, 0(s3)
	lbu	s5, 0(s9)
	lbu	s6, 0(s8)
	mul	s4, s4, t1
	mul	s3, s3, t2
	mul	s5, s5, t3
	mul	s6, s6, t4
	add	a3, a3, t5
	add	a3, a3, s4
	add	a3, a3, s3
	add	a3, a3, s5
	add	a3, a3, s6
	addi	a3, a3, 128
	sraiw	a3, a3, 8
	add	a3, t6, a3
	lbu	a3, 0(a3)
	sb	a3, 0(s1)
	addiw	s0, s0, 1
	addi	s1, s1, 2
	mv	s3, s2
	beq	s2, a2, .LBB5_17
.LBB5_21:                               #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	s2, s3, 1
	mv	s5, s2
	bltu	s3, a4, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_21 Depth=2
	mv	s5, a4
.LBB5_23:                               #   in Loop: Header=BB5_21 Depth=2
	blt	s3, a6, .LBB5_25
# %bb.24:                               #   in Loop: Header=BB5_21 Depth=2
	mv	s6, a4
	bge	s3, a5, .LBB5_19
	j	.LBB5_26
.LBB5_25:                               #   in Loop: Header=BB5_21 Depth=2
	addiw	s6, s0, 2
	bge	s3, a5, .LBB5_19
.LBB5_26:                               #   in Loop: Header=BB5_21 Depth=2
	addiw	s4, s0, 3
	j	.LBB5_20
.LBB5_27:
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
.Lfunc_end5:
	.size	conv422to444, .Lfunc_end5-conv422to444
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

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"saving %s\n"
	.size	.L.str.3, 11

	.type	outfile,@object                 # @outfile
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
outfile:
	.word	0                               # 0x0
	.size	outfile, 4

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Couldn't create %s\n"
	.size	.L.str.4, 20

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

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"4:4:4 not supported for SIF format"
	.size	.L.str.5, 35

	.type	.L.str.6,@object                # @.str.6
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
