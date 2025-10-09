	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rtp.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ComposeRTPPacket                # -- Begin function ComposeRTPPacket
	.p2align	2
	.type	ComposeRTPPacket,@function
ComposeRTPPacket:                       # @ComposeRTPPacket
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 0(a0)
	li	a1, 2
	bne	a0, a1, .LBB0_11
# %bb.1:
	lw	a0, 4(s0)
	bnez	a0, .LBB0_12
# %bb.2:
	lw	a0, 8(s0)
	bnez	a0, .LBB0_13
# %bb.3:
	lw	a0, 12(s0)
	bnez	a0, .LBB0_14
# %bb.4:
	lw	a0, 16(s0)
	li	a1, 2
	bgeu	a0, a1, .LBB0_15
# %bb.5:
	lw	a0, 20(s0)
	li	a1, 128
	bgeu	a0, a1, .LBB0_16
# %bb.6:
	lhu	a0, 26(s0)
	bnez	a0, .LBB0_17
# %bb.7:
	ld	a0, 40(s0)
	beqz	a0, .LBB0_18
# %bb.8:
	lw	a0, 48(s0)
	lui	a1, 16
	addiw	a1, a1, -40
	bgeu	a0, a1, .LBB0_19
# %bb.9:
	ld	a0, 56(s0)
	beqz	a0, .LBB0_20
# %bb.10:
	li	a1, 128
	sb	a1, 0(a0)
	lw	a0, 16(s0)
	lwu	a1, 20(s0)
	ld	a2, 56(s0)
	slli	a0, a0, 7
	andi	a1, a1, 127
	or	a0, a1, a0
	sb	a0, 1(a2)
	lhu	a0, 24(s0)
	ld	a1, 56(s0)
	srli	a2, a0, 8
	sb	a0, 3(a1)
	sb	a2, 2(a1)
	lw	a0, 28(s0)
	ld	a1, 56(s0)
	srli	a2, a0, 24
	sb	a0, 7(a1)
	srli	a3, a0, 8
	sb	a3, 6(a1)
	srli	a0, a0, 16
	sb	a0, 5(a1)
	sb	a2, 4(a1)
	lw	a0, 32(s0)
	ld	a1, 56(s0)
	srli	a2, a0, 24
	sb	a0, 11(a1)
	srli	a3, a0, 8
	sb	a3, 10(a1)
	srli	a0, a0, 16
	sb	a0, 9(a1)
	sb	a2, 8(a1)
	ld	a0, 56(s0)
	ld	a1, 40(s0)
	lwu	a2, 48(s0)
	addi	a0, a0, 12
	call	memcpy
	lw	a0, 48(s0)
	addi	a0, a0, 12
	sw	a0, 64(s0)
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_11:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 83
	call	__assert_fail
.LBB0_12:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 84
	call	__assert_fail
.LBB0_13:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 85
	call	__assert_fail
.LBB0_14:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 86
	call	__assert_fail
.LBB0_15:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 87
	call	__assert_fail
.LBB0_16:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 88
	call	__assert_fail
.LBB0_17:
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 89
	call	__assert_fail
.LBB0_18:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 90
	call	__assert_fail
.LBB0_19:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 91
	call	__assert_fail
.LBB0_20:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ComposeRTPPacket)
	li	a2, 92
	call	__assert_fail
.Lfunc_end0:
	.size	ComposeRTPPacket, .Lfunc_end0-ComposeRTPPacket
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	WriteRTPPacket                  # -- Begin function WriteRTPPacket
	.p2align	2
	.type	WriteRTPPacket,@function
WriteRTPPacket:                         # @WriteRTPPacket
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	li	a0, -1
	sw	a0, 4(sp)
	beqz	a1, .LBB1_6
# %bb.1:
	beqz	s1, .LBB1_7
# %bb.2:
	mv	s0, a1
	addi	a0, s1, 64
	li	a1, 4
	li	a2, 1
	li	s3, 1
	mv	a3, s0
	call	fwrite
	li	s2, -1
	bne	a0, s3, .LBB1_5
# %bb.3:
	addi	a0, sp, 4
	li	a1, 4
	li	a2, 1
	mv	a3, s0
	call	fwrite
	bne	a0, s3, .LBB1_5
# %bb.4:
	ld	a0, 56(s1)
	lwu	a1, 64(s1)
	li	a2, 1
	mv	a3, s0
	call	fwrite
	addi	a0, a0, -1
	seqz	s2, a0
	addi	s2, s2, -1
.LBB1_5:
	mv	a0, s2
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB1_6:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteRTPPacket)
	li	a2, 151
	call	__assert_fail
.LBB1_7:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteRTPPacket)
	li	a2, 152
	call	__assert_fail
.Lfunc_end1:
	.size	WriteRTPPacket, .Lfunc_end1-WriteRTPPacket
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	WriteRTPNALU                    # -- Begin function WriteRTPNALU
	.p2align	2
	.type	WriteRTPNALU,@function
WriteRTPNALU:                           # @WriteRTPNALU
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(f)
	ld	a1, %lo(f)(a1)
	beqz	a1, .LBB2_16
# %bb.1:
	mv	s0, a0
	beqz	a0, .LBB2_17
# %bb.2:
	lw	a0, 4(s0)
	lui	a1, 16
	addiw	a1, a1, -536
	bgeu	a0, a1, .LBB2_18
# %bb.3:
	lw	a0, 20(s0)
	lw	a1, 16(s0)
	slli	a0, a0, 7
	lw	a2, 12(s0)
	ld	a3, 24(s0)
	slli	a1, a1, 5
	or	a0, a1, a0
	or	a0, a0, a2
	sb	a0, 0(a3)
	li	a0, 72
	call	malloc
	mv	s1, a0
	bnez	a0, .LBB2_5
# %bb.4:
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	call	no_mem_exit
.LBB2_5:
	lui	s2, 16
	addiw	s2, s2, -28
	mv	a0, s2
	call	malloc
	sd	a0, 56(s1)
	beqz	a0, .LBB2_12
# %bb.6:
	mv	a0, s2
	call	malloc
	sd	a0, 40(s1)
	beqz	a0, .LBB2_13
.LBB2_7:
	lw	a1, 0(s0)
	li	a2, 2
	sd	a2, 0(s1)
	sd	zero, 8(s1)
	addi	a1, a1, -4
	seqz	a1, a1
	sw	a1, 16(s1)
	li	a1, 105
	lui	a2, %hi(CurrentRTPSequenceNumber)
	lw	a3, %lo(CurrentRTPSequenceNumber)(a2)
	sw	a1, 20(s1)
	lui	a1, %hi(CurrentRTPTimestamp)
	lw	a1, %lo(CurrentRTPTimestamp)(a1)
	addi	a4, a3, 1
	sw	a4, %lo(CurrentRTPSequenceNumber)(a2)
	sw	a3, 24(s1)
	sw	a1, 28(s1)
	lui	a3, 74565
	lwu	a2, 4(s0)
	ld	a1, 24(s0)
	addi	a3, a3, 1656
	sw	a3, 32(s1)
	sw	a2, 48(s1)
	call	memcpy
	mv	a0, s1
	call	ComposeRTPPacket
	lui	a0, %hi(f)
	ld	s2, %lo(f)(a0)
	li	a0, -1
	sw	a0, 4(sp)
	beqz	s2, .LBB2_19
# %bb.8:
	addi	s3, s1, 64
	li	a1, 4
	li	a2, 1
	li	s4, 1
	mv	a0, s3
	mv	a3, s2
	call	fwrite
	bne	a0, s4, .LBB2_14
# %bb.9:
	addi	a0, sp, 4
	li	a1, 4
	li	a2, 1
	mv	a3, s2
	call	fwrite
	bne	a0, s4, .LBB2_14
# %bb.10:
	ld	s4, 56(s1)
	lwu	s3, 64(s1)
	li	a2, 1
	li	s5, 1
	mv	a0, s4
	mv	a1, s3
	mv	a3, s2
	call	fwrite
	bne	a0, s5, .LBB2_15
# %bb.11:
	mv	a0, s4
	call	free
	ld	a0, 40(s1)
	call	free
	mv	a0, s1
	call	free
	lw	a0, 4(s0)
	slliw	a0, a0, 3
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB2_12:
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	call	no_mem_exit
	mv	a0, s2
	call	malloc
	sd	a0, 40(s1)
	bnez	a0, .LBB2_7
.LBB2_13:
	lui	a1, %hi(.L.str.17)
	addi	a1, a1, %lo(.L.str.17)
	mv	s2, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s2
	j	.LBB2_7
.LBB2_14:
	lw	s3, 0(s3)
.LBB2_15:
	sext.w	a1, s3
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	call	printf
	li	a0, -1
	call	exit
.LBB2_16:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteRTPNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteRTPNALU)
	li	a2, 192
	call	__assert_fail
.LBB2_17:
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteRTPNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteRTPNALU)
	li	a2, 193
	call	__assert_fail
.LBB2_18:
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteRTPNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteRTPNALU)
	li	a2, 194
	call	__assert_fail
.LBB2_19:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteRTPPacket)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteRTPPacket)
	li	a2, 151
	call	__assert_fail
.Lfunc_end2:
	.size	WriteRTPNALU, .Lfunc_end2-WriteRTPNALU
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RTPUpdateTimestamp              # -- Begin function RTPUpdateTimestamp
	.p2align	2
	.type	RTPUpdateTimestamp,@function
RTPUpdateTimestamp:                     # @RTPUpdateTimestamp
# %bb.0:
	lui	a1, %hi(RTPUpdateTimestamp.oldtr)
	lw	a2, %lo(RTPUpdateTimestamp.oldtr)(a1)
	li	a3, -1
	beq	a2, a3, .LBB3_2
# %bb.1:
	subw	a2, a0, a2
	slti	a3, a2, -10
	slli	a3, a3, 8
	lui	a4, %hi(CurrentRTPTimestamp)
	lw	a4, %lo(CurrentRTPTimestamp)(a4)
	add	a2, a2, a3
	li	a3, 1000
	mul	a2, a2, a3
	add	a2, a4, a2
	lui	a3, %hi(CurrentRTPTimestamp)
	sw	a2, %lo(CurrentRTPTimestamp)(a3)
	sw	a0, %lo(RTPUpdateTimestamp.oldtr)(a1)
	ret
.LBB3_2:
	lui	a3, %hi(CurrentRTPTimestamp)
	sw	zero, %lo(CurrentRTPTimestamp)(a3)
	sw	zero, %lo(RTPUpdateTimestamp.oldtr)(a1)
	ret
.Lfunc_end3:
	.size	RTPUpdateTimestamp, .Lfunc_end3-RTPUpdateTimestamp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	OpenRTPFile                     # -- Begin function OpenRTPFile
	.p2align	2
	.type	OpenRTPFile,@function
OpenRTPFile:                            # @OpenRTPFile
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	a1, %hi(.L.str.20)
	addi	a1, a1, %lo(.L.str.20)
	call	fopen
	lui	a1, %hi(f)
	sd	a0, %lo(f)(a1)
	beqz	a0, .LBB4_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB4_2:
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	mv	a1, s0
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end4:
	.size	OpenRTPFile, .Lfunc_end4-OpenRTPFile
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseRTPFile                    # -- Begin function CloseRTPFile
	.p2align	2
	.type	CloseRTPFile,@function
CloseRTPFile:                           # @CloseRTPFile
# %bb.0:
	lui	a0, %hi(f)
	ld	a0, %lo(f)(a0)
	tail	fclose
.Lfunc_end5:
	.size	CloseRTPFile, .Lfunc_end5-CloseRTPFile
                                        # -- End function
	.option	pop
	.type	CurrentRTPTimestamp,@object     # @CurrentRTPTimestamp
	.section	.sbss,"aw",@nobits
	.globl	CurrentRTPTimestamp
	.p2align	2, 0x0
CurrentRTPTimestamp:
	.word	0                               # 0x0
	.size	CurrentRTPTimestamp, 4

	.type	CurrentRTPSequenceNumber,@object # @CurrentRTPSequenceNumber
	.globl	CurrentRTPSequenceNumber
	.p2align	2, 0x0
CurrentRTPSequenceNumber:
	.word	0                               # 0x0
	.size	CurrentRTPSequenceNumber, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"p->v == 2"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/rtp.c"
	.size	.L.str.1, 10

	.type	.L__PRETTY_FUNCTION__.ComposeRTPPacket,@object # @__PRETTY_FUNCTION__.ComposeRTPPacket
.L__PRETTY_FUNCTION__.ComposeRTPPacket:
	.asciz	"int ComposeRTPPacket(RTPpacket_t *)"
	.size	.L__PRETTY_FUNCTION__.ComposeRTPPacket, 36

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"p->p == 0"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"p->x == 0"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"p->cc == 0"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"p->m == 0 || p->m == 1"
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"p->pt < 128"
	.size	.L.str.6, 12

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"p->seq < 65536"
	.size	.L.str.7, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"p->payload != NULL"
	.size	.L.str.8, 19

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"p->paylen < 65536 - 40"
	.size	.L.str.9, 23

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"p->packet != NULL"
	.size	.L.str.10, 18

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"f != NULL"
	.size	.L.str.11, 10

	.type	.L__PRETTY_FUNCTION__.WriteRTPPacket,@object # @__PRETTY_FUNCTION__.WriteRTPPacket
.L__PRETTY_FUNCTION__.WriteRTPPacket:
	.asciz	"int WriteRTPPacket(RTPpacket_t *, FILE *)"
	.size	.L__PRETTY_FUNCTION__.WriteRTPPacket, 42

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"p != NULL"
	.size	.L.str.12, 10

	.type	f,@object                       # @f
	.section	.sbss,"aw",@nobits
	.globl	f
	.p2align	3, 0x0
f:
	.quad	0
	.size	f, 8

	.type	.L__PRETTY_FUNCTION__.WriteRTPNALU,@object # @__PRETTY_FUNCTION__.WriteRTPNALU
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__.WriteRTPNALU:
	.asciz	"int WriteRTPNALU(NALU_t *)"
	.size	.L__PRETTY_FUNCTION__.WriteRTPNALU, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"n != NULL"
	.size	.L.str.13, 10

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"n->len < 65000"
	.size	.L.str.14, 15

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"RTPWriteNALU-1"
	.size	.L.str.15, 15

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"RTPWriteNALU-2"
	.size	.L.str.16, 15

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"RTPWriteNALU-3"
	.size	.L.str.17, 15

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Cannot write %d bytes of RTP packet to outfile, exit\n"
	.size	.L.str.19, 54

	.type	RTPUpdateTimestamp.oldtr,@object # @RTPUpdateTimestamp.oldtr
	.section	.sdata,"aw",@progbits
	.p2align	2, 0x0
RTPUpdateTimestamp.oldtr:
	.word	4294967295                      # 0xffffffff
	.size	RTPUpdateTimestamp.oldtr, 4

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"wb"
	.size	.L.str.20, 3

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Fatal: cannot open bitstream file '%s', exit (-1)\n"
	.size	.L.str.21, 51

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
