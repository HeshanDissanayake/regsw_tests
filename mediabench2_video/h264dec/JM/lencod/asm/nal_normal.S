	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"nal.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SODBtoRBSP                      # -- Begin function SODBtoRBSP
	.p2align	2
	.type	SODBtoRBSP,@function
SODBtoRBSP:                             # @SODBtoRBSP
# %bb.0:
	lbu	a1, 8(a0)
	lw	a2, 4(a0)
	slli	a1, a1, 1
	addi	a1, a1, 1
	lw	a3, 0(a0)
	addi	a2, a2, -1
	ld	a4, 32(a0)
	sllw	a1, a1, a2
	addi	a2, a3, 1
	sw	a2, 0(a0)
	add	a3, a4, a3
	sb	a1, 0(a3)
	li	a1, 8
	sw	a1, 4(a0)
	sb	zero, 8(a0)
	ret
.Lfunc_end0:
	.size	SODBtoRBSP, .Lfunc_end0-SODBtoRBSP
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RBSPtoEBSP                      # -- Begin function RBSPtoEBSP
	.p2align	2
	.type	RBSPtoEBSP,@function
RBSPtoEBSP:                             # @RBSPtoEBSP
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a4, %hi(NAL_Payload_buffer)
	ld	s5, %lo(NAL_Payload_buffer)(a4)
	mv	s2, a3
	mv	s3, a2
	mv	s0, a1
	mv	s1, a0
	add	s4, s5, a1
	add	a1, a0, a1
	subw	a2, a2, s0
	mv	a0, s4
	call	memcpy
	bge	s0, s3, .LBB1_6
# %bb.1:
	li	a3, 0
	add	a0, s5, s3
	li	a1, 2
	li	a2, 3
	j	.LBB1_3
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	lbu	a4, 0(s4)
	add	a5, s1, s0
	sb	a4, 0(a5)
	snez	a4, a4
	addiw	a3, a3, 1
	addiw	a4, a4, -1
	and	a3, a4, a3
	addi	s4, s4, 1
	addiw	s0, s0, 1
	beq	s4, a0, .LBB1_6
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	bne	a3, a1, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	lbu	a4, 0(s4)
	li	a3, 2
	bltu	a2, a4, .LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	li	a3, 0
	add	a4, s1, s0
	sb	a2, 0(a4)
	addiw	s0, s0, 1
	j	.LBB1_2
.LBB1_6:
	subw	a0, s2, s3
	blez	a0, .LBB1_9
# %bb.7:
	li	a1, 0
	add	a2, s0, s1
	addi	a2, a2, 2
	li	a3, 3
	lui	a4, %hi(stats)
	lui	a5, %hi(img)
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	sb	zero, -2(a2)
	sb	zero, -1(a2)
	sb	a3, 0(a2)
	ld	a6, %lo(img)(a5)
	lw	a6, 24(a6)
	ld	a7, %lo(stats)(a4)
	slli	a6, a6, 2
	add	a6, a7, a6
	lw	a7, 1336(a6)
	addi	a7, a7, 16
	sw	a7, 1336(a6)
	addiw	a1, a1, 3
	addiw	s0, s0, 3
	addi	a2, a2, 3
	blt	a1, a0, .LBB1_8
.LBB1_9:
	mv	a0, s0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	RBSPtoEBSP, .Lfunc_end1-RBSPtoEBSP
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AllocNalPayloadBuffer           # -- Begin function AllocNalPayloadBuffer
	.p2align	2
	.type	AllocNalPayloadBuffer,@function
AllocNalPayloadBuffer:                  # @AllocNalPayloadBuffer
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 68(a0)
	lui	a3, 22
	addiw	a3, a3, 464
	add	a1, a1, a3
	lw	a3, 0(a1)
	lw	a4, 72(a0)
	lw	a1, 4(a1)
	add	a2, a3, a2
	lui	s1, %hi(NAL_Payload_buffer)
	ld	a0, %lo(NAL_Payload_buffer)(s1)
	add	a1, a1, a4
	mul	a1, a2, a1
	slli	s0, a1, 2
	addw	s0, s0, a1
	beqz	a0, .LBB2_2
# %bb.1:
	call	free
.LBB2_2:
	li	a1, 1
	mv	a0, s0
	call	calloc
	sd	a0, %lo(NAL_Payload_buffer)(s1)
	beqz	a0, .LBB2_4
# %bb.3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB2_4:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.AllocNalPayloadBuffer)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.AllocNalPayloadBuffer)
	li	a2, 129
	call	__assert_fail
.Lfunc_end2:
	.size	AllocNalPayloadBuffer, .Lfunc_end2-AllocNalPayloadBuffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FreeNalPayloadBuffer            # -- Begin function FreeNalPayloadBuffer
	.p2align	2
	.type	FreeNalPayloadBuffer,@function
FreeNalPayloadBuffer:                   # @FreeNalPayloadBuffer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(NAL_Payload_buffer)
	ld	a0, %lo(NAL_Payload_buffer)(s0)
	beqz	a0, .LBB3_2
# %bb.1:
	call	free
	sd	zero, %lo(NAL_Payload_buffer)(s0)
.LBB3_2:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	FreeNalPayloadBuffer, .Lfunc_end3-FreeNalPayloadBuffer
                                        # -- End function
	.option	pop
	.type	NAL_Payload_buffer,@object      # @NAL_Payload_buffer
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
NAL_Payload_buffer:
	.quad	0
	.size	NAL_Payload_buffer, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"NAL_Payload_buffer != NULL"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/nal.c"
	.size	.L.str.1, 10

	.type	.L__PRETTY_FUNCTION__.AllocNalPayloadBuffer,@object # @__PRETTY_FUNCTION__.AllocNalPayloadBuffer
.L__PRETTY_FUNCTION__.AllocNalPayloadBuffer:
	.asciz	"void AllocNalPayloadBuffer()"
	.size	.L__PRETTY_FUNCTION__.AllocNalPayloadBuffer, 29

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
