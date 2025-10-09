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
	lui	a2, %hi(Coded_Picture_Width)
	lw	a2, %lo(Coded_Picture_Width)(a2)
	lui	a3, %hi(Coded_Picture_Height)
	lw	a3, %lo(Coded_Picture_Height)(a3)
	lui	a4, %hi(progressive_frame)
	lw	a4, %lo(progressive_frame)(a4)
	srai	a2, a2, 1
	srai	a3, a3, 1
	beqz	a4, .LBB4_13
# %bb.1:
	blez	a2, .LBB4_41
# %bb.2:
	blez	a3, .LBB4_41
# %bb.3:
	li	a4, 0
	addi	a5, a3, -1
	addi	a6, a3, -3
	addi	a7, a3, -2
	slli	t1, a2, 32
	srli	t0, t1, 32
	srli	t1, t1, 31
	lui	t2, %hi(Clip)
	li	t3, 67
	li	t4, 227
	j	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi	a0, a0, 1
	addiw	a4, a4, 1
	addi	a1, a1, 1
	beq	a4, a2, .LBB4_41
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	li	t5, 0
	regsw_c	x9, 0x0(x16)		# 100000100100000000000
	li	x7, 0
	li	t6, 3
	mv	x1, a1
	mv	x2, a0
	j	.LBB4_7
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
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
	ld	x9, %lo(Clip)(t2)
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
	ld	x9, %lo(Clip)(t2)
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
	beq	x3, a3, .LBB4_4
.LBB4_7:                                #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addi	x3, x7, 1
	mv	x5, x3
	bltu	x7, a5, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB4_9:                                #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x7, a7, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	mv	x6, a5
	mv	x4, t6
	blt	x7, a6, .LBB4_6
	j	.LBB4_12
.LBB4_11:                               #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	addi	x6, t6, -1
	mv	x4, t6
	blt	x7, a6, .LBB4_6
.LBB4_12:                               #   in Loop: Header=BB4_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, a5
	j	.LBB4_6
.LBB4_13:
	blez	a2, .LBB4_41
# %bb.14:
	blez	a3, .LBB4_41
# %bb.15:
	li	a4, 0
	addi	a5, a3, -2
	addi	a6, a3, -1
	addi	a7, a3, -7
	addi	t0, a3, -5
	addi	t1, a3, -3
	addi	t2, a3, -6
	addi	t3, a3, -4
	regsw_c	x4, 0x1a4(x17)		# 100010010000110100100
	slli	x1, a2, 32
	srli	t4, x1, 32
	srli	t5, x1, 31
	add	t6, t5, t4
	srli	x1, x1, 30
	lui	x2, %hi(Clip)
	li	x3, 30
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	li	x4, 248
	li	x5, -21
	li	x6, -35
	li	x7, 194
	li	x8, 110
	li	x9, -24
	li	x10, 5
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x11, 3
	j	.LBB4_17
.LBB4_16:                               #   in Loop: Header=BB4_17 Depth=1
	addi	a0, a0, 1
	addiw	a4, a4, 1
	addi	a1, a1, 1
	beq	a4, a2, .LBB4_41
.LBB4_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	li	x12, 0
	li	x13, 0
	li	x17, 0
	mv	x14, a1
	mv	x15, a0
	j	.LBB4_20
.LBB4_18:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x17, a6
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x29, 0x576(x26)		# 110101110110101110110
	mulw	x23, x23, a2
	add	x23, a0, x23
	lbu	x24, 0(x23)
	mulw	x22, x22, a2
	add	x22, a0, x22
	lbu	x25, 0(x22)
	ld	x26, %lo(Clip)(x2)
	regsw_c	x31, 0x576(x27)		# 110111111110101110110
	slli	x27, x24, 3
	subw	x24, x27, x24
	mul	x25, x25, x6
	mulw	x21, x21, a2
	add	x21, a0, x21
	lbu	x27, 0(x21)
	mulw	x19, x19, a2
	regsw_c	x13, 0x3b5(x23)		# 101110110101110110101
	add	x19, a0, x19
	lbu	x28, 0(x19)
	mulw	x20, x20, a2
	add	x20, a0, x20
	lbu	x29, 0(x20)
	mulw	x18, x18, a2
	add	x18, a0, x18
	regsw_c	x31, 0x7bf(x27)		# 110111111111110111111
	lbu	x18, 0(x18)
	mul	x27, x27, x7
	mul	x28, x28, x8
	mul	x29, x29, x9
	slli	x18, x18, 2
	add	x25, x25, x27
	add	x24, x24, x25
	regsw_c	x31, 0x5be(x31)		# 111111111110110111110
	add	x28, x28, x29
	add	x24, x24, x28
	add	x18, x24, x18
	addi	x18, x18, 128
	sraiw	x18, x18, 8
	add	x18, x26, x18
	lbu	x18, 0(x18)
	regsw_c	x29, 0x5ae(x25)		# 110011110110110101110
	add	x24, x14, t4
	sb	x18, 0(x24)
	ld	x18, %lo(Clip)(x2)
	lbu	x23, 0(x23)
	mulw	x17, x17, a2
	add	x17, a0, x17
	lbu	x17, 0(x17)
	regsw_c	x13, 0x5bf(x27)		# 110110110110110111111
	slli	x24, x23, 3
	lbu	x22, 0(x22)
	lbu	x21, 0(x21)
	lbu	x19, 0(x19)
	lbu	x20, 0(x20)
	mul	x22, x22, x3
	mul	x21, x21, x4
	regsw_c	x15, 0x7ff(x31)		# 111110111111111111111
	mul	x19, x19, x5
	slli	x25, x20, 2
	add	x20, x25, x20
	add	x17, x17, x23
	subw	x17, x17, x24
	add	x21, x22, x21
	add	x17, x17, x21
	regsw_c	x29, 0x5f6(x31)		# 111111110110111110110
	add	x17, x17, x19
	add	x17, x17, x20
	addi	x17, x17, 128
	sraiw	x17, x17, 8
	add	x17, x18, x17
	lbu	x17, 0(x17)
	add	x18, x14, t6
	regsw_c	x13, 0x5f2(x15)		# 011110110110111110010
	sb	x17, 0(x18)
	addiw	x13, x13, 2
	add	x15, x15, t5
	addi	x12, x12, -2
	add	x14, x14, x1
	mv	x17, x16
	bgeu	x16, a3, .LBB4_16
.LBB4_20:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addi	x16, x17, 2
	mv	x19, x16
	blt	x17, a5, .LBB4_22
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x19, a5
.LBB4_22:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x17, t3, .LBB4_25
# %bb.23:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x20, a5
	bge	x17, t2, .LBB4_26
.LBB4_24:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x18, x13, 6
	j	.LBB4_27
.LBB4_25:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x20, x13, 4
	blt	x17, t2, .LBB4_24
.LBB4_26:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x18, a5
.LBB4_27:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x29, 0x7be(x27)		# 110111110111110111110
	addiw	x21, x13, -6
	sltu	x22, x13, x21
	addi	x22, x22, -1
	and	x21, x22, x21
	addiw	x22, x13, -4
	sltu	x23, x13, x22
	addi	x23, x23, -1
	regsw_c	x13, 0x5f6(x31)		# 111110110110111110110
	and	x22, x23, x22
	seqz	x23, x12
	addi	x24, x13, -2
	addi	x23, x23, -1
	and	x23, x23, x24
	ld	x24, %lo(Clip)(x2)
	mulw	x22, x22, a2
	regsw_c	x13, 0x3b6(x23)		# 101110110101110110110
	add	x22, a0, x22
	lbu	x25, 0(x22)
	mulw	x21, x21, a2
	add	x21, a0, x21
	lbu	x21, 0(x21)
	slli	x26, x25, 3
	mulw	x23, x23, a2
	regsw_c	x13, 0x576(x23)		# 101110110110101110110
	add	x23, a0, x23
	lbu	x27, 0(x23)
	lbu	x28, 0(x15)
	mulw	x19, x19, a2
	add	x19, a0, x19
	lbu	x29, 0(x19)
	mulw	x20, x20, a2
	regsw_c	x15, 0x7f7(x23)		# 101110111111111110111
	add	x20, a0, x20
	lbu	x30, 0(x20)
	mul	x27, x27, x3
	mul	x28, x28, x4
	mul	x29, x29, x5
	slli	x31, x30, 2
	add	x30, x31, x30
	regsw_c	x31, 0x7fe(x31)		# 111111111111111111110
	add	x21, x21, x25
	subw	x21, x21, x26
	add	x27, x27, x28
	add	x27, x27, x29
	add	x21, x21, x27
	add	x21, x21, x30
	addi	x21, x21, 128
	regsw_c	x28, 0x7b6(x27)		# 110111110011110110110
	sraiw	x21, x21, 8
	add	x21, x24, x21
	lbu	x21, 0(x21)
	sb	x21, 0(x14)
	lbu	x21, 0(x22)
	lbu	x22, 0(x23)
	ld	x23, %lo(Clip)(x2)
	regsw_c	x29, 0x5b5(x27)		# 110111110110110110101
	slli	x24, x21, 3
	mul	x22, x22, x6
	lbu	x25, 0(x15)
	lbu	x19, 0(x19)
	lbu	x20, 0(x20)
	mulw	x18, x18, a2
	add	x18, a0, x18
	regsw_c	x31, 0x7bf(x27)		# 110111111111110111111
	lbu	x18, 0(x18)
	mul	x25, x25, x7
	mul	x19, x19, x8
	mul	x20, x20, x9
	slli	x18, x18, 2
	subw	x21, x21, x22
	subw	x21, x24, x21
	regsw_c	x31, 0x7b7(x31)		# 111111111111110110111
	add	x19, x25, x19
	add	x19, x19, x20
	add	x18, x19, x18
	add	x18, x21, x18
	addi	x18, x18, 128
	sraiw	x18, x18, 8
	add	x18, x23, x18
	regsw_c	x7, 0xc0(x27)		# 110110011100011000000
	lbu	x18, 0(x18)
	add	x19, x14, t5
	sb	x18, 0(x19)
	li	x19, 1
	bgeu	x17, x10, .LBB4_30
# %bb.28:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	li	x18, 1
	bltu	x17, x11, .LBB4_31
.LBB4_29:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x20, x13, -3
	bnez	x12, .LBB4_32
	j	.LBB4_33
.LBB4_30:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x18, x13, -5
	bgeu	x17, x11, .LBB4_29
.LBB4_31:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	li	x20, 1
	beqz	x12, .LBB4_33
.LBB4_32:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x19, x13, -1
.LBB4_33:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bltu	x17, a6, .LBB4_37
# %bb.34:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x21, a6
	bge	x17, t1, .LBB4_38
.LBB4_35:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x22, x13, 3
	bge	x17, t0, .LBB4_39
.LBB4_36:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x23, x13, 5
	bge	x17, a7, .LBB4_18
	j	.LBB4_40
.LBB4_37:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x21, x13, 1
	blt	x17, t1, .LBB4_35
.LBB4_38:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x22, a6
	blt	x17, t0, .LBB4_36
.LBB4_39:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x23, a6
	bge	x17, a7, .LBB4_18
.LBB4_40:                               #   in Loop: Header=BB4_20 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x17, x13, 7
	j	.LBB4_19
.LBB4_41:
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x3, 0
	addi	t6, a1, 1
	j	.LBB5_8
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a4
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=2
	regsw_c	x29, 0x3bc(x18)		# 100101110101110111100
	addiw	x6, t5, -2
	sltu	x7, t5, x6
	addi	x7, x7, -1
	add	x3, a0, x3
	lbu	x3, 0(x3)
	and	x6, x7, x6
	addiw	x7, t5, -1
	regsw_c	x27, 0x576(x20)		# 101001101110101110110
	sltu	x8, t5, x7
	sb	x3, -1(t6)
	add	x6, a0, x6
	lbu	x6, 0(x6)
	add	x5, a0, x5
	lbu	x5, 0(x5)
	addi	x8, x8, -1
	regsw_c	x15, 0x3ae(x30)		# 111100111101110101110
	and	x7, x8, x7
	ld	x8, %lo(Clip)(a7)
	add	x5, x5, x6
	add	x7, a0, x7
	lbu	x6, 0(x7)
	add	x4, a0, x4
	lbu	x4, 0(x4)
	regsw_c	x29, 0x5f7(x26)		# 110101110110111110111
	sext.w	x2, x2
	add	x2, a0, x2
	lbu	x2, 0(x2)
	mul	x5, x5, t0
	add	x4, x4, x6
	mul	x4, x4, t1
	add	x2, x2, x3
	regsw_c	x31, 0x5be(x27)		# 110111111110110111110
	mul	x2, x2, t2
	add	x4, x5, x4
	add	x2, x4, x2
	addi	x2, x2, 128
	srai	x2, x2, 8
	add	x2, x8, x2
	lbu	x2, 0(x2)
	regsw_c	x1, 0x480(x4)		# 001000000110010000000
	sb	x2, 0(t6)
	addiw	t5, t5, 1
	addi	t6, t6, 2
	mv	x3, x1
	beq	x1, a2, .LBB5_4
.LBB5_8:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addi	x1, x3, 1
	mv	x2, x1
	bltu	x3, a4, .LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x2, a4
.LBB5_10:                               #   in Loop: Header=BB5_8 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x3, a6, .LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_8 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x4, a4
	bge	x3, a5, .LBB5_6
	j	.LBB5_13
.LBB5_12:                               #   in Loop: Header=BB5_8 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	addiw	x4, t5, 2
	bge	x3, a5, .LBB5_6
.LBB5_13:                               #   in Loop: Header=BB5_8 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addiw	x5, t5, 3
	j	.LBB5_7
.LBB5_14:
	blez	a3, .LBB5_27
# %bb.15:
	blez	a2, .LBB5_27
# %bb.16:
	li	a3, 0
	addi	a4, a2, -1
	addi	a5, a2, -3
	addi	a6, a2, -2
	lui	a7, %hi(Clip)
	li	t0, -21
	li	t1, 70
	li	t2, 228
	li	t3, -37
	li	t4, 11
	lui	t5, %hi(Coded_Picture_Width)
	lui	t6, %hi(Coded_Picture_Height)
	j	.LBB5_18
.LBB5_17:                               #   in Loop: Header=BB5_18 Depth=1
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, %lo(Coded_Picture_Width)(t5)
	lw	x2, %lo(Coded_Picture_Height)(t6)
	add	a0, a0, a2
	addiw	a3, a3, 1
	add	a1, a1, x1
	bge	a3, x2, .LBB5_27
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	li	x1, 0
	li	x4, 0
	addi	x2, a1, 1
	j	.LBB5_21
.LBB5_19:                               #   in Loop: Header=BB5_21 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a4
.LBB5_20:                               #   in Loop: Header=BB5_21 Depth=2
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
	ld	x12, %lo(Clip)(a7)
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
	ld	x8, %lo(Clip)(a7)
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
	beq	x3, a2, .LBB5_17
.LBB5_21:                               #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addi	x3, x4, 1
	mv	x6, x3
	bltu	x4, a4, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_21 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x6, a4
.LBB5_23:                               #   in Loop: Header=BB5_21 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x4, a6, .LBB5_25
# %bb.24:                               #   in Loop: Header=BB5_21 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x7, a4
	bge	x4, a5, .LBB5_19
	j	.LBB5_26
.LBB5_25:                               #   in Loop: Header=BB5_21 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addiw	x7, x1, 2
	bge	x4, a5, .LBB5_19
.LBB5_26:                               #   in Loop: Header=BB5_21 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addiw	x5, x1, 3
	j	.LBB5_20
.LBB5_27:
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
