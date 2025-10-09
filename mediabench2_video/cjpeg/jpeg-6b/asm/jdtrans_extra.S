	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdtrans.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_read_coefficients          # -- Begin function jpeg_read_coefficients
	.p2align	2
	.type	jpeg_read_coefficients,@function
jpeg_read_coefficients:                 # @jpeg_read_coefficients
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a1, 208
	blt	a1, a0, .LBB0_4
# %bb.1:
	li	a1, 202
	beq	a0, a1, .LBB0_6
# %bb.2:
	li	a1, 207
	bne	a0, a1, .LBB0_30
.LBB0_3:
	lw	a1, 88(s0)
	bnez	a1, .LBB0_29
	j	.LBB0_30
.LBB0_4:
	li	a1, 209
	beq	a0, a1, .LBB0_19
# %bb.5:
	li	a1, 210
	beq	a0, a1, .LBB0_3
	j	.LBB0_30
.LBB0_6:
	lw	a1, 316(s0)
	li	a0, 1
	sw	a0, 88(s0)
	beqz	a1, .LBB0_8
# %bb.7:
	ld	a1, 0(s0)
	ld	a2, 0(a1)
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	j	.LBB0_11
.LBB0_8:
	lw	a0, 312(s0)
	beqz	a0, .LBB0_10
# %bb.9:
	mv	a0, s0
	call	jinit_phuff_decoder
	j	.LBB0_11
.LBB0_10:
	mv	a0, s0
	call	jinit_huff_decoder
.LBB0_11:
	li	a1, 1
	mv	a0, s0
	call	jinit_d_coef_controller
	ld	a0, 8(s0)
	ld	a1, 48(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 576(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 16(s0)
	beqz	a0, .LBB0_18
# %bb.12:
	lw	a1, 312(s0)
	beqz	a1, .LBB0_14
# %bb.13:
	lw	a1, 56(s0)
	slli	a2, a1, 1
	add	a1, a2, a1
	addiw	a1, a1, 2
	j	.LBB0_17
.LBB0_14:
	ld	a1, 576(s0)
	lw	a1, 32(a1)
	beqz	a1, .LBB0_16
# %bb.15:
	lw	a1, 56(s0)
	j	.LBB0_17
.LBB0_16:
	li	a1, 1
.LBB0_17:
	lwu	a2, 420(s0)
	sd	zero, 8(a0)
	mul	a1, a2, a1
	sd	a1, 16(a0)
	li	a1, 1
	slli	a1, a1, 32
	sd	a1, 24(a0)
.LBB0_18:
	li	a0, 209
	sw	a0, 36(s0)
.LBB0_19:
	ld	a1, 16(s0)
	li	s1, 2
	li	s2, 1
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	beqz	a1, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a1, 0(a1)
	mv	a0, s0
	jalr	a1
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a0, 576(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB0_31
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=1
	beq	a0, s1, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a1, 16(s0)
	andi	a0, a0, -3
	bne	a0, s2, .LBB0_20
# %bb.25:                               #   in Loop: Header=BB0_20 Depth=1
	beqz	a1, .LBB0_20
# %bb.26:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a2, 8(a1)
	ld	a0, 16(a1)
	addi	a2, a2, 1
	sd	a2, 8(a1)
	blt	a2, a0, .LBB0_20
# %bb.27:                               #   in Loop: Header=BB0_20 Depth=1
	lwu	a2, 420(s0)
	add	a0, a0, a2
	sd	a0, 16(a1)
	j	.LBB0_20
.LBB0_28:
	li	a0, 210
	sw	a0, 36(s0)
	lw	a1, 88(s0)
	beqz	a1, .LBB0_30
.LBB0_29:
	ld	a0, 560(s0)
	ld	a0, 32(a0)
	j	.LBB0_31
.LBB0_30:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	li	a0, 0
.LBB0_31:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jpeg_read_coefficients, .Lfunc_end0-jpeg_read_coefficients
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
