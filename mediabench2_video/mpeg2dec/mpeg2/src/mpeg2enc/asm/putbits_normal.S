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
	blez	a1, .LBB1_6
# %bb.1:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	mv	s1, a0
	addi	a1, a1, -1
	li	a3, 1
	lui	s2, %hi(outbfr)
	lbu	a2, %lo(outbfr)(s2)
	lui	s3, %hi(outcnt)
	lw	a0, %lo(outcnt)(s3)
	sllw	s4, a3, a1
	lui	s5, %hi(outfile)
	lui	s6, %hi(bytecnt)
	j	.LBB1_3
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addiw	s0, s0, -1
	srliw	s4, s4, 1
	beqz	s0, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	slli	a2, a2, 1
	and	a1, s4, s1
	snez	a1, a1
	or	a2, a2, a1
	sb	a2, %lo(outbfr)(s2)
	addiw	a0, a0, -1
	sw	a0, %lo(outcnt)(s3)
	bnez	a0, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld	a1, %lo(outfile)(s5)
	andi	a0, a2, 255
	call	putc
	lw	a1, %lo(bytecnt)(s6)
	li	a0, 8
	lbu	a2, %lo(outbfr)(s2)
	sw	a0, %lo(outcnt)(s3)
	addi	a1, a1, 1
	sw	a1, %lo(bytecnt)(s6)
	j	.LBB1_2
.LBB1_5:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
.LBB1_6:
	ret
.Lfunc_end1:
	.size	putbits, .Lfunc_end1-putbits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	alignbits                       # -- Begin function alignbits
	.p2align	2
	.type	alignbits,@function
alignbits:                              # @alignbits
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(outcnt)
	lw	s0, %lo(outcnt)(a0)
	li	a0, 8
	beq	s0, a0, .LBB2_6
# %bb.1:
	blez	s0, .LBB2_6
# %bb.2:
	lui	s1, %hi(outbfr)
	lbu	a0, %lo(outbfr)(s1)
	lui	s2, %hi(outcnt)
	lui	s3, %hi(outfile)
	lui	s4, %hi(bytecnt)
	mv	a1, s0
	j	.LBB2_4
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addiw	s0, s0, -1
	beqz	s0, .LBB2_6
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	slli	a0, a0, 1
	sb	a0, %lo(outbfr)(s1)
	addiw	a1, a1, -1
	sw	a1, %lo(outcnt)(s2)
	bnez	a1, .LBB2_3
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	ld	a1, %lo(outfile)(s3)
	andi	a0, a0, 255
	call	putc
	lw	a2, %lo(bytecnt)(s4)
	li	a1, 8
	lbu	a0, %lo(outbfr)(s1)
	sw	a1, %lo(outcnt)(s2)
	addi	a2, a2, 1
	sw	a2, %lo(bytecnt)(s4)
	j	.LBB2_3
.LBB2_6:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	alignbits, .Lfunc_end2-alignbits
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
.Lfunc_end3:
	.size	bitcount, .Lfunc_end3-bitcount
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
