	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"recon.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	form_predictions                # -- Begin function form_predictions
	.p2align	2
	.type	form_predictions,@function
form_predictions:                       # @form_predictions
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
	mv	s3, a5
	mv	s1, a4
	mv	s4, a3
	mv	s5, a2
	mv	s2, a1
	mv	s0, a0
	lui	a0, 349525
	addiw	a0, a0, 1366
	mul	a0, a7, a0
	srli	a1, a0, 63
	srli	a0, a0, 32
	addw	s8, a0, a1
	slli	a2, s8, 1
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	subw	a3, a7, s8
	andi	a1, s5, 8
	subw	s7, a3, a2
	bnez	a1, .LBB0_3
# %bb.1:
	li	a2, 2
	beq	a0, a2, .LBB0_3
# %bb.2:
	mv	s6, s7
	mv	s7, s8
	j	.LBB0_44
.LBB0_3:
	lui	a2, %hi(picture_structure)
	lw	a3, %lo(picture_structure)(a2)
	li	a2, 3
	bne	a3, a2, .LBB0_12
# %bb.4:
	li	a0, 2
	beq	s4, a0, .LBB0_16
# %bb.5:
	beqz	a1, .LBB0_16
# %bb.6:
	mv	s9, a7
	li	a0, 3
	beq	s4, a0, .LBB0_35
# %bb.7:
	li	s6, 1
	bne	s4, s6, .LBB0_34
# %bb.8:
	li	s6, 1
	blt	s6, s7, .LBB0_10
# %bb.9:
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	lw	a1, 0(s3)
	lw	t3, 4(s1)
	lw	t2, 0(s1)
	slliw	a3, a0, 1
	srai	a7, s2, 1
	srai	t3, t3, 1
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	li	a5, 8
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	t4, s7
	call	form_prediction
.LBB0_10:
	li	a0, 5
	li	s7, 1
	blt	a0, s9, .LBB0_44
# %bb.11:
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	lw	a1, 8(s3)
	lw	t3, 20(s1)
	lw	t2, 16(s1)
	slliw	a3, a0, 1
	srai	a7, s2, 1
	srai	t3, t3, 1
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	li	a2, 1
	li	a5, 8
	li	s6, 1
	mv	a4, a3
	mv	a6, s0
	j	.LBB0_20
.LBB0_12:
	lui	a2, %hi(Second_Field)
	lw	a2, %lo(Second_Field)(a2)
	addi	a3, a3, -2
	li	a4, 2
	seqz	s8, a3
	bne	a0, a4, .LBB0_15
# %bb.13:
	beqz	a2, .LBB0_15
# %bb.14:
	lw	a0, 0(s3)
	bne	a0, s8, .LBB0_21
.LBB0_15:
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	li	s6, 1
	bne	s4, s6, .LBB0_22
	j	.LBB0_31
.LBB0_16:
	li	s6, 1
	blt	s6, s7, .LBB0_18
# %bb.17:
	lui	a0, %hi(Coded_Picture_Width)
	lw	a3, %lo(Coded_Picture_Width)(a0)
	lw	t2, 0(s1)
	lw	t3, 4(s1)
	slliw	a4, a3, 1
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	li	a5, 8
	li	a1, 0
	li	a2, 0
	mv	a6, s0
	mv	s9, a7
	mv	a7, s2
	mv	t4, s7
	call	form_prediction
	mv	a7, s9
.LBB0_18:
	li	a0, 5
	li	s7, 1
	blt	a0, a7, .LBB0_44
# %bb.19:
	lui	a0, %hi(Coded_Picture_Width)
	lw	a3, %lo(Coded_Picture_Width)(a0)
	lw	t2, 0(s1)
	lw	t3, 4(s1)
	slliw	a4, a3, 1
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	li	a1, 1
	li	a2, 1
	li	a5, 8
	li	s6, 1
	mv	a6, s0
	mv	a7, s2
.LBB0_20:
	mv	t4, s8
	j	.LBB0_42
.LBB0_21:
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	li	s6, 1
	beq	s4, s6, .LBB0_31
.LBB0_22:
	beqz	a1, .LBB0_31
# %bb.23:
	li	a1, 3
	beq	s4, a1, .LBB0_39
# %bb.24:
	li	a1, 2
	bne	s4, a1, .LBB0_34
# %bb.25:
	li	s6, 1
	blt	s6, s7, .LBB0_43
# %bb.26:
	lw	a1, 0(s3)
	lui	s9, %hi(Coded_Picture_Width)
	lw	a2, %lo(Coded_Picture_Width)(s9)
	lw	t2, 0(s1)
	lw	t3, 4(s1)
	slliw	a3, a2, 1
	li	a5, 8
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s2
	mv	t4, s7
	call	form_prediction
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	lui	a1, %hi(Second_Field)
	lw	a2, %lo(Second_Field)(a1)
	addi	a0, a0, -2
	lw	a1, 8(s3)
	seqz	a0, a0
	snez	a3, a2
	lui	a2, %hi(forward_reference_frame)
	addi	a2, a2, %lo(forward_reference_frame)
	and	a3, a0, a3
	mv	a0, a2
	beq	a1, s8, .LBB0_28
# %bb.27:
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
.LBB0_28:
	bnez	a3, .LBB0_30
# %bb.29:
	mv	a0, a2
.LBB0_30:
	lw	a2, %lo(Coded_Picture_Width)(s9)
	lw	t2, 16(s1)
	lw	t3, 20(s1)
	slliw	a3, a2, 1
	addiw	a7, s2, 8
	li	a5, 8
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	j	.LBB0_33
.LBB0_31:
	blt	s6, s7, .LBB0_43
# %bb.32:
	lw	a1, 0(s3)
	lui	a2, %hi(Coded_Picture_Width)
	lw	a2, %lo(Coded_Picture_Width)(a2)
	lw	t2, 0(s1)
	lw	t3, 4(s1)
	slliw	a3, a2, 1
	li	a5, 16
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s2
.LBB0_33:
	mv	t4, s7
	j	.LBB0_42
.LBB0_34:
	lui	a0, %hi(.Lstr.2)
	addi	a0, a0, %lo(.Lstr.2)
	call	puts
	j	.LBB0_43
.LBB0_35:
	lw	a3, 4(s1)
	lw	a2, 0(s1)
	srai	a3, a3, 1
	mv	a0, sp
	mv	a1, a6
	call	Dual_Prime_Arithmetic
	li	s6, 1
	blt	s6, s7, .LBB0_37
# %bb.36:
	lui	s10, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(s10)
	lw	t3, 4(s1)
	lw	t2, 0(s1)
	slliw	a3, a0, 1
	srai	s7, s2, 1
	srai	t3, t3, 1
	lui	s8, %hi(forward_reference_frame)
	addi	s8, s8, %lo(forward_reference_frame)
	li	a5, 8
	mv	a0, s8
	li	a1, 0
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s7
	li	t4, 0
	call	form_prediction
	lw	a0, %lo(Coded_Picture_Width)(s10)
	lw	t2, 0(sp)
	lw	t3, 4(sp)
	slliw	a3, a0, 1
	li	a1, 1
	li	a5, 8
	li	t4, 1
	mv	a0, s8
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s7
	call	form_prediction
.LBB0_37:
	li	a0, 5
	li	s7, 1
	blt	a0, s9, .LBB0_44
# %bb.38:
	lui	s9, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(s9)
	lw	t3, 4(s1)
	lw	t2, 0(s1)
	slliw	a3, a0, 1
	srai	s7, s2, 1
	srai	t3, t3, 1
	lui	s8, %hi(forward_reference_frame)
	addi	s8, s8, %lo(forward_reference_frame)
	li	a1, 1
	li	a2, 1
	li	a5, 8
	li	s6, 1
	mv	a0, s8
	mv	a4, a3
	mv	a6, s0
	mv	a7, s7
	li	t4, 0
	call	form_prediction
	lw	a0, %lo(Coded_Picture_Width)(s9)
	lw	t2, 8(sp)
	lw	t3, 12(sp)
	slliw	a3, a0, 1
	li	a2, 1
	li	a5, 8
	li	t4, 1
	mv	a0, s8
	li	a1, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s7
	j	.LBB0_42
.LBB0_39:
	lui	s6, %hi(forward_reference_frame)
	addi	s6, s6, %lo(forward_reference_frame)
	snez	s7, a3
	mv	s9, s6
	beqz	a2, .LBB0_41
# %bb.40:
	lui	s9, %hi(backward_reference_frame)
	addi	s9, s9, %lo(backward_reference_frame)
.LBB0_41:
	lw	a2, 0(s1)
	lw	a3, 4(s1)
	mv	a0, sp
	mv	a1, a6
	call	Dual_Prime_Arithmetic
	lui	s10, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(s10)
	lw	t2, 0(s1)
	lw	t3, 4(s1)
	slliw	a3, a0, 1
	li	a5, 16
	mv	a0, s6
	mv	a1, s8
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s2
	li	t4, 0
	call	form_prediction
	lw	a0, %lo(Coded_Picture_Width)(s10)
	lw	t2, 0(sp)
	lw	t3, 4(sp)
	slliw	a3, a0, 1
	li	a5, 16
	li	t4, 1
	li	s6, 1
	mv	a0, s9
	mv	a1, s7
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s2
.LBB0_42:
	call	form_prediction
.LBB0_43:
	li	s7, 1
.LBB0_44:
	andi	a0, s5, 4
	beqz	a0, .LBB0_62
# %bb.45:
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	li	a1, 3
	bne	a0, a1, .LBB0_51
# %bb.46:
	li	a0, 2
	bne	s4, a0, .LBB0_54
# %bb.47:
	li	s3, 1
	blt	s3, s6, .LBB0_49
# %bb.48:
	lui	a0, %hi(Coded_Picture_Width)
	lw	a3, %lo(Coded_Picture_Width)(a0)
	lw	t2, 8(s1)
	lw	t3, 12(s1)
	slliw	a4, a3, 1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	li	a5, 8
	li	a1, 0
	li	a2, 0
	mv	a6, s0
	mv	a7, s2
	mv	t4, s6
	call	form_prediction
.LBB0_49:
	blt	s3, s7, .LBB0_62
# %bb.50:
	lui	a0, %hi(Coded_Picture_Width)
	lw	a3, %lo(Coded_Picture_Width)(a0)
	lw	t2, 8(s1)
	lw	t3, 12(s1)
	slliw	a4, a3, 1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	li	a1, 1
	li	a2, 1
	li	a5, 8
	j	.LBB0_58
.LBB0_51:
	li	a0, 2
	beq	s4, a0, .LBB0_59
# %bb.52:
	li	a0, 1
	bne	s4, a0, .LBB0_61
# %bb.53:
	lw	a1, 4(s3)
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	lw	t2, 8(s1)
	lw	t3, 12(s1)
	slliw	a3, a0, 1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	li	a5, 16
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s2
	j	.LBB0_60
.LBB0_54:
	li	s4, 1
	srai	s2, s2, 1
	blt	s4, s6, .LBB0_56
# %bb.55:
	lw	a1, 4(s3)
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	lw	t3, 12(s1)
	lw	t2, 8(s1)
	slliw	a3, a0, 1
	srai	t3, t3, 1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	li	a5, 8
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s2
	mv	t4, s6
	call	form_prediction
.LBB0_56:
	blt	s4, s7, .LBB0_62
# %bb.57:
	lw	a1, 12(s3)
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	lw	t3, 28(s1)
	lw	t2, 24(s1)
	slliw	a3, a0, 1
	srai	t3, t3, 1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	li	a2, 1
	li	a5, 8
	mv	a4, a3
.LBB0_58:
	mv	a6, s0
	mv	a7, s2
	mv	t4, s7
	call	form_prediction
	j	.LBB0_62
.LBB0_59:
	lw	a1, 4(s3)
	lui	s5, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(s5)
	lw	t2, 8(s1)
	lw	t3, 12(s1)
	slliw	a3, a0, 1
	lui	s4, %hi(backward_reference_frame)
	addi	s4, s4, %lo(backward_reference_frame)
	li	a5, 8
	mv	a0, s4
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
	mv	a7, s2
	mv	t4, s6
	call	form_prediction
	lw	a1, 12(s3)
	lw	a0, %lo(Coded_Picture_Width)(s5)
	lw	t2, 24(s1)
	lw	t3, 28(s1)
	slliw	a3, a0, 1
	addiw	a7, s2, 8
	li	a5, 8
	mv	a0, s4
	li	a2, 0
	mv	a4, a3
	mv	a6, s0
.LBB0_60:
	mv	t4, s6
	call	form_prediction
	j	.LBB0_62
.LBB0_61:
	lui	a0, %hi(.Lstr.2)
	addi	a0, a0, %lo(.Lstr.2)
	call	puts
.LBB0_62:
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
	addi	sp, sp, 112
	ret
.Lfunc_end0:
	.size	form_predictions, .Lfunc_end0-form_predictions
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function form_prediction
	.type	form_prediction,@function
form_prediction:                        # @form_prediction
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
	mv	s2, t2
	mv	s1, a6
	mv	s5, a5
	mv	s10, a4
	mv	s6, a3
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	ld	a0, 0(a0)
	seqz	s11, a1
	srai	s8, a4, 1
	addi	s11, s11, -1
	and	a1, s11, s8
	add	a0, a0, a1
	lui	a1, %hi(current_frame)
	ld	a1, %lo(current_frame)(a1)
	seqz	s0, a2
	addi	s0, s0, -1
	and	a2, s0, s8
	add	a1, a1, a2
	li	a4, 16
	mv	a2, a3
	mv	a3, s10
	mv	s7, a7
	mv	s9, t3
	mv	s3, t4
	call	form_component_prediction
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 3
	bne	a0, a1, .LBB1_2
# %bb.1:
	mv	a6, s1
	li	s4, 16
	mv	s1, s5
	mv	s8, s10
	j	.LBB1_5
.LBB1_2:
	srai	s6, s6, 1
	srai	a6, s1, 1
	srliw	a1, s2, 31
	add	a1, s2, a1
	sraiw	s2, a1, 1
	li	a1, 1
	li	s4, 8
	bne	a0, a1, .LBB1_4
# %bb.3:
	srliw	s1, s5, 1
	srai	s7, s7, 1
	srliw	a0, s9, 31
	add	a0, s9, a0
	sraiw	s9, a0, 1
	j	.LBB1_5
.LBB1_4:
	mv	s1, s5
.LBB1_5:
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	ld	a0, 8(s5)
	srai	a1, s8, 1
	lui	a2, %hi(current_frame)
	addi	a2, a2, %lo(current_frame)
	ld	a2, 8(a2)
	and	s11, s11, a1
	add	a0, a0, s11
	and	s0, s0, a1
	add	a1, a2, s0
	mv	a2, s6
	mv	a3, s8
	mv	a4, s4
	mv	a5, s1
	mv	s10, a6
	mv	a7, s7
	mv	t2, s2
	mv	t3, s9
	mv	t4, s3
	call	form_component_prediction
	ld	a0, 16(s5)
	lui	a1, %hi(current_frame)
	addi	a1, a1, %lo(current_frame)
	ld	a1, 16(a1)
	add	a0, a0, s11
	add	a1, a1, s0
	mv	a2, s6
	mv	a3, s8
	mv	a4, s4
	mv	a5, s1
	mv	a6, s10
	mv	a7, s7
	mv	t2, s2
	mv	t3, s9
	mv	t4, s3
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
	tail	form_component_prediction
.Lfunc_end1:
	.size	form_prediction, .Lfunc_end1-form_prediction
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function form_component_prediction
	.type	form_component_prediction,@function
form_component_prediction:              # @form_component_prediction
# %bb.0:
	srai	t5, t2, 1
	srli	t0, t3, 1
	add	t0, t0, a7
	mulw	t1, t0, a2
	add	t0, a0, a6
	add	t0, t0, t5
	add	t0, t0, t1
	mulw	t6, a7, a2
	add	a7, a1, a6
	regsw_c	x0, 0x400(x19)		# 100110000010000000000
	or	x1, t3, t2
	andi	x1, x1, 1
	add	a7, a7, t6
	bnez	x1, .LBB2_8
# %bb.1:
	beqz	t4, .LBB2_26
# %bb.2:
	blez	a5, .LBB2_57
# %bb.3:
	blez	a4, .LBB2_57
# %bb.4:
	li	a1, 0
	li	a2, 0
	add	a6, t5, a6
	add	a4, a6, a4
	add	t1, a4, t1
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	mul	a4, a3, a1
	add	a4, t1, a4
	add	a4, a0, a4
	mv	a6, a7
	mv	t2, t0
.LBB2_6:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(a6)
	lbu	t4, 0(t2)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	sb	t3, 0(a6)
	addi	t2, t2, 1
	addi	a6, a6, 1
	bne	t2, a4, .LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	add	t0, t0, a3
	add	a7, a7, a3
	addiw	a2, a2, 1
	addi	a1, a1, 1
	bne	a2, a5, .LBB2_5
	j	.LBB2_57
.LBB2_8:
	andi	t2, t2, 1
	andi	t3, t3, 1
	bnez	t2, .LBB2_17
# %bb.9:
	beqz	t3, .LBB2_17
# %bb.10:
	beqz	t4, .LBB2_39
# %bb.11:
	blez	a5, .LBB2_57
# %bb.12:
	blez	a4, .LBB2_57
# %bb.13:
	li	a1, 0
	li	t2, 0
	add	a6, t5, a6
	add	a2, a6, a2
	add	t1, a2, t1
	add	a2, a0, t1
	add	a4, t1, a4
.LBB2_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	mul	a6, a3, a1
	add	a6, a4, a6
	add	a6, a0, a6
	mv	t1, a7
	mv	t3, t0
	mv	t4, a2
.LBB2_15:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t5, 0(t3)
	lbu	t6, 0(t4)
	regsw_c	x0, 0x80(x16)		# 100000000000010000000
	lbu	x1, 0(t1)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	add	t5, x1, t5
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(t1)
	addi	t4, t4, 1
	addi	t3, t3, 1
	addi	t1, t1, 1
	bne	t4, a6, .LBB2_15
# %bb.16:                               #   in Loop: Header=BB2_14 Depth=1
	add	t0, t0, a3
	add	a7, a7, a3
	addiw	t2, t2, 1
	add	a2, a2, a3
	addi	a1, a1, 1
	bne	t2, a5, .LBB2_14
	j	.LBB2_57
.LBB2_17:
	beqz	t2, .LBB2_32
# %bb.18:
	bnez	t3, .LBB2_32
# %bb.19:
	beqz	t4, .LBB2_51
# %bb.20:
	blez	a5, .LBB2_57
# %bb.21:
	blez	a4, .LBB2_57
# %bb.22:
	li	a2, 0
	li	t0, 0
	add	t5, t5, a6
	add	a0, t5, a0
	add	a0, a0, t1
	addi	a0, a0, 1
	add	a6, a6, t6
	add	a4, a6, a4
.LBB2_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_24 Depth 2
	mul	a6, a3, a2
	add	a6, a4, a6
	add	a6, a1, a6
	mv	t1, a0
	mv	t2, a7
.LBB2_24:                               #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, -1(t1)
	lbu	t4, 0(t1)
	lbu	t5, 0(t2)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	add	t3, t5, t3
	addi	t3, t3, 1
	srli	t3, t3, 1
	sb	t3, 0(t2)
	addi	t2, t2, 1
	addi	t1, t1, 1
	bne	t2, a6, .LBB2_24
# %bb.25:                               #   in Loop: Header=BB2_23 Depth=1
	add	a7, a7, a3
	addiw	t0, t0, 1
	add	a0, a0, a3
	addi	a2, a2, 1
	bne	t0, a5, .LBB2_23
	j	.LBB2_57
.LBB2_26:
	blez	a5, .LBB2_57
# %bb.27:
	blez	a4, .LBB2_57
# %bb.28:
	li	a0, 0
	li	a2, 0
	add	a6, a6, t6
	add	a4, a6, a4
.LBB2_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_30 Depth 2
	mul	a6, a3, a0
	add	a6, a4, a6
	add	a6, a1, a6
	mv	t1, t0
	mv	t2, a7
.LBB2_30:                               #   Parent Loop BB2_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t1)
	sb	t3, 0(t2)
	addi	t2, t2, 1
	addi	t1, t1, 1
	bne	t2, a6, .LBB2_30
# %bb.31:                               #   in Loop: Header=BB2_29 Depth=1
	add	t0, t0, a3
	add	a7, a7, a3
	addiw	a2, a2, 1
	addi	a0, a0, 1
	bne	a2, a5, .LBB2_29
	j	.LBB2_57
.LBB2_32:
	beqz	t4, .LBB2_45
# %bb.33:
	blez	a5, .LBB2_57
# %bb.34:
	blez	a4, .LBB2_57
# %bb.35:
	li	t0, 0
	li	t2, 0
	add	t5, t5, a6
	add	a0, t5, a0
	add	a0, a0, t1
	addi	a0, a0, 1
	add	a2, a0, a2
	add	a6, a6, t6
	add	a4, a6, a4
.LBB2_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_37 Depth 2
	mul	a6, a3, t0
	add	a6, a4, a6
	add	a6, a1, a6
	mv	t1, a0
	mv	t3, a2
	mv	t4, a7
.LBB2_37:                               #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t5, -1(t1)
	lbu	t6, 0(t1)
	regsw_c	x8, 0x1c8(x18)		# 100100100000111001000
	lbu	x1, -1(t3)
	lbu	x2, 0(t3)
	lbu	x3, 0(t4)
	add	t5, t5, t6
	add	x1, x1, x2
	add	t5, t5, x1
	addi	t5, t5, 2
	srli	t5, t5, 2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	t5, x3, t5
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(t4)
	addi	t4, t4, 1
	addi	t3, t3, 1
	addi	t1, t1, 1
	bne	t4, a6, .LBB2_37
# %bb.38:                               #   in Loop: Header=BB2_36 Depth=1
	add	a7, a7, a3
	addiw	t2, t2, 1
	add	a2, a2, a3
	add	a0, a0, a3
	addi	t0, t0, 1
	bne	t2, a5, .LBB2_36
	j	.LBB2_57
.LBB2_39:
	blez	a5, .LBB2_57
# %bb.40:
	blez	a4, .LBB2_57
# %bb.41:
	li	t2, 0
	li	t3, 0
	add	t5, t5, a6
	add	a2, t5, a2
	add	a2, a2, t1
	add	a0, a0, a2
	add	a6, a6, t6
	add	a4, a6, a4
.LBB2_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_43 Depth 2
	mul	a2, a3, t2
	add	a2, a4, a2
	add	a2, a1, a2
	mv	a6, t0
	mv	t1, a0
	mv	t4, a7
.LBB2_43:                               #   Parent Loop BB2_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t5, 0(a6)
	lbu	t6, 0(t1)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(t4)
	addi	t4, t4, 1
	addi	t1, t1, 1
	addi	a6, a6, 1
	bne	t4, a2, .LBB2_43
# %bb.44:                               #   in Loop: Header=BB2_42 Depth=1
	add	t0, t0, a3
	add	a7, a7, a3
	addiw	t3, t3, 1
	add	a0, a0, a3
	addi	t2, t2, 1
	bne	t3, a5, .LBB2_42
	j	.LBB2_57
.LBB2_45:
	blez	a5, .LBB2_57
# %bb.46:
	blez	a4, .LBB2_57
# %bb.47:
	li	t0, 0
	li	t2, 0
	add	t5, t5, a6
	add	a0, t5, a0
	add	a0, a0, t1
	addi	a0, a0, 1
	add	a2, a0, a2
	add	a6, a6, t6
	add	a4, a6, a4
.LBB2_48:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_49 Depth 2
	mul	a6, a3, t0
	add	a6, a4, a6
	add	a6, a1, a6
	mv	t1, a2
	mv	t3, a0
	mv	t4, a7
.LBB2_49:                               #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t5, -1(t3)
	lbu	t6, 0(t3)
	regsw_c	x1, 0x640(x18)		# 100100000111001000000
	lbu	x1, -1(t1)
	lbu	x2, 0(t1)
	add	t5, t5, t6
	add	x1, x1, x2
	add	t5, t5, x1
	addi	t5, t5, 2
	srli	t5, t5, 2
	sb	t5, 0(t4)
	addi	t4, t4, 1
	addi	t3, t3, 1
	addi	t1, t1, 1
	bne	t4, a6, .LBB2_49
# %bb.50:                               #   in Loop: Header=BB2_48 Depth=1
	add	a7, a7, a3
	addiw	t2, t2, 1
	add	a0, a0, a3
	add	a2, a2, a3
	addi	t0, t0, 1
	bne	t2, a5, .LBB2_48
	j	.LBB2_57
.LBB2_51:
	blez	a5, .LBB2_57
# %bb.52:
	blez	a4, .LBB2_57
# %bb.53:
	li	a2, 0
	li	t0, 0
	add	t5, t5, a6
	add	a0, t5, a0
	add	a0, a0, t1
	addi	a0, a0, 1
	add	a6, a6, t6
	add	a4, a6, a4
.LBB2_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_55 Depth 2
	mul	a6, a3, a2
	add	a6, a4, a6
	add	a6, a1, a6
	mv	t1, a0
	mv	t2, a7
.LBB2_55:                               #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, -1(t1)
	lbu	t4, 0(t1)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	sb	t3, 0(t2)
	addi	t2, t2, 1
	addi	t1, t1, 1
	bne	t2, a6, .LBB2_55
# %bb.56:                               #   in Loop: Header=BB2_54 Depth=1
	add	a7, a7, a3
	addiw	t0, t0, 1
	add	a0, a0, a3
	addi	a2, a2, 1
	bne	t0, a5, .LBB2_54
.LBB2_57:
	ret
.Lfunc_end2:
	.size	form_component_prediction, .Lfunc_end2-form_component_prediction
                                        # -- End function
	.option	pop
	.type	.Lstr.2,@object                 # @str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.2:
	.asciz	"invalid motion_type"
	.size	.Lstr.2, 20

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
