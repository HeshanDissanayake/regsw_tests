	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"mpeg2enc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_1:
	.quad	0x40c3560000000000              # double 9900
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
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
	li	a2, 3
	beq	a0, a2, .LBB0_1
	j	.LBB0_203
.LBB0_1:
	mv	s0, a1
	ld	s1, 8(a1)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	mv	a0, s1
	call	fopen
	bnez	a0, .LBB0_2
	j	.LBB0_204
.LBB0_2:
	mv	s5, a0
	lui	a0, %hi(id_string)
	addi	a0, a0, %lo(id_string)
	li	a1, 254
	mv	a2, s5
	call	fgets
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s1, %hi(.L.str.9)
	addi	s1, s1, %lo(.L.str.9)
	lui	a2, %hi(tplorg)
	addi	a2, a2, %lo(tplorg)
	addi	a0, sp, 8
	mv	a1, s1
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(tplref)
	addi	a2, a2, %lo(tplref)
	addi	a0, sp, 8
	mv	a1, s1
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(iqname)
	addi	a2, a2, %lo(iqname)
	addi	a0, sp, 8
	mv	a1, s1
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(niqname)
	addi	a2, a2, %lo(niqname)
	addi	a0, sp, 8
	mv	a1, s1
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(statname)
	addi	a2, a2, %lo(statname)
	addi	a0, sp, 8
	mv	a1, s1
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s6, %hi(.L.str.10)
	addi	s6, s6, %lo(.L.str.10)
	lui	a2, %hi(inputtype)
	addi	a2, a2, %lo(inputtype)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(nframes)
	addi	a2, a2, %lo(nframes)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(frame0)
	addi	a2, a2, %lo(frame0)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a1, %hi(.L.str.11)
	addi	a1, a1, %lo(.L.str.11)
	addi	a0, sp, 8
	addi	a2, sp, 276
	addi	a3, sp, 272
	addi	a4, sp, 268
	addi	a5, sp, 264
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s9, %hi(N)
	addi	a2, s9, %lo(N)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(M)
	addi	a2, a2, %lo(M)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(mpeg1)
	addi	a2, a2, %lo(mpeg1)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(fieldpic)
	addi	a2, a2, %lo(fieldpic)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(horizontal_size)
	addi	a2, a2, %lo(horizontal_size)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(vertical_size)
	addi	a2, a2, %lo(vertical_size)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(aspectratio)
	addi	a2, a2, %lo(aspectratio)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(frame_rate_code)
	addi	a2, a2, %lo(frame_rate_code)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s7, %hi(.L.str.12)
	addi	s7, s7, %lo(.L.str.12)
	lui	a2, %hi(bit_rate)
	addi	a2, a2, %lo(bit_rate)
	addi	a0, sp, 8
	mv	a1, s7
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(vbv_buffer_size)
	addi	a2, a2, %lo(vbv_buffer_size)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(low_delay)
	addi	a2, a2, %lo(low_delay)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(constrparms)
	addi	a2, a2, %lo(constrparms)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(profile)
	addi	a2, a2, %lo(profile)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(level)
	addi	a2, a2, %lo(level)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(prog_seq)
	addi	a2, a2, %lo(prog_seq)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(chroma_format)
	addi	a2, a2, %lo(chroma_format)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(video_format)
	addi	a2, a2, %lo(video_format)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(color_primaries)
	addi	a2, a2, %lo(color_primaries)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(transfer_characteristics)
	addi	a2, a2, %lo(transfer_characteristics)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(matrix_coefficients)
	addi	a2, a2, %lo(matrix_coefficients)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(display_horizontal_size)
	addi	a2, a2, %lo(display_horizontal_size)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(display_vertical_size)
	addi	a2, a2, %lo(display_vertical_size)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(dc_prec)
	addi	a2, a2, %lo(dc_prec)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(topfirst)
	addi	a2, a2, %lo(topfirst)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s1, %hi(frame_pred_dct_tab)
	addi	s1, s1, %lo(frame_pred_dct_tab)
	addi	a3, s1, 4
	addi	a4, s1, 8
	lui	s8, %hi(.L.str.13)
	addi	s8, s8, %lo(.L.str.13)
	addi	a0, sp, 8
	mv	a1, s8
	mv	a2, s1
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(conceal_tab)
	addi	a2, a2, %lo(conceal_tab)
	addi	a3, a2, 4
	addi	a4, a2, 8
	addi	a0, sp, 8
	mv	a1, s8
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s4, %hi(qscale_tab)
	addi	s4, s4, %lo(qscale_tab)
	addi	a3, s4, 4
	addi	a4, s4, 8
	addi	a0, sp, 8
	mv	a1, s8
	mv	a2, s4
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s3, %hi(intravlc_tab)
	addi	s3, s3, %lo(intravlc_tab)
	addi	a3, s3, 4
	addi	a4, s3, 8
	addi	a0, sp, 8
	mv	a1, s8
	mv	a2, s3
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	s2, %hi(altscan_tab)
	addi	s2, s2, %lo(altscan_tab)
	addi	a3, s2, 4
	addi	a4, s2, 8
	addi	a0, sp, 8
	mv	a1, s8
	mv	a2, s2
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(repeatfirst)
	addi	a2, a2, %lo(repeatfirst)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(prog_frame)
	addi	a2, a2, %lo(prog_frame)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(P)
	addi	a2, a2, %lo(P)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(r)
	addi	a2, a2, %lo(r)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(avg_act)
	addi	a2, a2, %lo(avg_act)
	addi	a0, sp, 8
	mv	a1, s7
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(Xi)
	addi	a2, a2, %lo(Xi)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(Xp)
	addi	a2, a2, %lo(Xp)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(Xb)
	addi	a2, a2, %lo(Xb)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(d0i)
	addi	a2, a2, %lo(d0i)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(d0p)
	addi	a2, a2, %lo(d0p)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	lui	a2, %hi(d0b)
	addi	a2, a2, %lo(d0b)
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	lw	a0, %lo(N)(s9)
	bgtz	a0, .LBB0_3
	j	.LBB0_205
.LBB0_3:
	lui	a1, %hi(M)
	lw	a1, %lo(M)(a1)
	bgtz	a1, .LBB0_4
	j	.LBB0_206
.LBB0_4:
	remuw	a0, a0, a1
	beqz	a0, .LBB0_5
	j	.LBB0_208
.LBB0_5:
	slli	a0, a1, 5
	call	malloc
	lui	s6, %hi(motion_data)
	sd	a0, %lo(motion_data)(s6)
	bnez	a0, .LBB0_6
	j	.LBB0_201
.LBB0_6:
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	ld	a2, %lo(motion_data)(s6)
	addi	a3, a2, 4
	addi	a4, a2, 8
	addi	a5, a2, 12
	lui	a1, %hi(.L.str.17)
	addi	a1, a1, %lo(.L.str.17)
	addi	a0, sp, 8
	call	__isoc99_sscanf
	lui	s7, %hi(M)
	lw	a0, %lo(M)(s7)
	li	a1, 2
	blt	a0, a1, .LBB0_9
# %bb.7:                                # %.preheader7
	li	s8, 1
	li	s9, 60
	lui	s10, %hi(motion_data)
	lui	s6, %hi(.L.str.17)
	addi	s6, s6, %lo(.L.str.17)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	ld	a0, %lo(motion_data)(s10)
	add	a0, a0, s9
	addi	a2, a0, -28
	addi	a3, a0, -24
	addi	a4, a0, -20
	addi	a5, a0, -16
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	addi	a0, sp, 8
	li	a1, 254
	mv	a2, s5
	call	fgets
	ld	a5, %lo(motion_data)(s10)
	add	a5, a5, s9
	addi	a2, a5, -12
	addi	a3, a5, -8
	addi	a4, a5, -4
	addi	a0, sp, 8
	mv	a1, s6
	call	__isoc99_sscanf
	lw	a0, %lo(M)(s7)
	addi	s8, s8, 1
	addi	s9, s9, 32
	blt	s8, a0, .LBB0_8
.LBB0_9:
	mv	a0, s5
	call	fclose
	lui	s5, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(s5)
	snez	a0, a0
	lui	a1, %hi(fieldpic)
	lw	a2, %lo(fieldpic)(a1)
	lui	a3, %hi(low_delay)
	lw	a4, %lo(low_delay)(a3)
	sw	a0, %lo(mpeg1)(s5)
	snez	a0, a2
	sw	a0, %lo(fieldpic)(a1)
	snez	a0, a4
	lui	s6, %hi(constrparms)
	lw	a1, %lo(constrparms)(s6)
	lui	a2, %hi(prog_seq)
	lw	a4, %lo(prog_seq)(a2)
	sw	a0, %lo(low_delay)(a3)
	snez	a0, a1
	sw	a0, %lo(constrparms)(s6)
	snez	a0, a4
	lui	a1, %hi(topfirst)
	lw	a3, %lo(topfirst)(a1)
	sw	a0, %lo(prog_seq)(a2)
	lui	a2, %hi(frame_pred_dct_tab)
	lw	a4, %lo(frame_pred_dct_tab)(a2)
	snez	a0, a3
	sw	a0, %lo(topfirst)(a1)
	addi	a0, a2, %lo(frame_pred_dct_tab)
	snez	a1, a4
	sw	a1, %lo(frame_pred_dct_tab)(a2)
	lui	a2, %hi(conceal_tab)
	lw	a3, %lo(conceal_tab)(a2)
	addi	a1, a2, %lo(conceal_tab)
	lui	a4, %hi(qscale_tab)
	lw	a5, %lo(qscale_tab)(a4)
	snez	a3, a3
	sw	a3, %lo(conceal_tab)(a2)
	addi	a2, a4, %lo(qscale_tab)
	snez	a3, a5
	lui	a5, %hi(intravlc_tab)
	lw	a6, %lo(intravlc_tab)(a5)
	sw	a3, %lo(qscale_tab)(a4)
	lui	a3, %hi(altscan_tab)
	lw	a4, %lo(altscan_tab)(a3)
	snez	a6, a6
	sw	a6, %lo(intravlc_tab)(a5)
	addi	a5, a5, %lo(intravlc_tab)
	snez	a4, a4
	lw	a6, 4(a0)
	sw	a4, %lo(altscan_tab)(a3)
	addi	a3, a3, %lo(altscan_tab)
	lw	a4, 4(a1)
	snez	a6, a6
	sw	a6, 4(a0)
	lw	a6, 4(a2)
	snez	a4, a4
	sw	a4, 4(a1)
	lw	a4, 4(a5)
	snez	a6, a6
	sw	a6, 4(a2)
	lw	a6, 4(a3)
	snez	a4, a4
	sw	a4, 4(a5)
	lw	a4, 8(a0)
	snez	a6, a6
	sw	a6, 4(a3)
	lw	a6, 8(a1)
	snez	a4, a4
	sw	a4, 8(a0)
	lw	a0, 8(a2)
	snez	a4, a6
	sw	a4, 8(a1)
	lw	a1, 8(a5)
	snez	a0, a0
	lw	a4, 8(a3)
	sw	a0, 8(a2)
	snez	a0, a1
	sw	a0, 8(a5)
	snez	a0, a4
	lui	a1, %hi(repeatfirst)
	lw	a2, %lo(repeatfirst)(a1)
	lui	a4, %hi(prog_frame)
	lw	a5, %lo(prog_frame)(a4)
	sw	a0, 8(a3)
	snez	a0, a2
	sw	a0, %lo(repeatfirst)(a1)
	snez	a0, a5
	sw	a0, %lo(prog_frame)(a4)
	call	range_checks
	lui	a0, %hi(frame_rate_code)
	lw	a0, %lo(frame_rate_code)(a0)
	addiw	a0, a0, -1
	slli	a1, a0, 3
	lui	a2, %hi(readparmfile.ratetab)
	addi	a2, a2, %lo(readparmfile.ratetab)
	add	a1, a2, a1
	fld	fa5, 0(a1)
	lui	a1, %hi(frame_rate)
	fsd	fa5, %lo(frame_rate)(a1)
	lw	a1, 276(sp)
	li	a2, 60
	lw	a3, 272(sp)
	lui	a4, %hi(.LCPI0_0)
	fld	fa4, %lo(.LCPI0_0)(a4)
	lw	a4, 268(sp)
	mul	a1, a1, a2
	add	a1, a3, a1
	mul	a1, a1, a2
	add	a1, a1, a4
	fadd.d	fa4, fa5, fa4
	lw	a2, 264(sp)
	fcvt.w.d	a3, fa4, rtz
	lw	a4, %lo(mpeg1)(s5)
	mul	a1, a1, a3
	add	a1, a1, a2
	lui	a2, %hi(tc0)
	sw	a1, %lo(tc0)(a2)
	beqz	a4, .LBB0_16
# %bb.10:
	lw	a1, %lo(constrparms)(s6)
	beqz	a1, .LBB0_18
# %bb.11:
	lui	a1, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(a1)
	li	a2, 768
	blt	a2, a1, .LBB0_14
# %bb.12:
	lui	a2, %hi(vertical_size)
	lw	a2, %lo(vertical_size)(a2)
	li	a3, 576
	blt	a3, a2, .LBB0_14
# %bb.13:
	addi	a1, a1, 15
	sraiw	a3, a1, 31
	srliw	a3, a3, 28
	add	a1, a1, a3
	sraiw	a1, a1, 4
	addi	a2, a2, 15
	sraiw	a3, a2, 31
	srliw	a3, a3, 28
	add	a2, a2, a3
	sraiw	a2, a2, 4
	mulw	a1, a2, a1
	li	a2, 396
	bge	a2, a1, .LBB0_165
.LBB0_14:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_192
.LBB0_15:
	lui	a0, %hi(constrparms)
	sw	zero, %lo(constrparms)(a0)
	j	.LBB0_17
.LBB0_16:
	call	profile_and_level_checks
.LBB0_17:
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	beqz	a0, .LBB0_55
.LBB0_18:
	lui	a0, %hi(prog_seq)
	lw	a0, %lo(prog_seq)(a0)
	beqz	a0, .LBB0_30
# %bb.19:
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 1
	bne	a0, a1, .LBB0_32
.LBB0_20:
	lui	a0, %hi(dc_prec)
	lw	a0, %lo(dc_prec)(a0)
	bnez	a0, .LBB0_34
.LBB0_21:
	lui	a0, %hi(qscale_tab)
	lw	a0, %lo(qscale_tab)(a0)
	bnez	a0, .LBB0_36
.LBB0_22:
	lw	a0, 4(s4)
	bnez	a0, .LBB0_38
.LBB0_23:
	lw	a0, 8(s4)
	bnez	a0, .LBB0_40
.LBB0_24:
	lui	a0, %hi(intravlc_tab)
	lw	a0, %lo(intravlc_tab)(a0)
	bnez	a0, .LBB0_42
.LBB0_25:
	lw	a0, 4(s3)
	bnez	a0, .LBB0_44
.LBB0_26:
	lw	a0, 8(s3)
	bnez	a0, .LBB0_46
.LBB0_27:
	lui	a0, %hi(altscan_tab)
	lw	a0, %lo(altscan_tab)(a0)
	bnez	a0, .LBB0_48
.LBB0_28:
	lw	a0, 4(s2)
	bnez	a0, .LBB0_50
.LBB0_29:
	lw	a0, 8(s2)
	bnez	a0, .LBB0_52
	j	.LBB0_54
.LBB0_30:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_196
.LBB0_31:
	lui	a0, %hi(prog_seq)
	li	a1, 1
	sw	a1, %lo(prog_seq)(a0)
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 1
	beq	a0, a1, .LBB0_20
.LBB0_32:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_193
.LBB0_33:
	lui	a0, %hi(chroma_format)
	li	a1, 1
	sw	a1, %lo(chroma_format)(a0)
	lui	a0, %hi(dc_prec)
	lw	a0, %lo(dc_prec)(a0)
	beqz	a0, .LBB0_21
.LBB0_34:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_182
.LBB0_35:
	lui	a0, %hi(dc_prec)
	sw	zero, %lo(dc_prec)(a0)
	lui	a0, %hi(qscale_tab)
	lw	a0, %lo(qscale_tab)(a0)
	beqz	a0, .LBB0_22
.LBB0_36:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_183
.LBB0_37:
	lui	a0, %hi(qscale_tab)
	sw	zero, %lo(qscale_tab)(a0)
	lw	a0, 4(s4)
	beqz	a0, .LBB0_23
.LBB0_38:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_184
# %bb.39:
	sw	zero, 4(s4)
	lw	a0, 8(s4)
	beqz	a0, .LBB0_24
.LBB0_40:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_185
.LBB0_41:
	sw	zero, 8(s4)
	lui	a0, %hi(intravlc_tab)
	lw	a0, %lo(intravlc_tab)(a0)
	beqz	a0, .LBB0_25
.LBB0_42:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_186
.LBB0_43:
	lui	a0, %hi(intravlc_tab)
	sw	zero, %lo(intravlc_tab)(a0)
	lw	a0, 4(s3)
	beqz	a0, .LBB0_26
.LBB0_44:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_187
# %bb.45:
	sw	zero, 4(s3)
	lw	a0, 8(s3)
	beqz	a0, .LBB0_27
.LBB0_46:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_188
.LBB0_47:
	sw	zero, 8(s3)
	lui	a0, %hi(altscan_tab)
	lw	a0, %lo(altscan_tab)(a0)
	beqz	a0, .LBB0_28
.LBB0_48:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_189
.LBB0_49:
	lui	a0, %hi(altscan_tab)
	sw	zero, %lo(altscan_tab)(a0)
	lw	a0, 4(s2)
	beqz	a0, .LBB0_29
.LBB0_50:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_190
# %bb.51:
	sw	zero, 4(s2)
	lw	a0, 8(s2)
	beqz	a0, .LBB0_54
.LBB0_52:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_191
.LBB0_53:
	sw	zero, 8(s2)
.LBB0_54:
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
.LBB0_55:
	bnez	a0, .LBB0_59
# %bb.56:
	lui	a0, %hi(constrparms)
	lw	a0, %lo(constrparms)(a0)
	beqz	a0, .LBB0_59
# %bb.57:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_178
.LBB0_58:
	lui	a0, %hi(constrparms)
	sw	zero, %lo(constrparms)(a0)
.LBB0_59:
	lui	a0, %hi(prog_seq)
	lw	a1, %lo(prog_seq)(a0)
	lui	a0, %hi(prog_frame)
	lw	a0, %lo(prog_frame)(a0)
	beqz	a1, .LBB0_63
# %bb.60:
	bnez	a0, .LBB0_63
# %bb.61:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_179
.LBB0_62:
	lui	a1, %hi(prog_frame)
	li	a0, 1
	sw	a0, %lo(prog_frame)(a1)
.LBB0_63:
	beqz	a0, .LBB0_67
# %bb.64:
	lui	a1, %hi(fieldpic)
	lw	a1, %lo(fieldpic)(a1)
	beqz	a1, .LBB0_67
# %bb.65:
	lui	a1, %hi(quiet)
	lw	a1, %lo(quiet)(a1)
	beqz	a1, .LBB0_180
.LBB0_66:
	lui	a1, %hi(fieldpic)
	sw	zero, %lo(fieldpic)(a1)
.LBB0_67:
	lui	a1, %hi(repeatfirst)
	lw	a1, %lo(repeatfirst)(a1)
	bnez	a0, .LBB0_72
# %bb.68:
	beqz	a1, .LBB0_72
# %bb.69:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_181
# %bb.70:
	li	a0, 0
.LBB0_71:
	li	a1, 0
	lui	a2, %hi(repeatfirst)
	sw	zero, %lo(repeatfirst)(a2)
.LBB0_72:
	beqz	a0, .LBB0_83
# %bb.73:
	lui	a0, %hi(frame_pred_dct_tab)
	lw	a0, %lo(frame_pred_dct_tab)(a0)
	beqz	a0, .LBB0_76
# %bb.74:
	lw	a0, 4(s1)
	beqz	a0, .LBB0_78
.LBB0_75:
	lw	a0, 8(s1)
	bnez	a0, .LBB0_82
	j	.LBB0_80
.LBB0_76:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_197
.LBB0_77:
	lui	a0, %hi(frame_pred_dct_tab)
	li	a1, 1
	sw	a1, %lo(frame_pred_dct_tab)(a0)
	lw	a0, 4(s1)
	bnez	a0, .LBB0_75
.LBB0_78:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_198
.LBB0_79:
	li	a0, 1
	sw	a0, 4(s1)
	lw	a0, 8(s1)
	bnez	a0, .LBB0_82
.LBB0_80:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_199
.LBB0_81:
	li	a0, 1
	sw	a0, 8(s1)
.LBB0_82:
	lui	a0, %hi(repeatfirst)
	lw	a1, %lo(repeatfirst)(a0)
.LBB0_83:
	lui	a0, %hi(prog_seq)
	lw	a0, %lo(prog_seq)(a0)
	beqz	a0, .LBB0_88
# %bb.84:
	bnez	a1, .LBB0_88
# %bb.85:
	lui	a0, %hi(topfirst)
	lw	a0, %lo(topfirst)(a0)
	beqz	a0, .LBB0_88
# %bb.86:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_177
.LBB0_87:
	lui	a0, %hi(topfirst)
	sw	zero, %lo(topfirst)(a0)
.LBB0_88:
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	blez	a0, .LBB0_114
# %bb.89:
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	lwu	a1, 0(a0)
	lw	a3, 8(a0)
	li	s1, 4
	sllw	a2, s1, a1
	bge	a3, a2, .LBB0_92
# %bb.90:
	lwu	a1, 4(a0)
	lw	a3, 12(a0)
	sllw	a2, s1, a1
	bge	a3, a2, .LBB0_94
.LBB0_91:
	lui	s5, %hi(M)
	lw	a1, %lo(M)(s5)
	li	a2, 2
	bge	a1, a2, .LBB0_96
	j	.LBB0_114
.LBB0_92:
	lui	a1, %hi(quiet)
	lw	a1, %lo(quiet)(a1)
	addiw	a2, a2, -1
	beqz	a1, .LBB0_194
.LBB0_93:
	sw	a2, 8(a0)
	lwu	a1, 4(a0)
	lw	a3, 12(a0)
	sllw	a2, s1, a1
	blt	a3, a2, .LBB0_91
.LBB0_94:
	lui	a1, %hi(quiet)
	lw	a1, %lo(quiet)(a1)
	addiw	a2, a2, -1
	beqz	a1, .LBB0_195
.LBB0_95:
	sw	a2, 12(a0)
	lui	s5, %hi(M)
	lw	a1, %lo(M)(s5)
	li	a2, 2
	blt	a1, a2, .LBB0_114
.LBB0_96:                               # %.preheader2
	li	s6, 1
	li	s7, 60
	li	s8, 4
	lui	s9, %hi(quiet)
	lui	s10, %hi(stderr)
	lui	s1, %hi(.L.str.33)
	addi	s1, s1, %lo(.L.str.33)
	lui	s11, %hi(motion_data)
	lui	s2, %hi(.L.str.32)
	addi	s2, s2, %lo(.L.str.32)
	lui	s3, %hi(.L.str.31)
	addi	s3, s3, %lo(.L.str.31)
	lui	s4, %hi(.L.str.30)
	addi	s4, s4, %lo(.L.str.30)
	j	.LBB0_99
.LBB0_97:                               #   in Loop: Header=BB0_99 Depth=1
	add	a1, a0, s7
	lwu	a2, -8(a1)
	sllw	a2, s8, a2
	addi	a2, a2, -1
	sw	a2, 0(a1)
.LBB0_98:                               #   in Loop: Header=BB0_99 Depth=1
	lw	a1, %lo(M)(s5)
	addi	s6, s6, 1
	addi	s7, s7, 32
	bge	s6, a1, .LBB0_114
.LBB0_99:                               # =>This Inner Loop Header: Depth=1
	add	a1, a0, s7
	lwu	a2, -28(a1)
	lw	a1, -20(a1)
	sllw	a2, s8, a2
	blt	a1, a2, .LBB0_102
# %bb.100:                              #   in Loop: Header=BB0_99 Depth=1
	lw	a1, %lo(quiet)(s9)
	addiw	a2, a2, -1
	beqz	a1, .LBB0_111
.LBB0_101:                              #   in Loop: Header=BB0_99 Depth=1
	add	a1, a0, s7
	sw	a2, -20(a1)
.LBB0_102:                              #   in Loop: Header=BB0_99 Depth=1
	add	a1, a0, s7
	lwu	a2, -24(a1)
	lw	a1, -16(a1)
	sllw	a2, s8, a2
	blt	a1, a2, .LBB0_105
# %bb.103:                              #   in Loop: Header=BB0_99 Depth=1
	lw	a1, %lo(quiet)(s9)
	addiw	a2, a2, -1
	beqz	a1, .LBB0_112
.LBB0_104:                              #   in Loop: Header=BB0_99 Depth=1
	add	a1, a0, s7
	sw	a2, -16(a1)
.LBB0_105:                              #   in Loop: Header=BB0_99 Depth=1
	add	a1, a0, s7
	lwu	a2, -12(a1)
	lw	a1, -4(a1)
	sllw	a2, s8, a2
	blt	a1, a2, .LBB0_108
# %bb.106:                              #   in Loop: Header=BB0_99 Depth=1
	lw	a1, %lo(quiet)(s9)
	addiw	a2, a2, -1
	beqz	a1, .LBB0_113
.LBB0_107:                              #   in Loop: Header=BB0_99 Depth=1
	add	a1, a0, s7
	sw	a2, -4(a1)
.LBB0_108:                              #   in Loop: Header=BB0_99 Depth=1
	add	a1, a0, s7
	lwu	a2, -8(a1)
	lw	a1, 0(a1)
	sllw	a2, s8, a2
	blt	a1, a2, .LBB0_98
# %bb.109:                              #   in Loop: Header=BB0_99 Depth=1
	lw	a1, %lo(quiet)(s9)
	bnez	a1, .LBB0_97
# %bb.110:                              #   in Loop: Header=BB0_99 Depth=1
	ld	a0, %lo(stderr)(s10)
	addiw	a2, a2, -1
	mv	a1, s1
	call	fprintf
	ld	a0, %lo(motion_data)(s11)
	j	.LBB0_97
.LBB0_111:                              #   in Loop: Header=BB0_99 Depth=1
	ld	a0, %lo(stderr)(s10)
	mv	a1, s4
	call	fprintf
	ld	a0, %lo(motion_data)(s11)
	add	a1, a0, s7
	lwu	a1, -28(a1)
	sllw	a2, s8, a1
	addi	a2, a2, -1
	j	.LBB0_101
.LBB0_112:                              #   in Loop: Header=BB0_99 Depth=1
	ld	a0, %lo(stderr)(s10)
	mv	a1, s3
	call	fprintf
	ld	a0, %lo(motion_data)(s11)
	add	a1, a0, s7
	lwu	a1, -24(a1)
	sllw	a2, s8, a1
	addi	a2, a2, -1
	j	.LBB0_104
.LBB0_113:                              #   in Loop: Header=BB0_99 Depth=1
	ld	a0, %lo(stderr)(s10)
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(motion_data)(s11)
	add	a1, a0, s7
	lwu	a1, -12(a1)
	sllw	a2, s8, a1
	addi	a2, a2, -1
	j	.LBB0_107
.LBB0_114:
	lui	a0, %hi(iqname)
	lbu	a0, %lo(iqname)(a0)
	li	a1, 45
	bne	a0, a1, .LBB0_117
# %bb.115:
	lui	a0, %hi(load_iquant)
	sw	zero, %lo(load_iquant)(a0)
	lui	a0, %hi(intra_q)
	addi	a0, a0, %lo(intra_q)
	lui	a1, %hi(default_intra_quantizer_matrix)
	addi	a1, a1, %lo(default_intra_quantizer_matrix)
	li	a2, 64
	call	memcpy
	lui	a0, %hi(niqname)
	lbu	a0, %lo(niqname)(a0)
	li	a1, 45
	bne	a0, a1, .LBB0_122
.LBB0_116:
	lui	a0, %hi(load_niquant)
	sw	zero, %lo(load_niquant)(a0)
	lui	a0, %hi(inter_q)
	addi	a0, a0, %lo(inter_q)
	li	a1, 16
	li	a2, 64
	call	memset
	j	.LBB0_127
.LBB0_117:
	lui	a0, %hi(load_iquant)
	li	a1, 1
	sw	a1, %lo(load_iquant)(a0)
	lui	a0, %hi(iqname)
	addi	a0, a0, %lo(iqname)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	fopen
	beqz	a0, .LBB0_210
# %bb.118:                              # %.preheader1
	mv	s1, a0
	li	s3, 64
	lui	s4, %hi(intra_q)
	addi	s4, s4, %lo(intra_q)
	lui	s2, %hi(.L.str.10)
	addi	s2, s2, %lo(.L.str.10)
	li	s5, -256
.LBB0_119:                              # =>This Inner Loop Header: Depth=1
	addi	a2, sp, 8
	mv	a0, s1
	mv	a1, s2
	call	__isoc99_fscanf
	lw	a0, 8(sp)
	addiw	a1, a0, -256
	bgeu	s5, a1, .LBB0_200
# %bb.120:                              #   in Loop: Header=BB0_119 Depth=1
	sb	a0, 0(s4)
	addi	s3, s3, -1
	addi	s4, s4, 1
	bnez	s3, .LBB0_119
# %bb.121:
	mv	a0, s1
	call	fclose
	lui	a0, %hi(niqname)
	lbu	a0, %lo(niqname)(a0)
	li	a1, 45
	beq	a0, a1, .LBB0_116
.LBB0_122:
	lui	a0, %hi(load_niquant)
	li	a1, 1
	sw	a1, %lo(load_niquant)(a0)
	lui	a0, %hi(niqname)
	addi	a0, a0, %lo(niqname)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	fopen
	beqz	a0, .LBB0_211
# %bb.123:                              # %.preheader
	mv	s1, a0
	li	s3, 64
	lui	s4, %hi(inter_q)
	addi	s4, s4, %lo(inter_q)
	lui	s2, %hi(.L.str.10)
	addi	s2, s2, %lo(.L.str.10)
	li	s5, -256
.LBB0_124:                              # =>This Inner Loop Header: Depth=1
	addi	a2, sp, 8
	mv	a0, s1
	mv	a1, s2
	call	__isoc99_fscanf
	lw	a0, 8(sp)
	addiw	a1, a0, -256
	bgeu	s5, a1, .LBB0_200
# %bb.125:                              #   in Loop: Header=BB0_124 Depth=1
	sb	a0, 0(s4)
	addi	s3, s3, -1
	addi	s4, s4, 1
	bnez	s3, .LBB0_124
# %bb.126:
	mv	a0, s1
	call	fclose
.LBB0_127:
	ld	a0, 16(s0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fopen
	lui	a1, %hi(outfile)
	sd	a0, %lo(outfile)(a1)
	beqz	a0, .LBB0_209
# %bb.128:
	call	initbits
	call	init_fdct
	call	init_idct
	lui	a0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(a0)
	addi	a0, a0, 15
	sraiw	a1, a0, 31
	srliw	a1, a1, 28
	add	a0, a0, a1
	lui	a1, %hi(prog_seq)
	lw	a2, %lo(prog_seq)(a1)
	lui	a1, %hi(vertical_size)
	lw	a1, %lo(vertical_size)(a1)
	sraiw	a0, a0, 4
	lui	a3, %hi(mb_width)
	sw	a0, %lo(mb_width)(a3)
	beqz	a2, .LBB0_130
# %bb.129:
	addi	a1, a1, 15
	sraiw	a2, a1, 31
	srliw	a2, a2, 28
	add	a1, a1, a2
	sraiw	a4, a1, 4
	j	.LBB0_131
.LBB0_130:
	addi	a1, a1, 31
	sraiw	a2, a1, 31
	srliw	a2, a2, 27
	add	a1, a1, a2
	sraiw	a4, a1, 5
	slli	a4, a4, 1
.LBB0_131:
	lui	a1, %hi(fieldpic)
	lw	a1, %lo(fieldpic)(a1)
	lui	a2, %hi(mb_height)
	sw	a4, %lo(mb_height)(a2)
	snez	a1, a1
	sraw	a2, a4, a1
	lui	a3, %hi(mb_height2)
	sw	a2, %lo(mb_height2)(a3)
	slli	a2, a0, 4
	lui	a3, %hi(width)
	sw	a2, %lo(width)(a3)
	lui	a3, %hi(chroma_format)
	lw	a3, %lo(chroma_format)(a3)
	slli	a4, a4, 4
	lui	a5, %hi(height)
	sw	a4, %lo(height)(a5)
	addi	a5, a3, -1
	li	a7, 3
	seqz	a6, a5
	mv	a5, a2
	beq	a3, a7, .LBB0_133
# %bb.132:
	slli	a5, a0, 3
.LBB0_133:
	lui	a0, %hi(chrom_width)
	sw	a5, %lo(chrom_width)(a0)
	sraw	a0, a4, a6
	lui	a6, %hi(chrom_height)
	sw	a0, %lo(chrom_height)(a6)
	sraw	a0, a4, a1
	lui	a4, %hi(height2)
	sw	a0, %lo(height2)(a4)
	sllw	a0, a2, a1
	lui	a2, %hi(width2)
	sw	a0, %lo(width2)(a2)
	sllw	a0, a5, a1
	slli	a3, a3, 2
	lui	a1, %hi(init.block_count_tab)
	addi	a1, a1, %lo(init.block_count_tab)
	add	a1, a3, a1
	lw	a1, -4(a1)
	lui	a2, %hi(chrom_width2)
	sw	a0, %lo(chrom_width2)(a2)
	lui	a0, %hi(block_count)
	sw	a1, %lo(block_count)(a0)
	li	a0, 1024
	call	malloc
	lui	a1, %hi(clp)
	sd	a0, %lo(clp)(a1)
	beqz	a0, .LBB0_201
# %bb.134:
	addi	a0, a0, 384
	sd	a0, %lo(clp)(a1)
	li	a0, -384
	li	a2, 640
	li	a3, -384
	j	.LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_136 Depth=1
	ld	a5, %lo(clp)(a1)
	sgtz	a6, a4
	negw	a6, a6
	and	a4, a6, a4
	add	a5, a5, a3
	sb	a4, 0(a5)
	addi	a3, a3, 1
	addiw	a0, a0, 1
	beq	a3, a2, .LBB0_138
.LBB0_136:                              # =>This Inner Loop Header: Depth=1
	li	a5, 255
	mv	a4, a0
	blt	a0, a5, .LBB0_135
# %bb.137:                              #   in Loop: Header=BB0_136 Depth=1
	li	a4, 255
	j	.LBB0_135
.LBB0_138:
	lui	a0, %hi(chrom_width)
	lw	s1, %lo(chrom_width)(a0)
	lui	a0, %hi(chrom_height)
	lui	a1, %hi(width)
	lw	a1, %lo(width)(a1)
	lui	a2, %hi(height)
	lw	a2, %lo(height)(a2)
	lw	s2, %lo(chrom_height)(a0)
	mulw	s0, a2, a1
	mv	a0, s0
	call	malloc
	lui	a1, %hi(newrefframe)
	sd	a0, %lo(newrefframe)(a1)
	beqz	a0, .LBB0_201
# %bb.139:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(oldrefframe)
	sd	a0, %lo(oldrefframe)(a1)
	beqz	a0, .LBB0_201
# %bb.140:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(auxframe)
	sd	a0, %lo(auxframe)(a1)
	beqz	a0, .LBB0_201
# %bb.141:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(neworgframe)
	sd	a0, %lo(neworgframe)(a1)
	beqz	a0, .LBB0_201
# %bb.142:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(oldorgframe)
	sd	a0, %lo(oldorgframe)(a1)
	beqz	a0, .LBB0_201
# %bb.143:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(auxorgframe)
	sd	a0, %lo(auxorgframe)(a1)
	beqz	a0, .LBB0_201
# %bb.144:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(predframe)
	sd	a0, %lo(predframe)(a1)
	beqz	a0, .LBB0_201
# %bb.145:
	mulw	s0, s2, s1
	mv	a0, s0
	call	malloc
	lui	s1, %hi(newrefframe)
	addi	s1, s1, %lo(newrefframe)
	sd	a0, 8(s1)
	beqz	a0, .LBB0_201
# %bb.146:
	mv	a0, s0
	call	malloc
	lui	s2, %hi(oldrefframe)
	addi	s2, s2, %lo(oldrefframe)
	sd	a0, 8(s2)
	beqz	a0, .LBB0_201
# %bb.147:
	mv	a0, s0
	call	malloc
	lui	s3, %hi(auxframe)
	addi	s3, s3, %lo(auxframe)
	sd	a0, 8(s3)
	beqz	a0, .LBB0_201
# %bb.148:
	mv	a0, s0
	call	malloc
	lui	s4, %hi(neworgframe)
	addi	s4, s4, %lo(neworgframe)
	sd	a0, 8(s4)
	beqz	a0, .LBB0_201
# %bb.149:
	mv	a0, s0
	call	malloc
	lui	s5, %hi(oldorgframe)
	addi	s5, s5, %lo(oldorgframe)
	sd	a0, 8(s5)
	beqz	a0, .LBB0_201
# %bb.150:
	mv	a0, s0
	call	malloc
	lui	s6, %hi(auxorgframe)
	addi	s6, s6, %lo(auxorgframe)
	sd	a0, 8(s6)
	beqz	a0, .LBB0_201
# %bb.151:
	mv	a0, s0
	call	malloc
	lui	s7, %hi(predframe)
	addi	s7, s7, %lo(predframe)
	sd	a0, 8(s7)
	beqz	a0, .LBB0_201
# %bb.152:
	mv	a0, s0
	call	malloc
	sd	a0, 16(s1)
	beqz	a0, .LBB0_201
# %bb.153:
	mv	a0, s0
	call	malloc
	sd	a0, 16(s2)
	beqz	a0, .LBB0_201
# %bb.154:
	mv	a0, s0
	call	malloc
	sd	a0, 16(s3)
	beqz	a0, .LBB0_201
# %bb.155:
	mv	a0, s0
	call	malloc
	sd	a0, 16(s4)
	beqz	a0, .LBB0_201
# %bb.156:
	mv	a0, s0
	call	malloc
	sd	a0, 16(s5)
	beqz	a0, .LBB0_201
# %bb.157:
	mv	a0, s0
	call	malloc
	sd	a0, 16(s6)
	beqz	a0, .LBB0_201
# %bb.158:
	mv	a0, s0
	call	malloc
	sd	a0, 16(s7)
	beqz	a0, .LBB0_201
# %bb.159:
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	lui	a1, %hi(mb_height2)
	lw	a1, %lo(mb_height2)(a1)
	mulw	s0, a1, a0
	li	a0, 96
	mul	a0, s0, a0
	call	malloc
	lui	a1, %hi(mbinfo)
	sd	a0, %lo(mbinfo)(a1)
	beqz	a0, .LBB0_201
# %bb.160:
	lui	a0, %hi(block_count)
	lw	a0, %lo(block_count)(a0)
	mulw	a0, a0, s0
	slli	a0, a0, 7
	call	malloc
	lui	a1, %hi(blocks)
	sd	a0, %lo(blocks)(a1)
	beqz	a0, .LBB0_201
# %bb.161:
	lui	a0, %hi(statname)
	lbu	a0, %lo(statname)(a0)
	li	a1, 45
	bne	a0, a1, .LBB0_163
# %bb.162:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lui	a1, %hi(statfile)
	sd	a0, %lo(statfile)(a1)
	j	.LBB0_164
.LBB0_163:
	lui	a0, %hi(statname)
	addi	a0, a0, %lo(statname)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	call	fopen
	lui	a1, %hi(statfile)
	sd	a0, %lo(statfile)(a1)
	beqz	a0, .LBB0_212
.LBB0_164:
	call	putseq
	lui	a0, %hi(outfile)
	ld	a0, %lo(outfile)(a0)
	call	fclose
	lui	a0, %hi(statfile)
	ld	a0, %lo(statfile)(a0)
	call	fclose
	li	a0, 0
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
.LBB0_165:
	addi	a0, a0, -5
	li	a2, 3
	bltu	a0, a2, .LBB0_14
# %bb.166:
	lui	a0, %hi(.LCPI0_1)
	fld	fa4, %lo(.LCPI0_1)(a0)
	fcvt.d.w	fa3, a1
	fmul.d	fa5, fa5, fa3
	flt.d	a0, fa4, fa5
	bnez	a0, .LBB0_14
# %bb.167:
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	blez	a0, .LBB0_17
# %bb.168:
	lui	a1, %hi(motion_data)
	ld	a1, %lo(motion_data)(a1)
	lw	a3, 0(a1)
	li	a2, 4
	blt	a2, a3, .LBB0_14
# %bb.169:
	lw	a3, 4(a1)
	blt	a2, a3, .LBB0_14
# %bb.170:
	li	a2, 1
	beq	a0, a2, .LBB0_17
# %bb.171:                              # %.preheader3
	addi	a0, a0, -1
	addi	a1, a1, 52
	li	a2, 5
.LBB0_172:                              # =>This Inner Loop Header: Depth=1
	lw	a3, -20(a1)
	bge	a3, a2, .LBB0_14
# %bb.173:                              #   in Loop: Header=BB0_172 Depth=1
	lw	a3, -16(a1)
	bge	a3, a2, .LBB0_14
# %bb.174:                              #   in Loop: Header=BB0_172 Depth=1
	lw	a3, -4(a1)
	bge	a3, a2, .LBB0_14
# %bb.175:                              #   in Loop: Header=BB0_172 Depth=1
	lw	a3, 0(a1)
	bge	a3, a2, .LBB0_14
# %bb.176:                              #   in Loop: Header=BB0_172 Depth=1
	addi	a0, a0, -1
	addi	a1, a1, 32
	bnez	a0, .LBB0_172
	j	.LBB0_17
.LBB0_177:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	li	a1, 37
	li	a2, 1
	call	fwrite
	j	.LBB0_87
.LBB0_178:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	li	a1, 49
	li	a2, 1
	call	fwrite
	j	.LBB0_58
.LBB0_179:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	li	a1, 39
	li	a2, 1
	call	fwrite
	j	.LBB0_62
.LBB0_180:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	li	a1, 36
	li	a2, 1
	call	fwrite
	lui	a0, %hi(prog_frame)
	lw	a0, %lo(prog_frame)(a0)
	j	.LBB0_66
.LBB0_181:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	li	a1, 40
	li	a2, 1
	call	fwrite
	lui	a0, %hi(prog_frame)
	lw	a0, %lo(prog_frame)(a0)
	j	.LBB0_71
.LBB0_182:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	li	a1, 40
	li	a2, 1
	call	fwrite
	j	.LBB0_35
.LBB0_183:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	li	a2, 0
	call	fprintf
	j	.LBB0_37
.LBB0_184:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	li	a2, 1
	call	fprintf
	sw	zero, 4(s4)
	lw	a0, 8(s4)
	bnez	a0, .LBB0_40
	j	.LBB0_24
.LBB0_185:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	li	a2, 2
	call	fprintf
	j	.LBB0_41
.LBB0_186:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	li	a2, 0
	call	fprintf
	j	.LBB0_43
.LBB0_187:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	li	a2, 1
	call	fprintf
	sw	zero, 4(s3)
	lw	a0, 8(s3)
	bnez	a0, .LBB0_46
	j	.LBB0_27
.LBB0_188:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	li	a2, 2
	call	fprintf
	j	.LBB0_47
.LBB0_189:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	li	a2, 0
	call	fprintf
	j	.LBB0_49
.LBB0_190:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	li	a2, 1
	call	fprintf
	sw	zero, 4(s2)
	lw	a0, 8(s2)
	bnez	a0, .LBB0_52
	j	.LBB0_54
.LBB0_191:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	li	a2, 2
	call	fprintf
	j	.LBB0_53
.LBB0_192:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	li	a1, 49
	li	a2, 1
	call	fwrite
	j	.LBB0_15
.LBB0_193:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	li	a1, 43
	li	a2, 1
	call	fwrite
	j	.LBB0_33
.LBB0_194:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.30)
	addi	a1, a1, %lo(.L.str.30)
	call	fprintf
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	lwu	a1, 0(a0)
	li	a2, 4
	sllw	a2, a2, a1
	addi	a2, a2, -1
	j	.LBB0_93
.LBB0_195:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.31)
	addi	a1, a1, %lo(.L.str.31)
	call	fprintf
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	lwu	a1, 4(a0)
	li	a2, 4
	sllw	a2, a2, a1
	addi	a2, a2, -1
	j	.LBB0_95
.LBB0_196:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	li	a1, 42
	li	a2, 1
	call	fwrite
	j	.LBB0_31
.LBB0_197:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.28)
	addi	a1, a1, %lo(.L.str.28)
	li	a2, 0
	call	fprintf
	j	.LBB0_77
.LBB0_198:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.28)
	addi	a1, a1, %lo(.L.str.28)
	li	a2, 1
	call	fprintf
	j	.LBB0_79
.LBB0_199:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.28)
	addi	a1, a1, %lo(.L.str.28)
	li	a2, 2
	call	fprintf
	j	.LBB0_81
.LBB0_200:
	lui	s0, %hi(stderr)
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.35)
	addi	a0, a0, %lo(.L.str.35)
	li	a1, 29
	j	.LBB0_202
.LBB0_201:
	lui	s0, %hi(stderr)
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, 14
.LBB0_202:
	li	a2, 1
	call	fwrite
	ld	a1, %lo(stderr)(s0)
	li	a0, 10
	call	putc
	li	a0, 1
	call	exit
.LBB0_203:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(version)
	addi	a1, a1, %lo(version)
	lui	a2, %hi(author)
	addi	a2, a2, %lo(author)
	call	printf
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, 0
	call	exit
.LBB0_204:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	mv	a0, s0
	mv	a2, s1
	j	.LBB0_214
.LBB0_205:
	lui	s0, %hi(stderr)
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	j	.LBB0_207
.LBB0_206:
	lui	s0, %hi(stderr)
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
.LBB0_207:
	li	a1, 18
	j	.LBB0_202
.LBB0_208:
	lui	s0, %hi(stderr)
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	li	a1, 34
	j	.LBB0_202
.LBB0_209:
	ld	a2, 16(s0)
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	j	.LBB0_213
.LBB0_210:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.34)
	addi	a1, a1, %lo(.L.str.34)
	lui	a2, %hi(iqname)
	addi	a2, a2, %lo(iqname)
	j	.LBB0_213
.LBB0_211:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.34)
	addi	a1, a1, %lo(.L.str.34)
	lui	a2, %hi(niqname)
	addi	a2, a2, %lo(niqname)
	j	.LBB0_213
.LBB0_212:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(statname)
	addi	a2, a2, %lo(statname)
.LBB0_213:
	mv	a0, s0
.LBB0_214:
	call	sprintf
	lui	s1, %hi(stderr)
	ld	a0, %lo(stderr)(s1)
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(stderr)(s1)
	li	a0, 10
	call	putc
	li	a0, 1
	call	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	error                           # -- Begin function error
	.p2align	2
	.type	error,@function
error:                                  # @error
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(stderr)
	ld	a1, %lo(stderr)(s0)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	fprintf
	ld	a1, %lo(stderr)(s0)
	li	a0, 10
	call	putc
	li	a0, 1
	call	exit
.Lfunc_end1:
	.size	error, .Lfunc_end1-error
                                        # -- End function
	.option	pop
	.type	version,@object                 # @version
	.data
	.globl	version
version:
	.asciz	"mpeg2encode V1.2, 96/07/19"
	.size	version, 27

	.type	author,@object                  # @author
	.globl	author
author:
	.asciz	"(C) 1996, MPEG Software Simulation Group"
	.size	author, 41

	.type	zig_zag_scan,@object            # @zig_zag_scan
	.globl	zig_zag_scan
zig_zag_scan:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>?"
	.size	zig_zag_scan, 64

	.type	alternate_scan,@object          # @alternate_scan
	.globl	alternate_scan
alternate_scan:
	.ascii	"\000\b\020\030\001\t\002\n\021\031 (0891)!\032\022\003\013\004\f\023\033\"*2:#+3;\024\034\005\r\006\016\025\035$,4<%-5=\026\036\007\017\027\037&.6>'/7?"
	.size	alternate_scan, 64

	.type	default_intra_quantizer_matrix,@object # @default_intra_quantizer_matrix
	.globl	default_intra_quantizer_matrix
default_intra_quantizer_matrix:
	.ascii	"\b\020\023\026\032\033\035\"\020\020\026\030\033\035\"%\023\026\032\033\035\"\"&\026\026\032\033\035\"%(\026\032\033\035 #(0\032\033\035 #(0:\032\033\035\"&.8E\033\035#&.8ES"
	.size	default_intra_quantizer_matrix, 64

	.type	non_linear_mquant_table,@object # @non_linear_mquant_table
	.globl	non_linear_mquant_table
non_linear_mquant_table:
	.ascii	"\000\001\002\003\004\005\006\007\b\n\f\016\020\022\024\026\030\034 $(,048@HPX`hp"
	.size	non_linear_mquant_table, 32

	.type	map_non_linear_mquant,@object   # @map_non_linear_mquant
	.globl	map_non_linear_mquant
map_non_linear_mquant:
	.ascii	"\000\001\002\003\004\005\006\007\b\b\t\t\n\n\013\013\f\f\r\r\016\016\017\017\020\020\020\021\021\021\022\022\022\022\023\023\023\023\024\024\024\024\025\025\025\025\026\026\026\026\027\027\027\027\030\030\030\030\030\030\030\031\031\031\031\031\031\031\032\032\032\032\032\032\032\032\033\033\033\033\033\033\033\033\034\034\034\034\034\034\034\035\035\035\035\035\035\035\035\035\035\036\036\036\036\036\036\036\037\037\037\037\037"
	.size	map_non_linear_mquant, 113

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n%s, %s\n"
	.size	.L.str, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"wb"
	.size	.L.str.2, 3

	.type	outfile,@object                 # @outfile
	.section	.sbss,"aw",@nobits
	.globl	outfile
	.p2align	3, 0x0
outfile:
	.quad	0
	.size	outfile, 8

	.type	errortext,@object               # @errortext
	.bss
	.globl	errortext
errortext:
	.zero	256
	.size	errortext, 256

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Couldn't create output file %s"
	.size	.L.str.3, 31

	.type	statfile,@object                # @statfile
	.section	.sbss,"aw",@nobits
	.globl	statfile
	.p2align	3, 0x0
statfile:
	.quad	0
	.size	statfile, 8

	.type	newrefframe,@object             # @newrefframe
	.bss
	.globl	newrefframe
	.p2align	3, 0x0
newrefframe:
	.zero	24
	.size	newrefframe, 24

	.type	oldrefframe,@object             # @oldrefframe
	.globl	oldrefframe
	.p2align	3, 0x0
oldrefframe:
	.zero	24
	.size	oldrefframe, 24

	.type	auxframe,@object                # @auxframe
	.globl	auxframe
	.p2align	3, 0x0
auxframe:
	.zero	24
	.size	auxframe, 24

	.type	neworgframe,@object             # @neworgframe
	.globl	neworgframe
	.p2align	3, 0x0
neworgframe:
	.zero	24
	.size	neworgframe, 24

	.type	oldorgframe,@object             # @oldorgframe
	.globl	oldorgframe
	.p2align	3, 0x0
oldorgframe:
	.zero	24
	.size	oldorgframe, 24

	.type	auxorgframe,@object             # @auxorgframe
	.globl	auxorgframe
	.p2align	3, 0x0
auxorgframe:
	.zero	24
	.size	auxorgframe, 24

	.type	predframe,@object               # @predframe
	.globl	predframe
	.p2align	3, 0x0
predframe:
	.zero	24
	.size	predframe, 24

	.type	blocks,@object                  # @blocks
	.section	.sbss,"aw",@nobits
	.globl	blocks
	.p2align	3, 0x0
blocks:
	.quad	0
	.size	blocks, 8

	.type	intra_q,@object                 # @intra_q
	.bss
	.globl	intra_q
intra_q:
	.zero	64
	.size	intra_q, 64

	.type	inter_q,@object                 # @inter_q
	.globl	inter_q
inter_q:
	.zero	64
	.size	inter_q, 64

	.type	chrom_intra_q,@object           # @chrom_intra_q
	.globl	chrom_intra_q
chrom_intra_q:
	.zero	64
	.size	chrom_intra_q, 64

	.type	chrom_inter_q,@object           # @chrom_inter_q
	.globl	chrom_inter_q
chrom_inter_q:
	.zero	64
	.size	chrom_inter_q, 64

	.type	dc_dct_pred,@object             # @dc_dct_pred
	.globl	dc_dct_pred
	.p2align	2, 0x0
dc_dct_pred:
	.zero	12
	.size	dc_dct_pred, 12

	.type	mbinfo,@object                  # @mbinfo
	.section	.sbss,"aw",@nobits
	.globl	mbinfo
	.p2align	3, 0x0
mbinfo:
	.quad	0
	.size	mbinfo, 8

	.type	motion_data,@object             # @motion_data
	.globl	motion_data
	.p2align	3, 0x0
motion_data:
	.quad	0
	.size	motion_data, 8

	.type	clp,@object                     # @clp
	.globl	clp
	.p2align	3, 0x0
clp:
	.quad	0
	.size	clp, 8

	.type	id_string,@object               # @id_string
	.bss
	.globl	id_string
id_string:
	.zero	256
	.size	id_string, 256

	.type	tplorg,@object                  # @tplorg
	.globl	tplorg
tplorg:
	.zero	256
	.size	tplorg, 256

	.type	tplref,@object                  # @tplref
	.globl	tplref
tplref:
	.zero	256
	.size	tplref, 256

	.type	iqname,@object                  # @iqname
	.globl	iqname
iqname:
	.zero	256
	.size	iqname, 256

	.type	niqname,@object                 # @niqname
	.globl	niqname
niqname:
	.zero	256
	.size	niqname, 256

	.type	statname,@object                # @statname
	.globl	statname
statname:
	.zero	256
	.size	statname, 256

	.type	inputtype,@object               # @inputtype
	.section	.sbss,"aw",@nobits
	.globl	inputtype
	.p2align	2, 0x0
inputtype:
	.word	0                               # 0x0
	.size	inputtype, 4

	.type	quiet,@object                   # @quiet
	.globl	quiet
	.p2align	2, 0x0
quiet:
	.word	0                               # 0x0
	.size	quiet, 4

	.type	N,@object                       # @N
	.globl	N
	.p2align	2, 0x0
N:
	.word	0                               # 0x0
	.size	N, 4

	.type	M,@object                       # @M
	.globl	M
	.p2align	2, 0x0
M:
	.word	0                               # 0x0
	.size	M, 4

	.type	P,@object                       # @P
	.globl	P
	.p2align	2, 0x0
P:
	.word	0                               # 0x0
	.size	P, 4

	.type	nframes,@object                 # @nframes
	.globl	nframes
	.p2align	2, 0x0
nframes:
	.word	0                               # 0x0
	.size	nframes, 4

	.type	frame0,@object                  # @frame0
	.globl	frame0
	.p2align	2, 0x0
frame0:
	.word	0                               # 0x0
	.size	frame0, 4

	.type	tc0,@object                     # @tc0
	.globl	tc0
	.p2align	2, 0x0
tc0:
	.word	0                               # 0x0
	.size	tc0, 4

	.type	mpeg1,@object                   # @mpeg1
	.globl	mpeg1
	.p2align	2, 0x0
mpeg1:
	.word	0                               # 0x0
	.size	mpeg1, 4

	.type	fieldpic,@object                # @fieldpic
	.globl	fieldpic
	.p2align	2, 0x0
fieldpic:
	.word	0                               # 0x0
	.size	fieldpic, 4

	.type	horizontal_size,@object         # @horizontal_size
	.globl	horizontal_size
	.p2align	2, 0x0
horizontal_size:
	.word	0                               # 0x0
	.size	horizontal_size, 4

	.type	vertical_size,@object           # @vertical_size
	.globl	vertical_size
	.p2align	2, 0x0
vertical_size:
	.word	0                               # 0x0
	.size	vertical_size, 4

	.type	width,@object                   # @width
	.globl	width
	.p2align	2, 0x0
width:
	.word	0                               # 0x0
	.size	width, 4

	.type	height,@object                  # @height
	.globl	height
	.p2align	2, 0x0
height:
	.word	0                               # 0x0
	.size	height, 4

	.type	chrom_width,@object             # @chrom_width
	.globl	chrom_width
	.p2align	2, 0x0
chrom_width:
	.word	0                               # 0x0
	.size	chrom_width, 4

	.type	chrom_height,@object            # @chrom_height
	.globl	chrom_height
	.p2align	2, 0x0
chrom_height:
	.word	0                               # 0x0
	.size	chrom_height, 4

	.type	block_count,@object             # @block_count
	.globl	block_count
	.p2align	2, 0x0
block_count:
	.word	0                               # 0x0
	.size	block_count, 4

	.type	mb_width,@object                # @mb_width
	.globl	mb_width
	.p2align	2, 0x0
mb_width:
	.word	0                               # 0x0
	.size	mb_width, 4

	.type	mb_height,@object               # @mb_height
	.globl	mb_height
	.p2align	2, 0x0
mb_height:
	.word	0                               # 0x0
	.size	mb_height, 4

	.type	width2,@object                  # @width2
	.globl	width2
	.p2align	2, 0x0
width2:
	.word	0                               # 0x0
	.size	width2, 4

	.type	height2,@object                 # @height2
	.globl	height2
	.p2align	2, 0x0
height2:
	.word	0                               # 0x0
	.size	height2, 4

	.type	mb_height2,@object              # @mb_height2
	.globl	mb_height2
	.p2align	2, 0x0
mb_height2:
	.word	0                               # 0x0
	.size	mb_height2, 4

	.type	chrom_width2,@object            # @chrom_width2
	.globl	chrom_width2
	.p2align	2, 0x0
chrom_width2:
	.word	0                               # 0x0
	.size	chrom_width2, 4

	.type	aspectratio,@object             # @aspectratio
	.globl	aspectratio
	.p2align	2, 0x0
aspectratio:
	.word	0                               # 0x0
	.size	aspectratio, 4

	.type	frame_rate_code,@object         # @frame_rate_code
	.globl	frame_rate_code
	.p2align	2, 0x0
frame_rate_code:
	.word	0                               # 0x0
	.size	frame_rate_code, 4

	.type	frame_rate,@object              # @frame_rate
	.globl	frame_rate
	.p2align	3, 0x0
frame_rate:
	.quad	0x0000000000000000              # double 0
	.size	frame_rate, 8

	.type	bit_rate,@object                # @bit_rate
	.globl	bit_rate
	.p2align	3, 0x0
bit_rate:
	.quad	0x0000000000000000              # double 0
	.size	bit_rate, 8

	.type	vbv_buffer_size,@object         # @vbv_buffer_size
	.globl	vbv_buffer_size
	.p2align	2, 0x0
vbv_buffer_size:
	.word	0                               # 0x0
	.size	vbv_buffer_size, 4

	.type	constrparms,@object             # @constrparms
	.globl	constrparms
	.p2align	2, 0x0
constrparms:
	.word	0                               # 0x0
	.size	constrparms, 4

	.type	load_iquant,@object             # @load_iquant
	.globl	load_iquant
	.p2align	2, 0x0
load_iquant:
	.word	0                               # 0x0
	.size	load_iquant, 4

	.type	load_niquant,@object            # @load_niquant
	.globl	load_niquant
	.p2align	2, 0x0
load_niquant:
	.word	0                               # 0x0
	.size	load_niquant, 4

	.type	load_ciquant,@object            # @load_ciquant
	.globl	load_ciquant
	.p2align	2, 0x0
load_ciquant:
	.word	0                               # 0x0
	.size	load_ciquant, 4

	.type	load_cniquant,@object           # @load_cniquant
	.globl	load_cniquant
	.p2align	2, 0x0
load_cniquant:
	.word	0                               # 0x0
	.size	load_cniquant, 4

	.type	profile,@object                 # @profile
	.globl	profile
	.p2align	2, 0x0
profile:
	.word	0                               # 0x0
	.size	profile, 4

	.type	level,@object                   # @level
	.globl	level
	.p2align	2, 0x0
level:
	.word	0                               # 0x0
	.size	level, 4

	.type	prog_seq,@object                # @prog_seq
	.globl	prog_seq
	.p2align	2, 0x0
prog_seq:
	.word	0                               # 0x0
	.size	prog_seq, 4

	.type	chroma_format,@object           # @chroma_format
	.globl	chroma_format
	.p2align	2, 0x0
chroma_format:
	.word	0                               # 0x0
	.size	chroma_format, 4

	.type	low_delay,@object               # @low_delay
	.globl	low_delay
	.p2align	2, 0x0
low_delay:
	.word	0                               # 0x0
	.size	low_delay, 4

	.type	video_format,@object            # @video_format
	.globl	video_format
	.p2align	2, 0x0
video_format:
	.word	0                               # 0x0
	.size	video_format, 4

	.type	color_primaries,@object         # @color_primaries
	.globl	color_primaries
	.p2align	2, 0x0
color_primaries:
	.word	0                               # 0x0
	.size	color_primaries, 4

	.type	transfer_characteristics,@object # @transfer_characteristics
	.globl	transfer_characteristics
	.p2align	2, 0x0
transfer_characteristics:
	.word	0                               # 0x0
	.size	transfer_characteristics, 4

	.type	matrix_coefficients,@object     # @matrix_coefficients
	.globl	matrix_coefficients
	.p2align	2, 0x0
matrix_coefficients:
	.word	0                               # 0x0
	.size	matrix_coefficients, 4

	.type	display_horizontal_size,@object # @display_horizontal_size
	.globl	display_horizontal_size
	.p2align	2, 0x0
display_horizontal_size:
	.word	0                               # 0x0
	.size	display_horizontal_size, 4

	.type	display_vertical_size,@object   # @display_vertical_size
	.globl	display_vertical_size
	.p2align	2, 0x0
display_vertical_size:
	.word	0                               # 0x0
	.size	display_vertical_size, 4

	.type	temp_ref,@object                # @temp_ref
	.globl	temp_ref
	.p2align	2, 0x0
temp_ref:
	.word	0                               # 0x0
	.size	temp_ref, 4

	.type	pict_type,@object               # @pict_type
	.globl	pict_type
	.p2align	2, 0x0
pict_type:
	.word	0                               # 0x0
	.size	pict_type, 4

	.type	vbv_delay,@object               # @vbv_delay
	.globl	vbv_delay
	.p2align	2, 0x0
vbv_delay:
	.word	0                               # 0x0
	.size	vbv_delay, 4

	.type	forw_hor_f_code,@object         # @forw_hor_f_code
	.globl	forw_hor_f_code
	.p2align	2, 0x0
forw_hor_f_code:
	.word	0                               # 0x0
	.size	forw_hor_f_code, 4

	.type	forw_vert_f_code,@object        # @forw_vert_f_code
	.globl	forw_vert_f_code
	.p2align	2, 0x0
forw_vert_f_code:
	.word	0                               # 0x0
	.size	forw_vert_f_code, 4

	.type	back_hor_f_code,@object         # @back_hor_f_code
	.globl	back_hor_f_code
	.p2align	2, 0x0
back_hor_f_code:
	.word	0                               # 0x0
	.size	back_hor_f_code, 4

	.type	back_vert_f_code,@object        # @back_vert_f_code
	.globl	back_vert_f_code
	.p2align	2, 0x0
back_vert_f_code:
	.word	0                               # 0x0
	.size	back_vert_f_code, 4

	.type	dc_prec,@object                 # @dc_prec
	.globl	dc_prec
	.p2align	2, 0x0
dc_prec:
	.word	0                               # 0x0
	.size	dc_prec, 4

	.type	pict_struct,@object             # @pict_struct
	.globl	pict_struct
	.p2align	2, 0x0
pict_struct:
	.word	0                               # 0x0
	.size	pict_struct, 4

	.type	topfirst,@object                # @topfirst
	.globl	topfirst
	.p2align	2, 0x0
topfirst:
	.word	0                               # 0x0
	.size	topfirst, 4

	.type	frame_pred_dct_tab,@object      # @frame_pred_dct_tab
	.bss
	.globl	frame_pred_dct_tab
	.p2align	2, 0x0
frame_pred_dct_tab:
	.zero	12
	.size	frame_pred_dct_tab, 12

	.type	frame_pred_dct,@object          # @frame_pred_dct
	.section	.sbss,"aw",@nobits
	.globl	frame_pred_dct
	.p2align	2, 0x0
frame_pred_dct:
	.word	0                               # 0x0
	.size	frame_pred_dct, 4

	.type	conceal_tab,@object             # @conceal_tab
	.bss
	.globl	conceal_tab
	.p2align	2, 0x0
conceal_tab:
	.zero	12
	.size	conceal_tab, 12

	.type	qscale_tab,@object              # @qscale_tab
	.globl	qscale_tab
	.p2align	2, 0x0
qscale_tab:
	.zero	12
	.size	qscale_tab, 12

	.type	q_scale_type,@object            # @q_scale_type
	.section	.sbss,"aw",@nobits
	.globl	q_scale_type
	.p2align	2, 0x0
q_scale_type:
	.word	0                               # 0x0
	.size	q_scale_type, 4

	.type	intravlc_tab,@object            # @intravlc_tab
	.bss
	.globl	intravlc_tab
	.p2align	2, 0x0
intravlc_tab:
	.zero	12
	.size	intravlc_tab, 12

	.type	intravlc,@object                # @intravlc
	.section	.sbss,"aw",@nobits
	.globl	intravlc
	.p2align	2, 0x0
intravlc:
	.word	0                               # 0x0
	.size	intravlc, 4

	.type	altscan_tab,@object             # @altscan_tab
	.bss
	.globl	altscan_tab
	.p2align	2, 0x0
altscan_tab:
	.zero	12
	.size	altscan_tab, 12

	.type	altscan,@object                 # @altscan
	.section	.sbss,"aw",@nobits
	.globl	altscan
	.p2align	2, 0x0
altscan:
	.word	0                               # 0x0
	.size	altscan, 4

	.type	repeatfirst,@object             # @repeatfirst
	.globl	repeatfirst
	.p2align	2, 0x0
repeatfirst:
	.word	0                               # 0x0
	.size	repeatfirst, 4

	.type	prog_frame,@object              # @prog_frame
	.globl	prog_frame
	.p2align	2, 0x0
prog_frame:
	.word	0                               # 0x0
	.size	prog_frame, 4

	.type	init.block_count_tab,@object    # @init.block_count_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
init.block_count_tab:
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	12                              # 0xc
	.size	init.block_count_tab, 12

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"malloc failed\n"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Couldn't create statistics output file %s"
	.size	.L.str.6, 42

	.type	readparmfile.ratetab,@object    # @readparmfile.ratetab
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
readparmfile.ratetab:
	.quad	0x4037f9dcb5112287              # double 23.976023976023978
	.quad	0x4038000000000000              # double 24
	.quad	0x4039000000000000              # double 25
	.quad	0x403df853e2556b28              # double 29.970029970029969
	.quad	0x403e000000000000              # double 30
	.quad	0x4049000000000000              # double 50
	.quad	0x404df853e2556b28              # double 59.940059940059939
	.quad	0x404e000000000000              # double 60
	.size	readparmfile.ratetab, 64

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"r"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Couldn't open parameter file %s"
	.size	.L.str.8, 32

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%d"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%d:%d:%d:%d"
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%lf"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%d %d %d"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"N must be positive"
	.size	.L.str.14, 19

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"M must be positive"
	.size	.L.str.15, 19

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"N must be an integer multiple of M"
	.size	.L.str.16, 35

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%d %d %d %d"
	.size	.L.str.17, 12

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Warning: setting constrained_parameters_flag = 0\n"
	.size	.L.str.18, 50

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Warning: setting progressive_sequence = 1\n"
	.size	.L.str.19, 43

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Warning: setting chroma_format = 1 (4:2:0)\n"
	.size	.L.str.20, 44

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Warning: setting intra_dc_precision = 0\n"
	.size	.L.str.21, 41

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Warning: setting qscale_tab[%d] = 0\n"
	.size	.L.str.22, 37

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Warning: setting intravlc_tab[%d] = 0\n"
	.size	.L.str.23, 39

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Warning: setting altscan_tab[%d] = 0\n"
	.size	.L.str.24, 38

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Warning: setting progressive_frame = 1\n"
	.size	.L.str.25, 40

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Warning: setting field_pictures = 0\n"
	.size	.L.str.26, 37

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Warning: setting repeat_first_field = 0\n"
	.size	.L.str.27, 41

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Warning: setting frame_pred_frame_dct[%d] = 1\n"
	.size	.L.str.28, 47

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Warning: setting top_field_first = 0\n"
	.size	.L.str.29, 38

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Warning: reducing forward horizontal search width to %d\n"
	.size	.L.str.30, 57

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Warning: reducing forward vertical search width to %d\n"
	.size	.L.str.31, 55

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Warning: reducing backward horizontal search width to %d\n"
	.size	.L.str.32, 58

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Warning: reducing backward vertical search width to %d\n"
	.size	.L.str.33, 56

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Couldn't open quant matrix file %s"
	.size	.L.str.34, 35

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"invalid value in quant matrix"
	.size	.L.str.35, 30

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Usage: mpeg2encode in.par out.m2v"
	.size	.Lstr, 34

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
