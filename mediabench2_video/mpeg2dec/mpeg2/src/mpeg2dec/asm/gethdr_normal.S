	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"gethdr.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Hdr                         # -- Begin function Get_Hdr
	.p2align	2
	.type	Get_Hdr,@function
Get_Hdr:                                # @Get_Hdr
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
	lui	s2, %hi(ld)
	li	s3, 1
	li	s4, 438
	li	s5, 435
	li	s1, 16
	lui	s8, %hi(scan)
	addi	s8, s8, %lo(scan)
	addi	s7, s8, 64
	li	s9, 440
	lui	s10, %hi(frame)
	lui	s11, %hi(closed_gop)
	lui	s0, %hi(broken_link)
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(drop_flag)
	sw	a0, %lo(drop_flag)(a1)
	li	a0, 5
	call	Get_Bits
	lui	a1, %hi(hour)
	sw	a0, %lo(hour)(a1)
	li	a0, 6
	call	Get_Bits
	lui	a1, %hi(minute)
	sw	a0, %lo(minute)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 6
	call	Get_Bits
	lui	a1, %hi(sec)
	sw	a0, %lo(sec)(a1)
	li	a0, 6
	call	Get_Bits
	sw	a0, %lo(frame)(s10)
	li	a0, 1
	call	Get_Bits
	sw	a0, %lo(closed_gop)(s11)
	li	a0, 1
	call	Get_Bits
	sw	a0, %lo(broken_link)(s0)
	call	extension_and_user_data
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	ld	a0, %lo(ld)(s2)
	addi	a0, a0, 2047
	lwu	a0, 49(a0)
	andi	a0, a0, 7
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	beq	a0, s3, .LBB0_4
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 8
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	bne	a0, s3, .LBB0_3
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	call	Get_Bits32
	mv	a2, a0
	blt	s4, a0, .LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	bne	a2, s5, .LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	li	a0, 12
	call	Get_Bits
	lui	a1, %hi(horizontal_size)
	sw	a0, %lo(horizontal_size)(a1)
	li	a0, 12
	call	Get_Bits
	lui	a1, %hi(vertical_size)
	sw	a0, %lo(vertical_size)(a1)
	li	a0, 4
	call	Get_Bits
	lui	a1, %hi(aspect_ratio_information)
	sw	a0, %lo(aspect_ratio_information)(a1)
	li	a0, 4
	call	Get_Bits
	lui	a1, %hi(frame_rate_code)
	sw	a0, %lo(frame_rate_code)(a1)
	li	a0, 18
	call	Get_Bits
	lui	a1, %hi(bit_rate_value)
	sw	a0, %lo(bit_rate_value)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 10
	call	Get_Bits
	lui	a1, %hi(vbv_buffer_size)
	sw	a0, %lo(vbv_buffer_size)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(constrained_parameters_flag)
	sw	a0, %lo(constrained_parameters_flag)(a1)
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s2)
	addi	a2, a1, 2047
	addi	a1, a2, 57
	sw	a0, 1024(a1)
	beqz	a0, .LBB0_16
# %bb.7:                                # %.preheader4
                                        #   in Loop: Header=BB0_2 Depth=1
	mv	s6, s8
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 8
	call	Get_Bits
	lbu	a1, 0(s6)
	ld	a2, %lo(ld)(s2)
	slli	a1, a1, 2
	add	a1, a2, a1
	addi	a1, a1, 2047
	addi	s6, s6, 1
	sw	a0, 57(a1)
	bne	s6, s7, .LBB0_8
	j	.LBB0_18
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	bne	a2, s9, .LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	ld	a0, %lo(ld)(s2)
	lui	a1, %hi(base)
	addi	a1, a1, %lo(base)
	bne	a0, a1, .LBB0_1
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	lui	a0, %hi(True_Framenum_max)
	lw	a0, %lo(True_Framenum_max)(a0)
	addi	a0, a0, 1
	lui	a1, %hi(Temporal_Reference_Base)
	sw	a0, %lo(Temporal_Reference_Base)(a1)
	lui	a0, %hi(Temporal_Reference_GOP_Reset)
	sb	s3, %lo(Temporal_Reference_GOP_Reset)(a0)
	j	.LBB0_1
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	li	a0, 256
	bne	a2, a0, .LBB0_14
	j	.LBB0_25
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	li	a0, 439
	beq	a2, a0, .LBB0_27
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB0_2
# %bb.15:                               #   in Loop: Header=BB0_2 Depth=1
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	call	fprintf
	j	.LBB0_2
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	addi	a0, a2, 313
	lui	a2, %hi(default_intra_quantizer_matrix)
	addi	a2, a2, %lo(default_intra_quantizer_matrix)
.LBB0_17:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a3, 0(a2)
	sw	a3, 0(a1)
	addi	a1, a1, 4
	addi	a2, a2, 1
	bne	a1, a0, .LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_2 Depth=1
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s2)
	addi	a2, a1, 2047
	sw	a0, 1085(a2)
	beqz	a0, .LBB0_21
# %bb.19:                               # %.preheader1
                                        #   in Loop: Header=BB0_2 Depth=1
	mv	s6, s8
.LBB0_20:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 8
	call	Get_Bits
	lbu	a2, 0(s6)
	ld	a1, %lo(ld)(s2)
	slli	a2, a2, 2
	add	a2, a1, a2
	addi	a2, a2, 2047
	addi	s6, s6, 1
	sw	a0, 313(a2)
	bne	s6, s7, .LBB0_20
	j	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
	sw	s1, 313(a2)
	sw	s1, 317(a2)
	sw	s1, 321(a2)
	sw	s1, 325(a2)
	sw	s1, 329(a2)
	sw	s1, 333(a2)
	sw	s1, 337(a2)
	sw	s1, 341(a2)
	sw	s1, 345(a2)
	sw	s1, 349(a2)
	sw	s1, 353(a2)
	sw	s1, 357(a2)
	sw	s1, 361(a2)
	sw	s1, 365(a2)
	sw	s1, 369(a2)
	sw	s1, 373(a2)
	sw	s1, 377(a2)
	sw	s1, 381(a2)
	sw	s1, 385(a2)
	sw	s1, 389(a2)
	sw	s1, 393(a2)
	sw	s1, 397(a2)
	sw	s1, 401(a2)
	sw	s1, 405(a2)
	sw	s1, 409(a2)
	sw	s1, 413(a2)
	sw	s1, 417(a2)
	sw	s1, 421(a2)
	sw	s1, 425(a2)
	sw	s1, 429(a2)
	sw	s1, 433(a2)
	sw	s1, 437(a2)
	sw	s1, 441(a2)
	sw	s1, 445(a2)
	sw	s1, 449(a2)
	sw	s1, 453(a2)
	sw	s1, 457(a2)
	sw	s1, 461(a2)
	sw	s1, 465(a2)
	sw	s1, 469(a2)
	sw	s1, 473(a2)
	sw	s1, 477(a2)
	sw	s1, 481(a2)
	sw	s1, 485(a2)
	sw	s1, 489(a2)
	sw	s1, 493(a2)
	sw	s1, 497(a2)
	sw	s1, 501(a2)
	sw	s1, 505(a2)
	sw	s1, 509(a2)
	sw	s1, 513(a2)
	sw	s1, 517(a2)
	sw	s1, 521(a2)
	sw	s1, 525(a2)
	sw	s1, 529(a2)
	sw	s1, 533(a2)
	sw	s1, 537(a2)
	sw	s1, 541(a2)
	sw	s1, 545(a2)
	sw	s1, 549(a2)
	sw	s1, 553(a2)
	sw	s1, 557(a2)
	sw	s1, 561(a2)
	sw	s1, 565(a2)
.LBB0_22:                               #   in Loop: Header=BB0_2 Depth=1
	addi	a1, a1, 2047
	addi	a0, a1, 825
	addi	a1, a1, 1081
.LBB0_23:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -768(a0)
	lw	a3, -512(a0)
	sw	a2, -256(a0)
	sw	a3, 0(a0)
	addi	a0, a0, 4
	bne	a0, a1, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_2 Depth=1
	call	extension_and_user_data
	j	.LBB0_2
.LBB0_25:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	sw	zero, 1113(a0)
	li	a0, 10
	call	Get_Bits
	lui	a1, %hi(temporal_reference)
	sw	a0, %lo(temporal_reference)(a1)
	li	a0, 3
	li	s0, 3
	call	Get_Bits
	lui	s1, %hi(picture_coding_type)
	sw	a0, %lo(picture_coding_type)(s1)
	li	a0, 16
	call	Get_Bits
	lw	a1, %lo(picture_coding_type)(s1)
	lui	a2, %hi(vbv_delay)
	andi	a3, a1, -2
	li	a4, 2
	sw	a0, %lo(vbv_delay)(a2)
	beq	a3, a4, .LBB0_28
# %bb.26:
	bne	a1, s0, .LBB0_31
	j	.LBB0_29
.LBB0_27:                               # %.loopexit8
	li	a0, 0
	j	.LBB0_45
.LBB0_28:
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(full_pel_forward_vector)
	sw	a0, %lo(full_pel_forward_vector)(a1)
	li	a0, 3
	call	Get_Bits
	lw	a1, %lo(picture_coding_type)(s1)
	lui	a2, %hi(forward_f_code)
	sw	a0, %lo(forward_f_code)(a2)
	bne	a1, s0, .LBB0_31
.LBB0_29:
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(full_pel_backward_vector)
	sw	a0, %lo(full_pel_backward_vector)(a1)
	li	a0, 3
	call	Get_Bits
	lui	a1, %hi(backward_f_code)
	sw	a0, %lo(backward_f_code)(a1)
	j	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_31 Depth=1
	li	a0, 8
	call	Flush_Buffer
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	call	Get_Bits1
	bnez	a0, .LBB0_30
# %bb.32:
	call	extension_and_user_data
	lui	a0, %hi(ld)
	ld	a1, %lo(ld)(a0)
	li	a0, 1
	lui	a2, %hi(base)
	addi	a2, a2, %lo(base)
	bne	a1, a2, .LBB0_45
# %bb.33:
	lui	a1, %hi(picture_coding_type)
	lw	a2, %lo(picture_coding_type)(a1)
	lui	a1, %hi(temporal_reference)
	lw	a1, %lo(temporal_reference)(a1)
	li	a3, 3
	bne	a2, a3, .LBB0_35
# %bb.34:
	lui	a2, %hi(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	lbu	a2, %lo(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)(a2)
	lui	a3, %hi(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	lw	a3, %lo(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)(a3)
	j	.LBB0_42
.LBB0_35:
	lui	a2, %hi(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	lw	a3, %lo(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)(a2)
	lui	a2, %hi(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	lbu	a2, %lo(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)(a2)
	beq	a1, a3, .LBB0_41
# %bb.36:
	andi	a2, a2, 1
	beqz	a2, .LBB0_38
# %bb.37:
	lui	a2, %hi(Temporal_Reference_Base)
	lw	a4, %lo(Temporal_Reference_Base)(a2)
	addi	a4, a4, 1024
	sw	a4, %lo(Temporal_Reference_Base)(a2)
	lui	a2, %hi(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	sb	zero, %lo(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)(a2)
.LBB0_38:
	lui	a4, %hi(Temporal_Reference_GOP_Reset)
	lbu	a2, %lo(Temporal_Reference_GOP_Reset)(a4)
	slt	a3, a1, a3
	xori	a3, a3, 1
	or	a2, a3, a2
	andi	a3, a2, 1
	bnez	a3, .LBB0_40
# %bb.39:
	lui	a3, %hi(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	li	a5, 1
	sb	a5, %lo(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)(a3)
.LBB0_40:
	xori	a2, a2, 1
	lui	a3, %hi(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	sw	a1, %lo(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)(a3)
	sb	zero, %lo(Temporal_Reference_GOP_Reset)(a4)
.LBB0_41:
	mv	a3, a1
.LBB0_42:
	lui	a4, %hi(Temporal_Reference_Base)
	lw	a4, %lo(Temporal_Reference_Base)(a4)
	add	a4, a4, a1
	slt	a1, a3, a1
	xori	a1, a1, 1
	and	a3, a2, a1
	lui	a1, %hi(True_Framenum_max)
	lw	a2, %lo(True_Framenum_max)(a1)
	slli	a3, a3, 10
	addw	a3, a4, a3
	lui	a4, %hi(True_Framenum)
	sw	a3, %lo(True_Framenum)(a4)
	blt	a2, a3, .LBB0_44
# %bb.43:
	mv	a3, a2
.LBB0_44:
	sw	a3, %lo(True_Framenum_max)(a1)
.LBB0_45:
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
	.size	Get_Hdr, .Lfunc_end0-Get_Hdr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	next_start_code                 # -- Begin function next_start_code
	.p2align	2
	.type	next_start_code,@function
next_start_code:                        # @next_start_code
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	lwu	a0, 49(a0)
	andi	a0, a0, 7
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	li	s0, 1
	beq	a0, s0, .LBB1_2
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	li	a0, 8
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	bne	a0, s0, .LBB1_1
.LBB1_2:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	next_start_code, .Lfunc_end1-next_start_code
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	slice_header                    # -- Begin function slice_header
	.p2align	2
	.type	slice_header,@function
slice_header:                           # @slice_header
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(ld)
	ld	a1, %lo(ld)(a0)
	addi	a0, a1, 2047
	lw	a0, 1097(a0)
	li	s0, 0
	beqz	a0, .LBB2_3
# %bb.1:
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	lui	a2, 1
	addiw	a2, a2, -1295
	blt	a0, a2, .LBB2_3
# %bb.2:
	li	a0, 3
	call	Get_Bits
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	mv	s0, a0
.LBB2_3:
	addi	a0, a1, 2047
	lw	a0, 1101(a0)
	li	a1, 1
	bne	a0, a1, .LBB2_5
# %bb.4:
	li	a0, 7
	call	Get_Bits
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a1, a1, 2047
	sw	a0, 1117(a1)
.LBB2_5:
	li	a0, 5
	call	Get_Bits
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a1, a1, 2047
	lw	a2, 1097(a1)
	beqz	a2, .LBB2_8
# %bb.6:
	lw	a2, 1105(a1)
	beqz	a2, .LBB2_11
# %bb.7:
	lui	a2, %hi(Non_Linear_quantizer_scale)
	addi	a2, a2, %lo(Non_Linear_quantizer_scale)
	add	a0, a2, a0
	lbu	a0, 0(a0)
.LBB2_8:
	sw	a0, 1121(a1)
	li	a0, 1
	call	Get_Bits
	beqz	a0, .LBB2_12
.LBB2_9:
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a1, a1, 2047
	sw	a0, 1125(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 6
	call	Get_Bits
	call	Get_Bits1
	beqz	a0, .LBB2_13
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	li	a0, 8
	call	Flush_Buffer
	call	Get_Bits1
	bnez	a0, .LBB2_10
	j	.LBB2_13
.LBB2_11:
	slli	a0, a0, 1
	sw	a0, 1121(a1)
	li	a0, 1
	call	Get_Bits
	bnez	a0, .LBB2_9
.LBB2_12:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	sw	zero, 1125(a0)
.LBB2_13:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	slice_header, .Lfunc_end2-slice_header
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	marker_bit                      # -- Begin function marker_bit
	.p2align	2
	.type	marker_bit,@function
marker_bit:                             # @marker_bit
# %bb.0:
	li	a0, 1
	tail	Get_Bits
.Lfunc_end3:
	.size	marker_bit, .Lfunc_end3-marker_bit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function extension_and_user_data
.LCPI4_0:
	.quad	0x4079000000000000              # double 400
	.text
	.p2align	2
	.type	extension_and_user_data,@function
extension_and_user_data:                # @extension_and_user_data
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	fsd	fs0, 16(sp)                     # 8-byte Folded Spill
	lui	s3, %hi(ld)
	ld	a0, %lo(ld)(s3)
	addi	a0, a0, 2047
	lwu	a0, 49(a0)
	andi	a0, a0, 7
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	li	s4, 1
	beq	a0, s4, .LBB4_2
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	li	a0, 8
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	bne	a0, s4, .LBB4_1
.LBB4_2:
	lui	s5, 1
	addi	s5, s5, -1
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	li	s6, 434
	li	s7, 437
	li	s1, 9
	lui	s8, %hi(.LJTI4_0)
	addi	s8, s8, %lo(.LJTI4_0)
	lui	s11, %hi(layer_id)
	lui	a0, %hi(.LCPI4_0)
	fld	fs0, %lo(.LCPI4_0)(a0)
	lui	s9, 4
	addiw	s9, s9, -1
	sd	s9, 0(sp)                       # 8-byte Folded Spill
	lui	s5, %hi(scan)
	addi	s5, s5, %lo(scan)
	lui	s9, %hi(repeat_first_field)
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_50 Depth 2
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_30 Depth 2
                                        #     Child Loop BB4_33 Depth 2
                                        #     Child Loop BB4_52 Depth 2
                                        #     Child Loop BB4_10 Depth 2
	li	a0, 32
	call	Show_Bits
	beq	a0, s6, .LBB4_9
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	bne	a0, s7, .LBB4_55
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	call	Flush_Buffer32
	li	a0, 4
	call	Get_Bits
	mv	a2, a0
	addi	a0, a0, -1
	bltu	s1, a0, .LBB4_54
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	slli	a0, a0, 2
	add	a0, a0, s8
	lw	a0, 0(a0)
	jr	a0
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a0, %lo(ld)(s3)
	addi	a0, a0, 2047
	sd	s4, 1097(a0)
	sw	zero, %lo(layer_id)(s11)
	li	a0, 8
	call	Get_Bits
	lui	s1, %hi(profile_and_level_indication)
	sw	a0, %lo(profile_and_level_indication)(s1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(progressive_sequence)
	sw	a0, %lo(progressive_sequence)(a1)
	li	a0, 2
	call	Get_Bits
	lui	a1, %hi(chroma_format)
	sw	a0, %lo(chroma_format)(a1)
	li	a0, 2
	call	Get_Bits
	mv	s2, a0
	li	a0, 2
	call	Get_Bits
	mv	s0, a0
	li	a0, 12
	call	Get_Bits
	mv	s11, a0
	li	a0, 1
	call	Get_Bits
	li	a0, 8
	call	Get_Bits
	mv	s10, a0
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(low_delay)
	sw	a0, %lo(low_delay)(a1)
	li	a0, 2
	call	Get_Bits
	lui	s9, %hi(frame_rate_extension_n)
	sw	a0, %lo(frame_rate_extension_n)(s9)
	li	a0, 5
	call	Get_Bits
	lui	a1, %hi(frame_rate_code)
	lw	a1, %lo(frame_rate_code)(a1)
	lui	a2, %hi(frame_rate_extension_d)
	sw	a0, %lo(frame_rate_extension_d)(a2)
	lw	a2, %lo(frame_rate_extension_n)(s9)
	slli	a1, a1, 3
	lui	a3, %hi(frame_rate_Table)
	addi	a3, a3, %lo(frame_rate_Table)
	add	a1, a3, a1
	fld	fa5, 0(a1)
	addi	a2, a2, 1
	addi	a0, a0, 1
	divw	a0, a2, a0
	lwu	a1, %lo(profile_and_level_indication)(s1)
	fcvt.d.w	fa4, a0
	fmul.d	fa5, fa5, fa4
	lui	a0, %hi(frame_rate)
	fsd	fa5, %lo(frame_rate)(a0)
	andi	a2, a1, 128
	andi	a0, a1, 15
	bnez	a2, .LBB4_41
# %bb.8:                                #   in Loop: Header=BB4_3 Depth=1
	sraiw	a1, a1, 4
	lui	a2, %hi(profile)
	sw	a1, %lo(profile)(a2)
	li	s1, 9
	lui	s9, %hi(repeat_first_field)
	j	.LBB4_43
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=1
	call	Flush_Buffer32
	ld	a0, %lo(ld)(s3)
	addi	a0, a0, 2047
	lwu	a0, 49(a0)
	andi	a0, a0, 7
.LBB4_10:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	beq	a0, s4, .LBB4_3
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=2
	li	a0, 8
	j	.LBB4_10
.LBB4_12:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 2
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a0, a0, 1
	addi	a1, a1, 2047
	sw	a0, 1101(a1)
	li	a0, 4
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	lw	a1, 1101(a1)
	sw	a0, %lo(layer_id)(s11)
	li	a0, 2
	bne	a1, a0, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 14
	call	Get_Bits
	lui	a1, %hi(lower_layer_prediction_horizontal_size)
	sw	a0, %lo(lower_layer_prediction_horizontal_size)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 14
	call	Get_Bits
	lui	a1, %hi(lower_layer_prediction_vertical_size)
	sw	a0, %lo(lower_layer_prediction_vertical_size)(a1)
	li	a0, 5
	call	Get_Bits
	lui	a1, %hi(horizontal_subsampling_factor_m)
	sw	a0, %lo(horizontal_subsampling_factor_m)(a1)
	li	a0, 5
	call	Get_Bits
	lui	a1, %hi(horizontal_subsampling_factor_n)
	sw	a0, %lo(horizontal_subsampling_factor_n)(a1)
	li	a0, 5
	call	Get_Bits
	lui	a1, %hi(vertical_subsampling_factor_m)
	sw	a0, %lo(vertical_subsampling_factor_m)(a1)
	li	a0, 5
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	lw	a1, 1101(a1)
	lui	a2, %hi(vertical_subsampling_factor_n)
	sw	a0, %lo(vertical_subsampling_factor_n)(a2)
.LBB4_14:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 4
	bne	a1, a0, .LBB4_51
# %bb.15:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	Error
	j	.LBB4_51
.LBB4_16:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, %lo(ld)(s3)
	addi	a0, a0, 2047
	sw	s4, 1113(a0)
	li	a0, 10
	call	Get_Bits
	lui	a1, %hi(lower_layer_temporal_reference)
	sw	a0, %lo(lower_layer_temporal_reference)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 15
	call	Get_Bits
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	slt	a1, s0, a0
	negw	a1, a1
	lui	s2, 1048568
	and	a1, a1, s2
	add	a0, a0, a1
	lui	a1, %hi(lower_layer_horizontal_offset)
	sw	a0, %lo(lower_layer_horizontal_offset)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 15
	call	Get_Bits
	slt	a1, s0, a0
	negw	a1, a1
	and	a1, a1, s2
	add	a0, a0, a1
	lui	a1, %hi(lower_layer_vertical_offset)
	sw	a0, %lo(lower_layer_vertical_offset)(a1)
	li	a0, 2
	call	Get_Bits
	lui	a1, %hi(spatial_temporal_weight_code_table_index)
	sw	a0, %lo(spatial_temporal_weight_code_table_index)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(lower_layer_progressive_frame)
	sw	a0, %lo(lower_layer_progressive_frame)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(lower_layer_deinterlaced_field_select)
	sw	a0, %lo(lower_layer_deinterlaced_field_select)(a1)
	j	.LBB4_51
.LBB4_17:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, %lo(ld)(s3)
	addi	a0, a0, 2047
	lw	s0, 53(a0)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(copyright_flag)
	sw	a0, %lo(copyright_flag)(a1)
	li	a0, 8
	call	Get_Bits
	lui	a1, %hi(copyright_identifier)
	sw	a0, %lo(copyright_identifier)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(original_or_copy)
	sw	a0, %lo(original_or_copy)(a1)
	li	a0, 7
	call	Get_Bits
	li	a0, 1
	call	Get_Bits
	li	a0, 20
	call	Get_Bits
	lui	a1, %hi(copyright_number_1)
	sw	a0, %lo(copyright_number_1)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 22
	call	Get_Bits
	lui	a1, %hi(copyright_number_2)
	sw	a0, %lo(copyright_number_2)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 22
	call	Get_Bits
	lui	a1, %hi(Verbose_Flag)
	lw	a1, %lo(Verbose_Flag)(a1)
	lui	a2, %hi(copyright_number_3)
	sw	a0, %lo(copyright_number_3)(a2)
	blez	a1, .LBB4_51
# %bb.18:                               #   in Loop: Header=BB4_3 Depth=1
	sraiw	a1, s0, 3
	addi	a1, a1, -4
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	call	printf
	lui	a0, %hi(Verbose_Flag)
	lw	a0, %lo(Verbose_Flag)(a0)
	li	a1, 2
	blt	a0, a1, .LBB4_51
# %bb.19:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(copyright_flag)
	lw	a1, %lo(copyright_flag)(a0)
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	call	printf
	lui	a0, %hi(copyright_identifier)
	lw	a1, %lo(copyright_identifier)(a0)
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	call	printf
	lui	a0, %hi(original_or_copy)
	lw	a1, %lo(original_or_copy)(a0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	call	printf
	lui	a0, %hi(copyright_number_1)
	lw	a1, %lo(copyright_number_1)(a0)
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	call	printf
	lui	a0, %hi(copyright_number_2)
	lw	a1, %lo(copyright_number_2)(a0)
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	call	printf
	lui	a0, %hi(copyright_number_3)
	lw	a1, %lo(copyright_number_3)(a0)
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	call	printf
	j	.LBB4_51
.LBB4_20:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 4
	call	Get_Bits
	lui	a1, %hi(f_code)
	sw	a0, %lo(f_code)(a1)
	addi	s0, a1, %lo(f_code)
	li	a0, 4
	call	Get_Bits
	sw	a0, 4(s0)
	li	a0, 4
	call	Get_Bits
	sw	a0, 8(s0)
	li	a0, 4
	call	Get_Bits
	sw	a0, 12(s0)
	li	a0, 2
	call	Get_Bits
	lui	a1, %hi(intra_dc_precision)
	sw	a0, %lo(intra_dc_precision)(a1)
	li	a0, 2
	call	Get_Bits
	lui	a1, %hi(picture_structure)
	sw	a0, %lo(picture_structure)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(top_field_first)
	sw	a0, %lo(top_field_first)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(frame_pred_frame_dct)
	sw	a0, %lo(frame_pred_frame_dct)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(concealment_motion_vectors)
	sw	a0, %lo(concealment_motion_vectors)(a1)
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	sw	a0, 1105(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(intra_vlc_format)
	sw	a0, %lo(intra_vlc_format)(a1)
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	sw	a0, 1109(a1)
	li	a0, 1
	call	Get_Bits
	sw	a0, %lo(repeat_first_field)(s9)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(chroma_420_type)
	sw	a0, %lo(chroma_420_type)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(progressive_frame)
	sw	a0, %lo(progressive_frame)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(composite_display_flag)
	sw	a0, %lo(composite_display_flag)(a1)
	beqz	a0, .LBB4_51
# %bb.21:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(v_axis)
	sw	a0, %lo(v_axis)(a1)
	li	a0, 3
	call	Get_Bits
	lui	a1, %hi(field_sequence)
	sw	a0, %lo(field_sequence)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(sub_carrier)
	sw	a0, %lo(sub_carrier)(a1)
	li	a0, 7
	call	Get_Bits
	lui	a1, %hi(burst_amplitude)
	sw	a0, %lo(burst_amplitude)(a1)
	li	a0, 8
	call	Get_Bits
	lui	a1, %hi(sub_carrier_phase)
	sw	a0, %lo(sub_carrier_phase)(a1)
	j	.LBB4_51
.LBB4_22:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	sw	a0, 1081(a1)
	addi	s0, s5, 64
	beqz	a0, .LBB4_25
# %bb.23:                               # %.preheader7
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	s2, s5
.LBB4_24:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 8
	call	Get_Bits
	lbu	a1, 0(s2)
	ld	a2, %lo(ld)(s3)
	slli	a1, a1, 2
	add	a1, a2, a1
	addi	a1, a1, 2047
	sw	a0, 57(a1)
	lbu	a1, 0(s2)
	slli	a1, a1, 2
	add	a1, a2, a1
	addi	a1, a1, 2047
	addi	s2, s2, 1
	sw	a0, 569(a1)
	bne	s2, s0, .LBB4_24
.LBB4_25:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	sw	a0, 1085(a1)
	beqz	a0, .LBB4_28
# %bb.26:                               # %.preheader5
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	s2, s5
.LBB4_27:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 8
	call	Get_Bits
	lbu	a1, 0(s2)
	ld	a2, %lo(ld)(s3)
	slli	a1, a1, 2
	add	a1, a2, a1
	addi	a1, a1, 2047
	sw	a0, 313(a1)
	lbu	a1, 0(s2)
	slli	a1, a1, 2
	add	a1, a2, a1
	addi	a1, a1, 2047
	addi	s2, s2, 1
	sw	a0, 825(a1)
	bne	s2, s0, .LBB4_27
.LBB4_28:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	sw	a0, 1089(a1)
	beqz	a0, .LBB4_31
# %bb.29:                               # %.preheader3
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	s2, s5
.LBB4_30:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 8
	call	Get_Bits
	lbu	a1, 0(s2)
	ld	a2, %lo(ld)(s3)
	slli	a1, a1, 2
	add	a1, a2, a1
	addi	a1, a1, 2047
	addi	s2, s2, 1
	sw	a0, 569(a1)
	bne	s2, s0, .LBB4_30
.LBB4_31:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 1
	call	Get_Bits
	ld	a1, %lo(ld)(s3)
	addi	a1, a1, 2047
	sw	a0, 1093(a1)
	beqz	a0, .LBB4_51
# %bb.32:                               # %.preheader1
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	s2, s5
.LBB4_33:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 8
	call	Get_Bits
	lbu	a1, 0(s2)
	ld	a2, %lo(ld)(s3)
	slli	a1, a1, 2
	add	a1, a2, a1
	addi	a1, a1, 2047
	addi	s2, s2, 1
	sw	a0, 825(a1)
	bne	s2, s0, .LBB4_33
	j	.LBB4_51
.LBB4_34:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(progressive_sequence)
	lw	a0, %lo(progressive_sequence)(a0)
	beqz	a0, .LBB4_45
# %bb.35:                               #   in Loop: Header=BB4_3 Depth=1
	lw	a0, %lo(repeat_first_field)(s9)
	beqz	a0, .LBB4_48
# %bb.36:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(top_field_first)
	lw	a0, %lo(top_field_first)(a0)
	j	.LBB4_47
.LBB4_37:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 3
	call	Get_Bits
	lui	a1, %hi(video_format)
	sw	a0, %lo(video_format)(a1)
	li	a0, 1
	call	Get_Bits
	lui	a1, %hi(color_description)
	sw	a0, %lo(color_description)(a1)
	beqz	a0, .LBB4_39
# %bb.38:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 8
	call	Get_Bits
	lui	a1, %hi(color_primaries)
	sw	a0, %lo(color_primaries)(a1)
	li	a0, 8
	call	Get_Bits
	lui	a1, %hi(transfer_characteristics)
	sw	a0, %lo(transfer_characteristics)(a1)
	li	a0, 8
	call	Get_Bits
	lui	a1, %hi(matrix_coefficients)
	sw	a0, %lo(matrix_coefficients)(a1)
.LBB4_39:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 14
	call	Get_Bits
	lui	a1, %hi(display_horizontal_size)
	sw	a0, %lo(display_horizontal_size)(a1)
	li	a0, 1
	call	Get_Bits
	li	a0, 14
	call	Get_Bits
	lui	a1, %hi(display_vertical_size)
	sw	a0, %lo(display_vertical_size)(a1)
	j	.LBB4_51
.LBB4_40:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	Error
	j	.LBB4_51
.LBB4_41:                               #   in Loop: Header=BB4_3 Depth=1
	li	a1, 5
	li	s1, 9
	lui	s9, %hi(repeat_first_field)
	bne	a0, a1, .LBB4_44
# %bb.42:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(profile)
	li	a1, 133
	sw	a1, %lo(profile)(a0)
	li	a0, 8
.LBB4_43:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a1, %hi(level)
	sw	a0, %lo(level)(a1)
.LBB4_44:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a3, %hi(horizontal_size)
	lwu	a0, %lo(horizontal_size)(a3)
	slli	s2, s2, 12
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	and	a0, a0, a2
	lui	a4, %hi(vertical_size)
	lwu	a1, %lo(vertical_size)(a4)
	or	a0, a0, s2
	sw	a0, %lo(horizontal_size)(a3)
	slli	s0, s0, 12
	and	a0, a1, a2
	lui	a2, %hi(bit_rate_value)
	lw	a1, %lo(bit_rate_value)(a2)
	or	a0, a0, s0
	sw	a0, %lo(vertical_size)(a4)
	slli	s11, s11, 18
	add	a1, a1, s11
	sw	a1, %lo(bit_rate_value)(a2)
	fcvt.d.w	fa5, a1
	lui	a2, %hi(vbv_buffer_size)
	lw	a0, %lo(vbv_buffer_size)(a2)
	fmul.d	fa5, fa5, fs0
	lui	a1, %hi(bit_rate)
	fsd	fa5, %lo(bit_rate)(a1)
	slli	s10, s10, 10
	add	a0, a0, s10
	sw	a0, %lo(vbv_buffer_size)(a2)
	lui	s11, %hi(layer_id)
	j	.LBB4_51
.LBB4_45:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(picture_structure)
	lw	a1, %lo(picture_structure)(a0)
	li	a0, 1
	li	a2, 3
	bne	a1, a2, .LBB4_49
# %bb.46:                               #   in Loop: Header=BB4_3 Depth=1
	lw	a0, %lo(repeat_first_field)(s9)
.LBB4_47:                               #   in Loop: Header=BB4_3 Depth=1
	seqz	a0, a0
	xori	a0, a0, 3
	j	.LBB4_49
.LBB4_48:                               #   in Loop: Header=BB4_3 Depth=1
	li	a0, 1
.LBB4_49:                               #   in Loop: Header=BB4_3 Depth=1
	slli	a0, a0, 2
	lui	s10, %hi(frame_center_vertical_offset)
	addi	s10, s10, %lo(frame_center_vertical_offset)
	add	s0, s10, a0
	lui	s2, %hi(frame_center_horizontal_offset)
	addi	s2, s2, %lo(frame_center_horizontal_offset)
.LBB4_50:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 16
	call	Get_Bits
	sw	a0, 0(s2)
	li	a0, 1
	call	Get_Bits
	li	a0, 16
	call	Get_Bits
	sw	a0, 0(s10)
	li	a0, 1
	call	Get_Bits
	addi	s10, s10, 4
	addi	s2, s2, 4
	bne	s10, s0, .LBB4_50
.LBB4_51:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, %lo(ld)(s3)
	addi	a0, a0, 2047
	lwu	a0, 49(a0)
	andi	a0, a0, 7
.LBB4_52:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	Flush_Buffer
	li	a0, 24
	call	Show_Bits
	beq	a0, s4, .LBB4_3
# %bb.53:                               #   in Loop: Header=BB4_52 Depth=2
	li	a0, 8
	j	.LBB4_52
.LBB4_54:                               #   in Loop: Header=BB4_3 Depth=1
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fprintf
	j	.LBB4_51
.LBB4_55:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end4:
	.size	extension_and_user_data, .Lfunc_end4-extension_and_user_data
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_7
	.word	.LBB4_37
	.word	.LBB4_22
	.word	.LBB4_17
	.word	.LBB4_12
	.word	.LBB4_54
	.word	.LBB4_34
	.word	.LBB4_20
	.word	.LBB4_16
	.word	.LBB4_40
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unexpected next_start_code %08x (ignored)\n"
	.size	.L.str, 43

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"reserved extension start code ID %d\n"
	.size	.L.str.2, 37

	.type	frame_rate_Table,@object        # @frame_rate_Table
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
frame_rate_Table:
	.quad	0x0000000000000000              # double 0
	.quad	0x4036fa1e2d85c116              # double 22.977022977022976
	.quad	0x4038000000000000              # double 24
	.quad	0x4039000000000000              # double 25
	.quad	0x403df853e2556b28              # double 29.970029970029969
	.quad	0x403e000000000000              # double 30
	.quad	0x4049000000000000              # double 50
	.quad	0x404df853e2556b28              # double 59.940059940059939
	.quad	0x404e000000000000              # double 60
	.quad	0xbff0000000000000              # double -1
	.quad	0xbff0000000000000              # double -1
	.quad	0xbff0000000000000              # double -1
	.quad	0xbff0000000000000              # double -1
	.quad	0xbff0000000000000              # double -1
	.quad	0xbff0000000000000              # double -1
	.quad	0xbff0000000000000              # double -1
	.size	frame_rate_Table, 128

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"temporal scalability not implemented\n"
	.size	.L.str.6, 38

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"temporal scalability not supported\n"
	.size	.L.str.11, 36

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"copyright_extension (byte %d)\n"
	.size	.L.str.15, 31

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"  copyright_flag =%d\n"
	.size	.L.str.16, 22

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"  copyright_identifier=%d\n"
	.size	.L.str.17, 27

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"  original_or_copy = %d (original=1, copy=0)\n"
	.size	.L.str.18, 46

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"  copyright_number_1=%d\n"
	.size	.L.str.19, 25

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"  copyright_number_2=%d\n"
	.size	.L.str.20, 25

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"  copyright_number_3=%d\n"
	.size	.L.str.21, 25

	.type	True_Framenum_max,@object       # @True_Framenum_max
	.section	.sdata,"aw",@progbits
	.p2align	2, 0x0
True_Framenum_max:
	.word	4294967295                      # 0xffffffff
	.size	True_Framenum_max, 4

	.type	Temporal_Reference_Base,@object # @Temporal_Reference_Base
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
Temporal_Reference_Base:
	.word	0                               # 0x0
	.size	Temporal_Reference_Base, 4

	.type	Temporal_Reference_GOP_Reset,@object # @Temporal_Reference_GOP_Reset
	.p2align	2, 0x0
Temporal_Reference_GOP_Reset:
	.byte	0                               # 0x0
	.size	Temporal_Reference_GOP_Reset, 1

	.type	Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap,@object # @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap
	.p2align	2, 0x0
Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap:
	.byte	0                               # 0x0
	.size	Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, 1

	.type	Update_Temporal_Reference_Tacking_Data.temporal_reference_old,@object # @Update_Temporal_Reference_Tacking_Data.temporal_reference_old
	.p2align	2, 0x0
Update_Temporal_Reference_Tacking_Data.temporal_reference_old:
	.word	0                               # 0x0
	.size	Update_Temporal_Reference_Tacking_Data.temporal_reference_old, 4

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
