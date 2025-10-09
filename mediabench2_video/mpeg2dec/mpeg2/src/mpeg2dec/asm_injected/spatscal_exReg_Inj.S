	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"spatscal.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Spatial_Prediction              # -- Begin function Spatial_Prediction
	.p2align	2
	.type	Spatial_Prediction,@function
Spatial_Prediction:                     # @Spatial_Prediction
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(Frame_Store_Flag)
	lw	a0, %lo(Frame_Store_Flag)(a0)
	lui	s1, %hi(lower_layer_prediction_horizontal_size)
	lw	a1, %lo(lower_layer_prediction_horizontal_size)(s1)
	lui	s0, %hi(lower_layer_prediction_vertical_size)
	lw	a2, %lo(lower_layer_prediction_vertical_size)(s0)
	beqz	a0, .LBB0_2
# %bb.1:
	li	a0, 0
	call	Read_Lower_Layer_Component_Framewise
	lw	a1, %lo(lower_layer_prediction_horizontal_size)(s1)
	lw	a2, %lo(lower_layer_prediction_vertical_size)(s0)
	srai	a1, a1, 1
	srai	a2, a2, 1
	li	a0, 1
	call	Read_Lower_Layer_Component_Framewise
	lw	a1, %lo(lower_layer_prediction_horizontal_size)(s1)
	lw	a2, %lo(lower_layer_prediction_vertical_size)(s0)
	srai	a1, a1, 1
	srai	a2, a2, 1
	li	a0, 2
	call	Read_Lower_Layer_Component_Framewise
	j	.LBB0_3
.LBB0_2:
	call	Read_Lower_Layer_Component_Fieldwise
	lw	a1, %lo(lower_layer_prediction_horizontal_size)(s1)
	lw	a2, %lo(lower_layer_prediction_vertical_size)(s0)
	srai	a1, a1, 1
	srai	a2, a2, 1
	li	a0, 1
	call	Read_Lower_Layer_Component_Fieldwise
	lw	a1, %lo(lower_layer_prediction_horizontal_size)(s1)
	lw	a2, %lo(lower_layer_prediction_vertical_size)(s0)
	srai	a1, a1, 1
	srai	a2, a2, 1
	li	a0, 2
	call	Read_Lower_Layer_Component_Fieldwise
.LBB0_3:
	lui	s6, %hi(progressive_frame)
	lw	a0, %lo(progressive_frame)(s6)
	lui	s8, %hi(lower_layer_progressive_frame)
	lw	a1, %lo(lower_layer_progressive_frame)(s8)
	lui	a2, %hi(llframe0)
	addi	s11, a2, %lo(llframe0)
	ld	a2, %lo(llframe0)(a2)
	lui	a3, %hi(llframe1)
	addi	s9, a3, %lo(llframe1)
	ld	a3, %lo(llframe1)(a3)
	lui	s10, %hi(lltmp)
	ld	a4, %lo(lltmp)(s10)
	lui	t0, %hi(current_frame)
	ld	a5, %lo(current_frame)(t0)
	lui	s0, %hi(lower_layer_horizontal_offset)
	lw	a6, %lo(lower_layer_horizontal_offset)(s0)
	lui	s1, %hi(lower_layer_vertical_offset)
	lw	a7, %lo(lower_layer_vertical_offset)(s1)
	lui	s7, %hi(lower_layer_prediction_horizontal_size)
	lw	t2, %lo(lower_layer_prediction_horizontal_size)(s7)
	lui	t1, %hi(lower_layer_prediction_vertical_size)
	lw	t3, %lo(lower_layer_prediction_vertical_size)(t1)
	lui	t1, %hi(horizontal_size)
	lw	t4, %lo(horizontal_size)(t1)
	lui	t1, %hi(vertical_size)
	lw	t5, %lo(vertical_size)(t1)
	lui	t1, %hi(vertical_subsampling_factor_m)
	lw	t6, %lo(vertical_subsampling_factor_m)(t1)
	lui	t1, %hi(vertical_subsampling_factor_n)
	lw	t1, %lo(vertical_subsampling_factor_n)(t1)
	lui	s4, %hi(vertical_subsampling_factor_n)
	lui	s5, %hi(horizontal_subsampling_factor_m)
	regsw_c	x12, 0x106(x18)		# 100100110000100000110
	lw	x1, %lo(horizontal_subsampling_factor_m)(s5)
	lui	x2, %hi(picture_structure)
	lw	x2, %lo(picture_structure)(x2)
	lui	s2, %hi(horizontal_subsampling_factor_n)
	lw	x3, %lo(horizontal_subsampling_factor_n)(s2)
	addi	s3, t0, %lo(current_frame)
	addi	x2, x2, -3
	regsw_c	x2, 0x200(x4)		# 001000001001000000000
	snez	t0, x2
	sd	t0, 24(sp)
	sd	x3, 16(sp)
	sd	x1, 8(sp)
	sd	t1, 0(sp)
	call	Make_Spatial_Prediction_Frame
	lw	a0, %lo(progressive_frame)(s6)
	lw	a1, %lo(lower_layer_progressive_frame)(s8)
	ld	a2, 8(s11)
	lw	a6, %lo(lower_layer_horizontal_offset)(s0)
	ld	a3, 8(s9)
	ld	a4, %lo(lltmp)(s10)
	ld	a5, 8(s3)
	srliw	a7, a6, 31
	lw	t0, %lo(lower_layer_vertical_offset)(s1)
	add	a6, a6, a7
	sraiw	a6, a6, 1
	lw	t1, %lo(lower_layer_prediction_horizontal_size)(s7)
	srliw	a7, t0, 31
	add	a7, t0, a7
	sraiw	a7, a7, 1
	srai	t2, t1, 1
	lui	t0, %hi(lower_layer_prediction_vertical_size)
	lw	t3, %lo(lower_layer_prediction_vertical_size)(t0)
	lui	t0, %hi(horizontal_size)
	lw	t4, %lo(horizontal_size)(t0)
	lui	t0, %hi(vertical_size)
	lw	t5, %lo(vertical_size)(t0)
	lui	t0, %hi(vertical_subsampling_factor_m)
	lw	t6, %lo(vertical_subsampling_factor_m)(t0)
	lw	t0, %lo(vertical_subsampling_factor_n)(s4)
	lw	t1, %lo(horizontal_subsampling_factor_m)(s5)
	regsw_c	x0, 0x1(x16)		# 100000000000000000001
	lw	x1, %lo(horizontal_subsampling_factor_n)(s2)
	srai	t3, t3, 1
	srai	t4, t4, 1
	srai	t5, t5, 1
	li	s4, 1
	sd	s4, 24(sp)
	sd	x1, 16(sp)
	sd	t1, 8(sp)
	sd	t0, 0(sp)
	call	Make_Spatial_Prediction_Frame
	lw	a0, %lo(progressive_frame)(s6)
	lw	a1, %lo(lower_layer_progressive_frame)(s8)
	ld	a2, 16(s11)
	lw	a6, %lo(lower_layer_horizontal_offset)(s0)
	ld	a3, 16(s9)
	ld	a4, %lo(lltmp)(s10)
	ld	a5, 16(s3)
	srliw	a7, a6, 31
	lw	t0, %lo(lower_layer_vertical_offset)(s1)
	add	a6, a6, a7
	sraiw	a6, a6, 1
	lw	t1, %lo(lower_layer_prediction_horizontal_size)(s7)
	srliw	a7, t0, 31
	add	a7, t0, a7
	sraiw	a7, a7, 1
	srai	t2, t1, 1
	lui	t0, %hi(lower_layer_prediction_vertical_size)
	lw	t3, %lo(lower_layer_prediction_vertical_size)(t0)
	lui	t0, %hi(horizontal_size)
	lw	t4, %lo(horizontal_size)(t0)
	lui	t0, %hi(vertical_size)
	lw	t5, %lo(vertical_size)(t0)
	lui	t0, %hi(vertical_subsampling_factor_m)
	lw	t6, %lo(vertical_subsampling_factor_m)(t0)
	lui	t0, %hi(vertical_subsampling_factor_n)
	lw	t0, %lo(vertical_subsampling_factor_n)(t0)
	lw	t1, %lo(horizontal_subsampling_factor_m)(s5)
	regsw_c	x0, 0x8(x16)		# 100000000000000001000
	lw	x1, %lo(horizontal_subsampling_factor_n)(s2)
	srai	t3, t3, 1
	srai	t4, t4, 1
	srai	t5, t5, 1
	sd	s4, 24(sp)
	sd	x1, 16(sp)
	sd	t1, 8(sp)
	sd	t0, 0(sp)
	call	Make_Spatial_Prediction_Frame
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end0:
	.size	Spatial_Prediction, .Lfunc_end0-Spatial_Prediction
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function Read_Lower_Layer_Component_Framewise
	.type	Read_Lower_Layer_Component_Framewise,@function
Read_Lower_Layer_Component_Framewise:   # @Read_Lower_Layer_Component_Framewise
# %bb.0:
	addi	sp, sp, -336
	sd	ra, 328(sp)                     # 8-byte Folded Spill
	sd	s0, 320(sp)                     # 8-byte Folded Spill
	sd	s1, 312(sp)                     # 8-byte Folded Spill
	sd	s2, 304(sp)                     # 8-byte Folded Spill
	sd	s3, 296(sp)                     # 8-byte Folded Spill
	sd	s4, 288(sp)                     # 8-byte Folded Spill
	sd	s5, 280(sp)                     # 8-byte Folded Spill
	sd	s6, 272(sp)                     # 8-byte Folded Spill
	sd	s7, 264(sp)                     # 8-byte Folded Spill
	sd	s8, 256(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(Lower_Layer_Picture_Filename)
	ld	a3, %lo(Lower_Layer_Picture_Filename)(a3)
	lui	a4, %hi(True_Framenum)
	lw	a4, %lo(True_Framenum)(a4)
	mv	s0, a2
	mv	s1, a1
	mv	s3, a0
	mv	a0, sp
	mv	a1, a3
	mv	a2, a4
	call	sprintf
	slli	a0, s3, 1
	add	a0, a0, s3
	lui	a1, %hi(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	addi	a1, a1, %lo(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	add	a1, a1, a0
	mv	a0, sp
	call	strcat
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, sp
	call	fopen
	beqz	a0, .LBB1_11
# %bb.1:
	mv	s2, a0
	blez	s0, .LBB1_10
# %bb.2:
	blez	s1, .LBB1_10
# %bb.3:
	li	s4, 0
	slli	s5, s3, 3
	lui	s3, %hi(llframe0)
	addi	s3, s3, %lo(llframe0)
	add	s3, s3, s5
	lui	a0, %hi(llframe1)
	addi	a0, a0, %lo(llframe1)
	add	s5, a0, s5
	lui	s6, %hi(lower_layer_progressive_frame)
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	addiw	s4, s4, 1
	bge	s4, s0, .LBB1_10
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_9 Depth 2
	mulw	s7, s4, s1
	add	s8, s1, s7
.LBB1_6:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s2
	call	getc
	ld	a1, 0(s3)
	add	a1, a1, s7
	addi	s7, s7, 1
	sb	a0, 0(a1)
	bne	s7, s8, .LBB1_6
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	lw	a0, %lo(lower_layer_progressive_frame)(s6)
	bnez	a0, .LBB1_4
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=1
	addi	s4, s4, 1
	mulw	s7, s4, s1
	add	s8, s1, s7
.LBB1_9:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s2
	call	getc
	ld	a1, 0(s5)
	add	a1, a1, s7
	addi	s7, s7, 1
	sb	a0, 0(a1)
	bne	s7, s8, .LBB1_9
	j	.LBB1_4
.LBB1_10:
	mv	a0, s2
	call	fclose
	ld	ra, 328(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	ld	s1, 312(sp)                     # 8-byte Folded Reload
	ld	s2, 304(sp)                     # 8-byte Folded Reload
	ld	s3, 296(sp)                     # 8-byte Folded Reload
	ld	s4, 288(sp)                     # 8-byte Folded Reload
	ld	s5, 280(sp)                     # 8-byte Folded Reload
	ld	s6, 272(sp)                     # 8-byte Folded Reload
	ld	s7, 264(sp)                     # 8-byte Folded Reload
	ld	s8, 256(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 336
	ret
.LBB1_11:
	li	a0, -1
	call	exit
.Lfunc_end1:
	.size	Read_Lower_Layer_Component_Framewise, .Lfunc_end1-Read_Lower_Layer_Component_Framewise
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function Read_Lower_Layer_Component_Fieldwise
	.type	Read_Lower_Layer_Component_Fieldwise,@function
Read_Lower_Layer_Component_Fieldwise:   # @Read_Lower_Layer_Component_Fieldwise
# %bb.0:
	addi	sp, sp, -352
	sd	ra, 344(sp)                     # 8-byte Folded Spill
	sd	s0, 336(sp)                     # 8-byte Folded Spill
	sd	s1, 328(sp)                     # 8-byte Folded Spill
	sd	s2, 320(sp)                     # 8-byte Folded Spill
	sd	s3, 312(sp)                     # 8-byte Folded Spill
	sd	s4, 304(sp)                     # 8-byte Folded Spill
	sd	s5, 296(sp)                     # 8-byte Folded Spill
	sd	s6, 288(sp)                     # 8-byte Folded Spill
	sd	s7, 280(sp)                     # 8-byte Folded Spill
	sd	s8, 272(sp)                     # 8-byte Folded Spill
	sd	s9, 264(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(Lower_Layer_Picture_Filename)
	ld	a5, %lo(Lower_Layer_Picture_Filename)(a3)
	lui	a3, %hi(True_Framenum)
	lui	a4, %hi(lower_layer_progressive_frame)
	lw	a6, %lo(lower_layer_progressive_frame)(a4)
	lw	a4, %lo(True_Framenum)(a3)
	mv	s0, a2
	mv	s1, a1
	mv	s2, a0
	li	a3, 97
	beqz	a6, .LBB2_2
# %bb.1:
	li	a3, 102
.LBB2_2:
	addi	a0, sp, 8
	mv	a1, a5
	mv	a2, a4
	call	sprintf
	slli	a0, s2, 1
	add	a0, a0, s2
	lui	s3, %hi(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	addi	s3, s3, %lo(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	add	s3, s3, a0
	addi	a0, sp, 8
	mv	a1, s3
	call	strcat
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	addi	a0, sp, 8
	call	fopen
	beqz	a0, .LBB2_21
# %bb.3:
	mv	s4, a0
	blez	s0, .LBB2_11
# %bb.4:
	blez	s1, .LBB2_9
# %bb.5:
	li	s5, 0
	slli	s6, s2, 3
	lui	a0, %hi(llframe0)
	addi	a0, a0, %lo(llframe0)
	add	s6, a0, s6
	lui	s7, %hi(lower_layer_progressive_frame)
.LBB2_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	mul	a0, s5, s1
	slli	a0, a0, 32
	srli	s8, a0, 32
	add	s9, s1, s8
.LBB2_7:                                #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s4
	call	getc
	ld	a1, 0(s6)
	add	a1, a1, s8
	addi	s8, s8, 1
	sb	a0, 0(a1)
	bne	s8, s9, .LBB2_7
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	lw	a0, %lo(lower_layer_progressive_frame)(s7)
	seqz	a0, a0
	add	a0, a0, s5
	addiw	s5, a0, 1
	blt	s5, s0, .LBB2_6
	j	.LBB2_11
.LBB2_9:
	lui	a0, %hi(lower_layer_progressive_frame)
	lw	a1, %lo(lower_layer_progressive_frame)(a0)
	li	a0, 0
	seqz	a1, a1
	addi	a1, a1, 1
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	addw	a0, a0, a1
	blt	a0, s0, .LBB2_10
.LBB2_11:
	mv	a0, s4
	call	fclose
	lui	a0, %hi(lower_layer_progressive_frame)
	lw	a0, %lo(lower_layer_progressive_frame)(a0)
	bnez	a0, .LBB2_20
# %bb.12:
	lui	a0, %hi(Lower_Layer_Picture_Filename)
	ld	a1, %lo(Lower_Layer_Picture_Filename)(a0)
	lui	a0, %hi(True_Framenum)
	lw	a2, %lo(True_Framenum)(a0)
	addi	a0, sp, 8
	li	a3, 98
	call	sprintf
	addi	a0, sp, 8
	mv	a1, s3
	call	strcat
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	addi	a0, sp, 8
	call	fopen
	beqz	a0, .LBB2_21
# %bb.13:
	mv	s3, a0
	li	a0, 2
	blt	s0, a0, .LBB2_19
# %bb.14:
	blez	s1, .LBB2_19
# %bb.15:
	li	s4, 0
	slli	s2, s2, 3
	lui	a0, %hi(llframe1)
	addi	a0, a0, %lo(llframe1)
	add	s2, a0, s2
	slli	s5, s1, 1
	li	s6, 1
.LBB2_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	mul	s7, s5, s4
	add	s7, s5, s7
	mv	s8, s1
.LBB2_17:                               #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s3
	call	getc
	ld	a1, 0(s2)
	add	a1, a1, s8
	addi	s8, s8, 1
	sb	a0, 0(a1)
	bne	s8, s7, .LBB2_17
# %bb.18:                               #   in Loop: Header=BB2_16 Depth=1
	addi	s6, s6, 2
	add	s1, s1, s5
	addi	s4, s4, 1
	bltu	s6, s0, .LBB2_16
.LBB2_19:
	mv	a0, s3
	call	fclose
.LBB2_20:
	ld	ra, 344(sp)                     # 8-byte Folded Reload
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	ld	s1, 328(sp)                     # 8-byte Folded Reload
	ld	s2, 320(sp)                     # 8-byte Folded Reload
	ld	s3, 312(sp)                     # 8-byte Folded Reload
	ld	s4, 304(sp)                     # 8-byte Folded Reload
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	ld	s6, 288(sp)                     # 8-byte Folded Reload
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	ld	s8, 272(sp)                     # 8-byte Folded Reload
	ld	s9, 264(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 352
	ret
.LBB2_21:
	li	a0, -1
	call	exit
.Lfunc_end2:
	.size	Read_Lower_Layer_Component_Fieldwise, .Lfunc_end2-Read_Lower_Layer_Component_Fieldwise
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function Make_Spatial_Prediction_Frame
	.type	Make_Spatial_Prediction_Frame,@function
Make_Spatial_Prediction_Frame:          # @Make_Spatial_Prediction_Frame
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
	ld	s6, 128(sp)
	ld	s5, 144(sp)
	mv	s2, t3
	mv	s0, t2
	mv	s1, a2
	mul	a2, s6, t3
	divw	s7, a2, t6
	beqz	a1, .LBB3_14
# %bb.1:
	blez	s7, .LBB3_7
# %bb.2:
	blez	s0, .LBB3_7
# %bb.3:
	li	a0, 0
	addiw	s2, s2, -1
	srai	a1, s6, 1
	slli	a2, s0, 1
	li	a3, 16
	mv	t0, a4
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	mul	t1, a2, a0
	add	t1, a2, t1
	add	t1, a4, t1
	regsw_c	x4, 0x80(x19)		# 100110010000010000000
	mul	x1, a0, t6
	divw	x2, x1, s6
	mulw	t2, x2, s0
	add	t2, s1, t2
	slt	t3, x2, s2
	neg	t3, t3
	and	t3, t3, s0
	add	t3, t2, t3
	regsw_c	x29, 0x5ac(x27)		# 110111110110110101100
	mul	x2, x2, s6
	subw	x1, x1, x2
	slli	x1, x1, 4
	add	x1, x1, a1
	divw	x1, x1, s6
	subw	x2, a3, x1
	mv	x3, t0
.LBB3_5:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x7de(x18)		# 100100111111111011110
	lbu	x4, 0(t2)
	lbu	x5, 0(t3)
	mul	x4, x2, x4
	mul	x5, x1, x5
	add	x4, x5, x4
	sh	x4, 0(x3)
	addi	x3, x3, 2
	addi	t3, t3, 1
	addi	t2, t2, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x3, t1, .LBB3_5
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	addi	a0, a0, 1
	add	t0, t0, a2
	bne	a0, s7, .LBB3_4
.LBB3_7:
	ld	a0, 136(sp)
	mul	a2, s5, s0
	bltz	a7, .LBB3_22
# %bb.8:
	subw	a1, t5, a7
	mulw	a3, t4, a7
	blt	a1, s7, .LBB3_10
# %bb.9:
	mv	a1, s7
.LBB3_10:
	add	a5, a5, a3
	divw	a2, a2, a0
	bltz	a6, .LBB3_25
.LBB3_11:
	subw	a3, t4, a6
	blt	a3, a2, .LBB3_13
# %bb.12:
	mv	a3, a2
.LBB3_13:
	li	a2, 0
	add	a5, a5, a6
	sext.w	a3, a3
	bgtz	a3, .LBB3_28
	j	.LBB3_33
.LBB3_14:
	ld	s3, 152(sp)
	beqz	a0, .LBB3_34
# %bb.15:
	sd	t6, 16(sp)                      # 8-byte Folded Spill
	sd	a7, 8(sp)                       # 8-byte Folded Spill
	mv	s9, t5
	mv	s10, a6
	mv	s11, a4
	mv	s4, a5
	mv	s8, t4
	lui	a0, %hi(lower_layer_deinterlaced_field_select)
	lw	a0, %lo(lower_layer_deinterlaced_field_select)(a0)
	beqz	a0, .LBB3_46
# %bb.16:
	mv	a0, a3
	mv	a1, s1
	li	a2, 0
	mv	s1, a3
	mv	a3, s0
	mv	a4, s2
	mv	a5, s3
	call	Deinterlace
	mv	t4, s8
	mv	a5, s4
	mv	a4, s11
	mv	a6, s10
	mv	t5, s9
	ld	a7, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	blez	s7, .LBB3_7
# %bb.17:
	blez	s0, .LBB3_7
# %bb.18:
	mv	a0, s1
	li	a2, 0
	addiw	s2, s2, -1
	srai	a3, s6, 1
	slli	t0, s0, 1
	li	t1, 16
	mv	t2, a4
.LBB3_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
	mul	t3, t0, a2
	add	t3, t0, t3
	add	t3, a4, t3
	regsw_c	x4, 0x1b6(x19)		# 100110010000110110110
	mul	x2, a2, a1
	divw	x3, x2, s6
	mulw	t6, x3, s0
	add	t6, a0, t6
	slt	x1, x3, s2
	neg	x1, x1
	and	x1, x1, s0
	regsw_c	x15, 0x5b5(x23)		# 101110111110110110101
	add	x1, t6, x1
	mul	x3, x3, s6
	subw	x2, x2, x3
	slli	x2, x2, 4
	add	x2, x2, a3
	divw	x2, x2, s6
	subw	x3, t1, x2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, t2
.LBB3_20:                               #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x7de(x19)		# 100110111111111011110
	lbu	x5, 0(t6)
	lbu	x6, 0(x1)
	mul	x5, x3, x5
	mul	x6, x2, x6
	add	x5, x6, x5
	sh	x5, 0(x4)
	addi	x4, x4, 2
	regsw_c	x4, 0x0(x24)		# 110000010000000000000
	addi	x1, x1, 1
	addi	t6, t6, 1
	bne	x4, t3, .LBB3_20
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=1
	addi	a2, a2, 1
	add	t2, t2, t0
	bne	a2, s7, .LBB3_19
	j	.LBB3_7
.LBB3_22:
	mulw	a3, s0, a7
	addw	a1, s7, a7
	sgtz	a7, a1
	neg	a7, a7
	and	a1, a7, a1
	slli	a3, a3, 1
	blt	a1, t5, .LBB3_24
# %bb.23:
	mv	a1, t5
.LBB3_24:
	sub	a4, a4, a3
	divw	a2, a2, a0
	bgez	a6, .LBB3_11
.LBB3_25:
	addw	a2, a2, a6
	sgtz	a3, a2
	neg	a3, a3
	and	a3, a3, a2
	blt	a3, t4, .LBB3_27
# %bb.26:
	mv	a3, t4
.LBB3_27:
	negw	a2, a6
	sext.w	a3, a3
	blez	a3, .LBB3_33
.LBB3_28:
	sext.w	a6, a1
	blez	a6, .LBB3_33
# %bb.29:
	li	a6, 0
	addiw	a7, s0, -1
	srai	t0, s5, 1
	slli	s0, s0, 1
	li	t1, 16
.LBB3_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
	add	t2, a5, a6
	add	t3, a2, a6
	mul	t6, t3, a0
	regsw_c	x0, 0x431(x17)		# 100010000010000110001
	divw	x1, t6, s5
	slli	t3, x1, 1
	add	t3, a4, t3
	slt	t5, x1, a7
	slli	t5, t5, 1
	mul	x1, x1, s5
	subw	t6, t6, x1
	slli	t6, t6, 4
	add	t6, t6, t0
	divw	t6, t6, s5
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	subw	x1, t1, t6
	mv	x2, a1
.LBB3_31:                               #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x13, 0x77e(x18)		# 100100110111101111110
	add	x3, t3, t5
	lh	x4, 0(t3)
	lh	x3, 0(x3)
	mul	x4, x1, x4
	mul	x3, t6, x3
	add	x3, x3, x4
	sraiw	x4, x3, 31
	regsw_c	x12, 0x230(x31)		# 111110110001000110000
	add	x3, x4, x3
	addi	x3, x3, 128
	srli	x3, x3, 8
	sb	x3, 0(t2)
	add	t2, t2, t4
	addiw	x2, x2, -1
	add	t3, t3, s0
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x2, .LBB3_31
# %bb.32:                               #   in Loop: Header=BB3_30 Depth=1
	addi	a6, a6, 1
	bne	a6, a3, .LBB3_30
.LBB3_33:
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
	addi	sp, sp, 128
	ret
.LBB3_34:
	li	a2, 1
	mv	a0, s1
	mv	a1, a3
	mv	s4, a3
	mv	a3, s0
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	mv	a4, s2
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	mv	a5, s3
	sd	t4, 0(sp)                       # 8-byte Folded Spill
	mv	s11, a6
	mv	s8, t5
	mv	s9, a7
	mv	s10, t6
	call	Deinterlace
	mv	a0, s4
	mv	a1, s1
	li	a2, 0
	mv	a3, s0
	mv	a4, s2
	mv	a5, s3
	call	Deinterlace
	mv	a7, s9
	mv	t5, s8
	mv	a6, s11
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	ld	a5, 8(sp)                       # 8-byte Folded Reload
	ld	t4, 0(sp)                       # 8-byte Folded Reload
	blez	s7, .LBB3_7
# %bb.35:
	addiw	s2, s2, -1
	srai	a1, s6, 1
	blez	s0, .LBB3_40
# %bb.36:
	li	a2, 0
	li	a3, 0
	slli	t0, s0, 2
	slli	t1, s0, 1
	li	t2, 16
	mv	t3, a4
.LBB3_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_38 Depth 2
	mul	t6, t0, a2
	add	t6, t1, t6
	add	t6, a4, t6
	regsw_c	x13, 0x3b6(x19)		# 100110110101110110110
	mul	x3, a3, s10
	divw	x4, x3, s6
	mulw	x1, x4, s0
	add	x1, s1, x1
	slt	x2, x4, s2
	neg	x2, x2
	and	x2, x2, s0
	regsw_c	x15, 0x5b5(x31)		# 111110111110110110101
	add	x2, x1, x2
	mul	x4, x4, s6
	subw	x3, x3, x4
	slli	x3, x3, 4
	add	x3, x3, a1
	divw	x3, x3, s6
	subw	x4, t2, x3
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, t3
.LBB3_38:                               #   Parent Loop BB3_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x7de(x27)		# 110110111111111011110
	lbu	x6, 0(x1)
	lbu	x7, 0(x2)
	mul	x6, x4, x6
	mul	x7, x3, x7
	add	x6, x7, x6
	sh	x6, 0(x5)
	addi	x5, x5, 2
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addi	x2, x2, 1
	addi	x1, x1, 1
	bne	x5, t6, .LBB3_38
# %bb.39:                               #   in Loop: Header=BB3_37 Depth=1
	addi	a3, a3, 2
	add	t3, t3, t0
	addi	a2, a2, 1
	bltu	a3, s7, .LBB3_37
.LBB3_40:
	li	a2, 1
	beq	s7, a2, .LBB3_7
# %bb.41:
	blez	s0, .LBB3_7
# %bb.42:
	li	a2, 0
	slli	a3, s0, 1
	add	a3, a4, a3
	slli	t0, s0, 2
	li	t1, 1
	li	t2, 16
.LBB3_43:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
	mul	t3, t0, a2
	add	t3, t0, t3
	add	t3, a4, t3
	regsw_c	x4, 0x1b6(x19)		# 100110010000110110110
	mul	x2, t1, s10
	divw	x3, x2, s6
	mulw	t6, x3, s0
	add	t6, s4, t6
	slt	x1, x3, s2
	neg	x1, x1
	and	x1, x1, s0
	regsw_c	x15, 0x5b5(x23)		# 101110111110110110101
	add	x1, t6, x1
	mul	x3, x3, s6
	subw	x2, x2, x3
	slli	x2, x2, 4
	add	x2, x2, a1
	divw	x2, x2, s6
	subw	x3, t2, x2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, a3
.LBB3_44:                               #   Parent Loop BB3_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x7de(x19)		# 100110111111111011110
	lbu	x5, 0(t6)
	lbu	x6, 0(x1)
	mul	x5, x3, x5
	mul	x6, x2, x6
	add	x5, x6, x5
	sh	x5, 0(x4)
	addi	x4, x4, 2
	regsw_c	x4, 0x0(x24)		# 110000010000000000000
	addi	x1, x1, 1
	addi	t6, t6, 1
	bne	x4, t3, .LBB3_44
# %bb.45:                               #   in Loop: Header=BB3_43 Depth=1
	addi	t1, t1, 2
	add	a3, a3, t0
	addi	a2, a2, 1
	bltu	t1, s7, .LBB3_43
	j	.LBB3_7
.LBB3_46:
	li	a2, 1
	mv	a0, s1
	mv	a1, a3
	mv	a3, s0
	mv	a4, s2
	mv	a5, s3
	call	Deinterlace
	mv	t4, s8
	mv	a5, s4
	mv	a4, s11
	mv	a6, s10
	mv	t5, s9
	ld	a7, 8(sp)                       # 8-byte Folded Reload
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	blez	s7, .LBB3_7
# %bb.47:
	blez	s0, .LBB3_7
# %bb.48:
	li	a1, 0
	addiw	s2, s2, -1
	srai	a2, s6, 1
	slli	a3, s0, 1
	li	t0, 16
	mv	t1, a4
.LBB3_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_50 Depth 2
	mul	t2, a3, a1
	add	t2, a3, t2
	add	t2, a4, t2
	regsw_c	x4, 0x80(x19)		# 100110010000010000000
	mul	x1, a1, a0
	divw	x2, x1, s6
	mulw	t3, x2, s0
	add	t3, s1, t3
	slt	t6, x2, s2
	neg	t6, t6
	and	t6, t6, s0
	add	t6, t3, t6
	regsw_c	x29, 0x5ac(x27)		# 110111110110110101100
	mul	x2, x2, s6
	subw	x1, x1, x2
	slli	x1, x1, 4
	add	x1, x1, a2
	divw	x1, x1, s6
	subw	x2, t0, x1
	mv	x3, t1
.LBB3_50:                               #   Parent Loop BB3_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x7de(x18)		# 100100111111111011110
	lbu	x4, 0(t3)
	lbu	x5, 0(t6)
	mul	x4, x2, x4
	mul	x5, x1, x5
	add	x4, x5, x4
	sh	x4, 0(x3)
	addi	x3, x3, 2
	addi	t6, t6, 1
	addi	t3, t3, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x3, t2, .LBB3_50
# %bb.51:                               #   in Loop: Header=BB3_49 Depth=1
	addi	a1, a1, 1
	add	t1, t1, a3
	bne	a1, s7, .LBB3_49
	j	.LBB3_7
.Lfunc_end3:
	.size	Make_Spatial_Prediction_Frame, .Lfunc_end3-Make_Spatial_Prediction_Frame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function Deinterlace
	.type	Deinterlace,@function
Deinterlace:                            # @Deinterlace
# %bb.0:
	bge	a2, a4, .LBB4_20
# %bb.1:
	neg	a6, a3
	addiw	a7, a4, -1
	beqz	a5, .LBB4_11
# %bb.2:
	blez	a3, .LBB4_20
# %bb.3:
	li	a1, 0
	mul	t1, a3, a2
	add	a5, a0, t1
	slli	t0, a3, 1
	add	t1, t1, a3
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	mv	t2, a3
	beqz	a2, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	mv	t2, a6
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	mv	t3, a6
	beq	a2, a7, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_4 Depth=1
	mv	t3, a3
.LBB4_8:                                #   in Loop: Header=BB4_4 Depth=1
	mul	t4, t0, a1
	add	t4, t1, t4
	add	t4, a0, t4
	mv	t5, a5
.LBB4_9:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	t6, t5, t2
	lbu	t6, 0(t6)
	regsw_c	x2, 0x0(x19)		# 100110001000000000000
	add	x1, t5, t3
	lbu	x1, 0(x1)
	add	t6, t6, x1
	addi	t6, t6, 1
	srli	t6, t6, 1
	sb	t6, 0(t5)
	addi	t5, t5, 1
	bne	t5, t4, .LBB4_9
# %bb.10:                               #   in Loop: Header=BB4_4 Depth=1
	addi	a2, a2, 2
	add	a5, a5, t0
	addi	a1, a1, 1
	blt	a2, a4, .LBB4_4
	j	.LBB4_20
.LBB4_11:
	blez	a3, .LBB4_20
# %bb.12:
	slliw	a5, a3, 1
	neg	t0, a5
	addiw	t1, a4, -2
	mul	t3, a3, a2
	add	a0, a0, t3
	slli	t2, a3, 1
	add	a1, a1, t3
	lui	t3, %hi(Clip)
.LBB4_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x2, a3
	beqz	a2, .LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x2, a6
.LBB4_15:                               #   in Loop: Header=BB4_13 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, a6
	beq	a2, a7, .LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_13 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, a3
.LBB4_17:                               #   in Loop: Header=BB4_13 Depth=1
	li	t4, 0
	slti	t5, a2, 2
	addi	t5, t5, -1
	and	t6, t5, t0
	slt	t5, a2, t1
	neg	t5, t5
	and	t5, t5, a5
	add	t5, a1, t5
	add	t6, a1, t6
	regsw_c	x16, 0x0(x22)		# 101101000000000000000
	add	x1, a0, x1
	add	x2, a0, x2
.LBB4_18:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x13, 0x534(x27)		# 110110110110100110100
	add	x3, x2, t4
	lbu	x3, 0(x3)
	add	x4, x1, t4
	lbu	x4, 0(x4)
	add	x5, a1, t4
	lbu	x5, 0(x5)
	add	x6, t6, t4
	regsw_c	x13, 0x7b7(x26)		# 110100110111110110111
	lbu	x6, 0(x6)
	add	x7, t5, t4
	lbu	x7, 0(x7)
	add	x3, x4, x3
	slli	x3, x3, 3
	slli	x5, x5, 1
	add	x6, x6, x7
	regsw_c	x25, 0x5f6(x31)		# 111111100110111110110
	sub	x4, x5, x6
	add	x3, x3, x4
	ld	x4, %lo(Clip)(t3)
	srli	x5, x3, 31
	add	x3, x5, x3
	addi	x3, x3, 8
	sraiw	x3, x3, 4
	regsw_c	x8, 0xc0(x31)		# 111110100000011000000
	add	x3, x4, x3
	lbu	x3, 0(x3)
	add	x4, a0, t4
	addi	t4, t4, 1
	sb	x3, 0(x4)
	bne	a3, t4, .LBB4_18
# %bb.19:                               #   in Loop: Header=BB4_13 Depth=1
	addi	a2, a2, 2
	add	a0, a0, t2
	add	a1, a1, t2
	blt	a2, a4, .LBB4_13
.LBB4_20:
	ret
.Lfunc_end4:
	.size	Deinterlace, .Lfunc_end4-Deinterlace
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L__const.Read_Lower_Layer_Component_Fieldwise.ext,@object # @__const.Read_Lower_Layer_Component_Fieldwise.ext
	.section	.rodata,"a",@progbits
.L__const.Read_Lower_Layer_Component_Fieldwise.ext:
	.asciz	".Y"
	.asciz	".U"
	.asciz	".V"
	.size	.L__const.Read_Lower_Layer_Component_Fieldwise.ext, 9

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
