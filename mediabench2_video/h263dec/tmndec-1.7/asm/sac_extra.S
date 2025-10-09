	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"sac.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	decode_a_symbol                 # -- Begin function decode_a_symbol
	.p2align	2
	.type	decode_a_symbol,@function
decode_a_symbol:                        # @decode_a_symbol
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(high)
	ld	a3, %lo(high)(a1)
	lui	a1, %hi(low)
	ld	a2, %lo(low)(a1)
	li	a5, 0
	lui	a1, %hi(code_value)
	ld	a1, %lo(code_value)(a1)
	sub	a4, a3, a2
	lw	a3, 0(a0)
	addi	a4, a4, 1
	sub	a6, a1, a2
	addi	a6, a6, 1
	mul	a6, a6, a3
	addi	a6, a6, -1
	div	a7, a6, a4
	addi	a0, a0, 4
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a0)
	addi	a5, a5, 1
	addi	a0, a0, 4
	blt	a7, a6, .LBB0_1
# %bb.2:
	lw	a0, -8(a0)
	lui	a7, %hi(sacindex)
	sd	a5, %lo(sacindex)(a7)
	mul	a0, a4, a0
	div	a0, a0, a3
	add	a0, a2, a0
	addi	a0, a0, -1
	lui	s3, %hi(high)
	sd	a0, %lo(high)(s3)
	mul	a4, a4, a6
	div	a3, a4, a3
	add	a2, a3, a2
	lui	s4, %hi(low)
	sd	a2, %lo(low)(s4)
	lui	s1, 8
	li	s6, 1
	lui	s7, %hi(bit)
	lui	s8, %hi(trace)
	lui	s0, %hi(.Lstr.4)
	addi	s0, s0, %lo(.Lstr.4)
	lui	s9, %hi(code_value)
	lui	s10, %hi(zerorun)
	li	s11, 14
	addiw	s5, s1, -1
	li	s2, 2
	j	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_6 Depth=1
	beqz	a0, .LBB0_19
# %bb.4:                                #   in Loop: Header=BB0_6 Depth=1
	sd	zero, %lo(zerorun)(s10)
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a1, %lo(code_value)(s9)
	ld	a3, %lo(bit)(s7)
	ld	a0, %lo(high)(s3)
	ld	a2, %lo(low)(s4)
	slli	a1, a1, 1
	add	a1, a1, a3
	sd	a1, %lo(code_value)(s9)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	blt	a0, s1, .LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	lui	a3, 1048568
	blt	s5, a2, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	srli	a3, a0, 14
	bltu	s2, a3, .LBB0_23
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lui	a3, 1048572
	lui	a4, 4
	blt	a2, a4, .LBB0_23
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	add	a1, a1, a3
	sd	a1, %lo(code_value)(s9)
	add	a2, a2, a3
	add	a0, a0, a3
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a2, a2, 1
	sd	a2, %lo(low)(s4)
	slli	a0, a0, 1
	addi	a0, a0, 1
	sd	a0, %lo(high)(s3)
	li	a0, 17
	call	showbits
	bne	a0, s6, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	lw	a0, %lo(trace)(s8)
	sd	zero, %lo(bit)(s7)
	beqz	a0, .LBB0_5
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	mv	a0, s0
	call	puts
	j	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	li	a0, 1
	call	getbits
	ld	a1, %lo(zerorun)(s10)
	slli	a2, a0, 32
	srli	a2, a2, 32
	sd	a2, %lo(bit)(s7)
	blt	a1, s11, .LBB0_3
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	lw	a1, %lo(trace)(s8)
	beqz	a0, .LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=1
	beqz	a1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(.Lstr.6)
	addi	a0, a0, %lo(.Lstr.6)
	call	puts
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	li	a0, 1
	call	getbits
	slli	a1, a0, 32
	srli	a1, a1, 32
	sd	a1, %lo(bit)(s7)
	seqz	a0, a0
	sd	a0, %lo(zerorun)(s10)
	j	.LBB0_5
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=1
	addi	a1, a1, 1
	sd	a1, %lo(zerorun)(s10)
	j	.LBB0_5
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	beqz	a1, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(.Lstr.5)
	addi	a0, a0, %lo(.Lstr.5)
	call	puts
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=1
	sd	s6, %lo(zerorun)(s10)
	j	.LBB0_5
.LBB0_23:
	lui	a0, %hi(sacindex)
	lw	a0, %lo(sacindex)(a0)
	addiw	a0, a0, -1
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end0:
	.size	decode_a_symbol, .Lfunc_end0-decode_a_symbol
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	decoder_reset                   # -- Begin function decoder_reset
	.p2align	2
	.type	decoder_reset,@function
decoder_reset:                          # @decoder_reset
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(zerorun)
	sd	zero, %lo(zerorun)(a0)
	lui	s0, %hi(code_value)
	sd	zero, %lo(code_value)(s0)
	lui	a0, %hi(low)
	sd	zero, %lo(low)(a0)
	lui	a0, %hi(high)
	lui	a1, 16
	addiw	a1, a1, -1
	sd	a1, %lo(high)(a0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	lui	s1, %hi(bit)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	call	bit_out_psc_layer
	ld	a0, %lo(code_value)(s0)
	ld	a1, %lo(bit)(s1)
	lui	a2, %hi(trace)
	lw	a2, %lo(trace)(a2)
	slli	a0, a0, 1
	add	a0, a0, a1
	sd	a0, %lo(code_value)(s0)
	beqz	a2, .LBB1_2
# %bb.1:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	puts
.LBB1_2:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	decoder_reset, .Lfunc_end1-decoder_reset
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	bit_out_psc_layer               # -- Begin function bit_out_psc_layer
	.p2align	2
	.type	bit_out_psc_layer,@function
bit_out_psc_layer:                      # @bit_out_psc_layer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	li	a0, 17
	call	showbits
	li	a1, 1
	bne	a0, a1, .LBB2_3
# %bb.1:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	lui	a1, %hi(bit)
	sd	zero, %lo(bit)(a1)
	beqz	a0, .LBB2_8
# %bb.2:
	lui	a0, %hi(.Lstr.4)
	addi	a0, a0, %lo(.Lstr.4)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	puts
.LBB2_3:
	li	a0, 1
	call	getbits
	slli	a2, a0, 32
	lui	a1, %hi(zerorun)
	ld	a1, %lo(zerorun)(a1)
	srli	a2, a2, 32
	lui	a3, %hi(bit)
	li	a4, 14
	sd	a2, %lo(bit)(a3)
	blt	a1, a4, .LBB2_9
# %bb.4:
	lui	a1, %hi(trace)
	lw	a1, %lo(trace)(a1)
	beqz	a0, .LBB2_11
# %bb.5:
	beqz	a1, .LBB2_7
# %bb.6:
	lui	a0, %hi(.Lstr.6)
	addi	a0, a0, %lo(.Lstr.6)
	call	puts
.LBB2_7:
	li	a0, 1
	call	getbits
	slli	a1, a0, 32
	srli	a1, a1, 32
	lui	a2, %hi(bit)
	sd	a1, %lo(bit)(a2)
	seqz	a0, a0
	lui	a1, %hi(zerorun)
	sd	a0, %lo(zerorun)(a1)
.LBB2_8:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB2_9:
	beqz	a0, .LBB2_14
# %bb.10:
	lui	a0, %hi(zerorun)
	sd	zero, %lo(zerorun)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB2_11:
	beqz	a1, .LBB2_13
# %bb.12:
	lui	a0, %hi(.Lstr.5)
	addi	a0, a0, %lo(.Lstr.5)
	call	puts
.LBB2_13:
	lui	a0, %hi(zerorun)
	li	a1, 1
	sd	a1, %lo(zerorun)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB2_14:
	addi	a1, a1, 1
	lui	a0, %hi(zerorun)
	sd	a1, %lo(zerorun)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	bit_out_psc_layer, .Lfunc_end2-bit_out_psc_layer
                                        # -- End function
	.option	pop
	.type	high,@object                    # @high
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
high:
	.quad	0                               # 0x0
	.size	high, 8

	.type	low,@object                     # @low
	.p2align	3, 0x0
low:
	.quad	0                               # 0x0
	.size	low, 8

	.type	code_value,@object              # @code_value
	.p2align	3, 0x0
code_value:
	.quad	0                               # 0x0
	.size	code_value, 8

	.type	sacindex,@object                # @sacindex
	.p2align	3, 0x0
sacindex:
	.quad	0                               # 0x0
	.size	sacindex, 8

	.type	bit,@object                     # @bit
	.p2align	3, 0x0
bit:
	.quad	0                               # 0x0
	.size	bit, 8

	.type	zerorun,@object                 # @zerorun
	.p2align	3, 0x0
zerorun:
	.quad	0                               # 0x0
	.size	zerorun, 8

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Arithmetic Decoder Reset "
	.size	.Lstr, 26

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Startcode Found:Finishing Arithmetic Decoding using 'Garbage bits'"
	.size	.Lstr.4, 67

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"PSC/GBSC, Header Data, or Encoded Stream Error "
	.size	.Lstr.5, 48

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"Removing Startcode Emulation Prevention bit "
	.size	.Lstr.6, 45

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
