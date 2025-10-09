	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jquant2.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_2pass_quantizer           # -- Begin function jinit_2pass_quantizer
	.p2align	2
	.type	jinit_2pass_quantizer,@function
jinit_2pass_quantizer:                  # @jinit_2pass_quantizer
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 88
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 624(s0)
	lui	a0, %hi(start_pass_2_quant)
	addi	a0, a0, %lo(start_pass_2_quant)
	sd	a0, 0(s1)
	lui	a0, %hi(new_color_map_2_quant)
	addi	a0, a0, %lo(new_color_map_2_quant)
	lw	a1, 144(s0)
	sd	a0, 24(s1)
	sd	zero, 64(s1)
	li	a0, 3
	sd	zero, 80(s1)
	beq	a1, a0, .LBB0_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 47
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_2:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 256
	li	s2, 256
	mv	a0, s0
	jalr	a3
	li	s3, 0
	sd	a0, 48(s1)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	ld	a3, 8(a0)
	li	a1, 1
	lui	a2, 1
	mv	a0, s0
	jalr	a3
	ld	a1, 48(s1)
	add	a1, a1, s3
	addi	s3, s3, 8
	sd	a0, 0(a1)
	bne	s3, s2, .LBB0_3
# %bb.4:
	lw	a0, 132(s0)
	li	a1, 1
	sw	a1, 56(s1)
	beqz	a0, .LBB0_11
# %bb.5:
	lw	s2, 120(s0)
	li	a1, 8
	li	a0, 56
	blt	s2, a1, .LBB0_8
# %bb.6:
	li	a0, 257
	bltu	s2, a0, .LBB0_9
# %bb.7:
	li	a1, 256
	li	a0, 57
.LBB0_8:
	ld	a2, 0(s0)
	sw	a1, 44(a2)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	a0, 40(a2)
	mv	a0, s0
	jalr	a1
.LBB0_9:
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	li	a1, 1
	li	a3, 3
	mv	a0, s0
	mv	a2, s2
	jalr	a4
	sd	a0, 32(s1)
	sw	s2, 40(s1)
	lw	a0, 112(s0)
	beqz	a0, .LBB0_12
.LBB0_10:
	ld	a0, 8(s0)
	lw	a1, 136(s0)
	li	a2, 2
	sw	a2, 112(s0)
	ld	a3, 8(a0)
	addi	a1, a1, 2
	li	a0, 3
	slli	a0, a0, 33
	slli	a1, a1, 32
	mulhu	a2, a1, a0
	li	a1, 1
	mv	a0, s0
	jalr	a3
	sd	a0, 64(s1)
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	init_error_limit
.LBB0_11:
	sd	zero, 32(s1)
	lw	a0, 112(s0)
	bnez	a0, .LBB0_10
.LBB0_12:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	jinit_2pass_quantizer, .Lfunc_end0-jinit_2pass_quantizer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_2_quant
	.type	start_pass_2_quant,@function
start_pass_2_quant:                     # @start_pass_2_quant
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s2, 624(a0)
	lw	a0, 112(a0)
	ld	s3, 48(s2)
	beqz	a0, .LBB1_3
# %bb.1:
	li	a0, 2
	sw	a0, 112(s0)
	bnez	a1, .LBB1_4
# %bb.2:
	lui	a0, %hi(pass2_fs_dither)
	addi	a0, a0, %lo(pass2_fs_dither)
	j	.LBB1_6
.LBB1_3:
	beqz	a1, .LBB1_5
.LBB1_4:
	lui	a0, %hi(prescan_quantize)
	addi	a0, a0, %lo(prescan_quantize)
	sd	a0, 8(s2)
	lui	a0, %hi(finish_pass1)
	addi	a0, a0, %lo(finish_pass1)
	sd	a0, 16(s2)
	li	a0, 1
	li	s1, 56
	j	.LBB1_20
.LBB1_5:
	lui	a0, %hi(pass2_no_dither)
	addi	a0, a0, %lo(pass2_no_dither)
.LBB1_6:
	sd	a0, 8(s2)
	lw	a0, 156(s0)
	lui	a1, %hi(finish_pass2)
	addi	a1, a1, %lo(finish_pass2)
	sd	a1, 16(s2)
	blez	a0, .LBB1_12
# %bb.7:
	li	a1, 257
	bgeu	a0, a1, .LBB1_13
# %bb.8:
	lw	a0, 112(s0)
	li	a1, 2
	beq	a0, a1, .LBB1_15
.LBB1_9:
	lw	a0, 56(s2)
	beqz	a0, .LBB1_11
.LBB1_10:
	ld	a0, 0(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 8(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 16(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 24(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 32(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 40(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 48(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 56(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 64(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 72(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 80(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 88(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 96(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 104(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 112(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 120(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 128(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 136(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 144(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 152(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 160(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 168(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 176(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 184(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 192(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 200(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 208(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 216(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 224(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 232(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 240(s3)
	lui	a1, 1
	call	jzero_far
	ld	a0, 248(s3)
	lui	a1, 1
	call	jzero_far
	sw	zero, 56(s2)
.LBB1_11:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB1_12:
	li	a1, 1
	li	a0, 56
	j	.LBB1_14
.LBB1_13:
	li	a1, 256
	li	a0, 57
.LBB1_14:
	ld	a2, 0(s0)
	sw	a1, 44(a2)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	a0, 40(a2)
	mv	a0, s0
	jalr	a1
	lw	a0, 112(s0)
	li	a1, 2
	bne	a0, a1, .LBB1_9
.LBB1_15:
	lw	a0, 136(s0)
	addi	a1, a0, 2
	ld	a0, 64(s2)
	li	a2, 3
	slli	a2, a2, 33
	slli	a1, a1, 32
	mulhu	s1, a1, a2
	bnez	a0, .LBB1_17
# %bb.16:
	ld	a0, 8(s0)
	ld	a3, 8(a0)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 64(s2)
.LBB1_17:
	mv	a1, s1
	call	jzero_far
	ld	a0, 80(s2)
	li	s1, 72
	bnez	a0, .LBB1_19
# %bb.18:
	mv	a0, s0
	call	init_error_limit
.LBB1_19:
	li	a0, 0
.LBB1_20:
	add	s1, s2, s1
	sw	a0, 0(s1)
	lw	a0, 56(s2)
	bnez	a0, .LBB1_10
	j	.LBB1_11
.Lfunc_end1:
	.size	start_pass_2_quant, .Lfunc_end1-start_pass_2_quant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function new_color_map_2_quant
	.type	new_color_map_2_quant,@function
new_color_map_2_quant:                  # @new_color_map_2_quant
# %bb.0:
	ld	a0, 624(a0)
	li	a1, 1
	sw	a1, 56(a0)
	ret
.Lfunc_end2:
	.size	new_color_map_2_quant, .Lfunc_end2-new_color_map_2_quant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function init_error_limit
	.type	init_error_limit,@function
init_error_limit:                       # @init_error_limit
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 8(a0)
	ld	s0, 624(a0)
	ld	a3, 0(a1)
	li	a1, 1
	li	a2, 2044
	li	s1, 1
	jalr	a3
	addi	a1, a0, 1020
	sd	a1, 80(s0)
	sw	zero, 1020(a0)
	sw	s1, 1024(a0)
	li	a1, -1
	sw	a1, 1016(a0)
	li	a1, 2
	sw	a1, 1028(a0)
	li	a1, -2
	sw	a1, 1012(a0)
	li	a1, 3
	sw	a1, 1032(a0)
	li	a1, -3
	sw	a1, 1008(a0)
	li	a1, 4
	sw	a1, 1036(a0)
	li	a1, -4
	sw	a1, 1004(a0)
	li	a1, 5
	sw	a1, 1040(a0)
	li	a1, -5
	sw	a1, 1000(a0)
	li	a1, 6
	sw	a1, 1044(a0)
	li	a1, -6
	sw	a1, 996(a0)
	li	a1, 7
	sw	a1, 1048(a0)
	li	a1, -7
	sw	a1, 992(a0)
	li	a1, 8
	sw	a1, 1052(a0)
	li	a1, -8
	sw	a1, 988(a0)
	li	a1, 9
	sw	a1, 1056(a0)
	li	a1, -9
	sw	a1, 984(a0)
	li	a1, 10
	sw	a1, 1060(a0)
	li	a1, -10
	sw	a1, 980(a0)
	li	a1, 11
	sw	a1, 1064(a0)
	li	a1, -11
	sw	a1, 976(a0)
	li	a1, 12
	sw	a1, 1068(a0)
	li	a1, -12
	sw	a1, 972(a0)
	li	a1, 13
	sw	a1, 1072(a0)
	li	a1, -13
	sw	a1, 968(a0)
	li	a1, 14
	sw	a1, 1076(a0)
	li	a1, -14
	sw	a1, 964(a0)
	li	a1, 15
	sw	a1, 1080(a0)
	li	a1, -15
	sw	a1, 960(a0)
	li	a1, 16
	sw	a1, 1084(a0)
	li	a2, -16
	sw	a2, 956(a0)
	sw	a1, 1088(a0)
	sw	a2, 952(a0)
	li	a1, 17
	sw	a1, 1092(a0)
	li	a2, -17
	sw	a2, 948(a0)
	sw	a1, 1096(a0)
	sw	a2, 944(a0)
	li	a1, 18
	sw	a1, 1100(a0)
	li	a2, -18
	sw	a2, 940(a0)
	sw	a1, 1104(a0)
	sw	a2, 936(a0)
	li	a1, 19
	sw	a1, 1108(a0)
	li	a2, -19
	sw	a2, 932(a0)
	sw	a1, 1112(a0)
	sw	a2, 928(a0)
	li	a1, 20
	sw	a1, 1116(a0)
	li	a2, -20
	sw	a2, 924(a0)
	sw	a1, 1120(a0)
	sw	a2, 920(a0)
	li	a1, 21
	sw	a1, 1124(a0)
	li	a2, -21
	sw	a2, 916(a0)
	sw	a1, 1128(a0)
	sw	a2, 912(a0)
	li	a1, 22
	sw	a1, 1132(a0)
	li	a2, -22
	sw	a2, 908(a0)
	sw	a1, 1136(a0)
	sw	a2, 904(a0)
	li	a1, 23
	sw	a1, 1140(a0)
	li	a2, -23
	sw	a2, 900(a0)
	sw	a1, 1144(a0)
	sw	a2, 896(a0)
	li	a1, 24
	sw	a1, 1148(a0)
	li	a2, -24
	sw	a2, 892(a0)
	sw	a1, 1152(a0)
	sw	a2, 888(a0)
	li	a1, 25
	sw	a1, 1156(a0)
	li	a2, -25
	sw	a2, 884(a0)
	sw	a1, 1160(a0)
	sw	a2, 880(a0)
	li	a1, 26
	sw	a1, 1164(a0)
	li	a2, -26
	sw	a2, 876(a0)
	sw	a1, 1168(a0)
	sw	a2, 872(a0)
	li	a1, 27
	sw	a1, 1172(a0)
	li	a2, -27
	sw	a2, 868(a0)
	sw	a1, 1176(a0)
	sw	a2, 864(a0)
	li	a1, 28
	sw	a1, 1180(a0)
	li	a2, -28
	sw	a2, 860(a0)
	sw	a1, 1184(a0)
	sw	a2, 856(a0)
	li	a1, 29
	sw	a1, 1188(a0)
	li	a2, -29
	sw	a2, 852(a0)
	sw	a1, 1192(a0)
	sw	a2, 848(a0)
	li	a1, 30
	sw	a1, 1196(a0)
	li	a2, -30
	sw	a2, 844(a0)
	sw	a1, 1200(a0)
	sw	a2, 840(a0)
	li	a1, 31
	sw	a1, 1204(a0)
	li	a2, -31
	sw	a2, 836(a0)
	sw	a1, 1208(a0)
	sw	a2, 832(a0)
	addi	a1, a0, 828
	addi	a2, a0, 1212
	addi	a0, a0, -4
	li	a3, 32
	li	a4, -32
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	sw	a3, 0(a2)
	sw	a4, 0(a1)
	addi	a1, a1, -4
	addi	a2, a2, 4
	bne	a1, a0, .LBB3_1
# %bb.2:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	init_error_limit, .Lfunc_end3-init_error_limit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function prescan_quantize
	.type	prescan_quantize,@function
prescan_quantize:                       # @prescan_quantize
# %bb.0:
	blez	a3, .LBB4_8
# %bb.1:
	lw	a4, 136(a0)
	beqz	a4, .LBB4_8
# %bb.2:
	ld	a2, 624(a0)
	li	a0, 0
	ld	a2, 48(a2)
	addi	a4, a4, -1
	slli	a4, a4, 32
	srli	a5, a4, 32
	srli	a4, a4, 31
	add	a4, a4, a5
	addi	a4, a4, 3
	j	.LBB4_4
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	addi	a0, a0, 1
	beq	a0, a3, .LBB4_8
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	slli	a5, a0, 3
	add	a5, a1, a5
	ld	a5, 0(a5)
	add	a6, a5, a4
	j	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=2
	addi	a5, a5, 3
	sh	t0, 0(a7)
	beq	a5, a6, .LBB4_3
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a7, 0(a5)
	andi	a7, a7, 248
	lbu	t0, 1(a5)
	add	a7, a2, a7
	lbu	t1, 2(a5)
	ld	a7, 0(a7)
	srli	t0, t0, 2
	slli	t0, t0, 6
	srli	t1, t1, 2
	andi	t1, t1, 62
	add	t0, t0, t1
	add	a7, a7, t0
	lh	t0, 0(a7)
	addi	t1, t0, 1
	slli	t2, t1, 48
	beqz	t2, .LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=2
	mv	t0, t1
	j	.LBB4_5
.LBB4_8:
	ret
.Lfunc_end4:
	.size	prescan_quantize, .Lfunc_end4-prescan_quantize
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass1
	.type	finish_pass1,@function
finish_pass1:                           # @finish_pass1
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
	mv	s0, a0
	ld	s3, 624(a0)
	ld	a0, 8(a0)
	ld	a1, 32(s3)
	lw	s5, 40(s3)
	ld	a3, 0(a0)
	sd	a1, 160(s0)
	li	s4, 40
	mul	a2, s5, s4
	li	a1, 1
	li	s2, 1
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	li	a0, 31
	slli	a0, a0, 32
	sd	a0, 0(s1)
	li	a1, 63
	slli	a1, a1, 32
	sd	a1, 8(s1)
	sd	a0, 16(s1)
	ld	a0, 624(s0)
	ld	a0, 48(a0)
	mv	a1, s1
	call	update_box
	bge	s2, s5, .LBB5_26
# %bb.1:
	li	s6, 0
	li	s8, 1
	li	s9, 12
	li	s7, 1
	j	.LBB5_4
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	addi	a3, s2, 16
	add	a4, a6, a4
	srliw	a0, a4, 31
	add	a0, a4, a0
	sraiw	a2, a0, 1
	sw	a2, 20(a1)
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	ld	a0, 624(s0)
	ld	a0, 48(a0)
	addi	a2, a2, 1
	sw	a2, 0(a3)
	call	update_box
	ld	a0, 624(s0)
	ld	a0, 48(a0)
	mv	a1, s2
	call	update_box
	addi	s7, s7, 1
	addi	s6, s6, 1
	beq	s7, s5, .LBB5_25
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_12 Depth 2
                                        #     Child Loop BB5_7 Depth 2
	mul	a0, s6, s4
	add	a0, a0, s1
	slli	a1, s7, 1
	addi	a0, a0, 40
	bgeu	s5, a1, .LBB5_9
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	li	a3, 0
	li	a4, 0
	mv	a2, s1
	j	.LBB5_7
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=2
	addi	a2, a2, 40
	mv	a3, a1
	mv	a4, a5
	beq	a2, a0, .LBB5_15
.LBB5_7:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 24(a2)
	mv	a1, a2
	blt	a4, a5, .LBB5_6
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=2
	mv	a5, a4
	mv	a1, a3
	j	.LBB5_6
.LBB5_9:                                # %.preheader3
                                        #   in Loop: Header=BB5_4 Depth=1
	li	a1, 0
	li	a3, 0
	mv	a2, s1
	j	.LBB5_12
.LBB5_10:                               #   in Loop: Header=BB5_12 Depth=2
	mv	a3, a4
	mv	a1, a5
.LBB5_11:                               #   in Loop: Header=BB5_12 Depth=2
	addi	a2, a2, 40
	beq	a2, a0, .LBB5_15
.LBB5_12:                               #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a4, 32(a2)
	bge	a3, a4, .LBB5_11
# %bb.13:                               #   in Loop: Header=BB5_12 Depth=2
	ld	a6, 24(a2)
	mv	a5, a2
	bgtz	a6, .LBB5_10
# %bb.14:                               #   in Loop: Header=BB5_12 Depth=2
	mv	a4, a3
	mv	a5, a1
	j	.LBB5_10
.LBB5_15:                               #   in Loop: Header=BB5_4 Depth=1
	beqz	a1, .LBB5_24
# %bb.16:                               #   in Loop: Header=BB5_4 Depth=1
	lw	a0, 4(a1)
	mul	s2, s7, s4
	add	s2, s1, s2
	sw	a0, 4(s2)
	lw	a2, 12(a1)
	lw	a4, 20(a1)
	lw	a3, 0(a1)
	lw	a5, 8(a1)
	sw	a2, 12(s2)
	sw	a4, 20(s2)
	sw	a3, 0(s2)
	sw	a5, 8(s2)
	lw	a6, 16(a1)
	subw	a7, a0, a3
	slliw	a7, a7, 4
	subw	t0, a2, a5
	mulw	t0, t0, s9
	sw	a6, 16(s2)
	mv	t2, a7
	blt	t0, a7, .LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_4 Depth=1
	mv	t2, t0
.LBB5_18:                               #   in Loop: Header=BB5_4 Depth=1
	subw	t1, a4, a6
	slliw	t3, t1, 3
	li	t1, 2
	bge	t2, t3, .LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_4 Depth=1
	li	a7, 2
	bne	a7, t1, .LBB5_21
	j	.LBB5_2
.LBB5_20:                               #   in Loop: Header=BB5_4 Depth=1
	slt	a7, t0, a7
	xori	a7, a7, 1
	beq	a7, t1, .LBB5_2
.LBB5_21:                               #   in Loop: Header=BB5_4 Depth=1
	bne	a7, s8, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_4 Depth=1
	addi	a3, s2, 8
	add	a2, a5, a2
	srliw	a0, a2, 31
	add	a0, a2, a0
	sraiw	a2, a0, 1
	sw	a2, 12(a1)
	j	.LBB5_3
.LBB5_23:                               #   in Loop: Header=BB5_4 Depth=1
	add	a0, a3, a0
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a2, a0, 1
	sw	a2, 4(a1)
	mv	a3, s2
	j	.LBB5_3
.LBB5_24:
	mv	s5, s7
.LBB5_25:
	sext.w	a0, s5
	mv	s2, s5
	blez	a0, .LBB5_41
.LBB5_26:
	li	a0, 0
	sext.w	a1, s2
	j	.LBB5_29
.LBB5_27:                               #   in Loop: Header=BB5_29 Depth=1
	li	a2, 0
	li	a7, 0
	li	a6, 0
	li	a3, 0
.LBB5_28:                               #   in Loop: Header=BB5_29 Depth=1
	ld	a4, 160(s0)
	ld	a4, 0(a4)
	srai	a5, a2, 1
	add	a7, a7, a5
	div	a7, a7, a2
	add	a4, a4, a0
	sb	a7, 0(a4)
	ld	a4, 160(s0)
	ld	a4, 8(a4)
	add	a6, a6, a5
	div	a6, a6, a2
	add	a4, a4, a0
	sb	a6, 0(a4)
	ld	a4, 160(s0)
	ld	a4, 16(a4)
	add	a3, a3, a5
	div	a2, a3, a2
	add	a4, a4, a0
	addi	a0, a0, 1
	sb	a2, 0(a4)
	beq	a0, a1, .LBB5_41
.LBB5_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_34 Depth 2
                                        #       Child Loop BB5_36 Depth 3
                                        #         Child Loop BB5_38 Depth 4
	mul	a3, a0, s4
	add	a3, s1, a3
	lw	a4, 0(a3)
	lw	t2, 4(a3)
	blt	t2, a4, .LBB5_27
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=1
	lw	a5, 8(a3)
	lw	t1, 12(a3)
	li	a2, 0
	blt	t1, a5, .LBB5_40
# %bb.31:                               #   in Loop: Header=BB5_29 Depth=1
	lw	t3, 20(a3)
	lw	t5, 16(a3)
	mv	a7, a2
	mv	a6, a2
	mv	a3, a2
	blt	t3, t5, .LBB5_28
# %bb.32:                               #   in Loop: Header=BB5_29 Depth=1
	ld	t0, 624(s0)
	li	a3, 0
	li	a6, 0
	li	a7, 0
	li	a2, 0
	ld	t0, 48(t0)
	addiw	t1, t1, 1
	addiw	t2, t2, 1
	subw	t3, t3, t5
	addi	t3, t3, 1
	slli	t4, t5, 3
	addiw	t4, t4, 4
	slli	t5, t5, 1
	j	.LBB5_34
.LBB5_33:                               #   in Loop: Header=BB5_34 Depth=2
	addiw	t6, a4, 1
	addi	a4, a4, 1
	beq	t2, t6, .LBB5_28
.LBB5_34:                               #   Parent Loop BB5_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_36 Depth 3
                                        #         Child Loop BB5_38 Depth 4
	slli	t6, a4, 3
	add	t6, t0, t6
	ld	t6, 0(t6)
	regsw_c	x8, 0x0(x19)		# 100110100000000000000
	slliw	x1, a4, 3
	addi	x1, x1, 4
	mv	x2, a5
	j	.LBB5_36
.LBB5_35:                               #   in Loop: Header=BB5_36 Depth=3
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addiw	x3, x2, 1
	addi	x2, x2, 1
	beq	t1, x3, .LBB5_33
.LBB5_36:                               #   Parent Loop BB5_29 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_38 Depth 4
	regsw_c	x29, 0x5a4(x26)		# 110101110110110100100
	slli	x3, x2, 6
	add	x3, t6, x3
	add	x3, x3, t5
	slliw	x4, x2, 2
	addi	x4, x4, 2
	mv	x5, t4
	mv	x6, t3
	j	.LBB5_38
.LBB5_37:                               #   in Loop: Header=BB5_38 Depth=4
	regsw_c	x12, 0x400(x27)		# 110110110010000000000
	addi	x3, x3, 2
	addiw	x6, x6, -1
	addiw	x5, x5, 8
	beqz	x6, .LBB5_35
.LBB5_38:                               #   Parent Loop BB5_29 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lhu	x7, 0(x3)
	beqz	x7, .LBB5_37
# %bb.39:                               #   in Loop: Header=BB5_38 Depth=4
	regsw_c	x21, 0x6ba(x7)		# 001111010111010111010
	add	a2, a2, x7
	mul	x8, x7, x1
	add	a7, x8, a7
	mul	x8, x7, x4
	add	a6, x8, a6
	mul	x7, x7, x5
	add	a3, x7, a3
	j	.LBB5_37
.LBB5_40:                               #   in Loop: Header=BB5_29 Depth=1
	mv	a7, a2
	mv	a6, a2
	mv	a3, a2
	j	.LBB5_28
.LBB5_41:
	ld	a0, 0(s0)
	sw	s2, 156(s0)
	sw	s2, 44(a0)
	ld	a1, 0(s0)
	ld	a2, 8(a1)
	li	a1, 96
	sw	a1, 40(a0)
	li	a1, 1
	li	s1, 1
	mv	a0, s0
	jalr	a2
	sw	s1, 56(s3)
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
	addi	sp, sp, 96
	ret
.Lfunc_end5:
	.size	finish_pass1, .Lfunc_end5-finish_pass1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function pass2_fs_dither
	.type	pass2_fs_dither,@function
pass2_fs_dither:                        # @pass2_fs_dither
# %bb.0:
	addi	sp, sp, -288
	sd	ra, 280(sp)                     # 8-byte Folded Spill
	sd	s0, 272(sp)                     # 8-byte Folded Spill
	sd	s1, 264(sp)                     # 8-byte Folded Spill
	sd	s2, 256(sp)                     # 8-byte Folded Spill
	sd	s3, 248(sp)                     # 8-byte Folded Spill
	sd	s4, 240(sp)                     # 8-byte Folded Spill
	sd	s5, 232(sp)                     # 8-byte Folded Spill
	sd	s6, 224(sp)                     # 8-byte Folded Spill
	sd	s7, 216(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	sd	s9, 200(sp)                     # 8-byte Folded Spill
	sd	s10, 192(sp)                    # 8-byte Folded Spill
	sd	s11, 184(sp)                    # 8-byte Folded Spill
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	blez	a3, .LBB6_14
# %bb.1:
	mv	a6, a0
	lw	a1, 136(a0)
	ld	a5, 624(a0)
	slli	a0, a1, 1
	add	a0, a0, a1
	addi	a0, a0, 3
	slli	a0, a0, 32
	srli	a0, a0, 32
	beqz	a1, .LBB6_11
# %bb.2:
	li	a4, 0
	ld	a2, 160(a6)
	ld	a7, 48(a5)
	ld	t0, 424(a6)
	ld	t1, 80(a5)
	ld	t2, 0(a2)
	ld	t3, 8(a2)
	ld	t4, 16(a2)
	addi	a1, a1, -1
	slli	a2, a1, 1
	add	a2, a2, a1
	slli	a2, a2, 32
	srli	a2, a2, 32
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	slli	a1, a1, 32
	srli	a1, a1, 32
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	addi	a1, a1, 1
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	slli	a0, a0, 1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	sd	t2, 104(sp)                     # 8-byte Folded Spill
	sd	t0, 96(sp)                      # 8-byte Folded Spill
	sd	t4, 88(sp)                      # 8-byte Folded Spill
	sd	a6, 80(sp)                      # 8-byte Folded Spill
	j	.LBB6_4
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=1
	sh	s5, -2(s6)
	sh	s4, 0(s6)
	ld	a4, 72(sp)                      # 8-byte Folded Reload
	addi	a4, a4, 1
	sh	s11, 2(s6)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	beq	a4, a0, .LBB6_14
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
	slli	a0, a4, 3
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s1, 0(a1)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a1, 72(a5)
	ld	s2, 0(a0)
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	beqz	a1, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	ld	s9, 64(a5)
	li	a3, 0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	add	s1, s1, a0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s2, s2, a0
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	s9, s9, a0
	li	t5, -3
	li	t6, -1
	j	.LBB6_7
.LBB6_6:                                #   in Loop: Header=BB6_4 Depth=1
	ld	s9, 64(a5)
	li	t5, 3
	li	a3, 1
	li	t6, 1
.LBB6_7:                                #   in Loop: Header=BB6_4 Depth=1
	li	a0, 0
	li	a1, 0
	li	a2, 0
	li	s10, 0
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	li	x4, 0
	li	x3, 0
	li	s5, 0
	li	s4, 0
	li	s11, 0
	sw	a3, 72(a5)
	addi	s1, s1, 2
	addi	s9, s9, 2
	regsw_c	x1, 0x9(x16)		# 100000000100000001001
	slli	x1, t5, 1
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	mul	a3, a3, t6
	add	x2, s2, a3
	sd	t6, 128(sp)                     # 8-byte Folded Spill
	sd	x1, 120(sp)                     # 8-byte Folded Spill
	sd	x2, 112(sp)                     # 8-byte Folded Spill
	j	.LBB6_9
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=2
	addi	a0, a0, -1
	sb	a0, 0(s2)
	add	a1, t2, a0
	lbu	a1, 0(a1)
	add	a2, t3, a0
	lbu	a2, 0(a2)
	add	a0, t4, a0
	lbu	a0, 0(a0)
	sub	a3, s7, a1
	sub	a4, s8, a2
	sub	s0, s0, a0
	slli	a0, a3, 1
	add	s5, a3, s5
	add	a0, a0, s5
	sh	a0, -2(s9)
	slli	s5, a3, 2
	add	s10, a3, s10
	add	s5, s5, s10
	slli	a0, a3, 3
	sub	a0, a0, a3
	slli	a1, a4, 1
	add	a2, a4, s4
	add	a1, a1, a2
	sh	a1, 0(s9)
	slli	a1, a4, 2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	s4, a4, x4
	add	s4, a1, s4
	slli	a1, a4, 3
	sub	a1, a1, a4
	slli	a2, s0, 1
	add	a5, s0, s11
	add	a2, a2, a5
	sh	a2, 2(s9)
	slli	a2, s0, 2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	s11, s0, x3
	add	s11, a2, s11
	slli	a2, s0, 3
	sub	a2, a2, s0
	add	s2, s2, t6
	add	s1, s1, t5
	mv	s9, s6
	mv	s10, a3
	regsw_c	x2, 0x0(x18)		# 100100001000000000000
	mv	x4, a4
	mv	x3, s0
	beq	s2, x2, .LBB6_3
.LBB6_9:                                #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	s6, s9, x1
	lh	a3, -2(s6)
	add	a0, a0, a3
	lh	a3, 0(s6)
	addi	a0, a0, 8
	sraiw	a0, a0, 4
	lh	a4, 2(s6)
	add	a1, a1, a3
	addi	a1, a1, 8
	sraiw	a1, a1, 4
	add	a2, a2, a4
	addi	a2, a2, 8
	sraiw	a2, a2, 4
	slli	a0, a0, 2
	add	a0, t1, a0
	lw	a0, 0(a0)
	slli	a1, a1, 2
	add	a1, t1, a1
	lw	a1, 0(a1)
	slli	a2, a2, 2
	add	a2, t1, a2
	lw	a2, 0(a2)
	lbu	a3, -2(s1)
	lbu	a4, -1(s1)
	lbu	a5, 0(s1)
	addw	a0, a0, a3
	addw	a1, a1, a4
	addw	a2, a2, a5
	add	a0, t0, a0
	lbu	s7, 0(a0)
	add	a1, t0, a1
	lbu	s8, 0(a1)
	add	a2, t0, a2
	lbu	s0, 0(a2)
	andi	a0, s7, 248
	add	a0, a7, a0
	ld	s3, 0(a0)
	srli	a2, s8, 2
	srli	a3, s0, 3
	slli	a0, a2, 6
	slli	a1, a3, 1
	add	a0, a0, a1
	add	s3, s3, a0
	lhu	a0, 0(s3)
	bnez	a0, .LBB6_8
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=2
	srli	a1, s7, 3
	mv	a0, a6
	sd	s11, 176(sp)                    # 8-byte Folded Spill
	mv	s11, a7
	sd	s10, 136(sp)                    # 8-byte Folded Spill
	mv	s10, t1
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	mv	s4, t3
	sd	s5, 168(sp)                     # 8-byte Folded Spill
	mv	s5, t5
	regsw_c	x17, 0x124(x4)		# 001001000100100100100
	sd	x3, 152(sp)                     # 8-byte Folded Spill
	sd	x4, 144(sp)                     # 8-byte Folded Spill
	call	fill_inverse_cmap
	ld	x4, 144(sp)                     # 8-byte Folded Reload
	ld	x3, 152(sp)                     # 8-byte Folded Reload
	ld	x2, 112(sp)                     # 8-byte Folded Reload
	ld	x1, 120(sp)                     # 8-byte Folded Reload
	ld	t6, 128(sp)                     # 8-byte Folded Reload
	mv	t5, s5
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	t4, 88(sp)                      # 8-byte Folded Reload
	mv	t3, s4
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	t2, 104(sp)                     # 8-byte Folded Reload
	mv	t1, s10
	ld	s10, 136(sp)                    # 8-byte Folded Reload
	ld	t0, 96(sp)                      # 8-byte Folded Reload
	mv	a7, s11
	ld	s11, 176(sp)                    # 8-byte Folded Reload
	ld	a6, 80(sp)                      # 8-byte Folded Reload
	lhu	a0, 0(s3)
	j	.LBB6_8
.LBB6_11:
	lw	a1, 72(a5)
	ld	a2, 64(a5)
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	seqz	a1, a1
	addi	a4, a1, -1
	and	a4, a4, a0
	slli	a4, a4, 1
	add	a4, a2, a4
	sh	zero, 0(a4)
	sh	zero, 2(a4)
	addiw	a3, a3, -1
	sh	zero, 4(a4)
	bnez	a3, .LBB6_12
# %bb.13:
	sw	a1, 72(a5)
.LBB6_14:
	ld	ra, 280(sp)                     # 8-byte Folded Reload
	ld	s0, 272(sp)                     # 8-byte Folded Reload
	ld	s1, 264(sp)                     # 8-byte Folded Reload
	ld	s2, 256(sp)                     # 8-byte Folded Reload
	ld	s3, 248(sp)                     # 8-byte Folded Reload
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	ld	s5, 232(sp)                     # 8-byte Folded Reload
	ld	s6, 224(sp)                     # 8-byte Folded Reload
	ld	s7, 216(sp)                     # 8-byte Folded Reload
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	ld	s9, 200(sp)                     # 8-byte Folded Reload
	ld	s10, 192(sp)                    # 8-byte Folded Reload
	ld	s11, 184(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 288
	ret
.Lfunc_end6:
	.size	pass2_fs_dither, .Lfunc_end6-pass2_fs_dither
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function pass2_no_dither
	.type	pass2_no_dither,@function
pass2_no_dither:                        # @pass2_no_dither
# %bb.0:
	blez	a3, .LBB7_9
# %bb.1:
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
	mv	s3, a0
	lw	a0, 136(a0)
	beqz	a0, .LBB7_8
# %bb.2:
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	ld	a1, 624(s3)
	li	s4, 0
	ld	s5, 48(a1)
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
	addi	s6, a0, 1
	j	.LBB7_4
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	addi	s4, s4, 1
	beq	s4, s0, .LBB7_8
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	slli	a0, s4, 3
	add	a1, s2, a0
	add	a0, s1, a0
	ld	s9, 0(a0)
	ld	s7, 0(a1)
	add	s8, s9, s6
	j	.LBB7_6
.LBB7_5:                                #   in Loop: Header=BB7_6 Depth=2
	addi	a0, a0, -1
	addi	a1, s9, 1
	sb	a0, 0(s9)
	addi	s7, s7, 3
	mv	s9, a1
	beq	a1, s8, .LBB7_3
.LBB7_6:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a2, 1(s7)
	lbu	a3, 2(s7)
	lbu	a1, 0(s7)
	srli	a2, a2, 2
	srli	a3, a3, 3
	andi	a0, a1, 248
	add	a0, s5, a0
	ld	s10, 0(a0)
	slli	a0, a2, 6
	slli	a4, a3, 1
	add	a0, a0, a4
	add	s10, s10, a0
	lhu	a0, 0(s10)
	bnez	a0, .LBB7_5
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=2
	srli	a1, a1, 3
	mv	a0, s3
	call	fill_inverse_cmap
	lbu	a0, 0(s10)
	j	.LBB7_5
.LBB7_8:
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
.LBB7_9:
	ret
.Lfunc_end7:
	.size	pass2_no_dither, .Lfunc_end7-pass2_no_dither
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass2
	.type	finish_pass2,@function
finish_pass2:                           # @finish_pass2
# %bb.0:
	ret
.Lfunc_end8:
	.size	finish_pass2, .Lfunc_end8-finish_pass2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function update_box
	.type	update_box,@function
update_box:                             # @update_box
# %bb.0:
	lw	a5, 0(a1)
	lw	a2, 4(a1)
	lw	t0, 8(a1)
	lw	a4, 12(a1)
	lw	a6, 16(a1)
	lw	a3, 20(a1)
	mv	a7, a5
	bge	a5, a2, .LBB9_13
# %bb.1:
	blt	a4, t0, .LBB9_13
# %bb.2:
	blt	a3, a6, .LBB9_13
# %bb.3:
	mv	t2, a2
	blt	a7, a2, .LBB9_5
# %bb.4:
	mv	t2, a7
.LBB9_5:
	addiw	t1, a4, 1
	addiw	t2, t2, 1
	subw	t3, a3, a6
	addi	t3, t3, 1
	slli	t4, a6, 1
.LBB9_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_8 Depth 3
	slli	t5, a5, 3
	add	t5, a0, t5
	ld	t5, 0(t5)
	mv	t6, t0
.LBB9_7:                                #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_8 Depth 3
	regsw_c	x29, 0x0(x18)		# 100101110100000000000
	slli	x1, t6, 6
	add	x1, t5, x1
	add	x1, x1, t4
	mv	x2, t3
.LBB9_8:                                #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lhu	x3, 0(x1)
	bnez	x3, .LBB9_12
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x2, x2, -1
	addi	x1, x1, 2
	bnez	x2, .LBB9_8
# %bb.10:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x2, 0x0(x16)		# 100000001000000000000
	addiw	x1, t6, 1
	addi	t6, t6, 1
	bne	t1, x1, .LBB9_7
# %bb.11:                               #   in Loop: Header=BB9_6 Depth=1
	addiw	t5, a5, 1
	addi	a5, a5, 1
	bne	t2, t5, .LBB9_6
	j	.LBB9_13
.LBB9_12:
	sw	a5, 0(a1)
	mv	a7, a5
.LBB9_13:
	sext.w	a5, a7
	bge	a5, a2, .LBB9_24
# %bb.14:
	blt	a4, t0, .LBB9_24
# %bb.15:
	blt	a3, a6, .LBB9_24
# %bb.16:
	addiw	t1, a4, 1
	sext.w	t2, a7
	subw	t3, a3, a6
	addi	t3, t3, 1
	slli	t4, a6, 1
	mv	t6, a2
.LBB9_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_18 Depth 2
                                        #       Child Loop BB9_19 Depth 3
	mv	t5, t6
	slli	t6, t6, 3
	add	t6, a0, t6
	ld	t6, 0(t6)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t0
.LBB9_18:                               #   Parent Loop BB9_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_19 Depth 3
	regsw_c	x29, 0x0(x26)		# 110101110100000000000
	slli	x2, x1, 6
	add	x2, t6, x2
	add	x2, x2, t4
	mv	x3, t3
.LBB9_19:                               #   Parent Loop BB9_17 Depth=1
                                        #     Parent Loop BB9_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lhu	x4, 0(x2)
	bnez	x4, .LBB9_23
# %bb.20:                               #   in Loop: Header=BB9_19 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x3, x3, -1
	addi	x2, x2, 2
	bnez	x3, .LBB9_19
# %bb.21:                               #   in Loop: Header=BB9_18 Depth=2
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addiw	x2, x1, 1
	addi	x1, x1, 1
	bne	t1, x2, .LBB9_18
# %bb.22:                               #   in Loop: Header=BB9_17 Depth=1
	addi	t6, t5, -1
	blt	t2, t5, .LBB9_17
	j	.LBB9_24
.LBB9_23:
	sw	t5, 4(a1)
	mv	a2, t5
.LBB9_24:
	sext.w	t1, a2
	bge	t0, a4, .LBB9_37
# %bb.25:
	sext.w	t2, a7
	blt	t1, t2, .LBB9_37
# %bb.26:
	blt	a3, a6, .LBB9_37
# %bb.27:
	mv	t4, t0
	blt	a4, t0, .LBB9_29
# %bb.28:
	mv	t4, a4
.LBB9_29:
	addiw	t3, a2, 1
	addiw	t4, t4, 1
	subw	t6, a3, a6
	addi	t6, t6, 1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	slli	x1, a6, 1
	mv	t5, t0
.LBB9_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_31 Depth 2
                                        #       Child Loop BB9_32 Depth 3
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	slli	x2, t5, 6
	mv	x3, t2
.LBB9_31:                               #   Parent Loop BB9_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_32 Depth 3
	regsw_c	x29, 0x7e0(x26)		# 110101110111111100000
	slli	x4, x3, 3
	add	x4, a0, x4
	ld	x4, 0(x4)
	add	x5, x2, x1
	add	x4, x4, x5
	mv	x5, t6
.LBB9_32:                               #   Parent Loop BB9_30 Depth=1
                                        #     Parent Loop BB9_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lhu	x6, 0(x4)
	bnez	x6, .LBB9_36
# %bb.33:                               #   in Loop: Header=BB9_32 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x5, x5, -1
	addi	x4, x4, 2
	bnez	x5, .LBB9_32
# %bb.34:                               #   in Loop: Header=BB9_31 Depth=2
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addiw	x4, x3, 1
	addi	x3, x3, 1
	bne	t3, x4, .LBB9_31
# %bb.35:                               #   in Loop: Header=BB9_30 Depth=1
	regsw_c	x2, 0x0(x16)		# 100000001000000000000
	addiw	x2, t5, 1
	addi	t5, t5, 1
	bne	t4, x2, .LBB9_30
	j	.LBB9_37
.LBB9_36:
	sw	t5, 8(a1)
	mv	t0, t5
.LBB9_37:
	sext.w	t2, t0
	bge	t2, a4, .LBB9_48
# %bb.38:
	sext.w	t3, a7
	blt	t1, t3, .LBB9_48
# %bb.39:
	blt	a3, a6, .LBB9_48
# %bb.40:
	addiw	t4, a2, 1
	sext.w	t5, t0
	subw	t6, a3, a6
	addi	t6, t6, 1
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	slli	x1, a6, 1
	mv	x3, a4
.LBB9_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_42 Depth 2
                                        #       Child Loop BB9_43 Depth 3
	regsw_c	x8, 0x0(x27)		# 110110100000000000000
	mv	x2, x3
	slli	x3, x3, 6
	mv	x4, t3
.LBB9_42:                               #   Parent Loop BB9_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_43 Depth 3
	regsw_c	x29, 0x7e0(x26)		# 110101110111111100000
	slli	x5, x4, 3
	add	x5, a0, x5
	ld	x5, 0(x5)
	add	x6, x3, x1
	add	x5, x5, x6
	mv	x6, t6
.LBB9_43:                               #   Parent Loop BB9_41 Depth=1
                                        #     Parent Loop BB9_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lhu	x7, 0(x5)
	bnez	x7, .LBB9_47
# %bb.44:                               #   in Loop: Header=BB9_43 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x6, x6, -1
	addi	x5, x5, 2
	bnez	x6, .LBB9_43
# %bb.45:                               #   in Loop: Header=BB9_42 Depth=2
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addiw	x5, x4, 1
	addi	x4, x4, 1
	bne	t4, x5, .LBB9_42
# %bb.46:                               #   in Loop: Header=BB9_41 Depth=1
	regsw_c	x16, 0x0(x24)		# 110001000000000000000
	addi	x3, x2, -1
	blt	t5, x2, .LBB9_41
	j	.LBB9_48
.LBB9_47:
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	sw	x2, 12(a1)
	mv	a4, x2
.LBB9_48:
	subw	t4, a4, t0
	bge	a6, a3, .LBB9_61
# %bb.49:
	sext.w	t3, a7
	blt	t1, t3, .LBB9_61
# %bb.50:
	regsw_c	x2, 0x0(x16)		# 100000001000000000000
	sext.w	x3, t0
	sext.w	t5, a4
	blt	t5, x3, .LBB9_61
# %bb.51:
	mv	t6, a6
	blt	a3, a6, .LBB9_53
# %bb.52:
	mv	t6, a3
.LBB9_53:
	addiw	t5, a2, 1
	addiw	t6, t6, 1
	regsw_c	x8, 0x0(x19)		# 100110100000000000000
	addi	x2, t4, 1
	slli	x3, x3, 6
	mv	x1, a6
.LBB9_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_55 Depth 2
                                        #       Child Loop BB9_56 Depth 3
	regsw_c	x0, 0x0(x26)		# 110100000000000000000
	slli	x4, x1, 1
	mv	x5, t3
.LBB9_55:                               #   Parent Loop BB9_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_56 Depth 3
	regsw_c	x29, 0x7f0(x26)		# 110101110111111110000
	slli	x6, x5, 3
	add	x6, a0, x6
	ld	x6, 0(x6)
	add	x7, x3, x4
	add	x6, x6, x7
	mv	x7, x2
.LBB9_56:                               #   Parent Loop BB9_54 Depth=1
                                        #     Parent Loop BB9_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lhu	x8, 0(x6)
	bnez	x8, .LBB9_60
# %bb.57:                               #   in Loop: Header=BB9_56 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x7, x7, -1
	addi	x6, x6, 64
	bnez	x7, .LBB9_56
# %bb.58:                               #   in Loop: Header=BB9_55 Depth=2
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addiw	x6, x5, 1
	addi	x5, x5, 1
	bne	t5, x6, .LBB9_55
# %bb.59:                               #   in Loop: Header=BB9_54 Depth=1
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addiw	x4, x1, 1
	addi	x1, x1, 1
	bne	t6, x4, .LBB9_54
	j	.LBB9_61
.LBB9_60:
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	sw	x1, 16(a1)
	mv	a6, x1
.LBB9_61:
	sext.w	t3, a6
	bge	t3, a3, .LBB9_72
# %bb.62:
	sext.w	t5, a7
	blt	t1, t5, .LBB9_72
# %bb.63:
	regsw_c	x2, 0x0(x16)		# 100000001000000000000
	sext.w	x1, t0
	sext.w	t0, a4
	blt	t0, x1, .LBB9_72
# %bb.64:
	addiw	t0, a2, 1
	addi	t6, t4, 1
	regsw_c	x0, 0x0(x26)		# 110100000000000000000
	slli	x1, x1, 6
	mv	x3, a3
.LBB9_65:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_66 Depth 2
                                        #       Child Loop BB9_67 Depth 3
	regsw_c	x8, 0x0(x27)		# 110110100000000000000
	mv	x2, x3
	slli	x3, x3, 1
	mv	x4, t5
.LBB9_66:                               #   Parent Loop BB9_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_67 Depth 3
	regsw_c	x29, 0x7e0(x26)		# 110101110111111100000
	slli	x5, x4, 3
	add	x5, a0, x5
	ld	x5, 0(x5)
	add	x6, x1, x3
	add	x5, x5, x6
	mv	x6, t6
.LBB9_67:                               #   Parent Loop BB9_65 Depth=1
                                        #     Parent Loop BB9_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lhu	x7, 0(x5)
	bnez	x7, .LBB9_71
# %bb.68:                               #   in Loop: Header=BB9_67 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x6, x6, -1
	addi	x5, x5, 64
	bnez	x6, .LBB9_67
# %bb.69:                               #   in Loop: Header=BB9_66 Depth=2
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addiw	x5, x4, 1
	addi	x4, x4, 1
	bne	t0, x5, .LBB9_66
# %bb.70:                               #   in Loop: Header=BB9_65 Depth=1
	regsw_c	x16, 0x0(x24)		# 110001000000000000000
	addi	x3, x2, -1
	blt	t3, x2, .LBB9_65
	j	.LBB9_72
.LBB9_71:
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	sw	x2, 20(a1)
	mv	a3, x2
.LBB9_72:
	subw	a7, a2, a7
	slliw	t0, a7, 4
	li	a7, 12
	mulw	t4, t4, a7
	subw	a7, a3, a6
	slliw	a6, a7, 3
	mul	t0, t0, t0
	mul	t4, t4, t4
	add	t0, t4, t0
	mul	a6, a6, a6
	add	a6, t0, a6
	sd	a6, 24(a1)
	bge	t1, a5, .LBB9_74
# %bb.73:
	sd	zero, 32(a1)
	ret
.LBB9_74:
	sext.w	a6, a4
	bge	a6, t2, .LBB9_76
# %bb.75:
	sd	zero, 32(a1)
	ret
.LBB9_76:
	li	a6, 0
	addiw	a4, a4, 1
	addiw	a2, a2, 1
	addi	a7, a7, 1
	sext.w	a3, a3
	slli	t0, t3, 1
	j	.LBB9_78
.LBB9_77:                               #   in Loop: Header=BB9_78 Depth=1
	addiw	t1, a5, 1
	addi	a5, a5, 1
	beq	a2, t1, .LBB9_83
.LBB9_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_80 Depth 2
                                        #       Child Loop BB9_81 Depth 3
	blt	a3, t3, .LBB9_77
# %bb.79:                               # %.preheader
                                        #   in Loop: Header=BB9_78 Depth=1
	slli	t1, a5, 3
	add	t1, a0, t1
	ld	t1, 0(t1)
	mv	t4, t2
.LBB9_80:                               #   Parent Loop BB9_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_81 Depth 3
	slli	t5, t4, 6
	add	t5, t1, t5
	add	t5, t5, t0
	mv	t6, a7
.LBB9_81:                               #   Parent Loop BB9_78 Depth=1
                                        #     Parent Loop BB9_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x18, 0x0(x18)		# 100101001000000000000
	lhu	x1, 0(t5)
	snez	x1, x1
	add	a6, a6, x1
	addiw	t6, t6, -1
	addi	t5, t5, 2
	bnez	t6, .LBB9_81
# %bb.82:                               #   in Loop: Header=BB9_80 Depth=2
	addiw	t5, t4, 1
	addi	t4, t4, 1
	bne	a4, t5, .LBB9_80
	j	.LBB9_77
.LBB9_83:
	sd	a6, 32(a1)
	ret
.Lfunc_end9:
	.size	update_box, .Lfunc_end9-update_box
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function fill_inverse_cmap
	.type	fill_inverse_cmap,@function
fill_inverse_cmap:                      # @fill_inverse_cmap
# %bb.0:
	addi	sp, sp, -2048
	addi	sp, sp, -400
	ld	a4, 624(a0)
	ld	a4, 48(a4)
	slliw	t0, a1, 3
	andi	a5, t0, -32
	addi	a5, a5, 4
	slliw	t3, a2, 2
	andi	a6, t3, -32
	lw	t1, 156(a0)
	addi	a6, a6, 2
	slliw	t5, a3, 3
	andi	a7, t5, -32
	addi	a7, a7, 4
	blez	t1, .LBB10_29
# %bb.1:
	ori	t0, t0, 28
	add	t2, a5, t0
	srliw	t2, t2, 1
	ori	t3, t3, 30
	add	t4, a6, t3
	srliw	t4, t4, 1
	regsw_c	x0, 0x1b6(x16)		# 100000000000110110110
	ld	x3, 160(a0)
	ori	t5, t5, 28
	add	t6, a7, t5
	srliw	t6, t6, 1
	ld	x1, 0(x3)
	ld	x2, 8(x3)
	ld	x3, 16(x3)
	regsw_c	x15, 0x180(x18)		# 100100111100110000000
	slli	x5, t1, 3
	addi	x4, sp, 400
	add	x5, x4, x5
	lui	x6, 524288
	addiw	x6, x6, -1
	j	.LBB10_3
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x13, 0x598(x27)		# 110110110110110011000
	addi	x4, x4, 8
	addi	x3, x3, 1
	addi	x2, x2, 1
	addi	x1, x1, 1
	mv	x6, x8
	beq	x4, x5, .LBB10_25
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	lbu	x8, 0(x1)
	bge	x8, a5, .LBB10_8
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x14, 0x0(x27)		# 110110111000000000000
	subw	x7, x8, a5
	slliw	x7, x7, 1
	mul	x7, x7, x7
.LBB10_5:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x15, 0x480(x27)		# 110110111110010000000
	subw	x8, x8, t0
	slliw	x8, x8, 1
	mul	x8, x8, x8
	lbu	x9, 0(x2)
	bge	x9, a6, .LBB10_12
.LBB10_6:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x15, 0x7c0(x27)		# 110110111111111000000
	subw	x10, x9, a6
	slli	x11, x10, 1
	addw	x10, x11, x10
	mul	x10, x10, x10
	add	x7, x10, x7
.LBB10_7:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	subw	x9, x9, t3
	j	.LBB10_16
.LBB10_8:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	t0, x8, .LBB10_10
# %bb.9:                                #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x14, 0x0(x27)		# 110110111000000000000
	subw	x7, x8, t0
	slliw	x7, x7, 1
	mul	x7, x7, x7
	j	.LBB10_11
.LBB10_10:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	li	x7, 0
	bgeu	t2, x8, .LBB10_5
.LBB10_11:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x15, 0x480(x27)		# 110110111110010000000
	subw	x8, x8, a5
	slliw	x8, x8, 1
	mul	x8, x8, x8
	lbu	x9, 0(x2)
	blt	x9, a6, .LBB10_6
.LBB10_12:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	t3, x9, .LBB10_14
# %bb.13:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x15, 0x7c0(x27)		# 110110111111111000000
	subw	x10, x9, t3
	slli	x11, x10, 1
	addw	x10, x11, x10
	mul	x10, x10, x10
	add	x7, x10, x7
	j	.LBB10_15
.LBB10_14:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bgeu	t4, x9, .LBB10_7
.LBB10_15:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	subw	x9, x9, a6
.LBB10_16:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x31, 0x480(x27)		# 110111111110010000000
	slli	x10, x9, 1
	addw	x9, x10, x9
	mul	x9, x9, x9
	lbu	x10, 0(x3)
	bge	x10, a7, .LBB10_19
# %bb.17:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x30, 0x0(x27)		# 110111111000000000000
	subw	x11, x10, a7
	mul	x11, x11, x11
	add	x7, x11, x7
.LBB10_18:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	subw	x10, x10, t5
	j	.LBB10_23
.LBB10_19:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	t5, x10, .LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x30, 0x0(x27)		# 110111111000000000000
	subw	x11, x10, t5
	mul	x11, x11, x11
	add	x7, x11, x7
	j	.LBB10_22
.LBB10_21:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bgeu	t6, x10, .LBB10_18
.LBB10_22:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	subw	x10, x10, a7
.LBB10_23:                              #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x30, 0x6c0(x31)		# 111111111011011000000
	mul	x10, x10, x10
	add	x8, x9, x8
	add	x8, x8, x10
	sd	x7, 0(x4)
	blt	x8, x6, .LBB10_2
# %bb.24:                               #   in Loop: Header=BB10_3 Depth=1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x8, x6
	j	.LBB10_2
.LBB10_25:                              # %.preheader
	li	t2, 0
	li	t0, 0
	addi	t3, sp, 400
	addi	t4, sp, 144
	j	.LBB10_27
.LBB10_26:                              #   in Loop: Header=BB10_27 Depth=1
	addi	t2, t2, 1
	addi	t3, t3, 8
	beq	t1, t2, .LBB10_30
.LBB10_27:                              # =>This Inner Loop Header: Depth=1
	ld	t5, 0(t3)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x8, t5, .LBB10_26
# %bb.28:                               #   in Loop: Header=BB10_27 Depth=1
	add	t5, t4, t0
	addiw	t0, t0, 1
	sb	t2, 0(t5)
	j	.LBB10_26
.LBB10_29:
	li	t0, 0
.LBB10_30:
	lui	t1, 524288
	addiw	t1, t1, -1
	sd	t1, 400(sp)
	sd	t1, 408(sp)
	sd	t1, 416(sp)
	sd	t1, 424(sp)
	sd	t1, 432(sp)
	sd	t1, 440(sp)
	sd	t1, 448(sp)
	sd	t1, 456(sp)
	sd	t1, 464(sp)
	sd	t1, 472(sp)
	sd	t1, 480(sp)
	sd	t1, 488(sp)
	sd	t1, 496(sp)
	sd	t1, 504(sp)
	sd	t1, 512(sp)
	sd	t1, 520(sp)
	sd	t1, 528(sp)
	sd	t1, 536(sp)
	sd	t1, 544(sp)
	sd	t1, 552(sp)
	sd	t1, 560(sp)
	sd	t1, 568(sp)
	sd	t1, 576(sp)
	sd	t1, 584(sp)
	sd	t1, 592(sp)
	sd	t1, 600(sp)
	sd	t1, 608(sp)
	sd	t1, 616(sp)
	sd	t1, 624(sp)
	sd	t1, 632(sp)
	sd	t1, 640(sp)
	sd	t1, 648(sp)
	sd	t1, 656(sp)
	sd	t1, 664(sp)
	sd	t1, 672(sp)
	sd	t1, 680(sp)
	sd	t1, 688(sp)
	sd	t1, 696(sp)
	sd	t1, 704(sp)
	sd	t1, 712(sp)
	sd	t1, 720(sp)
	sd	t1, 728(sp)
	sd	t1, 736(sp)
	sd	t1, 744(sp)
	sd	t1, 752(sp)
	sd	t1, 760(sp)
	sd	t1, 768(sp)
	sd	t1, 776(sp)
	sd	t1, 784(sp)
	sd	t1, 792(sp)
	sd	t1, 800(sp)
	sd	t1, 808(sp)
	sd	t1, 816(sp)
	sd	t1, 824(sp)
	sd	t1, 832(sp)
	sd	t1, 840(sp)
	sd	t1, 848(sp)
	sd	t1, 856(sp)
	sd	t1, 864(sp)
	sd	t1, 872(sp)
	sd	t1, 880(sp)
	sd	t1, 888(sp)
	sd	t1, 896(sp)
	sd	t1, 904(sp)
	sd	t1, 912(sp)
	sd	t1, 920(sp)
	sd	t1, 928(sp)
	sd	t1, 936(sp)
	sd	t1, 944(sp)
	sd	t1, 952(sp)
	sd	t1, 960(sp)
	sd	t1, 968(sp)
	sd	t1, 976(sp)
	sd	t1, 984(sp)
	sd	t1, 992(sp)
	sd	t1, 1000(sp)
	sd	t1, 1008(sp)
	sd	t1, 1016(sp)
	sd	t1, 1024(sp)
	sd	t1, 1032(sp)
	sd	t1, 1040(sp)
	sd	t1, 1048(sp)
	sd	t1, 1056(sp)
	sd	t1, 1064(sp)
	sd	t1, 1072(sp)
	sd	t1, 1080(sp)
	sd	t1, 1088(sp)
	sd	t1, 1096(sp)
	sd	t1, 1104(sp)
	sd	t1, 1112(sp)
	sd	t1, 1120(sp)
	sd	t1, 1128(sp)
	sd	t1, 1136(sp)
	sd	t1, 1144(sp)
	sd	t1, 1152(sp)
	sd	t1, 1160(sp)
	sd	t1, 1168(sp)
	sd	t1, 1176(sp)
	sd	t1, 1184(sp)
	sd	t1, 1192(sp)
	sd	t1, 1200(sp)
	sd	t1, 1208(sp)
	sd	t1, 1216(sp)
	sd	t1, 1224(sp)
	sd	t1, 1232(sp)
	sd	t1, 1240(sp)
	sd	t1, 1248(sp)
	sd	t1, 1256(sp)
	sd	t1, 1264(sp)
	sd	t1, 1272(sp)
	sd	t1, 1280(sp)
	sd	t1, 1288(sp)
	sd	t1, 1296(sp)
	sd	t1, 1304(sp)
	sd	t1, 1312(sp)
	sd	t1, 1320(sp)
	sd	t1, 1328(sp)
	sd	t1, 1336(sp)
	sd	t1, 1344(sp)
	sd	t1, 1352(sp)
	sd	t1, 1360(sp)
	sd	t1, 1368(sp)
	sd	t1, 1376(sp)
	sd	t1, 1384(sp)
	sd	t1, 1392(sp)
	sd	t1, 1400(sp)
	sd	t1, 1408(sp)
	sd	t1, 1416(sp)
	blez	t0, .LBB10_99
# %bb.31:
	ld	a0, 160(a0)
	li	t1, 0
	ld	t2, 8(a0)
	ld	t3, 16(a0)
	addi	t4, sp, 528
	addi	t5, sp, 31
	addi	t6, sp, 1552
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	addi	x1, sp, 144
	li	x2, 24
	j	.LBB10_33
.LBB10_32:                              #   in Loop: Header=BB10_33 Depth=1
	addi	t1, t1, 1
	beq	t1, t0, .LBB10_99
.LBB10_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_35 Depth 2
	regsw_c	x9, 0x7ae(x27)		# 110110100111110101110
	add	x3, x1, t1
	lbu	x3, 0(x3)
	ld	x4, 0(a0)
	add	x4, x4, x3
	lbu	x4, 0(x4)
	add	x5, t2, x3
	lbu	x5, 0(x5)
	regsw_c	x15, 0x376(x23)		# 101110111101101110110
	subw	x4, a5, x4
	slliw	x6, x4, 1
	mul	x4, x6, x6
	subw	x5, a6, x5
	add	x7, t3, x3
	lbu	x7, 0(x7)
	slli	x8, x5, 1
	regsw_c	x27, 0x7fe(x31)		# 111111101111111111110
	addw	x8, x8, x5
	mul	x5, x8, x8
	subw	x7, a7, x7
	mul	x9, x7, x7
	add	x4, x4, x9
	add	x4, x5, x4
	slli	x6, x6, 5
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	addi	x5, x6, 256
	mul	x15, x8, x2
	addi	x6, x15, 144
	slli	x9, x7, 4
	addi	x7, x9, 64
	addi	x8, x9, 192
	addi	x9, x9, 320
	regsw_c	x13, 0x5b4(x27)		# 110110110110110110100
	addi	x10, x15, 432
	addi	x11, x15, 720
	addi	x12, x15, 1008
	addi	x13, x15, 1296
	addi	x14, x15, 1584
	addi	x15, x15, 1872
	mv	x16, t5
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x17, t4
	j	.LBB10_35
.LBB10_34:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x13, 0x480(x31)		# 111110110110010000000
	add	x4, x4, x5
	addi	x5, x5, 512
	addi	x17, x17, 256
	addi	x16, x16, 32
	beq	x17, t6, .LBB10_32
.LBB10_35:                              #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	ld	x18, -128(x17)
	blt	x4, x18, .LBB10_67
# %bb.36:                               #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, -120(x17)
	add	x18, x4, x7
	blt	x18, x19, .LBB10_68
.LBB10_37:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, -112(x17)
	add	x18, x18, x8
	blt	x18, x19, .LBB10_69
.LBB10_38:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, -104(x17)
	add	x18, x18, x9
	blt	x18, x19, .LBB10_70
.LBB10_39:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, -96(x17)
	add	x18, x6, x4
	blt	x18, x19, .LBB10_71
.LBB10_40:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -88(x17)
	add	x19, x18, x7
	blt	x19, x20, .LBB10_72
.LBB10_41:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -80(x17)
	add	x19, x19, x8
	blt	x19, x20, .LBB10_73
.LBB10_42:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -72(x17)
	add	x19, x19, x9
	blt	x19, x20, .LBB10_74
.LBB10_43:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, -64(x17)
	add	x18, x10, x18
	blt	x18, x19, .LBB10_75
.LBB10_44:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -56(x17)
	add	x19, x18, x7
	blt	x19, x20, .LBB10_76
.LBB10_45:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -48(x17)
	add	x19, x19, x8
	blt	x19, x20, .LBB10_77
.LBB10_46:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -40(x17)
	add	x19, x19, x9
	blt	x19, x20, .LBB10_78
.LBB10_47:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, -32(x17)
	add	x18, x11, x18
	blt	x18, x19, .LBB10_79
.LBB10_48:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -24(x17)
	add	x19, x18, x7
	blt	x19, x20, .LBB10_80
.LBB10_49:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -16(x17)
	add	x19, x19, x8
	blt	x19, x20, .LBB10_81
.LBB10_50:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, -8(x17)
	add	x19, x19, x9
	blt	x19, x20, .LBB10_82
.LBB10_51:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, 0(x17)
	add	x18, x12, x18
	blt	x18, x19, .LBB10_83
.LBB10_52:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 8(x17)
	add	x19, x18, x7
	blt	x19, x20, .LBB10_84
.LBB10_53:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 16(x17)
	add	x19, x19, x8
	blt	x19, x20, .LBB10_85
.LBB10_54:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 24(x17)
	add	x19, x19, x9
	blt	x19, x20, .LBB10_86
.LBB10_55:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, 32(x17)
	add	x18, x13, x18
	blt	x18, x19, .LBB10_87
.LBB10_56:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 40(x17)
	add	x19, x18, x7
	blt	x19, x20, .LBB10_88
.LBB10_57:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 48(x17)
	add	x19, x19, x8
	blt	x19, x20, .LBB10_89
.LBB10_58:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 56(x17)
	add	x19, x19, x9
	blt	x19, x20, .LBB10_90
.LBB10_59:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, 64(x17)
	add	x18, x14, x18
	blt	x18, x19, .LBB10_91
.LBB10_60:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 72(x17)
	add	x19, x18, x7
	blt	x19, x20, .LBB10_92
.LBB10_61:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 80(x17)
	add	x19, x19, x8
	blt	x19, x20, .LBB10_93
.LBB10_62:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x20, 88(x17)
	add	x19, x19, x9
	blt	x19, x20, .LBB10_94
.LBB10_63:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, 96(x17)
	add	x18, x15, x18
	blt	x18, x19, .LBB10_95
.LBB10_64:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, 104(x17)
	add	x18, x18, x7
	blt	x18, x19, .LBB10_96
.LBB10_65:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, 112(x17)
	add	x18, x18, x8
	blt	x18, x19, .LBB10_97
.LBB10_66:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	ld	x19, 120(x17)
	add	x18, x18, x9
	bge	x18, x19, .LBB10_34
	j	.LBB10_98
.LBB10_67:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x4, -128(x17)
	sb	x3, -15(x16)
	ld	x19, -120(x17)
	add	x18, x4, x7
	bge	x18, x19, .LBB10_37
.LBB10_68:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, -120(x17)
	sb	x3, -14(x16)
	ld	x19, -112(x17)
	add	x18, x18, x8
	bge	x18, x19, .LBB10_38
.LBB10_69:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, -112(x17)
	sb	x3, -13(x16)
	ld	x19, -104(x17)
	add	x18, x18, x9
	bge	x18, x19, .LBB10_39
.LBB10_70:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, -104(x17)
	sb	x3, -12(x16)
	ld	x19, -96(x17)
	add	x18, x6, x4
	bge	x18, x19, .LBB10_40
.LBB10_71:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, -96(x17)
	sb	x3, -11(x16)
	ld	x20, -88(x17)
	add	x19, x18, x7
	bge	x19, x20, .LBB10_41
.LBB10_72:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -88(x17)
	sb	x3, -10(x16)
	ld	x20, -80(x17)
	add	x19, x19, x8
	bge	x19, x20, .LBB10_42
.LBB10_73:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -80(x17)
	sb	x3, -9(x16)
	ld	x20, -72(x17)
	add	x19, x19, x9
	bge	x19, x20, .LBB10_43
.LBB10_74:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -72(x17)
	sb	x3, -8(x16)
	ld	x19, -64(x17)
	add	x18, x10, x18
	bge	x18, x19, .LBB10_44
.LBB10_75:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, -64(x17)
	sb	x3, -7(x16)
	ld	x20, -56(x17)
	add	x19, x18, x7
	bge	x19, x20, .LBB10_45
.LBB10_76:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -56(x17)
	sb	x3, -6(x16)
	ld	x20, -48(x17)
	add	x19, x19, x8
	bge	x19, x20, .LBB10_46
.LBB10_77:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -48(x17)
	sb	x3, -5(x16)
	ld	x20, -40(x17)
	add	x19, x19, x9
	bge	x19, x20, .LBB10_47
.LBB10_78:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -40(x17)
	sb	x3, -4(x16)
	ld	x19, -32(x17)
	add	x18, x11, x18
	bge	x18, x19, .LBB10_48
.LBB10_79:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, -32(x17)
	sb	x3, -3(x16)
	ld	x20, -24(x17)
	add	x19, x18, x7
	bge	x19, x20, .LBB10_49
.LBB10_80:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -24(x17)
	sb	x3, -2(x16)
	ld	x20, -16(x17)
	add	x19, x19, x8
	bge	x19, x20, .LBB10_50
.LBB10_81:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -16(x17)
	sb	x3, -1(x16)
	ld	x20, -8(x17)
	add	x19, x19, x9
	bge	x19, x20, .LBB10_51
.LBB10_82:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, -8(x17)
	sb	x3, 0(x16)
	ld	x19, 0(x17)
	add	x18, x12, x18
	bge	x18, x19, .LBB10_52
.LBB10_83:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, 0(x17)
	sb	x3, 1(x16)
	ld	x20, 8(x17)
	add	x19, x18, x7
	bge	x19, x20, .LBB10_53
.LBB10_84:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 8(x17)
	sb	x3, 2(x16)
	ld	x20, 16(x17)
	add	x19, x19, x8
	bge	x19, x20, .LBB10_54
.LBB10_85:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 16(x17)
	sb	x3, 3(x16)
	ld	x20, 24(x17)
	add	x19, x19, x9
	bge	x19, x20, .LBB10_55
.LBB10_86:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 24(x17)
	sb	x3, 4(x16)
	ld	x19, 32(x17)
	add	x18, x13, x18
	bge	x18, x19, .LBB10_56
.LBB10_87:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, 32(x17)
	sb	x3, 5(x16)
	ld	x20, 40(x17)
	add	x19, x18, x7
	bge	x19, x20, .LBB10_57
.LBB10_88:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 40(x17)
	sb	x3, 6(x16)
	ld	x20, 48(x17)
	add	x19, x19, x8
	bge	x19, x20, .LBB10_58
.LBB10_89:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 48(x17)
	sb	x3, 7(x16)
	ld	x20, 56(x17)
	add	x19, x19, x9
	bge	x19, x20, .LBB10_59
.LBB10_90:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 56(x17)
	sb	x3, 8(x16)
	ld	x19, 64(x17)
	add	x18, x14, x18
	bge	x18, x19, .LBB10_60
.LBB10_91:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, 64(x17)
	sb	x3, 9(x16)
	ld	x20, 72(x17)
	add	x19, x18, x7
	bge	x19, x20, .LBB10_61
.LBB10_92:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 72(x17)
	sb	x3, 10(x16)
	ld	x20, 80(x17)
	add	x19, x19, x8
	bge	x19, x20, .LBB10_62
.LBB10_93:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 80(x17)
	sb	x3, 11(x16)
	ld	x20, 88(x17)
	add	x19, x19, x9
	bge	x19, x20, .LBB10_63
.LBB10_94:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x19, 88(x17)
	sb	x3, 12(x16)
	ld	x19, 96(x17)
	add	x18, x15, x18
	bge	x18, x19, .LBB10_64
.LBB10_95:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, 96(x17)
	sb	x3, 13(x16)
	ld	x19, 104(x17)
	add	x18, x18, x7
	bge	x18, x19, .LBB10_65
.LBB10_96:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, 104(x17)
	sb	x3, 14(x16)
	ld	x19, 112(x17)
	add	x18, x18, x8
	bge	x18, x19, .LBB10_66
.LBB10_97:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x29, 0x6c0(x13)		# 011011110111011000000
	sd	x18, 112(x17)
	sb	x3, 15(x16)
	ld	x19, 120(x17)
	add	x18, x18, x9
	bge	x18, x19, .LBB10_34
.LBB10_98:                              #   in Loop: Header=BB10_35 Depth=2
	regsw_c	x16, 0x0(x13)		# 011011000000000000000
	sd	x18, 120(x17)
	sb	x3, 16(x16)
	j	.LBB10_34
.LBB10_99:
	andi	a1, a1, -4
	andi	a2, a2, -8
	andi	a3, a3, -4
	addi	a5, a2, 1
	addi	a6, a2, 2
	addi	a7, a2, 3
	addi	t0, a2, 4
	addi	t1, a2, 5
	addi	t2, a2, 6
	addi	t3, a2, 7
	slli	a1, a1, 3
	add	a4, a4, a1
	addi	a0, sp, 16
	addi	a1, sp, 144
	slli	a2, a2, 6
	slli	a3, a3, 1
	slli	a5, a5, 6
	slli	a6, a6, 6
	slli	a7, a7, 6
	slli	t0, t0, 6
	slli	t1, t1, 6
	slli	t2, t2, 6
	slli	t3, t3, 6
.LBB10_100:                             # =>This Inner Loop Header: Depth=1
	ld	t4, 0(a4)
	lbu	t5, 0(a0)
	add	t6, a2, a3
	add	t6, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t6)
	lbu	t5, 1(a0)
	addi	t5, t5, 1
	sh	t5, 2(t6)
	lbu	t5, 2(a0)
	addi	t5, t5, 1
	sh	t5, 4(t6)
	lbu	t5, 3(a0)
	addi	t5, t5, 1
	sh	t5, 6(t6)
	lbu	t5, 4(a0)
	add	t6, a5, a3
	add	t6, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t6)
	lbu	t5, 5(a0)
	addi	t5, t5, 1
	sh	t5, 2(t6)
	lbu	t5, 6(a0)
	addi	t5, t5, 1
	sh	t5, 4(t6)
	lbu	t5, 7(a0)
	addi	t5, t5, 1
	sh	t5, 6(t6)
	lbu	t5, 8(a0)
	add	t6, a6, a3
	add	t6, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t6)
	lbu	t5, 9(a0)
	addi	t5, t5, 1
	sh	t5, 2(t6)
	lbu	t5, 10(a0)
	addi	t5, t5, 1
	sh	t5, 4(t6)
	lbu	t5, 11(a0)
	addi	t5, t5, 1
	sh	t5, 6(t6)
	lbu	t5, 12(a0)
	add	t6, a7, a3
	add	t6, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t6)
	lbu	t5, 13(a0)
	addi	t5, t5, 1
	sh	t5, 2(t6)
	lbu	t5, 14(a0)
	addi	t5, t5, 1
	sh	t5, 4(t6)
	lbu	t5, 15(a0)
	addi	t5, t5, 1
	sh	t5, 6(t6)
	lbu	t5, 16(a0)
	add	t6, t0, a3
	add	t6, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t6)
	lbu	t5, 17(a0)
	addi	t5, t5, 1
	sh	t5, 2(t6)
	lbu	t5, 18(a0)
	addi	t5, t5, 1
	sh	t5, 4(t6)
	lbu	t5, 19(a0)
	addi	t5, t5, 1
	sh	t5, 6(t6)
	lbu	t5, 20(a0)
	add	t6, t1, a3
	add	t6, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t6)
	lbu	t5, 21(a0)
	addi	t5, t5, 1
	sh	t5, 2(t6)
	lbu	t5, 22(a0)
	addi	t5, t5, 1
	sh	t5, 4(t6)
	lbu	t5, 23(a0)
	addi	t5, t5, 1
	sh	t5, 6(t6)
	lbu	t5, 24(a0)
	add	t6, t2, a3
	add	t6, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t6)
	lbu	t5, 25(a0)
	addi	t5, t5, 1
	sh	t5, 2(t6)
	lbu	t5, 26(a0)
	addi	t5, t5, 1
	sh	t5, 4(t6)
	lbu	t5, 27(a0)
	addi	t5, t5, 1
	sh	t5, 6(t6)
	lbu	t5, 28(a0)
	add	t6, t3, a3
	add	t4, t4, t6
	addi	t5, t5, 1
	sh	t5, 0(t4)
	lbu	t5, 29(a0)
	addi	t5, t5, 1
	sh	t5, 2(t4)
	lbu	t5, 30(a0)
	addi	t5, t5, 1
	sh	t5, 4(t4)
	lbu	t5, 31(a0)
	addi	t5, t5, 1
	sh	t5, 6(t4)
	addi	a0, a0, 32
	addi	a4, a4, 8
	bne	a0, a1, .LBB10_100
# %bb.101:
	addi	sp, sp, 2032
	addi	sp, sp, 416
	ret
.Lfunc_end10:
	.size	fill_inverse_cmap, .Lfunc_end10-fill_inverse_cmap
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
