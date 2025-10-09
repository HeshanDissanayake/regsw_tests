	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"sac.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AR_Encode                       # -- Begin function AR_Encode
	.p2align	2
	.type	AR_Encode,@function
AR_Encode:                              # @AR_Encode
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
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	bltz	a0, .LBB0_10
# %bb.1:
	li	s0, 0
	lui	s1, %hi(high)
	ld	a2, %lo(high)(s1)
	lui	s2, %hi(low)
	ld	a3, %lo(low)(s2)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a4, 0(a0)
	lw	a1, 0(a1)
	sub	a2, a2, a3
	addi	a2, a2, 1
	mul	a4, a2, a4
	div	a4, a4, a1
	lw	a5, 4(a0)
	add	a0, a3, a4
	addi	a0, a0, -1
	sd	a0, %lo(high)(s1)
	mul	a2, a2, a5
	div	a1, a2, a1
	add	a1, a1, a3
	sd	a1, %lo(low)(s2)
	lui	s3, 8
	addiw	s4, s3, -1
	lui	s5, 1048568
	li	s6, 2
	lui	s7, 4
	lui	s8, %hi(opposite_bits)
	lui	s9, 1048572
	j	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	li	a0, 1
	call	bit_opp_bits
	ld	a1, %lo(low)(s2)
	ld	a2, %lo(high)(s1)
	addw	s0, a0, s0
	add	a1, a1, s5
	add	a2, a2, s5
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	slli	a1, a1, 1
	sd	a1, %lo(low)(s2)
	slli	a0, a2, 1
	addi	a0, a0, 1
	sd	a0, %lo(high)(s1)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	bge	s4, a0, .LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	bge	a1, s3, .LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	srli	a2, a0, 14
	bltu	s6, a2, .LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	blt	a1, s7, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a2, %lo(opposite_bits)(s8)
	addi	a2, a2, 1
	sd	a2, %lo(opposite_bits)(s8)
	add	a1, a1, s9
	add	a2, a0, s9
	j	.LBB0_3
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	li	a0, 0
	call	bit_opp_bits
	ld	a1, %lo(low)(s2)
	ld	a2, %lo(high)(s1)
	addw	s0, a0, s0
	j	.LBB0_3
.LBB0_10:
	li	s0, -1
.LBB0_11:
	mv	a0, s0
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	AR_Encode, .Lfunc_end0-AR_Encode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	bit_opp_bits                    # -- Begin function bit_opp_bits
	.p2align	2
	.type	bit_opp_bits,@function
bit_opp_bits:                           # @bit_opp_bits
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
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(zerorun)
	ld	a1, %lo(zerorun)(s1)
	mv	s2, a0
	li	a0, 14
	li	s0, 1
	blt	a1, a0, .LBB1_4
# %bb.1:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_3
# %bb.2:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 31
	li	a2, 1
	call	fwrite
.LBB1_3:
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	a0, %hi(zerorun)
	sd	zero, %lo(zerorun)(a0)
	li	s0, 2
.LBB1_4:
	li	a0, 1
	mv	a1, s2
	call	putbits
	ld	a0, %lo(zerorun)(s1)
	snez	a1, s2
	lui	a2, %hi(opposite_bits)
	ld	a2, %lo(opposite_bits)(a2)
	addi	a3, a0, 1
	addi	a1, a1, -1
	and	a1, a1, a3
	sd	a1, %lo(zerorun)(s1)
	blez	a2, .LBB1_18
# %bb.5:
	seqz	s1, s2
	beqz	s2, .LBB1_12
# %bb.6:                                # %.preheader1
	li	a0, 0
	li	s3, 14
	lui	s4, %hi(trace)
	li	s5, 1
	lui	s6, %hi(zerorun)
	lui	s7, %hi(tf)
	lui	s2, %hi(.L.str.1)
	addi	s2, s2, %lo(.L.str.1)
	lui	s8, %hi(opposite_bits)
	j	.LBB1_9
.LBB1_7:                                #   in Loop: Header=BB1_9 Depth=1
	li	a0, 1
	li	a1, 1
	call	putbits
	sd	zero, %lo(zerorun)(s6)
	li	s9, 2
.LBB1_8:                                #   in Loop: Header=BB1_9 Depth=1
	li	a0, 1
	mv	a1, s1
	call	putbits
	ld	a0, %lo(zerorun)(s6)
	ld	a1, %lo(opposite_bits)(s8)
	addi	a0, a0, 1
	sd	a0, %lo(zerorun)(s6)
	addw	s0, s9, s0
	addi	a2, a1, -1
	sd	a2, %lo(opposite_bits)(s8)
	bge	s5, a1, .LBB1_18
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	li	s9, 1
	blt	a0, s3, .LBB1_8
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	lw	a0, %lo(trace)(s4)
	beqz	a0, .LBB1_7
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	ld	a3, %lo(tf)(s7)
	li	a1, 31
	li	a2, 1
	mv	a0, s2
	call	fwrite
	j	.LBB1_7
.LBB1_12:
	li	a1, 13
	li	s5, 1
	blt	a0, a1, .LBB1_16
# %bb.13:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_15
# %bb.14:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 31
	li	a2, 1
	call	fwrite
.LBB1_15:
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	a0, %hi(zerorun)
	sd	zero, %lo(zerorun)(a0)
	li	s5, 2
.LBB1_16:
	li	a0, 1
	li	s2, 1
	mv	a1, s1
	call	putbits
	lui	s3, %hi(opposite_bits)
	ld	a0, %lo(opposite_bits)(s3)
	lui	s4, %hi(zerorun)
	sd	zero, %lo(zerorun)(s4)
	add	s0, s5, s0
	addi	a1, a0, -1
	sd	a1, %lo(opposite_bits)(s3)
	bge	s2, a0, .LBB1_18
.LBB1_17:                               # =>This Inner Loop Header: Depth=1
	li	a0, 1
	mv	a1, s1
	call	putbits
	ld	a0, %lo(opposite_bits)(s3)
	sd	zero, %lo(zerorun)(s4)
	addiw	s0, s0, 1
	addi	a1, a0, -1
	sd	a1, %lo(opposite_bits)(s3)
	blt	s2, a0, .LBB1_17
.LBB1_18:
	mv	a0, s0
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end1:
	.size	bit_opp_bits, .Lfunc_end1-bit_opp_bits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	bit_in_psc_layer                # -- Begin function bit_in_psc_layer
	.p2align	2
	.type	bit_in_psc_layer,@function
bit_in_psc_layer:                       # @bit_in_psc_layer
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(zerorun)
	ld	a1, %lo(zerorun)(s2)
	mv	s0, a0
	li	a0, 14
	li	s1, 1
	blt	a1, a0, .LBB2_4
# %bb.1:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB2_3
# %bb.2:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 31
	li	a2, 1
	call	fwrite
.LBB2_3:
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	a0, %hi(zerorun)
	sd	zero, %lo(zerorun)(a0)
	li	s1, 2
.LBB2_4:
	li	a0, 1
	mv	a1, s0
	call	putbits
	ld	a0, %lo(zerorun)(s2)
	snez	a1, s0
	addi	a0, a0, 1
	addi	a1, a1, -1
	and	a0, a1, a0
	sd	a0, %lo(zerorun)(s2)
	mv	a0, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	bit_in_psc_layer, .Lfunc_end2-bit_in_psc_layer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	encoder_flush                   # -- Begin function encoder_flush
	.p2align	2
	.type	encoder_flush,@function
encoder_flush:                          # @encoder_flush
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB3_2
# %bb.1:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 15
	li	a2, 1
	call	fwrite
.LBB3_2:
	lui	a0, %hi(opposite_bits)
	ld	a1, %lo(opposite_bits)(a0)
	addi	a1, a1, 1
	lui	s0, %hi(low)
	ld	a2, %lo(low)(s0)
	sd	a1, %lo(opposite_bits)(a0)
	lui	a0, 4
	addiw	a0, a0, -1
	slt	a0, a0, a2
	call	bit_opp_bits
	sd	zero, %lo(low)(s0)
	lui	a1, %hi(high)
	lui	a2, 16
	addiw	a2, a2, -1
	sd	a2, %lo(high)(a1)
	lui	a1, %hi(zerorun)
	sd	zero, %lo(zerorun)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	encoder_flush, .Lfunc_end3-encoder_flush
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	indexfn                         # -- Begin function indexfn
	.p2align	2
	.type	indexfn,@function
indexfn:                                # @indexfn
# %bb.0:
	li	a3, 0
	sgtz	a4, a2
	neg	a4, a4
	and	a2, a4, a2
	addi	a2, a2, 1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	beq	a4, a0, .LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	addiw	a3, a3, 1
	addi	a2, a2, -1
	addi	a1, a1, 4
	bnez	a2, .LBB4_1
# %bb.3:
	li	a3, -1
.LBB4_4:
	mv	a0, a3
	ret
.Lfunc_end4:
	.size	indexfn, .Lfunc_end4-indexfn
                                        # -- End function
	.option	pop
	.type	high,@object                    # @high
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0
high:
	.quad	65535                           # 0xffff
	.size	high, 8

	.type	low,@object                     # @low
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
low:
	.quad	0                               # 0x0
	.size	low, 8

	.type	opposite_bits,@object           # @opposite_bits
	.p2align	3, 0x0
opposite_bits:
	.quad	0                               # 0x0
	.size	opposite_bits, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"encoder_flush:\n"
	.size	.L.str, 16

	.type	zerorun,@object                 # @zerorun
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
zerorun:
	.quad	0                               # 0x0
	.size	zerorun, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"PSC emulation ... Bit stuffed.\n"
	.size	.L.str.1, 32

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
