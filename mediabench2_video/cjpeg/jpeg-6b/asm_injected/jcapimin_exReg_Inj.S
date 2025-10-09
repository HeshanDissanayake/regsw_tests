	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcapimin.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_CreateCompress             # -- Begin function jpeg_CreateCompress
	.p2align	2
	.type	jpeg_CreateCompress,@function
jpeg_CreateCompress:                    # @jpeg_CreateCompress
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
	li	a0, 520
	beq	s1, a0, .LBB0_4
# %bb.3:
	ld	a0, 0(s0)
	li	a1, 65
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
	li	a2, 512
	li	a1, 0
	call	memset
	sd	s1, 0(s0)
	sd	s2, 24(s0)
	mv	a0, s0
	call	jinit_memory_mgr
	sd	zero, 16(s0)
	sd	zero, 40(s0)
	addi	a0, s0, 88
	sd	zero, 504(s0)
	li	a2, 104
	li	a1, 0
	call	memset
	li	a0, 1023
	slli	a0, a0, 52
	sd	a0, 64(s0)
	li	a0, 100
	sw	a0, 36(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jpeg_CreateCompress, .Lfunc_end0-jpeg_CreateCompress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_destroy_compress           # -- Begin function jpeg_destroy_compress
	.p2align	2
	.type	jpeg_destroy_compress,@function
jpeg_destroy_compress:                  # @jpeg_destroy_compress
# %bb.0:
	tail	jpeg_destroy
.Lfunc_end1:
	.size	jpeg_destroy_compress, .Lfunc_end1-jpeg_destroy_compress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_abort_compress             # -- Begin function jpeg_abort_compress
	.p2align	2
	.type	jpeg_abort_compress,@function
jpeg_abort_compress:                    # @jpeg_abort_compress
# %bb.0:
	tail	jpeg_abort
.Lfunc_end2:
	.size	jpeg_abort_compress, .Lfunc_end2-jpeg_abort_compress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_suppress_tables            # -- Begin function jpeg_suppress_tables
	.p2align	2
	.type	jpeg_suppress_tables,@function
jpeg_suppress_tables:                   # @jpeg_suppress_tables
# %bb.0:
	ld	a2, 96(a0)
	beqz	a2, .LBB3_2
# %bb.1:
	sw	a1, 128(a2)
.LBB3_2:
	ld	a2, 104(a0)
	beqz	a2, .LBB3_4
# %bb.3:
	sw	a1, 128(a2)
.LBB3_4:
	ld	a2, 112(a0)
	beqz	a2, .LBB3_6
# %bb.5:
	sw	a1, 128(a2)
.LBB3_6:
	ld	a2, 120(a0)
	beqz	a2, .LBB3_8
# %bb.7:
	sw	a1, 128(a2)
.LBB3_8:
	ld	a2, 128(a0)
	beqz	a2, .LBB3_10
# %bb.9:
	sw	a1, 276(a2)
.LBB3_10:
	ld	a2, 160(a0)
	beqz	a2, .LBB3_12
# %bb.11:
	sw	a1, 276(a2)
.LBB3_12:
	ld	a2, 136(a0)
	beqz	a2, .LBB3_14
# %bb.13:
	sw	a1, 276(a2)
.LBB3_14:
	ld	a2, 168(a0)
	beqz	a2, .LBB3_16
# %bb.15:
	sw	a1, 276(a2)
.LBB3_16:
	ld	a2, 144(a0)
	beqz	a2, .LBB3_18
# %bb.17:
	sw	a1, 276(a2)
.LBB3_18:
	ld	a2, 176(a0)
	beqz	a2, .LBB3_20
# %bb.19:
	sw	a1, 276(a2)
.LBB3_20:
	ld	a2, 152(a0)
	beqz	a2, .LBB3_22
# %bb.21:
	sw	a1, 276(a2)
.LBB3_22:
	ld	a0, 184(a0)
	beqz	a0, .LBB3_24
# %bb.23:
	sw	a1, 276(a0)
.LBB3_24:
	ret
.Lfunc_end3:
	.size	jpeg_suppress_tables, .Lfunc_end3-jpeg_suppress_tables
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_finish_compress            # -- Begin function jpeg_finish_compress
	.p2align	2
	.type	jpeg_finish_compress,@function
jpeg_finish_compress:                   # @jpeg_finish_compress
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	addi	a1, a0, -101
	li	a2, 2
	bgeu	a1, a2, .LBB4_4
# %bb.1:
	lw	a0, 304(s0)
	lw	a1, 52(s0)
	bgeu	a0, a1, .LBB4_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 67
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_3:
	ld	a0, 432(s0)
	addi	a0, a0, 16
	j	.LBB4_6
.LBB4_4:
	li	a1, 103
	beq	a0, a1, .LBB4_7
# %bb.5:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 20
	sw	a2, 40(a1)
.LBB4_6:
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB4_7:
	ld	a0, 432(s0)
	lw	a1, 28(a0)
	beqz	a1, .LBB4_9
.LBB4_8:
	ld	a0, 464(s0)
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 40(s0)
	ld	a1, 32(a0)
	mv	a0, s0
	jalr	a1
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	jpeg_abort
.LBB4_9:
	li	s1, 24
	j	.LBB4_11
.LBB4_10:                               #   in Loop: Header=BB4_11 Depth=1
	ld	a0, 432(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 432(s0)
	lw	a1, 28(a0)
	bnez	a1, .LBB4_8
.LBB4_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lwu	a0, 320(s0)
	beqz	a0, .LBB4_10
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB4_11 Depth=1
	li	s2, 0
	j	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=2
	lwu	a0, 320(s0)
	addi	s2, s2, 1
	bgeu	s2, a0, .LBB4_10
.LBB4_14:                               #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 16(s0)
	beqz	a1, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=2
	ld	a2, 0(a1)
	sd	s2, 8(a1)
	sd	a0, 16(a1)
	mv	a0, s0
	jalr	a2
.LBB4_16:                               #   in Loop: Header=BB4_14 Depth=2
	ld	a0, 456(s0)
	ld	a2, 8(a0)
	mv	a0, s0
	li	a1, 0
	jalr	a2
	bnez	a0, .LBB4_13
# %bb.17:                               #   in Loop: Header=BB4_14 Depth=2
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s1, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB4_13
.Lfunc_end4:
	.size	jpeg_finish_compress, .Lfunc_end4-jpeg_finish_compress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_write_marker               # -- Begin function jpeg_write_marker
	.p2align	2
	.type	jpeg_write_marker,@function
jpeg_write_marker:                      # @jpeg_write_marker
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a4, 304(a0)
	lw	a0, 36(a0)
	mv	s2, a3
	mv	s1, a2
	bnez	a4, .LBB5_2
# %bb.1:
	addiw	a2, a0, -101
	li	a3, 3
	bltu	a2, a3, .LBB5_3
.LBB5_2:
	ld	a2, 0(s0)
	sw	a0, 44(a2)
	ld	a0, 0(s0)
	ld	a3, 0(a0)
	li	a0, 20
	sw	a0, 40(a2)
	mv	a0, s0
	mv	s3, a1
	jalr	a3
	mv	a1, s3
.LBB5_3:
	ld	a0, 464(s0)
	ld	a3, 40(a0)
	mv	a0, s0
	mv	a2, s2
	jalr	a3
	beqz	s2, .LBB5_6
# %bb.4:                                # %.preheader
	ld	a0, 464(s0)
	ld	s3, 48(a0)
	addi	s2, s2, -1
	slli	s2, s2, 32
	srli	a0, s2, 32
	add	a0, a0, s1
	addi	s2, a0, 1
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	lbu	a1, 0(s1)
	mv	a0, s0
	jalr	s3
	addi	s1, s1, 1
	bne	s1, s2, .LBB5_5
.LBB5_6:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	jpeg_write_marker, .Lfunc_end5-jpeg_write_marker
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_write_m_header             # -- Begin function jpeg_write_m_header
	.p2align	2
	.type	jpeg_write_m_header,@function
jpeg_write_m_header:                    # @jpeg_write_m_header
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lw	a4, 304(a0)
	lw	a3, 36(a0)
	bnez	a4, .LBB6_2
# %bb.1:
	addiw	a4, a3, -101
	li	a5, 3
	bltu	a4, a5, .LBB6_3
.LBB6_2:
	ld	a4, 0(a0)
	sw	a3, 44(a4)
	ld	a3, 0(a0)
	ld	a3, 0(a3)
	li	a5, 20
	sw	a5, 40(a4)
	mv	s0, a0
	mv	s1, a2
	mv	s2, a1
	jalr	a3
	mv	a1, s2
	mv	a2, s1
	mv	a0, s0
.LBB6_3:
	ld	a3, 464(a0)
	ld	t1, 40(a3)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.Lfunc_end6:
	.size	jpeg_write_m_header, .Lfunc_end6-jpeg_write_m_header
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_write_m_byte               # -- Begin function jpeg_write_m_byte
	.p2align	2
	.type	jpeg_write_m_byte,@function
jpeg_write_m_byte:                      # @jpeg_write_m_byte
# %bb.0:
	ld	a2, 464(a0)
	ld	t1, 48(a2)
	jr	t1
.Lfunc_end7:
	.size	jpeg_write_m_byte, .Lfunc_end7-jpeg_write_m_byte
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_write_tables               # -- Begin function jpeg_write_tables
	.p2align	2
	.type	jpeg_write_tables,@function
jpeg_write_tables:                      # @jpeg_write_tables
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a1, 100
	beq	a0, a1, .LBB8_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB8_2:
	ld	a0, 0(s0)
	ld	a1, 32(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 40(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	mv	a0, s0
	call	jinit_marker_writer
	ld	a0, 464(s0)
	ld	a1, 32(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 40(s0)
	ld	t1, 32(a0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.Lfunc_end8:
	.size	jpeg_write_tables, .Lfunc_end8-jpeg_write_tables
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
