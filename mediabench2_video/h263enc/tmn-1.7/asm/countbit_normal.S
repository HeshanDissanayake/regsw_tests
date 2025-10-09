	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"countbit.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CountBitsMB                     # -- Begin function CountBitsMB
	.p2align	2
	.type	CountBitsMB,@function
CountBitsMB:                            # @CountBitsMB
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	lui	a6, %hi(trace)
	lw	a6, %lo(trace)(a6)
	mv	s0, a5
	mv	s1, a4
	mv	s4, a3
	mv	s3, a2
	mv	s5, a1
	mv	s2, a0
	beqz	a6, .LBB0_3
# %bb.1:
	lui	s6, %hi(tf)
	ld	a0, %lo(tf)(s6)
	lw	a2, 52(s1)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	call	fprintf
	lw	a0, 28(s1)
	li	a1, 1
	bne	a0, a1, .LBB0_3
# %bb.2:
	ld	a0, %lo(tf)(s6)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a2, s5
	call	fprintf
.LBB0_3:
	lw	a0, 28(s1)
	li	a1, 1
	bne	a0, a1, .LBB0_5
# %bb.4:
	li	a0, 1
	mv	a1, s5
	call	putbits
	lw	a0, 28(s0)
	addi	a0, a0, 1
	sw	a0, 28(s0)
.LBB0_5:
	bnez	s5, .LBB0_31
# %bb.6:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_8
# %bb.7:
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	slli	a1, s3, 62
	srli	a1, a1, 58
	or	a3, a1, s2
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, s3
	call	fprintf
.LBB0_8:
	lw	a0, 28(s1)
	beqz	a0, .LBB0_10
# %bb.9:
	mv	a0, s3
	mv	a1, s2
	call	put_cbpcm_inter
	j	.LBB0_11
.LBB0_10:
	mv	a0, s3
	mv	a1, s2
	call	put_cbpcm_intra
.LBB0_11:
	lw	a1, 16(s0)
	lw	a2, 40(s1)
	add	a0, a1, a0
	sw	a0, 16(s0)
	beqz	a2, .LBB0_22
# %bb.12:
	lw	a0, 64(s1)
	li	a1, 2
	beq	a0, a1, .LBB0_18
# %bb.13:
	li	a1, 1
	beq	a0, a1, .LBB0_16
# %bb.14:
	bnez	a0, .LBB0_20
# %bb.15:
	li	a0, 1
	li	s5, 1
	li	a1, 0
	j	.LBB0_17
.LBB0_16:
	li	a0, 2
	li	a1, 2
	li	s5, 2
.LBB0_17:
	call	putbits
	li	a0, 20
	j	.LBB0_19
.LBB0_18:
	li	a0, 2
	li	a1, 3
	call	putbits
	lw	a0, 20(s0)
	addi	a0, a0, 2
	sw	a0, 20(s0)
	li	a0, 6
	li	s5, 6
	mv	a1, s4
	call	putbits
	li	a0, 24
.LBB0_19:
	add	a0, s0, a0
	lw	a1, 0(a0)
	add	a1, a1, s5
	sw	a1, 0(a0)
.LBB0_20:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_24
# %bb.21:
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	lw	a2, 64(s1)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a3, s4
	call	fprintf
.LBB0_22:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_24
# %bb.23:
	addiw	a0, s2, -3
	sltiu	a1, a0, 2
	srai	a2, s3, 2
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	negw	a1, a1
	andi	a1, a1, 15
	xor	a3, a2, a1
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a2, s3
	call	fprintf
.LBB0_24:
	mv	a0, s3
	mv	a1, s2
	call	put_cbpy
	lw	a1, 12(s0)
	add	a0, a1, a0
	li	a1, 4
	sw	a0, 12(s0)
	beq	s2, a1, .LBB0_26
# %bb.25:
	li	a0, 1
	bne	s2, a0, .LBB0_31
.LBB0_26:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_28
# %bb.27:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 8
	li	a2, 1
	call	fwrite
.LBB0_28:
	lw	a0, 48(s1)
	addiw	a0, a0, 2
	li	a1, 5
	bgeu	a0, a1, .LBB0_32
# %bb.29:
	li	a1, 27
	srl	a1, a1, a0
	andi	a1, a1, 1
	beqz	a1, .LBB0_32
# %bb.30:
	slli	a0, a0, 2
	lui	a1, %hi(.Lswitch.table.CountBitsMB)
	addi	a1, a1, %lo(.Lswitch.table.CountBitsMB)
	add	a0, a1, a0
	lw	a1, 0(a0)
	li	a0, 2
	call	putbits
	lw	a0, 36(s0)
	addi	a0, a0, 2
	sw	a0, 36(s0)
.LBB0_31:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB0_32:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	li	a1, 15
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end0:
	.size	CountBitsMB, .Lfunc_end0-CountBitsMB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Count_sac_BitsMB                # -- Begin function Count_sac_BitsMB
	.p2align	2
	.type	Count_sac_BitsMB,@function
Count_sac_BitsMB:                       # @Count_sac_BitsMB
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	lui	a6, %hi(trace)
	lw	a6, %lo(trace)(a6)
	mv	s0, a5
	mv	s1, a4
	mv	s4, a3
	mv	s3, a2
	mv	s5, a1
	mv	s2, a0
	lui	a0, %hi(arith_used)
	li	s6, 1
	sw	s6, %lo(arith_used)(a0)
	beqz	a6, .LBB1_3
# %bb.1:
	lui	s7, %hi(tf)
	ld	a0, %lo(tf)(s7)
	lw	a2, 52(s1)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	call	fprintf
	lw	a0, 28(s1)
	bne	a0, s6, .LBB1_3
# %bb.2:
	ld	a0, %lo(tf)(s7)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	mv	a2, s5
	call	fprintf
.LBB1_3:
	lw	a0, 28(s1)
	bne	a0, s6, .LBB1_5
# %bb.4:
	lui	a1, %hi(cumf_COD)
	addi	a1, a1, %lo(cumf_COD)
	mv	a0, s5
	call	AR_Encode
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
.LBB1_5:
	bnez	s5, .LBB1_32
# %bb.6:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	slli	a1, s3, 62
	srli	a1, a1, 58
	or	s5, a1, s2
	beqz	a0, .LBB1_8
# %bb.7:
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, s3
	mv	a3, s5
	call	fprintf
.LBB1_8:
	lw	a0, 28(s1)
	beqz	a0, .LBB1_10
# %bb.9:
	lui	a1, %hi(mcbpctab)
	addi	a1, a1, %lo(mcbpctab)
	li	a2, 21
	mv	a0, s5
	call	indexfn
	lui	a1, %hi(cumf_MCBPC)
	addi	a1, a1, %lo(cumf_MCBPC)
	j	.LBB1_11
.LBB1_10:
	lui	a1, %hi(mcbpc_intratab)
	addi	a1, a1, %lo(mcbpc_intratab)
	li	a2, 9
	mv	a0, s5
	call	indexfn
	lui	a1, %hi(cumf_MCBPC_intra)
	addi	a1, a1, %lo(cumf_MCBPC_intra)
.LBB1_11:
	call	AR_Encode
	lw	a1, 16(s0)
	lw	a2, 40(s1)
	add	a0, a1, a0
	sw	a0, 16(s0)
	beqz	a2, .LBB1_22
# %bb.12:
	lw	a0, 64(s1)
	li	a1, 2
	beq	a0, a1, .LBB1_18
# %bb.13:
	li	a1, 1
	beq	a0, a1, .LBB1_16
# %bb.14:
	bnez	a0, .LBB1_20
# %bb.15:
	lui	a1, %hi(cumf_MODB)
	addi	a1, a1, %lo(cumf_MODB)
	j	.LBB1_17
.LBB1_16:
	lui	a1, %hi(cumf_MODB)
	addi	a1, a1, %lo(cumf_MODB)
	li	a0, 1
.LBB1_17:
	call	AR_Encode
	addi	s6, s0, 20
	j	.LBB1_19
.LBB1_18:
	lui	a1, %hi(cumf_MODB)
	addi	a1, a1, %lo(cumf_MODB)
	li	a0, 2
	call	AR_Encode
	lw	a1, 20(s0)
	add	a0, a1, a0
	sw	a0, 20(s0)
	addi	s6, s0, 24
	slli	a0, s4, 58
	srli	a0, a0, 63
	lui	s5, %hi(cumf_YCBPB)
	addi	s5, s5, %lo(cumf_YCBPB)
	mv	a1, s5
	call	AR_Encode
	lw	a1, 24(s0)
	add	a0, a1, a0
	sw	a0, 24(s0)
	slli	a0, s4, 59
	srli	a0, a0, 63
	mv	a1, s5
	call	AR_Encode
	lw	a1, 24(s0)
	add	a0, a1, a0
	sw	a0, 24(s0)
	slli	a0, s4, 60
	srli	a0, a0, 63
	mv	a1, s5
	call	AR_Encode
	lw	a1, 24(s0)
	add	a0, a1, a0
	sw	a0, 24(s0)
	slli	a0, s4, 61
	srli	a0, a0, 63
	mv	a1, s5
	call	AR_Encode
	lw	a1, 24(s0)
	add	a0, a1, a0
	sw	a0, 24(s0)
	slli	a0, s4, 62
	srli	a0, a0, 63
	lui	s5, %hi(cumf_UVCBPB)
	addi	s5, s5, %lo(cumf_UVCBPB)
	mv	a1, s5
	call	AR_Encode
	lw	a1, 24(s0)
	add	a0, a1, a0
	sw	a0, 24(s0)
	andi	a0, s4, 1
	mv	a1, s5
	call	AR_Encode
.LBB1_19:
	lw	a1, 0(s6)
	add	a0, a1, a0
	sw	a0, 0(s6)
.LBB1_20:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_22
# %bb.21:
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	lw	a2, 64(s1)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a3, s4
	call	fprintf
.LBB1_22:
	addiw	a0, s2, -3
	li	a1, 2
	srai	s4, s3, 2
	bltu	a0, a1, .LBB1_24
# %bb.23:
	lui	a1, %hi(cbpytab)
	addi	a1, a1, %lo(cbpytab)
	lui	s5, %hi(cumf_CBPY)
	addi	s5, s5, %lo(cumf_CBPY)
	j	.LBB1_25
.LBB1_24:
	lui	a1, %hi(cbpy_intratab)
	addi	a1, a1, %lo(cbpy_intratab)
	lui	s5, %hi(cumf_CBPY_intra)
	addi	s5, s5, %lo(cumf_CBPY_intra)
.LBB1_25:
	li	a2, 16
	mv	a0, s4
	call	indexfn
	mv	a1, s5
	call	AR_Encode
	lui	a1, %hi(trace)
	lw	a1, %lo(trace)(a1)
	mv	s5, a0
	beqz	a1, .LBB1_27
# %bb.26:
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a2, s3
	mv	a3, s4
	call	fprintf
.LBB1_27:
	lw	a0, 12(s0)
	add	a0, a0, s5
	li	a1, 4
	sw	a0, 12(s0)
	beq	s2, a1, .LBB1_29
# %bb.28:
	li	a0, 1
	bne	s2, a0, .LBB1_32
.LBB1_29:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_31
# %bb.30:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 8
	li	a2, 1
	call	fwrite
.LBB1_31:
	lw	a0, 48(s1)
	addiw	a0, a0, 2
	lui	a1, %hi(dquanttab)
	addi	a1, a1, %lo(dquanttab)
	li	a2, 4
	call	indexfn
	lui	a1, %hi(cumf_DQUANT)
	addi	a1, a1, %lo(cumf_DQUANT)
	call	AR_Encode
	lw	a1, 36(s0)
	add	a0, a1, a0
	sw	a0, 36(s0)
.LBB1_32:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	Count_sac_BitsMB, .Lfunc_end1-Count_sac_BitsMB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CountBitsSlice                  # -- Begin function CountBitsSlice
	.p2align	2
	.type	CountBitsSlice,@function
CountBitsSlice:                         # @CountBitsSlice
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(arith_used)
	lw	a2, %lo(arith_used)(s1)
	mv	s0, a1
	mv	s2, a0
	beqz	a2, .LBB2_10
# %bb.1:
	call	encoder_flush
	sw	zero, %lo(arith_used)(s1)
	addiw	s1, a0, 29
	lui	s3, %hi(trace)
	lw	a0, %lo(trace)(s3)
	beqz	a0, .LBB2_3
.LBB2_2:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 17
	li	a2, 1
	call	fwrite
.LBB2_3:
	li	a0, 17
	li	a1, 1
	call	putbits
	lw	a0, %lo(trace)(s3)
	beqz	a0, .LBB2_5
# %bb.4:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	li	a1, 4
	li	a2, 1
	call	fwrite
.LBB2_5:
	li	a0, 5
	mv	a1, s2
	call	putbits
	lui	s2, %hi(trace)
	lw	a0, %lo(trace)(s2)
	beqz	a0, .LBB2_7
# %bb.6:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	li	a1, 6
	li	a2, 1
	call	fwrite
.LBB2_7:
	li	a0, 2
	li	a1, 0
	call	putbits
	lw	a0, %lo(trace)(s2)
	beqz	a0, .LBB2_9
# %bb.8:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	li	a1, 8
	li	a2, 1
	call	fwrite
.LBB2_9:
	li	a0, 5
	mv	a1, s0
	call	putbits
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB2_10:
	li	s1, 29
	lui	s3, %hi(trace)
	lw	a0, %lo(trace)(s3)
	bnez	a0, .LBB2_2
	j	.LBB2_3
.Lfunc_end2:
	.size	CountBitsSlice, .Lfunc_end2-CountBitsSlice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CountBitsCoeff                  # -- Begin function CountBitsCoeff
	.p2align	2
	.type	CountBitsCoeff,@function
CountBitsCoeff:                         # @CountBitsCoeff
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	addiw	a1, a1, -3
	li	a5, 1
	mv	s1, a4
	mv	s3, a3
	mv	s2, a0
	bltu	a5, a1, .LBB3_2
# %bb.1:
	mv	a0, s0
	mv	a1, s2
	li	a2, 0
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	li	a2, 1
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	li	a2, 2
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	li	a2, 3
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	addi	s4, s3, 4
	li	a2, 4
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 4(s3)
	add	a0, a1, a0
	sw	a0, 4(s3)
	j	.LBB3_16
.LBB3_2:
	mv	s4, a2
	andi	a0, a2, 32
	andi	s7, a2, 16
	andi	s6, a2, 8
	andi	s5, a2, 4
	bnez	a0, .LBB3_5
# %bb.3:
	bnez	s7, .LBB3_7
# %bb.4:
	bnez	s6, .LBB3_8
	j	.LBB3_11
.LBB3_5:
	mv	a0, s0
	mv	a1, s2
	li	a2, 0
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	bnez	s7, .LBB3_9
# %bb.6:
	beqz	s6, .LBB3_11
	j	.LBB3_10
.LBB3_7:
	li	a2, 1
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	beqz	s6, .LBB3_11
.LBB3_8:
	li	a2, 2
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	bnez	s5, .LBB3_12
	j	.LBB3_13
.LBB3_9:
	li	a2, 1
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	beqz	s6, .LBB3_11
.LBB3_10:
	li	a2, 2
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
.LBB3_11:
	beqz	s5, .LBB3_13
.LBB3_12:
	li	a2, 3
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
.LBB3_13:
	andi	a0, s4, 2
	andi	s5, s4, 1
	addi	s4, s3, 4
	beqz	a0, .LBB3_15
# %bb.14:
	li	a2, 4
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s4)
	add	a0, a1, a0
	sw	a0, 0(s4)
.LBB3_15:
	beqz	s5, .LBB3_17
.LBB3_16:
	li	a2, 5
	mv	a0, s0
	mv	a1, s2
	mv	a3, s1
	call	CodeCoeff
	lw	a1, 0(s4)
	add	a0, a1, a0
	sw	a0, 0(s4)
.LBB3_17:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end3:
	.size	CountBitsCoeff, .Lfunc_end3-CountBitsCoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CodeCoeff                       # -- Begin function CodeCoeff
	.p2align	2
	.type	CodeCoeff,@function
CodeCoeff:                              # @CodeCoeff
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	lui	a4, %hi(trace)
	lw	a4, %lo(trace)(a4)
	mv	s6, a3
	mv	s0, a2
	mv	s4, a1
	mv	s5, a0
	beqz	a4, .LBB4_2
# %bb.1:
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	lui	a1, %hi(.L.str.12)
	addi	a1, a1, %lo(.L.str.12)
	mv	a2, s0
	call	fprintf
.LBB4_2:
	mulw	s11, s6, s0
	addi	s0, s0, 1
	mulw	a0, s0, s6
	bge	s11, a0, .LBB4_33
# %bb.3:
	li	s9, 0
	li	s10, 0
	li	s2, 0
	sd	zero, 16(sp)                    # 8-byte Folded Spill
	li	s0, 0
	addiw	s5, s5, -3
	slli	s8, s11, 2
	add	s4, s4, s8
	li	s1, 1
	lui	s8, %hi(trace)
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	mv	s3, s6
	li	s7, 1
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	j	.LBB4_6
.LBB4_4:                                #   in Loop: Header=BB4_6 Depth=1
	li	a0, 8
	call	putbits
	addiw	s0, s0, 8
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=1
	addiw	s3, s3, -1
	addi	s4, s4, 4
	addi	s11, s11, 1
	beqz	s3, .LBB4_34
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	bltu	s1, s5, .LBB4_12
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	remw	a0, s11, s6
	bnez	a0, .LBB4_12
# %bb.8:                                #   in Loop: Header=BB4_6 Depth=1
	lw	a0, %lo(trace)(s8)
	beqz	a0, .LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_6 Depth=1
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	li	a1, 4
	li	a2, 1
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	call	fwrite
.LBB4_10:                               #   in Loop: Header=BB4_6 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	lw	a1, 0(a0)
	li	a0, 128
	bne	a1, a0, .LBB4_4
# %bb.11:                               #   in Loop: Header=BB4_6 Depth=1
	li	a1, 255
	j	.LBB4_4
.LBB4_12:                               #   in Loop: Header=BB4_6 Depth=1
	lw	a0, 0(s4)
	beqz	a0, .LBB4_15
# %bb.13:                               #   in Loop: Header=BB4_6 Depth=1
	lui	s8, %hi(trace)
	sraiw	a1, a0, 31
	xor	s1, a0, a1
	subw	s1, s1, a1
	srliw	s5, a0, 31
	beqz	s7, .LBB4_16
# %bb.14:                               #   in Loop: Header=BB4_6 Depth=1
	li	s7, 0
	j	.LBB4_31
.LBB4_15:                               #   in Loop: Header=BB4_6 Depth=1
	addiw	s2, s2, 1
	j	.LBB4_5
.LBB4_16:                               #   in Loop: Header=BB4_6 Depth=1
	mv	s7, s10
	li	a0, 12
	blt	a0, s10, .LBB4_20
# %bb.17:                               #   in Loop: Header=BB4_6 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	li	a1, 63
	blt	a1, a0, .LBB4_20
# %bb.18:                               #   in Loop: Header=BB4_6 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	mv	a1, s7
	li	a2, 0
	call	put_coeff
	beqz	a0, .LBB4_20
# %bb.19:                               #   in Loop: Header=BB4_6 Depth=1
	mv	s10, a0
	li	a0, 1
	mv	a1, s9
	call	putbits
	li	s7, 0
	add	s0, s0, s10
	addiw	s0, s0, 1
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	mv	s10, s1
	mv	s9, s5
	li	s2, 0
	li	s1, 1
	lui	s8, %hi(trace)
	j	.LBB4_32
.LBB4_20:                               #   in Loop: Header=BB4_6 Depth=1
	lw	a0, %lo(trace)(s8)
	beqz	a0, .LBB4_22
# %bb.21:                               #   in Loop: Header=BB4_6 Depth=1
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	li	a1, 13
	li	a2, 1
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	call	fwrite
.LBB4_22:                               #   in Loop: Header=BB4_6 Depth=1
	li	a0, 1
	bne	s9, a0, .LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_6 Depth=1
	xori	a0, s7, 255
	addiw	s7, a0, 1
.LBB4_24:                               #   in Loop: Header=BB4_6 Depth=1
	li	a0, 7
	li	a1, 3
	call	putbits
	lui	s8, %hi(trace)
	lw	a0, %lo(trace)(s8)
	beqz	a0, .LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_6 Depth=1
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	li	a1, 6
	li	a2, 1
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	call	fwrite
.LBB4_26:                               #   in Loop: Header=BB4_6 Depth=1
	li	a0, 1
	li	a1, 0
	call	putbits
	lw	a0, %lo(trace)(s8)
	beqz	a0, .LBB4_28
# %bb.27:                               #   in Loop: Header=BB4_6 Depth=1
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	li	a1, 5
	li	a2, 1
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	call	fwrite
.LBB4_28:                               #   in Loop: Header=BB4_6 Depth=1
	li	a0, 6
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	call	putbits
	lw	a0, %lo(trace)(s8)
	beqz	a0, .LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_6 Depth=1
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	li	a1, 7
	li	a2, 1
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	call	fwrite
.LBB4_30:                               #   in Loop: Header=BB4_6 Depth=1
	li	a0, 8
	mv	a1, s7
	call	putbits
	li	s7, 0
	addiw	s0, s0, 22
.LBB4_31:                               #   in Loop: Header=BB4_6 Depth=1
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	mv	s10, s1
	mv	s9, s5
	li	s2, 0
	li	s1, 1
.LBB4_32:                               #   in Loop: Header=BB4_6 Depth=1
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	j	.LBB4_5
.LBB4_33:
	li	s0, 0
	j	.LBB4_52
.LBB4_34:
	bnez	s7, .LBB4_52
# %bb.35:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB4_37
# %bb.36:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	li	a1, 12
	li	a2, 1
	call	fwrite
.LBB4_37:
	li	a0, 12
	blt	a0, s10, .LBB4_41
# %bb.38:
	li	a0, 63
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	blt	a0, a1, .LBB4_41
# %bb.39:
	li	a2, 1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	mv	a1, s10
	call	put_coeff
	beqz	a0, .LBB4_41
# %bb.40:
	mv	s3, a0
	li	a0, 1
	mv	a1, s9
	call	putbits
	add	s0, s0, s3
	addiw	s0, s0, 1
	j	.LBB4_52
.LBB4_41:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB4_43
# %bb.42:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	li	a1, 13
	li	a2, 1
	call	fwrite
.LBB4_43:
	li	a0, 1
	bne	s9, a0, .LBB4_45
# %bb.44:
	xori	a0, s10, 255
	addiw	s10, a0, 1
.LBB4_45:
	li	a0, 7
	li	a1, 3
	call	putbits
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB4_47
# %bb.46:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	li	a1, 6
	li	a2, 1
	call	fwrite
.LBB4_47:
	li	a0, 1
	li	a1, 1
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB4_49
# %bb.48:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	li	a1, 5
	li	a2, 1
	call	fwrite
.LBB4_49:
	li	a0, 6
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	call	putbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB4_51
# %bb.50:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	li	a1, 7
	li	a2, 1
	call	fwrite
.LBB4_51:
	li	a0, 8
	mv	a1, s10
	call	putbits
	addiw	s0, s0, 22
.LBB4_52:
	mv	a0, s0
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end4:
	.size	CodeCoeff, .Lfunc_end4-CodeCoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Count_sac_BitsCoeff             # -- Begin function Count_sac_BitsCoeff
	.p2align	2
	.type	Count_sac_BitsCoeff,@function
Count_sac_BitsCoeff:                    # @Count_sac_BitsCoeff
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a4
	mv	s3, a3
	mv	s4, a2
	mv	s2, a1
	mv	s1, a0
	lui	a0, %hi(arith_used)
	li	a1, 1
	addiw	a2, s2, -3
	sw	a1, %lo(arith_used)(a0)
	bltu	a1, a2, .LBB5_2
# %bb.1:
	mv	a0, s2
	mv	a1, s1
	li	a2, 0
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	li	a2, 1
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	li	a2, 2
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	li	a2, 3
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	addi	s4, s3, 4
	li	a2, 4
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 4(s3)
	add	a0, a1, a0
	sw	a0, 4(s3)
	j	.LBB5_16
.LBB5_2:
	andi	a0, s4, 32
	andi	s7, s4, 16
	andi	s6, s4, 8
	andi	s5, s4, 4
	bnez	a0, .LBB5_5
# %bb.3:
	bnez	s7, .LBB5_7
# %bb.4:
	bnez	s6, .LBB5_8
	j	.LBB5_11
.LBB5_5:
	mv	a0, s2
	mv	a1, s1
	li	a2, 0
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	bnez	s7, .LBB5_9
# %bb.6:
	beqz	s6, .LBB5_11
	j	.LBB5_10
.LBB5_7:
	li	a2, 1
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	beqz	s6, .LBB5_11
.LBB5_8:
	li	a2, 2
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	bnez	s5, .LBB5_12
	j	.LBB5_13
.LBB5_9:
	li	a2, 1
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
	beqz	s6, .LBB5_11
.LBB5_10:
	li	a2, 2
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
.LBB5_11:
	beqz	s5, .LBB5_13
.LBB5_12:
	li	a2, 3
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s3)
	add	a0, a1, a0
	sw	a0, 0(s3)
.LBB5_13:
	andi	a0, s4, 2
	andi	s5, s4, 1
	addi	s4, s3, 4
	beqz	a0, .LBB5_15
# %bb.14:
	li	a2, 4
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s4)
	add	a0, a1, a0
	sw	a0, 0(s4)
.LBB5_15:
	beqz	s5, .LBB5_17
.LBB5_16:
	li	a2, 5
	mv	a0, s2
	mv	a1, s1
	mv	a3, s0
	call	Code_sac_Coeff
	lw	a1, 0(s4)
	add	a0, a1, a0
	sw	a0, 0(s4)
.LBB5_17:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end5:
	.size	Count_sac_BitsCoeff, .Lfunc_end5-Count_sac_BitsCoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Code_sac_Coeff                  # -- Begin function Code_sac_Coeff
	.p2align	2
	.type	Code_sac_Coeff,@function
Code_sac_Coeff:                         # @Code_sac_Coeff
# %bb.0:
	addi	sp, sp, -192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	mulw	s10, a3, a2
	addi	a2, a2, 1
	mulw	a2, a2, a3
	bge	s10, a2, .LBB6_3
# %bb.1:
	mv	s0, a3
	addiw	s5, a0, -3
	li	a0, 2
	bltu	s5, a0, .LBB6_4
# %bb.2:
	lui	a0, %hi(cumf_TCOEF3)
	addi	a0, a0, %lo(cumf_TCOEF3)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(cumf_TCOEF2)
	addi	a0, a0, %lo(cumf_TCOEF2)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(cumf_TCOEF1)
	addi	a0, a0, %lo(cumf_TCOEF1)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(cumf_TCOEFr)
	addi	a0, a0, %lo(cumf_TCOEFr)
	j	.LBB6_5
.LBB6_3:
	li	s2, 0
	j	.LBB6_85
.LBB6_4:
	lui	a0, %hi(cumf_TCOEF3_intra)
	addi	a0, a0, %lo(cumf_TCOEF3_intra)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(cumf_TCOEF2_intra)
	addi	a0, a0, %lo(cumf_TCOEF2_intra)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(cumf_TCOEF1_intra)
	addi	a0, a0, %lo(cumf_TCOEF1_intra)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(cumf_TCOEFr_intra)
	addi	a0, a0, %lo(cumf_TCOEFr_intra)
.LBB6_5:
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	li	s7, 0
	li	s9, 0
	sd	zero, 80(sp)                    # 8-byte Folded Spill
	sd	zero, 56(sp)                    # 8-byte Folded Spill
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	li	s1, 0
	sd	zero, 64(sp)                    # 8-byte Folded Spill
	li	s2, 0
	slli	a0, s10, 2
	add	s4, a1, a0
	li	s6, 1
	lui	a0, 2
	addiw	a0, a0, -1025
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 72(sp)                      # 8-byte Folded Spill
	mv	s3, s0
	li	s8, 1
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	j	.LBB6_8
.LBB6_6:                                #   in Loop: Header=BB6_8 Depth=1
	li	a2, 254
	lui	a1, %hi(intradctab)
	addi	a1, a1, %lo(intradctab)
	call	indexfn
	lui	a1, %hi(cumf_INTRADC)
	addi	a1, a1, %lo(cumf_INTRADC)
	call	AR_Encode
	addw	s2, a0, s2
.LBB6_7:                                #   in Loop: Header=BB6_8 Depth=1
	addiw	s3, s3, -1
	addi	s4, s4, 4
	addi	s10, s10, 1
	beqz	s3, .LBB6_40
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	bltu	s6, s5, .LBB6_14
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	remw	a0, s10, s0
	bnez	a0, .LBB6_14
# %bb.10:                               #   in Loop: Header=BB6_8 Depth=1
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_8 Depth=1
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	li	a1, 4
	li	a2, 1
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	call	fwrite
.LBB6_12:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a0)
	li	a1, 128
	bne	a0, a1, .LBB6_6
# %bb.13:                               #   in Loop: Header=BB6_8 Depth=1
	li	a0, 255
	j	.LBB6_6
.LBB6_14:                               #   in Loop: Header=BB6_8 Depth=1
	lw	a0, 0(s4)
	beqz	a0, .LBB6_17
# %bb.15:                               #   in Loop: Header=BB6_8 Depth=1
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	s6, a2, a1
	srliw	s0, a0, 31
	slliw	a0, s1, 4
	or	s11, s6, a0
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	addiw	a0, a0, 1
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	beqz	s8, .LBB6_18
# %bb.16:                               #   in Loop: Header=BB6_8 Depth=1
	li	s8, 0
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	j	.LBB6_39
.LBB6_17:                               #   in Loop: Header=BB6_8 Depth=1
	addiw	s1, s1, 1
	j	.LBB6_7
.LBB6_18:                               #   in Loop: Header=BB6_8 Depth=1
	li	a2, 103
	mv	a0, s9
	lui	a1, %hi(tcoeftab)
	addi	a1, a1, %lo(tcoeftab)
	call	indexfn
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	li	a1, 12
	blt	a1, s8, .LBB6_26
# %bb.19:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	li	a2, 63
	blt	a2, a1, .LBB6_26
# %bb.20:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	li	a2, 1
	beq	a3, a2, .LBB6_24
# %bb.21:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	li	a2, 3
	beq	a3, a2, .LBB6_24
# %bb.22:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	li	a2, 2
	beq	a3, a2, .LBB6_24
# %bb.23:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
.LBB6_24:                               #   in Loop: Header=BB6_8 Depth=1
	call	AR_Encode
	mv	s9, a0
	li	a0, -1
	beq	s9, a0, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_8 Depth=1
	li	a2, 2
	mv	a0, s7
	lui	a1, %hi(signtab)
	addi	a1, a1, %lo(signtab)
	call	indexfn
	lui	a1, %hi(cumf_SIGN)
	addi	a1, a1, %lo(cumf_SIGN)
	call	AR_Encode
	li	s8, 0
	add	s2, s9, s2
	j	.LBB6_38
.LBB6_26:                               #   in Loop: Header=BB6_8 Depth=1
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB6_28
# %bb.27:                               #   in Loop: Header=BB6_8 Depth=1
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	li	a1, 15
	li	a2, 1
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	call	fwrite
.LBB6_28:                               #   in Loop: Header=BB6_8 Depth=1
	li	a0, 1
	bne	s7, a0, .LBB6_30
# %bb.29:                               #   in Loop: Header=BB6_8 Depth=1
	xori	a0, s8, 255
	addiw	s8, a0, 1
.LBB6_30:                               #   in Loop: Header=BB6_8 Depth=1
	mv	s9, s8
	li	a2, 103
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	lui	a1, %hi(tcoeftab)
	addi	a1, a1, %lo(tcoeftab)
	call	indexfn
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	li	a2, 1
	beq	a3, a2, .LBB6_34
# %bb.31:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	li	a2, 3
	beq	a3, a2, .LBB6_34
# %bb.32:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	li	a2, 2
	beq	a3, a2, .LBB6_34
# %bb.33:                               #   in Loop: Header=BB6_8 Depth=1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
.LBB6_34:                               #   in Loop: Header=BB6_8 Depth=1
	call	AR_Encode
	add	s8, a0, s2
	li	a2, 2
	li	a0, 0
	lui	a1, %hi(lasttab)
	addi	a1, a1, %lo(lasttab)
	call	indexfn
	li	a1, 1
	bltu	a1, s5, .LBB6_36
# %bb.35:                               #   in Loop: Header=BB6_8 Depth=1
	lui	a1, %hi(cumf_LAST_intra)
	addi	a1, a1, %lo(cumf_LAST_intra)
	call	AR_Encode
	mv	s2, a0
	li	a2, 64
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	lui	a1, %hi(runtab)
	addi	a1, a1, %lo(runtab)
	call	indexfn
	lui	a1, %hi(cumf_RUN_intra)
	addi	a1, a1, %lo(cumf_RUN_intra)
	call	AR_Encode
	add	a0, s2, a0
	add	s2, a0, s8
	li	a2, 254
	mv	a0, s9
	lui	a1, %hi(leveltab)
	addi	a1, a1, %lo(leveltab)
	call	indexfn
	lui	a1, %hi(cumf_LEVEL_intra)
	addi	a1, a1, %lo(cumf_LEVEL_intra)
	j	.LBB6_37
.LBB6_36:                               #   in Loop: Header=BB6_8 Depth=1
	lui	a1, %hi(cumf_LAST)
	addi	a1, a1, %lo(cumf_LAST)
	call	AR_Encode
	mv	s2, a0
	li	a2, 64
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	lui	a1, %hi(runtab)
	addi	a1, a1, %lo(runtab)
	call	indexfn
	lui	a1, %hi(cumf_RUN)
	addi	a1, a1, %lo(cumf_RUN)
	call	AR_Encode
	add	a0, s2, a0
	add	s2, a0, s8
	li	a2, 254
	mv	a0, s9
	lui	a1, %hi(leveltab)
	addi	a1, a1, %lo(leveltab)
	call	indexfn
	lui	a1, %hi(cumf_LEVEL)
	addi	a1, a1, %lo(cumf_LEVEL)
.LBB6_37:                               #   in Loop: Header=BB6_8 Depth=1
	call	AR_Encode
	li	s8, 0
.LBB6_38:                               #   in Loop: Header=BB6_8 Depth=1
	addw	s2, s2, a0
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 80(sp)                      # 8-byte Folded Reload
.LBB6_39:                               #   in Loop: Header=BB6_8 Depth=1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	mv	s9, s11
	mv	s7, s0
	li	s1, 0
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	li	s6, 1
	j	.LBB6_7
.LBB6_40:
	bnez	s8, .LBB6_85
# %bb.41:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	lui	a1, 1
	or	s3, s9, a1
	beqz	a0, .LBB6_43
# %bb.42:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	li	a1, 12
	li	a2, 1
	call	fwrite
.LBB6_43:
	lui	a1, %hi(tcoeftab)
	addi	a1, a1, %lo(tcoeftab)
	li	a2, 103
	mv	a0, s3
	call	indexfn
	li	a1, 12
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	blt	a1, s4, .LBB6_62
# %bb.44:
	li	a1, 63
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	blt	a1, a2, .LBB6_62
# %bb.45:
	li	a1, 3
	beq	s0, a1, .LBB6_52
# %bb.46:
	li	a1, 2
	beq	s0, a1, .LBB6_50
# %bb.47:
	li	a1, 1
	bne	s0, a1, .LBB6_54
# %bb.48:
	li	a1, 2
	bltu	s5, a1, .LBB6_58
# %bb.49:
	lui	a1, %hi(cumf_TCOEF1)
	addi	a1, a1, %lo(cumf_TCOEF1)
	j	.LBB6_60
.LBB6_50:
	bltu	s5, a1, .LBB6_56
# %bb.51:
	lui	a1, %hi(cumf_TCOEF2)
	addi	a1, a1, %lo(cumf_TCOEF2)
	j	.LBB6_60
.LBB6_52:
	li	a1, 2
	bltu	s5, a1, .LBB6_57
# %bb.53:
	lui	a1, %hi(cumf_TCOEF3)
	addi	a1, a1, %lo(cumf_TCOEF3)
	j	.LBB6_60
.LBB6_54:
	li	a1, 2
	bltu	s5, a1, .LBB6_59
# %bb.55:
	lui	a1, %hi(cumf_TCOEFr)
	addi	a1, a1, %lo(cumf_TCOEFr)
	j	.LBB6_60
.LBB6_56:
	lui	a1, %hi(cumf_TCOEF2_intra)
	addi	a1, a1, %lo(cumf_TCOEF2_intra)
	j	.LBB6_60
.LBB6_57:
	lui	a1, %hi(cumf_TCOEF3_intra)
	addi	a1, a1, %lo(cumf_TCOEF3_intra)
	j	.LBB6_60
.LBB6_58:
	lui	a1, %hi(cumf_TCOEF1_intra)
	addi	a1, a1, %lo(cumf_TCOEF1_intra)
	j	.LBB6_60
.LBB6_59:
	lui	a1, %hi(cumf_TCOEFr_intra)
	addi	a1, a1, %lo(cumf_TCOEFr_intra)
.LBB6_60:
	call	AR_Encode
	li	a1, -1
	beq	a0, a1, .LBB6_62
# %bb.61:
	mv	s3, a0
	lui	a1, %hi(signtab)
	addi	a1, a1, %lo(signtab)
	li	a2, 2
	mv	a0, s7
	call	indexfn
	lui	a1, %hi(cumf_SIGN)
	addi	a1, a1, %lo(cumf_SIGN)
	call	AR_Encode
	add	s2, s3, s2
	addw	s2, s2, a0
	j	.LBB6_85
.LBB6_62:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB6_64
# %bb.63:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	li	a1, 15
	li	a2, 1
	call	fwrite
.LBB6_64:
	li	a0, 1
	bne	s7, a0, .LBB6_66
# %bb.65:
	xori	a0, s4, 255
	addiw	s4, a0, 1
.LBB6_66:
	lui	a1, %hi(tcoeftab)
	addi	a1, a1, %lo(tcoeftab)
	lui	a0, 2
	addiw	a0, a0, -1025
	li	a2, 103
	call	indexfn
	li	a1, 3
	beq	s0, a1, .LBB6_73
# %bb.67:
	li	a1, 2
	beq	s0, a1, .LBB6_71
# %bb.68:
	li	a1, 1
	bne	s0, a1, .LBB6_75
# %bb.69:
	li	a1, 2
	bltu	s5, a1, .LBB6_79
# %bb.70:
	lui	a1, %hi(cumf_TCOEF1)
	addi	a1, a1, %lo(cumf_TCOEF1)
	j	.LBB6_81
.LBB6_71:
	bltu	s5, a1, .LBB6_77
# %bb.72:
	lui	a1, %hi(cumf_TCOEF2)
	addi	a1, a1, %lo(cumf_TCOEF2)
	j	.LBB6_81
.LBB6_73:
	li	a1, 2
	bltu	s5, a1, .LBB6_78
# %bb.74:
	lui	a1, %hi(cumf_TCOEF3)
	addi	a1, a1, %lo(cumf_TCOEF3)
	j	.LBB6_81
.LBB6_75:
	li	a1, 2
	bltu	s5, a1, .LBB6_80
# %bb.76:
	lui	a1, %hi(cumf_TCOEFr)
	addi	a1, a1, %lo(cumf_TCOEFr)
	j	.LBB6_81
.LBB6_77:
	lui	a1, %hi(cumf_TCOEF2_intra)
	addi	a1, a1, %lo(cumf_TCOEF2_intra)
	j	.LBB6_81
.LBB6_78:
	lui	a1, %hi(cumf_TCOEF3_intra)
	addi	a1, a1, %lo(cumf_TCOEF3_intra)
	j	.LBB6_81
.LBB6_79:
	lui	a1, %hi(cumf_TCOEF1_intra)
	addi	a1, a1, %lo(cumf_TCOEF1_intra)
	j	.LBB6_81
.LBB6_80:
	lui	a1, %hi(cumf_TCOEFr_intra)
	addi	a1, a1, %lo(cumf_TCOEFr_intra)
.LBB6_81:
	call	AR_Encode
	add	s0, a0, s2
	lui	a1, %hi(lasttab)
	addi	a1, a1, %lo(lasttab)
	li	a0, 1
	li	a2, 2
	li	s1, 1
	call	indexfn
	bltu	s1, s5, .LBB6_83
# %bb.82:
	lui	a1, %hi(cumf_LAST_intra)
	addi	a1, a1, %lo(cumf_LAST_intra)
	call	AR_Encode
	mv	s2, a0
	lui	a1, %hi(runtab)
	addi	a1, a1, %lo(runtab)
	li	a2, 64
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	call	indexfn
	lui	a1, %hi(cumf_RUN_intra)
	addi	a1, a1, %lo(cumf_RUN_intra)
	call	AR_Encode
	add	s2, s2, a0
	lui	a1, %hi(leveltab)
	addi	a1, a1, %lo(leveltab)
	li	a2, 254
	mv	a0, s4
	call	indexfn
	lui	a1, %hi(cumf_LEVEL_intra)
	addi	a1, a1, %lo(cumf_LEVEL_intra)
	j	.LBB6_84
.LBB6_83:
	lui	a1, %hi(cumf_LAST)
	addi	a1, a1, %lo(cumf_LAST)
	call	AR_Encode
	mv	s2, a0
	lui	a1, %hi(runtab)
	addi	a1, a1, %lo(runtab)
	li	a2, 64
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	call	indexfn
	lui	a1, %hi(cumf_RUN)
	addi	a1, a1, %lo(cumf_RUN)
	call	AR_Encode
	add	s2, s2, a0
	lui	a1, %hi(leveltab)
	addi	a1, a1, %lo(leveltab)
	li	a2, 254
	mv	a0, s4
	call	indexfn
	lui	a1, %hi(cumf_LEVEL)
	addi	a1, a1, %lo(cumf_LEVEL)
.LBB6_84:
	call	AR_Encode
	add	a0, s2, a0
	addw	s2, a0, s0
.LBB6_85:
	mv	a0, s2
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end6:
	.size	Code_sac_Coeff, .Lfunc_end6-Code_sac_Coeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CodeTCoef                       # -- Begin function CodeTCoef
	.p2align	2
	.type	CodeTCoef,@function
CodeTCoef:                              # @CodeTCoef
# %bb.0:
	li	a3, 3
	beq	a1, a3, .LBB7_7
# %bb.1:
	li	a3, 2
	beq	a1, a3, .LBB7_5
# %bb.2:
	li	a3, 1
	bne	a1, a3, .LBB7_9
# %bb.3:
	beqz	a2, .LBB7_13
# %bb.4:
	lui	a1, %hi(cumf_TCOEF1_intra)
	addi	a1, a1, %lo(cumf_TCOEF1_intra)
	tail	AR_Encode
.LBB7_5:
	beqz	a2, .LBB7_11
# %bb.6:
	lui	a1, %hi(cumf_TCOEF2_intra)
	addi	a1, a1, %lo(cumf_TCOEF2_intra)
	tail	AR_Encode
.LBB7_7:
	beqz	a2, .LBB7_12
# %bb.8:
	lui	a1, %hi(cumf_TCOEF3_intra)
	addi	a1, a1, %lo(cumf_TCOEF3_intra)
	tail	AR_Encode
.LBB7_9:
	beqz	a2, .LBB7_14
# %bb.10:
	lui	a1, %hi(cumf_TCOEFr_intra)
	addi	a1, a1, %lo(cumf_TCOEFr_intra)
	tail	AR_Encode
.LBB7_11:
	lui	a1, %hi(cumf_TCOEF2)
	addi	a1, a1, %lo(cumf_TCOEF2)
	tail	AR_Encode
.LBB7_12:
	lui	a1, %hi(cumf_TCOEF3)
	addi	a1, a1, %lo(cumf_TCOEF3)
	tail	AR_Encode
.LBB7_13:
	lui	a1, %hi(cumf_TCOEF1)
	addi	a1, a1, %lo(cumf_TCOEF1)
	tail	AR_Encode
.LBB7_14:
	lui	a1, %hi(cumf_TCOEFr)
	addi	a1, a1, %lo(cumf_TCOEFr)
	tail	AR_Encode
.Lfunc_end7:
	.size	CodeTCoef, .Lfunc_end7-CodeTCoef
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindCBP                         # -- Begin function FindCBP
	.p2align	2
	.type	FindCBP,@function
FindCBP:                                # @FindCBP
# %bb.0:
	addiw	a1, a1, -3
	sltiu	a4, a1, 2
	slli	a3, a4, 2
	bge	a4, a2, .LBB8_4
# %bb.1:                                # %.preheader8
	add	a1, a0, a3
	subw	a5, a2, a4
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a1)
	bnez	a6, .LBB8_5
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	addiw	a5, a5, -1
	addi	a1, a1, 4
	bnez	a5, .LBB8_2
.LBB8_4:
	li	a1, 0
	addw	a6, a4, a2
	slliw	a5, a2, 1
	blt	a6, a5, .LBB8_6
	j	.LBB8_9
.LBB8_5:
	li	a1, 32
	addw	a6, a4, a2
	slliw	a5, a2, 1
	bge	a6, a5, .LBB8_9
.LBB8_6:                                # %.preheader6
	add	a7, a4, a2
	subw	a6, a2, a4
	slli	a7, a7, 2
	add	a7, a0, a7
.LBB8_7:                                # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a7)
	bnez	t0, .LBB8_10
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=1
	addiw	a6, a6, -1
	addi	a7, a7, 4
	bnez	a6, .LBB8_7
.LBB8_9:
	or	a6, a5, a4
	addw	a5, a5, a2
	blt	a6, a5, .LBB8_11
	j	.LBB8_14
.LBB8_10:
	ori	a1, a1, 16
	or	a6, a5, a4
	addw	a5, a5, a2
	bge	a6, a5, .LBB8_14
.LBB8_11:                               # %.preheader4
	subw	a6, a2, a4
	slli	a7, a2, 3
	or	a7, a7, a3
	add	a7, a0, a7
.LBB8_12:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a7)
	bnez	t0, .LBB8_15
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=1
	addiw	a6, a6, -1
	addi	a7, a7, 4
	bnez	a6, .LBB8_12
.LBB8_14:
	addw	a6, a5, a4
	slliw	a5, a2, 2
	blt	a6, a5, .LBB8_16
	j	.LBB8_19
.LBB8_15:
	ori	a1, a1, 8
	addw	a6, a5, a4
	slliw	a5, a2, 2
	bge	a6, a5, .LBB8_19
.LBB8_16:                               # %.preheader2
	subw	a6, a2, a4
	li	a7, 12
	mul	a7, a2, a7
	add	t0, a0, a3
	add	a7, t0, a7
.LBB8_17:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a7)
	bnez	t0, .LBB8_20
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=1
	addiw	a6, a6, -1
	addi	a7, a7, 4
	bnez	a6, .LBB8_17
.LBB8_19:
	or	a6, a5, a4
	addw	a5, a5, a2
	blt	a6, a5, .LBB8_21
	j	.LBB8_24
.LBB8_20:
	ori	a1, a1, 4
	or	a6, a5, a4
	addw	a5, a5, a2
	bge	a6, a5, .LBB8_24
.LBB8_21:                               # %.preheader
	subw	a6, a2, a4
	slli	a7, a2, 4
	or	a7, a7, a3
	add	a7, a0, a7
.LBB8_22:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a7)
	bnez	t0, .LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_22 Depth=1
	addiw	a6, a6, -1
	addi	a7, a7, 4
	bnez	a6, .LBB8_22
.LBB8_24:
	addw	a5, a5, a4
	li	a6, 6
	mulw	a6, a2, a6
	blt	a5, a6, .LBB8_26
	j	.LBB8_29
.LBB8_25:
	ori	a1, a1, 2
	addw	a5, a5, a4
	li	a6, 6
	mulw	a6, a2, a6
	bge	a5, a6, .LBB8_29
.LBB8_26:
	subw	a4, a2, a4
	li	a5, 20
	mul	a2, a2, a5
	add	a0, a0, a3
	add	a0, a0, a2
.LBB8_27:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a0)
	bnez	a2, .LBB8_30
# %bb.28:                               #   in Loop: Header=BB8_27 Depth=1
	addiw	a4, a4, -1
	addi	a0, a0, 4
	bnez	a4, .LBB8_27
.LBB8_29:
	mv	a0, a1
	ret
.LBB8_30:
	ori	a0, a1, 1
	ret
.Lfunc_end8:
	.size	FindCBP, .Lfunc_end8-FindCBP
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CountBitsVectors                # -- Begin function CountBitsVectors
	.p2align	2
	.type	CountBitsVectors,@function
CountBitsVectors:                       # @CountBitsVectors
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
	sd	a6, 0(sp)                       # 8-byte Folded Spill
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	mv	s0, a1
	addiw	a1, a2, 1
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addiw	a1, a3, 1
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	sd	a4, 8(sp)                       # 8-byte Folded Spill
	addi	a1, a4, -2
	seqz	s7, a1
	lui	a1, 13
	addiw	s3, a1, -688
	mul	a4, s7, s3
	li	a1, 720
	mul	a1, a3, a1
	slli	a2, a2, 3
	add	a1, a1, a2
	add	a1, a4, a1
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	add	a0, a1, a0
	addi	s11, a0, 728
	lui	s4, %hi(trace)
	lui	s5, %hi(tf)
	mv	a0, s7
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	mv	s1, a0
	addi	a3, sp, 52
	addi	a4, sp, 48
	li	a7, 1
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	mv	a5, s7
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	call	FindPMV
	ld	a0, 0(s11)
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	s2, 52(sp)
	slli	a1, a1, 1
	subw	a2, a2, s2
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	lw	s8, 48(sp)
	lui	a4, %hi(long_vectors)
	lw	a4, %lo(long_vectors)(a4)
	addw	s9, a1, a2
	slli	a3, a3, 1
	subw	a0, a0, s8
	addw	a0, a3, a0
	li	a1, -32
	beqz	a4, .LBB9_5
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	blt	a1, s2, .LBB9_7
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	li	a1, -64
	blt	a1, s9, .LBB9_7
# %bb.4:                                #   in Loop: Header=BB9_1 Depth=1
	addi	s9, s9, 64
	li	a1, -32
	bge	a1, s8, .LBB9_8
	j	.LBB9_9
.LBB9_5:                                #   in Loop: Header=BB9_1 Depth=1
	bge	s9, a1, .LBB9_10
# %bb.6:                                #   in Loop: Header=BB9_1 Depth=1
	li	a1, 64
	add	s9, s9, a1
	li	a1, -33
	bge	a1, a0, .LBB9_11
	j	.LBB9_17
.LBB9_7:                                #   in Loop: Header=BB9_1 Depth=1
	slti	a1, s2, 33
	slti	a2, s9, 64
	or	a1, a1, a2
	xori	a1, a1, 1
	negw	a1, a1
	andi	a1, a1, -64
	add	s9, s9, a1
	li	a1, -32
	blt	a1, s8, .LBB9_9
.LBB9_8:                                #   in Loop: Header=BB9_1 Depth=1
	li	a1, -64
	bge	a1, a0, .LBB9_11
.LBB9_9:                                #   in Loop: Header=BB9_1 Depth=1
	slti	a1, s8, 33
	slti	a2, a0, 64
	or	a1, a1, a2
	xori	a1, a1, 1
	negw	a1, a1
	andi	s6, a1, -64
	add	s6, a0, s6
	lw	a0, %lo(trace)(s4)
	bnez	a0, .LBB9_12
	j	.LBB9_13
.LBB9_10:                               #   in Loop: Header=BB9_1 Depth=1
	slti	a1, s9, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	add	s9, s9, a1
	li	a1, -33
	blt	a1, a0, .LBB9_17
.LBB9_11:                               #   in Loop: Header=BB9_1 Depth=1
	addi	s6, a0, 64
	lw	a0, %lo(trace)(s4)
	beqz	a0, .LBB9_13
.LBB9_12:                               #   in Loop: Header=BB9_1 Depth=1
	ld	a3, %lo(tf)(s5)
	li	a1, 9
	li	a2, 1
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	call	fwrite
.LBB9_13:                               #   in Loop: Header=BB9_1 Depth=1
	srliw	a0, s9, 31
	slli	a0, a0, 6
	addw	s10, a0, s9
	srliw	a0, s6, 31
	slli	a0, a0, 6
	addw	s9, a0, s6
	mv	a0, s10
	call	put_mv
	lw	a1, 8(s0)
	add	a0, a1, a0
	sw	a0, 8(s0)
	mv	a0, s9
	call	put_mv
	lw	a1, 8(s0)
	lw	a2, %lo(trace)(s4)
	add	a0, a1, a0
	sw	a0, 8(s0)
	beqz	a2, .LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_1 Depth=1
	slti	a0, s10, 32
	addi	a0, a0, -1
	andi	a0, a0, -64
	addw	s10, s10, a0
	slti	a0, s9, 32
	addi	a0, a0, -1
	ld	a1, 0(s11)
	andi	a0, a0, -64
	addw	s9, s9, a0
	ld	a0, %lo(tf)(s5)
	lw	a2, 0(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	lw	a1, 12(a1)
	slli	a2, a2, 1
	addw	a2, a2, a3
	slli	a3, a4, 1
	addw	a3, a3, a1
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	call	fprintf
	ld	a0, %lo(tf)(s5)
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	mv	a2, s2
	mv	a3, s8
	call	fprintf
	ld	a0, %lo(tf)(s5)
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	mv	a2, s10
	mv	a3, s9
	call	fprintf
.LBB9_15:                               #   in Loop: Header=BB9_1 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	li	a1, 2
	bne	a0, a1, .LBB9_18
# %bb.16:                               #   in Loop: Header=BB9_1 Depth=1
	addi	a0, s1, 1
	add	s11, s11, s3
	addiw	s7, s7, 1
	li	a1, 4
	bltu	s1, a1, .LBB9_1
	j	.LBB9_18
.LBB9_17:                               #   in Loop: Header=BB9_1 Depth=1
	slti	a1, a0, 32
	addi	a1, a1, -1
	andi	s6, a1, -64
	add	s6, a0, s6
	lw	a0, %lo(trace)(s4)
	bnez	a0, .LBB9_12
	j	.LBB9_13
.LBB9_18:
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	lw	a0, 40(a1)
	beqz	a0, .LBB9_24
# %bb.19:
	lw	a0, 64(a1)
	addiw	a0, a0, -1
	li	a1, 1
	bltu	a1, a0, .LBB9_24
# %bb.20:
	li	a0, 720
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 3
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	add	a0, a1, a0
	lui	a1, 64
	add	a0, a0, a1
	ld	a0, 656(a0)
	lw	a1, 0(a0)
	lw	a0, 4(a0)
	srliw	a2, a1, 31
	slli	a2, a2, 6
	lui	s3, %hi(trace)
	lw	a3, %lo(trace)(s3)
	addw	s2, a2, a1
	srliw	a1, a0, 31
	slli	a1, a1, 6
	addw	s1, a1, a0
	beqz	a3, .LBB9_22
# %bb.21:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	li	a1, 18
	li	a2, 1
	call	fwrite
.LBB9_22:
	mv	a0, s2
	call	put_mv
	lw	a1, 8(s0)
	add	a0, a1, a0
	sw	a0, 8(s0)
	mv	a0, s1
	call	put_mv
	lw	a1, 8(s0)
	lw	a2, %lo(trace)(s3)
	add	a0, a1, a0
	sw	a0, 8(s0)
	beqz	a2, .LBB9_24
# %bb.23:
	slti	a0, s2, 32
	addi	a0, a0, -1
	andi	a0, a0, -64
	addw	a2, s2, a0
	slti	a0, s1, 32
	addi	a1, a0, -1
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	andi	a3, a1, -64
	addw	a3, s1, a3
	lui	a1, %hi(.L.str.26)
	addi	a1, a1, %lo(.L.str.26)
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
	tail	fprintf
.LBB9_24:
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
.Lfunc_end9:
	.size	CountBitsVectors, .Lfunc_end9-CountBitsVectors
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindPMV                         # -- Begin function FindPMV
	.p2align	2
	.type	FindPMV,@function
FindPMV:                                # @FindPMV
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	li	t0, 4
	bltu	t0, a5, .LBB10_36
# %bb.1:
	addiw	t4, a1, -1
	li	t0, 720
	mul	t1, a2, t0
	add	t1, a0, t1
	slli	t2, t4, 3
	add	t1, t1, t2
	ld	t2, 0(t1)
	addiw	t1, a2, -1
	mul	t0, t1, t0
	add	t3, a0, t0
	slli	t0, a1, 3
	add	t5, t3, t0
	ld	t5, 0(t5)
	lw	s2, 20(t2)
	lw	s3, 20(t5)
	addiw	t5, a1, 1
	slli	t2, t5, 3
	add	t2, t3, t2
	ld	t2, 0(t2)
	slli	t3, a5, 2
	lui	t6, %hi(.LJTI10_0)
	addi	t6, t6, %lo(.LJTI10_0)
	add	t3, t3, t6
	lw	s5, 0(t3)
	lw	s4, 20(t2)
	li	t2, 2
	li	t3, 1
	li	t6, 3
	mv	s1, a1
	mv	s0, a2
	jr	s5
.LBB10_2:
	addi	s4, s4, -2
	snez	a1, s4
	addi	s3, s3, -2
	snez	t2, s3
	addi	s2, s2, -2
	seqz	t6, s2
	slli	t6, t6, 1
	addi	t2, t2, -1
	andi	t3, t2, 3
	addi	a1, a1, -1
	andi	t2, a1, 3
	mv	s1, t4
	j	.LBB10_5
.LBB10_3:
	addi	s2, s2, -2
	seqz	t6, s2
	slli	t6, t6, 2
	mv	s1, t4
	mv	s0, a2
	j	.LBB10_6
.LBB10_4:
	addi	s4, s4, -2
	snez	t2, s4
	addi	s3, s3, -2
	seqz	t3, s3
	slli	t3, t3, 2
	addi	t2, t2, -1
	andi	t2, t2, 3
	li	t6, 1
	mv	s1, a1
.LBB10_5:
	mv	a1, t5
	mv	s0, t1
.LBB10_6:
	li	t5, 720
	mul	a2, a2, t5
	lui	t1, 13
	addiw	t4, t1, -688
	mul	t1, t6, t4
	add	a2, a0, a2
	add	a2, a2, t1
	slli	s1, s1, 3
	add	a2, a2, s1
	ld	a2, 0(a2)
	lw	t1, 0(a2)
	slliw	t1, t1, 1
	beqz	a7, .LBB10_8
# %bb.7:
	lw	t6, 8(a2)
	mul	t5, s0, t5
	mul	t3, t3, t4
	add	s0, a0, t5
	add	t3, s0, t3
	add	t0, t3, t0
	ld	t0, 0(t0)
	mul	t2, t2, t4
	add	a0, a0, t5
	add	a0, a0, t2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	t1, t1, t6
	lw	a1, 0(t0)
	lw	t2, 8(t0)
	lw	t4, 0(a0)
	lw	t5, 8(a0)
	slli	a1, a1, 1
	addw	t3, a1, t2
	slli	t4, t4, 1
	addw	t2, t4, t5
	j	.LBB10_9
.LBB10_8:
	mul	t5, s0, t5
	mul	t3, t3, t4
	add	t6, a0, t5
	add	t3, t6, t3
	add	t0, t3, t0
	ld	t0, 0(t0)
	mul	t2, t2, t4
	add	a0, a0, t5
	add	a0, a0, t2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 0(t0)
	lw	t2, 0(a0)
	slliw	t3, a1, 1
	slliw	t2, t2, 1
.LBB10_9:
	snez	a1, a6
	sltiu	a5, a5, 3
	and	a1, a5, a1
	li	t4, 1998
	li	t5, 1998
	beqz	a1, .LBB10_26
# %bb.10:
	mv	a5, t1
	mv	a6, t1
	bne	t5, t4, .LBB10_27
.LBB10_11:
	mv	t3, a5
	bge	a6, a5, .LBB10_28
.LBB10_12:
	mv	t2, t1
	bge	t3, t1, .LBB10_29
.LBB10_13:
	mv	t3, a5
	bge	a5, a6, .LBB10_30
.LBB10_14:
	mv	t4, t1
	blt	t1, t3, .LBB10_16
.LBB10_15:
	mv	t4, t3
.LBB10_16:
	add	a5, a5, t1
	add	a5, a5, a6
	add	t2, t4, t2
	subw	a5, a5, t2
	sw	a5, 0(a3)
	lw	a3, 4(a2)
	slliw	a3, a3, 1
	beqz	a7, .LBB10_35
# %bb.17:
	lw	a2, 12(a2)
	addw	a3, a3, a2
	lw	a2, 4(t0)
	lw	a5, 12(t0)
	lw	a6, 4(a0)
	lw	a7, 12(a0)
	slli	a0, a2, 1
	addw	a0, a0, a5
	slli	a6, a6, 1
	addw	a2, a6, a7
	li	a5, 1998
	li	a6, 1998
	bnez	a1, .LBB10_19
.LBB10_18:
	mv	a6, a0
.LBB10_19:
	mv	a0, a3
	mv	a1, a3
	bne	a6, a5, .LBB10_31
# %bb.20:
	mv	a5, a0
	bge	a1, a0, .LBB10_32
.LBB10_21:
	mv	a2, a3
	bge	a5, a3, .LBB10_33
.LBB10_22:
	mv	a5, a0
	bge	a0, a1, .LBB10_34
.LBB10_23:
	mv	a6, a3
	blt	a3, a5, .LBB10_25
.LBB10_24:
	mv	a6, a5
.LBB10_25:
	add	a0, a0, a3
	add	a0, a0, a1
	add	a2, a6, a2
	subw	a0, a0, a2
	sw	a0, 0(a4)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB10_26:
	mv	t5, t3
	mv	a5, t1
	mv	a6, t1
	beq	t3, t4, .LBB10_11
.LBB10_27:
	mv	a5, t5
	mv	a6, t2
	mv	t3, a5
	blt	t2, t5, .LBB10_12
.LBB10_28:
	mv	t3, a6
	mv	t2, t1
	blt	a6, t1, .LBB10_13
.LBB10_29:
	mv	t2, t3
	mv	t3, a5
	blt	a5, a6, .LBB10_14
.LBB10_30:
	mv	t3, a6
	mv	t4, t1
	bge	t1, a6, .LBB10_15
	j	.LBB10_16
.LBB10_31:
	mv	a0, a6
	mv	a1, a2
	mv	a5, a0
	blt	a2, a6, .LBB10_21
.LBB10_32:
	mv	a5, a1
	mv	a2, a3
	blt	a1, a3, .LBB10_22
.LBB10_33:
	mv	a2, a5
	mv	a5, a0
	blt	a0, a1, .LBB10_23
.LBB10_34:
	mv	a5, a1
	mv	a6, a3
	bge	a3, a1, .LBB10_24
	j	.LBB10_25
.LBB10_35:
	lw	a2, 4(t0)
	lw	a5, 4(a0)
	slliw	a0, a2, 1
	slliw	a2, a5, 1
	li	a5, 1998
	li	a6, 1998
	beqz	a1, .LBB10_18
	j	.LBB10_19
.LBB10_36:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	li	a1, 45
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end10:
	.size	FindPMV, .Lfunc_end10-FindPMV
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_2
	.word	.LBB10_2
	.word	.LBB10_4
	.word	.LBB10_3
	.word	.LBB10_6
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	Count_sac_BitsVectors           # -- Begin function Count_sac_BitsVectors
	.p2align	2
	.type	Count_sac_BitsVectors,@function
Count_sac_BitsVectors:                  # @Count_sac_BitsVectors
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	sd	a5, 32(sp)                      # 8-byte Folded Spill
	mv	s0, a1
	lui	a5, %hi(arith_used)
	li	a1, 1
	sw	a1, %lo(arith_used)(a5)
	addiw	a1, a2, 1
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	addiw	a1, a3, 1
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	addi	a1, a4, -2
	seqz	s7, a1
	lui	a1, 13
	addiw	a1, a1, -688
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	mul	a4, s7, a1
	li	a1, 720
	mul	a1, a3, a1
	slli	a2, a2, 3
	add	a1, a1, a2
	add	a1, a4, a1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	add	a0, a1, a0
	addi	s3, a0, 728
	lui	s1, %hi(trace)
	lui	s8, %hi(mvdtab)
	addi	s8, s8, %lo(mvdtab)
	lui	s9, %hi(cumf_MVD)
	addi	s9, s9, %lo(cumf_MVD)
	lui	s6, %hi(tf)
	mv	a0, s7
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	mv	s4, a0
	addi	a3, sp, 68
	addi	a4, sp, 64
	li	a7, 1
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	mv	a5, s7
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	call	FindPMV
	ld	a0, 0(s3)
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	s11, 68(sp)
	slli	a1, a1, 1
	subw	a2, a2, s11
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	lw	s2, 64(sp)
	lui	a4, %hi(long_vectors)
	lw	a4, %lo(long_vectors)(a4)
	addw	s5, a1, a2
	slli	a3, a3, 1
	subw	a0, a0, s2
	addw	a0, a3, a0
	li	a1, -32
	beqz	a4, .LBB11_5
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	blt	a1, s11, .LBB11_7
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	li	a1, -64
	blt	a1, s5, .LBB11_7
# %bb.4:                                #   in Loop: Header=BB11_1 Depth=1
	addi	s5, s5, 64
	li	a1, -32
	bge	a1, s2, .LBB11_8
	j	.LBB11_9
.LBB11_5:                               #   in Loop: Header=BB11_1 Depth=1
	bge	s5, a1, .LBB11_10
# %bb.6:                                #   in Loop: Header=BB11_1 Depth=1
	li	a1, 64
	add	s5, s5, a1
	li	a1, -33
	bge	a1, a0, .LBB11_11
	j	.LBB11_17
.LBB11_7:                               #   in Loop: Header=BB11_1 Depth=1
	slti	a1, s11, 33
	slti	a2, s5, 64
	or	a1, a1, a2
	xori	a1, a1, 1
	negw	a1, a1
	andi	a1, a1, -64
	add	s5, s5, a1
	li	a1, -32
	blt	a1, s2, .LBB11_9
.LBB11_8:                               #   in Loop: Header=BB11_1 Depth=1
	li	a1, -64
	bge	a1, a0, .LBB11_11
.LBB11_9:                               #   in Loop: Header=BB11_1 Depth=1
	slti	a1, s2, 33
	slti	a2, a0, 64
	or	a1, a1, a2
	xori	a1, a1, 1
	negw	a1, a1
	andi	s10, a1, -64
	add	s10, a0, s10
	lw	a0, %lo(trace)(s1)
	bnez	a0, .LBB11_12
	j	.LBB11_13
.LBB11_10:                              #   in Loop: Header=BB11_1 Depth=1
	slti	a1, s5, 32
	addi	a1, a1, -1
	andi	a1, a1, -64
	add	s5, s5, a1
	li	a1, -33
	blt	a1, a0, .LBB11_17
.LBB11_11:                              #   in Loop: Header=BB11_1 Depth=1
	addi	s10, a0, 64
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB11_13
.LBB11_12:                              #   in Loop: Header=BB11_1 Depth=1
	ld	a3, %lo(tf)(s6)
	li	a1, 9
	li	a2, 1
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	call	fwrite
.LBB11_13:                              #   in Loop: Header=BB11_1 Depth=1
	srliw	a0, s5, 31
	slli	a0, a0, 6
	addw	s5, a0, s5
	srliw	a0, s10, 31
	slli	a0, a0, 6
	addw	s10, a0, s10
	li	a2, 64
	mv	a0, s5
	mv	a1, s8
	call	indexfn
	mv	a1, s9
	call	AR_Encode
	lw	a1, 8(s0)
	add	a0, a1, a0
	sw	a0, 8(s0)
	li	a2, 64
	mv	a0, s10
	mv	a1, s8
	call	indexfn
	mv	a1, s9
	call	AR_Encode
	lw	a1, 8(s0)
	lw	a2, %lo(trace)(s1)
	add	a0, a1, a0
	sw	a0, 8(s0)
	beqz	a2, .LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_1 Depth=1
	slti	a0, s5, 32
	addi	a0, a0, -1
	andi	a0, a0, -64
	addw	s5, s5, a0
	slti	a0, s10, 32
	addi	a0, a0, -1
	ld	a1, 0(s3)
	andi	a0, a0, -64
	addw	s10, s10, a0
	ld	a0, %lo(tf)(s6)
	lw	a2, 0(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	lw	a1, 12(a1)
	slli	a2, a2, 1
	addw	a2, a2, a3
	slli	a3, a4, 1
	addw	a3, a3, a1
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	call	fprintf
	ld	a0, %lo(tf)(s6)
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	mv	a2, s11
	mv	a3, s2
	call	fprintf
	ld	a0, %lo(tf)(s6)
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	mv	a2, s5
	mv	a3, s10
	call	fprintf
.LBB11_15:                              #   in Loop: Header=BB11_1 Depth=1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	li	a1, 2
	bne	a0, a1, .LBB11_18
# %bb.16:                               #   in Loop: Header=BB11_1 Depth=1
	addi	a0, s4, 1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	s3, s3, a1
	addiw	s7, s7, 1
	li	a1, 4
	bltu	s4, a1, .LBB11_1
	j	.LBB11_18
.LBB11_17:                              #   in Loop: Header=BB11_1 Depth=1
	slti	a1, a0, 32
	addi	a1, a1, -1
	andi	s10, a1, -64
	add	s10, a0, s10
	lw	a0, %lo(trace)(s1)
	bnez	a0, .LBB11_12
	j	.LBB11_13
.LBB11_18:
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	lw	a0, 40(a1)
	beqz	a0, .LBB11_28
# %bb.19:
	lw	a0, 64(a1)
	addiw	a0, a0, -1
	li	a1, 1
	bltu	a1, a0, .LBB11_28
# %bb.20:
	li	a0, 720
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 3
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	add	a0, a1, a0
	lui	a1, 64
	add	a0, a0, a1
	ld	a0, 656(a0)
	lw	a1, 0(a0)
	lw	a0, 4(a0)
	li	a3, -32
	li	a2, 64
	bge	a1, a3, .LBB11_22
# %bb.21:
	li	a4, 64
	add	a1, a1, a4
	bge	a0, a3, .LBB11_23
	j	.LBB11_24
.LBB11_22:
	slti	a4, a1, 32
	addi	a4, a4, -1
	andi	a4, a4, -64
	add	a1, a1, a4
	blt	a0, a3, .LBB11_24
.LBB11_23:
	slti	a2, a0, 32
	addi	a2, a2, -1
	andi	a2, a2, -64
.LBB11_24:
	add	a0, a0, a2
	srliw	a2, a1, 31
	slli	a2, a2, 6
	lui	s5, %hi(trace)
	lw	a3, %lo(trace)(s5)
	addw	s2, a2, a1
	srliw	a1, a0, 31
	slli	a1, a1, 6
	addw	s1, a1, a0
	beqz	a3, .LBB11_26
# %bb.25:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	li	a1, 18
	li	a2, 1
	call	fwrite
.LBB11_26:
	lui	s3, %hi(mvdtab)
	addi	s3, s3, %lo(mvdtab)
	li	a2, 64
	mv	a0, s2
	mv	a1, s3
	call	indexfn
	lui	s4, %hi(cumf_MVD)
	addi	s4, s4, %lo(cumf_MVD)
	mv	a1, s4
	call	AR_Encode
	lw	a1, 8(s0)
	add	a0, a1, a0
	sw	a0, 8(s0)
	li	a2, 64
	mv	a0, s1
	mv	a1, s3
	call	indexfn
	mv	a1, s4
	call	AR_Encode
	lw	a1, 8(s0)
	lw	a2, %lo(trace)(s5)
	add	a0, a1, a0
	sw	a0, 8(s0)
	beqz	a2, .LBB11_28
# %bb.27:
	slti	a0, s2, 32
	addi	a0, a0, -1
	andi	a0, a0, -64
	addw	a2, s2, a0
	slti	a0, s1, 32
	addi	a1, a0, -1
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	andi	a3, a1, -64
	addw	a3, s1, a3
	lui	a1, %hi(.L.str.26)
	addi	a1, a1, %lo(.L.str.26)
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	tail	fprintf
.LBB11_28:
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.Lfunc_end11:
	.size	Count_sac_BitsVectors, .Lfunc_end11-Count_sac_BitsVectors
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ZeroBits                        # -- Begin function ZeroBits
	.p2align	2
	.type	ZeroBits,@function
ZeroBits:                               # @ZeroBits
# %bb.0:
	li	a2, 56
	li	a1, 0
	tail	memset
.Lfunc_end12:
	.size	ZeroBits, .Lfunc_end12-ZeroBits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ZeroRes                         # -- Begin function ZeroRes
	.p2align	2
	.type	ZeroRes,@function
ZeroRes:                                # @ZeroRes
# %bb.0:
	sw	zero, 12(a0)
	sw	zero, 8(a0)
	sw	zero, 4(a0)
	sw	zero, 0(a0)
	ret
.Lfunc_end13:
	.size	ZeroRes, .Lfunc_end13-ZeroRes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AddBits                         # -- Begin function AddBits
	.p2align	2
	.type	AddBits,@function
AddBits:                                # @AddBits
# %bb.0:
	lw	a2, 0(a1)
	lw	a3, 0(a0)
	lw	a4, 4(a1)
	lw	a5, 4(a0)
	add	a2, a3, a2
	sw	a2, 0(a0)
	add	a4, a5, a4
	lw	a2, 8(a1)
	lw	a3, 8(a0)
	lw	a5, 12(a1)
	lw	a6, 12(a0)
	sw	a4, 4(a0)
	add	a2, a3, a2
	sw	a2, 8(a0)
	add	a5, a6, a5
	lw	a2, 16(a1)
	lw	a3, 16(a0)
	lw	a4, 20(a1)
	lw	a6, 20(a0)
	sw	a5, 12(a0)
	add	a2, a3, a2
	sw	a2, 16(a0)
	add	a4, a6, a4
	lw	a2, 24(a1)
	lw	a3, 24(a0)
	lw	a5, 28(a1)
	lw	a6, 28(a0)
	sw	a4, 20(a0)
	add	a2, a3, a2
	sw	a2, 24(a0)
	add	a5, a6, a5
	lw	a2, 36(a1)
	lw	a3, 36(a0)
	lw	a4, 32(a1)
	lw	a6, 32(a0)
	sw	a5, 28(a0)
	add	a2, a3, a2
	sw	a2, 36(a0)
	add	a4, a6, a4
	lw	a2, 40(a1)
	lw	a3, 40(a0)
	lw	a5, 44(a1)
	lw	a6, 44(a0)
	sw	a4, 32(a0)
	add	a2, a3, a2
	sw	a2, 40(a0)
	add	a5, a6, a5
	lw	a2, 48(a1)
	lw	a3, 48(a0)
	lw	a1, 52(a1)
	lw	a4, 52(a0)
	sw	a5, 44(a0)
	add	a2, a3, a2
	sw	a2, 48(a0)
	add	a1, a4, a1
	sw	a1, 52(a0)
	ret
.Lfunc_end14:
	.size	AddBits, .Lfunc_end14-AddBits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AddRes                          # -- Begin function AddRes
	.p2align	2
	.type	AddRes,@function
AddRes:                                 # @AddRes
# %bb.0:
	flw	fa5, 0(a1)
	flw	fa4, 0(a0)
	flw	fa3, 4(a1)
	flw	fa2, 4(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, 0(a0)
	fadd.s	fa5, fa3, fa2
	flw	fa4, 8(a1)
	flw	fa3, 8(a0)
	flw	fa2, 76(a2)
	flw	fa1, 12(a0)
	fsw	fa5, 4(a0)
	fadd.s	fa5, fa4, fa3
	fsw	fa5, 8(a0)
	fadd.s	fa5, fa2, fa1
	fsw	fa5, 12(a0)
	ret
.Lfunc_end15:
	.size	AddRes, .Lfunc_end15-AddRes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AddBitsPicture                  # -- Begin function AddBitsPicture
	.p2align	2
	.type	AddBitsPicture,@function
AddBitsPicture:                         # @AddBitsPicture
# %bb.0:
	lw	a1, 0(a0)
	lw	a2, 4(a0)
	lw	a3, 8(a0)
	lw	a4, 12(a0)
	lw	a5, 16(a0)
	lw	a6, 20(a0)
	add	a1, a2, a1
	add	a3, a3, a4
	add	a1, a1, a3
	add	a5, a5, a6
	lw	a2, 24(a0)
	lw	a3, 28(a0)
	lw	a4, 36(a0)
	lw	a6, 32(a0)
	add	a2, a5, a2
	add	a1, a1, a2
	add	a3, a3, a4
	add	a3, a3, a6
	add	a1, a1, a3
	sw	a1, 40(a0)
	ret
.Lfunc_end16:
	.size	AddBitsPicture, .Lfunc_end16-AddBitsPicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ZeroVec                         # -- Begin function ZeroVec
	.p2align	2
	.type	ZeroVec,@function
ZeroVec:                                # @ZeroVec
# %bb.0:
	sw	zero, 12(a0)
	sw	zero, 8(a0)
	sw	zero, 4(a0)
	sw	zero, 0(a0)
	ret
.Lfunc_end17:
	.size	ZeroVec, .Lfunc_end17-ZeroVec
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MarkVec                         # -- Begin function MarkVec
	.p2align	2
	.type	MarkVec,@function
MarkVec:                                # @MarkVec
# %bb.0:
	li	a1, 999
	sw	a1, 0(a0)
	sw	a1, 4(a0)
	sw	zero, 8(a0)
	sw	zero, 12(a0)
	ret
.Lfunc_end18:
	.size	MarkVec, .Lfunc_end18-MarkVec
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CopyVec                         # -- Begin function CopyVec
	.p2align	2
	.type	CopyVec,@function
CopyVec:                                # @CopyVec
# %bb.0:
	lw	a2, 0(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	lw	a1, 12(a1)
	sw	a2, 0(a0)
	sw	a3, 8(a0)
	sw	a4, 4(a0)
	sw	a1, 12(a0)
	ret
.Lfunc_end19:
	.size	CopyVec, .Lfunc_end19-CopyVec
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EqualVec                        # -- Begin function EqualVec
	.p2align	2
	.type	EqualVec,@function
EqualVec:                               # @EqualVec
# %bb.0:
	lw	a2, 0(a1)
	lw	a3, 0(a0)
	bne	a2, a3, .LBB20_4
# %bb.1:
	lw	a2, 4(a1)
	lw	a3, 4(a0)
	bne	a2, a3, .LBB20_4
# %bb.2:
	lw	a2, 8(a1)
	lw	a3, 8(a0)
	bne	a2, a3, .LBB20_4
# %bb.3:
	lw	a1, 12(a1)
	lw	a0, 12(a0)
	xor	a0, a1, a0
	seqz	a0, a0
	ret
.LBB20_4:
	li	a0, 0
	ret
.Lfunc_end20:
	.size	EqualVec, .Lfunc_end20-EqualVec
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CountBitsPicture                # -- Begin function CountBitsPicture
	.p2align	2
	.type	CountBitsPicture,@function
CountBitsPicture:                       # @CountBitsPicture
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(trace)
	lw	a1, %lo(trace)(s1)
	mv	s0, a0
	beqz	a1, .LBB21_2
# %bb.1:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	li	a1, 20
	li	a2, 1
	call	fwrite
.LBB21_2:
	li	a0, 17
	li	a1, 1
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_4
# %bb.3:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	li	a1, 32
	li	a2, 1
	call	fwrite
.LBB21_4:
	li	a0, 5
	li	a1, 0
	call	putbits
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_6
# %bb.5:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	li	a1, 16
	li	a2, 1
	call	fwrite
.LBB21_6:
	lw	a1, 8(s0)
	li	a0, 8
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_8
# %bb.7:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.31)
	addi	a0, a0, %lo(.L.str.31)
	li	a1, 7
	li	a2, 1
	call	fwrite
.LBB21_8:
	li	a0, 1
	sw	a0, 32(s0)
	li	a0, 1
	li	a1, 1
	call	putbits
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_10
# %bb.9:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	li	a1, 39
	li	a2, 1
	call	fwrite
.LBB21_10:
	li	a0, 1
	li	a1, 0
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_12
# %bb.11:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	li	a1, 24
	li	a2, 1
	call	fwrite
.LBB21_12:
	li	a0, 1
	li	a1, 0
	call	putbits
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_14
# %bb.13:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.34)
	addi	a0, a0, %lo(.L.str.34)
	li	a1, 27
	li	a2, 1
	call	fwrite
.LBB21_14:
	li	a0, 1
	li	a1, 0
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_16
# %bb.15:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.35)
	addi	a0, a0, %lo(.L.str.35)
	li	a1, 24
	li	a2, 1
	call	fwrite
.LBB21_16:
	li	a0, 1
	li	a1, 0
	call	putbits
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_18
# %bb.17:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.36)
	addi	a0, a0, %lo(.L.str.36)
	li	a1, 15
	li	a2, 1
	call	fwrite
.LBB21_18:
	lw	a1, 24(s0)
	li	a0, 3
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_20
# %bb.19:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	li	a1, 21
	li	a2, 1
	call	fwrite
.LBB21_20:
	lw	a1, 28(s0)
	li	a0, 1
	call	putbits
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_22
# %bb.21:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.38)
	addi	a0, a0, %lo(.L.str.38)
	li	a1, 18
	li	a2, 1
	call	fwrite
.LBB21_22:
	lw	a1, 36(s0)
	li	a0, 1
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_24
# %bb.23:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	li	a1, 12
	li	a2, 1
	call	fwrite
.LBB21_24:
	lui	a0, %hi(syntax_arith_coding)
	lw	a1, %lo(syntax_arith_coding)(a0)
	li	a0, 1
	call	putbits
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_26
# %bb.25:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	li	a1, 15
	li	a2, 1
	call	fwrite
.LBB21_26:
	lui	a0, %hi(advanced)
	lw	a1, %lo(advanced)(a0)
	li	a0, 1
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_28
# %bb.27:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	li	a1, 10
	li	a2, 1
	call	fwrite
.LBB21_28:
	lw	a1, 40(s0)
	li	a0, 1
	call	putbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB21_30
# %bb.29:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.42)
	addi	a0, a0, %lo(.L.str.42)
	li	a1, 7
	li	a2, 1
	call	fwrite
.LBB21_30:
	lw	a1, 44(s0)
	li	a0, 5
	call	putbits
	li	a0, 1
	li	a1, 0
	call	putbits
	lw	a0, 40(s0)
	beqz	a0, .LBB21_38
# %bb.31:
	lui	s1, %hi(trace)
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_33
# %bb.32:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.43)
	addi	a0, a0, %lo(.L.str.43)
	li	a1, 5
	li	a2, 1
	call	fwrite
.LBB21_33:
	lw	a1, 72(s0)
	li	a0, 3
	call	putbits
	lw	a0, %lo(trace)(s1)
	beqz	a0, .LBB21_35
# %bb.34:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 8
	li	a2, 1
	call	fwrite
.LBB21_35:
	lw	a1, 68(s0)
	li	a0, 2
	call	putbits
	li	s0, 55
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB21_37
.LBB21_36:
	lui	a0, %hi(tf)
	ld	a3, %lo(tf)(a0)
	lui	a0, %hi(.L.str.45)
	addi	a0, a0, %lo(.L.str.45)
	li	a1, 5
	li	a2, 1
	call	fwrite
.LBB21_37:
	li	a0, 1
	li	a1, 0
	call	putbits
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB21_38:
	li	s0, 50
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	bnez	a0, .LBB21_36
	j	.LBB21_37
.Lfunc_end21:
	.size	CountBitsPicture, .Lfunc_end21-CountBitsPicture
                                        # -- End function
	.option	pop
	.type	cumf_COD,@object                # @cumf_COD
	.data
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

	.type	cbpytab,@object                 # @cbpytab
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

	.type	arith_used,@object              # @arith_used
	.section	.sbss,"aw",@nobits
	.globl	arith_used
	.p2align	2, 0x0
arith_used:
	.word	0                               # 0x0
	.size	arith_used, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MB-nr: %d"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"  COD: %d\n"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CBPCM (CBP=%d) (cbpcm=%d): "
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"MODB: %d, CBPB: %d\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"CBPY (CBP=%d) (cbpy=%d): "
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"DQUANT: "
	.size	.L.str.5, 9

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Invalid DQUANT\n"
	.size	.L.str.6, 16

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"  COD: %d "
	.size	.L.str.7, 11

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"GOB sync (GBSC): "
	.size	.L.str.8, 18

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"GN: "
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"GFID: "
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"GQUANT: "
	.size	.L.str.11, 9

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Coeffs block %d:\n"
	.size	.L.str.12, 18

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"DC: "
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Escape code: "
	.size	.L.str.14, 14

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"last: "
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"run: "
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"level: "
	.size	.L.str.17, 8

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Last coeff: "
	.size	.L.str.18, 13

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Escape coding:\n"
	.size	.L.str.19, 16

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Vectors:\n"
	.size	.L.str.21, 10

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"(x,y) = (%d,%d) - "
	.size	.L.str.22, 19

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"(Px,Py) = (%d,%d)\n"
	.size	.L.str.23, 19

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"(x_diff,y_diff) = (%d,%d)\n"
	.size	.L.str.24, 27

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"PB delta vectors:\n"
	.size	.L.str.25, 19

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"MVDB (x,y) = (%d,%d)\n"
	.size	.L.str.26, 22

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Illegal block number in FindPMV (countbit.c)\n"
	.size	.L.str.27, 46

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"picture_start_code: "
	.size	.L.str.28, 21

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Group number in picture header: "
	.size	.L.str.29, 33

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Time reference: "
	.size	.L.str.30, 17

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"spare: "
	.size	.L.str.31, 8

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"always zero for distinction with H.261\n"
	.size	.L.str.32, 40

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"split_screen_indicator: "
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"document_camera_indicator: "
	.size	.L.str.34, 28

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"freeze_picture_release: "
	.size	.L.str.35, 25

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"source_format: "
	.size	.L.str.36, 16

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"picture_coding_type: "
	.size	.L.str.37, 22

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"mv_outside_frame: "
	.size	.L.str.38, 19

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"sac_coding: "
	.size	.L.str.39, 13

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"adv_pred_mode: "
	.size	.L.str.40, 16

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"PB-coded: "
	.size	.L.str.41, 11

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"QUANT: "
	.size	.L.str.42, 8

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"TRB: "
	.size	.L.str.43, 6

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"BQUANT: "
	.size	.L.str.44, 9

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"PEI: "
	.size	.L.str.45, 6

	.type	.Lswitch.table.CountBitsMB,@object # @switch.table.CountBitsMB
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.CountBitsMB:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	.Lswitch.table.CountBitsMB, 20

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
