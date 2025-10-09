	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"putbits.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	initbits                        # -- Begin function initbits
	.p2align	2
	.type	initbits,@function
initbits:                               # @initbits
# %bb.0:
	lui	a0, %hi(outcnt)
	li	a1, 8
	sw	a1, %lo(outcnt)(a0)
	lui	a0, %hi(bytecnt)
	sw	zero, %lo(bytecnt)(a0)
	ret
.Lfunc_end0:
	.size	initbits, .Lfunc_end0-initbits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putbits                         # -- Begin function putbits
	.p2align	2
	.type	putbits,@function
putbits:                                # @putbits
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
	mv	s0, a1
	mv	s1, a0
	addi	s2, a0, -1
	blez	a0, .LBB1_5
# %bb.1:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_5
# %bb.2:
	li	a0, 34
	sb	a0, 0(sp)
	addi	a0, sp, 1
	add	a1, a0, s1
	mv	a2, s2
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	srlw	a3, s0, a2
	andi	a3, a3, 1
	seqz	a3, a3
	xori	a3, a3, 49
	sb	a3, 0(a0)
	addi	a0, a0, 1
	addi	a2, a2, -1
	bne	a0, a1, .LBB1_3
# %bb.4:
	mv	a0, sp
	add	a1, a0, s1
	li	a0, 34
	sb	a0, 1(a1)
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	li	a2, 10
	sb	a2, 2(a1)
	sb	zero, 3(a1)
	mv	a1, sp
	call	fprintf
.LBB1_5:
	blez	s1, .LBB1_10
# %bb.6:
	li	a1, 1
	lui	s3, %hi(outbfr)
	lbu	a2, %lo(outbfr)(s3)
	lui	s4, %hi(outcnt)
	lw	a0, %lo(outcnt)(s4)
	sllw	s2, a1, s2
	lui	s5, %hi(streamfile)
	lui	s6, %hi(bytecnt)
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
	addiw	s1, s1, -1
	srliw	s2, s2, 1
	beqz	s1, .LBB1_10
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	slli	a2, a2, 1
	and	a1, s2, s0
	snez	a1, a1
	or	a2, a2, a1
	sb	a2, %lo(outbfr)(s3)
	addiw	a0, a0, -1
	sw	a0, %lo(outcnt)(s4)
	bnez	a0, .LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld	a1, %lo(streamfile)(s5)
	andi	a0, a2, 255
	call	putc
	lw	a1, %lo(bytecnt)(s6)
	li	a0, 8
	lbu	a2, %lo(outbfr)(s3)
	sw	a0, %lo(outcnt)(s4)
	addi	a1, a1, 1
	sw	a1, %lo(bytecnt)(s6)
	j	.LBB1_7
.LBB1_10:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end1:
	.size	putbits, .Lfunc_end1-putbits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	BitPrint                        # -- Begin function BitPrint
	.p2align	2
	.type	BitPrint,@function
BitPrint:                               # @BitPrint
# %bb.0:
	li	a3, 34
	sb	a3, 0(a2)
	beqz	a0, .LBB2_3
# %bb.1:
	addi	a4, a2, 1
	addi	a5, a0, -1
	add	a6, a4, a0
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	srlw	a7, a1, a5
	andi	a7, a7, 1
	seqz	a7, a7
	xori	a7, a7, 49
	sb	a7, 0(a4)
	addi	a4, a4, 1
	addi	a5, a5, -1
	bne	a4, a6, .LBB2_2
.LBB2_3:
	add	a0, a2, a0
	sb	a3, 1(a0)
	li	a1, 10
	sb	a1, 2(a0)
	sb	zero, 3(a0)
	ret
.Lfunc_end2:
	.size	BitPrint, .Lfunc_end2-BitPrint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	alignbits                       # -- Begin function alignbits
	.p2align	2
	.type	alignbits,@function
alignbits:                              # @alignbits
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(outcnt)
	lw	s0, %lo(outcnt)(a0)
	li	a0, 8
	bne	s0, a0, .LBB3_2
# %bb.1:
	li	s0, 0
	j	.LBB3_3
.LBB3_2:
	mv	a0, s0
	li	a1, 0
	call	putbits
.LBB3_3:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	alignbits, .Lfunc_end3-alignbits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	bitcount                        # -- Begin function bitcount
	.p2align	2
	.type	bitcount,@function
bitcount:                               # @bitcount
# %bb.0:
	lui	a0, %hi(bytecnt)
	lw	a0, %lo(bytecnt)(a0)
	lui	a1, %hi(outcnt)
	lw	a1, %lo(outcnt)(a1)
	slli	a0, a0, 3
	subw	a0, a0, a1
	addiw	a0, a0, 8
	ret
.Lfunc_end4:
	.size	bitcount, .Lfunc_end4-bitcount
                                        # -- End function
	.option	pop
	.type	outcnt,@object                  # @outcnt
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
outcnt:
	.word	0                               # 0x0
	.size	outcnt, 4

	.type	bytecnt,@object                 # @bytecnt
	.p2align	2, 0x0
bytecnt:
	.word	0                               # 0x0
	.size	bytecnt, 4

	.type	outbfr,@object                  # @outbfr
outbfr:
	.byte	0                               # 0x0
	.size	outbfr, 1

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
