	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getblk.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getblock                        # -- Begin function getblock
	.p2align	2
	.type	getblock,@function
getblock:                               # @getblock
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
	lui	a2, %hi(ld)
	ld	a2, %lo(ld)(a2)
	mv	s0, a0
	slli	a0, a0, 7
	add	a0, a2, a0
	addi	a0, a0, 2047
	addi	s7, a0, 41
	seqz	s1, a1
	lui	s10, %hi(trace)
	lui	a0, 2
	addiw	s11, a0, -1025
	li	s3, 64
	lui	s9, %hi(quant)
	lui	s2, 524288
	addiw	s2, s2, 1
	j	.LBB0_4
.LBB0_1:                                #   in Loop: Header=BB0_4 Depth=1
	addi	a2, a2, 1
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	mul	a1, a1, a2
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	slli	a0, a0, 1
	add	a0, s7, a0
	sh	a1, 0(a0)
	addi	s1, s1, 1
	bnez	s4, .LBB0_44
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	li	a0, 12
	call	showbits
	mv	s4, a0
	li	a0, 512
	bltu	s4, a0, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	srliw	a0, s4, 5
	addi	a0, a0, -16
	lui	s5, %hi(DCT3Dtab0)
	addi	s5, s5, %lo(DCT3Dtab0)
	j	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	li	a0, 128
	bltu	s4, a0, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	srliw	a0, s4, 2
	addi	a0, a0, -32
	lui	s5, %hi(DCT3Dtab1)
	addi	s5, s5, %lo(DCT3Dtab1)
	j	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	li	a0, 8
	bltu	s4, a0, .LBB0_46
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	addiw	a0, s4, -8
	lui	s5, %hi(DCT3Dtab2)
	addi	s5, s5, %lo(DCT3Dtab2)
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	slli	a0, a0, 3
	add	s5, s5, a0
	lw	a0, 4(s5)
	call	flushbits
	lw	s6, 0(s5)
	lw	a1, %lo(trace)(s10)
	mv	a0, s6
	beqz	a1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
	lw	a2, 4(s5)
	li	a1, 12
	mv	a0, s4
	call	printbits
	lw	a0, 0(s5)
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	bne	a0, s11, .LBB0_21
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	lw	a0, %lo(trace)(s10)
	beqz	a0, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(stdout)
	ld	a1, %lo(stdout)(a0)
	li	a0, 32
	call	putc
	li	a0, 1
	call	showbits
	li	a1, 1
	li	a2, 1
	call	printbits
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	call	getbits1
	lw	a1, %lo(trace)(s10)
	mv	s4, a0
	beqz	a1, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(stdout)
	ld	a1, %lo(stdout)(a0)
	li	a0, 32
	call	putc
	li	a0, 6
	call	showbits
	li	a1, 6
	li	a2, 6
	call	printbits
.LBB0_17:                               #   in Loop: Header=BB0_4 Depth=1
	li	a0, 6
	call	getbits
	lw	a1, %lo(trace)(s10)
	mv	s5, a0
	beqz	a1, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(stdout)
	ld	a1, %lo(stdout)(a0)
	li	a0, 32
	call	putc
	li	a0, 8
	call	showbits
	li	a1, 8
	li	a2, 8
	call	printbits
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	li	a0, 8
	call	getbits
	li	a1, 127
	blt	a1, a0, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_4 Depth=1
	mv	s8, a0
	j	.LBB0_24
.LBB0_21:                               #   in Loop: Header=BB0_4 Depth=1
	slli	a0, s6, 52
	srli	s5, a0, 56
	andi	s8, s6, 15
	slli	s6, s6, 51
	srli	s4, s6, 63
	li	a0, 1
	call	getbits
	lw	a1, %lo(trace)(s10)
	mv	s6, a0
	beqz	a1, .LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	mv	a1, s6
	call	printf
	j	.LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_4 Depth=1
	li	a1, 256
	subw	s8, a1, a0
.LBB0_24:                               #   in Loop: Header=BB0_4 Depth=1
	slti	a0, a0, 128
	xori	s6, a0, 1
.LBB0_25:                               #   in Loop: Header=BB0_4 Depth=1
	addw	s1, s5, s1
	bge	s1, s3, .LBB0_42
# %bb.26:                               #   in Loop: Header=BB0_4 Depth=1
	lw	a0, %lo(trace)(s10)
	beqz	a0, .LBB0_30
# %bb.27:                               #   in Loop: Header=BB0_4 Depth=1
	mv	a2, s8
	beqz	s6, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_4 Depth=1
	negw	a2, s8
.LBB0_29:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	mv	a1, s5
	call	printf
.LBB0_30:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(zig_zag_scan)
	addi	a0, a0, %lo(zig_zag_scan)
	add	a0, a0, s1
	lbu	a0, 0(a0)
	li	a1, 6
	blt	s0, a1, .LBB0_36
# %bb.31:                               #   in Loop: Header=BB0_4 Depth=1
	lui	a1, %hi(bquant)
	lw	a1, %lo(bquant)(a1)
	slli	a1, a1, 2
	lui	a2, %hi(bquant_tab)
	addi	a2, a2, %lo(bquant_tab)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a2, %lo(quant)(s9)
	mul	a1, a2, a1
	sraiw	a2, a1, 2
	li	a3, 31
	mv	a1, a2
	bltu	a2, a3, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_4 Depth=1
	li	a1, 31
.LBB0_33:                               #   in Loop: Header=BB0_4 Depth=1
	blez	a2, .LBB0_39
# %bb.34:                               #   in Loop: Header=BB0_4 Depth=1
	and	a2, a1, s2
	li	a3, 1
	bne	a2, a3, .LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_4 Depth=1
	slli	a2, s8, 1
	beqz	s6, .LBB0_1
	j	.LBB0_40
.LBB0_36:                               #   in Loop: Header=BB0_4 Depth=1
	lw	a1, %lo(quant)(s9)
	and	a2, a1, s2
	li	a3, 1
	beq	a2, a3, .LBB0_35
.LBB0_37:                               #   in Loop: Header=BB0_4 Depth=1
	slli	s8, s8, 1
	beqz	s6, .LBB0_41
# %bb.38:                               #   in Loop: Header=BB0_4 Depth=1
	not	a2, s8
	mul	a1, a1, a2
	addi	a1, a1, 1
	j	.LBB0_3
.LBB0_39:                               #   in Loop: Header=BB0_4 Depth=1
	li	a1, 1
	slli	a2, s8, 1
	beqz	s6, .LBB0_1
.LBB0_40:                               #   in Loop: Header=BB0_4 Depth=1
	not	a2, a2
	j	.LBB0_2
.LBB0_41:                               #   in Loop: Header=BB0_4 Depth=1
	ori	a2, s8, 1
	mul	a1, a1, a2
	addi	a1, a1, -1
	j	.LBB0_3
.LBB0_42:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_49
# %bb.43:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	li	a1, 34
	j	.LBB0_48
.LBB0_44:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_50
# %bb.45:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
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
	tail	puts
.LBB0_46:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_49
# %bb.47:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 35
.LBB0_48:
	li	a2, 1
	call	fwrite
.LBB0_49:
	lui	a0, %hi(fault)
	li	a1, 1
	sw	a1, %lo(fault)(a0)
.LBB0_50:
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
	.size	getblock, .Lfunc_end0-getblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sac_block                   # -- Begin function get_sac_block
	.p2align	2
	.type	get_sac_block,@function
get_sac_block:                          # @get_sac_block
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(ld)
	ld	a2, %lo(ld)(a2)
	mv	s0, a0
	slli	a0, a0, 7
	add	a0, a2, a0
	addi	a0, a0, 2047
	beqz	a1, .LBB1_2
# %bb.1:
	lui	s10, %hi(cumf_TCOEF3)
	addi	s10, s10, %lo(cumf_TCOEF3)
	lui	a2, %hi(cumf_TCOEF2)
	addi	a2, a2, %lo(cumf_TCOEF2)
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	lui	s4, %hi(cumf_TCOEF1)
	addi	s4, s4, %lo(cumf_TCOEF1)
	lui	a2, %hi(cumf_TCOEFr)
	addi	a2, a2, %lo(cumf_TCOEFr)
	sd	a2, 0(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(cumf_LAST)
	addi	a2, a2, %lo(cumf_LAST)
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(lasttab)
	addi	a2, a2, %lo(lasttab)
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(cumf_RUN)
	addi	a2, a2, %lo(cumf_RUN)
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(cumf_LEVEL)
	addi	a2, a2, %lo(cumf_LEVEL)
	j	.LBB1_3
.LBB1_2:
	lui	s10, %hi(cumf_TCOEF3_intra)
	addi	s10, s10, %lo(cumf_TCOEF3_intra)
	lui	a2, %hi(cumf_TCOEF2_intra)
	addi	a2, a2, %lo(cumf_TCOEF2_intra)
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	lui	s4, %hi(cumf_TCOEF1_intra)
	addi	s4, s4, %lo(cumf_TCOEF1_intra)
	lui	a2, %hi(cumf_TCOEFr_intra)
	addi	a2, a2, %lo(cumf_TCOEFr_intra)
	sd	a2, 0(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(cumf_LAST_intra)
	addi	a2, a2, %lo(cumf_LAST_intra)
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(last_intratab)
	addi	a2, a2, %lo(last_intratab)
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(cumf_RUN_intra)
	addi	a2, a2, %lo(cumf_RUN_intra)
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(cumf_LEVEL_intra)
	addi	a2, a2, %lo(cumf_LEVEL_intra)
.LBB1_3:
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	li	s7, 0
	addi	s6, a0, 41
	seqz	s3, a1
	lui	s5, %hi(trace)
	lui	s11, 524288
	addiw	s11, s11, 1
	li	s1, 1
	li	a0, 255
	slli	a0, a0, 32
	addi	a0, a0, 15
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	j	.LBB1_7
.LBB1_4:                                #   in Loop: Header=BB1_7 Depth=1
	addi	a2, a2, 1
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	mul	a1, a1, a2
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	slli	a0, a0, 1
	add	a0, s6, a0
	addi	s3, s3, 1
	sh	a1, 0(a0)
	addiw	s7, s7, 1
	bnez	s8, .LBB1_31
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s4
	beqz	s7, .LBB1_11
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	mv	a0, s10
	li	a1, 2
	beq	s7, a1, .LBB1_11
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	beq	s7, s1, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
.LBB1_11:                               #   in Loop: Header=BB1_7 Depth=1
	call	decode_a_symbol
	li	a1, 102
	bne	a0, a1, .LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_7 Depth=1
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	call	decode_a_symbol
	slli	a0, a0, 2
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lw	s8, 0(a0)
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	a1, %hi(runtab)
	addi	a1, a1, %lo(runtab)
	add	a0, a1, a0
	lwu	s2, 0(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	call	decode_a_symbol
	lw	a1, %lo(trace)(s5)
	mv	s9, a0
	beqz	a1, .LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_7 Depth=1
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	mv	a1, s9
	call	printf
	lw	a0, %lo(trace)(s5)
	j	.LBB1_16
.LBB1_14:                               #   in Loop: Header=BB1_7 Depth=1
	slli	a0, a0, 2
	lui	a1, %hi(tcoeftab)
	addi	a1, a1, %lo(tcoeftab)
	add	a0, a1, a0
	lwu	s2, 0(a0)
	slli	a0, s2, 51
	srli	s8, a0, 63
	lui	a0, %hi(cumf_SIGN)
	addi	a0, a0, %lo(cumf_SIGN)
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	a1, %hi(signtab)
	addi	a1, a1, %lo(signtab)
	add	a0, a1, a0
	lw	s9, 0(a0)
	slli	a0, s2, 28
	or	a0, a0, s2
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	and	s2, a0, a1
	lw	a0, %lo(trace)(s5)
	bnez	a0, .LBB1_18
	j	.LBB1_19
.LBB1_15:                               #   in Loop: Header=BB1_7 Depth=1
	li	a0, 0
.LBB1_16:                               #   in Loop: Header=BB1_7 Depth=1
	slli	s9, s9, 2
	lui	a1, %hi(leveltab)
	addi	a1, a1, %lo(leveltab)
	add	s9, a1, s9
	lw	a1, 0(s9)
	slti	a2, a1, 129
	addi	a2, a2, -1
	andi	a2, a2, -256
	add	a1, a1, a2
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	srliw	s9, a1, 31
	slli	s2, s2, 32
	or	s2, s2, a3
	beqz	a0, .LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_7 Depth=1
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	printf
	lw	a0, %lo(trace)(s5)
	beqz	a0, .LBB1_19
.LBB1_18:                               #   in Loop: Header=BB1_7 Depth=1
	sext.w	a1, s2
	srai	a2, s2, 32
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	mv	a3, s9
	mv	a4, s8
	call	printf
.LBB1_19:                               #   in Loop: Header=BB1_7 Depth=1
	srli	a0, s2, 32
	addw	s3, s3, a0
	lui	a0, %hi(zig_zag_scan)
	addi	a0, a0, %lo(zig_zag_scan)
	add	a0, a0, s3
	lbu	a0, 0(a0)
	li	a1, 6
	blt	s0, a1, .LBB1_25
# %bb.20:                               #   in Loop: Header=BB1_7 Depth=1
	lui	a1, %hi(bquant)
	lw	a1, %lo(bquant)(a1)
	slli	a1, a1, 2
	lui	a2, %hi(bquant_tab)
	addi	a2, a2, %lo(bquant_tab)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lui	a2, %hi(quant)
	lw	a2, %lo(quant)(a2)
	mul	a1, a2, a1
	sraiw	a2, a1, 2
	li	a3, 31
	mv	a1, a2
	bltu	a2, a3, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_7 Depth=1
	li	a1, 31
.LBB1_22:                               #   in Loop: Header=BB1_7 Depth=1
	blez	a2, .LBB1_28
# %bb.23:                               #   in Loop: Header=BB1_7 Depth=1
	and	a2, a1, s11
	bne	a2, s1, .LBB1_26
.LBB1_24:                               #   in Loop: Header=BB1_7 Depth=1
	slli	a2, s2, 1
	beqz	s9, .LBB1_4
	j	.LBB1_29
.LBB1_25:                               #   in Loop: Header=BB1_7 Depth=1
	lui	a1, %hi(quant)
	lw	a1, %lo(quant)(a1)
	and	a2, a1, s11
	beq	a2, s1, .LBB1_24
.LBB1_26:                               #   in Loop: Header=BB1_7 Depth=1
	slli	s2, s2, 1
	beqz	s9, .LBB1_30
# %bb.27:                               #   in Loop: Header=BB1_7 Depth=1
	not	a2, s2
	mul	a1, a1, a2
	addi	a1, a1, 1
	j	.LBB1_6
.LBB1_28:                               #   in Loop: Header=BB1_7 Depth=1
	li	a1, 1
	slli	a2, s2, 1
	beqz	s9, .LBB1_4
.LBB1_29:                               #   in Loop: Header=BB1_7 Depth=1
	not	a2, a2
	j	.LBB1_5
.LBB1_30:                               #   in Loop: Header=BB1_7 Depth=1
	ori	a2, s2, 1
	mul	a1, a1, a2
	addi	a1, a1, -1
	j	.LBB1_6
.LBB1_31:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end1:
	.size	get_sac_block, .Lfunc_end1-get_sac_block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	DecodeTCoef                     # -- Begin function DecodeTCoef
	.p2align	2
	.type	DecodeTCoef,@function
DecodeTCoef:                            # @DecodeTCoef
# %bb.0:
	li	a2, 3
	beq	a0, a2, .LBB2_7
# %bb.1:
	li	a2, 2
	beq	a0, a2, .LBB2_5
# %bb.2:
	li	a2, 1
	bne	a0, a2, .LBB2_9
# %bb.3:
	beqz	a1, .LBB2_13
# %bb.4:
	lui	a0, %hi(cumf_TCOEF1_intra)
	addi	a0, a0, %lo(cumf_TCOEF1_intra)
	tail	decode_a_symbol
.LBB2_5:
	beqz	a1, .LBB2_11
# %bb.6:
	lui	a0, %hi(cumf_TCOEF2_intra)
	addi	a0, a0, %lo(cumf_TCOEF2_intra)
	tail	decode_a_symbol
.LBB2_7:
	beqz	a1, .LBB2_12
# %bb.8:
	lui	a0, %hi(cumf_TCOEF3_intra)
	addi	a0, a0, %lo(cumf_TCOEF3_intra)
	tail	decode_a_symbol
.LBB2_9:
	beqz	a1, .LBB2_14
# %bb.10:
	lui	a0, %hi(cumf_TCOEFr_intra)
	addi	a0, a0, %lo(cumf_TCOEFr_intra)
	tail	decode_a_symbol
.LBB2_11:
	lui	a0, %hi(cumf_TCOEF2)
	addi	a0, a0, %lo(cumf_TCOEF2)
	tail	decode_a_symbol
.LBB2_12:
	lui	a0, %hi(cumf_TCOEF3)
	addi	a0, a0, %lo(cumf_TCOEF3)
	tail	decode_a_symbol
.LBB2_13:
	lui	a0, %hi(cumf_TCOEF1)
	addi	a0, a0, %lo(cumf_TCOEF1)
	tail	decode_a_symbol
.LBB2_14:
	lui	a0, %hi(cumf_TCOEFr)
	addi	a0, a0, %lo(cumf_TCOEFr)
	tail	decode_a_symbol
.Lfunc_end2:
	.size	DecodeTCoef, .Lfunc_end2-DecodeTCoef
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Decode_Escape_Char              # -- Begin function Decode_Escape_Char
	.p2align	2
	.type	Decode_Escape_Char,@function
Decode_Escape_Char:                     # @Decode_Escape_Char
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	beqz	a0, .LBB3_2
# %bb.1:
	lui	a0, %hi(cumf_LAST_intra)
	addi	a0, a0, %lo(cumf_LAST_intra)
	lui	s3, %hi(last_intratab)
	addi	s3, s3, %lo(last_intratab)
	lui	s2, %hi(cumf_RUN_intra)
	addi	s2, s2, %lo(cumf_RUN_intra)
	lui	s1, %hi(cumf_LEVEL_intra)
	addi	s1, s1, %lo(cumf_LEVEL_intra)
	j	.LBB3_3
.LBB3_2:
	lui	a0, %hi(cumf_LAST)
	addi	a0, a0, %lo(cumf_LAST)
	lui	s3, %hi(lasttab)
	addi	s3, s3, %lo(lasttab)
	lui	s2, %hi(cumf_RUN)
	addi	s2, s2, %lo(cumf_RUN)
	lui	s1, %hi(cumf_LEVEL)
	addi	s1, s1, %lo(cumf_LEVEL)
.LBB3_3:
	call	decode_a_symbol
	slli	a0, a0, 2
	add	a0, s3, a0
	lw	a0, 0(a0)
	sw	a0, 0(s0)
	mv	a0, s2
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	a1, %hi(runtab)
	addi	a1, a1, %lo(runtab)
	add	a0, a1, a0
	lwu	s2, 0(a0)
	mv	a0, s1
	call	decode_a_symbol
	lui	a1, %hi(trace)
	lw	a1, %lo(trace)(a1)
	mv	s0, a0
	beqz	a1, .LBB3_5
# %bb.4:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	mv	a1, s0
	call	printf
.LBB3_5:
	slli	s0, s0, 2
	lui	a0, %hi(leveltab)
	addi	a0, a0, %lo(leveltab)
	add	a0, a0, s0
	lw	a0, 0(a0)
	slti	a1, a0, 129
	addi	a1, a1, -1
	andi	a1, a1, -256
	add	a0, a0, a1
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	srliw	a1, a0, 31
	slli	a0, s2, 32
	or	a0, a0, a2
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	Decode_Escape_Char, .Lfunc_end3-Decode_Escape_Char
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	vlc_word_decode                 # -- Begin function vlc_word_decode
	.p2align	2
	.type	vlc_word_decode,@function
vlc_word_decode:                        # @vlc_word_decode
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	slli	a0, a0, 51
	srli	a0, a0, 63
	sw	a0, 0(a1)
	lui	a0, %hi(cumf_SIGN)
	addi	a0, a0, %lo(cumf_SIGN)
	call	decode_a_symbol
	slli	a0, a0, 2
	lui	a1, %hi(signtab)
	addi	a1, a1, %lo(signtab)
	add	a0, a1, a0
	lwu	a1, 0(a0)
	slli	a0, s0, 28
	li	a2, 255
	slli	a2, a2, 32
	and	a0, a0, a2
	andi	s0, s0, 15
	or	a0, a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	vlc_word_decode, .Lfunc_end4-vlc_word_decode
                                        # -- End function
	.option	pop
	.type	codtab,@object                  # @codtab
	.section	.sdata,"aw",@progbits
	.globl	codtab
	.p2align	2, 0x0
codtab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	codtab, 8

	.type	mcbpctab,@object                # @mcbpctab
	.data
	.globl	mcbpctab
	.p2align	2, 0x0
mcbpctab:
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	48                              # 0x30
	.word	1                               # 0x1
	.word	17                              # 0x11
	.word	33                              # 0x21
	.word	49                              # 0x31
	.word	2                               # 0x2
	.word	18                              # 0x12
	.word	34                              # 0x22
	.word	50                              # 0x32
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	35                              # 0x23
	.word	51                              # 0x33
	.word	4                               # 0x4
	.word	20                              # 0x14
	.word	36                              # 0x24
	.word	52                              # 0x34
	.word	255                             # 0xff
	.size	mcbpctab, 84

	.type	mcbpc_intratab,@object          # @mcbpc_intratab
	.globl	mcbpc_intratab
	.p2align	2, 0x0
mcbpc_intratab:
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	35                              # 0x23
	.word	51                              # 0x33
	.word	4                               # 0x4
	.word	20                              # 0x14
	.word	36                              # 0x24
	.word	52                              # 0x34
	.word	255                             # 0xff
	.size	mcbpc_intratab, 36

	.type	modb_tab,@object                # @modb_tab
	.globl	modb_tab
	.p2align	2, 0x0
modb_tab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.size	modb_tab, 12

	.type	ycbpb_tab,@object               # @ycbpb_tab
	.section	.sdata,"aw",@progbits
	.globl	ycbpb_tab
	.p2align	2, 0x0
ycbpb_tab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	ycbpb_tab, 8

	.type	uvcbpb_tab,@object              # @uvcbpb_tab
	.globl	uvcbpb_tab
	.p2align	2, 0x0
uvcbpb_tab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	uvcbpb_tab, 8

	.type	cbpytab,@object                 # @cbpytab
	.data
	.globl	cbpytab
	.p2align	2, 0x0
cbpytab:
	.word	15                              # 0xf
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	cbpytab, 64

	.type	cbpy_intratab,@object           # @cbpy_intratab
	.globl	cbpy_intratab
	.p2align	2, 0x0
cbpy_intratab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.size	cbpy_intratab, 64

	.type	dquanttab,@object               # @dquanttab
	.globl	dquanttab
	.p2align	2, 0x0
dquanttab:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	4                               # 0x4
	.size	dquanttab, 16

	.type	mvdtab,@object                  # @mvdtab
	.globl	mvdtab
	.p2align	2, 0x0
mvdtab:
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.size	mvdtab, 256

	.type	intradctab,@object              # @intradctab
	.globl	intradctab
	.p2align	2, 0x0
intradctab:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	70                              # 0x46
	.word	71                              # 0x47
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	74                              # 0x4a
	.word	75                              # 0x4b
	.word	76                              # 0x4c
	.word	77                              # 0x4d
	.word	78                              # 0x4e
	.word	79                              # 0x4f
	.word	80                              # 0x50
	.word	81                              # 0x51
	.word	82                              # 0x52
	.word	83                              # 0x53
	.word	84                              # 0x54
	.word	85                              # 0x55
	.word	86                              # 0x56
	.word	87                              # 0x57
	.word	88                              # 0x58
	.word	89                              # 0x59
	.word	90                              # 0x5a
	.word	91                              # 0x5b
	.word	92                              # 0x5c
	.word	93                              # 0x5d
	.word	94                              # 0x5e
	.word	95                              # 0x5f
	.word	96                              # 0x60
	.word	97                              # 0x61
	.word	98                              # 0x62
	.word	99                              # 0x63
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	102                             # 0x66
	.word	103                             # 0x67
	.word	104                             # 0x68
	.word	105                             # 0x69
	.word	106                             # 0x6a
	.word	107                             # 0x6b
	.word	108                             # 0x6c
	.word	109                             # 0x6d
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	112                             # 0x70
	.word	113                             # 0x71
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	117                             # 0x75
	.word	118                             # 0x76
	.word	119                             # 0x77
	.word	120                             # 0x78
	.word	121                             # 0x79
	.word	122                             # 0x7a
	.word	123                             # 0x7b
	.word	124                             # 0x7c
	.word	125                             # 0x7d
	.word	126                             # 0x7e
	.word	127                             # 0x7f
	.word	255                             # 0xff
	.word	129                             # 0x81
	.word	130                             # 0x82
	.word	131                             # 0x83
	.word	132                             # 0x84
	.word	133                             # 0x85
	.word	134                             # 0x86
	.word	135                             # 0x87
	.word	136                             # 0x88
	.word	137                             # 0x89
	.word	138                             # 0x8a
	.word	139                             # 0x8b
	.word	140                             # 0x8c
	.word	141                             # 0x8d
	.word	142                             # 0x8e
	.word	143                             # 0x8f
	.word	144                             # 0x90
	.word	145                             # 0x91
	.word	146                             # 0x92
	.word	147                             # 0x93
	.word	148                             # 0x94
	.word	149                             # 0x95
	.word	150                             # 0x96
	.word	151                             # 0x97
	.word	152                             # 0x98
	.word	153                             # 0x99
	.word	154                             # 0x9a
	.word	155                             # 0x9b
	.word	156                             # 0x9c
	.word	157                             # 0x9d
	.word	158                             # 0x9e
	.word	159                             # 0x9f
	.word	160                             # 0xa0
	.word	161                             # 0xa1
	.word	162                             # 0xa2
	.word	163                             # 0xa3
	.word	164                             # 0xa4
	.word	165                             # 0xa5
	.word	166                             # 0xa6
	.word	167                             # 0xa7
	.word	168                             # 0xa8
	.word	169                             # 0xa9
	.word	170                             # 0xaa
	.word	171                             # 0xab
	.word	172                             # 0xac
	.word	173                             # 0xad
	.word	174                             # 0xae
	.word	175                             # 0xaf
	.word	176                             # 0xb0
	.word	177                             # 0xb1
	.word	178                             # 0xb2
	.word	179                             # 0xb3
	.word	180                             # 0xb4
	.word	181                             # 0xb5
	.word	182                             # 0xb6
	.word	183                             # 0xb7
	.word	184                             # 0xb8
	.word	185                             # 0xb9
	.word	186                             # 0xba
	.word	187                             # 0xbb
	.word	188                             # 0xbc
	.word	189                             # 0xbd
	.word	190                             # 0xbe
	.word	191                             # 0xbf
	.word	192                             # 0xc0
	.word	193                             # 0xc1
	.word	194                             # 0xc2
	.word	195                             # 0xc3
	.word	196                             # 0xc4
	.word	197                             # 0xc5
	.word	198                             # 0xc6
	.word	199                             # 0xc7
	.word	200                             # 0xc8
	.word	201                             # 0xc9
	.word	202                             # 0xca
	.word	203                             # 0xcb
	.word	204                             # 0xcc
	.word	205                             # 0xcd
	.word	206                             # 0xce
	.word	207                             # 0xcf
	.word	208                             # 0xd0
	.word	209                             # 0xd1
	.word	210                             # 0xd2
	.word	211                             # 0xd3
	.word	212                             # 0xd4
	.word	213                             # 0xd5
	.word	214                             # 0xd6
	.word	215                             # 0xd7
	.word	216                             # 0xd8
	.word	217                             # 0xd9
	.word	218                             # 0xda
	.word	219                             # 0xdb
	.word	220                             # 0xdc
	.word	221                             # 0xdd
	.word	222                             # 0xde
	.word	223                             # 0xdf
	.word	224                             # 0xe0
	.word	225                             # 0xe1
	.word	226                             # 0xe2
	.word	227                             # 0xe3
	.word	228                             # 0xe4
	.word	229                             # 0xe5
	.word	230                             # 0xe6
	.word	231                             # 0xe7
	.word	232                             # 0xe8
	.word	233                             # 0xe9
	.word	234                             # 0xea
	.word	235                             # 0xeb
	.word	236                             # 0xec
	.word	237                             # 0xed
	.word	238                             # 0xee
	.word	239                             # 0xef
	.word	240                             # 0xf0
	.word	241                             # 0xf1
	.word	242                             # 0xf2
	.word	243                             # 0xf3
	.word	244                             # 0xf4
	.word	245                             # 0xf5
	.word	246                             # 0xf6
	.word	247                             # 0xf7
	.word	248                             # 0xf8
	.word	249                             # 0xf9
	.word	250                             # 0xfa
	.word	251                             # 0xfb
	.word	252                             # 0xfc
	.word	253                             # 0xfd
	.word	254                             # 0xfe
	.size	intradctab, 1016

	.type	tcoeftab,@object                # @tcoeftab
	.globl	tcoeftab
	.p2align	2, 0x0
tcoeftab:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.word	81                              # 0x51
	.word	82                              # 0x52
	.word	83                              # 0x53
	.word	97                              # 0x61
	.word	98                              # 0x62
	.word	99                              # 0x63
	.word	113                             # 0x71
	.word	114                             # 0x72
	.word	129                             # 0x81
	.word	130                             # 0x82
	.word	145                             # 0x91
	.word	146                             # 0x92
	.word	161                             # 0xa1
	.word	162                             # 0xa2
	.word	177                             # 0xb1
	.word	193                             # 0xc1
	.word	209                             # 0xd1
	.word	225                             # 0xe1
	.word	241                             # 0xf1
	.word	257                             # 0x101
	.word	273                             # 0x111
	.word	289                             # 0x121
	.word	305                             # 0x131
	.word	321                             # 0x141
	.word	337                             # 0x151
	.word	353                             # 0x161
	.word	369                             # 0x171
	.word	385                             # 0x181
	.word	401                             # 0x191
	.word	417                             # 0x1a1
	.word	4097                            # 0x1001
	.word	4098                            # 0x1002
	.word	4099                            # 0x1003
	.word	4113                            # 0x1011
	.word	4114                            # 0x1012
	.word	4129                            # 0x1021
	.word	4145                            # 0x1031
	.word	4161                            # 0x1041
	.word	4177                            # 0x1051
	.word	4193                            # 0x1061
	.word	4209                            # 0x1071
	.word	4225                            # 0x1081
	.word	4241                            # 0x1091
	.word	4257                            # 0x10a1
	.word	4273                            # 0x10b1
	.word	4289                            # 0x10c1
	.word	4305                            # 0x10d1
	.word	4321                            # 0x10e1
	.word	4337                            # 0x10f1
	.word	4353                            # 0x1101
	.word	4369                            # 0x1111
	.word	4385                            # 0x1121
	.word	4401                            # 0x1131
	.word	4417                            # 0x1141
	.word	4433                            # 0x1151
	.word	4449                            # 0x1161
	.word	4465                            # 0x1171
	.word	4481                            # 0x1181
	.word	4497                            # 0x1191
	.word	4513                            # 0x11a1
	.word	4529                            # 0x11b1
	.word	4545                            # 0x11c1
	.word	4561                            # 0x11d1
	.word	4577                            # 0x11e1
	.word	4593                            # 0x11f1
	.word	4609                            # 0x1201
	.word	4625                            # 0x1211
	.word	4641                            # 0x1221
	.word	4657                            # 0x1231
	.word	4673                            # 0x1241
	.word	4689                            # 0x1251
	.word	4705                            # 0x1261
	.word	4721                            # 0x1271
	.word	4737                            # 0x1281
	.word	7167                            # 0x1bff
	.size	tcoeftab, 412

	.type	signtab,@object                 # @signtab
	.section	.sdata,"aw",@progbits
	.globl	signtab
	.p2align	2, 0x0
signtab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	signtab, 8

	.type	lasttab,@object                 # @lasttab
	.globl	lasttab
	.p2align	2, 0x0
lasttab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	lasttab, 8

	.type	last_intratab,@object           # @last_intratab
	.globl	last_intratab
	.p2align	2, 0x0
last_intratab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	last_intratab, 8

	.type	runtab,@object                  # @runtab
	.data
	.globl	runtab
	.p2align	2, 0x0
runtab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.size	runtab, 256

	.type	leveltab,@object                # @leveltab
	.globl	leveltab
	.p2align	2, 0x0
leveltab:
	.word	129                             # 0x81
	.word	130                             # 0x82
	.word	131                             # 0x83
	.word	132                             # 0x84
	.word	133                             # 0x85
	.word	134                             # 0x86
	.word	135                             # 0x87
	.word	136                             # 0x88
	.word	137                             # 0x89
	.word	138                             # 0x8a
	.word	139                             # 0x8b
	.word	140                             # 0x8c
	.word	141                             # 0x8d
	.word	142                             # 0x8e
	.word	143                             # 0x8f
	.word	144                             # 0x90
	.word	145                             # 0x91
	.word	146                             # 0x92
	.word	147                             # 0x93
	.word	148                             # 0x94
	.word	149                             # 0x95
	.word	150                             # 0x96
	.word	151                             # 0x97
	.word	152                             # 0x98
	.word	153                             # 0x99
	.word	154                             # 0x9a
	.word	155                             # 0x9b
	.word	156                             # 0x9c
	.word	157                             # 0x9d
	.word	158                             # 0x9e
	.word	159                             # 0x9f
	.word	160                             # 0xa0
	.word	161                             # 0xa1
	.word	162                             # 0xa2
	.word	163                             # 0xa3
	.word	164                             # 0xa4
	.word	165                             # 0xa5
	.word	166                             # 0xa6
	.word	167                             # 0xa7
	.word	168                             # 0xa8
	.word	169                             # 0xa9
	.word	170                             # 0xaa
	.word	171                             # 0xab
	.word	172                             # 0xac
	.word	173                             # 0xad
	.word	174                             # 0xae
	.word	175                             # 0xaf
	.word	176                             # 0xb0
	.word	177                             # 0xb1
	.word	178                             # 0xb2
	.word	179                             # 0xb3
	.word	180                             # 0xb4
	.word	181                             # 0xb5
	.word	182                             # 0xb6
	.word	183                             # 0xb7
	.word	184                             # 0xb8
	.word	185                             # 0xb9
	.word	186                             # 0xba
	.word	187                             # 0xbb
	.word	188                             # 0xbc
	.word	189                             # 0xbd
	.word	190                             # 0xbe
	.word	191                             # 0xbf
	.word	192                             # 0xc0
	.word	193                             # 0xc1
	.word	194                             # 0xc2
	.word	195                             # 0xc3
	.word	196                             # 0xc4
	.word	197                             # 0xc5
	.word	198                             # 0xc6
	.word	199                             # 0xc7
	.word	200                             # 0xc8
	.word	201                             # 0xc9
	.word	202                             # 0xca
	.word	203                             # 0xcb
	.word	204                             # 0xcc
	.word	205                             # 0xcd
	.word	206                             # 0xce
	.word	207                             # 0xcf
	.word	208                             # 0xd0
	.word	209                             # 0xd1
	.word	210                             # 0xd2
	.word	211                             # 0xd3
	.word	212                             # 0xd4
	.word	213                             # 0xd5
	.word	214                             # 0xd6
	.word	215                             # 0xd7
	.word	216                             # 0xd8
	.word	217                             # 0xd9
	.word	218                             # 0xda
	.word	219                             # 0xdb
	.word	220                             # 0xdc
	.word	221                             # 0xdd
	.word	222                             # 0xde
	.word	223                             # 0xdf
	.word	224                             # 0xe0
	.word	225                             # 0xe1
	.word	226                             # 0xe2
	.word	227                             # 0xe3
	.word	228                             # 0xe4
	.word	229                             # 0xe5
	.word	230                             # 0xe6
	.word	231                             # 0xe7
	.word	232                             # 0xe8
	.word	233                             # 0xe9
	.word	234                             # 0xea
	.word	235                             # 0xeb
	.word	236                             # 0xec
	.word	237                             # 0xed
	.word	238                             # 0xee
	.word	239                             # 0xef
	.word	240                             # 0xf0
	.word	241                             # 0xf1
	.word	242                             # 0xf2
	.word	243                             # 0xf3
	.word	244                             # 0xf4
	.word	245                             # 0xf5
	.word	246                             # 0xf6
	.word	247                             # 0xf7
	.word	248                             # 0xf8
	.word	249                             # 0xf9
	.word	250                             # 0xfa
	.word	251                             # 0xfb
	.word	252                             # 0xfc
	.word	253                             # 0xfd
	.word	254                             # 0xfe
	.word	255                             # 0xff
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	70                              # 0x46
	.word	71                              # 0x47
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	74                              # 0x4a
	.word	75                              # 0x4b
	.word	76                              # 0x4c
	.word	77                              # 0x4d
	.word	78                              # 0x4e
	.word	79                              # 0x4f
	.word	80                              # 0x50
	.word	81                              # 0x51
	.word	82                              # 0x52
	.word	83                              # 0x53
	.word	84                              # 0x54
	.word	85                              # 0x55
	.word	86                              # 0x56
	.word	87                              # 0x57
	.word	88                              # 0x58
	.word	89                              # 0x59
	.word	90                              # 0x5a
	.word	91                              # 0x5b
	.word	92                              # 0x5c
	.word	93                              # 0x5d
	.word	94                              # 0x5e
	.word	95                              # 0x5f
	.word	96                              # 0x60
	.word	97                              # 0x61
	.word	98                              # 0x62
	.word	99                              # 0x63
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	102                             # 0x66
	.word	103                             # 0x67
	.word	104                             # 0x68
	.word	105                             # 0x69
	.word	106                             # 0x6a
	.word	107                             # 0x6b
	.word	108                             # 0x6c
	.word	109                             # 0x6d
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	112                             # 0x70
	.word	113                             # 0x71
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	117                             # 0x75
	.word	118                             # 0x76
	.word	119                             # 0x77
	.word	120                             # 0x78
	.word	121                             # 0x79
	.word	122                             # 0x7a
	.word	123                             # 0x7b
	.word	124                             # 0x7c
	.word	125                             # 0x7d
	.word	126                             # 0x7e
	.word	127                             # 0x7f
	.size	leveltab, 1016

	.type	cumf_COD,@object                # @cumf_COD
	.globl	cumf_COD
	.p2align	2, 0x0
cumf_COD:
	.word	16383                           # 0x3fff
	.word	6849                            # 0x1ac1
	.word	0                               # 0x0
	.size	cumf_COD, 12

	.type	cumf_MCBPC,@object              # @cumf_MCBPC
	.globl	cumf_MCBPC
	.p2align	2, 0x0
cumf_MCBPC:
	.word	16383                           # 0x3fff
	.word	4105                            # 0x1009
	.word	3088                            # 0xc10
	.word	2367                            # 0x93f
	.word	1988                            # 0x7c4
	.word	1621                            # 0x655
	.word	1612                            # 0x64c
	.word	1609                            # 0x649
	.word	1608                            # 0x648
	.word	496                             # 0x1f0
	.word	353                             # 0x161
	.word	195                             # 0xc3
	.word	77                              # 0x4d
	.word	22                              # 0x16
	.word	17                              # 0x11
	.word	12                              # 0xc
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	cumf_MCBPC, 88

	.type	cumf_MCBPC_intra,@object        # @cumf_MCBPC_intra
	.globl	cumf_MCBPC_intra
	.p2align	2, 0x0
cumf_MCBPC_intra:
	.word	16383                           # 0x3fff
	.word	7410                            # 0x1cf2
	.word	6549                            # 0x1995
	.word	5188                            # 0x1444
	.word	442                             # 0x1ba
	.word	182                             # 0xb6
	.word	181                             # 0xb5
	.word	141                             # 0x8d
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	cumf_MCBPC_intra, 40

	.type	cumf_MODB,@object               # @cumf_MODB
	.globl	cumf_MODB
	.p2align	2, 0x0
cumf_MODB:
	.word	16383                           # 0x3fff
	.word	6062                            # 0x17ae
	.word	2130                            # 0x852
	.word	0                               # 0x0
	.size	cumf_MODB, 16

	.type	cumf_YCBPB,@object              # @cumf_YCBPB
	.globl	cumf_YCBPB
	.p2align	2, 0x0
cumf_YCBPB:
	.word	16383                           # 0x3fff
	.word	6062                            # 0x17ae
	.word	0                               # 0x0
	.size	cumf_YCBPB, 12

	.type	cumf_UVCBPB,@object             # @cumf_UVCBPB
	.globl	cumf_UVCBPB
	.p2align	2, 0x0
cumf_UVCBPB:
	.word	16383                           # 0x3fff
	.word	491                             # 0x1eb
	.word	0                               # 0x0
	.size	cumf_UVCBPB, 12

	.type	cumf_CBPY,@object               # @cumf_CBPY
	.globl	cumf_CBPY
	.p2align	2, 0x0
cumf_CBPY:
	.word	16383                           # 0x3fff
	.word	14481                           # 0x3891
	.word	13869                           # 0x362d
	.word	13196                           # 0x338c
	.word	12568                           # 0x3118
	.word	11931                           # 0x2e9b
	.word	11185                           # 0x2bb1
	.word	10814                           # 0x2a3e
	.word	9796                            # 0x2644
	.word	9150                            # 0x23be
	.word	8781                            # 0x224d
	.word	7933                            # 0x1efd
	.word	6860                            # 0x1acc
	.word	6116                            # 0x17e4
	.word	4873                            # 0x1309
	.word	3538                            # 0xdd2
	.word	0                               # 0x0
	.size	cumf_CBPY, 68

	.type	cumf_CBPY_intra,@object         # @cumf_CBPY_intra
	.globl	cumf_CBPY_intra
	.p2align	2, 0x0
cumf_CBPY_intra:
	.word	16383                           # 0x3fff
	.word	13619                           # 0x3533
	.word	13211                           # 0x339b
	.word	12933                           # 0x3285
	.word	12562                           # 0x3112
	.word	12395                           # 0x306b
	.word	11913                           # 0x2e89
	.word	11783                           # 0x2e07
	.word	11004                           # 0x2afc
	.word	10782                           # 0x2a1e
	.word	10689                           # 0x29c1
	.word	9928                            # 0x26c8
	.word	9353                            # 0x2489
	.word	8945                            # 0x22f1
	.word	8407                            # 0x20d7
	.word	7795                            # 0x1e73
	.word	0                               # 0x0
	.size	cumf_CBPY_intra, 68

	.type	cumf_DQUANT,@object             # @cumf_DQUANT
	.globl	cumf_DQUANT
	.p2align	2, 0x0
cumf_DQUANT:
	.word	16383                           # 0x3fff
	.word	12287                           # 0x2fff
	.word	8192                            # 0x2000
	.word	4095                            # 0xfff
	.word	0                               # 0x0
	.size	cumf_DQUANT, 20

	.type	cumf_MVD,@object                # @cumf_MVD
	.globl	cumf_MVD
	.p2align	2, 0x0
cumf_MVD:
	.word	16383                           # 0x3fff
	.word	16380                           # 0x3ffc
	.word	16369                           # 0x3ff1
	.word	16365                           # 0x3fed
	.word	16361                           # 0x3fe9
	.word	16357                           # 0x3fe5
	.word	16350                           # 0x3fde
	.word	16343                           # 0x3fd7
	.word	16339                           # 0x3fd3
	.word	16333                           # 0x3fcd
	.word	16326                           # 0x3fc6
	.word	16318                           # 0x3fbe
	.word	16311                           # 0x3fb7
	.word	16306                           # 0x3fb2
	.word	16298                           # 0x3faa
	.word	16291                           # 0x3fa3
	.word	16283                           # 0x3f9b
	.word	16272                           # 0x3f90
	.word	16261                           # 0x3f85
	.word	16249                           # 0x3f79
	.word	16235                           # 0x3f6b
	.word	16222                           # 0x3f5e
	.word	16207                           # 0x3f4f
	.word	16175                           # 0x3f2f
	.word	16141                           # 0x3f0d
	.word	16094                           # 0x3ede
	.word	16044                           # 0x3eac
	.word	15936                           # 0x3e40
	.word	15764                           # 0x3d94
	.word	15463                           # 0x3c67
	.word	14956                           # 0x3a6c
	.word	13924                           # 0x3664
	.word	11491                           # 0x2ce3
	.word	4621                            # 0x120d
	.word	2264                            # 0x8d8
	.word	1315                            # 0x523
	.word	854                             # 0x356
	.word	583                             # 0x247
	.word	420                             # 0x1a4
	.word	326                             # 0x146
	.word	273                             # 0x111
	.word	229                             # 0xe5
	.word	196                             # 0xc4
	.word	166                             # 0xa6
	.word	148                             # 0x94
	.word	137                             # 0x89
	.word	123                             # 0x7b
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	91                              # 0x5b
	.word	82                              # 0x52
	.word	76                              # 0x4c
	.word	66                              # 0x42
	.word	59                              # 0x3b
	.word	53                              # 0x35
	.word	46                              # 0x2e
	.word	36                              # 0x24
	.word	30                              # 0x1e
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	5                               # 0x5
	.word	0                               # 0x0
	.size	cumf_MVD, 260

	.type	cumf_INTRADC,@object            # @cumf_INTRADC
	.globl	cumf_INTRADC
	.p2align	2, 0x0
cumf_INTRADC:
	.word	16383                           # 0x3fff
	.word	16380                           # 0x3ffc
	.word	16379                           # 0x3ffb
	.word	16378                           # 0x3ffa
	.word	16377                           # 0x3ff9
	.word	16376                           # 0x3ff8
	.word	16370                           # 0x3ff2
	.word	16361                           # 0x3fe9
	.word	16360                           # 0x3fe8
	.word	16359                           # 0x3fe7
	.word	16358                           # 0x3fe6
	.word	16357                           # 0x3fe5
	.word	16356                           # 0x3fe4
	.word	16355                           # 0x3fe3
	.word	16343                           # 0x3fd7
	.word	16238                           # 0x3f6e
	.word	16237                           # 0x3f6d
	.word	16236                           # 0x3f6c
	.word	16230                           # 0x3f66
	.word	16221                           # 0x3f5d
	.word	16220                           # 0x3f5c
	.word	16205                           # 0x3f4d
	.word	16190                           # 0x3f3e
	.word	16169                           # 0x3f29
	.word	16151                           # 0x3f17
	.word	16130                           # 0x3f02
	.word	16109                           # 0x3eed
	.word	16094                           # 0x3ede
	.word	16070                           # 0x3ec6
	.word	16037                           # 0x3ea5
	.word	16007                           # 0x3e87
	.word	15962                           # 0x3e5a
	.word	15938                           # 0x3e42
	.word	15899                           # 0x3e1b
	.word	15854                           # 0x3dee
	.word	15815                           # 0x3dc7
	.word	15788                           # 0x3dac
	.word	15743                           # 0x3d7f
	.word	15689                           # 0x3d49
	.word	15656                           # 0x3d28
	.word	15617                           # 0x3d01
	.word	15560                           # 0x3cc8
	.word	15473                           # 0x3c71
	.word	15404                           # 0x3c2c
	.word	15296                           # 0x3bc0
	.word	15178                           # 0x3b4a
	.word	15106                           # 0x3b02
	.word	14992                           # 0x3a90
	.word	14868                           # 0x3a14
	.word	14738                           # 0x3992
	.word	14593                           # 0x3901
	.word	14438                           # 0x3866
	.word	14283                           # 0x37cb
	.word	14169                           # 0x3759
	.word	14064                           # 0x36f0
	.word	14004                           # 0x36b4
	.word	13914                           # 0x365a
	.word	13824                           # 0x3600
	.word	13752                           # 0x35b8
	.word	13671                           # 0x3567
	.word	13590                           # 0x3516
	.word	13515                           # 0x34cb
	.word	13458                           # 0x3492
	.word	13380                           # 0x3444
	.word	13305                           # 0x33f9
	.word	13230                           # 0x33ae
	.word	13143                           # 0x3357
	.word	13025                           # 0x32e1
	.word	12935                           # 0x3287
	.word	12878                           # 0x324e
	.word	12794                           # 0x31fa
	.word	12743                           # 0x31c7
	.word	12656                           # 0x3170
	.word	12596                           # 0x3134
	.word	12521                           # 0x30e9
	.word	12443                           # 0x309b
	.word	12359                           # 0x3047
	.word	12278                           # 0x2ff6
	.word	12200                           # 0x2fa8
	.word	12131                           # 0x2f63
	.word	12047                           # 0x2f0f
	.word	12002                           # 0x2ee2
	.word	11948                           # 0x2eac
	.word	11891                           # 0x2e73
	.word	11828                           # 0x2e34
	.word	11744                           # 0x2de0
	.word	11663                           # 0x2d8f
	.word	11588                           # 0x2d44
	.word	11495                           # 0x2ce7
	.word	11402                           # 0x2c8a
	.word	11288                           # 0x2c18
	.word	11204                           # 0x2bc4
	.word	11126                           # 0x2b76
	.word	11039                           # 0x2b1f
	.word	10961                           # 0x2ad1
	.word	10883                           # 0x2a83
	.word	10787                           # 0x2a23
	.word	10679                           # 0x29b7
	.word	10583                           # 0x2957
	.word	10481                           # 0x28f1
	.word	10360                           # 0x2878
	.word	10227                           # 0x27f3
	.word	10113                           # 0x2781
	.word	9961                            # 0x26e9
	.word	9828                            # 0x2664
	.word	9717                            # 0x25f5
	.word	9584                            # 0x2570
	.word	9485                            # 0x250d
	.word	9324                            # 0x246c
	.word	9112                            # 0x2398
	.word	9019                            # 0x233b
	.word	8908                            # 0x22cc
	.word	8766                            # 0x223e
	.word	8584                            # 0x2188
	.word	8426                            # 0x20ea
	.word	8211                            # 0x2013
	.word	7920                            # 0x1ef0
	.word	7663                            # 0x1def
	.word	7406                            # 0x1cee
	.word	7152                            # 0x1bf0
	.word	6904                            # 0x1af8
	.word	6677                            # 0x1a15
	.word	6453                            # 0x1935
	.word	6265                            # 0x1879
	.word	6101                            # 0x17d5
	.word	5904                            # 0x1710
	.word	5716                            # 0x1654
	.word	5489                            # 0x1571
	.word	5307                            # 0x14bb
	.word	5056                            # 0x13c0
	.word	4850                            # 0x12f2
	.word	4569                            # 0x11d9
	.word	4284                            # 0x10bc
	.word	3966                            # 0xf7e
	.word	3712                            # 0xe80
	.word	3518                            # 0xdbe
	.word	3342                            # 0xd0e
	.word	3206                            # 0xc86
	.word	3048                            # 0xbe8
	.word	2909                            # 0xb5d
	.word	2773                            # 0xad5
	.word	2668                            # 0xa6c
	.word	2596                            # 0xa24
	.word	2512                            # 0x9d0
	.word	2370                            # 0x942
	.word	2295                            # 0x8f7
	.word	2232                            # 0x8b8
	.word	2166                            # 0x876
	.word	2103                            # 0x837
	.word	2022                            # 0x7e6
	.word	1956                            # 0x7a4
	.word	1887                            # 0x75f
	.word	1830                            # 0x726
	.word	1803                            # 0x70b
	.word	1770                            # 0x6ea
	.word	1728                            # 0x6c0
	.word	1674                            # 0x68a
	.word	1635                            # 0x663
	.word	1599                            # 0x63f
	.word	1557                            # 0x615
	.word	1500                            # 0x5dc
	.word	1482                            # 0x5ca
	.word	1434                            # 0x59a
	.word	1389                            # 0x56d
	.word	1356                            # 0x54c
	.word	1317                            # 0x525
	.word	1284                            # 0x504
	.word	1245                            # 0x4dd
	.word	1200                            # 0x4b0
	.word	1179                            # 0x49b
	.word	1140                            # 0x474
	.word	1110                            # 0x456
	.word	1092                            # 0x444
	.word	1062                            # 0x426
	.word	1044                            # 0x414
	.word	1035                            # 0x40b
	.word	1014                            # 0x3f6
	.word	1008                            # 0x3f0
	.word	993                             # 0x3e1
	.word	981                             # 0x3d5
	.word	954                             # 0x3ba
	.word	936                             # 0x3a8
	.word	912                             # 0x390
	.word	894                             # 0x37e
	.word	876                             # 0x36c
	.word	864                             # 0x360
	.word	849                             # 0x351
	.word	828                             # 0x33c
	.word	816                             # 0x330
	.word	801                             # 0x321
	.word	792                             # 0x318
	.word	777                             # 0x309
	.word	756                             # 0x2f4
	.word	732                             # 0x2dc
	.word	690                             # 0x2b2
	.word	660                             # 0x294
	.word	642                             # 0x282
	.word	615                             # 0x267
	.word	597                             # 0x255
	.word	576                             # 0x240
	.word	555                             # 0x22b
	.word	522                             # 0x20a
	.word	489                             # 0x1e9
	.word	459                             # 0x1cb
	.word	435                             # 0x1b3
	.word	411                             # 0x19b
	.word	405                             # 0x195
	.word	396                             # 0x18c
	.word	387                             # 0x183
	.word	375                             # 0x177
	.word	360                             # 0x168
	.word	354                             # 0x162
	.word	345                             # 0x159
	.word	344                             # 0x158
	.word	329                             # 0x149
	.word	314                             # 0x13a
	.word	293                             # 0x125
	.word	278                             # 0x116
	.word	251                             # 0xfb
	.word	236                             # 0xec
	.word	230                             # 0xe6
	.word	224                             # 0xe0
	.word	215                             # 0xd7
	.word	214                             # 0xd6
	.word	208                             # 0xd0
	.word	199                             # 0xc7
	.word	193                             # 0xc1
	.word	184                             # 0xb8
	.word	178                             # 0xb2
	.word	169                             # 0xa9
	.word	154                             # 0x9a
	.word	127                             # 0x7f
	.word	100                             # 0x64
	.word	94                              # 0x5e
	.word	73                              # 0x49
	.word	37                              # 0x25
	.word	36                              # 0x24
	.word	35                              # 0x23
	.word	34                              # 0x22
	.word	33                              # 0x21
	.word	32                              # 0x20
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	29                              # 0x1d
	.word	28                              # 0x1c
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	17                              # 0x11
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	9                               # 0x9
	.word	0                               # 0x0
	.size	cumf_INTRADC, 1020

	.type	cumf_TCOEF1,@object             # @cumf_TCOEF1
	.globl	cumf_TCOEF1
	.p2align	2, 0x0
cumf_TCOEF1:
	.word	16383                           # 0x3fff
	.word	13455                           # 0x348f
	.word	12458                           # 0x30aa
	.word	12079                           # 0x2f2f
	.word	11885                           # 0x2e6d
	.word	11800                           # 0x2e18
	.word	11738                           # 0x2dda
	.word	11700                           # 0x2db4
	.word	11681                           # 0x2da1
	.word	11661                           # 0x2d8d
	.word	11651                           # 0x2d83
	.word	11645                           # 0x2d7d
	.word	11641                           # 0x2d79
	.word	10572                           # 0x294c
	.word	10403                           # 0x28a3
	.word	10361                           # 0x2879
	.word	10346                           # 0x286a
	.word	10339                           # 0x2863
	.word	10335                           # 0x285f
	.word	9554                            # 0x2552
	.word	9445                            # 0x24e5
	.word	9427                            # 0x24d3
	.word	9419                            # 0x24cb
	.word	9006                            # 0x232e
	.word	8968                            # 0x2308
	.word	8964                            # 0x2304
	.word	8643                            # 0x21c3
	.word	8627                            # 0x21b3
	.word	8624                            # 0x21b0
	.word	8369                            # 0x20b1
	.word	8354                            # 0x20a2
	.word	8352                            # 0x20a0
	.word	8200                            # 0x2008
	.word	8192                            # 0x2000
	.word	8191                            # 0x1fff
	.word	8039                            # 0x1f67
	.word	8036                            # 0x1f64
	.word	7920                            # 0x1ef0
	.word	7917                            # 0x1eed
	.word	7800                            # 0x1e78
	.word	7793                            # 0x1e71
	.word	7730                            # 0x1e32
	.word	7727                            # 0x1e2f
	.word	7674                            # 0x1dfa
	.word	7613                            # 0x1dbd
	.word	7564                            # 0x1d8c
	.word	7513                            # 0x1d59
	.word	7484                            # 0x1d3c
	.word	7466                            # 0x1d2a
	.word	7439                            # 0x1d0f
	.word	7411                            # 0x1cf3
	.word	7389                            # 0x1cdd
	.word	7373                            # 0x1ccd
	.word	7369                            # 0x1cc9
	.word	7359                            # 0x1cbf
	.word	7348                            # 0x1cb4
	.word	7321                            # 0x1c99
	.word	7302                            # 0x1c86
	.word	7294                            # 0x1c7e
	.word	5013                            # 0x1395
	.word	4819                            # 0x12d3
	.word	4789                            # 0x12b5
	.word	4096                            # 0x1000
	.word	4073                            # 0xfe9
	.word	3373                            # 0xd2d
	.word	3064                            # 0xbf8
	.word	2674                            # 0xa72
	.word	2357                            # 0x935
	.word	2177                            # 0x881
	.word	1975                            # 0x7b7
	.word	1798                            # 0x706
	.word	1618                            # 0x652
	.word	1517                            # 0x5ed
	.word	1421                            # 0x58d
	.word	1303                            # 0x517
	.word	1194                            # 0x4aa
	.word	1087                            # 0x43f
	.word	1027                            # 0x403
	.word	960                             # 0x3c0
	.word	890                             # 0x37a
	.word	819                             # 0x333
	.word	758                             # 0x2f6
	.word	707                             # 0x2c3
	.word	680                             # 0x2a8
	.word	656                             # 0x290
	.word	613                             # 0x265
	.word	566                             # 0x236
	.word	534                             # 0x216
	.word	505                             # 0x1f9
	.word	475                             # 0x1db
	.word	465                             # 0x1d1
	.word	449                             # 0x1c1
	.word	430                             # 0x1ae
	.word	395                             # 0x18b
	.word	358                             # 0x166
	.word	335                             # 0x14f
	.word	324                             # 0x144
	.word	303                             # 0x12f
	.word	295                             # 0x127
	.word	286                             # 0x11e
	.word	272                             # 0x110
	.word	233                             # 0xe9
	.word	215                             # 0xd7
	.word	0                               # 0x0
	.size	cumf_TCOEF1, 416

	.type	cumf_TCOEF2,@object             # @cumf_TCOEF2
	.globl	cumf_TCOEF2
	.p2align	2, 0x0
cumf_TCOEF2:
	.word	16383                           # 0x3fff
	.word	13582                           # 0x350e
	.word	12709                           # 0x31a5
	.word	12402                           # 0x3072
	.word	12262                           # 0x2fe6
	.word	12188                           # 0x2f9c
	.word	12150                           # 0x2f76
	.word	12131                           # 0x2f63
	.word	12125                           # 0x2f5d
	.word	12117                           # 0x2f55
	.word	12113                           # 0x2f51
	.word	12108                           # 0x2f4c
	.word	12104                           # 0x2f48
	.word	10567                           # 0x2947
	.word	10180                           # 0x27c4
	.word	10070                           # 0x2756
	.word	10019                           # 0x2723
	.word	9998                            # 0x270e
	.word	9987                            # 0x2703
	.word	9158                            # 0x23c6
	.word	9037                            # 0x234d
	.word	9010                            # 0x2332
	.word	9005                            # 0x232d
	.word	8404                            # 0x20d4
	.word	8323                            # 0x2083
	.word	8312                            # 0x2078
	.word	7813                            # 0x1e85
	.word	7743                            # 0x1e3f
	.word	7726                            # 0x1e2e
	.word	7394                            # 0x1ce2
	.word	7366                            # 0x1cc6
	.word	7364                            # 0x1cc4
	.word	7076                            # 0x1ba4
	.word	7062                            # 0x1b96
	.word	7060                            # 0x1b94
	.word	6810                            # 0x1a9a
	.word	6797                            # 0x1a8d
	.word	6614                            # 0x19d6
	.word	6602                            # 0x19ca
	.word	6459                            # 0x193b
	.word	6454                            # 0x1936
	.word	6304                            # 0x18a0
	.word	6303                            # 0x189f
	.word	6200                            # 0x1838
	.word	6121                            # 0x17e9
	.word	6059                            # 0x17ab
	.word	6012                            # 0x177c
	.word	5973                            # 0x1755
	.word	5928                            # 0x1728
	.word	5893                            # 0x1705
	.word	5871                            # 0x16ef
	.word	5847                            # 0x16d7
	.word	5823                            # 0x16bf
	.word	5809                            # 0x16b1
	.word	5796                            # 0x16a4
	.word	5781                            # 0x1695
	.word	5771                            # 0x168b
	.word	5763                            # 0x1683
	.word	5752                            # 0x1678
	.word	4754                            # 0x1292
	.word	4654                            # 0x122e
	.word	4631                            # 0x1217
	.word	3934                            # 0xf5e
	.word	3873                            # 0xf21
	.word	3477                            # 0xd95
	.word	3095                            # 0xc17
	.word	2758                            # 0xac6
	.word	2502                            # 0x9c6
	.word	2257                            # 0x8d1
	.word	2054                            # 0x806
	.word	1869                            # 0x74d
	.word	1715                            # 0x6b3
	.word	1599                            # 0x63f
	.word	1431                            # 0x597
	.word	1305                            # 0x519
	.word	1174                            # 0x496
	.word	1059                            # 0x423
	.word	983                             # 0x3d7
	.word	901                             # 0x385
	.word	839                             # 0x347
	.word	777                             # 0x309
	.word	733                             # 0x2dd
	.word	683                             # 0x2ab
	.word	658                             # 0x292
	.word	606                             # 0x25e
	.word	565                             # 0x235
	.word	526                             # 0x20e
	.word	488                             # 0x1e8
	.word	456                             # 0x1c8
	.word	434                             # 0x1b2
	.word	408                             # 0x198
	.word	380                             # 0x17c
	.word	361                             # 0x169
	.word	327                             # 0x147
	.word	310                             # 0x136
	.word	296                             # 0x128
	.word	267                             # 0x10b
	.word	259                             # 0x103
	.word	249                             # 0xf9
	.word	239                             # 0xef
	.word	230                             # 0xe6
	.word	221                             # 0xdd
	.word	214                             # 0xd6
	.word	0                               # 0x0
	.size	cumf_TCOEF2, 416

	.type	cumf_TCOEF3,@object             # @cumf_TCOEF3
	.globl	cumf_TCOEF3
	.p2align	2, 0x0
cumf_TCOEF3:
	.word	16383                           # 0x3fff
	.word	13532                           # 0x34dc
	.word	12677                           # 0x3185
	.word	12342                           # 0x3036
	.word	12195                           # 0x2fa3
	.word	12112                           # 0x2f50
	.word	12059                           # 0x2f1b
	.word	12034                           # 0x2f02
	.word	12020                           # 0x2ef4
	.word	12008                           # 0x2ee8
	.word	12003                           # 0x2ee3
	.word	12002                           # 0x2ee2
	.word	12001                           # 0x2ee1
	.word	10586                           # 0x295a
	.word	10297                           # 0x2839
	.word	10224                           # 0x27f0
	.word	10202                           # 0x27da
	.word	10195                           # 0x27d3
	.word	10191                           # 0x27cf
	.word	9223                            # 0x2407
	.word	9046                            # 0x2356
	.word	8999                            # 0x2327
	.word	8987                            # 0x231b
	.word	8275                            # 0x2053
	.word	8148                            # 0x1fd4
	.word	8113                            # 0x1fb1
	.word	7552                            # 0x1d80
	.word	7483                            # 0x1d3b
	.word	7468                            # 0x1d2c
	.word	7066                            # 0x1b9a
	.word	7003                            # 0x1b5b
	.word	6989                            # 0x1b4d
	.word	6671                            # 0x1a0f
	.word	6642                            # 0x19f2
	.word	6631                            # 0x19e7
	.word	6359                            # 0x18d7
	.word	6327                            # 0x18b7
	.word	6114                            # 0x17e2
	.word	6103                            # 0x17d7
	.word	5929                            # 0x1729
	.word	5918                            # 0x171e
	.word	5792                            # 0x16a0
	.word	5785                            # 0x1699
	.word	5672                            # 0x1628
	.word	5580                            # 0x15cc
	.word	5507                            # 0x1583
	.word	5461                            # 0x1555
	.word	5414                            # 0x1526
	.word	5382                            # 0x1506
	.word	5354                            # 0x14ea
	.word	5330                            # 0x14d2
	.word	5312                            # 0x14c0
	.word	5288                            # 0x14a8
	.word	5273                            # 0x1499
	.word	5261                            # 0x148d
	.word	5247                            # 0x147f
	.word	5235                            # 0x1473
	.word	5227                            # 0x146b
	.word	5219                            # 0x1463
	.word	4357                            # 0x1105
	.word	4277                            # 0x10b5
	.word	4272                            # 0x10b0
	.word	3847                            # 0xf07
	.word	3819                            # 0xeeb
	.word	3455                            # 0xd7f
	.word	3119                            # 0xc2f
	.word	2829                            # 0xb0d
	.word	2550                            # 0x9f6
	.word	2313                            # 0x909
	.word	2104                            # 0x838
	.word	1881                            # 0x759
	.word	1711                            # 0x6af
	.word	1565                            # 0x61d
	.word	1366                            # 0x556
	.word	1219                            # 0x4c3
	.word	1068                            # 0x42c
	.word	932                             # 0x3a4
	.word	866                             # 0x362
	.word	799                             # 0x31f
	.word	750                             # 0x2ee
	.word	701                             # 0x2bd
	.word	662                             # 0x296
	.word	605                             # 0x25d
	.word	559                             # 0x22f
	.word	513                             # 0x201
	.word	471                             # 0x1d7
	.word	432                             # 0x1b0
	.word	403                             # 0x193
	.word	365                             # 0x16d
	.word	336                             # 0x150
	.word	312                             # 0x138
	.word	290                             # 0x122
	.word	276                             # 0x114
	.word	266                             # 0x10a
	.word	254                             # 0xfe
	.word	240                             # 0xf0
	.word	228                             # 0xe4
	.word	223                             # 0xdf
	.word	216                             # 0xd8
	.word	206                             # 0xce
	.word	199                             # 0xc7
	.word	192                             # 0xc0
	.word	189                             # 0xbd
	.word	0                               # 0x0
	.size	cumf_TCOEF3, 416

	.type	cumf_TCOEFr,@object             # @cumf_TCOEFr
	.globl	cumf_TCOEFr
	.p2align	2, 0x0
cumf_TCOEFr:
	.word	16383                           # 0x3fff
	.word	13216                           # 0x33a0
	.word	12233                           # 0x2fc9
	.word	11931                           # 0x2e9b
	.word	11822                           # 0x2e2e
	.word	11776                           # 0x2e00
	.word	11758                           # 0x2dee
	.word	11748                           # 0x2de4
	.word	11743                           # 0x2ddf
	.word	11742                           # 0x2dde
	.word	11741                           # 0x2ddd
	.word	11740                           # 0x2ddc
	.word	11739                           # 0x2ddb
	.word	10203                           # 0x27db
	.word	9822                            # 0x265e
	.word	9725                            # 0x25fd
	.word	9691                            # 0x25db
	.word	9677                            # 0x25cd
	.word	9674                            # 0x25ca
	.word	8759                            # 0x2237
	.word	8609                            # 0x21a1
	.word	8576                            # 0x2180
	.word	8566                            # 0x2176
	.word	7901                            # 0x1edd
	.word	7787                            # 0x1e6b
	.word	7770                            # 0x1e5a
	.word	7257                            # 0x1c59
	.word	7185                            # 0x1c11
	.word	7168                            # 0x1c00
	.word	6716                            # 0x1a3c
	.word	6653                            # 0x19fd
	.word	6639                            # 0x19ef
	.word	6276                            # 0x1884
	.word	6229                            # 0x1855
	.word	6220                            # 0x184c
	.word	5888                            # 0x1700
	.word	5845                            # 0x16d5
	.word	5600                            # 0x15e0
	.word	5567                            # 0x15bf
	.word	5348                            # 0x14e4
	.word	5327                            # 0x14cf
	.word	5160                            # 0x1428
	.word	5142                            # 0x1416
	.word	5004                            # 0x138c
	.word	4900                            # 0x1324
	.word	4798                            # 0x12be
	.word	4743                            # 0x1287
	.word	4708                            # 0x1264
	.word	4685                            # 0x124d
	.word	4658                            # 0x1232
	.word	4641                            # 0x1221
	.word	4622                            # 0x120e
	.word	4610                            # 0x1202
	.word	4598                            # 0x11f6
	.word	4589                            # 0x11ed
	.word	4582                            # 0x11e6
	.word	4578                            # 0x11e2
	.word	4570                            # 0x11da
	.word	4566                            # 0x11d6
	.word	3824                            # 0xef0
	.word	3757                            # 0xead
	.word	3748                            # 0xea4
	.word	3360                            # 0xd20
	.word	3338                            # 0xd0a
	.word	3068                            # 0xbfc
	.word	2835                            # 0xb13
	.word	2592                            # 0xa20
	.word	2359                            # 0x937
	.word	2179                            # 0x883
	.word	1984                            # 0x7c0
	.word	1804                            # 0x70c
	.word	1614                            # 0x64e
	.word	1445                            # 0x5a5
	.word	1234                            # 0x4d2
	.word	1068                            # 0x42c
	.word	870                             # 0x366
	.word	739                             # 0x2e3
	.word	668                             # 0x29c
	.word	616                             # 0x268
	.word	566                             # 0x236
	.word	532                             # 0x214
	.word	489                             # 0x1e9
	.word	453                             # 0x1c5
	.word	426                             # 0x1aa
	.word	385                             # 0x181
	.word	357                             # 0x165
	.word	335                             # 0x14f
	.word	316                             # 0x13c
	.word	297                             # 0x129
	.word	283                             # 0x11b
	.word	274                             # 0x112
	.word	266                             # 0x10a
	.word	259                             # 0x103
	.word	251                             # 0xfb
	.word	241                             # 0xf1
	.word	233                             # 0xe9
	.word	226                             # 0xe2
	.word	222                             # 0xde
	.word	217                             # 0xd9
	.word	214                             # 0xd6
	.word	211                             # 0xd3
	.word	209                             # 0xd1
	.word	208                             # 0xd0
	.word	0                               # 0x0
	.size	cumf_TCOEFr, 416

	.type	cumf_TCOEF1_intra,@object       # @cumf_TCOEF1_intra
	.globl	cumf_TCOEF1_intra
	.p2align	2, 0x0
cumf_TCOEF1_intra:
	.word	16383                           # 0x3fff
	.word	13383                           # 0x3447
	.word	11498                           # 0x2cea
	.word	10201                           # 0x27d9
	.word	9207                            # 0x23f7
	.word	8528                            # 0x2150
	.word	8099                            # 0x1fa3
	.word	7768                            # 0x1e58
	.word	7546                            # 0x1d7a
	.word	7368                            # 0x1cc8
	.word	7167                            # 0x1bff
	.word	6994                            # 0x1b52
	.word	6869                            # 0x1ad5
	.word	6005                            # 0x1775
	.word	5474                            # 0x1562
	.word	5220                            # 0x1464
	.word	5084                            # 0x13dc
	.word	4964                            # 0x1364
	.word	4862                            # 0x12fe
	.word	4672                            # 0x1240
	.word	4591                            # 0x11ef
	.word	4570                            # 0x11da
	.word	4543                            # 0x11bf
	.word	4397                            # 0x112d
	.word	4337                            # 0x10f1
	.word	4326                            # 0x10e6
	.word	4272                            # 0x10b0
	.word	4240                            # 0x1090
	.word	4239                            # 0x108f
	.word	4212                            # 0x1074
	.word	4196                            # 0x1064
	.word	4185                            # 0x1059
	.word	4158                            # 0x103e
	.word	4157                            # 0x103d
	.word	4156                            # 0x103c
	.word	4140                            # 0x102c
	.word	4139                            # 0x102b
	.word	4138                            # 0x102a
	.word	4137                            # 0x1029
	.word	4136                            # 0x1028
	.word	4125                            # 0x101d
	.word	4124                            # 0x101c
	.word	4123                            # 0x101b
	.word	4112                            # 0x1010
	.word	4111                            # 0x100f
	.word	4110                            # 0x100e
	.word	4109                            # 0x100d
	.word	4108                            # 0x100c
	.word	4107                            # 0x100b
	.word	4106                            # 0x100a
	.word	4105                            # 0x1009
	.word	4104                            # 0x1008
	.word	4103                            # 0x1007
	.word	4102                            # 0x1006
	.word	4101                            # 0x1005
	.word	4100                            # 0x1004
	.word	4099                            # 0x1003
	.word	4098                            # 0x1002
	.word	4097                            # 0x1001
	.word	3043                            # 0xbe3
	.word	2897                            # 0xb51
	.word	2843                            # 0xb1b
	.word	1974                            # 0x7b6
	.word	1790                            # 0x6fe
	.word	1677                            # 0x68d
	.word	1552                            # 0x610
	.word	1416                            # 0x588
	.word	1379                            # 0x563
	.word	1331                            # 0x533
	.word	1288                            # 0x508
	.word	1251                            # 0x4e3
	.word	1250                            # 0x4e2
	.word	1249                            # 0x4e1
	.word	1248                            # 0x4e0
	.word	1247                            # 0x4df
	.word	1236                            # 0x4d4
	.word	1225                            # 0x4c9
	.word	1224                            # 0x4c8
	.word	1223                            # 0x4c7
	.word	1212                            # 0x4bc
	.word	1201                            # 0x4b1
	.word	1200                            # 0x4b0
	.word	1199                            # 0x4af
	.word	1198                            # 0x4ae
	.word	1197                            # 0x4ad
	.word	1196                            # 0x4ac
	.word	1195                            # 0x4ab
	.word	1194                            # 0x4aa
	.word	1193                            # 0x4a9
	.word	1192                            # 0x4a8
	.word	1191                            # 0x4a7
	.word	1190                            # 0x4a6
	.word	1189                            # 0x4a5
	.word	1188                            # 0x4a4
	.word	1187                            # 0x4a3
	.word	1186                            # 0x4a2
	.word	1185                            # 0x4a1
	.word	1184                            # 0x4a0
	.word	1183                            # 0x49f
	.word	1182                            # 0x49e
	.word	1181                            # 0x49d
	.word	1180                            # 0x49c
	.word	1179                            # 0x49b
	.word	0                               # 0x0
	.size	cumf_TCOEF1_intra, 416

	.type	cumf_TCOEF2_intra,@object       # @cumf_TCOEF2_intra
	.globl	cumf_TCOEF2_intra
	.p2align	2, 0x0
cumf_TCOEF2_intra:
	.word	16383                           # 0x3fff
	.word	13242                           # 0x33ba
	.word	11417                           # 0x2c99
	.word	10134                           # 0x2796
	.word	9254                            # 0x2426
	.word	8507                            # 0x213b
	.word	8012                            # 0x1f4c
	.word	7556                            # 0x1d84
	.word	7273                            # 0x1c69
	.word	7062                            # 0x1b96
	.word	6924                            # 0x1b0c
	.word	6839                            # 0x1ab7
	.word	6741                            # 0x1a55
	.word	6108                            # 0x17dc
	.word	5851                            # 0x16db
	.word	5785                            # 0x1699
	.word	5719                            # 0x1657
	.word	5687                            # 0x1637
	.word	5655                            # 0x1617
	.word	5028                            # 0x13a4
	.word	4917                            # 0x1335
	.word	4864                            # 0x1300
	.word	4845                            # 0x12ed
	.word	4416                            # 0x1140
	.word	4159                            # 0x103f
	.word	4074                            # 0xfea
	.word	3903                            # 0xf3f
	.word	3871                            # 0xf1f
	.word	3870                            # 0xf1e
	.word	3765                            # 0xeb5
	.word	3752                            # 0xea8
	.word	3751                            # 0xea7
	.word	3659                            # 0xe4b
	.word	3606                            # 0xe16
	.word	3580                            # 0xdfc
	.word	3541                            # 0xdd5
	.word	3540                            # 0xdd4
	.word	3514                            # 0xdba
	.word	3495                            # 0xda7
	.word	3494                            # 0xda6
	.word	3493                            # 0xda5
	.word	3474                            # 0xd92
	.word	3473                            # 0xd91
	.word	3441                            # 0xd71
	.word	3440                            # 0xd70
	.word	3439                            # 0xd6f
	.word	3438                            # 0xd6e
	.word	3425                            # 0xd61
	.word	3424                            # 0xd60
	.word	3423                            # 0xd5f
	.word	3422                            # 0xd5e
	.word	3421                            # 0xd5d
	.word	3420                            # 0xd5c
	.word	3401                            # 0xd49
	.word	3400                            # 0xd48
	.word	3399                            # 0xd47
	.word	3398                            # 0xd46
	.word	3397                            # 0xd45
	.word	3396                            # 0xd44
	.word	2530                            # 0x9e2
	.word	2419                            # 0x973
	.word	2360                            # 0x938
	.word	2241                            # 0x8c1
	.word	2228                            # 0x8b4
	.word	2017                            # 0x7e1
	.word	1687                            # 0x697
	.word	1576                            # 0x628
	.word	1478                            # 0x5c6
	.word	1320                            # 0x528
	.word	1281                            # 0x501
	.word	1242                            # 0x4da
	.word	1229                            # 0x4cd
	.word	1197                            # 0x4ad
	.word	1178                            # 0x49a
	.word	1152                            # 0x480
	.word	1133                            # 0x46d
	.word	1114                            # 0x45a
	.word	1101                            # 0x44d
	.word	1088                            # 0x440
	.word	1087                            # 0x43f
	.word	1086                            # 0x43e
	.word	1085                            # 0x43d
	.word	1072                            # 0x430
	.word	1071                            # 0x42f
	.word	1070                            # 0x42e
	.word	1069                            # 0x42d
	.word	1068                            # 0x42c
	.word	1067                            # 0x42b
	.word	1066                            # 0x42a
	.word	1065                            # 0x429
	.word	1064                            # 0x428
	.word	1063                            # 0x427
	.word	1062                            # 0x426
	.word	1061                            # 0x425
	.word	1060                            # 0x424
	.word	1059                            # 0x423
	.word	1058                            # 0x422
	.word	1057                            # 0x421
	.word	1056                            # 0x420
	.word	1055                            # 0x41f
	.word	1054                            # 0x41e
	.word	1053                            # 0x41d
	.word	1052                            # 0x41c
	.word	0                               # 0x0
	.size	cumf_TCOEF2_intra, 416

	.type	cumf_TCOEF3_intra,@object       # @cumf_TCOEF3_intra
	.globl	cumf_TCOEF3_intra
	.p2align	2, 0x0
cumf_TCOEF3_intra:
	.word	16383                           # 0x3fff
	.word	12741                           # 0x31c5
	.word	10950                           # 0x2ac6
	.word	10071                           # 0x2757
	.word	9493                            # 0x2515
	.word	9008                            # 0x2330
	.word	8685                            # 0x21ed
	.word	8516                            # 0x2144
	.word	8385                            # 0x20c1
	.word	8239                            # 0x202f
	.word	8209                            # 0x2011
	.word	8179                            # 0x1ff3
	.word	8141                            # 0x1fcd
	.word	6628                            # 0x19e4
	.word	5980                            # 0x175c
	.word	5634                            # 0x1602
	.word	5503                            # 0x157f
	.word	5396                            # 0x1514
	.word	5327                            # 0x14cf
	.word	4857                            # 0x12f9
	.word	4642                            # 0x1222
	.word	4550                            # 0x11c6
	.word	4481                            # 0x1181
	.word	4235                            # 0x108b
	.word	4166                            # 0x1046
	.word	4151                            # 0x1037
	.word	3967                            # 0xf7f
	.word	3922                            # 0xf52
	.word	3907                            # 0xf43
	.word	3676                            # 0xe5c
	.word	3500                            # 0xdac
	.word	3324                            # 0xcfc
	.word	3247                            # 0xcaf
	.word	3246                            # 0xcae
	.word	3245                            # 0xcad
	.word	3183                            # 0xc6f
	.word	3168                            # 0xc60
	.word	3084                            # 0xc0c
	.word	3069                            # 0xbfd
	.word	3031                            # 0xbd7
	.word	3030                            # 0xbd6
	.word	3029                            # 0xbd5
	.word	3014                            # 0xbc6
	.word	3013                            # 0xbc5
	.word	2990                            # 0xbae
	.word	2975                            # 0xb9f
	.word	2974                            # 0xb9e
	.word	2973                            # 0xb9d
	.word	2958                            # 0xb8e
	.word	2943                            # 0xb7f
	.word	2928                            # 0xb70
	.word	2927                            # 0xb6f
	.word	2926                            # 0xb6e
	.word	2925                            # 0xb6d
	.word	2924                            # 0xb6c
	.word	2923                            # 0xb6b
	.word	2922                            # 0xb6a
	.word	2921                            # 0xb69
	.word	2920                            # 0xb68
	.word	2397                            # 0x95d
	.word	2298                            # 0x8fa
	.word	2283                            # 0x8eb
	.word	1891                            # 0x763
	.word	1799                            # 0x707
	.word	1591                            # 0x637
	.word	1445                            # 0x5a5
	.word	1338                            # 0x53a
	.word	1145                            # 0x479
	.word	1068                            # 0x42c
	.word	1006                            # 0x3ee
	.word	791                             # 0x317
	.word	768                             # 0x300
	.word	661                             # 0x295
	.word	631                             # 0x277
	.word	630                             # 0x276
	.word	615                             # 0x267
	.word	592                             # 0x250
	.word	577                             # 0x241
	.word	576                             # 0x240
	.word	561                             # 0x231
	.word	546                             # 0x222
	.word	523                             # 0x20b
	.word	508                             # 0x1fc
	.word	493                             # 0x1ed
	.word	492                             # 0x1ec
	.word	491                             # 0x1eb
	.word	476                             # 0x1dc
	.word	475                             # 0x1db
	.word	474                             # 0x1da
	.word	473                             # 0x1d9
	.word	472                             # 0x1d8
	.word	471                             # 0x1d7
	.word	470                             # 0x1d6
	.word	469                             # 0x1d5
	.word	468                             # 0x1d4
	.word	453                             # 0x1c5
	.word	452                             # 0x1c4
	.word	451                             # 0x1c3
	.word	450                             # 0x1c2
	.word	449                             # 0x1c1
	.word	448                             # 0x1c0
	.word	447                             # 0x1bf
	.word	446                             # 0x1be
	.word	0                               # 0x0
	.size	cumf_TCOEF3_intra, 416

	.type	cumf_TCOEFr_intra,@object       # @cumf_TCOEFr_intra
	.globl	cumf_TCOEFr_intra
	.p2align	2, 0x0
cumf_TCOEFr_intra:
	.word	16383                           # 0x3fff
	.word	12514                           # 0x30e2
	.word	10776                           # 0x2a18
	.word	9969                            # 0x26f1
	.word	9579                            # 0x256b
	.word	9306                            # 0x245a
	.word	9168                            # 0x23d0
	.word	9082                            # 0x237a
	.word	9032                            # 0x2348
	.word	9000                            # 0x2328
	.word	8981                            # 0x2315
	.word	8962                            # 0x2302
	.word	8952                            # 0x22f8
	.word	7630                            # 0x1dce
	.word	7212                            # 0x1c2c
	.word	7053                            # 0x1b8d
	.word	6992                            # 0x1b50
	.word	6961                            # 0x1b31
	.word	6940                            # 0x1b1c
	.word	6195                            # 0x1833
	.word	5988                            # 0x1764
	.word	5948                            # 0x173c
	.word	5923                            # 0x1723
	.word	5370                            # 0x14fa
	.word	5244                            # 0x147c
	.word	5210                            # 0x145a
	.word	4854                            # 0x12f6
	.word	4762                            # 0x129a
	.word	4740                            # 0x1284
	.word	4384                            # 0x1120
	.word	4300                            # 0x10cc
	.word	4288                            # 0x10c0
	.word	4020                            # 0xfb4
	.word	3968                            # 0xf80
	.word	3964                            # 0xf7c
	.word	3752                            # 0xea8
	.word	3668                            # 0xe54
	.word	3511                            # 0xdb7
	.word	3483                            # 0xd9b
	.word	3354                            # 0xd1a
	.word	3322                            # 0xcfa
	.word	3205                            # 0xc85
	.word	3183                            # 0xc6f
	.word	3108                            # 0xc24
	.word	3046                            # 0xbe6
	.word	2999                            # 0xbb7
	.word	2981                            # 0xba5
	.word	2974                            # 0xb9e
	.word	2968                            # 0xb98
	.word	2961                            # 0xb91
	.word	2955                            # 0xb8b
	.word	2949                            # 0xb85
	.word	2943                            # 0xb7f
	.word	2942                            # 0xb7e
	.word	2939                            # 0xb7b
	.word	2935                            # 0xb77
	.word	2934                            # 0xb76
	.word	2933                            # 0xb75
	.word	2929                            # 0xb71
	.word	2270                            # 0x8de
	.word	2178                            # 0x882
	.word	2162                            # 0x872
	.word	1959                            # 0x7a7
	.word	1946                            # 0x79a
	.word	1780                            # 0x6f4
	.word	1651                            # 0x673
	.word	1524                            # 0x5f4
	.word	1400                            # 0x578
	.word	1289                            # 0x509
	.word	1133                            # 0x46d
	.word	1037                            # 0x40d
	.word	942                             # 0x3ae
	.word	849                             # 0x351
	.word	763                             # 0x2fb
	.word	711                             # 0x2c7
	.word	591                             # 0x24f
	.word	521                             # 0x209
	.word	503                             # 0x1f7
	.word	496                             # 0x1f0
	.word	474                             # 0x1da
	.word	461                             # 0x1cd
	.word	449                             # 0x1c1
	.word	442                             # 0x1ba
	.word	436                             # 0x1b4
	.word	426                             # 0x1aa
	.word	417                             # 0x1a1
	.word	407                             # 0x197
	.word	394                             # 0x18a
	.word	387                             # 0x183
	.word	377                             # 0x179
	.word	373                             # 0x175
	.word	370                             # 0x172
	.word	367                             # 0x16f
	.word	366                             # 0x16e
	.word	365                             # 0x16d
	.word	364                             # 0x16c
	.word	363                             # 0x16b
	.word	362                             # 0x16a
	.word	358                             # 0x166
	.word	355                             # 0x163
	.word	352                             # 0x160
	.word	351                             # 0x15f
	.word	350                             # 0x15e
	.word	0                               # 0x0
	.size	cumf_TCOEFr_intra, 416

	.type	cumf_SIGN,@object               # @cumf_SIGN
	.globl	cumf_SIGN
	.p2align	2, 0x0
cumf_SIGN:
	.word	16383                           # 0x3fff
	.word	8416                            # 0x20e0
	.word	0                               # 0x0
	.size	cumf_SIGN, 12

	.type	cumf_LAST,@object               # @cumf_LAST
	.globl	cumf_LAST
	.p2align	2, 0x0
cumf_LAST:
	.word	16383                           # 0x3fff
	.word	9469                            # 0x24fd
	.word	0                               # 0x0
	.size	cumf_LAST, 12

	.type	cumf_LAST_intra,@object         # @cumf_LAST_intra
	.globl	cumf_LAST_intra
	.p2align	2, 0x0
cumf_LAST_intra:
	.word	16383                           # 0x3fff
	.word	2820                            # 0xb04
	.word	0                               # 0x0
	.size	cumf_LAST_intra, 12

	.type	cumf_RUN,@object                # @cumf_RUN
	.globl	cumf_RUN
	.p2align	2, 0x0
cumf_RUN:
	.word	16383                           # 0x3fff
	.word	15310                           # 0x3bce
	.word	14702                           # 0x396e
	.word	13022                           # 0x32de
	.word	11883                           # 0x2e6b
	.word	11234                           # 0x2be2
	.word	10612                           # 0x2974
	.word	10192                           # 0x27d0
	.word	9516                            # 0x252c
	.word	9016                            # 0x2338
	.word	8623                            # 0x21af
	.word	8366                            # 0x20ae
	.word	7595                            # 0x1dab
	.word	7068                            # 0x1b9c
	.word	6730                            # 0x1a4a
	.word	6487                            # 0x1957
	.word	6379                            # 0x18eb
	.word	6285                            # 0x188d
	.word	6177                            # 0x1821
	.word	6150                            # 0x1806
	.word	6083                            # 0x17c3
	.word	5989                            # 0x1765
	.word	5949                            # 0x173d
	.word	5922                            # 0x1722
	.word	5895                            # 0x1707
	.word	5828                            # 0x16c4
	.word	5774                            # 0x168e
	.word	5773                            # 0x168d
	.word	5394                            # 0x1512
	.word	5164                            # 0x142c
	.word	5016                            # 0x1398
	.word	4569                            # 0x11d9
	.word	4366                            # 0x110e
	.word	4136                            # 0x1028
	.word	4015                            # 0xfaf
	.word	3867                            # 0xf1b
	.word	3773                            # 0xebd
	.word	3692                            # 0xe6c
	.word	3611                            # 0xe1b
	.word	3476                            # 0xd94
	.word	3341                            # 0xd0d
	.word	3301                            # 0xce5
	.word	2787                            # 0xae3
	.word	2503                            # 0x9c7
	.word	2219                            # 0x8ab
	.word	1989                            # 0x7c5
	.word	1515                            # 0x5eb
	.word	1095                            # 0x447
	.word	934                             # 0x3a6
	.word	799                             # 0x31f
	.word	691                             # 0x2b3
	.word	583                             # 0x247
	.word	435                             # 0x1b3
	.word	300                             # 0x12c
	.word	246                             # 0xf6
	.word	206                             # 0xce
	.word	125                             # 0x7d
	.word	124                             # 0x7c
	.word	97                              # 0x61
	.word	57                              # 0x39
	.word	30                              # 0x1e
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	cumf_RUN, 260

	.type	cumf_RUN_intra,@object          # @cumf_RUN_intra
	.globl	cumf_RUN_intra
	.p2align	2, 0x0
cumf_RUN_intra:
	.word	16383                           # 0x3fff
	.word	10884                           # 0x2a84
	.word	8242                            # 0x2032
	.word	7124                            # 0x1bd4
	.word	5173                            # 0x1435
	.word	4745                            # 0x1289
	.word	4246                            # 0x1096
	.word	3984                            # 0xf90
	.word	3034                            # 0xbda
	.word	2749                            # 0xabd
	.word	2607                            # 0xa2f
	.word	2298                            # 0x8fa
	.word	966                             # 0x3c6
	.word	681                             # 0x2a9
	.word	396                             # 0x18c
	.word	349                             # 0x15d
	.word	302                             # 0x12e
	.word	255                             # 0xff
	.word	254                             # 0xfe
	.word	253                             # 0xfd
	.word	206                             # 0xce
	.word	159                             # 0x9f
	.word	158                             # 0x9e
	.word	157                             # 0x9d
	.word	156                             # 0x9c
	.word	155                             # 0x9b
	.word	154                             # 0x9a
	.word	153                             # 0x99
	.word	106                             # 0x6a
	.word	35                              # 0x23
	.word	34                              # 0x22
	.word	33                              # 0x21
	.word	32                              # 0x20
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	29                              # 0x1d
	.word	28                              # 0x1c
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	17                              # 0x11
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	cumf_RUN_intra, 260

	.type	cumf_LEVEL,@object              # @cumf_LEVEL
	.globl	cumf_LEVEL
	.p2align	2, 0x0
cumf_LEVEL:
	.word	16383                           # 0x3fff
	.word	16382                           # 0x3ffe
	.word	16381                           # 0x3ffd
	.word	16380                           # 0x3ffc
	.word	16379                           # 0x3ffb
	.word	16378                           # 0x3ffa
	.word	16377                           # 0x3ff9
	.word	16376                           # 0x3ff8
	.word	16375                           # 0x3ff7
	.word	16374                           # 0x3ff6
	.word	16373                           # 0x3ff5
	.word	16372                           # 0x3ff4
	.word	16371                           # 0x3ff3
	.word	16370                           # 0x3ff2
	.word	16369                           # 0x3ff1
	.word	16368                           # 0x3ff0
	.word	16367                           # 0x3fef
	.word	16366                           # 0x3fee
	.word	16365                           # 0x3fed
	.word	16364                           # 0x3fec
	.word	16363                           # 0x3feb
	.word	16362                           # 0x3fea
	.word	16361                           # 0x3fe9
	.word	16360                           # 0x3fe8
	.word	16359                           # 0x3fe7
	.word	16358                           # 0x3fe6
	.word	16357                           # 0x3fe5
	.word	16356                           # 0x3fe4
	.word	16355                           # 0x3fe3
	.word	16354                           # 0x3fe2
	.word	16353                           # 0x3fe1
	.word	16352                           # 0x3fe0
	.word	16351                           # 0x3fdf
	.word	16350                           # 0x3fde
	.word	16349                           # 0x3fdd
	.word	16348                           # 0x3fdc
	.word	16347                           # 0x3fdb
	.word	16346                           # 0x3fda
	.word	16345                           # 0x3fd9
	.word	16344                           # 0x3fd8
	.word	16343                           # 0x3fd7
	.word	16342                           # 0x3fd6
	.word	16341                           # 0x3fd5
	.word	16340                           # 0x3fd4
	.word	16339                           # 0x3fd3
	.word	16338                           # 0x3fd2
	.word	16337                           # 0x3fd1
	.word	16336                           # 0x3fd0
	.word	16335                           # 0x3fcf
	.word	16334                           # 0x3fce
	.word	16333                           # 0x3fcd
	.word	16332                           # 0x3fcc
	.word	16331                           # 0x3fcb
	.word	16330                           # 0x3fca
	.word	16329                           # 0x3fc9
	.word	16328                           # 0x3fc8
	.word	16327                           # 0x3fc7
	.word	16326                           # 0x3fc6
	.word	16325                           # 0x3fc5
	.word	16324                           # 0x3fc4
	.word	16323                           # 0x3fc3
	.word	16322                           # 0x3fc2
	.word	16321                           # 0x3fc1
	.word	16320                           # 0x3fc0
	.word	16319                           # 0x3fbf
	.word	16318                           # 0x3fbe
	.word	16317                           # 0x3fbd
	.word	16316                           # 0x3fbc
	.word	16315                           # 0x3fbb
	.word	16314                           # 0x3fba
	.word	16313                           # 0x3fb9
	.word	16312                           # 0x3fb8
	.word	16311                           # 0x3fb7
	.word	16310                           # 0x3fb6
	.word	16309                           # 0x3fb5
	.word	16308                           # 0x3fb4
	.word	16307                           # 0x3fb3
	.word	16306                           # 0x3fb2
	.word	16305                           # 0x3fb1
	.word	16304                           # 0x3fb0
	.word	16303                           # 0x3faf
	.word	16302                           # 0x3fae
	.word	16301                           # 0x3fad
	.word	16300                           # 0x3fac
	.word	16299                           # 0x3fab
	.word	16298                           # 0x3faa
	.word	16297                           # 0x3fa9
	.word	16296                           # 0x3fa8
	.word	16295                           # 0x3fa7
	.word	16294                           # 0x3fa6
	.word	16293                           # 0x3fa5
	.word	16292                           # 0x3fa4
	.word	16291                           # 0x3fa3
	.word	16290                           # 0x3fa2
	.word	16289                           # 0x3fa1
	.word	16288                           # 0x3fa0
	.word	16287                           # 0x3f9f
	.word	16286                           # 0x3f9e
	.word	16285                           # 0x3f9d
	.word	16284                           # 0x3f9c
	.word	16283                           # 0x3f9b
	.word	16282                           # 0x3f9a
	.word	16281                           # 0x3f99
	.word	16280                           # 0x3f98
	.word	16279                           # 0x3f97
	.word	16278                           # 0x3f96
	.word	16277                           # 0x3f95
	.word	16250                           # 0x3f7a
	.word	16223                           # 0x3f5f
	.word	16222                           # 0x3f5e
	.word	16195                           # 0x3f43
	.word	16154                           # 0x3f1a
	.word	16153                           # 0x3f19
	.word	16071                           # 0x3ec7
	.word	15989                           # 0x3e75
	.word	15880                           # 0x3e08
	.word	15879                           # 0x3e07
	.word	15878                           # 0x3e06
	.word	15824                           # 0x3dd0
	.word	15756                           # 0x3d8c
	.word	15674                           # 0x3d3a
	.word	15606                           # 0x3cf6
	.word	15538                           # 0x3cb2
	.word	15184                           # 0x3b50
	.word	14572                           # 0x38ec
	.word	13960                           # 0x3688
	.word	10718                           # 0x29de
	.word	7994                            # 0x1f3a
	.word	5379                            # 0x1503
	.word	2123                            # 0x84b
	.word	1537                            # 0x601
	.word	992                             # 0x3e0
	.word	693                             # 0x2b5
	.word	611                             # 0x263
	.word	516                             # 0x204
	.word	448                             # 0x1c0
	.word	421                             # 0x1a5
	.word	380                             # 0x17c
	.word	353                             # 0x161
	.word	352                             # 0x160
	.word	284                             # 0x11c
	.word	257                             # 0x101
	.word	230                             # 0xe6
	.word	203                             # 0xcb
	.word	162                             # 0xa2
	.word	161                             # 0xa1
	.word	160                             # 0xa0
	.word	133                             # 0x85
	.word	132                             # 0x84
	.word	105                             # 0x69
	.word	104                             # 0x68
	.word	103                             # 0x67
	.word	102                             # 0x66
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	99                              # 0x63
	.word	98                              # 0x62
	.word	97                              # 0x61
	.word	96                              # 0x60
	.word	95                              # 0x5f
	.word	94                              # 0x5e
	.word	93                              # 0x5d
	.word	92                              # 0x5c
	.word	91                              # 0x5b
	.word	90                              # 0x5a
	.word	89                              # 0x59
	.word	88                              # 0x58
	.word	87                              # 0x57
	.word	86                              # 0x56
	.word	85                              # 0x55
	.word	84                              # 0x54
	.word	83                              # 0x53
	.word	82                              # 0x52
	.word	81                              # 0x51
	.word	80                              # 0x50
	.word	79                              # 0x4f
	.word	78                              # 0x4e
	.word	77                              # 0x4d
	.word	76                              # 0x4c
	.word	75                              # 0x4b
	.word	74                              # 0x4a
	.word	73                              # 0x49
	.word	72                              # 0x48
	.word	71                              # 0x47
	.word	70                              # 0x46
	.word	69                              # 0x45
	.word	68                              # 0x44
	.word	67                              # 0x43
	.word	66                              # 0x42
	.word	65                              # 0x41
	.word	64                              # 0x40
	.word	63                              # 0x3f
	.word	62                              # 0x3e
	.word	61                              # 0x3d
	.word	60                              # 0x3c
	.word	59                              # 0x3b
	.word	58                              # 0x3a
	.word	57                              # 0x39
	.word	56                              # 0x38
	.word	55                              # 0x37
	.word	54                              # 0x36
	.word	53                              # 0x35
	.word	52                              # 0x34
	.word	51                              # 0x33
	.word	50                              # 0x32
	.word	49                              # 0x31
	.word	48                              # 0x30
	.word	47                              # 0x2f
	.word	46                              # 0x2e
	.word	45                              # 0x2d
	.word	44                              # 0x2c
	.word	43                              # 0x2b
	.word	42                              # 0x2a
	.word	41                              # 0x29
	.word	40                              # 0x28
	.word	39                              # 0x27
	.word	38                              # 0x26
	.word	37                              # 0x25
	.word	36                              # 0x24
	.word	35                              # 0x23
	.word	34                              # 0x22
	.word	33                              # 0x21
	.word	32                              # 0x20
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	29                              # 0x1d
	.word	28                              # 0x1c
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	17                              # 0x11
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	cumf_LEVEL, 1020

	.type	cumf_LEVEL_intra,@object        # @cumf_LEVEL_intra
	.globl	cumf_LEVEL_intra
	.p2align	2, 0x0
cumf_LEVEL_intra:
	.word	16383                           # 0x3fff
	.word	16379                           # 0x3ffb
	.word	16378                           # 0x3ffa
	.word	16377                           # 0x3ff9
	.word	16376                           # 0x3ff8
	.word	16375                           # 0x3ff7
	.word	16374                           # 0x3ff6
	.word	16373                           # 0x3ff5
	.word	16372                           # 0x3ff4
	.word	16371                           # 0x3ff3
	.word	16370                           # 0x3ff2
	.word	16369                           # 0x3ff1
	.word	16368                           # 0x3ff0
	.word	16367                           # 0x3fef
	.word	16366                           # 0x3fee
	.word	16365                           # 0x3fed
	.word	16364                           # 0x3fec
	.word	16363                           # 0x3feb
	.word	16362                           # 0x3fea
	.word	16361                           # 0x3fe9
	.word	16360                           # 0x3fe8
	.word	16359                           # 0x3fe7
	.word	16358                           # 0x3fe6
	.word	16357                           # 0x3fe5
	.word	16356                           # 0x3fe4
	.word	16355                           # 0x3fe3
	.word	16354                           # 0x3fe2
	.word	16353                           # 0x3fe1
	.word	16352                           # 0x3fe0
	.word	16351                           # 0x3fdf
	.word	16350                           # 0x3fde
	.word	16349                           # 0x3fdd
	.word	16348                           # 0x3fdc
	.word	16347                           # 0x3fdb
	.word	16346                           # 0x3fda
	.word	16345                           # 0x3fd9
	.word	16344                           # 0x3fd8
	.word	16343                           # 0x3fd7
	.word	16342                           # 0x3fd6
	.word	16341                           # 0x3fd5
	.word	16340                           # 0x3fd4
	.word	16339                           # 0x3fd3
	.word	16338                           # 0x3fd2
	.word	16337                           # 0x3fd1
	.word	16336                           # 0x3fd0
	.word	16335                           # 0x3fcf
	.word	16334                           # 0x3fce
	.word	16333                           # 0x3fcd
	.word	16332                           # 0x3fcc
	.word	16331                           # 0x3fcb
	.word	16330                           # 0x3fca
	.word	16329                           # 0x3fc9
	.word	16328                           # 0x3fc8
	.word	16327                           # 0x3fc7
	.word	16326                           # 0x3fc6
	.word	16325                           # 0x3fc5
	.word	16324                           # 0x3fc4
	.word	16323                           # 0x3fc3
	.word	16322                           # 0x3fc2
	.word	16321                           # 0x3fc1
	.word	16320                           # 0x3fc0
	.word	16319                           # 0x3fbf
	.word	16318                           # 0x3fbe
	.word	16317                           # 0x3fbd
	.word	16316                           # 0x3fbc
	.word	16315                           # 0x3fbb
	.word	16314                           # 0x3fba
	.word	16313                           # 0x3fb9
	.word	16312                           # 0x3fb8
	.word	16311                           # 0x3fb7
	.word	16268                           # 0x3f8c
	.word	16267                           # 0x3f8b
	.word	16224                           # 0x3f60
	.word	16223                           # 0x3f5f
	.word	16180                           # 0x3f34
	.word	16179                           # 0x3f33
	.word	16136                           # 0x3f08
	.word	16135                           # 0x3f07
	.word	16134                           # 0x3f06
	.word	16133                           # 0x3f05
	.word	16132                           # 0x3f04
	.word	16131                           # 0x3f03
	.word	16130                           # 0x3f02
	.word	16129                           # 0x3f01
	.word	16128                           # 0x3f00
	.word	16127                           # 0x3eff
	.word	16126                           # 0x3efe
	.word	16061                           # 0x3ebd
	.word	16018                           # 0x3e92
	.word	16017                           # 0x3e91
	.word	16016                           # 0x3e90
	.word	16015                           # 0x3e8f
	.word	16014                           # 0x3e8e
	.word	15971                           # 0x3e63
	.word	15970                           # 0x3e62
	.word	15969                           # 0x3e61
	.word	15968                           # 0x3e60
	.word	15925                           # 0x3e35
	.word	15837                           # 0x3ddd
	.word	15794                           # 0x3db2
	.word	15751                           # 0x3d87
	.word	15750                           # 0x3d86
	.word	15749                           # 0x3d85
	.word	15661                           # 0x3d2d
	.word	15618                           # 0x3d02
	.word	15508                           # 0x3c94
	.word	15376                           # 0x3c10
	.word	15288                           # 0x3bb8
	.word	15045                           # 0x3ac5
	.word	14913                           # 0x3a41
	.word	14781                           # 0x39bd
	.word	14384                           # 0x3830
	.word	13965                           # 0x368d
	.word	13502                           # 0x34be
	.word	13083                           # 0x331b
	.word	12509                           # 0x30dd
	.word	12289                           # 0x3001
	.word	12135                           # 0x2f67
	.word	11892                           # 0x2e74
	.word	11738                           # 0x2dda
	.word	11429                           # 0x2ca5
	.word	11010                           # 0x2b02
	.word	10812                           # 0x2a3c
	.word	10371                           # 0x2883
	.word	9664                            # 0x25c0
	.word	9113                            # 0x2399
	.word	8117                            # 0x1fb5
	.word	8116                            # 0x1fb4
	.word	8028                            # 0x1f5c
	.word	6855                            # 0x1ac7
	.word	5883                            # 0x16fb
	.word	4710                            # 0x1266
	.word	4401                            # 0x1131
	.word	4203                            # 0x106b
	.word	3740                            # 0xe9c
	.word	3453                            # 0xd7d
	.word	3343                            # 0xd0f
	.word	3189                            # 0xc75
	.word	2946                            # 0xb82
	.word	2881                            # 0xb41
	.word	2661                            # 0xa65
	.word	2352                            # 0x930
	.word	2132                            # 0x854
	.word	1867                            # 0x74b
	.word	1558                            # 0x616
	.word	1382                            # 0x566
	.word	1250                            # 0x4e2
	.word	1162                            # 0x48a
	.word	1097                            # 0x449
	.word	1032                            # 0x408
	.word	967                             # 0x3c7
	.word	835                             # 0x343
	.word	681                             # 0x2a9
	.word	549                             # 0x225
	.word	439                             # 0x1b7
	.word	351                             # 0x15f
	.word	350                             # 0x15e
	.word	307                             # 0x133
	.word	306                             # 0x132
	.word	305                             # 0x131
	.word	304                             # 0x130
	.word	303                             # 0x12f
	.word	302                             # 0x12e
	.word	301                             # 0x12d
	.word	300                             # 0x12c
	.word	299                             # 0x12b
	.word	298                             # 0x12a
	.word	255                             # 0xff
	.word	212                             # 0xd4
	.word	211                             # 0xd3
	.word	210                             # 0xd2
	.word	167                             # 0xa7
	.word	166                             # 0xa6
	.word	165                             # 0xa5
	.word	164                             # 0xa4
	.word	163                             # 0xa3
	.word	162                             # 0xa2
	.word	161                             # 0xa1
	.word	160                             # 0xa0
	.word	159                             # 0x9f
	.word	158                             # 0x9e
	.word	115                             # 0x73
	.word	114                             # 0x72
	.word	113                             # 0x71
	.word	112                             # 0x70
	.word	111                             # 0x6f
	.word	68                              # 0x44
	.word	67                              # 0x43
	.word	66                              # 0x42
	.word	65                              # 0x41
	.word	64                              # 0x40
	.word	63                              # 0x3f
	.word	62                              # 0x3e
	.word	61                              # 0x3d
	.word	60                              # 0x3c
	.word	59                              # 0x3b
	.word	58                              # 0x3a
	.word	57                              # 0x39
	.word	56                              # 0x38
	.word	55                              # 0x37
	.word	54                              # 0x36
	.word	53                              # 0x35
	.word	52                              # 0x34
	.word	51                              # 0x33
	.word	50                              # 0x32
	.word	49                              # 0x31
	.word	48                              # 0x30
	.word	47                              # 0x2f
	.word	46                              # 0x2e
	.word	45                              # 0x2d
	.word	44                              # 0x2c
	.word	43                              # 0x2b
	.word	42                              # 0x2a
	.word	41                              # 0x29
	.word	40                              # 0x28
	.word	39                              # 0x27
	.word	38                              # 0x26
	.word	37                              # 0x25
	.word	36                              # 0x24
	.word	35                              # 0x23
	.word	34                              # 0x22
	.word	33                              # 0x21
	.word	32                              # 0x20
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	29                              # 0x1d
	.word	28                              # 0x1c
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	17                              # 0x11
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	cumf_LEVEL_intra, 1020

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid Huffman code in getblock()\n"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" ("
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DCT coeff index (i) out of bounds\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"): %d/%d\n"
	.size	.L.str.4, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ESC: "
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"val: %d, run: %d, sign: %d, last: %d\n"
	.size	.L.str.7, 38

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"level_idx: %d "
	.size	.L.str.8, 15

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"last"
	.size	.Lstr, 5

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
