	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"putseq.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putseq                          # -- Begin function putseq
	.p2align	2
	.type	putseq,@function
putseq:                                 # @putseq
# %bb.0:
	addi	sp, sp, -560
	sd	ra, 552(sp)                     # 8-byte Folded Spill
	sd	s0, 544(sp)                     # 8-byte Folded Spill
	sd	s1, 536(sp)                     # 8-byte Folded Spill
	sd	s2, 528(sp)                     # 8-byte Folded Spill
	sd	s3, 520(sp)                     # 8-byte Folded Spill
	sd	s4, 512(sp)                     # 8-byte Folded Spill
	sd	s5, 504(sp)                     # 8-byte Folded Spill
	sd	s6, 496(sp)                     # 8-byte Folded Spill
	sd	s7, 488(sp)                     # 8-byte Folded Spill
	sd	s8, 480(sp)                     # 8-byte Folded Spill
	sd	s9, 472(sp)                     # 8-byte Folded Spill
	sd	s10, 464(sp)                    # 8-byte Folded Spill
	sd	s11, 456(sp)                    # 8-byte Folded Spill
	call	rc_init_seq
	call	putseqhdr
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	bnez	a0, .LBB0_2
# %bb.1:
	call	putseqext
	call	putseqdispext
.LBB0_2:
	lui	a0, %hi(id_string)
	addi	a0, a0, %lo(id_string)
	call	strlen
	li	a1, 2
	bltu	a0, a1, .LBB0_4
# %bb.3:
	lui	a0, %hi(id_string)
	addi	a0, a0, %lo(id_string)
	call	putuserdata
.LBB0_4:
	lui	a0, %hi(nframes)
	lw	a0, %lo(nframes)(a0)
	blez	a0, .LBB0_72
# %bb.5:
	li	s0, 0
	lui	a0, %hi(oldorgframe)
	addi	a0, a0, %lo(oldorgframe)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(oldrefframe)
	addi	a0, a0, %lo(oldrefframe)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(neworgframe)
	addi	a0, a0, %lo(neworgframe)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(newrefframe)
	addi	a0, a0, %lo(newrefframe)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	lui	s2, %hi(pict_type)
	lui	s11, %hi(mbinfo)
	lui	s10, %hi(blocks)
	lui	s3, %hi(block_count)
	lui	s1, %hi(inter_q)
	addi	s1, s1, %lo(inter_q)
	lui	s5, %hi(dc_prec)
	lui	s4, %hi(intra_q)
	addi	s4, s4, %lo(intra_q)
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x22
                                        # implicit-def: $x23
	j	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(pict_type)
	mv	s7, s6
	ld	s6, 128(sp)                     # 8-byte Folded Reload
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	ld	a2, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	addi	a1, sp, 152
	lui	a0, %hi(predframe)
	addi	a0, a0, %lo(predframe)
	call	itransform
	addi	a0, sp, 176
	addi	a1, sp, 152
	call	calcSNR
	call	stats
	lui	a0, %hi(frame0)
	lw	a0, %lo(frame0)(a0)
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addw	a2, a0, a2
	addi	a0, sp, 200
	lui	a1, %hi(tplref)
	addi	a1, a1, %lo(tplref)
	call	sprintf
	addi	a0, sp, 200
	addi	a1, sp, 152
	call	writeframe
	lui	a0, %hi(nframes)
	lw	a0, %lo(nframes)(a0)
	addiw	s0, s0, 1
	bge	s0, a0, .LBB0_72
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #     Child Loop BB0_57 Depth 2
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_60 Depth 3
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_65
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	lui	a1, %hi(N)
	lw	a1, %lo(N)(a1)
	addi	a2, a0, -1
	add	a3, a2, s0
	remw	a4, a3, a1
	add	a4, a0, a4
	subw	a3, a3, a4
	addiw	a3, a3, 1
	sgtz	a4, a3
	negw	a4, a4
	and	s9, a4, a3
	beqz	s0, .LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	addiw	t3, s0, -1
	remw	a3, t3, a0
	beqz	a3, .LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a2, %hi(auxorgframe)
	ld	a1, %lo(auxorgframe)(a2)
	addi	a2, a2, %lo(auxorgframe)
	ld	a3, 16(a2)
	sd	a1, 176(sp)
	sd	a3, 192(sp)
	ld	a1, 8(a2)
	lui	a3, %hi(auxframe)
	ld	a2, %lo(auxframe)(a3)
	addi	a3, a3, %lo(auxframe)
	ld	a4, 8(a3)
	ld	a3, 16(a3)
	sd	a1, 184(sp)
	sd	a2, 152(sp)
	sd	a4, 160(sp)
	sd	a3, 168(sp)
	li	a1, 3
	sw	a1, %lo(pict_type)(s2)
	lui	a2, %hi(motion_data)
	ld	a2, %lo(motion_data)(a2)
	addi	a3, s0, -2
	remw	a0, a3, a0
	slli	a0, a0, 5
	add	a0, a0, a2
	lw	a2, 32(a0)
	lui	a3, %hi(forw_hor_f_code)
	sw	a2, %lo(forw_hor_f_code)(a3)
	lw	a2, 36(a0)
	lui	a3, %hi(forw_vert_f_code)
	sw	a2, %lo(forw_vert_f_code)(a3)
	lw	a2, 48(a0)
	lui	a3, %hi(back_hor_f_code)
	sw	a2, %lo(back_hor_f_code)(a3)
	lw	a2, 52(a0)
	lui	a3, %hi(back_vert_f_code)
	sw	a2, %lo(back_vert_f_code)(a3)
	lw	a2, 40(a0)
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	mv	a4, s0
	lw	s7, 44(a0)
	lw	a2, 56(a0)
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	lw	a0, 60(a0)
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	j	.LBB0_21
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	li	t3, -1
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a7, %hi(oldorgframe)
	ld	a3, %lo(oldorgframe)(a7)
	lui	t0, %hi(oldrefframe)
	ld	a4, %lo(oldrefframe)(t0)
	lui	t1, %hi(neworgframe)
	ld	a5, %lo(neworgframe)(t1)
	lui	t2, %hi(newrefframe)
	ld	a6, %lo(newrefframe)(t2)
	sd	a3, 176(sp)
	sd	a4, 152(sp)
	sd	a5, %lo(oldorgframe)(a7)
	sd	a6, %lo(oldrefframe)(t0)
	sd	a3, %lo(neworgframe)(t1)
	sd	a4, %lo(newrefframe)(t2)
	ld	a7, 56(sp)                      # 8-byte Folded Reload
	ld	a3, 8(a7)
	ld	t0, 120(sp)                     # 8-byte Folded Reload
	ld	a4, 8(t0)
	ld	t1, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 8(t1)
	ld	t2, 112(sp)                     # 8-byte Folded Reload
	ld	a6, 8(t2)
	sd	a3, 184(sp)
	sd	a4, 160(sp)
	sd	a5, 8(a7)
	sd	a6, 8(t0)
	sd	a3, 8(t1)
	ld	a3, 16(t1)
	sd	a4, 8(t2)
	ld	a4, 16(a7)
	ld	a5, 16(t0)
	sd	a3, 16(a7)
	ld	a3, 16(t2)
	seqz	s8, s0
	sd	a4, 192(sp)
	sd	a5, 168(sp)
	sd	a3, 16(t0)
	sd	a4, 16(t1)
	lui	a3, %hi(nframes)
	lw	a3, %lo(nframes)(a3)
	addw	a4, t3, a0
	addi	a6, s8, -1
	and	t3, a6, a4
	sd	a5, 16(t2)
	blt	t3, a3, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	addiw	t3, a3, -1
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	bne	s0, s9, .LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	li	a4, 1
	sw	a4, %lo(pict_type)(s2)
	lui	a4, %hi(forw_vert_f_code)
	li	a5, 15
	sw	a5, %lo(forw_vert_f_code)(a4)
	lui	a4, %hi(forw_hor_f_code)
	sw	a5, %lo(forw_hor_f_code)(a4)
	lui	a4, %hi(back_vert_f_code)
	sw	a5, %lo(back_vert_f_code)(a4)
	lui	a4, %hi(back_hor_f_code)
	sw	a5, %lo(back_hor_f_code)(a4)
	mv	s2, t3
	beqz	s0, .LBB0_22
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	subw	a3, a3, s0
	blt	a1, a3, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a1, a3
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	add	a2, a1, a2
	j	.LBB0_25
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	li	a1, 2
	sw	a1, %lo(pict_type)(s2)
	lw	a2, 0(a0)
	lw	a3, 4(a0)
	lui	a4, %hi(forw_hor_f_code)
	sw	a2, %lo(forw_hor_f_code)(a4)
	lw	a2, 8(a0)
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	mv	a4, s0
	lw	s7, 12(a0)
	lui	a0, %hi(forw_vert_f_code)
	sw	a3, %lo(forw_vert_f_code)(a0)
	li	a0, 15
	lui	a2, %hi(back_vert_f_code)
	sw	a0, %lo(back_vert_f_code)(a2)
	lui	a2, %hi(back_hor_f_code)
	sw	a0, %lo(back_hor_f_code)(a2)
.LBB0_21:                               #   in Loop: Header=BB0_8 Depth=1
	lui	s8, %hi(pict_type)
	j	.LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	subw	a1, a1, a2
	blt	a1, a3, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a1, a3
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a2, a0, 1
	add	a2, a2, a1
	addi	a2, a2, -2
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	divw	a2, a2, a0
	addiw	a0, a2, -1
	subw	a1, a1, a2
	call	rc_init_GOP
	mv	a0, s0
	mv	a1, s8
	call	putgophdr
	lui	s8, %hi(pict_type)
	lw	a1, %lo(pict_type)(s8)
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	mv	a4, s0
	mv	s7, s6
	mv	t3, s2
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a1, a1, 2
	addi	a1, a1, -4
	lui	a0, %hi(frame_pred_dct_tab)
	addi	a0, a0, %lo(frame_pred_dct_tab)
	add	a0, a0, a1
	lw	a0, 0(a0)
	subw	a2, t3, s9
	lui	s2, %hi(temp_ref)
	sw	a2, %lo(temp_ref)(s2)
	lui	s0, %hi(frame_pred_dct)
	sw	a0, %lo(frame_pred_dct)(s0)
	lui	a0, %hi(qscale_tab)
	addi	a0, a0, %lo(qscale_tab)
	add	a0, a0, a1
	lw	a2, 0(a0)
	lui	a0, %hi(intravlc_tab)
	addi	a0, a0, %lo(intravlc_tab)
	add	a0, a0, a1
	lw	a3, 0(a0)
	lui	a0, %hi(altscan_tab)
	addi	a0, a0, %lo(altscan_tab)
	add	a1, a0, a1
	lw	a1, 0(a1)
	lui	a0, %hi(statfile)
	ld	a0, %lo(statfile)(a0)
	lui	s9, %hi(q_scale_type)
	sw	a2, %lo(q_scale_type)(s9)
	lui	a2, %hi(intravlc)
	sw	a3, %lo(intravlc)(a2)
	lui	s6, %hi(statfile)
	lui	a2, %hi(altscan)
	sw	a1, %lo(altscan)(a2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	sd	a4, 144(sp)                     # 8-byte Folded Spill
	mv	a2, a4
	sd	t3, 136(sp)                     # 8-byte Folded Spill
	mv	a3, t3
	call	fprintf
	lw	a1, %lo(pict_type)(s8)
	ld	a0, %lo(statfile)(s6)
	lui	a2, %hi(putseq.ipb)
	addi	a2, a2, %lo(putseq.ipb)
	add	a1, a2, a1
	lbu	a2, 0(a1)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fprintf
	ld	a0, %lo(statfile)(s6)
	lw	a2, %lo(temp_ref)(s2)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fprintf
	ld	a0, %lo(statfile)(s6)
	lw	a2, %lo(frame_pred_dct)(s0)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fprintf
	ld	a0, %lo(statfile)(s6)
	lw	a2, %lo(q_scale_type)(s9)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	call	fprintf
	ld	a0, %lo(statfile)(s6)
	lui	a1, %hi(intravlc)
	lw	a2, %lo(intravlc)(a1)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fprintf
	ld	a0, %lo(statfile)(s6)
	lui	a1, %hi(altscan)
	lw	a2, %lo(altscan)(a1)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	fprintf
	lw	a0, %lo(pict_type)(s8)
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	sext.w	s9, a2
	sext.w	s8, s7
	li	a1, 1
	mv	s6, s7
	mv	s7, a2
	lui	s2, %hi(pict_type)
	beq	a0, a1, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	lui	s0, %hi(statfile)
	ld	a0, %lo(statfile)(s0)
	negw	a2, s7
	negw	a4, s6
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	mv	a3, s9
	mv	a5, s8
	call	fprintf
	lui	a0, %hi(forw_hor_f_code)
	lwu	a1, %lo(forw_hor_f_code)(a0)
	ld	a0, %lo(statfile)(s0)
	lui	a2, %hi(forw_vert_f_code)
	lwu	a4, %lo(forw_vert_f_code)(a2)
	li	a5, 4
	sllw	a3, a5, a1
	negw	a2, a3
	addiw	a3, a3, -1
	sllw	a5, a5, a4
	negw	a4, a5
	addiw	a5, a5, -1
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	fprintf
	lw	a0, %lo(pict_type)(s2)
	li	a1, 3
	bne	a0, a1, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_8 Depth=1
	lui	s0, %hi(statfile)
	ld	a0, %lo(statfile)(s0)
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	negw	a2, a3
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	negw	a4, a5
	sext.w	a3, a3
	sext.w	a5, a5
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	call	fprintf
	lui	a0, %hi(back_hor_f_code)
	lwu	a1, %lo(back_hor_f_code)(a0)
	ld	a0, %lo(statfile)(s0)
	lui	a2, %hi(back_vert_f_code)
	lwu	a4, %lo(back_vert_f_code)(a2)
	li	a5, 4
	sllw	a3, a5, a1
	negw	a2, a3
	addiw	a3, a3, -1
	sllw	a5, a5, a4
	negw	a4, a5
	addiw	a5, a5, -1
	lui	a1, %hi(.L.str.11)
	addi	a1, a1, %lo(.L.str.11)
	call	fprintf
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(frame0)
	lw	a0, %lo(frame0)(a0)
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addw	a2, a0, a2
	addi	a0, sp, 200
	lui	a1, %hi(tplorg)
	addi	a1, a1, %lo(tplorg)
	call	sprintf
	addi	a0, sp, 200
	addi	a1, sp, 176
	call	readframe
	lui	a0, %hi(fieldpic)
	lw	a0, %lo(fieldpic)(a0)
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_54
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_66
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	mv	s6, s7
	lui	a0, %hi(topfirst)
	lw	a6, %lo(topfirst)(a0)
	lui	a0, %hi(oldorgframe)
	ld	a0, %lo(oldorgframe)(a0)
	lui	a1, %hi(neworgframe)
	ld	a1, %lo(neworgframe)(a1)
	lui	a2, %hi(oldrefframe)
	ld	a2, %lo(oldrefframe)(a2)
	lui	a3, %hi(newrefframe)
	ld	a3, %lo(newrefframe)(a3)
	ld	a4, 176(sp)
	ld	a5, 152(sp)
	ld	a7, %lo(mbinfo)(s11)
	seqz	a6, a6
	addi	a6, a6, 1
	lui	t0, %hi(pict_struct)
	sw	a6, %lo(pict_struct)(t0)
	sd	zero, 32(sp)
	sd	zero, 24(sp)
	sd	a7, 16(sp)
	lw	a6, 88(sp)                      # 8-byte Folded Reload
	sd	a6, 64(sp)                      # 8-byte Folded Spill
	sd	a6, 8(sp)
	lw	a6, 96(sp)                      # 8-byte Folded Reload
	sd	a6, 72(sp)                      # 8-byte Folded Spill
	sd	a6, 0(sp)
	mv	a6, s9
	mv	a7, s8
	call	motion_estimation
	ld	a4, %lo(mbinfo)(s11)
	lui	s0, %hi(predframe)
	addi	s2, s0, %lo(predframe)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	li	a3, 0
	call	predict
	ld	a0, %lo(predframe)(s0)
	ld	a1, 176(sp)
	ld	a2, %lo(mbinfo)(s11)
	call	dct_type_estimation
	ld	a2, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	addi	a1, sp, 176
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	mv	a0, s2
	call	transform
	ld	a0, 176(sp)
	call	putpict
	lui	a0, %hi(mb_height2)
	lw	a0, %lo(mb_height2)(a0)
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	mulw	a0, a1, a0
	blez	a0, .LBB0_41
# %bb.32:                               # %.preheader9
                                        #   in Loop: Header=BB0_8 Depth=1
	li	s9, 0
	li	s8, 0
	j	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=2
	lui	a0, %hi(mb_height2)
	lw	a0, %lo(mb_height2)(a0)
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	addi	s8, s8, 1
	mulw	a0, a1, a0
	addi	s9, s9, 1
	bge	s8, a0, .LBB0_41
.LBB0_34:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	ld	a0, %lo(mbinfo)(s11)
	li	a1, 96
	mul	s0, s8, a1
	add	a0, a0, s0
	lbu	a1, 0(a0)
	lw	a0, %lo(block_count)(s3)
	andi	a1, a1, 1
	bnez	a1, .LBB0_38
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=2
	blez	a0, .LBB0_33
# %bb.36:                               #   in Loop: Header=BB0_34 Depth=2
	li	s2, 0
	li	s7, 0
.LBB0_37:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, %lo(mbinfo)(s11)
	ld	a2, %lo(blocks)(s10)
	mulw	a0, s9, a0
	add	a1, a1, s0
	lw	a3, 12(a1)
	add	a0, s2, a0
	slli	a0, a0, 7
	add	a0, a2, a0
	mv	a1, a0
	mv	a2, s1
	call	iquant_non_intra
	lw	a0, %lo(block_count)(s3)
	addiw	s7, s7, 1
	addi	s2, s2, 1
	blt	s7, a0, .LBB0_37
	j	.LBB0_33
.LBB0_38:                               #   in Loop: Header=BB0_34 Depth=2
	blez	a0, .LBB0_33
# %bb.39:                               #   in Loop: Header=BB0_34 Depth=2
	li	s7, 0
	li	s2, 0
.LBB0_40:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	mulw	a0, s9, a0
	lw	a2, %lo(dc_prec)(s5)
	add	a1, a1, s0
	lw	a4, 12(a1)
	add	a0, s7, a0
	slli	a0, a0, 7
	add	a0, a3, a0
	mv	a1, a0
	mv	a3, s4
	call	iquant_intra
	lw	a0, %lo(block_count)(s3)
	addiw	s2, s2, 1
	addi	s7, s7, 1
	blt	s2, a0, .LBB0_40
	j	.LBB0_33
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	ld	a2, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	addi	a1, sp, 152
	lui	a0, %hi(predframe)
	addi	a0, a0, %lo(predframe)
	call	itransform
	addi	a0, sp, 176
	addi	a1, sp, 152
	call	calcSNR
	call	stats
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(pict_type)
	mv	s7, s6
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_69
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(topfirst)
	lw	a0, %lo(topfirst)(a0)
	lw	a6, %lo(pict_type)(s2)
	snez	a0, a0
	addi	a0, a0, 1
	lui	a1, %hi(pict_struct)
	sw	a0, %lo(pict_struct)(a1)
	li	a0, 1
	bne	a6, a0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	li	a1, 2
	sw	a1, %lo(pict_type)(s2)
	lw	a1, 0(a0)
	lw	a2, 4(a0)
	lui	a3, %hi(forw_hor_f_code)
	sw	a1, %lo(forw_hor_f_code)(a3)
	lw	s7, 8(a0)
	lw	s6, 12(a0)
	lui	a0, %hi(forw_vert_f_code)
	sw	a2, %lo(forw_vert_f_code)(a0)
	li	a0, 15
	lui	a1, %hi(back_vert_f_code)
	sw	a0, %lo(back_vert_f_code)(a1)
	lui	a1, %hi(back_hor_f_code)
	sw	a0, %lo(back_hor_f_code)(a1)
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(oldorgframe)
	ld	a0, %lo(oldorgframe)(a0)
	lui	a1, %hi(neworgframe)
	ld	a1, %lo(neworgframe)(a1)
	lui	a2, %hi(oldrefframe)
	ld	a2, %lo(oldrefframe)(a2)
	lui	a3, %hi(newrefframe)
	ld	a3, %lo(newrefframe)(a3)
	ld	a4, 176(sp)
	ld	a5, 152(sp)
	ld	a7, %lo(mbinfo)(s11)
	addi	a6, a6, -1
	seqz	a6, a6
	sd	a6, 32(sp)
	li	a6, 1
	sd	a6, 24(sp)
	sd	a7, 16(sp)
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	sd	a6, 8(sp)
	sext.w	a6, s7
	sext.w	a7, s6
	ld	t0, 72(sp)                      # 8-byte Folded Reload
	sd	t0, 0(sp)
	call	motion_estimation
	ld	a4, %lo(mbinfo)(s11)
	li	a3, 1
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	mv	a2, s8
	call	predict
	lui	a0, %hi(predframe)
	ld	a0, %lo(predframe)(a0)
	ld	a1, 176(sp)
	ld	a2, %lo(mbinfo)(s11)
	call	dct_type_estimation
	ld	a2, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	addi	a1, sp, 176
	mv	a0, s8
	call	transform
	ld	a0, 176(sp)
	call	putpict
	lui	a0, %hi(mb_height2)
	lw	a0, %lo(mb_height2)(a0)
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	mulw	a0, a1, a0
	blez	a0, .LBB0_7
# %bb.45:                               # %.preheader7
                                        #   in Loop: Header=BB0_8 Depth=1
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	mv	s6, s7
	li	s8, 0
	li	s9, 0
	j	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=2
	lui	a0, %hi(mb_height2)
	lw	a0, %lo(mb_height2)(a0)
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	addi	s9, s9, 1
	mulw	a0, a1, a0
	addi	s8, s8, 1
	bge	s9, a0, .LBB0_6
.LBB0_47:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	ld	a0, %lo(mbinfo)(s11)
	li	a1, 96
	mul	s0, s9, a1
	add	a0, a0, s0
	lbu	a1, 0(a0)
	lw	a0, %lo(block_count)(s3)
	andi	a1, a1, 1
	bnez	a1, .LBB0_51
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=2
	blez	a0, .LBB0_46
# %bb.49:                               #   in Loop: Header=BB0_47 Depth=2
	li	s2, 0
	li	s7, 0
.LBB0_50:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, %lo(mbinfo)(s11)
	ld	a2, %lo(blocks)(s10)
	mulw	a0, s8, a0
	add	a1, a1, s0
	lw	a3, 12(a1)
	add	a0, s2, a0
	slli	a0, a0, 7
	add	a0, a2, a0
	mv	a1, a0
	mv	a2, s1
	call	iquant_non_intra
	lw	a0, %lo(block_count)(s3)
	addiw	s7, s7, 1
	addi	s2, s2, 1
	blt	s7, a0, .LBB0_50
	j	.LBB0_46
.LBB0_51:                               #   in Loop: Header=BB0_47 Depth=2
	blez	a0, .LBB0_46
# %bb.52:                               #   in Loop: Header=BB0_47 Depth=2
	li	s7, 0
	li	s2, 0
.LBB0_53:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	mulw	a0, s8, a0
	lw	a2, %lo(dc_prec)(s5)
	add	a1, a1, s0
	lw	a4, 12(a1)
	add	a0, s7, a0
	slli	a0, a0, 7
	add	a0, a3, a0
	mv	a1, a0
	mv	a3, s4
	call	iquant_intra
	lw	a0, %lo(block_count)(s3)
	addiw	s2, s2, 1
	addi	s7, s7, 1
	blt	s2, a0, .LBB0_53
	j	.LBB0_46
.LBB0_54:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(oldorgframe)
	ld	a0, %lo(oldorgframe)(a0)
	lui	a1, %hi(neworgframe)
	ld	a1, %lo(neworgframe)(a1)
	lui	a2, %hi(oldrefframe)
	ld	a2, %lo(oldrefframe)(a2)
	lui	a3, %hi(newrefframe)
	ld	a3, %lo(newrefframe)(a3)
	ld	a4, 176(sp)
	ld	a5, 152(sp)
	ld	a6, %lo(mbinfo)(s11)
	lui	a7, %hi(pict_struct)
	li	t0, 3
	sw	t0, %lo(pict_struct)(a7)
	sd	zero, 32(sp)
	sd	zero, 24(sp)
	sd	a6, 16(sp)
	lw	a6, 88(sp)                      # 8-byte Folded Reload
	sd	a6, 8(sp)
	lw	a6, 96(sp)                      # 8-byte Folded Reload
	sd	a6, 0(sp)
	mv	a6, s9
	mv	a7, s8
	call	motion_estimation
	ld	a4, %lo(mbinfo)(s11)
	lui	s2, %hi(predframe)
	addi	s8, s2, %lo(predframe)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	mv	a2, s8
	li	a3, 0
	call	predict
	ld	a0, %lo(predframe)(s2)
	ld	a1, 176(sp)
	ld	a2, %lo(mbinfo)(s11)
	call	dct_type_estimation
	ld	a2, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	addi	a1, sp, 176
	mv	a0, s8
	call	transform
	ld	a0, 176(sp)
	call	putpict
	lui	a0, %hi(mb_height)
	lw	a0, %lo(mb_height)(a0)
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	mulw	a0, a1, a0
	blez	a0, .LBB0_64
# %bb.55:                               # %.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	mv	s6, s7
	li	s8, 0
	li	s9, 0
	j	.LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_57 Depth=2
	lui	a0, %hi(mb_height)
	lw	a0, %lo(mb_height)(a0)
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	addi	s9, s9, 1
	mulw	a0, a1, a0
	addi	s8, s8, 1
	bge	s9, a0, .LBB0_6
.LBB0_57:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_60 Depth 3
	ld	a0, %lo(mbinfo)(s11)
	li	a1, 96
	mul	s0, s9, a1
	add	a0, a0, s0
	lbu	a1, 0(a0)
	lw	a0, %lo(block_count)(s3)
	andi	a1, a1, 1
	bnez	a1, .LBB0_61
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=2
	blez	a0, .LBB0_56
# %bb.59:                               #   in Loop: Header=BB0_57 Depth=2
	li	s2, 0
	li	s7, 0
.LBB0_60:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, %lo(mbinfo)(s11)
	ld	a2, %lo(blocks)(s10)
	mulw	a0, s8, a0
	add	a1, a1, s0
	lw	a3, 12(a1)
	add	a0, s2, a0
	slli	a0, a0, 7
	add	a0, a2, a0
	mv	a1, a0
	mv	a2, s1
	call	iquant_non_intra
	lw	a0, %lo(block_count)(s3)
	addiw	s7, s7, 1
	addi	s2, s2, 1
	blt	s7, a0, .LBB0_60
	j	.LBB0_56
.LBB0_61:                               #   in Loop: Header=BB0_57 Depth=2
	blez	a0, .LBB0_56
# %bb.62:                               #   in Loop: Header=BB0_57 Depth=2
	li	s7, 0
	li	s2, 0
.LBB0_63:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, %lo(mbinfo)(s11)
	ld	a3, %lo(blocks)(s10)
	mulw	a0, s8, a0
	lw	a2, %lo(dc_prec)(s5)
	add	a1, a1, s0
	lw	a4, 12(a1)
	add	a0, s7, a0
	slli	a0, a0, 7
	add	a0, a3, a0
	mv	a1, a0
	mv	a3, s4
	call	iquant_intra
	lw	a0, %lo(block_count)(s3)
	addiw	s2, s2, 1
	addi	s7, s7, 1
	blt	s2, a0, .LBB0_63
	j	.LBB0_56
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	lui	s2, %hi(pict_type)
	j	.LBB0_7
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	lui	s2, %hi(stderr)
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	s2, %hi(pict_type)
	call	fflush
	j	.LBB0_9
.LBB0_66:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(topfirst)
	lw	a0, %lo(topfirst)(a0)
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
	beqz	a0, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a2, %hi(.L.str.13)
	addi	a2, a2, %lo(.L.str.13)
.LBB0_68:                               #   in Loop: Header=BB0_8 Depth=1
	lui	s0, %hi(stderr)
	ld	a0, %lo(stderr)(s0)
	lui	a1, %hi(.L.str.12)
	addi	a1, a1, %lo(.L.str.12)
	call	fprintf
	ld	a0, %lo(stderr)(s0)
	call	fflush
	j	.LBB0_31
.LBB0_69:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a0, %hi(topfirst)
	lw	a0, %lo(topfirst)(a0)
	lui	a2, %hi(.L.str.13)
	addi	a2, a2, %lo(.L.str.13)
	beqz	a0, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
.LBB0_71:                               #   in Loop: Header=BB0_8 Depth=1
	lui	s2, %hi(stderr)
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	call	fflush
	lui	s2, %hi(pict_type)
	j	.LBB0_42
.LBB0_72:
	call	putseqend
	ld	ra, 552(sp)                     # 8-byte Folded Reload
	ld	s0, 544(sp)                     # 8-byte Folded Reload
	ld	s1, 536(sp)                     # 8-byte Folded Reload
	ld	s2, 528(sp)                     # 8-byte Folded Reload
	ld	s3, 520(sp)                     # 8-byte Folded Reload
	ld	s4, 512(sp)                     # 8-byte Folded Reload
	ld	s5, 504(sp)                     # 8-byte Folded Reload
	ld	s6, 496(sp)                     # 8-byte Folded Reload
	ld	s7, 488(sp)                     # 8-byte Folded Reload
	ld	s8, 480(sp)                     # 8-byte Folded Reload
	ld	s9, 472(sp)                     # 8-byte Folded Reload
	ld	s10, 464(sp)                    # 8-byte Folded Reload
	ld	s11, 456(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 560
	ret
.Lfunc_end0:
	.size	putseq, .Lfunc_end0-putseq
                                        # -- End function
	.option	pop
	.type	putseq.ipb,@object              # @putseq.ipb
	.section	.rodata,"a",@progbits
putseq.ipb:
	.ascii	" IPBD"
	.size	putseq.ipb, 5

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Encoding frame %d "
	.size	.L.str, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\nFrame %d (#%d in display order):\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" picture_type=%c\n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" temporal_reference=%d\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" frame_pred_frame_dct=%d\n"
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" q_scale_type=%d\n"
	.size	.L.str.5, 18

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" intra_vlc_format=%d\n"
	.size	.L.str.6, 22

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" alternate_scan=%d\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" forward search window: %d...%d / %d...%d\n"
	.size	.L.str.8, 43

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" forward vector range: %d...%d.5 / %d...%d.5\n"
	.size	.L.str.9, 46

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" backward search window: %d...%d / %d...%d\n"
	.size	.L.str.10, 44

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" backward vector range: %d...%d.5 / %d...%d.5\n"
	.size	.L.str.11, 47

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nfirst field  (%s) "
	.size	.L.str.12, 20

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"top"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"bot"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"second field (%s) "
	.size	.L.str.15, 19

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
