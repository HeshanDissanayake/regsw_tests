	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"puthdr.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putseqhdr
.LCPI0_0:
	.quad	0x4079000000000000              # double 400
	.text
	.globl	putseqhdr
	.p2align	2
	.type	putseqhdr,@function
putseqhdr:                              # @putseqhdr
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	call	alignbits
	li	a0, 435
	li	a1, 32
	call	putbits
	lui	a0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(a0)
	li	a1, 12
	call	putbits
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	li	a1, 12
	call	putbits
	lui	a0, %hi(aspectratio)
	lw	a0, %lo(aspectratio)(a0)
	li	a1, 4
	call	putbits
	lui	a0, %hi(frame_rate_code)
	lw	a0, %lo(frame_rate_code)(a0)
	li	a1, 4
	call	putbits
	lui	a0, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a0)
	lui	a0, %hi(.LCPI0_0)
	fld	fa4, %lo(.LCPI0_0)(a0)
	fdiv.d	fa5, fa5, fa4
	fcvt.w.d	a0, fa5, rup
	li	a1, 18
	call	putbits
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	a0, %hi(vbv_buffer_size)
	lw	a0, %lo(vbv_buffer_size)(a0)
	li	a1, 10
	call	putbits
	lui	a0, %hi(constrparms)
	lw	a0, %lo(constrparms)(a0)
	li	a1, 1
	call	putbits
	lui	s0, %hi(load_iquant)
	lw	a0, %lo(load_iquant)(s0)
	li	a1, 1
	call	putbits
	lw	a0, %lo(load_iquant)(s0)
	beqz	a0, .LBB0_3
# %bb.1:                                # %.preheader1
	lui	s0, %hi(zig_zag_scan)
	addi	s0, s0, %lo(zig_zag_scan)
	lui	s1, %hi(intra_q)
	addi	s1, s1, %lo(intra_q)
	addi	s2, s0, 64
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a0, 0(s0)
	add	a0, s1, a0
	lbu	a0, 0(a0)
	li	a1, 8
	call	putbits
	addi	s0, s0, 1
	bne	s0, s2, .LBB0_2
.LBB0_3:
	lui	s0, %hi(load_niquant)
	lw	a0, %lo(load_niquant)(s0)
	li	a1, 1
	call	putbits
	lw	a0, %lo(load_niquant)(s0)
	beqz	a0, .LBB0_6
# %bb.4:                                # %.preheader
	lui	s0, %hi(zig_zag_scan)
	addi	s0, s0, %lo(zig_zag_scan)
	lui	s1, %hi(inter_q)
	addi	s1, s1, %lo(inter_q)
	addi	s2, s0, 64
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lbu	a0, 0(s0)
	add	a0, s1, a0
	lbu	a0, 0(a0)
	li	a1, 8
	call	putbits
	addi	s0, s0, 1
	bne	s0, s2, .LBB0_5
.LBB0_6:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	putseqhdr, .Lfunc_end0-putseqhdr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putseqext
.LCPI1_0:
	.quad	0x4079000000000000              # double 400
	.text
	.globl	putseqext
	.p2align	2
	.type	putseqext,@function
putseqext:                              # @putseqext
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	call	alignbits
	li	a0, 437
	li	a1, 32
	call	putbits
	li	a0, 1
	li	a1, 4
	call	putbits
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
	lui	a1, %hi(level)
	lw	a1, %lo(level)(a1)
	slliw	a0, a0, 4
	or	a0, a0, a1
	li	a1, 8
	call	putbits
	lui	a0, %hi(prog_seq)
	lw	a0, %lo(prog_seq)(a0)
	li	a1, 1
	call	putbits
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 2
	call	putbits
	lui	a0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(a0)
	srai	a0, a0, 12
	li	a1, 2
	call	putbits
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	srai	a0, a0, 12
	li	a1, 2
	call	putbits
	lui	a0, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a0)
	lui	a0, %hi(.LCPI1_0)
	fld	fa4, %lo(.LCPI1_0)(a0)
	fdiv.d	fa5, fa5, fa4
	fcvt.w.d	a0, fa5, rup
	srai	a0, a0, 18
	li	a1, 12
	call	putbits
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	a0, %hi(vbv_buffer_size)
	lw	a0, %lo(vbv_buffer_size)(a0)
	srai	a0, a0, 10
	li	a1, 8
	call	putbits
	li	a1, 1
	li	a0, 0
	call	putbits
	li	a1, 2
	li	a0, 0
	call	putbits
	li	a1, 5
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	putbits
.Lfunc_end1:
	.size	putseqext, .Lfunc_end1-putseqext
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putseqdispext                   # -- Begin function putseqdispext
	.p2align	2
	.type	putseqdispext,@function
putseqdispext:                          # @putseqdispext
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	call	alignbits
	li	a0, 437
	li	a1, 32
	call	putbits
	li	a0, 2
	li	a1, 4
	call	putbits
	lui	a0, %hi(video_format)
	lw	a0, %lo(video_format)(a0)
	li	a1, 3
	call	putbits
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	a0, %hi(color_primaries)
	lw	a0, %lo(color_primaries)(a0)
	li	a1, 8
	call	putbits
	lui	a0, %hi(transfer_characteristics)
	lw	a0, %lo(transfer_characteristics)(a0)
	li	a1, 8
	call	putbits
	lui	a0, %hi(matrix_coefficients)
	lw	a0, %lo(matrix_coefficients)(a0)
	li	a1, 8
	call	putbits
	lui	a0, %hi(display_horizontal_size)
	lw	a0, %lo(display_horizontal_size)(a0)
	li	a1, 14
	call	putbits
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	a0, %hi(display_vertical_size)
	lw	a0, %lo(display_vertical_size)(a0)
	li	a1, 14
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	putbits
.Lfunc_end2:
	.size	putseqdispext, .Lfunc_end2-putseqdispext
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putuserdata                     # -- Begin function putuserdata
	.p2align	2
	.type	putuserdata,@function
putuserdata:                            # @putuserdata
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	call	alignbits
	li	a0, 434
	li	a1, 32
	call	putbits
	lbu	a0, 0(s0)
	beqz	a0, .LBB3_3
# %bb.1:                                # %.preheader
	addi	s0, s0, 1
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	andi	a0, a0, 255
	li	a1, 8
	call	putbits
	lbu	a0, 0(s0)
	addi	s0, s0, 1
	bnez	a0, .LBB3_2
.LBB3_3:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	putuserdata, .Lfunc_end3-putuserdata
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putgophdr
.LCPI4_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	putgophdr
	.p2align	2
	.type	putgophdr,@function
putgophdr:                              # @putgophdr
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	mv	s1, a0
	call	alignbits
	li	a0, 440
	li	a1, 32
	call	putbits
	lui	a0, %hi(tc0)
	lw	a0, %lo(tc0)(a0)
	lui	a1, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a1)
	lui	a1, %hi(.LCPI4_0)
	fld	fa4, %lo(.LCPI4_0)(a1)
	add	a0, a0, s1
	fadd.d	fa5, fa5, fa4
	fcvt.w.d	a1, fa5, rtz
	divw	a2, a0, a1
	mul	a1, a2, a1
	subw	a0, a0, a1
	lui	a1, 559241
	addiw	a1, a1, -1911
	mul	a3, a2, a1
	srli	a3, a3, 32
	add	a3, a3, a2
	srliw	a4, a3, 31
	sraiw	a3, a3, 5
	add	a3, a3, a4
	li	a4, 60
	mul	a5, a3, a4
	subw	a5, a2, a5
	mul	a1, a3, a1
	srli	a1, a1, 32
	add	a1, a1, a3
	srliw	a6, a1, 31
	sraiw	a1, a1, 5
	add	a1, a1, a6
	mul	a1, a1, a4
	subw	a3, a3, a1
	lui	a1, 596523
	addiw	a1, a1, 965
	mul	a1, a2, a1
	srli	a1, a1, 32
	add	a1, a1, a2
	srliw	a2, a1, 31
	sraiw	a1, a1, 11
	add	a1, a1, a2
	lui	a2, 174763
	addiw	a2, a2, -1365
	mul	a2, a1, a2
	srli	a4, a2, 63
	srai	a2, a2, 32
	srli	a2, a2, 2
	add	a2, a2, a4
	li	a4, 24
	mul	a2, a2, a4
	subw	a1, a1, a2
	slliw	a1, a1, 19
	slliw	a2, a3, 13
	slliw	a3, a5, 6
	or	a0, a0, a3
	or	a0, a0, a1
	or	a0, a0, a2
	lui	a1, 1
	or	a0, a0, a1
	li	a1, 25
	call	putbits
	li	a1, 1
	mv	a0, s0
	call	putbits
	li	a1, 1
	li	a0, 0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	putbits
.Lfunc_end4:
	.size	putgophdr, .Lfunc_end4-putgophdr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putpicthdr                      # -- Begin function putpicthdr
	.p2align	2
	.type	putpicthdr,@function
putpicthdr:                             # @putpicthdr
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	call	alignbits
	li	a0, 256
	li	a1, 32
	call	putbits
	call	calc_vbv_delay
	lui	a0, %hi(temp_ref)
	lw	a0, %lo(temp_ref)(a0)
	li	a1, 10
	call	putbits
	lui	s1, %hi(pict_type)
	lw	a0, %lo(pict_type)(s1)
	li	a1, 3
	li	s0, 3
	call	putbits
	lui	a0, %hi(vbv_delay)
	lw	a0, %lo(vbv_delay)(a0)
	li	a1, 16
	call	putbits
	lw	a0, %lo(pict_type)(s1)
	andi	a1, a0, -2
	li	a2, 2
	bne	a1, a2, .LBB5_5
# %bb.1:
	li	a1, 1
	li	a0, 0
	call	putbits
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	bnez	a0, .LBB5_3
# %bb.2:
	li	a0, 7
	j	.LBB5_4
.LBB5_3:
	lui	a0, %hi(forw_hor_f_code)
	lw	a0, %lo(forw_hor_f_code)(a0)
.LBB5_4:
	li	a1, 3
	call	putbits
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
.LBB5_5:
	bne	a0, s0, .LBB5_10
# %bb.6:
	li	a1, 1
	li	a0, 0
	call	putbits
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	bnez	a0, .LBB5_8
# %bb.7:
	li	a0, 7
	j	.LBB5_9
.LBB5_8:
	lui	a0, %hi(back_hor_f_code)
	lw	a0, %lo(back_hor_f_code)(a0)
.LBB5_9:
	li	a1, 3
	call	putbits
.LBB5_10:
	li	a1, 1
	li	a0, 0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	putbits
.Lfunc_end5:
	.size	putpicthdr, .Lfunc_end5-putpicthdr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putpictcodext                   # -- Begin function putpictcodext
	.p2align	2
	.type	putpictcodext,@function
putpictcodext:                          # @putpictcodext
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	call	alignbits
	li	a0, 437
	li	a1, 32
	call	putbits
	li	a0, 8
	li	a1, 4
	call	putbits
	lui	a0, %hi(forw_hor_f_code)
	lw	a0, %lo(forw_hor_f_code)(a0)
	li	a1, 4
	call	putbits
	lui	a0, %hi(forw_vert_f_code)
	lw	a0, %lo(forw_vert_f_code)(a0)
	li	a1, 4
	call	putbits
	lui	a0, %hi(back_hor_f_code)
	lw	a0, %lo(back_hor_f_code)(a0)
	li	a1, 4
	call	putbits
	lui	a0, %hi(back_vert_f_code)
	lw	a0, %lo(back_vert_f_code)(a0)
	li	a1, 4
	call	putbits
	lui	a0, %hi(dc_prec)
	lw	a0, %lo(dc_prec)(a0)
	li	a1, 2
	call	putbits
	lui	s0, %hi(pict_struct)
	lw	a0, %lo(pict_struct)(s0)
	li	a1, 2
	call	putbits
	lw	a0, %lo(pict_struct)(s0)
	lui	a1, %hi(topfirst)
	lw	a1, %lo(topfirst)(a1)
	addi	a0, a0, -3
	snez	a0, a0
	addi	a0, a0, -1
	and	a0, a0, a1
	li	a1, 1
	call	putbits
	lui	a0, %hi(frame_pred_dct)
	lw	a0, %lo(frame_pred_dct)(a0)
	li	a1, 1
	call	putbits
	li	a1, 1
	li	a0, 0
	call	putbits
	lui	a0, %hi(q_scale_type)
	lw	a0, %lo(q_scale_type)(a0)
	li	a1, 1
	call	putbits
	lui	a0, %hi(intravlc)
	lw	a0, %lo(intravlc)(a0)
	li	a1, 1
	call	putbits
	lui	a0, %hi(altscan)
	lw	a0, %lo(altscan)(a0)
	li	a1, 1
	call	putbits
	lui	a0, %hi(repeatfirst)
	lw	a0, %lo(repeatfirst)(a0)
	li	a1, 1
	call	putbits
	lui	s0, %hi(prog_frame)
	lw	a0, %lo(prog_frame)(s0)
	li	a1, 1
	call	putbits
	lw	a0, %lo(prog_frame)(s0)
	li	a1, 1
	call	putbits
	li	a1, 1
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	putbits
.Lfunc_end6:
	.size	putpictcodext, .Lfunc_end6-putpictcodext
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putseqend                       # -- Begin function putseqend
	.p2align	2
	.type	putseqend,@function
putseqend:                              # @putseqend
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	call	alignbits
	li	a0, 439
	li	a1, 32
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	putbits
.Lfunc_end7:
	.size	putseqend, .Lfunc_end7-putseqend
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
