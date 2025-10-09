	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcapistd.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_start_compress             # -- Begin function jpeg_start_compress
	.p2align	2
	.type	jpeg_start_compress,@function
jpeg_start_compress:                    # @jpeg_start_compress
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a2, 100
	mv	s1, a1
	beq	a0, a2, .LBB0_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB0_2:
	beqz	s1, .LBB0_4
# %bb.3:
	mv	a0, s0
	li	a1, 0
	call	jpeg_suppress_tables
.LBB0_4:
	ld	a0, 0(s0)
	ld	a1, 32(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 40(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	mv	a0, s0
	call	jinit_compress_master
	ld	a0, 432(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 256(s0)
	sw	zero, 304(s0)
	snez	a0, a0
	addi	a0, a0, 101
	sw	a0, 36(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jpeg_start_compress, .Lfunc_end0-jpeg_start_compress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_write_scanlines            # -- Begin function jpeg_write_scanlines
	.p2align	2
	.type	jpeg_write_scanlines,@function
jpeg_write_scanlines:                   # @jpeg_write_scanlines
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a3, 101
	mv	s2, a2
	mv	s1, a1
	bne	a0, a3, .LBB1_9
# %bb.1:
	lw	a0, 304(s0)
	lw	a1, 52(s0)
	bgeu	a0, a1, .LBB1_10
.LBB1_2:
	ld	a0, 16(s0)
	beqz	a0, .LBB1_4
.LBB1_3:
	lwu	a1, 304(s0)
	lwu	a2, 52(s0)
	ld	a3, 0(a0)
	sd	a1, 8(a0)
	sd	a2, 16(a0)
	mv	a0, s0
	jalr	a3
.LBB1_4:
	ld	a0, 432(s0)
	lw	a1, 24(a0)
	beqz	a1, .LBB1_6
# %bb.5:
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
.LBB1_6:
	lw	a0, 52(s0)
	lw	a1, 304(s0)
	subw	a3, a0, a1
	bltu	a3, s2, .LBB1_8
# %bb.7:
	mv	a3, s2
.LBB1_8:
	ld	a0, 440(s0)
	ld	a4, 8(a0)
	sw	zero, 12(sp)
	addi	a2, sp, 12
	mv	a0, s0
	mv	a1, s1
	jalr	a4
	lw	a0, 12(sp)
	lw	a1, 304(s0)
	add	a1, a1, a0
	sw	a1, 304(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB1_9:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	lw	a0, 304(s0)
	lw	a1, 52(s0)
	bltu	a0, a1, .LBB1_2
.LBB1_10:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 123
	sw	a1, 40(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
	ld	a0, 16(s0)
	bnez	a0, .LBB1_3
	j	.LBB1_4
.Lfunc_end1:
	.size	jpeg_write_scanlines, .Lfunc_end1-jpeg_write_scanlines
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_write_raw_data             # -- Begin function jpeg_write_raw_data
	.p2align	2
	.type	jpeg_write_raw_data,@function
jpeg_write_raw_data:                    # @jpeg_write_raw_data
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a3, 102
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
	lw	a2, 304(s0)
	lw	a1, 52(s0)
	bgeu	a2, a1, .LBB2_11
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
	ld	a0, 432(s0)
	lw	a1, 24(a0)
	beqz	a1, .LBB2_7
# %bb.6:
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
.LBB2_7:
	lw	a0, 316(s0)
	slliw	s3, a0, 3
	bgeu	s2, s3, .LBB2_9
# %bb.8:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 23
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_9:
	ld	a0, 456(s0)
	ld	a2, 8(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
	beqz	a0, .LBB2_12
# %bb.10:
	lw	a0, 304(s0)
	add	a0, a0, s3
	sw	a0, 304(s0)
	j	.LBB2_13
.LBB2_11:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 123
	sw	a1, 40(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
.LBB2_12:
	li	s3, 0
.LBB2_13:
	mv	a0, s3
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	jpeg_write_raw_data, .Lfunc_end2-jpeg_write_raw_data
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
