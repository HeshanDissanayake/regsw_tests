	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdapimin.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_CreateDecompress           # -- Begin function jpeg_CreateDecompress
	.p2align	2
	.type	jpeg_CreateDecompress,@function
jpeg_CreateDecompress:                  # @jpeg_CreateDecompress
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s0, a0
	li	a0, 62
	sd	zero, 8(s0)
	beq	a1, a0, .LBB0_2
# %bb.1:
	ld	a0, 0(s0)
	li	a2, 31
	slli	a2, a2, 33
	addi	a2, a2, 12
	sd	a2, 40(a0)
	ld	a0, 0(s0)
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB0_2:
	li	a0, 632
	beq	s1, a0, .LBB0_4
# %bb.3:
	ld	a0, 0(s0)
	li	a1, 79
	slli	a1, a1, 35
	addi	a1, a1, 21
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	sw	s1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB0_4:
	ld	s1, 0(s0)
	ld	s2, 24(s0)
	addi	a0, s0, 8
	li	a2, 624
	li	a1, 0
	call	memset
	sd	s1, 0(s0)
	sd	s2, 24(s0)
	li	a0, 1
	sw	a0, 32(s0)
	mv	a0, s0
	call	jinit_memory_mgr
	sd	zero, 16(s0)
	sd	zero, 40(s0)
	addi	a0, s0, 200
	sd	zero, 400(s0)
	li	a2, 96
	li	a1, 0
	call	memset
	mv	a0, s0
	call	jinit_marker_reader
	mv	a0, s0
	call	jinit_input_controller
	li	a0, 200
	sw	a0, 36(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jpeg_CreateDecompress, .Lfunc_end0-jpeg_CreateDecompress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_destroy_decompress         # -- Begin function jpeg_destroy_decompress
	.p2align	2
	.type	jpeg_destroy_decompress,@function
jpeg_destroy_decompress:                # @jpeg_destroy_decompress
# %bb.0:
	tail	jpeg_destroy
.Lfunc_end1:
	.size	jpeg_destroy_decompress, .Lfunc_end1-jpeg_destroy_decompress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_abort_decompress           # -- Begin function jpeg_abort_decompress
	.p2align	2
	.type	jpeg_abort_decompress,@function
jpeg_abort_decompress:                  # @jpeg_abort_decompress
# %bb.0:
	tail	jpeg_abort
.Lfunc_end2:
	.size	jpeg_abort_decompress, .Lfunc_end2-jpeg_abort_decompress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_read_header                # -- Begin function jpeg_read_header
	.p2align	2
	.type	jpeg_read_header,@function
jpeg_read_header:                       # @jpeg_read_header
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	andi	a2, a0, -2
	li	a3, 200
	mv	s1, a1
	beq	a2, a3, .LBB3_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB3_2:
	mv	a0, s0
	call	jpeg_consume_input
	li	a1, 2
	bne	a0, a1, .LBB3_6
# %bb.3:
	mv	s2, a0
	beqz	s1, .LBB3_5
# %bb.4:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 51
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_5:
	mv	a0, s0
	call	jpeg_abort
	mv	a0, s2
.LBB3_6:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	jpeg_read_header, .Lfunc_end3-jpeg_read_header
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_consume_input              # -- Begin function jpeg_consume_input
	.p2align	2
	.type	jpeg_consume_input,@function
jpeg_consume_input:                     # @jpeg_consume_input
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lw	a2, 36(a0)
	addi	a1, a2, -200
	li	a3, 10
	bltu	a3, a1, .LBB4_13
# %bb.1:
	slli	a1, a1, 2
	lui	a3, %hi(.LJTI4_0)
	addi	a3, a3, %lo(.LJTI4_0)
	add	a1, a1, a3
	lw	a3, 0(a1)
	li	a1, 1
	jr	a3
.LBB4_2:
	ld	a1, 576(a0)
	ld	t1, 0(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.LBB4_3:
	ld	a1, 576(a0)
	ld	a1, 8(a1)
	mv	s0, a0
	jalr	a1
	ld	a0, 40(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	mv	a0, s0
	li	a1, 201
	sw	a1, 36(s0)
.LBB4_4:
	ld	a1, 576(a0)
	ld	a1, 0(a1)
	mv	s0, a0
	jalr	a1
	li	a2, 1
	mv	a1, a0
	bne	a0, a2, .LBB4_32
# %bb.5:
	mv	a0, s0
	lw	a1, 56(s0)
	beq	a1, a2, .LBB4_18
# %bb.6:
	li	s1, 4
	beq	a1, s1, .LBB4_14
# %bb.7:
	li	s2, 3
	bne	a1, s2, .LBB4_19
# %bb.8:
	lw	a1, 372(a0)
	li	s1, 2
	bnez	a1, .LBB4_31
# %bb.9:
	lw	a1, 384(a0)
	beqz	a1, .LBB4_22
# %bb.10:
	lbu	a1, 388(a0)
	li	s1, 2
	beqz	a1, .LBB4_28
# %bb.11:
	li	a2, 1
	beq	a1, a2, .LBB4_31
# %bb.12:
	ld	a2, 0(a0)
	sw	a1, 44(a2)
	ld	a0, 0(a0)
	ld	a3, 8(a0)
	li	a0, 114
	sw	a0, 40(a2)
	li	a1, -1
	mv	a0, s0
	jalr	a3
	j	.LBB4_30
.LBB4_13:
	ld	a1, 0(a0)
	sw	a2, 44(a1)
	ld	a2, 0(a0)
	ld	a2, 0(a2)
	li	a3, 20
	sw	a3, 40(a1)
	jalr	a2
	li	a1, 0
	j	.LBB4_32
.LBB4_14:
	lw	a1, 384(a0)
	beqz	a1, .LBB4_20
# %bb.15:
	lbu	a1, 388(a0)
	beqz	a1, .LBB4_20
# %bb.16:
	li	a2, 2
	bne	a1, a2, .LBB4_21
# %bb.17:
	li	s2, 5
	j	.LBB4_31
.LBB4_18:
	mv	s2, a1
	mv	s1, a1
	j	.LBB4_31
.LBB4_19:
	li	s2, 0
	li	s1, 0
	j	.LBB4_31
.LBB4_20:
	li	s2, 4
	j	.LBB4_31
.LBB4_21:
	ld	a2, 0(a0)
	sw	a1, 44(a2)
	ld	a0, 0(a0)
	ld	a3, 8(a0)
	li	a0, 114
	sw	a0, 40(a2)
	li	a1, -1
	mv	a0, s0
	jalr	a3
	mv	a0, s0
	li	s2, 5
	j	.LBB4_31
.LBB4_22:
	ld	a1, 304(a0)
	lw	a2, 0(a1)
	lw	a3, 96(a1)
	lw	a1, 192(a1)
	li	a4, 1
	bne	a2, a4, .LBB4_25
# %bb.23:
	li	a4, 2
	bne	a3, a4, .LBB4_25
# %bb.24:
	li	a4, 3
	beq	a1, a4, .LBB4_31
.LBB4_25:
	li	a4, 82
	li	s1, 2
	bne	a2, a4, .LBB4_29
# %bb.26:
	li	a4, 71
	bne	a3, a4, .LBB4_29
# %bb.27:
	li	a4, 66
	bne	a1, a4, .LBB4_29
.LBB4_28:
	li	s2, 2
	j	.LBB4_31
.LBB4_29:
	ld	a0, 0(a0)
	sw	a2, 44(a0)
	sw	a3, 48(a0)
	ld	a2, 8(a0)
	sw	a1, 52(a0)
	li	a1, 111
	sw	a1, 40(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
.LBB4_30:
	mv	a0, s0
.LBB4_31:
	sw	s2, 60(a0)
	sw	s1, 64(a0)
	li	a1, 1
	sw	a1, 68(a0)
	sw	a1, 72(a0)
	li	a2, 1023
	slli	a2, a2, 52
	sd	a2, 80(a0)
	sd	zero, 88(a0)
	slli	a2, a1, 32
	sd	a2, 96(a0)
	sd	a1, 104(a0)
	addi	a2, a2, 2
	sd	a2, 112(a0)
	li	a2, 256
	sd	a2, 120(a0)
	sd	zero, 160(a0)
	sd	zero, 128(a0)
	li	a2, 202
	sw	a2, 36(a0)
.LBB4_32:
	mv	a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	jpeg_consume_input, .Lfunc_end4-jpeg_consume_input
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_3
	.word	.LBB4_4
	.word	.LBB4_32
	.word	.LBB4_2
	.word	.LBB4_2
	.word	.LBB4_2
	.word	.LBB4_2
	.word	.LBB4_2
	.word	.LBB4_2
	.word	.LBB4_13
	.word	.LBB4_2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	jpeg_input_complete             # -- Begin function jpeg_input_complete
	.p2align	2
	.type	jpeg_input_complete,@function
jpeg_input_complete:                    # @jpeg_input_complete
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	addiw	a1, a0, -211
	li	a2, -12
	bltu	a2, a1, .LBB5_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB5_2:
	ld	a0, 576(s0)
	lw	a0, 36(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	jpeg_input_complete, .Lfunc_end5-jpeg_input_complete
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_has_multiple_scans         # -- Begin function jpeg_has_multiple_scans
	.p2align	2
	.type	jpeg_has_multiple_scans,@function
jpeg_has_multiple_scans:                # @jpeg_has_multiple_scans
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	addiw	a1, a0, -211
	li	a2, -10
	bltu	a2, a1, .LBB6_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB6_2:
	ld	a0, 576(s0)
	lw	a0, 32(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	jpeg_has_multiple_scans, .Lfunc_end6-jpeg_has_multiple_scans
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_finish_decompress          # -- Begin function jpeg_finish_decompress
	.p2align	2
	.type	jpeg_finish_decompress,@function
jpeg_finish_decompress:                 # @jpeg_finish_decompress
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	addiw	a1, a0, -205
	li	a2, 1
	bltu	a2, a1, .LBB7_2
# %bb.1:
	lw	a1, 88(s0)
	beqz	a1, .LBB7_5
.LBB7_2:
	li	a1, 210
	beq	a0, a1, .LBB7_9
# %bb.3:
	li	a1, 207
	beq	a0, a1, .LBB7_8
# %bb.4:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	j	.LBB7_9
.LBB7_5:
	lw	a0, 168(s0)
	lw	a1, 140(s0)
	bgeu	a0, a1, .LBB7_7
# %bb.6:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 67
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB7_7:
	ld	a0, 544(s0)
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
.LBB7_8:
	li	a0, 210
	sw	a0, 36(s0)
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 576(s0)
	lw	a1, 36(a0)
	bnez	a1, .LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB7_9
# %bb.11:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB7_12:
	ld	a0, 40(s0)
	ld	a1, 48(a0)
	mv	a0, s0
	jalr	a1
	mv	a0, s0
	call	jpeg_abort
	li	a0, 1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	jpeg_finish_decompress, .Lfunc_end7-jpeg_finish_decompress
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
