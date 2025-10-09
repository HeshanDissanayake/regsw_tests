	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdapistd.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_start_decompress           # -- Begin function jpeg_start_decompress
	.p2align	2
	.type	jpeg_start_decompress,@function
jpeg_start_decompress:                  # @jpeg_start_decompress
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a1, 204
	beq	a0, a1, .LBB0_17
# %bb.1:
	li	a1, 203
	beq	a0, a1, .LBB0_5
# %bb.2:
	li	a1, 202
	bne	a0, a1, .LBB0_15
# %bb.3:
	mv	a0, s0
	call	jinit_master_decompress
	lw	a1, 88(s0)
	li	a0, 207
	bnez	a1, .LBB0_26
# %bb.4:
	li	a0, 203
	sw	a0, 36(s0)
.LBB0_5:
	ld	a0, 576(s0)
	lw	a0, 32(a0)
	beqz	a0, .LBB0_28
# %bb.6:
	ld	a1, 16(s0)
	li	s1, 2
	li	s2, 1
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	beqz	a1, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	ld	a1, 0(a1)
	mv	a0, s0
	jalr	a1
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	ld	a0, 576(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	beq	a0, s1, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	ld	a1, 16(s0)
	andi	a0, a0, -3
	bne	a0, s2, .LBB0_7
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	beqz	a1, .LBB0_7
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	ld	a2, 8(a1)
	ld	a0, 16(a1)
	addi	a2, a2, 1
	sd	a2, 8(a1)
	blt	a2, a0, .LBB0_7
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	lwu	a2, 420(s0)
	add	a0, a0, a2
	sd	a0, 16(a1)
	j	.LBB0_7
.LBB0_15:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	lw	a0, 36(s0)
	li	s1, 204
	beq	a0, s1, .LBB0_17
.LBB0_16:
	ld	a0, 544(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	sw	zero, 168(s0)
	sw	s1, 36(s0)
.LBB0_17:
	ld	a0, 544(s0)
	lw	a0, 16(a0)
	beqz	a0, .LBB0_25
# %bb.18:
	lwu	a0, 168(s0)
	addi	s1, s0, 168
	j	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a0, 544(s0)
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 544(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 544(s0)
	lw	a1, 16(a0)
	li	a0, 0
	sw	zero, 168(s0)
	beqz	a1, .LBB0_25
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	lwu	a1, 140(s0)
	bgeu	a0, a1, .LBB0_19
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a2, 16(s0)
	beqz	a2, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a3, 0(a2)
	sd	a0, 8(a2)
	sd	a1, 16(a2)
	mv	a0, s0
	jalr	a3
	lwu	a0, 168(s0)
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=1
	ld	a1, 552(s0)
	ld	a4, 8(a1)
	mv	s2, a0
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	li	a3, 0
	jalr	a4
	lwu	a0, 168(s0)
	bne	a0, s2, .LBB0_20
# %bb.24:
	li	a0, 0
	j	.LBB0_27
.LBB0_25:
	lw	a0, 92(s0)
	snez	a0, a0
	addi	a0, a0, 205
.LBB0_26:
	sw	a0, 36(s0)
	li	a0, 1
.LBB0_27:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB0_28:
	lw	a0, 172(s0)
	sw	a0, 180(s0)
	lw	a0, 36(s0)
	li	s1, 204
	bne	a0, s1, .LBB0_16
	j	.LBB0_17
.Lfunc_end0:
	.size	jpeg_start_decompress, .Lfunc_end0-jpeg_start_decompress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_read_scanlines             # -- Begin function jpeg_read_scanlines
	.p2align	2
	.type	jpeg_read_scanlines,@function
jpeg_read_scanlines:                    # @jpeg_read_scanlines
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a3, 205
	mv	s1, a2
	mv	s2, a1
	beq	a0, a3, .LBB1_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB1_2:
	lw	a2, 168(s0)
	lw	a1, 140(s0)
	bgeu	a2, a1, .LBB1_6
# %bb.3:
	ld	a0, 16(s0)
	beqz	a0, .LBB1_5
# %bb.4:
	slli	a2, a2, 32
	srli	a2, a2, 32
	slli	a1, a1, 32
	ld	a3, 0(a0)
	srli	a1, a1, 32
	sd	a2, 8(a0)
	sd	a1, 16(a0)
	mv	a0, s0
	jalr	a3
.LBB1_5:
	ld	a0, 552(s0)
	ld	a4, 8(a0)
	sw	zero, 12(sp)
	addi	a2, sp, 12
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	jalr	a4
	lw	a0, 12(sp)
	lw	a1, 168(s0)
	add	a1, a1, a0
	sw	a1, 168(s0)
	j	.LBB1_7
.LBB1_6:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 123
	sw	a1, 40(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	li	a0, 0
.LBB1_7:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	jpeg_read_scanlines, .Lfunc_end1-jpeg_read_scanlines
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_read_raw_data              # -- Begin function jpeg_read_raw_data
	.p2align	2
	.type	jpeg_read_raw_data,@function
jpeg_read_raw_data:                     # @jpeg_read_raw_data
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a3, 206
	mv	s2, a2
	mv	s1, a1
	beq	a0, a3, .LBB2_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB2_2:
	lw	a2, 168(s0)
	lw	a1, 140(s0)
	bgeu	a2, a1, .LBB2_9
# %bb.3:
	ld	a0, 16(s0)
	beqz	a0, .LBB2_5
# %bb.4:
	slli	a2, a2, 32
	srli	a2, a2, 32
	slli	a1, a1, 32
	ld	a3, 0(a0)
	srli	a1, a1, 32
	sd	a2, 8(a0)
	sd	a1, 16(a0)
	mv	a0, s0
	jalr	a3
.LBB2_5:
	lw	a0, 412(s0)
	lw	a1, 416(s0)
	mulw	s3, a1, a0
	bgeu	s2, s3, .LBB2_7
# %bb.6:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 23
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_7:
	ld	a0, 560(s0)
	ld	a2, 24(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
	beqz	a0, .LBB2_10
# %bb.8:
	lw	a0, 168(s0)
	add	a0, a0, s3
	sw	a0, 168(s0)
	j	.LBB2_11
.LBB2_9:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 123
	sw	a1, 40(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
.LBB2_10:
	li	s3, 0
.LBB2_11:
	mv	a0, s3
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	jpeg_read_raw_data, .Lfunc_end2-jpeg_read_raw_data
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_start_output               # -- Begin function jpeg_start_output
	.p2align	2
	.type	jpeg_start_output,@function
jpeg_start_output:                      # @jpeg_start_output
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a2, 204
	beq	a0, a2, .LBB3_3
# %bb.1:
	li	a2, 207
	beq	a0, a2, .LBB3_3
# %bb.2:
	ld	a2, 0(s0)
	sw	a0, 44(a2)
	ld	a0, 0(s0)
	ld	a3, 0(a0)
	li	a0, 20
	sw	a0, 40(a2)
	mv	a0, s0
	mv	s1, a1
	jalr	a3
	mv	a1, s1
.LBB3_3:
	bgtz	a1, .LBB3_5
# %bb.4:
	li	a1, 1
.LBB3_5:
	ld	a0, 576(s0)
	lw	a0, 36(a0)
	beqz	a0, .LBB3_8
# %bb.6:
	lw	a0, 172(s0)
	blt	a1, a0, .LBB3_8
# %bb.7:
	mv	a1, a0
.LBB3_8:
	lw	a0, 36(s0)
	li	s1, 204
	sw	a1, 180(s0)
	beq	a0, s1, .LBB3_10
# %bb.9:
	ld	a0, 544(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	sw	zero, 168(s0)
	sw	s1, 36(s0)
.LBB3_10:
	ld	a0, 544(s0)
	lw	a0, 16(a0)
	beqz	a0, .LBB3_18
# %bb.11:
	lwu	a0, 168(s0)
	addi	s1, s0, 168
	j	.LBB3_13
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	ld	a0, 544(s0)
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 544(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 544(s0)
	lw	a1, 16(a0)
	li	a0, 0
	sw	zero, 168(s0)
	beqz	a1, .LBB3_18
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	lwu	a1, 140(s0)
	bgeu	a0, a1, .LBB3_12
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	ld	a2, 16(s0)
	beqz	a2, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	ld	a3, 0(a2)
	sd	a0, 8(a2)
	sd	a1, 16(a2)
	mv	a0, s0
	jalr	a3
	lwu	a0, 168(s0)
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	ld	a1, 552(s0)
	ld	a4, 8(a1)
	mv	s2, a0
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	li	a3, 0
	jalr	a4
	lwu	a0, 168(s0)
	bne	a0, s2, .LBB3_13
# %bb.17:
	li	a0, 0
	j	.LBB3_19
.LBB3_18:
	lw	a0, 92(s0)
	snez	a0, a0
	addi	a0, a0, 205
	sw	a0, 36(s0)
	li	a0, 1
.LBB3_19:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	jpeg_start_output, .Lfunc_end3-jpeg_start_output
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_finish_output              # -- Begin function jpeg_finish_output
	.p2align	2
	.type	jpeg_finish_output,@function
jpeg_finish_output:                     # @jpeg_finish_output
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	addiw	a1, a0, -205
	li	a2, 1
	bltu	a2, a1, .LBB4_3
# %bb.1:
	lw	a1, 88(s0)
	beqz	a1, .LBB4_4
# %bb.2:
	ld	a0, 544(s0)
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
	li	a0, 208
	sw	a0, 36(s0)
	j	.LBB4_5
.LBB4_3:
	li	a1, 208
	beq	a0, a1, .LBB4_5
.LBB4_4:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 172(s0)
	lw	a1, 180(s0)
	blt	a1, a0, .LBB4_9
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	ld	a0, 576(s0)
	lw	a1, 36(a0)
	bnez	a1, .LBB4_9
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB4_5
# %bb.8:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB4_9:
	li	a0, 207
	sw	a0, 36(s0)
	li	a0, 1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	jpeg_finish_output, .Lfunc_end4-jpeg_finish_output
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
