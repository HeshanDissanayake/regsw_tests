	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"pred.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Predict_P                       # -- Begin function Predict_P
	.p2align	2
	.type	Predict_P,@function
Predict_P:                              # @Predict_P
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	sd	s6, 1968(sp)                    # 8-byte Folded Spill
	sd	s7, 1960(sp)                    # 8-byte Folded Spill
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	addi	sp, sp, -144
	mv	s6, a6
	mv	s7, a5
	mv	s2, a4
	mv	s3, a3
	mv	s5, a2
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	mv	s1, a0
	li	a0, 1536
	call	malloc
	slli	a1, s3, 1
	srli	a1, a1, 60
	add	a1, s3, a1
	sraiw	a1, a1, 4
	slli	a2, s2, 1
	srli	a2, a2, 60
	addw	a2, s2, a2
	srli	a2, a2, 4
	li	a3, 720
	mul	a2, a2, a3
	slli	a1, a1, 3
	add	a2, a2, s7
	add	a1, a2, a1
	ld	s0, 728(a1)
	lui	a2, 13
	add	a2, a1, a2
	ld	s8, 40(a2)
	lui	a2, 26
	add	a2, a1, a2
	ld	s10, -648(a2)
	lui	a2, 39
	add	a2, a1, a2
	ld	s9, -1336(a2)
	lui	a2, 52
	add	a1, a1, a2
	ld	s11, -2024(a1)
	ld	a2, 0(s1)
	mv	s4, a0
	addi	a3, sp, 1048
	mv	a0, s3
	mv	a1, s2
	call	FindMB
	lui	a0, %hi(advanced)
	lw	a0, %lo(advanced)(a0)
	beqz	a0, .LBB0_2
# %bb.1:
	addi	a4, sp, 24
	mv	a0, s3
	mv	a1, s2
	mv	a2, s7
	mv	a3, s5
	li	a5, 0
	mv	a6, s6
	call	FindPredOBMC
	addi	a4, sp, 56
	li	a5, 1
	mv	a0, s3
	mv	a1, s2
	mv	a2, s7
	mv	a3, s5
	mv	a6, s6
	call	FindPredOBMC
	addi	a4, sp, 536
	li	a5, 2
	mv	a0, s3
	mv	a1, s2
	mv	a2, s7
	mv	a3, s5
	mv	a6, s6
	call	FindPredOBMC
	addi	a4, sp, 568
	li	a5, 3
	mv	a0, s3
	mv	a1, s2
	mv	a2, s7
	mv	a3, s5
	mv	a6, s6
	call	FindPredOBMC
	j	.LBB0_6
.LBB0_2:
	lui	a0, %hi(mv_outside_frame)
	lw	a1, %lo(mv_outside_frame)(a0)
	lui	a0, %hi(pels)
	lui	a2, %hi(long_vectors)
	lw	a3, %lo(long_vectors)(a2)
	lw	a0, %lo(pels)(a0)
	seqz	a1, a1
	li	a2, 32
	beqz	a3, .LBB0_4
# %bb.3:
	li	a2, 64
.LBB0_4:
	addi	a1, a1, -1
	and	a1, a1, a2
	lw	a2, 0(s0)
	lw	a3, 8(s0)
	add	a4, a1, a0
	lw	a1, 4(s0)
	addw	a0, a2, s3
	add	s5, s5, a3
	lw	a2, 12(s0)
	slli	a0, a0, 1
	add	a1, a1, s2
	slli	a1, a1, 1
	add	a1, a2, a1
	mul	a1, a4, a1
	slliw	a1, a1, 1
	slli	a2, a4, 2
	addi	a3, sp, 56
	addi	a4, sp, 1080
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	add	a5, s5, a1
	add	a5, a5, a0
	lbu	a6, 0(a5)
	lbu	a7, 2(a5)
	lbu	t0, 4(a5)
	lbu	t1, 6(a5)
	sw	a6, -32(a3)
	sw	a7, -28(a3)
	sw	t0, -24(a3)
	sw	t1, -20(a3)
	lbu	a6, 8(a5)
	lbu	a7, 10(a5)
	lbu	t0, 12(a5)
	lbu	t1, 14(a5)
	sw	a6, -16(a3)
	sw	a7, -12(a3)
	sw	t0, -8(a3)
	sw	t1, -4(a3)
	lbu	a6, 16(a5)
	lbu	a7, 18(a5)
	lbu	t0, 20(a5)
	lbu	t1, 22(a5)
	sw	a6, 0(a3)
	sw	a7, 4(a3)
	sw	t0, 8(a3)
	sw	t1, 12(a3)
	lbu	a6, 24(a5)
	lbu	a7, 26(a5)
	lbu	t0, 28(a5)
	lbu	a5, 30(a5)
	sw	a6, 16(a3)
	sw	a7, 20(a3)
	sw	t0, 24(a3)
	sw	a5, 28(a3)
	addi	a3, a3, 64
	addw	a1, a1, a2
	bne	a3, a4, .LBB0_5
.LBB0_6:
	lw	a0, 20(s0)
	li	a1, 2
	bgeu	a0, a1, .LBB0_12
# %bb.7:
	addi	a0, sp, 56
	addi	a1, sp, 1080
	addi	a2, s4, 32
	addi	a3, sp, 1080
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lw	a4, -32(a1)
	lw	a5, -32(a0)
	lw	a6, -28(a1)
	lw	a7, -28(a0)
	subw	a4, a4, a5
	sw	a4, -32(a2)
	subw	a4, a6, a7
	lw	a5, -24(a1)
	lw	a6, -24(a0)
	lw	a7, -20(a1)
	lw	t0, -20(a0)
	sw	a4, -28(a2)
	subw	a4, a5, a6
	sw	a4, -24(a2)
	subw	a4, a7, t0
	lw	a5, -16(a1)
	lw	a6, -16(a0)
	lw	a7, -12(a1)
	lw	t0, -12(a0)
	sw	a4, -20(a2)
	subw	a4, a5, a6
	sw	a4, -16(a2)
	subw	a4, a7, t0
	lw	a5, -8(a1)
	lw	a6, -8(a0)
	lw	a7, -4(a1)
	lw	t0, -4(a0)
	sw	a4, -12(a2)
	subw	a4, a5, a6
	sw	a4, -8(a2)
	subw	a4, a7, t0
	lw	a5, 0(a1)
	lw	a6, 0(a0)
	lw	a7, 4(a1)
	lw	t0, 4(a0)
	sw	a4, -4(a2)
	subw	a4, a5, a6
	sw	a4, 0(a2)
	subw	a4, a7, t0
	lw	a5, 8(a1)
	lw	a6, 8(a0)
	lw	a7, 12(a1)
	lw	t0, 12(a0)
	sw	a4, 4(a2)
	subw	a4, a5, a6
	sw	a4, 8(a2)
	subw	a4, a7, t0
	lw	a5, 16(a1)
	lw	a6, 16(a0)
	lw	a7, 20(a1)
	lw	t0, 20(a0)
	sw	a4, 12(a2)
	subw	a4, a5, a6
	sw	a4, 16(a2)
	subw	a4, a7, t0
	lw	a5, 24(a1)
	lw	a6, 24(a0)
	lw	a7, 28(a1)
	lw	t0, 28(a0)
	sw	a4, 20(a2)
	subw	a4, a5, a6
	sw	a4, 24(a2)
	subw	a4, a7, t0
	sw	a4, 28(a2)
	addi	a0, a0, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	bne	a0, a3, .LBB0_8
# %bb.9:
	lw	a0, 0(s0)
	lw	a1, 8(s0)
	lw	a2, 4(s0)
	lw	a3, 12(s0)
	slli	a0, a0, 1
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a3, a2, a3
	andi	a1, a0, 3
	snez	a1, a1
	sraiw	a2, a0, 1
	or	a2, a2, a1
	andi	a0, a3, 3
	snez	a0, a0
	sraiw	a3, a3, 1
	or	a3, a3, a0
.LBB0_10:
	mv	a0, s3
	mv	a1, s2
	mv	a4, s1
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	mv	a6, s4
	call	DoPredChrom_P
.LBB0_11:
	mv	a0, s4
	addi	sp, sp, 144
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.LBB0_12:
	bne	a0, a1, .LBB0_19
# %bb.13:                               # %.preheader
	addi	a0, sp, 56
	addi	a1, sp, 1080
	addi	a2, s4, 32
	addi	a3, sp, 1080
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	lw	a4, -32(a1)
	lw	a5, -32(a0)
	lw	a6, -28(a1)
	lw	a7, -28(a0)
	subw	a4, a4, a5
	sw	a4, -32(a2)
	subw	a4, a6, a7
	lw	a5, -24(a1)
	lw	a6, -24(a0)
	lw	a7, -20(a1)
	lw	t0, -20(a0)
	sw	a4, -28(a2)
	subw	a4, a5, a6
	sw	a4, -24(a2)
	subw	a4, a7, t0
	lw	a5, -16(a1)
	lw	a6, -16(a0)
	lw	a7, -12(a1)
	lw	t0, -12(a0)
	sw	a4, -20(a2)
	subw	a4, a5, a6
	sw	a4, -16(a2)
	subw	a4, a7, t0
	lw	a5, -8(a1)
	lw	a6, -8(a0)
	lw	a7, -4(a1)
	lw	t0, -4(a0)
	sw	a4, -12(a2)
	subw	a4, a5, a6
	sw	a4, -8(a2)
	subw	a4, a7, t0
	lw	a5, 0(a1)
	lw	a6, 0(a0)
	lw	a7, 4(a1)
	lw	t0, 4(a0)
	sw	a4, -4(a2)
	subw	a4, a5, a6
	sw	a4, 0(a2)
	subw	a4, a7, t0
	lw	a5, 8(a1)
	lw	a6, 8(a0)
	lw	a7, 12(a1)
	lw	t0, 12(a0)
	sw	a4, 4(a2)
	subw	a4, a5, a6
	sw	a4, 8(a2)
	subw	a4, a7, t0
	lw	a5, 16(a1)
	lw	a6, 16(a0)
	lw	a7, 20(a1)
	lw	t0, 20(a0)
	sw	a4, 12(a2)
	subw	a4, a5, a6
	sw	a4, 16(a2)
	subw	a4, a7, t0
	lw	a5, 24(a1)
	lw	a6, 24(a0)
	lw	a7, 28(a1)
	lw	t0, 28(a0)
	sw	a4, 20(a2)
	subw	a4, a5, a6
	sw	a4, 24(a2)
	subw	a4, a7, t0
	sw	a4, 28(a2)
	addi	a0, a0, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	bne	a0, a3, .LBB0_14
# %bb.15:
	lw	a0, 0(s8)
	lw	a1, 8(s8)
	lw	a2, 0(s10)
	lw	a3, 8(s10)
	lw	a4, 0(s9)
	lw	a5, 0(s11)
	lw	a6, 8(s9)
	lw	a7, 8(s11)
	add	a0, a2, a0
	add	a4, a4, a5
	add	a0, a0, a4
	slli	a0, a0, 1
	add	a1, a3, a1
	add	a6, a6, a7
	add	a1, a1, a6
	addw	a3, a1, a0
	sraiw	a0, a3, 31
	xor	a1, a3, a0
	sub	a1, a1, a0
	andi	a0, a1, 15
	slli	a2, a0, 2
	lui	a0, %hi(roundtab)
	addi	a0, a0, %lo(roundtab)
	add	a2, a0, a2
	lw	a2, 0(a2)
	srli	a4, a1, 3
	lui	a1, 65536
	addi	a1, a1, -2
	and	a4, a4, a1
	addw	a2, a4, a2
	bgez	a3, .LBB0_17
# %bb.16:
	negw	a2, a2
.LBB0_17:
	lw	a3, 4(s8)
	lw	a4, 12(s8)
	lw	a5, 4(s10)
	lw	a6, 12(s10)
	lw	a7, 4(s9)
	lw	t0, 4(s11)
	lw	t1, 12(s9)
	lw	t2, 12(s11)
	add	a3, a5, a3
	add	a7, a7, t0
	add	a3, a3, a7
	slli	a3, a3, 1
	add	a4, a6, a4
	add	t1, t1, t2
	add	a4, a4, t1
	addw	a4, a4, a3
	sraiw	a3, a4, 31
	xor	a5, a4, a3
	sub	a5, a5, a3
	andi	a3, a5, 15
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	srli	a5, a5, 3
	and	a1, a5, a1
	addw	a3, a1, a0
	bgez	a4, .LBB0_10
# %bb.18:
	negw	a3, a3
	j	.LBB0_10
.LBB0_19:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 35
	li	a2, 1
	call	fwrite
	j	.LBB0_11
.Lfunc_end0:
	.size	Predict_P, .Lfunc_end0-Predict_P
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindPredOBMC                    # -- Begin function FindPredOBMC
	.p2align	2
	.type	FindPredOBMC,@function
FindPredOBMC:                           # @FindPredOBMC
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	slli	a7, a0, 1
	srli	a7, a7, 60
	add	a7, a0, a7
	sraiw	n3, a7, 4
	addi	a7, n3, 1
	slli	t0, a1, 1
	srli	t0, t0, 60
	add	t0, a1, t0
	lui	t1, %hi(long_vectors)
	lw	t3, %lo(long_vectors)(t1)
	sraiw	n2, t0, 4
	lui	t2, %hi(mv_outside_frame)
	lui	t4, %hi(pels)
	li	t1, 32
	beqz	t3, .LBB1_2
# %bb.1:
	li	t1, 64
.LBB1_2:
	slli	t0, a7, 3
	li	t3, 720
	mul	n1, n2, t3
	add	n1, a2, n1
	addi	t5, n1, 720
	add	t3, t5, t0
	ld	t6, 0(t3)
	lw	t3, %lo(mv_outside_frame)(t2)
	lw	t2, %lo(pels)(t4)
	lw	t6, 20(t6)
	slli	t4, n3, 3
	add	t4, t5, t4
	ld	n4, 0(t4)
	addi	n6, n3, 2
	slli	t4, n6, 3
	add	t4, t5, t4
	ld	n5, 0(t4)
	addi	t4, n2, 1
	lw	n8, 20(n4)
	addi	t5, t6, -2
	lw	n7, 20(n5)
	seqz	t6, t5
	addiw	n4, n8, -3
	sltiu	n5, n4, 2
	addiw	n4, n7, -3
	sltiu	n10, n4, 2
	seqz	n4, a6
	and	n9, n4, n5
	li	a6, 1
	and	n5, n4, n10
	blt	a6, a5, .LBB1_14
# %bb.3:
	add	n1, n1, t0
	ld	a6, 0(n1)
	lw	a6, 20(a6)
	addiw	n1, a6, -3
	sltiu	n1, n1, 2
	and	n4, n4, n1
	beqz	a5, .LBB1_19
# %bb.4:
	li	n1, 1
	bne	a5, n1, .LBB1_38
# %bb.5:
	mv	n1, t4
	bnez	n4, .LBB1_7
# %bb.6:
	mv	n1, n2
.LBB1_7:
	seqz	n2, t5
	addiw	n3, a1, 15
	li	n9, 31
	sltiu	n8, n3, 31
	bgeu	n3, n9, .LBB1_9
# %bb.8:
	li	n1, 1
.LBB1_9:
	slli	n3, n2, 1
	or	n8, n8, n4
	mv	n4, n3
	bnez	n8, .LBB1_11
# %bb.10:
	addi	a6, a6, -2
	seqz	n4, a6
	slli	n4, n4, 2
.LBB1_11:
	sraiw	a6, t2, 31
	srliw	a6, a6, 28
	add	a6, t2, a6
	sraiw	a6, a6, 4
	xor	a6, a7, a6
	seqz	a6, a6
	or	a6, a6, n5
	mv	n5, a7
	bnez	a6, .LBB1_13
# %bb.12:
	addi	n7, n7, -2
	seqz	n3, n7
	mv	n5, n6
.LBB1_13:
	slli	n2, n2, 2
	j	.LBB1_35
.LBB1_14:
	li	a6, 2
	beq	a5, a6, .LBB1_29
# %bb.15:
	li	a6, 3
	bne	a5, a6, .LBB1_38
# %bb.16:
	seqz	n4, t5
	slli	n2, n4, 2
	sraiw	a6, t2, 31
	srliw	a6, a6, 28
	add	a6, t2, a6
	sraiw	a6, a6, 4
	xor	a6, a7, a6
	seqz	a6, a6
	or	a6, a6, n5
	negw	t6, n4
	mv	n5, a7
	mv	n3, n2
	bnez	a6, .LBB1_18
# %bb.17:
	addi	n7, n7, -2
	snez	a6, n7
	addi	a6, a6, -1
	andi	n3, a6, 3
	mv	n5, n6
.LBB1_18:
	slli	n4, n4, 1
	andi	t6, t6, 3
	mv	n1, t4
	j	.LBB1_35
.LBB1_19:
	mv	n1, t4
	bnez	n4, .LBB1_21
# %bb.20:
	mv	n1, n2
.LBB1_21:
	mv	n7, a7
	mv	n6, t6
	bnez	n9, .LBB1_23
# %bb.22:
	addi	n8, n8, -2
	seqz	n6, n8
	slli	n6, n6, 1
	mv	n7, n3
.LBB1_23:
	seqz	n3, t5
	addiw	n5, a1, 15
	li	n8, 31
	sltiu	n2, n5, 31
	bgeu	n5, n8, .LBB1_25
# %bb.24:
	li	n1, 1
.LBB1_25:
	or	n5, n2, n4
	negw	n2, n3
	mv	n4, t6
	bnez	n5, .LBB1_27
# %bb.26:
	addi	a6, a6, -2
	snez	a6, a6
	addi	a6, a6, -1
	andi	n4, a6, 3
.LBB1_27:
	andi	n2, n2, 3
	addiw	a6, a0, 15
	li	n5, 30
	slli	n3, n3, 1
	bltu	n5, a6, .LBB1_33
# %bb.28:
	li	n5, 1
	li	a7, 1
	j	.LBB1_35
.LBB1_29:
	seqz	n1, t5
	negw	a6, n1
	andi	n2, a6, 3
	mv	n4, a7
	mv	a6, n2
	bnez	n9, .LBB1_31
# %bb.30:
	addi	n8, n8, -2
	seqz	a6, n8
	slli	a6, a6, 2
	mv	n4, n3
.LBB1_31:
	addiw	n5, a0, 15
	li	n6, 30
	slli	n3, n1, 2
	bltu	n6, n5, .LBB1_34
# %bb.32:
	li	n5, 1
	li	a7, 1
	mv	n1, t4
	mv	n4, t6
	mv	t6, n2
	j	.LBB1_35
.LBB1_33:
	mv	n5, a7
	mv	a7, n7
	mv	t6, n6
	j	.LBB1_35
.LBB1_34:
	mv	n5, a7
	mv	a7, n4
	mv	n1, t4
	mv	n4, t6
	mv	t6, a6
.LBB1_35:
	li	a6, 0
	seqz	t3, t3
	addi	t3, t3, -1
	and	t1, t3, t1
	add	n6, t2, t1
	addiw	t1, a5, 1
	snez	t2, t5
	addi	t2, t2, -1
	and	t1, t2, t1
	li	t2, 720
	mul	t3, t4, t2
	lui	t4, 13
	addiw	t4, t4, -688
	mul	t1, t1, t4
	add	t5, a2, t3
	add	t5, t5, t0
	add	t1, t5, t1
	ld	t1, 0(t1)
	mul	t2, n1, t2
	mul	t5, n4, t4
	add	t2, a2, t2
	add	t2, t2, t0
	add	t2, t2, t5
	ld	t2, 0(t2)
	mul	t5, n2, t4
	add	n1, a2, t3
	add	t0, n1, t0
	add	t0, t0, t5
	ld	t0, 0(t0)
	mul	t5, n3, t4
	add	n1, a2, t3
	slli	n5, n5, 3
	add	n1, n1, n5
	add	t5, n1, t5
	ld	t5, 0(t5)
	mul	t4, t6, t4
	add	a2, a2, t3
	slli	a7, a7, 3
	add	a2, a2, a7
	add	a2, a2, t4
	ld	a2, 0(a2)
	slli	a0, a0, 1
	slli	a7, a5, 4
	andi	a7, a7, 16
	add	a0, a7, a0
	slli	t4, a1, 1
	lw	a1, 0(t1)
	lw	a7, 8(t1)
	slli	a5, a5, 3
	andi	t6, a5, 16
	slli	a1, a1, 1
	add	a7, a7, a0
	lw	a5, 4(t1)
	addw	a1, a7, a1
	lw	a7, 0(t2)
	lw	t3, 8(t2)
	slli	n1, a5, 1
	lw	t1, 12(t1)
	slli	a7, a7, 1
	add	t3, t3, a0
	lw	a5, 4(t2)
	addw	a7, t3, a7
	lw	t3, 0(t0)
	lw	n2, 8(t0)
	slli	n3, a5, 1
	lw	t2, 12(t2)
	slli	t3, t3, 1
	add	n2, n2, a0
	lw	a5, 0(t5)
	lw	n4, 8(t5)
	addw	t3, n2, t3
	lw	n2, 4(t0)
	slli	a5, a5, 1
	add	n4, n4, a0
	lw	n5, 8(a2)
	addw	a5, n4, a5
	lw	n4, 0(a2)
	slli	n2, n2, 1
	add	a0, n5, a0
	lw	n5, 4(t5)
	slli	n4, n4, 1
	addw	n4, a0, n4
	lw	a0, 4(a2)
	lw	n7, 12(t0)
	slli	n5, n5, 1
	lw	t5, 12(t5)
	slli	n8, a0, 1
	lw	n9, 12(a2)
	add	a0, a3, a1
	add	a1, a3, a7
	add	a2, a3, t3
	add	a5, a3, a5
	add	a3, a3, n4
	add	t1, t1, t6
	add	t1, t1, n1
	add	t1, t1, t4
	mul	a7, t1, n6
	slliw	a7, a7, 1
	slli	t0, n6, 2
	add	t2, t2, t6
	add	t2, t2, n3
	add	t2, t2, t4
	mul	t1, t2, n6
	slliw	t1, t1, 1
	add	n7, n7, t6
	add	n2, n7, n2
	add	n2, n2, t4
	mul	t2, n2, n6
	slliw	t2, t2, 1
	add	t5, t5, t6
	add	t5, t5, n5
	add	t5, t5, t4
	mul	t3, t5, n6
	slliw	t3, t3, 1
	add	t6, n9, t6
	add	t6, t6, n8
	add	t4, t6, t4
	mul	t4, t4, n6
	slliw	t4, t4, 1
	addi	a4, a4, 16
	lui	t5, %hi(.L__const.FindPredOBMC.Mc)
	addi	t5, t5, %lo(.L__const.FindPredOBMC.Mc)
	lui	t6, %hi(.L__const.FindPredOBMC.Mt)
	addi	t6, t6, %lo(.L__const.FindPredOBMC.Mt)
	lui	n1, %hi(.L__const.FindPredOBMC.Mb)
	addi	n1, n1, %lo(.L__const.FindPredOBMC.Mb)
	lui	n2, %hi(.L__const.FindPredOBMC.Mr)
	addi	n2, n2, %lo(.L__const.FindPredOBMC.Mr)
	lui	n3, %hi(.L__const.FindPredOBMC.Ml)
	addi	n3, n3, %lo(.L__const.FindPredOBMC.Ml)
	li	n4, 256
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	add	n7, a0, a7
	add	n5, a1, t1
	lbu	n11, 0(n7)
	add	n10, t5, a6
	lw	n12, 0(n10)
	add	n9, a2, t2
	add	n8, a5, t3
	add	n6, a3, t4
	mul	n15, n12, n11
	lbu	n16, 0(n5)
	add	n11, t6, a6
	lw	n17, 0(n11)
	lbu	n18, 0(n9)
	add	n12, n1, a6
	lw	n19, 0(n12)
	lbu	n20, 0(n8)
	add	n13, n2, a6
	lw	n21, 0(n13)
	lbu	n22, 0(n6)
	add	n14, n3, a6
	lw	n23, 0(n14)
	mul	n16, n17, n16
	mul	n17, n19, n18
	mul	n18, n21, n20
	mul	n19, n23, n22
	add	n15, n15, n16
	add	n17, n17, n18
	add	n15, n15, n17
	add	n15, n15, n19
	addi	n15, n15, 4
	sraiw	n15, n15, 3
	sw	n15, -16(a4)
	lbu	n15, 2(n7)
	lw	n16, 4(n10)
	mul	n15, n16, n15
	lbu	n16, 2(n5)
	lw	n17, 4(n11)
	lbu	n18, 2(n9)
	lw	n19, 4(n12)
	lbu	n20, 2(n8)
	lw	n21, 4(n13)
	lbu	n22, 2(n6)
	lw	n23, 4(n14)
	mul	n16, n17, n16
	mul	n17, n19, n18
	mul	n18, n21, n20
	mul	n19, n23, n22
	add	n15, n15, n16
	add	n17, n17, n18
	add	n15, n15, n17
	add	n15, n15, n19
	addi	n15, n15, 4
	sraiw	n15, n15, 3
	sw	n15, -12(a4)
	lbu	n15, 4(n7)
	lw	n16, 8(n10)
	mul	n15, n16, n15
	lbu	n16, 4(n5)
	lw	n17, 8(n11)
	lbu	n18, 4(n9)
	lw	n19, 8(n12)
	lbu	n20, 4(n8)
	lw	n21, 8(n13)
	lbu	n22, 4(n6)
	lw	n23, 8(n14)
	mul	n16, n17, n16
	mul	n17, n19, n18
	mul	n18, n21, n20
	mul	n19, n23, n22
	add	n15, n15, n16
	add	n17, n17, n18
	add	n15, n15, n17
	add	n15, n15, n19
	addi	n15, n15, 4
	sraiw	n15, n15, 3
	sw	n15, -8(a4)
	lbu	n15, 6(n7)
	lw	n16, 12(n10)
	mul	n15, n16, n15
	lbu	n16, 6(n5)
	lw	n17, 12(n11)
	lbu	n18, 6(n9)
	lw	n19, 12(n12)
	lbu	n20, 6(n8)
	lw	n21, 12(n13)
	lbu	n22, 6(n6)
	lw	n23, 12(n14)
	mul	n16, n17, n16
	mul	n17, n19, n18
	mul	n18, n21, n20
	mul	n19, n23, n22
	add	n15, n15, n16
	add	n17, n17, n18
	add	n15, n15, n17
	add	n15, n15, n19
	addi	n15, n15, 4
	sraiw	n15, n15, 3
	sw	n15, -4(a4)
	lbu	n15, 8(n7)
	lw	n16, 16(n10)
	mul	n15, n16, n15
	lbu	n16, 8(n5)
	lw	n17, 16(n11)
	lbu	n18, 8(n9)
	lw	n19, 16(n12)
	lbu	n20, 8(n8)
	lw	n21, 16(n13)
	lbu	n22, 8(n6)
	lw	n23, 16(n14)
	mul	n16, n17, n16
	mul	n17, n19, n18
	mul	n18, n21, n20
	mul	n19, n23, n22
	add	n15, n15, n16
	add	n17, n17, n18
	add	n15, n15, n17
	add	n15, n15, n19
	addi	n15, n15, 4
	sraiw	n15, n15, 3
	sw	n15, 0(a4)
	lbu	n15, 10(n7)
	lw	n16, 20(n10)
	mul	n15, n16, n15
	lbu	n16, 10(n5)
	lw	n17, 20(n11)
	lbu	n18, 10(n9)
	lw	n19, 20(n12)
	lbu	n20, 10(n8)
	lw	n21, 20(n13)
	lbu	n22, 10(n6)
	lw	n23, 20(n14)
	mul	n16, n17, n16
	mul	n17, n19, n18
	mul	n18, n21, n20
	mul	n19, n23, n22
	add	n15, n15, n16
	add	n17, n17, n18
	add	n15, n15, n17
	add	n15, n15, n19
	addi	n15, n15, 4
	sraiw	n15, n15, 3
	sw	n15, 4(a4)
	lbu	n15, 12(n7)
	lw	n16, 24(n10)
	mul	n15, n16, n15
	lbu	n16, 12(n5)
	lw	n17, 24(n11)
	lbu	n18, 12(n9)
	lw	n19, 24(n12)
	lbu	n20, 12(n8)
	lw	n21, 24(n13)
	lbu	n22, 12(n6)
	lw	n23, 24(n14)
	mul	n16, n17, n16
	mul	n17, n19, n18
	mul	n18, n21, n20
	mul	n19, n23, n22
	add	n15, n15, n16
	add	n17, n17, n18
	add	n15, n15, n17
	add	n15, n15, n19
	addi	n15, n15, 4
	sraiw	n15, n15, 3
	sw	n15, 8(a4)
	lbu	n7, 14(n7)
	lw	n10, 28(n10)
	mul	n7, n10, n7
	lbu	n5, 14(n5)
	lw	n10, 28(n11)
	lbu	n9, 14(n9)
	lw	n11, 28(n12)
	lbu	n8, 14(n8)
	lw	n12, 28(n13)
	lbu	n6, 14(n6)
	lw	n13, 28(n14)
	mul	n5, n10, n5
	mul	n9, n11, n9
	mul	n8, n12, n8
	mul	n6, n13, n6
	add	n5, n7, n5
	add	n8, n9, n8
	add	n5, n5, n8
	add	n5, n5, n6
	addi	n5, n5, 4
	sraiw	n5, n5, 3
	sw	n5, 12(a4)
	addi	a6, a6, 32
	addw	a7, a7, t0
	addw	t1, t1, t0
	addw	t2, t2, t0
	addw	t3, t3, t0
	addw	t4, t4, t0
	addi	a4, a4, 64
	bne	a6, n4, .LBB1_36
# %bb.37:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB1_38:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 46
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end1:
	.size	FindPredOBMC, .Lfunc_end1-FindPredOBMC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindPred                        # -- Begin function FindPred
	.p2align	2
	.type	FindPred,@function
FindPred:                               # @FindPred
# %bb.0:
	blez	a5, .LBB2_7
# %bb.1:
	lui	a7, %hi(mv_outside_frame)
	lw	a7, %lo(mv_outside_frame)(a7)
	lui	t0, %hi(pels)
	lui	t1, %hi(long_vectors)
	lw	t3, %lo(long_vectors)(t1)
	lw	t0, %lo(pels)(t0)
	seqz	t1, a7
	li	t2, 32
	beqz	t3, .LBB2_3
# %bb.2:
	li	t2, 64
.LBB2_3:
	li	a7, 0
	addi	t1, t1, -1
	and	t1, t1, t2
	add	t0, t0, t1
	slli	t1, a6, 2
	andi	t1, t1, 8
	slli	a6, a6, 3
	lw	t2, 0(a2)
	andi	a6, a6, 8
	lw	t3, 4(a2)
	add	a0, a6, a0
	addw	a6, a0, t2
	slli	a0, t0, 1
	add	a1, a1, t1
	add	a1, t3, a1
	slli	a1, a1, 1
	slli	a6, a6, 1
	add	a3, a3, a6
	slli	a6, a5, 2
	mv	t0, a4
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	slli	t1, a7, 6
	add	t1, a6, t1
	add	t1, a4, t1
	mv	t2, a3
	mv	t3, t0
.LBB2_5:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t4, 12(a2)
	lw	t5, 8(a2)
	add	t4, a1, t4
	mulw	t4, a0, t4
	add	t5, t2, t5
	add	t4, t5, t4
	lbu	t4, 0(t4)
	sw	t4, 0(t3)
	addi	t3, t3, 4
	addi	t2, t2, 2
	bne	t3, t1, .LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	addi	a7, a7, 1
	addi	t0, t0, 64
	addi	a1, a1, 2
	bne	a7, a5, .LBB2_4
.LBB2_7:
	ret
.Lfunc_end2:
	.size	FindPred, .Lfunc_end2-FindPred
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	DoPredChrom_P                   # -- Begin function DoPredChrom_P
	.p2align	2
	.type	DoPredChrom_P,@function
DoPredChrom_P:                          # @DoPredChrom_P
# %bb.0:
	lui	a7, %hi(mv_outside_frame)
	lw	a7, %lo(mv_outside_frame)(a7)
	lui	t0, %hi(pels)
	lw	t0, %lo(pels)(t0)
	seqz	a7, a7
	lui	t1, %hi(long_vectors)
	lw	t2, %lo(long_vectors)(t1)
	srliw	t1, t0, 31
	add	t0, t0, t1
	sraiw	t0, t0, 1
	li	t1, 16
	beqz	t2, .LBB3_2
# %bb.1:
	li	t1, 32
.LBB3_2:
	addi	a7, a7, -1
	and	a7, a7, t1
	add	a7, t0, a7
	srai	t0, a0, 1
	srai	a1, a1, 1
	srai	a0, a2, 1
	or	t1, a3, a2
	andi	t1, t1, 1
	srai	n7, a3, 1
	bnez	t1, .LBB3_5
# %bb.3:
	add	n5, a0, t0
	ld	a0, 8(a4)
	add	n7, n7, a1
	ld	a2, 16(a4)
	ld	n6, 8(a5)
	add	a0, a0, t0
	ld	n8, 16(a5)
	add	a2, a2, t0
	addi	a3, a0, 1
	addi	a4, a2, 1
	addi	a5, a0, 2
	addi	t0, a2, 2
	addi	t1, a0, 3
	addi	t2, a2, 3
	addi	t3, a0, 4
	addi	t4, a2, 4
	addi	t5, a0, 5
	addi	t6, a2, 5
	addi	n1, a0, 6
	addi	n2, a2, 6
	addi	n3, a0, 7
	addi	n4, a2, 7
	mul	n7, n7, a7
	add	n5, n7, n5
	addi	n7, n5, 3
	add	n5, n6, n7
	add	n6, n8, n7
	addi	a6, a6, 1308
	addi	n7, a1, 8
	lui	n8, %hi(cpels)
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -3(n5)
	mul	n9, a1, n9
	add	n9, a0, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -284(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -3(n6)
	mul	n9, a1, n9
	add	n9, a2, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -28(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -2(n5)
	mul	n9, a1, n9
	add	n9, a3, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -280(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -2(n6)
	mul	n9, a1, n9
	add	n9, a4, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -24(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -1(n5)
	mul	n9, a1, n9
	add	n9, a5, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -276(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -1(n6)
	mul	n9, a1, n9
	add	n9, t0, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -20(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 0(n5)
	mul	n9, a1, n9
	add	n9, t1, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -272(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 0(n6)
	mul	n9, a1, n9
	add	n9, t2, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -16(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 1(n5)
	mul	n9, a1, n9
	add	n9, t3, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -268(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 1(n6)
	mul	n9, a1, n9
	add	n9, t4, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -12(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 2(n5)
	mul	n9, a1, n9
	add	n9, t5, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -264(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 2(n6)
	mul	n9, a1, n9
	add	n9, t6, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -8(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 3(n5)
	mul	n9, a1, n9
	add	n9, n1, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -260(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 3(n6)
	mul	n9, a1, n9
	add	n9, n2, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -4(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 4(n5)
	mul	n9, a1, n9
	add	n9, n3, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, -256(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 4(n6)
	mul	n9, a1, n9
	add	n9, n4, n9
	lbu	n9, 0(n9)
	subw	n9, n9, n10
	sw	n9, 0(a6)
	add	n5, n5, a7
	add	n6, n6, a7
	addi	a1, a1, 1
	addi	a6, a6, 32
	bne	a1, n7, .LBB3_4
	j	.LBB3_17
.LBB3_5:
	andi	t1, a2, 1
	andi	t2, a3, 1
	bnez	t1, .LBB3_9
# %bb.6:
	beqz	t2, .LBB3_9
# %bb.7:
	add	a0, a0, t0
	ld	a2, 8(a4)
	add	n8, n7, a1
	ld	a3, 16(a4)
	ld	n9, 8(a5)
	add	a2, a2, t0
	ld	n10, 16(a5)
	add	a3, a3, t0
	addi	a4, a2, 1
	addi	a5, a3, 1
	addi	t0, a2, 2
	addi	t1, a3, 2
	addi	t2, a2, 3
	addi	t3, a3, 3
	addi	t4, a2, 4
	addi	t5, a3, 4
	addi	t6, a2, 5
	addi	n1, a3, 5
	addi	n2, a2, 6
	addi	n3, a3, 6
	addi	n4, a2, 7
	addi	n5, a3, 7
	mul	n6, n8, a7
	addi	n7, n6, 7
	add	n6, n9, n7
	add	n7, n10, n7
	addi	n8, n8, 1
	mul	n8, n8, a7
	addi	n11, n8, 7
	add	n8, n9, n11
	add	n9, n10, n11
	addi	a6, a6, 1308
	addi	n10, a1, 8
	lui	n11, %hi(cpels)
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	add	n12, n6, a0
	lw	n13, %lo(cpels)(n11)
	lbu	n15, -7(n12)
	add	n14, n8, a0
	lbu	n16, -7(n14)
	mul	n13, a1, n13
	add	n13, a2, n13
	lbu	n13, 0(n13)
	add	n15, n15, n16
	addi	n15, n15, 1
	srli	n15, n15, 1
	subw	n13, n13, n15
	sw	n13, -284(a6)
	add	n13, n7, a0
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -7(n13)
	add	n15, n9, a0
	lbu	n18, -7(n15)
	mul	n16, a1, n16
	add	n16, a3, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -28(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -6(n12)
	lbu	n18, -6(n14)
	mul	n16, a1, n16
	add	n16, a4, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -280(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -6(n13)
	lbu	n18, -6(n15)
	mul	n16, a1, n16
	add	n16, a5, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -24(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -5(n12)
	lbu	n18, -5(n14)
	mul	n16, a1, n16
	add	n16, t0, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -276(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -5(n13)
	lbu	n18, -5(n15)
	mul	n16, a1, n16
	add	n16, t1, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -20(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -4(n12)
	lbu	n18, -4(n14)
	mul	n16, a1, n16
	add	n16, t2, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -272(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -4(n13)
	lbu	n18, -4(n15)
	mul	n16, a1, n16
	add	n16, t3, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -16(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -3(n12)
	lbu	n18, -3(n14)
	mul	n16, a1, n16
	add	n16, t4, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -268(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -3(n13)
	lbu	n18, -3(n15)
	mul	n16, a1, n16
	add	n16, t5, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -12(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -2(n12)
	lbu	n18, -2(n14)
	mul	n16, a1, n16
	add	n16, t6, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -264(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -2(n13)
	lbu	n18, -2(n15)
	mul	n16, a1, n16
	add	n16, n1, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -8(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -1(n12)
	lbu	n18, -1(n14)
	mul	n16, a1, n16
	add	n16, n2, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -260(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n17, -1(n13)
	lbu	n18, -1(n15)
	mul	n16, a1, n16
	add	n16, n3, n16
	lbu	n16, 0(n16)
	add	n17, n17, n18
	addi	n17, n17, 1
	srli	n17, n17, 1
	subw	n16, n16, n17
	sw	n16, -4(a6)
	lw	n16, %lo(cpels)(n11)
	lbu	n12, 0(n12)
	lbu	n14, 0(n14)
	mul	n16, a1, n16
	add	n16, n4, n16
	lbu	n16, 0(n16)
	add	n12, n12, n14
	addi	n12, n12, 1
	srli	n12, n12, 1
	subw	n12, n16, n12
	sw	n12, -256(a6)
	lw	n12, %lo(cpels)(n11)
	lbu	n13, 0(n13)
	lbu	n14, 0(n15)
	mul	n12, a1, n12
	add	n12, n5, n12
	lbu	n12, 0(n12)
	add	n13, n13, n14
	addi	n13, n13, 1
	srli	n13, n13, 1
	subw	n12, n12, n13
	sw	n12, 0(a6)
	add	n6, n6, a7
	add	n7, n7, a7
	add	n8, n8, a7
	add	n9, n9, a7
	addi	a1, a1, 1
	addi	a6, a6, 32
	bne	a1, n10, .LBB3_8
	j	.LBB3_17
.LBB3_9:
	ld	n5, 8(a5)
	add	n6, a0, t0
	add	n7, n7, a1
	beqz	t1, .LBB3_13
# %bb.10:
	bnez	t2, .LBB3_13
# %bb.11:
	ld	a0, 8(a4)
	ld	a2, 16(a4)
	add	a0, a0, t0
	ld	n8, 16(a5)
	add	a2, a2, t0
	addi	a3, a0, 1
	addi	a4, a2, 1
	addi	a5, a0, 2
	addi	t0, a2, 2
	addi	t1, a0, 3
	addi	t2, a2, 3
	addi	t3, a0, 4
	addi	t4, a2, 4
	addi	t5, a0, 5
	addi	t6, a2, 5
	addi	n1, a0, 6
	addi	n2, a2, 6
	addi	n3, a0, 7
	addi	n4, a2, 7
	mul	n7, n7, a7
	add	n6, n7, n6
	addi	n6, n6, 4
	add	n5, n5, n6
	add	n6, n8, n6
	addi	a6, a6, 1308
	addi	n7, a1, 8
	lui	n8, %hi(cpels)
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -4(n5)
	lbu	n11, -3(n5)
	mul	n9, a1, n9
	add	n9, a0, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -284(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -4(n6)
	lbu	n11, -3(n6)
	mul	n9, a1, n9
	add	n9, a2, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -28(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -3(n5)
	lbu	n11, -2(n5)
	mul	n9, a1, n9
	add	n9, a3, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -280(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -3(n6)
	lbu	n11, -2(n6)
	mul	n9, a1, n9
	add	n9, a4, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -24(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -2(n5)
	lbu	n11, -1(n5)
	mul	n9, a1, n9
	add	n9, a5, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -276(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -2(n6)
	lbu	n11, -1(n6)
	mul	n9, a1, n9
	add	n9, t0, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -20(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -1(n5)
	lbu	n11, 0(n5)
	mul	n9, a1, n9
	add	n9, t1, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -272(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, -1(n6)
	lbu	n11, 0(n6)
	mul	n9, a1, n9
	add	n9, t2, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -16(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 0(n5)
	lbu	n11, 1(n5)
	mul	n9, a1, n9
	add	n9, t3, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -268(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 0(n6)
	lbu	n11, 1(n6)
	mul	n9, a1, n9
	add	n9, t4, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -12(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 1(n5)
	lbu	n11, 2(n5)
	mul	n9, a1, n9
	add	n9, t5, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -264(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 1(n6)
	lbu	n11, 2(n6)
	mul	n9, a1, n9
	add	n9, t6, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -8(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 2(n5)
	lbu	n11, 3(n5)
	mul	n9, a1, n9
	add	n9, n1, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -260(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 2(n6)
	lbu	n11, 3(n6)
	mul	n9, a1, n9
	add	n9, n2, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -4(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 3(n5)
	lbu	n11, 4(n5)
	mul	n9, a1, n9
	add	n9, n3, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, -256(a6)
	lw	n9, %lo(cpels)(n8)
	lbu	n10, 3(n6)
	lbu	n11, 4(n6)
	mul	n9, a1, n9
	add	n9, n4, n9
	lbu	n9, 0(n9)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n9, n9, n10
	sw	n9, 0(a6)
	add	n5, n5, a7
	add	n6, n6, a7
	addi	a1, a1, 1
	addi	a6, a6, 32
	bne	a1, n7, .LBB3_12
	j	.LBB3_17
.LBB3_13:
	ld	a2, 8(a4)
	ld	a3, 16(a4)
	li	a0, 0
	add	a2, a2, t0
	ld	t3, 16(a5)
	add	a3, a3, t0
	addi	a4, a6, 1280
	mul	a5, n7, a7
	add	t4, a5, n6
	add	a5, n5, t4
	add	t2, n7, t2
	mul	a6, t2, a7
	add	n6, a6, n6
	add	a6, t3, n6
	add	t5, n6, t1
	add	t0, t3, t5
	add	t6, t4, t1
	add	t1, t3, t6
	add	t2, t3, t4
	add	t3, n5, n6
	add	t4, n5, t5
	add	t5, n5, t6
	lui	t6, %hi(cpels)
	li	n1, 8
.LBB3_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	li	n2, 0
	mv	n3, a4
.LBB3_15:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	n4, a5, n2
	lbu	n4, 0(n4)
	add	n5, t5, n2
	lbu	n5, 0(n5)
	add	n6, t3, n2
	lbu	n6, 0(n6)
	add	n7, t4, n2
	lbu	n7, 0(n7)
	lw	n8, %lo(cpels)(t6)
	add	n4, n4, n5
	add	n6, n6, n7
	mul	n5, a1, n8
	add	n5, n2, n5
	add	n5, a2, n5
	lbu	n5, 0(n5)
	add	n4, n4, n6
	addi	n4, n4, 2
	srli	n4, n4, 2
	subw	n4, n5, n4
	sw	n4, -256(n3)
	add	n4, t2, n2
	lbu	n4, 0(n4)
	add	n5, t1, n2
	lbu	n5, 0(n5)
	add	n6, a6, n2
	lbu	n6, 0(n6)
	add	n7, t0, n2
	lbu	n7, 0(n7)
	lw	n8, %lo(cpels)(t6)
	add	n4, n4, n5
	add	n6, n6, n7
	mul	n5, a1, n8
	add	n5, n2, n5
	add	n5, a3, n5
	lbu	n5, 0(n5)
	add	n4, n4, n6
	addi	n4, n4, 2
	srli	n4, n4, 2
	subw	n4, n5, n4
	sw	n4, 0(n3)
	addi	n2, n2, 1
	addi	n3, n3, 4
	bne	n2, n1, .LBB3_15
# %bb.16:                               #   in Loop: Header=BB3_14 Depth=1
	addi	a0, a0, 1
	add	a5, a5, a7
	addi	a1, a1, 1
	addi	a4, a4, 32
	add	a6, a6, a7
	add	t0, t0, a7
	add	t1, t1, a7
	add	t2, t2, a7
	add	t3, t3, a7
	add	t4, t4, a7
	add	t5, t5, a7
	bne	a0, n1, .LBB3_14
.LBB3_17:
	ret
.Lfunc_end3:
	.size	DoPredChrom_P, .Lfunc_end3-DoPredChrom_P
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Predict_B                       # -- Begin function Predict_B
	.p2align	2
	.type	Predict_B,@function
Predict_B:                              # @Predict_B
# %bb.0:
	addi	sp, sp, -1568
	sd	ra, 1560(sp)                    # 8-byte Folded Spill
	sd	s0, 1552(sp)                    # 8-byte Folded Spill
	sd	s1, 1544(sp)                    # 8-byte Folded Spill
	sd	s2, 1536(sp)                    # 8-byte Folded Spill
	sd	s3, 1528(sp)                    # 8-byte Folded Spill
	sd	s4, 1520(sp)                    # 8-byte Folded Spill
	sd	s5, 1512(sp)                    # 8-byte Folded Spill
	sd	s6, 1504(sp)                    # 8-byte Folded Spill
	sd	s7, 1496(sp)                    # 8-byte Folded Spill
	sd	s8, 1488(sp)                    # 8-byte Folded Spill
	sd	s9, 1480(sp)                    # 8-byte Folded Spill
	sd	s10, 1472(sp)                   # 8-byte Folded Spill
	sd	s11, 1464(sp)                   # 8-byte Folded Spill
	ld	t0, 1568(sp)
	sd	t0, 424(sp)                     # 8-byte Folded Spill
	sd	a7, 432(sp)                     # 8-byte Folded Spill
	mv	s4, a6
	mv	s1, a5
	mv	s7, a4
	mv	s2, a3
	sd	a2, 416(sp)                     # 8-byte Folded Spill
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	lui	a0, 65536
	addi	a0, a0, -2
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	li	a0, 1536
	call	malloc
	mv	s5, a0
	li	a0, 1536
	call	malloc
	slli	a1, s7, 1
	srli	a1, a1, 60
	add	a1, s7, a1
	sraiw	a1, a1, 4
	addi	a3, a1, 1
	slli	s6, s2, 1
	srli	a1, s6, 60
	add	a1, s2, a1
	sraiw	a1, a1, 4
	addi	a1, a1, 1
	li	a2, 720
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	mul	a2, a3, a2
	sd	s1, 112(sp)                     # 8-byte Folded Spill
	add	a2, s1, a2
	slli	a1, a1, 3
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	add	a2, a2, a1
	ld	s3, 0(a2)
	lui	a1, 13
	add	a1, a2, a1
	ld	a1, -688(a1)
	sd	a1, 344(sp)                     # 8-byte Folded Spill
	lui	a1, 26
	add	a1, a2, a1
	ld	a1, -1376(a1)
	sd	a1, 352(sp)                     # 8-byte Folded Spill
	lui	a1, 38
	add	a1, a2, a1
	ld	a1, 2032(a1)
	sd	a1, 360(sp)                     # 8-byte Folded Spill
	lui	a1, 51
	add	a1, a2, a1
	ld	a1, 1344(a1)
	sd	a1, 368(sp)                     # 8-byte Folded Spill
	sd	s0, 120(sp)                     # 8-byte Folded Spill
	ld	a2, 0(s0)
	mv	s1, a0
	addi	a3, sp, 440
	sd	s2, 152(sp)                     # 8-byte Folded Spill
	mv	a0, s2
	mv	a1, s7
	call	FindMB
	mv	t4, s6
	lw	a0, 20(s3)
	li	a1, 2
	addi	t1, s1, 1056
	addi	a3, s1, 1024
	addi	a2, s1, 512
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	addi	a2, s1, 544
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	slli	n3, s7, 1
	addi	a2, s4, 32
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	addi	a2, s4, 512
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	sd	s4, 88(sp)                      # 8-byte Folded Spill
	addi	a2, s4, 544
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	sd	t1, 328(sp)                     # 8-byte Folded Spill
	sd	s6, 408(sp)                     # 8-byte Folded Spill
	sd	n3, 400(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	a3, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 144(sp)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB4_1
	j	.LBB4_9
.LBB4_1:
	li	n1, 0
	li	t6, 0
	addi	a0, s1, 32
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addi	a0, t4, 16
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	addi	s2, t4, 2
	addi	s9, t4, 4
	addi	s7, t4, 6
	addi	s4, t4, 8
	addi	s11, t4, 10
	addi	s6, t4, 12
	addi	s8, t4, 14
	addi	a0, n3, 2
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 4
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 6
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 8
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 10
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 12
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 14
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	addi	s10, t4, 18
	addi	a0, t4, 20
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	addi	a0, t4, 22
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	addi	a0, t4, 24
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	addi	a0, t4, 26
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	addi	a0, t4, 28
	sd	a0, 320(sp)                     # 8-byte Folded Spill
	addi	a0, t4, 30
	sd	a0, 336(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 16
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 18
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 20
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 22
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 24
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 26
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 28
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addi	a0, n3, 30
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	li	a0, -2
	sd	a0, 376(sp)                     # 8-byte Folded Spill
	lui	a0, 524288
	addiw	a0, a0, -1
	mv	t2, t4
	j	.LBB4_3
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	addiw	a1, a1, 1
	sd	a1, 376(sp)                     # 8-byte Folded Spill
	li	a2, 3
	bne	a1, a2, .LBB4_3
	j	.LBB4_25
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	mv	a2, n1
	mv	a3, t6
	mv	s3, a0
	li	s5, -2
	j	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=2
	addiw	s5, s5, 1
	mv	a2, n1
	mv	a3, t6
	mv	s3, a0
	ld	t2, 408(sp)                     # 8-byte Folded Reload
	ld	n3, 400(sp)                     # 8-byte Folded Reload
	li	a1, 3
	beq	s5, a1, .LBB4_2
.LBB4_5:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	a3, 384(sp)                     # 8-byte Folded Spill
	sd	a2, 392(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(long_vectors)
	lw	a1, %lo(long_vectors)(a0)
	li	a0, 32
	beqz	a1, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=2
	li	a0, 64
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=2
	lui	a1, %hi(mv_outside_frame)
	lw	a1, %lo(mv_outside_frame)(a1)
	seqz	a1, a1
	lui	a2, %hi(pels)
	lw	a2, %lo(pels)(a2)
	addi	a1, a1, -1
	ld	a5, 344(sp)                     # 8-byte Folded Reload
	lw	a3, 4(a5)
	lw	a4, 12(a5)
	and	a0, a1, a0
	add	a0, a0, a2
	slli	a3, a3, 1
	add	a3, a3, a4
	ld	t1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a3, t1
	lw	a2, 0(a5)
	lw	a3, 8(a5)
	ld	t0, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, t0
	ld	s0, 376(sp)                     # 8-byte Folded Reload
	add	a1, a1, s0
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, s5
	ld	t3, 416(sp)                     # 8-byte Folded Reload
	add	a2, t3, a2
	slli	a0, a0, 1
	add	a3, a1, n3
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 0(s1)
	sw	a5, 4(s1)
	sw	a6, 8(s1)
	sw	a7, 12(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 16(s1)
	sw	a5, 20(s1)
	sw	a6, 24(s1)
	sw	a3, 28(s1)
	ld	n11, 160(sp)                    # 8-byte Folded Reload
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 64(s1)
	sw	a5, 68(s1)
	sw	a6, 72(s1)
	sw	a7, 76(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 80(s1)
	sw	a5, 84(s1)
	sw	a6, 88(s1)
	sw	a3, 92(s1)
	ld	n10, 168(sp)                    # 8-byte Folded Reload
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 128(s1)
	sw	a5, 132(s1)
	sw	a6, 136(s1)
	sw	a7, 140(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 144(s1)
	sw	a5, 148(s1)
	sw	a6, 152(s1)
	sw	a3, 156(s1)
	ld	n9, 176(sp)                     # 8-byte Folded Reload
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 192(s1)
	sw	a5, 196(s1)
	sw	a6, 200(s1)
	sw	a7, 204(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 208(s1)
	sw	a5, 212(s1)
	sw	a6, 216(s1)
	sw	a3, 220(s1)
	ld	n8, 184(sp)                     # 8-byte Folded Reload
	add	a3, a1, n8
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 256(s1)
	sw	a5, 260(s1)
	sw	a6, 264(s1)
	sw	a7, 268(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 272(s1)
	sw	a5, 276(s1)
	sw	a6, 280(s1)
	sw	a3, 284(s1)
	ld	n7, 192(sp)                     # 8-byte Folded Reload
	add	a3, a1, n7
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 320(s1)
	sw	a5, 324(s1)
	sw	a6, 328(s1)
	sw	a7, 332(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 336(s1)
	sw	a5, 340(s1)
	sw	a6, 344(s1)
	sw	a3, 348(s1)
	ld	n6, 200(sp)                     # 8-byte Folded Reload
	add	a3, a1, n6
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 384(s1)
	sw	a5, 388(s1)
	sw	a6, 392(s1)
	sw	a7, 396(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 400(s1)
	sw	a5, 404(s1)
	sw	a6, 408(s1)
	sw	a3, 412(s1)
	ld	n5, 208(sp)                     # 8-byte Folded Reload
	add	a1, a1, n5
	mulw	a1, a1, a0
	add	a1, a2, a1
	add	a2, a1, t2
	lbu	a2, 0(a2)
	add	a3, a1, s2
	lbu	a3, 0(a3)
	add	a4, a1, s9
	lbu	a4, 0(a4)
	add	a5, a1, s7
	lbu	a5, 0(a5)
	sw	a2, 448(s1)
	sw	a3, 452(s1)
	sw	a4, 456(s1)
	sw	a5, 460(s1)
	add	a2, a1, s4
	lbu	a2, 0(a2)
	add	a3, a1, s11
	lbu	a3, 0(a3)
	add	a4, a1, s6
	lbu	a4, 0(a4)
	add	a1, a1, s8
	lbu	a1, 0(a1)
	sw	a2, 464(s1)
	sw	a3, 468(s1)
	sw	a4, 472(s1)
	sw	a1, 476(s1)
	ld	a3, 352(sp)                     # 8-byte Folded Reload
	lw	a1, 4(a3)
	lw	a2, 12(a3)
	slli	a1, a1, 1
	add	a1, a1, a2
	mul	a1, a1, t1
	lw	a2, 0(a3)
	lw	a3, 8(a3)
	divw	a1, a1, t0
	add	a1, a1, s0
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, s5
	add	a2, t3, a2
	add	a3, a1, n3
	mulw	a3, a3, a0
	add	a3, a2, a3
	ld	t6, 312(sp)                     # 8-byte Folded Reload
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	ld	n4, 216(sp)                     # 8-byte Folded Reload
	add	a6, a3, n4
	lbu	a6, 0(a6)
	ld	n3, 224(sp)                     # 8-byte Folded Reload
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 32(s1)
	sw	a5, 36(s1)
	sw	a6, 40(s1)
	sw	a7, 44(s1)
	ld	n2, 296(sp)                     # 8-byte Folded Reload
	add	a4, a3, n2
	lbu	a4, 0(a4)
	ld	n1, 304(sp)                     # 8-byte Folded Reload
	add	a5, a3, n1
	lbu	a5, 0(a5)
	ld	t5, 320(sp)                     # 8-byte Folded Reload
	add	a6, a3, t5
	lbu	a6, 0(a6)
	ld	t4, 336(sp)                     # 8-byte Folded Reload
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 48(s1)
	sw	a5, 52(s1)
	sw	a6, 56(s1)
	sw	a3, 60(s1)
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 96(s1)
	sw	a5, 100(s1)
	sw	a6, 104(s1)
	sw	a7, 108(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 112(s1)
	sw	a5, 116(s1)
	sw	a6, 120(s1)
	sw	a3, 124(s1)
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 160(s1)
	sw	a5, 164(s1)
	sw	a6, 168(s1)
	sw	a7, 172(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 176(s1)
	sw	a5, 180(s1)
	sw	a6, 184(s1)
	sw	a3, 188(s1)
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 224(s1)
	sw	a5, 228(s1)
	sw	a6, 232(s1)
	sw	a7, 236(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 240(s1)
	sw	a5, 244(s1)
	sw	a6, 248(s1)
	sw	a3, 252(s1)
	add	a3, a1, n8
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 288(s1)
	sw	a5, 292(s1)
	sw	a6, 296(s1)
	sw	a7, 300(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 304(s1)
	sw	a5, 308(s1)
	sw	a6, 312(s1)
	sw	a3, 316(s1)
	add	a3, a1, n7
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 352(s1)
	sw	a5, 356(s1)
	sw	a6, 360(s1)
	sw	a7, 364(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 368(s1)
	sw	a5, 372(s1)
	sw	a6, 376(s1)
	sw	a3, 380(s1)
	add	a3, a1, n6
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 416(s1)
	sw	a5, 420(s1)
	sw	a6, 424(s1)
	sw	a7, 428(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 432(s1)
	sw	a5, 436(s1)
	sw	a6, 440(s1)
	sw	a3, 444(s1)
	add	a1, a1, n5
	mulw	a1, a1, a0
	add	a1, a2, a1
	add	a2, a1, t6
	lbu	a2, 0(a2)
	add	a3, a1, s10
	lbu	a3, 0(a3)
	add	a4, a1, n4
	lbu	a4, 0(a4)
	add	a5, a1, n3
	lbu	a5, 0(a5)
	sw	a2, 480(s1)
	sw	a3, 484(s1)
	sw	a4, 488(s1)
	sw	a5, 492(s1)
	add	a2, a1, n2
	lbu	a2, 0(a2)
	add	a3, a1, n1
	lbu	a3, 0(a3)
	add	a4, a1, t5
	lbu	a4, 0(a4)
	add	a1, a1, t4
	lbu	a1, 0(a1)
	sw	a2, 496(s1)
	sw	a3, 500(s1)
	sw	a4, 504(s1)
	sw	a1, 508(s1)
	ld	a3, 360(sp)                     # 8-byte Folded Reload
	lw	a1, 4(a3)
	lw	a2, 12(a3)
	slli	a1, a1, 1
	add	a1, a1, a2
	mul	a1, a1, t1
	lw	a2, 0(a3)
	lw	a3, 8(a3)
	divw	a1, a1, t0
	add	a1, a1, s0
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, s5
	add	a2, t3, a2
	ld	n12, 232(sp)                    # 8-byte Folded Reload
	add	a3, a1, n12
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 512(s1)
	sw	a5, 516(s1)
	sw	a6, 520(s1)
	sw	a7, 524(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 528(s1)
	sw	a5, 532(s1)
	sw	a6, 536(s1)
	sw	a3, 540(s1)
	ld	n11, 240(sp)                    # 8-byte Folded Reload
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 576(s1)
	sw	a5, 580(s1)
	sw	a6, 584(s1)
	sw	a7, 588(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 592(s1)
	sw	a5, 596(s1)
	sw	a6, 600(s1)
	sw	a3, 604(s1)
	ld	n10, 248(sp)                    # 8-byte Folded Reload
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 640(s1)
	sw	a5, 644(s1)
	sw	a6, 648(s1)
	sw	a7, 652(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 656(s1)
	sw	a5, 660(s1)
	sw	a6, 664(s1)
	sw	a3, 668(s1)
	ld	n9, 256(sp)                     # 8-byte Folded Reload
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 704(s1)
	sw	a5, 708(s1)
	sw	a6, 712(s1)
	sw	a7, 716(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 720(s1)
	sw	a5, 724(s1)
	sw	a6, 728(s1)
	sw	a3, 732(s1)
	ld	n8, 264(sp)                     # 8-byte Folded Reload
	add	a3, a1, n8
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 768(s1)
	sw	a5, 772(s1)
	sw	a6, 776(s1)
	sw	a7, 780(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 784(s1)
	sw	a5, 788(s1)
	sw	a6, 792(s1)
	sw	a3, 796(s1)
	ld	n7, 272(sp)                     # 8-byte Folded Reload
	add	a3, a1, n7
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 832(s1)
	sw	a5, 836(s1)
	sw	a6, 840(s1)
	sw	a7, 844(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 848(s1)
	sw	a5, 852(s1)
	sw	a6, 856(s1)
	sw	a3, 860(s1)
	ld	n6, 280(sp)                     # 8-byte Folded Reload
	add	a3, a1, n6
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 896(s1)
	sw	a5, 900(s1)
	sw	a6, 904(s1)
	sw	a7, 908(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 912(s1)
	sw	a5, 916(s1)
	sw	a6, 920(s1)
	sw	a3, 924(s1)
	ld	n5, 288(sp)                     # 8-byte Folded Reload
	add	a1, a1, n5
	mulw	a1, a1, a0
	add	a1, a2, a1
	add	a2, a1, t2
	lbu	a2, 0(a2)
	add	a3, a1, s2
	lbu	a3, 0(a3)
	add	a4, a1, s9
	lbu	a4, 0(a4)
	add	a5, a1, s7
	lbu	a5, 0(a5)
	sw	a2, 960(s1)
	sw	a3, 964(s1)
	sw	a4, 968(s1)
	sw	a5, 972(s1)
	add	a2, a1, s4
	lbu	a2, 0(a2)
	add	a3, a1, s11
	lbu	a3, 0(a3)
	add	a4, a1, s6
	lbu	a4, 0(a4)
	add	a1, a1, s8
	lbu	a1, 0(a1)
	sw	a2, 976(s1)
	sw	a3, 980(s1)
	sw	a4, 984(s1)
	sw	a1, 988(s1)
	ld	a3, 368(sp)                     # 8-byte Folded Reload
	lw	a1, 4(a3)
	lw	a2, 12(a3)
	slli	a1, a1, 1
	add	a1, a1, a2
	mul	a1, a1, t1
	lw	a2, 0(a3)
	lw	a3, 8(a3)
	divw	a1, a1, t0
	add	a1, a1, s0
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, s5
	add	a2, t3, a2
	add	a3, a1, n12
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 544(s1)
	sw	a5, 548(s1)
	sw	a6, 552(s1)
	sw	a7, 556(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 560(s1)
	sw	a5, 564(s1)
	sw	a6, 568(s1)
	sw	a3, 572(s1)
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 608(s1)
	sw	a5, 612(s1)
	sw	a6, 616(s1)
	sw	a7, 620(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 624(s1)
	sw	a5, 628(s1)
	sw	a6, 632(s1)
	sw	a3, 636(s1)
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 672(s1)
	sw	a5, 676(s1)
	sw	a6, 680(s1)
	sw	a7, 684(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 688(s1)
	sw	a5, 692(s1)
	sw	a6, 696(s1)
	sw	a3, 700(s1)
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 736(s1)
	sw	a5, 740(s1)
	sw	a6, 744(s1)
	sw	a7, 748(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 752(s1)
	sw	a5, 756(s1)
	sw	a6, 760(s1)
	sw	a3, 764(s1)
	add	a3, a1, n8
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 800(s1)
	sw	a5, 804(s1)
	sw	a6, 808(s1)
	sw	a7, 812(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 816(s1)
	sw	a5, 820(s1)
	sw	a6, 824(s1)
	sw	a3, 828(s1)
	add	a3, a1, n7
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 864(s1)
	sw	a5, 868(s1)
	sw	a6, 872(s1)
	sw	a7, 876(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 880(s1)
	sw	a5, 884(s1)
	sw	a6, 888(s1)
	sw	a3, 892(s1)
	add	a3, a1, n6
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t6
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n4
	lbu	a6, 0(a6)
	add	a7, a3, n3
	lbu	a7, 0(a7)
	sw	a4, 928(s1)
	sw	a5, 932(s1)
	sw	a6, 936(s1)
	sw	a7, 940(s1)
	add	a4, a3, n2
	lbu	a4, 0(a4)
	add	a5, a3, n1
	lbu	a5, 0(a5)
	add	a6, a3, t5
	lbu	a6, 0(a6)
	add	a3, a3, t4
	lbu	a3, 0(a3)
	sw	a4, 944(s1)
	sw	a5, 948(s1)
	sw	a6, 952(s1)
	sw	a3, 956(s1)
	add	a1, a1, n5
	mulw	a0, a1, a0
	add	a0, a2, a0
	add	a1, a0, t6
	lbu	a1, 0(a1)
	add	a2, a0, s10
	lbu	a2, 0(a2)
	add	a3, a0, n4
	lbu	a3, 0(a3)
	add	a4, a0, n3
	lbu	a4, 0(a4)
	sw	a1, 992(s1)
	sw	a2, 996(s1)
	sw	a3, 1000(s1)
	sw	a4, 1004(s1)
	add	a1, a0, n2
	lbu	a1, 0(a1)
	add	a2, a0, n1
	lbu	a2, 0(a2)
	add	a3, a0, t5
	lbu	a3, 0(a3)
	add	a0, a0, t4
	lbu	a0, 0(a0)
	sw	a1, 1008(s1)
	sw	a2, 1012(s1)
	sw	a3, 1016(s1)
	sw	a0, 1020(s1)
	lui	a3, 524288
	addiw	a3, a3, -1
	addi	a0, sp, 440
	li	a2, 16
	mv	a1, s1
	call	SAD_MB_integer
	or	a1, s5, s0
	snez	a1, a1
	addi	a1, a1, -1
	andi	a1, a1, -50
	addw	a0, a0, a1
	mv	t6, s5
	mv	n1, s0
	blt	a0, s3, .LBB4_4
# %bb.8:                                #   in Loop: Header=BB4_5 Depth=2
	mv	a0, s3
	ld	t6, 384(sp)                     # 8-byte Folded Reload
	ld	n1, 392(sp)                     # 8-byte Folded Reload
	j	.LBB4_4
.LBB4_9:
	mv	a4, s7
	mv	t5, s3
	li	t3, 0
	li	t2, 0
	sd	s1, 320(sp)                     # 8-byte Folded Spill
	addi	a0, s1, 32
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	addi	t6, t4, 2
	addi	n1, t4, 4
	addi	n2, t4, 6
	addi	s7, t4, 8
	addi	s8, t4, 10
	addi	s9, t4, 12
	addi	s10, t4, 14
	addi	s11, t4, 16
	addi	s4, t4, 18
	addi	s0, t4, 20
	addi	s3, t4, 22
	addi	s1, t4, 24
	addi	s2, t4, 26
	addi	s5, t4, 28
	addi	s6, t4, 30
	li	a5, -2
	lui	a0, 524288
	addiw	a0, a0, -1
	seqz	a1, a4
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	sd	t5, 336(sp)                     # 8-byte Folded Spill
	sd	t6, 312(sp)                     # 8-byte Folded Spill
	sd	n1, 304(sp)                     # 8-byte Folded Spill
	sd	n2, 296(sp)                     # 8-byte Folded Spill
	j	.LBB4_11
.LBB4_10:                               #   in Loop: Header=BB4_11 Depth=1
	addiw	a5, a5, 1
	li	a1, 3
	bne	a5, a1, .LBB4_11
	j	.LBB4_34
.LBB4_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #       Child Loop BB4_22 Depth 3
	mv	a2, t3
	mv	a3, t2
	mv	a4, a0
	li	a6, -2
	sd	a5, 344(sp)                     # 8-byte Folded Spill
	j	.LBB4_13
.LBB4_12:                               #   in Loop: Header=BB4_13 Depth=2
	addiw	a6, a6, 1
	mv	a2, t3
	mv	a3, t2
	mv	a4, a0
	ld	t1, 328(sp)                     # 8-byte Folded Reload
	ld	t4, 408(sp)                     # 8-byte Folded Reload
	ld	n3, 400(sp)                     # 8-byte Folded Reload
	ld	t5, 336(sp)                     # 8-byte Folded Reload
	ld	t6, 312(sp)                     # 8-byte Folded Reload
	ld	n1, 304(sp)                     # 8-byte Folded Reload
	ld	n2, 296(sp)                     # 8-byte Folded Reload
	li	a1, 3
	beq	a6, a1, .LBB4_10
.LBB4_13:                               #   Parent Loop BB4_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_22 Depth 3
	sd	a4, 368(sp)                     # 8-byte Folded Spill
	sd	a3, 352(sp)                     # 8-byte Folded Spill
	sd	a2, 360(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(mv_outside_frame)
	lw	a0, %lo(mv_outside_frame)(a0)
	mv	a3, a6
	mv	a4, a5
	bnez	a0, .LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=2
	lui	a1, %hi(pels)
	lw	a1, %lo(pels)(a1)
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	seqz	a2, a3
	addiw	a1, a1, -16
	xor	a1, a1, a3
	seqz	a1, a1
	lui	a3, %hi(lines)
	lw	a4, %lo(lines)(a3)
	or	a1, a2, a1
	addiw	a1, a1, -1
	and	a3, a1, a6
	addiw	a4, a4, -16
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	xor	a1, a4, a1
	seqz	a1, a1
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	or	a1, a2, a1
	addiw	a1, a1, -1
	and	a4, a1, a5
.LBB4_15:                               #   in Loop: Header=BB4_13 Depth=2
	lw	a1, 20(t5)
	addiw	a1, a1, -3
	sltiu	a5, a1, 2
	lw	a1, 0(t5)
	lw	a2, 4(t5)
	addiw	a5, a5, -1
	and	a7, a5, a3
	and	t0, a5, a4
	beqz	a1, .LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_13 Depth=2
	lw	a3, 8(t5)
	j	.LBB4_19
.LBB4_17:                               #   in Loop: Header=BB4_13 Depth=2
	lw	a3, 8(t5)
	or	a4, a2, a3
	bnez	a4, .LBB4_19
# %bb.18:                               #   in Loop: Header=BB4_13 Depth=2
	lw	a4, 12(t5)
	li	a3, 0
	seqz	a4, a4
	addiw	a4, a4, -1
	and	a7, a4, a7
	and	t0, a4, t0
.LBB4_19:                               #   in Loop: Header=BB4_13 Depth=2
	sd	a6, 376(sp)                     # 8-byte Folded Spill
	lui	a4, %hi(long_vectors)
	lw	a5, %lo(long_vectors)(a4)
	li	a4, 32
	beqz	a5, .LBB4_21
# %bb.20:                               #   in Loop: Header=BB4_13 Depth=2
	li	a4, 64
.LBB4_21:                               #   in Loop: Header=BB4_13 Depth=2
	seqz	a0, a0
	lui	a5, %hi(pels)
	lw	a5, %lo(pels)(a5)
	addi	a0, a0, -1
	lw	a6, 12(t5)
	and	a0, a0, a4
	add	a5, a0, a5
	slli	a2, a2, 1
	add	a2, a2, a6
	ld	a6, 424(sp)                     # 8-byte Folded Reload
	mul	a0, a2, a6
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a2, a0, a4
	slli	a1, a1, 1
	add	a1, a3, a1
	mul	a0, a1, a6
	divw	a0, a0, a4
	sd	a7, 392(sp)                     # 8-byte Folded Spill
	addw	a0, a0, a7
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	t0, 384(sp)                     # 8-byte Folded Spill
	add	a1, n3, t0
	add	a1, a1, a2
	mul	a1, a1, a5
	slliw	a1, a1, 1
	slli	a2, a5, 2
	ld	a3, 288(sp)                     # 8-byte Folded Reload
.LBB4_22:                               #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a4, a0, a1
	add	a5, a4, t4
	lbu	a5, 0(a5)
	add	a6, a4, t6
	lbu	a6, 0(a6)
	add	a7, a4, n1
	lbu	a7, 0(a7)
	add	t0, a4, n2
	lbu	t0, 0(t0)
	sw	a5, -32(a3)
	sw	a6, -28(a3)
	sw	a7, -24(a3)
	sw	t0, -20(a3)
	add	a5, a4, s7
	lbu	a5, 0(a5)
	add	a6, a4, s8
	lbu	a6, 0(a6)
	add	a7, a4, s9
	lbu	a7, 0(a7)
	add	t0, a4, s10
	lbu	t0, 0(t0)
	sw	a5, -16(a3)
	sw	a6, -12(a3)
	sw	a7, -8(a3)
	sw	t0, -4(a3)
	add	a5, a4, s11
	lbu	a5, 0(a5)
	add	a6, a4, s4
	lbu	a6, 0(a6)
	add	a7, a4, s0
	lbu	a7, 0(a7)
	add	t0, a4, s3
	lbu	t0, 0(t0)
	sw	a5, 0(a3)
	sw	a6, 4(a3)
	sw	a7, 8(a3)
	sw	t0, 12(a3)
	add	a5, a4, s1
	lbu	a5, 0(a5)
	add	a6, a4, s2
	lbu	a6, 0(a6)
	add	a7, a4, s5
	lbu	a7, 0(a7)
	add	a4, a4, s6
	lbu	a4, 0(a4)
	sw	a5, 16(a3)
	sw	a6, 20(a3)
	sw	a7, 24(a3)
	sw	a4, 28(a3)
	addi	a3, a3, 64
	addw	a1, a1, a2
	bne	a3, t1, .LBB4_22
# %bb.23:                               #   in Loop: Header=BB4_13 Depth=2
	lui	a3, 524288
	addiw	a3, a3, -1
	addi	a0, sp, 440
	li	a2, 16
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	call	SAD_MB_integer
	ld	a5, 344(sp)                     # 8-byte Folded Reload
	ld	a6, 376(sp)                     # 8-byte Folded Reload
	or	a1, a6, a5
	snez	a1, a1
	addi	a1, a1, -1
	andi	a1, a1, -50
	addw	a0, a0, a1
	ld	t2, 392(sp)                     # 8-byte Folded Reload
	ld	t3, 384(sp)                     # 8-byte Folded Reload
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB4_12
# %bb.24:                               #   in Loop: Header=BB4_13 Depth=2
	mv	a0, a1
	ld	t2, 352(sp)                     # 8-byte Folded Reload
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	j	.LBB4_12
.LBB4_25:
	lui	a0, %hi(mv_outside_frame)
	lw	a1, %lo(mv_outside_frame)(a0)
	lui	a0, %hi(pels)
	lui	a2, %hi(long_vectors)
	lw	a3, %lo(long_vectors)(a2)
	lw	a0, %lo(pels)(a0)
	seqz	a2, a1
	li	a1, 32
	beqz	a3, .LBB4_27
# %bb.26:
	li	a1, 64
.LBB4_27:
	addi	a2, a2, -1
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	lw	a3, 4(t5)
	lw	a4, 12(t5)
	and	a1, a2, a1
	add	a0, a1, a0
	slli	a3, a3, 1
	add	a3, a3, a4
	ld	t1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a3, t1
	lw	a2, 0(t5)
	lw	a3, 8(t5)
	ld	t0, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, t0
	add	a1, a1, n1
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, t6
	ld	n2, 416(sp)                     # 8-byte Folded Reload
	add	a2, n2, a2
	slli	a0, a0, 1
	add	a3, a1, n3
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 0(s1)
	sw	a5, 4(s1)
	sw	a6, 8(s1)
	sw	a7, 12(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 16(s1)
	sw	a5, 20(s1)
	sw	a6, 24(s1)
	sw	a3, 28(s1)
	ld	n13, 160(sp)                    # 8-byte Folded Reload
	add	a3, a1, n13
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 64(s1)
	sw	a5, 68(s1)
	sw	a6, 72(s1)
	sw	a7, 76(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 80(s1)
	sw	a5, 84(s1)
	sw	a6, 88(s1)
	sw	a3, 92(s1)
	ld	n12, 168(sp)                    # 8-byte Folded Reload
	add	a3, a1, n12
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 128(s1)
	sw	a5, 132(s1)
	sw	a6, 136(s1)
	sw	a7, 140(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 144(s1)
	sw	a5, 148(s1)
	sw	a6, 152(s1)
	sw	a3, 156(s1)
	ld	n11, 176(sp)                    # 8-byte Folded Reload
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 192(s1)
	sw	a5, 196(s1)
	sw	a6, 200(s1)
	sw	a7, 204(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 208(s1)
	sw	a5, 212(s1)
	sw	a6, 216(s1)
	sw	a3, 220(s1)
	ld	n10, 184(sp)                    # 8-byte Folded Reload
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 256(s1)
	sw	a5, 260(s1)
	sw	a6, 264(s1)
	sw	a7, 268(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 272(s1)
	sw	a5, 276(s1)
	sw	a6, 280(s1)
	sw	a3, 284(s1)
	ld	n9, 192(sp)                     # 8-byte Folded Reload
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 320(s1)
	sw	a5, 324(s1)
	sw	a6, 328(s1)
	sw	a7, 332(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 336(s1)
	sw	a5, 340(s1)
	sw	a6, 344(s1)
	sw	a3, 348(s1)
	ld	n8, 200(sp)                     # 8-byte Folded Reload
	add	a3, a1, n8
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 384(s1)
	sw	a5, 388(s1)
	sw	a6, 392(s1)
	sw	a7, 396(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 400(s1)
	sw	a5, 404(s1)
	sw	a6, 408(s1)
	sw	a3, 412(s1)
	ld	t3, 208(sp)                     # 8-byte Folded Reload
	add	a1, a1, t3
	mulw	a1, a1, a0
	add	a1, a2, a1
	add	a2, a1, t2
	lbu	a2, 0(a2)
	add	a3, a1, s2
	lbu	a3, 0(a3)
	add	a4, a1, s9
	lbu	a4, 0(a4)
	add	a5, a1, s7
	lbu	a5, 0(a5)
	sw	a2, 448(s1)
	sw	a3, 452(s1)
	sw	a4, 456(s1)
	sw	a5, 460(s1)
	add	a2, a1, s4
	lbu	a2, 0(a2)
	add	a3, a1, s11
	lbu	a3, 0(a3)
	add	a4, a1, s6
	lbu	a4, 0(a4)
	add	a1, a1, s8
	lbu	a1, 0(a1)
	sw	a2, 464(s1)
	sw	a3, 468(s1)
	sw	a4, 472(s1)
	sw	a1, 476(s1)
	ld	t4, 352(sp)                     # 8-byte Folded Reload
	lw	a1, 4(t4)
	lw	a2, 12(t4)
	slli	a1, a1, 1
	add	a1, a1, a2
	mul	a1, a1, t1
	lw	a2, 0(t4)
	lw	a3, 8(t4)
	divw	a1, a1, t0
	add	a1, a1, n1
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, t6
	add	a2, n2, a2
	add	a3, a1, n3
	mulw	a3, a3, a0
	add	a3, a2, a3
	ld	n3, 312(sp)                     # 8-byte Folded Reload
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	ld	n7, 216(sp)                     # 8-byte Folded Reload
	add	a6, a3, n7
	lbu	a6, 0(a6)
	ld	n6, 224(sp)                     # 8-byte Folded Reload
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 32(s1)
	sw	a5, 36(s1)
	sw	a6, 40(s1)
	sw	a7, 44(s1)
	ld	n5, 296(sp)                     # 8-byte Folded Reload
	add	a4, a3, n5
	lbu	a4, 0(a4)
	ld	n4, 304(sp)                     # 8-byte Folded Reload
	add	a5, a3, n4
	lbu	a5, 0(a5)
	ld	s3, 320(sp)                     # 8-byte Folded Reload
	add	a6, a3, s3
	lbu	a6, 0(a6)
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 48(s1)
	sw	a5, 52(s1)
	sw	a6, 56(s1)
	sw	a3, 60(s1)
	add	a3, a1, n13
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 96(s1)
	sw	a5, 100(s1)
	sw	a6, 104(s1)
	sw	a7, 108(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 112(s1)
	sw	a5, 116(s1)
	sw	a6, 120(s1)
	sw	a3, 124(s1)
	add	a3, a1, n12
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 160(s1)
	sw	a5, 164(s1)
	sw	a6, 168(s1)
	sw	a7, 172(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 176(s1)
	sw	a5, 180(s1)
	sw	a6, 184(s1)
	sw	a3, 188(s1)
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 224(s1)
	sw	a5, 228(s1)
	sw	a6, 232(s1)
	sw	a7, 236(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 240(s1)
	sw	a5, 244(s1)
	sw	a6, 248(s1)
	sw	a3, 252(s1)
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 288(s1)
	sw	a5, 292(s1)
	sw	a6, 296(s1)
	sw	a7, 300(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 304(s1)
	sw	a5, 308(s1)
	sw	a6, 312(s1)
	sw	a3, 316(s1)
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 352(s1)
	sw	a5, 356(s1)
	sw	a6, 360(s1)
	sw	a7, 364(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 368(s1)
	sw	a5, 372(s1)
	sw	a6, 376(s1)
	sw	a3, 380(s1)
	add	a3, a1, n8
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 416(s1)
	sw	a5, 420(s1)
	sw	a6, 424(s1)
	sw	a7, 428(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 432(s1)
	sw	a5, 436(s1)
	sw	a6, 440(s1)
	sw	a3, 444(s1)
	add	a1, a1, t3
	mulw	a1, a1, a0
	add	a1, a2, a1
	add	a2, a1, n3
	lbu	a2, 0(a2)
	add	a3, a1, s10
	lbu	a3, 0(a3)
	add	a4, a1, n7
	lbu	a4, 0(a4)
	add	a5, a1, n6
	lbu	a5, 0(a5)
	sw	a2, 480(s1)
	sw	a3, 484(s1)
	sw	a4, 488(s1)
	sw	a5, 492(s1)
	add	a2, a1, n5
	lbu	a2, 0(a2)
	add	a3, a1, n4
	lbu	a3, 0(a3)
	add	a4, a1, s3
	lbu	a4, 0(a4)
	add	a1, a1, s0
	lbu	a1, 0(a1)
	sw	a2, 496(s1)
	sw	a3, 500(s1)
	sw	a4, 504(s1)
	sw	a1, 508(s1)
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	lw	a1, 4(t3)
	lw	a2, 12(t3)
	slli	a1, a1, 1
	add	a1, a1, a2
	mul	a1, a1, t1
	lw	a2, 0(t3)
	lw	a3, 8(t3)
	divw	a1, a1, t0
	add	a1, a1, n1
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, t6
	add	a2, n2, a2
	ld	n15, 232(sp)                    # 8-byte Folded Reload
	add	a3, a1, n15
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 512(s1)
	sw	a5, 516(s1)
	sw	a6, 520(s1)
	sw	a7, 524(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 528(s1)
	sw	a5, 532(s1)
	sw	a6, 536(s1)
	sw	a3, 540(s1)
	ld	n14, 240(sp)                    # 8-byte Folded Reload
	add	a3, a1, n14
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 576(s1)
	sw	a5, 580(s1)
	sw	a6, 584(s1)
	sw	a7, 588(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 592(s1)
	sw	a5, 596(s1)
	sw	a6, 600(s1)
	sw	a3, 604(s1)
	ld	n13, 248(sp)                    # 8-byte Folded Reload
	add	a3, a1, n13
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 640(s1)
	sw	a5, 644(s1)
	sw	a6, 648(s1)
	sw	a7, 652(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 656(s1)
	sw	a5, 660(s1)
	sw	a6, 664(s1)
	sw	a3, 668(s1)
	ld	n12, 256(sp)                    # 8-byte Folded Reload
	add	a3, a1, n12
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 704(s1)
	sw	a5, 708(s1)
	sw	a6, 712(s1)
	sw	a7, 716(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 720(s1)
	sw	a5, 724(s1)
	sw	a6, 728(s1)
	sw	a3, 732(s1)
	ld	n11, 264(sp)                    # 8-byte Folded Reload
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 768(s1)
	sw	a5, 772(s1)
	sw	a6, 776(s1)
	sw	a7, 780(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 784(s1)
	sw	a5, 788(s1)
	sw	a6, 792(s1)
	sw	a3, 796(s1)
	ld	n10, 272(sp)                    # 8-byte Folded Reload
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 832(s1)
	sw	a5, 836(s1)
	sw	a6, 840(s1)
	sw	a7, 844(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 848(s1)
	sw	a5, 852(s1)
	sw	a6, 856(s1)
	sw	a3, 860(s1)
	ld	n9, 280(sp)                     # 8-byte Folded Reload
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, t2
	lbu	a4, 0(a4)
	add	a5, a3, s2
	lbu	a5, 0(a5)
	add	a6, a3, s9
	lbu	a6, 0(a6)
	add	a7, a3, s7
	lbu	a7, 0(a7)
	sw	a4, 896(s1)
	sw	a5, 900(s1)
	sw	a6, 904(s1)
	sw	a7, 908(s1)
	add	a4, a3, s4
	lbu	a4, 0(a4)
	add	a5, a3, s11
	lbu	a5, 0(a5)
	add	a6, a3, s6
	lbu	a6, 0(a6)
	add	a3, a3, s8
	lbu	a3, 0(a3)
	sw	a4, 912(s1)
	sw	a5, 916(s1)
	sw	a6, 920(s1)
	sw	a3, 924(s1)
	ld	n8, 288(sp)                     # 8-byte Folded Reload
	add	a1, a1, n8
	mulw	a1, a1, a0
	add	a1, a2, a1
	add	a2, a1, t2
	lbu	a2, 0(a2)
	add	s2, a1, s2
	lbu	a3, 0(s2)
	add	s9, a1, s9
	lbu	a4, 0(s9)
	add	s7, a1, s7
	lbu	a5, 0(s7)
	sw	a2, 960(s1)
	sw	a3, 964(s1)
	sw	a4, 968(s1)
	sw	a5, 972(s1)
	add	s4, a1, s4
	lbu	a2, 0(s4)
	add	s11, a1, s11
	lbu	a3, 0(s11)
	add	s6, a1, s6
	lbu	a4, 0(s6)
	add	a1, a1, s8
	lbu	a1, 0(a1)
	sw	a2, 976(s1)
	sw	a3, 980(s1)
	sw	a4, 984(s1)
	sw	a1, 988(s1)
	ld	t2, 368(sp)                     # 8-byte Folded Reload
	lw	a1, 4(t2)
	lw	a2, 12(t2)
	slli	a1, a1, 1
	add	a1, a1, a2
	mul	a1, a1, t1
	lw	a2, 0(t2)
	lw	a3, 8(t2)
	divw	a1, a1, t0
	add	a1, a1, n1
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	addw	a2, a2, t6
	add	a2, n2, a2
	add	a3, a1, n15
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 544(s1)
	sw	a5, 548(s1)
	sw	a6, 552(s1)
	sw	a7, 556(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 560(s1)
	sw	a5, 564(s1)
	sw	a6, 568(s1)
	sw	a3, 572(s1)
	add	a3, a1, n14
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 608(s1)
	sw	a5, 612(s1)
	sw	a6, 616(s1)
	sw	a7, 620(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 624(s1)
	sw	a5, 628(s1)
	sw	a6, 632(s1)
	sw	a3, 636(s1)
	add	a3, a1, n13
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 672(s1)
	sw	a5, 676(s1)
	sw	a6, 680(s1)
	sw	a7, 684(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 688(s1)
	sw	a5, 692(s1)
	sw	a6, 696(s1)
	sw	a3, 700(s1)
	add	a3, a1, n12
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 736(s1)
	sw	a5, 740(s1)
	sw	a6, 744(s1)
	sw	a7, 748(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 752(s1)
	sw	a5, 756(s1)
	sw	a6, 760(s1)
	sw	a3, 764(s1)
	add	a3, a1, n11
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 800(s1)
	sw	a5, 804(s1)
	sw	a6, 808(s1)
	sw	a7, 812(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 816(s1)
	sw	a5, 820(s1)
	sw	a6, 824(s1)
	sw	a3, 828(s1)
	add	a3, a1, n10
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 864(s1)
	sw	a5, 868(s1)
	sw	a6, 872(s1)
	sw	a7, 876(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 880(s1)
	sw	a5, 884(s1)
	sw	a6, 888(s1)
	sw	a3, 892(s1)
	add	a3, a1, n9
	mulw	a3, a3, a0
	add	a3, a2, a3
	add	a4, a3, n3
	lbu	a4, 0(a4)
	add	a5, a3, s10
	lbu	a5, 0(a5)
	add	a6, a3, n7
	lbu	a6, 0(a6)
	add	a7, a3, n6
	lbu	a7, 0(a7)
	sw	a4, 928(s1)
	sw	a5, 932(s1)
	sw	a6, 936(s1)
	sw	a7, 940(s1)
	add	a4, a3, n5
	lbu	a4, 0(a4)
	add	a5, a3, n4
	lbu	a5, 0(a5)
	add	a6, a3, s3
	lbu	a6, 0(a6)
	add	a3, a3, s0
	lbu	a3, 0(a3)
	sw	a4, 944(s1)
	sw	a5, 948(s1)
	sw	a6, 952(s1)
	sw	a3, 956(s1)
	add	a1, a1, n8
	mulw	a0, a1, a0
	add	a0, a2, a0
	add	a1, a0, n3
	lbu	a1, 0(a1)
	add	s10, a0, s10
	lbu	a2, 0(s10)
	add	a3, a0, n7
	lbu	a3, 0(a3)
	add	a4, a0, n6
	lbu	a4, 0(a4)
	sw	a1, 992(s1)
	sw	a2, 996(s1)
	sw	a3, 1000(s1)
	sw	a4, 1004(s1)
	add	a1, a0, n5
	lbu	a1, 0(a1)
	add	a2, a0, n4
	lbu	a2, 0(a2)
	add	a3, a0, s3
	lbu	a3, 0(a3)
	add	a0, a0, s0
	lbu	a0, 0(a0)
	sw	a1, 1008(s1)
	sw	a2, 1012(s1)
	sw	a3, 1016(s1)
	sw	a0, 1020(s1)
	lw	a0, 0(t5)
	lw	a1, 8(t5)
	slli	a0, a0, 1
	add	a0, a0, a1
	lw	a1, 4(t5)
	lw	a2, 12(t5)
	mul	a0, a0, t1
	divw	a0, a0, t0
	slli	a1, a1, 1
	add	a1, a1, a2
	lw	a2, 0(t4)
	lw	a3, 8(t4)
	mul	a1, a1, t1
	divw	a1, a1, t0
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, t1
	divw	a2, a2, t0
	lw	a3, 4(t4)
	lw	a4, 12(t4)
	slli	a5, t6, 1
	add	a0, a0, a5
	slli	a3, a3, 1
	add	a3, a3, a4
	mul	a3, a3, t1
	divw	a3, a3, t0
	lw	a4, 0(t3)
	lw	a5, 8(t3)
	slli	a6, n1, 1
	add	a1, a1, a6
	slli	a4, a4, 1
	add	a4, a4, a5
	mul	a4, a4, t1
	divw	a4, a4, t0
	lw	a5, 4(t3)
	lw	a6, 12(t3)
	add	a2, a2, t6
	add	a0, a0, a2
	slli	a5, a5, 1
	add	a5, a5, a6
	mul	a2, a5, t1
	divw	a2, a2, t0
	lw	a5, 0(t2)
	lw	a6, 8(t2)
	add	a3, a3, n1
	add	a1, a1, a3
	slli	a5, a5, 1
	add	a5, a5, a6
	mul	a3, a5, t1
	divw	a3, a3, t0
	add	a4, a4, t6
	lw	a5, 4(t2)
	lw	a6, 12(t2)
	add	a3, a4, a3
	addw	a3, a0, a3
	slli	a5, a5, 1
	add	a5, a5, a6
	mul	a0, a5, t1
	divw	a0, a0, t0
	add	a2, a2, n1
	add	a0, a2, a0
	sraiw	a2, a3, 31
	xor	a4, a3, a2
	sub	a4, a4, a2
	andi	a2, a4, 15
	slli	a2, a2, 2
	lui	s6, %hi(roundtab)
	addi	s6, s6, %lo(roundtab)
	add	a2, s6, a2
	lw	a2, 0(a2)
	addw	a0, a1, a0
	srli	a4, a4, 3
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	and	a1, a4, s2
	addw	a2, a2, a1
	bgez	a3, .LBB4_29
# %bb.28:
	negw	a2, a2
.LBB4_29:
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	s4, 88(sp)                      # 8-byte Folded Reload
	sraiw	a4, a0, 31
	xor	a3, a0, a4
	sub	a3, a3, a4
	andi	a4, a3, 15
	slli	a4, a4, 2
	add	a4, s6, a4
	lw	a4, 0(a4)
	srli	a3, a3, 3
	and	a3, a3, s2
	addw	a3, a4, a3
	mv	s5, t6
	mv	s7, n1
	bgez	a0, .LBB4_31
# %bb.30:
	negw	a3, a3
.LBB4_31:
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	mv	a5, s1
	call	FindChromBlock_P
	ld	a0, 344(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_45
# %bb.32:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_46
.LBB4_33:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	j	.LBB4_47
.LBB4_34:
	lui	a0, %hi(mv_outside_frame)
	lw	a1, %lo(mv_outside_frame)(a0)
	lui	a0, %hi(pels)
	lui	a2, %hi(long_vectors)
	lw	a3, %lo(long_vectors)(a2)
	lw	a0, %lo(pels)(a0)
	seqz	a2, a1
	li	a1, 32
	beqz	a3, .LBB4_36
# %bb.35:
	li	a1, 64
.LBB4_36:
	addi	a2, a2, -1
	lw	a3, 4(t5)
	lw	a4, 12(t5)
	and	a1, a2, a1
	add	a2, a1, a0
	slli	a3, a3, 1
	add	a3, a3, a4
	lw	a0, 0(t5)
	lw	a1, 8(t5)
	ld	a5, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a3, a5
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	slli	a0, a0, 1
	add	a0, a0, a1
	mul	a0, a0, a5
	divw	a0, a0, a4
	addw	a0, a0, t2
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	add	a1, n3, t3
	add	a1, a3, a1
	mul	a1, a2, a1
	slliw	a1, a1, 1
	slli	a2, a2, 2
	ld	a3, 320(sp)                     # 8-byte Folded Reload
	addi	a3, a3, 32
.LBB4_37:                               # =>This Inner Loop Header: Depth=1
	add	a4, a0, a1
	add	a5, a4, t4
	lbu	a5, 0(a5)
	add	a6, a4, t6
	lbu	a6, 0(a6)
	add	a7, a4, n1
	lbu	a7, 0(a7)
	add	t0, a4, n2
	lbu	t0, 0(t0)
	sw	a5, -32(a3)
	sw	a6, -28(a3)
	sw	a7, -24(a3)
	sw	t0, -20(a3)
	add	a5, a4, s7
	lbu	a5, 0(a5)
	add	a6, a4, s8
	lbu	a6, 0(a6)
	add	a7, a4, s9
	lbu	a7, 0(a7)
	add	t0, a4, s10
	lbu	t0, 0(t0)
	sw	a5, -16(a3)
	sw	a6, -12(a3)
	sw	a7, -8(a3)
	sw	t0, -4(a3)
	add	a5, a4, s11
	lbu	a5, 0(a5)
	add	a6, a4, s4
	lbu	a6, 0(a6)
	add	a7, a4, s0
	lbu	a7, 0(a7)
	add	t0, a4, s3
	lbu	t0, 0(t0)
	sw	a5, 0(a3)
	sw	a6, 4(a3)
	sw	a7, 8(a3)
	sw	t0, 12(a3)
	add	a5, a4, s1
	lbu	a5, 0(a5)
	add	a6, a4, s2
	lbu	a6, 0(a6)
	add	a7, a4, s5
	lbu	a7, 0(a7)
	add	a4, a4, s6
	lbu	a4, 0(a4)
	sw	a5, 16(a3)
	sw	a6, 20(a3)
	sw	a7, 24(a3)
	sw	a4, 28(a3)
	addi	a3, a3, 64
	addw	a1, a1, a2
	bne	a3, t1, .LBB4_37
# %bb.38:
	lw	a0, 0(t5)
	lw	a1, 8(t5)
	slli	a0, a0, 1
	add	a0, a0, a1
	ld	a6, 424(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a6
	ld	a5, 432(sp)                     # 8-byte Folded Reload
	divw	a0, a0, a5
	lw	a1, 4(t5)
	lw	a2, 12(t5)
	addw	a3, a0, t2
	slliw	a4, a3, 2
	slli	a1, a1, 1
	add	a1, a1, a2
	mul	a0, a1, a6
	divw	a0, a0, a5
	addw	a0, a0, t3
	sraiw	a1, a4, 31
	xor	a4, a4, a1
	sub	a4, a4, a1
	andi	a1, a4, 12
	slli	a1, a1, 2
	lui	s2, %hi(roundtab)
	addi	s2, s2, %lo(roundtab)
	add	a1, s2, a1
	lw	a2, 0(a1)
	slliw	a5, a0, 2
	srli	a4, a4, 3
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	and	a4, a4, s0
	addw	a2, a4, a2
	bgez	a3, .LBB4_40
# %bb.39:
	negw	a2, a2
.LBB4_40:
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s1, 320(sp)                     # 8-byte Folded Reload
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	s4, 88(sp)                      # 8-byte Folded Reload
	sraiw	a3, a5, 31
	xor	a5, a5, a3
	sub	a5, a5, a3
	andi	a3, a5, 12
	slli	a3, a3, 2
	add	a3, s2, a3
	lw	a3, 0(a3)
	srli	a5, a5, 3
	and	a5, a5, s0
	addw	a3, a5, a3
	mv	s5, t2
	mv	s7, t3
	bgez	a0, .LBB4_42
# %bb.41:
	negw	a3, a3
.LBB4_42:
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	mv	a5, s1
	call	FindChromBlock_P
	ld	a0, 336(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_54
# %bb.43:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_55
.LBB4_44:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	j	.LBB4_56
.LBB4_45:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_33
.LBB4_46:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a5, a0, a2
.LBB4_47:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a6, a0
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a3, -8
	neg	a6, a6
	blt	a1, a3, .LBB4_49
# %bb.48:
	li	a1, -8
.LBB4_49:
	and	a0, a6, a0
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a6, a2, 31
	add	a2, a2, a6
	sraiw	a2, a2, 1
	sgtz	a6, a2
	neg	a7, a6
	addi	a6, a5, 1
	srliw	t0, a6, 31
	add	a6, a6, t0
	sraiw	a6, a6, 1
	neg	a6, a6
	and	a2, a7, a2
	blt	a6, a3, .LBB4_51
# %bb.50:
	li	a6, -8
.LBB4_51:
	addiw	a3, a6, 15
	li	a6, 16
	sd	a6, 0(sp)
	mv	a6, s4
	mv	a7, s1
	call	BiDirPredBlock
	ld	a0, 352(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_63
# %bb.52:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_64
.LBB4_53:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	j	.LBB4_65
.LBB4_54:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_44
.LBB4_55:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a5, a0, a2
.LBB4_56:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a6, a0
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a3, -8
	neg	a6, a6
	blt	a1, a3, .LBB4_58
# %bb.57:
	li	a1, -8
.LBB4_58:
	and	a0, a6, a0
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a6, a2, 31
	add	a2, a2, a6
	sraiw	a2, a2, 1
	sgtz	a6, a2
	neg	a7, a6
	addi	a6, a5, 1
	srliw	t0, a6, 31
	add	a6, a6, t0
	sraiw	a6, a6, 1
	neg	a6, a6
	and	a2, a7, a2
	blt	a6, a3, .LBB4_60
# %bb.59:
	li	a6, -8
.LBB4_60:
	addiw	a3, a6, 15
	li	a6, 16
	sd	a6, 0(sp)
	mv	a6, s4
	mv	a7, s1
	call	BiDirPredBlock
	ld	a0, 336(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_70
# %bb.61:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_71
.LBB4_62:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	j	.LBB4_72
.LBB4_63:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_53
.LBB4_64:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a5, a0, a2
.LBB4_65:
	li	a1, 1
	subw	a0, a1, a4
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a2, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a2
	addi	a2, a4, 1
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	neg	a2, a2
	srai	a3, a2, 63
	and	a6, a3, a2
	subw	a1, a1, a5
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	sgtz	a2, a1
	neg	a2, a2
	and	a2, a2, a1
	addi	a1, a5, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a3, a1
	li	a7, -8
	addiw	a1, a6, 7
	blt	a3, a7, .LBB4_67
# %bb.66:
	li	a3, -8
.LBB4_67:
	addiw	a3, a3, 15
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	ld	a7, 24(sp)                      # 8-byte Folded Reload
	call	BiDirPredBlock
	ld	a0, 360(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_77
# %bb.68:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_78
.LBB4_69:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	j	.LBB4_79
.LBB4_70:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_62
.LBB4_71:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a5, a0, a2
.LBB4_72:
	addi	a7, s1, 32
	li	a1, 1
	subw	a0, a1, a4
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a2, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a2
	addi	a2, a4, 1
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	neg	a2, a2
	srai	a3, a2, 63
	and	a6, a3, a2
	subw	a1, a1, a5
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	sgtz	a2, a1
	neg	a2, a2
	and	a2, a2, a1
	addi	a1, a5, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a3, a1
	li	t0, -8
	addiw	a1, a6, 7
	blt	a3, t0, .LBB4_74
# %bb.73:
	li	a3, -8
.LBB4_74:
	addiw	a3, a3, 15
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	call	BiDirPredBlock
	ld	a0, 336(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_84
# %bb.75:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_85
.LBB4_76:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	j	.LBB4_86
.LBB4_77:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_69
.LBB4_78:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a5, a0, a2
.LBB4_79:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a1, a0
	neg	a3, a1
	addi	a1, a4, 1
	srliw	a6, a1, 31
	add	a1, a1, a6
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a6, -8
	and	a0, a3, a0
	blt	a1, a6, .LBB4_81
# %bb.80:
	li	a1, -8
.LBB4_81:
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 56(sp)                      # 8-byte Folded Reload
	call	BiDirPredBlock
	ld	a0, 368(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_91
# %bb.82:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_92
.LBB4_83:
	ld	s0, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, s0
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	subw	s0, s0, a2
	j	.LBB4_93
.LBB4_84:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_76
.LBB4_85:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a5, a0, a2
.LBB4_86:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a1, a0
	neg	a3, a1
	addi	a1, a4, 1
	srliw	a6, a1, 31
	add	a1, a1, a6
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a6, -8
	and	a0, a3, a0
	blt	a1, a6, .LBB4_88
# %bb.87:
	li	a1, -8
.LBB4_88:
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 56(sp)                      # 8-byte Folded Reload
	call	BiDirPredBlock
	ld	a0, 336(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 12(a0)
	slli	a1, a1, 1
	add	a2, a1, a2
	slli	a1, a3, 1
	beqz	s5, .LBB4_96
# %bb.89:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a4, s5, a2
	addw	a4, a4, a3
	mv	a5, s7
	add	a0, a1, a0
	beqz	s7, .LBB4_97
.LBB4_90:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a5, a5, a0
	addw	a5, a5, a1
	j	.LBB4_98
.LBB4_91:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_83
.LBB4_92:
	ld	a1, 432(sp)                     # 8-byte Folded Reload
	ld	s0, 424(sp)                     # 8-byte Folded Reload
	subw	s0, s0, a1
	mul	a0, a0, s0
	divw	a5, a0, a1
.LBB4_93:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	addi	a1, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a1
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	srai	a3, a1, 63
	and	a1, a3, a1
	addiw	a1, a1, 7
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	BiDirPredBlock
	ld	s3, 344(sp)                     # 8-byte Folded Reload
	lw	a1, 0(s3)
	lw	a2, 8(s3)
	lw	a3, 4(s3)
	lw	a0, 12(s3)
	slli	a1, a1, 1
	add	a1, a1, a2
	slli	a2, a3, 1
	mv	t1, s5
	beqz	s5, .LBB4_100
# %bb.94:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a1, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a1, t1, a1
	add	a1, a1, a3
	mv	t2, s7
	add	a0, a2, a0
	beqz	s7, .LBB4_101
.LBB4_95:
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	mul	a2, a0, a2
	ld	a3, 432(sp)                     # 8-byte Folded Reload
	divw	a2, a2, a3
	subw	a0, t2, a0
	add	a0, a0, a2
	j	.LBB4_102
.LBB4_96:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a2, a2, a3
	divw	a4, a2, a4
	mv	a5, s7
	add	a0, a1, a0
	bnez	s7, .LBB4_90
.LBB4_97:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a5, a0, a2
.LBB4_98:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	addi	a1, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a1
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	srai	a3, a1, 63
	and	a1, a3, a1
	addiw	a1, a1, 7
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	BiDirPredBlock
	ld	a4, 336(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a4)
	lw	a1, 8(a4)
	slli	a0, a0, 1
	add	a0, a0, a1
	beqz	s5, .LBB4_105
# %bb.99:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a2
	subw	a0, s5, a0
	addw	a0, a0, a1
	j	.LBB4_106
.LBB4_100:
	mul	a1, a1, s0
	ld	a3, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a3
	mv	t2, s7
	add	a0, a2, a0
	bnez	s7, .LBB4_95
.LBB4_101:
	mul	a0, a0, s0
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	divw	a0, a0, a2
.LBB4_102:
	ld	s3, 352(sp)                     # 8-byte Folded Reload
	lw	a3, 0(s3)
	lw	a4, 8(s3)
	lw	a5, 4(s3)
	lw	a2, 12(s3)
	slli	a3, a3, 1
	add	a3, a3, a4
	slli	a4, a5, 1
	beqz	t1, .LBB4_108
# %bb.103:
	ld	a5, 424(sp)                     # 8-byte Folded Reload
	mul	a5, a3, a5
	ld	a6, 432(sp)                     # 8-byte Folded Reload
	divw	a5, a5, a6
	subw	a3, t1, a3
	add	a3, a3, a5
	add	a2, a4, a2
	beqz	t2, .LBB4_109
.LBB4_104:
	ld	a4, 424(sp)                     # 8-byte Folded Reload
	mul	a4, a2, a4
	ld	a5, 432(sp)                     # 8-byte Folded Reload
	divw	a4, a4, a5
	subw	a2, t2, a2
	add	a2, a2, a4
	j	.LBB4_110
.LBB4_105:
	ld	a2, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	mul	a0, a0, a1
	divw	a0, a0, a2
.LBB4_106:
	mv	a5, s7
	lw	a1, 4(a4)
	lw	a3, 12(a4)
	slliw	a2, a0, 2
	slli	a1, a1, 1
	add	a1, a1, a3
	beqz	s7, .LBB4_113
# %bb.107:
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	mul	a3, a1, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a4
	subw	a1, a5, a1
	addw	a1, a1, a3
	j	.LBB4_114
.LBB4_108:
	mul	a3, a3, s0
	ld	a5, 432(sp)                     # 8-byte Folded Reload
	divw	a3, a3, a5
	add	a2, a4, a2
	bnez	t2, .LBB4_104
.LBB4_109:
	mul	a2, a2, s0
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a2, a2, a4
.LBB4_110:
	ld	s3, 360(sp)                     # 8-byte Folded Reload
	lw	a4, 0(s3)
	lw	a6, 8(s3)
	lw	a7, 4(s3)
	lw	a5, 12(s3)
	slli	a4, a4, 1
	add	a4, a4, a6
	slli	a6, a7, 1
	beqz	t1, .LBB4_123
# %bb.111:
	ld	a7, 424(sp)                     # 8-byte Folded Reload
	mul	a7, a4, a7
	ld	t0, 432(sp)                     # 8-byte Folded Reload
	divw	a7, a7, t0
	subw	a4, t1, a4
	add	a4, a4, a7
	add	a3, a3, a1
	add	a5, a6, a5
	beqz	t2, .LBB4_124
.LBB4_112:
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	mul	a1, a5, a1
	ld	a6, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a6
	subw	a5, t2, a5
	add	a1, a5, a1
	j	.LBB4_125
.LBB4_113:
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	mul	a1, a1, a3
	divw	a1, a1, a4
.LBB4_114:
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	sub	a3, a2, a3
	andi	a2, a3, 12
	slli	a2, a2, 2
	add	a2, s2, a2
	lw	a4, 0(a2)
	slliw	a2, a1, 2
	srli	a3, a3, 3
	and	a3, a3, s0
	addw	s8, a4, a3
	bgez	a0, .LBB4_116
# %bb.115:
	negw	s8, s8
.LBB4_116:
	sraiw	a0, a2, 31
	xor	a2, a2, a0
	sub	a2, a2, a0
	andi	a0, a2, 12
	slli	a0, a0, 2
	add	a0, s2, a0
	lw	a0, 0(a0)
	srli	a2, a2, 3
	and	a2, a2, s0
	addw	s9, a2, a0
	bltz	a1, .LBB4_121
# %bb.117:
	li	s10, 7
	li	a0, -2
	li	s11, 7
	bge	s8, a0, .LBB4_122
.LBB4_118:
	blt	s9, a0, .LBB4_120
.LBB4_119:
	addi	a0, s9, 1
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	li	a1, 7
	sub	s10, a1, a0
.LBB4_120:
	li	a0, 1
	subw	a1, a0, s9
	slti	a2, a1, -1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	addi	a2, a2, -1
	and	s0, a2, a1
	subw	a0, a0, s8
	slti	a1, a0, -1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a1, a1, -1
	and	s6, a1, a0
	addi	a6, s4, 1280
	addi	a7, s1, 1280
	mv	s2, s1
	li	s1, 8
	sd	s1, 0(sp)
	mv	a0, s6
	mv	a1, s11
	mv	a2, s0
	mv	a3, s10
	mv	a4, s8
	mv	a5, s9
	call	BiDirPredBlock
	addi	a6, s4, 1024
	sd	s1, 0(sp)
	mv	a0, s6
	mv	a1, s11
	mv	a2, s0
	mv	a3, s10
	mv	a4, s8
	mv	a5, s9
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	call	BiDirPredBlock
	j	.LBB4_137
.LBB4_121:
	negw	s9, s9
	li	s10, 7
	li	a0, -2
	li	s11, 7
	blt	s8, a0, .LBB4_118
.LBB4_122:
	addi	a1, s8, 1
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	li	a2, 7
	sub	s11, a2, a1
	bge	s9, a0, .LBB4_119
	j	.LBB4_120
.LBB4_123:
	mul	a4, a4, s0
	ld	a7, 432(sp)                     # 8-byte Folded Reload
	divw	a4, a4, a7
	add	a3, a3, a1
	add	a5, a6, a5
	bnez	t2, .LBB4_112
.LBB4_124:
	mul	a1, a5, s0
	ld	a5, 432(sp)                     # 8-byte Folded Reload
	divw	a1, a1, a5
.LBB4_125:
	add	a2, a2, a0
	add	a0, a4, a3
	ld	s3, 368(sp)                     # 8-byte Folded Reload
	lw	a4, 0(s3)
	lw	a5, 8(s3)
	lw	a6, 4(s3)
	lw	a3, 12(s3)
	slli	a4, a4, 1
	add	a5, a4, a5
	slli	a4, a6, 1
	beqz	t1, .LBB4_128
# %bb.126:
	ld	a6, 424(sp)                     # 8-byte Folded Reload
	mul	a6, a5, a6
	ld	a7, 432(sp)                     # 8-byte Folded Reload
	divw	a6, a6, a7
	subw	a5, t1, a5
	add	a5, a5, a6
	add	a1, a1, a2
	add	a3, a4, a3
	addw	a0, a5, a0
	beqz	t2, .LBB4_129
.LBB4_127:
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	mul	a2, a3, a2
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	divw	a2, a2, a4
	subw	a3, t2, a3
	add	a2, a3, a2
	j	.LBB4_130
.LBB4_128:
	mul	a5, a5, s0
	ld	a6, 432(sp)                     # 8-byte Folded Reload
	divw	a5, a5, a6
	add	a1, a1, a2
	add	a3, a4, a3
	addw	a0, a5, a0
	bnez	t2, .LBB4_127
.LBB4_129:
	mul	a2, a3, s0
	ld	a3, 432(sp)                     # 8-byte Folded Reload
	divw	a2, a2, a3
.LBB4_130:
	sraiw	a3, a0, 31
	xor	a4, a0, a3
	sub	a4, a4, a3
	andi	a3, a4, 15
	slli	a3, a3, 2
	add	a3, s6, a3
	lw	a3, 0(a3)
	addw	a1, a2, a1
	srli	a4, a4, 3
	and	a2, a4, s2
	addw	s8, a3, a2
	bgez	a0, .LBB4_132
# %bb.131:
	negw	s8, s8
.LBB4_132:
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	sub	a2, a2, a0
	andi	a0, a2, 15
	slli	a0, a0, 2
	add	a0, s6, a0
	lw	a0, 0(a0)
	srli	a2, a2, 3
	and	a2, a2, s2
	addw	s9, a0, a2
	bltz	a1, .LBB4_142
# %bb.133:
	li	s10, 7
	li	a0, -2
	li	s11, 7
	bge	s8, a0, .LBB4_143
.LBB4_134:
	blt	s9, a0, .LBB4_136
.LBB4_135:
	addi	a0, s9, 1
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	li	a1, 7
	sub	s10, a1, a0
.LBB4_136:
	li	a0, 1
	subw	a1, a0, s9
	slti	a2, a1, -1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	addi	a2, a2, -1
	and	s6, a2, a1
	subw	a0, a0, s8
	slti	a1, a0, -1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a1, a1, -1
	and	s0, a1, a0
	addi	a6, s4, 1280
	addi	a7, s1, 1280
	mv	s2, s1
	li	s1, 8
	sd	s1, 0(sp)
	mv	a0, s0
	mv	a1, s11
	mv	a2, s6
	mv	a3, s10
	mv	a4, s8
	mv	a5, s9
	call	BiDirPredBlock
	addi	a6, s4, 1024
	sd	s1, 0(sp)
	mv	a0, s0
	mv	a1, s11
	mv	a2, s6
	mv	a3, s10
	mv	a4, s8
	mv	a5, s9
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	call	BiDirPredBlock
	ld	s3, 136(sp)                     # 8-byte Folded Reload
.LBB4_137:
	li	a0, 720
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lui	a1, 64
	add	a0, a0, a1
	ld	a1, 656(a0)
	sw	s5, 0(a1)
	sw	s7, 4(a1)
	lui	a0, %hi(pels)
	lw	t1, %lo(pels)(a0)
	ld	t2, 120(sp)                     # 8-byte Folded Reload
	ld	a2, 0(t2)
	sw	zero, 8(a1)
	sw	zero, 12(a1)
	ld	t4, 144(sp)                     # 8-byte Folded Reload
	mul	a1, t1, t4
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	add	a1, a1, a2
	addi	a1, a1, 7
	addi	a2, s2, 32
	addi	a3, s3, 32
	mv	a0, s2
	ld	t3, 328(sp)                     # 8-byte Folded Reload
.LBB4_138:                              # =>This Inner Loop Header: Depth=1
	lbu	a4, -7(a1)
	lw	a5, -32(a2)
	lbu	a6, -6(a1)
	lw	a7, -28(a2)
	subw	a4, a4, a5
	sw	a4, -32(a3)
	subw	a4, a6, a7
	lbu	a5, -5(a1)
	lw	a6, -24(a2)
	lbu	a7, -4(a1)
	lw	t0, -20(a2)
	sw	a4, -28(a3)
	subw	a4, a5, a6
	sw	a4, -24(a3)
	subw	a4, a7, t0
	lbu	a5, -3(a1)
	lw	a6, -16(a2)
	lbu	a7, -2(a1)
	lw	t0, -12(a2)
	sw	a4, -20(a3)
	subw	a4, a5, a6
	sw	a4, -16(a3)
	subw	a4, a7, t0
	lbu	a5, -1(a1)
	lw	a6, -8(a2)
	lbu	a7, 0(a1)
	lw	t0, -4(a2)
	sw	a4, -12(a3)
	subw	a4, a5, a6
	sw	a4, -8(a3)
	subw	a4, a7, t0
	lbu	a5, 1(a1)
	lw	a6, 0(a2)
	lbu	a7, 2(a1)
	lw	t0, 4(a2)
	sw	a4, -4(a3)
	subw	a4, a5, a6
	sw	a4, 0(a3)
	subw	a4, a7, t0
	lbu	a5, 3(a1)
	lw	a6, 8(a2)
	lbu	a7, 4(a1)
	lw	t0, 12(a2)
	sw	a4, 4(a3)
	subw	a4, a5, a6
	sw	a4, 8(a3)
	subw	a4, a7, t0
	lbu	a5, 5(a1)
	lw	a6, 16(a2)
	lbu	a7, 6(a1)
	lw	t0, 20(a2)
	sw	a4, 12(a3)
	subw	a4, a5, a6
	sw	a4, 16(a3)
	subw	a4, a7, t0
	lbu	a5, 7(a1)
	lw	a6, 24(a2)
	lbu	a7, 8(a1)
	lw	t0, 28(a2)
	sw	a4, 20(a3)
	subw	a4, a5, a6
	sw	a4, 24(a3)
	subw	a4, a7, t0
	sw	a4, 28(a3)
	add	a1, a1, t1
	addi	a2, a2, 64
	addi	a3, a3, 64
	bne	a2, t3, .LBB4_138
# %bb.139:
	li	t5, 0
	srai	a3, t4, 1
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	srai	a4, a4, 1
	lui	a1, %hi(cpels)
	lw	a1, %lo(cpels)(a1)
	ld	a5, 8(t2)
	addi	a2, s3, 1024
	ld	a6, 16(t2)
	mul	a3, a1, a3
	add	a3, a3, a4
	addi	a4, a3, 3
	add	a3, a5, a4
	add	a4, a6, a4
	li	a5, 256
.LBB4_140:                              # =>This Inner Loop Header: Depth=1
	lbu	a6, -3(a3)
	add	a7, s0, t5
	lw	t0, 0(a7)
	lbu	t1, -3(a4)
	lw	t2, 256(a7)
	subw	a6, a6, t0
	add	t0, a2, t5
	sw	a6, 0(t0)
	subw	a6, t1, t2
	lbu	t1, -2(a3)
	lw	t2, 4(a7)
	lbu	t3, -2(a4)
	lw	t4, 260(a7)
	sw	a6, 256(t0)
	subw	a6, t1, t2
	sw	a6, 4(t0)
	subw	t3, t3, t4
	lbu	a6, -1(a3)
	lw	t1, 8(a7)
	lbu	t2, -1(a4)
	lw	t4, 264(a7)
	sw	t3, 260(t0)
	subw	a6, a6, t1
	sw	a6, 8(t0)
	subw	a6, t2, t4
	lbu	t1, 0(a3)
	lw	t2, 12(a7)
	lbu	t3, 0(a4)
	lw	t4, 268(a7)
	sw	a6, 264(t0)
	subw	a6, t1, t2
	sw	a6, 12(t0)
	subw	t3, t3, t4
	lbu	a6, 1(a3)
	lw	t1, 16(a7)
	lbu	t2, 1(a4)
	lw	t4, 272(a7)
	sw	t3, 268(t0)
	subw	a6, a6, t1
	sw	a6, 16(t0)
	subw	a6, t2, t4
	lbu	t1, 2(a3)
	lw	t2, 20(a7)
	lbu	t3, 2(a4)
	lw	t4, 276(a7)
	sw	a6, 272(t0)
	subw	a6, t1, t2
	sw	a6, 20(t0)
	subw	t3, t3, t4
	lbu	a6, 3(a3)
	lw	t1, 24(a7)
	lbu	t2, 3(a4)
	lw	t4, 280(a7)
	sw	t3, 276(t0)
	subw	a6, a6, t1
	sw	a6, 24(t0)
	subw	a6, t2, t4
	lbu	t1, 4(a3)
	lw	t2, 28(a7)
	lbu	t3, 4(a4)
	lw	a7, 284(a7)
	sw	a6, 280(t0)
	subw	a6, t1, t2
	sw	a6, 28(t0)
	subw	a6, t3, a7
	sw	a6, 284(t0)
	addi	t5, t5, 32
	add	a3, a3, a1
	add	a4, a4, a1
	bne	t5, a5, .LBB4_140
# %bb.141:
	call	free
	mv	a0, s3
	ld	ra, 1560(sp)                    # 8-byte Folded Reload
	ld	s0, 1552(sp)                    # 8-byte Folded Reload
	ld	s1, 1544(sp)                    # 8-byte Folded Reload
	ld	s2, 1536(sp)                    # 8-byte Folded Reload
	ld	s3, 1528(sp)                    # 8-byte Folded Reload
	ld	s4, 1520(sp)                    # 8-byte Folded Reload
	ld	s5, 1512(sp)                    # 8-byte Folded Reload
	ld	s6, 1504(sp)                    # 8-byte Folded Reload
	ld	s7, 1496(sp)                    # 8-byte Folded Reload
	ld	s8, 1488(sp)                    # 8-byte Folded Reload
	ld	s9, 1480(sp)                    # 8-byte Folded Reload
	ld	s10, 1472(sp)                   # 8-byte Folded Reload
	ld	s11, 1464(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1568
	ret
.LBB4_142:
	negw	s9, s9
	li	s10, 7
	li	a0, -2
	li	s11, 7
	blt	s8, a0, .LBB4_134
.LBB4_143:
	addi	a1, s8, 1
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	li	a2, 7
	sub	s11, a2, a1
	bge	s9, a0, .LBB4_135
	j	.LBB4_136
.Lfunc_end4:
	.size	Predict_B, .Lfunc_end4-Predict_B
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindForwLumPredPB               # -- Begin function FindForwLumPredPB
	.p2align	2
	.type	FindForwLumPredPB,@function
FindForwLumPredPB:                      # @FindForwLumPredPB
# %bb.0:
	ld	t0, 8(sp)
	blez	t0, .LBB5_7
# %bb.1:
	ld	t3, 16(sp)
	ld	t1, 0(sp)
	lui	t2, %hi(mv_outside_frame)
	lw	t2, %lo(mv_outside_frame)(t2)
	lui	t4, %hi(pels)
	lui	t5, %hi(long_vectors)
	lw	n1, %lo(long_vectors)(t5)
	lw	t4, %lo(pels)(t4)
	seqz	t5, t2
	li	t6, 32
	beqz	n1, .LBB5_3
# %bb.2:
	li	t6, 64
.LBB5_3:
	li	t2, 0
	addi	t5, t5, -1
	and	t5, t5, t6
	add	t4, t4, t5
	slli	t3, t3, 3
	andi	t5, t3, 8
	addw	a1, t5, a1
	lw	t5, 4(a3)
	lw	t6, 12(a3)
	lw	n1, 0(a3)
	lw	a3, 8(a3)
	slli	t5, t5, 1
	add	t5, t5, t6
	slli	n1, n1, 1
	add	a3, n1, a3
	mul	t5, t5, a6
	divw	t5, t5, a5
	mul	a3, a3, a6
	divw	a3, a3, a5
	slli	a1, a1, 1
	add	a1, a1, a3
	add	a0, a0, a7
	add	a0, a0, a1
	andi	t3, t3, 16
	add	t1, t1, t3
	slli	a2, a2, 1
	add	a2, t1, a2
	add	a2, t5, a2
	mul	a1, a2, t4
	slliw	a1, a1, 1
	slli	a2, t4, 2
	slli	a3, t0, 2
	mv	a5, a4
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	slli	a6, t2, 6
	add	a6, a3, a6
	add	a6, a4, a6
	add	a7, a0, a1
	mv	t1, a5
.LBB5_5:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(a7)
	sw	t3, 0(t1)
	addi	t1, t1, 4
	addi	a7, a7, 2
	bne	t1, a6, .LBB5_5
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	addi	t2, t2, 1
	addi	a5, a5, 64
	addw	a1, a1, a2
	bne	t2, t0, .LBB5_4
.LBB5_7:
	ret
.Lfunc_end5:
	.size	FindForwLumPredPB, .Lfunc_end5-FindForwLumPredPB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindChromBlock_P                # -- Begin function FindChromBlock_P
	.p2align	2
	.type	FindChromBlock_P,@function
FindChromBlock_P:                       # @FindChromBlock_P
# %bb.0:
	lui	a6, %hi(mv_outside_frame)
	lw	a6, %lo(mv_outside_frame)(a6)
	lui	a7, %hi(pels)
	lw	a7, %lo(pels)(a7)
	seqz	a6, a6
	lui	t0, %hi(long_vectors)
	lw	t1, %lo(long_vectors)(t0)
	srliw	t0, a7, 31
	add	a7, a7, t0
	sraiw	a7, a7, 1
	li	t0, 16
	beqz	t1, .LBB6_2
# %bb.1:
	li	t0, 32
.LBB6_2:
	addi	a6, a6, -1
	and	a6, a6, t0
	add	a6, a7, a6
	srai	a0, a0, 1
	srai	a1, a1, 1
	srai	t3, a2, 1
	or	a7, a3, a2
	andi	a7, a7, 1
	srai	t2, a3, 1
	bnez	a7, .LBB6_4
# %bb.3:
	add	a0, t3, a0
	ld	a2, 8(a4)
	add	a7, t2, a1
	ld	a1, 16(a4)
	mul	a3, a7, a6
	add	t5, a2, a3
	add	a4, t5, a0
	lbu	a4, 0(a4)
	add	t6, a1, a3
	sw	a4, 1024(a5)
	add	a3, t6, a0
	lbu	a3, 0(a3)
	sw	a3, 1280(a5)
	addi	a3, a0, 1
	add	a4, t5, a3
	lbu	a4, 0(a4)
	sw	a4, 1028(a5)
	add	a4, t6, a3
	lbu	a4, 0(a4)
	sw	a4, 1284(a5)
	addi	a4, a0, 2
	add	t0, t5, a4
	lbu	t0, 0(t0)
	sw	t0, 1032(a5)
	add	t0, t6, a4
	lbu	t0, 0(t0)
	sw	t0, 1288(a5)
	addi	t0, a0, 3
	add	t1, t5, t0
	lbu	t1, 0(t1)
	sw	t1, 1036(a5)
	add	t1, t6, t0
	lbu	t1, 0(t1)
	sw	t1, 1292(a5)
	addi	t1, a0, 4
	add	t2, t5, t1
	lbu	t2, 0(t2)
	sw	t2, 1040(a5)
	add	t2, t6, t1
	lbu	t2, 0(t2)
	sw	t2, 1296(a5)
	addi	t2, a0, 5
	add	t3, t5, t2
	lbu	t3, 0(t3)
	sw	t3, 1044(a5)
	add	t3, t6, t2
	lbu	t3, 0(t3)
	sw	t3, 1300(a5)
	addi	t3, a0, 6
	add	t4, t5, t3
	lbu	t4, 0(t4)
	sw	t4, 1048(a5)
	add	t4, t6, t3
	lbu	t4, 0(t4)
	sw	t4, 1304(a5)
	addi	t4, a0, 7
	add	t5, t5, t4
	lbu	t5, 0(t5)
	sw	t5, 1052(a5)
	add	t6, t6, t4
	lbu	t5, 0(t6)
	sw	t5, 1308(a5)
	addi	t5, a7, 1
	mul	t5, t5, a6
	add	t6, a2, t5
	add	n1, t6, a0
	lbu	n1, 0(n1)
	add	t5, a1, t5
	sw	n1, 1056(a5)
	add	n1, t5, a0
	lbu	n1, 0(n1)
	sw	n1, 1312(a5)
	add	n1, t6, a3
	lbu	n1, 0(n1)
	sw	n1, 1060(a5)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	sw	n1, 1316(a5)
	add	n1, t6, a4
	lbu	n1, 0(n1)
	sw	n1, 1064(a5)
	add	n1, t5, a4
	lbu	n1, 0(n1)
	sw	n1, 1320(a5)
	add	n1, t6, t0
	lbu	n1, 0(n1)
	sw	n1, 1068(a5)
	add	n1, t5, t0
	lbu	n1, 0(n1)
	sw	n1, 1324(a5)
	add	n1, t6, t1
	lbu	n1, 0(n1)
	sw	n1, 1072(a5)
	add	n1, t5, t1
	lbu	n1, 0(n1)
	sw	n1, 1328(a5)
	add	n1, t6, t2
	lbu	n1, 0(n1)
	sw	n1, 1076(a5)
	add	n1, t5, t2
	lbu	n1, 0(n1)
	sw	n1, 1332(a5)
	add	n1, t6, t3
	lbu	n1, 0(n1)
	sw	n1, 1080(a5)
	add	n1, t5, t3
	lbu	n1, 0(n1)
	sw	n1, 1336(a5)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	sw	t6, 1084(a5)
	add	t5, t5, t4
	lbu	t5, 0(t5)
	sw	t5, 1340(a5)
	addi	t5, a7, 2
	mul	t5, t5, a6
	add	t6, a2, t5
	add	n1, t6, a0
	lbu	n1, 0(n1)
	add	t5, a1, t5
	sw	n1, 1088(a5)
	add	n1, t5, a0
	lbu	n1, 0(n1)
	sw	n1, 1344(a5)
	add	n1, t6, a3
	lbu	n1, 0(n1)
	sw	n1, 1092(a5)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	sw	n1, 1348(a5)
	add	n1, t6, a4
	lbu	n1, 0(n1)
	sw	n1, 1096(a5)
	add	n1, t5, a4
	lbu	n1, 0(n1)
	sw	n1, 1352(a5)
	add	n1, t6, t0
	lbu	n1, 0(n1)
	sw	n1, 1100(a5)
	add	n1, t5, t0
	lbu	n1, 0(n1)
	sw	n1, 1356(a5)
	add	n1, t6, t1
	lbu	n1, 0(n1)
	sw	n1, 1104(a5)
	add	n1, t5, t1
	lbu	n1, 0(n1)
	sw	n1, 1360(a5)
	add	n1, t6, t2
	lbu	n1, 0(n1)
	sw	n1, 1108(a5)
	add	n1, t5, t2
	lbu	n1, 0(n1)
	sw	n1, 1364(a5)
	add	n1, t6, t3
	lbu	n1, 0(n1)
	sw	n1, 1112(a5)
	add	n1, t5, t3
	lbu	n1, 0(n1)
	sw	n1, 1368(a5)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	sw	t6, 1116(a5)
	add	t5, t5, t4
	lbu	t5, 0(t5)
	sw	t5, 1372(a5)
	addi	t5, a7, 3
	mul	t5, t5, a6
	add	t6, a2, t5
	add	n1, t6, a0
	lbu	n1, 0(n1)
	add	t5, a1, t5
	sw	n1, 1120(a5)
	add	n1, t5, a0
	lbu	n1, 0(n1)
	sw	n1, 1376(a5)
	add	n1, t6, a3
	lbu	n1, 0(n1)
	sw	n1, 1124(a5)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	sw	n1, 1380(a5)
	add	n1, t6, a4
	lbu	n1, 0(n1)
	sw	n1, 1128(a5)
	add	n1, t5, a4
	lbu	n1, 0(n1)
	sw	n1, 1384(a5)
	add	n1, t6, t0
	lbu	n1, 0(n1)
	sw	n1, 1132(a5)
	add	n1, t5, t0
	lbu	n1, 0(n1)
	sw	n1, 1388(a5)
	add	n1, t6, t1
	lbu	n1, 0(n1)
	sw	n1, 1136(a5)
	add	n1, t5, t1
	lbu	n1, 0(n1)
	sw	n1, 1392(a5)
	add	n1, t6, t2
	lbu	n1, 0(n1)
	sw	n1, 1140(a5)
	add	n1, t5, t2
	lbu	n1, 0(n1)
	sw	n1, 1396(a5)
	add	n1, t6, t3
	lbu	n1, 0(n1)
	sw	n1, 1144(a5)
	add	n1, t5, t3
	lbu	n1, 0(n1)
	sw	n1, 1400(a5)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	sw	t6, 1148(a5)
	add	t5, t5, t4
	lbu	t5, 0(t5)
	sw	t5, 1404(a5)
	addi	t5, a7, 4
	mul	t5, t5, a6
	add	t6, a2, t5
	add	n1, t6, a0
	lbu	n1, 0(n1)
	add	t5, a1, t5
	sw	n1, 1152(a5)
	add	n1, t5, a0
	lbu	n1, 0(n1)
	sw	n1, 1408(a5)
	add	n1, t6, a3
	lbu	n1, 0(n1)
	sw	n1, 1156(a5)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	sw	n1, 1412(a5)
	add	n1, t6, a4
	lbu	n1, 0(n1)
	sw	n1, 1160(a5)
	add	n1, t5, a4
	lbu	n1, 0(n1)
	sw	n1, 1416(a5)
	add	n1, t6, t0
	lbu	n1, 0(n1)
	sw	n1, 1164(a5)
	add	n1, t5, t0
	lbu	n1, 0(n1)
	sw	n1, 1420(a5)
	add	n1, t6, t1
	lbu	n1, 0(n1)
	sw	n1, 1168(a5)
	add	n1, t5, t1
	lbu	n1, 0(n1)
	sw	n1, 1424(a5)
	add	n1, t6, t2
	lbu	n1, 0(n1)
	sw	n1, 1172(a5)
	add	n1, t5, t2
	lbu	n1, 0(n1)
	sw	n1, 1428(a5)
	add	n1, t6, t3
	lbu	n1, 0(n1)
	sw	n1, 1176(a5)
	add	n1, t5, t3
	lbu	n1, 0(n1)
	sw	n1, 1432(a5)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	sw	t6, 1180(a5)
	add	t5, t5, t4
	lbu	t5, 0(t5)
	sw	t5, 1436(a5)
	addi	t5, a7, 5
	mul	t5, t5, a6
	add	t6, a2, t5
	add	n1, t6, a0
	lbu	n1, 0(n1)
	add	t5, a1, t5
	sw	n1, 1184(a5)
	add	n1, t5, a0
	lbu	n1, 0(n1)
	sw	n1, 1440(a5)
	add	n1, t6, a3
	lbu	n1, 0(n1)
	sw	n1, 1188(a5)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	sw	n1, 1444(a5)
	add	n1, t6, a4
	lbu	n1, 0(n1)
	sw	n1, 1192(a5)
	add	n1, t5, a4
	lbu	n1, 0(n1)
	sw	n1, 1448(a5)
	add	n1, t6, t0
	lbu	n1, 0(n1)
	sw	n1, 1196(a5)
	add	n1, t5, t0
	lbu	n1, 0(n1)
	sw	n1, 1452(a5)
	add	n1, t6, t1
	lbu	n1, 0(n1)
	sw	n1, 1200(a5)
	add	n1, t5, t1
	lbu	n1, 0(n1)
	sw	n1, 1456(a5)
	add	n1, t6, t2
	lbu	n1, 0(n1)
	sw	n1, 1204(a5)
	add	n1, t5, t2
	lbu	n1, 0(n1)
	sw	n1, 1460(a5)
	add	n1, t6, t3
	lbu	n1, 0(n1)
	sw	n1, 1208(a5)
	add	n1, t5, t3
	lbu	n1, 0(n1)
	sw	n1, 1464(a5)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	sw	t6, 1212(a5)
	add	t5, t5, t4
	lbu	t5, 0(t5)
	sw	t5, 1468(a5)
	addi	t5, a7, 6
	mul	t5, t5, a6
	add	t6, a2, t5
	add	n1, t6, a0
	lbu	n1, 0(n1)
	add	t5, a1, t5
	sw	n1, 1216(a5)
	add	n1, t5, a0
	lbu	n1, 0(n1)
	sw	n1, 1472(a5)
	add	n1, t6, a3
	lbu	n1, 0(n1)
	sw	n1, 1220(a5)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	sw	n1, 1476(a5)
	add	n1, t6, a4
	lbu	n1, 0(n1)
	sw	n1, 1224(a5)
	add	n1, t5, a4
	lbu	n1, 0(n1)
	sw	n1, 1480(a5)
	add	n1, t6, t0
	lbu	n1, 0(n1)
	sw	n1, 1228(a5)
	add	n1, t5, t0
	lbu	n1, 0(n1)
	sw	n1, 1484(a5)
	add	n1, t6, t1
	lbu	n1, 0(n1)
	sw	n1, 1232(a5)
	add	n1, t5, t1
	lbu	n1, 0(n1)
	sw	n1, 1488(a5)
	add	n1, t6, t2
	lbu	n1, 0(n1)
	sw	n1, 1236(a5)
	add	n1, t5, t2
	lbu	n1, 0(n1)
	sw	n1, 1492(a5)
	add	n1, t6, t3
	lbu	n1, 0(n1)
	sw	n1, 1240(a5)
	add	n1, t5, t3
	lbu	n1, 0(n1)
	sw	n1, 1496(a5)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	sw	t6, 1244(a5)
	add	t5, t5, t4
	lbu	t5, 0(t5)
	sw	t5, 1500(a5)
	addi	a7, a7, 7
	mul	a6, a7, a6
	add	a2, a2, a6
	add	a7, a2, a0
	lbu	a7, 0(a7)
	add	a1, a1, a6
	sw	a7, 1248(a5)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	sw	a0, 1504(a5)
	add	a0, a2, a3
	lbu	a0, 0(a0)
	sw	a0, 1252(a5)
	add	a3, a1, a3
	lbu	a0, 0(a3)
	sw	a0, 1508(a5)
	add	a0, a2, a4
	lbu	a0, 0(a0)
	sw	a0, 1256(a5)
	add	a4, a1, a4
	lbu	a0, 0(a4)
	sw	a0, 1512(a5)
	add	a0, a2, t0
	lbu	a0, 0(a0)
	sw	a0, 1260(a5)
	add	t0, a1, t0
	lbu	a0, 0(t0)
	sw	a0, 1516(a5)
	add	a0, a2, t1
	lbu	a0, 0(a0)
	sw	a0, 1264(a5)
	add	t1, a1, t1
	lbu	a0, 0(t1)
	sw	a0, 1520(a5)
	add	a0, a2, t2
	lbu	a0, 0(a0)
	sw	a0, 1268(a5)
	add	t2, a1, t2
	lbu	a0, 0(t2)
	sw	a0, 1524(a5)
	add	a0, a2, t3
	lbu	a0, 0(a0)
	sw	a0, 1272(a5)
	add	t3, a1, t3
	lbu	a0, 0(t3)
	sw	a0, 1528(a5)
	add	a2, a2, t4
	lbu	a0, 0(a2)
	sw	a0, 1276(a5)
	add	a1, a1, t4
	lbu	a0, 0(a1)
	sw	a0, 1532(a5)
	ret
.LBB6_4:
	andi	t0, a2, 1
	andi	a7, a3, 1
	bnez	t0, .LBB6_8
# %bb.5:
	beqz	a7, .LBB6_8
# %bb.6:
	add	a0, t3, a0
	add	t2, t2, a1
	ld	a3, 8(a4)
	ld	a4, 16(a4)
	mul	a1, t2, a6
	addi	a2, a1, 7
	add	a1, a3, a2
	add	a2, a4, a2
	addi	t2, t2, 1
	mul	a7, t2, a6
	addi	a7, a7, 7
	add	a3, a3, a7
	add	a4, a4, a7
	addi	a7, a5, 1308
	addi	a5, a5, 1564
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	add	t0, a1, a0
	lbu	t1, -7(t0)
	add	t2, a3, a0
	lbu	t3, -7(t2)
	add	t1, t1, t3
	addi	t1, t1, 1
	srli	t1, t1, 1
	sw	t1, -284(a7)
	add	t1, a2, a0
	lbu	t3, -7(t1)
	add	t4, a4, a0
	lbu	t5, -7(t4)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -28(a7)
	lbu	t3, -6(t0)
	lbu	t5, -6(t2)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -280(a7)
	lbu	t3, -6(t1)
	lbu	t5, -6(t4)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -24(a7)
	lbu	t3, -5(t0)
	lbu	t5, -5(t2)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -276(a7)
	lbu	t3, -5(t1)
	lbu	t5, -5(t4)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -20(a7)
	lbu	t3, -4(t0)
	lbu	t5, -4(t2)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -272(a7)
	lbu	t3, -4(t1)
	lbu	t5, -4(t4)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -16(a7)
	lbu	t3, -3(t0)
	lbu	t5, -3(t2)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -268(a7)
	lbu	t3, -3(t1)
	lbu	t5, -3(t4)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -12(a7)
	lbu	t3, -2(t0)
	lbu	t5, -2(t2)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -264(a7)
	lbu	t3, -2(t1)
	lbu	t5, -2(t4)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -8(a7)
	lbu	t3, -1(t0)
	lbu	t5, -1(t2)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -260(a7)
	lbu	t3, -1(t1)
	lbu	t5, -1(t4)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	sw	t3, -4(a7)
	lbu	t0, 0(t0)
	lbu	t2, 0(t2)
	add	t0, t0, t2
	addi	t0, t0, 1
	srli	t0, t0, 1
	sw	t0, -256(a7)
	lbu	t0, 0(t1)
	lbu	t1, 0(t4)
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	t0, t0, 1
	sw	t0, 0(a7)
	add	a1, a1, a6
	add	a2, a2, a6
	add	a3, a3, a6
	addi	a7, a7, 32
	add	a4, a4, a6
	bne	a7, a5, .LBB6_7
	j	.LBB6_14
.LBB6_8:
	ld	t1, 8(a4)
	add	a0, t3, a0
	add	t2, t2, a1
	beqz	t0, .LBB6_12
# %bb.9:
	bnez	a7, .LBB6_12
# %bb.10:
	ld	a1, 16(a4)
	mul	a2, t2, a6
	add	a0, a2, a0
	addi	a2, a0, 4
	add	a0, t1, a2
	add	a1, a1, a2
	addi	a2, a5, 1308
	addi	a3, a5, 1564
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	lbu	a4, -4(a0)
	lbu	a5, -3(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -284(a2)
	lbu	a4, -4(a1)
	lbu	a5, -3(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -28(a2)
	lbu	a4, -3(a0)
	lbu	a5, -2(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -280(a2)
	lbu	a4, -3(a1)
	lbu	a5, -2(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -24(a2)
	lbu	a4, -2(a0)
	lbu	a5, -1(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -276(a2)
	lbu	a4, -2(a1)
	lbu	a5, -1(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -20(a2)
	lbu	a4, -1(a0)
	lbu	a5, 0(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -272(a2)
	lbu	a4, -1(a1)
	lbu	a5, 0(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -16(a2)
	lbu	a4, 0(a0)
	lbu	a5, 1(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -268(a2)
	lbu	a4, 0(a1)
	lbu	a5, 1(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -12(a2)
	lbu	a4, 1(a0)
	lbu	a5, 2(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -264(a2)
	lbu	a4, 1(a1)
	lbu	a5, 2(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -8(a2)
	lbu	a4, 2(a0)
	lbu	a5, 3(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -260(a2)
	lbu	a4, 2(a1)
	lbu	a5, 3(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -4(a2)
	lbu	a4, 3(a0)
	lbu	a5, 4(a0)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, -256(a2)
	lbu	a4, 3(a1)
	lbu	a5, 4(a1)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	sw	a4, 0(a2)
	add	a0, a0, a6
	addi	a2, a2, 32
	add	a1, a1, a6
	bne	a2, a3, .LBB6_11
	j	.LBB6_14
.LBB6_12:
	ld	t3, 16(a4)
	mul	a1, t2, a6
	addi	a3, a1, 7
	add	a1, t1, a3
	add	a4, a3, t0
	add	a2, t1, a4
	add	a3, t3, a3
	add	a4, t3, a4
	add	a7, t2, a7
	mul	a7, a7, a6
	addi	t2, a7, 7
	add	a7, t1, t2
	add	t4, t2, t0
	add	t0, t1, t4
	add	t1, t3, t2
	add	t2, t3, t4
	addi	t3, a5, 1308
	addi	a5, a5, 1564
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	add	t4, a1, a0
	lbu	n2, -7(t4)
	add	t5, a2, a0
	lbu	n3, -7(t5)
	add	t6, a7, a0
	lbu	n4, -7(t6)
	add	n1, t0, a0
	lbu	n5, -7(n1)
	add	n2, n2, n3
	add	n4, n4, n5
	add	n2, n2, n4
	addi	n2, n2, 2
	srli	n2, n2, 2
	sw	n2, -284(t3)
	add	n2, a3, a0
	lbu	n6, -7(n2)
	add	n3, a4, a0
	lbu	n7, -7(n3)
	add	n4, t1, a0
	lbu	n8, -7(n4)
	add	n5, t2, a0
	lbu	n9, -7(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -28(t3)
	lbu	n6, -6(t4)
	lbu	n7, -6(t5)
	lbu	n8, -6(t6)
	lbu	n9, -6(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -280(t3)
	lbu	n6, -6(n2)
	lbu	n7, -6(n3)
	lbu	n8, -6(n4)
	lbu	n9, -6(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -24(t3)
	lbu	n6, -5(t4)
	lbu	n7, -5(t5)
	lbu	n8, -5(t6)
	lbu	n9, -5(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -276(t3)
	lbu	n6, -5(n2)
	lbu	n7, -5(n3)
	lbu	n8, -5(n4)
	lbu	n9, -5(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -20(t3)
	lbu	n6, -4(t4)
	lbu	n7, -4(t5)
	lbu	n8, -4(t6)
	lbu	n9, -4(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -272(t3)
	lbu	n6, -4(n2)
	lbu	n7, -4(n3)
	lbu	n8, -4(n4)
	lbu	n9, -4(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -16(t3)
	lbu	n6, -3(t4)
	lbu	n7, -3(t5)
	lbu	n8, -3(t6)
	lbu	n9, -3(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -268(t3)
	lbu	n6, -3(n2)
	lbu	n7, -3(n3)
	lbu	n8, -3(n4)
	lbu	n9, -3(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -12(t3)
	lbu	n6, -2(t4)
	lbu	n7, -2(t5)
	lbu	n8, -2(t6)
	lbu	n9, -2(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -264(t3)
	lbu	n6, -2(n2)
	lbu	n7, -2(n3)
	lbu	n8, -2(n4)
	lbu	n9, -2(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -8(t3)
	lbu	n6, -1(t4)
	lbu	n7, -1(t5)
	lbu	n8, -1(t6)
	lbu	n9, -1(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -260(t3)
	lbu	n6, -1(n2)
	lbu	n7, -1(n3)
	lbu	n8, -1(n4)
	lbu	n9, -1(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	sw	n6, -4(t3)
	lbu	t4, 0(t4)
	lbu	t5, 0(t5)
	lbu	t6, 0(t6)
	lbu	n1, 0(n1)
	add	t4, t4, t5
	add	t6, t6, n1
	add	t4, t4, t6
	addi	t4, t4, 2
	srli	t4, t4, 2
	sw	t4, -256(t3)
	lbu	t4, 0(n2)
	lbu	t5, 0(n3)
	lbu	t6, 0(n4)
	lbu	n1, 0(n5)
	add	t4, t4, t5
	add	t6, t6, n1
	add	t4, t4, t6
	addi	t4, t4, 2
	srli	t4, t4, 2
	sw	t4, 0(t3)
	add	a1, a1, a6
	add	a2, a2, a6
	add	a3, a3, a6
	add	a4, a4, a6
	add	a7, a7, a6
	add	t0, t0, a6
	add	t1, t1, a6
	addi	t3, t3, 32
	add	t2, t2, a6
	bne	t3, a5, .LBB6_13
.LBB6_14:
	ret
.Lfunc_end6:
	.size	FindChromBlock_P, .Lfunc_end6-FindChromBlock_P
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindBiDirLumPredPB              # -- Begin function FindBiDirLumPredPB
	.p2align	2
	.type	FindBiDirLumPredPB,@function
FindBiDirLumPredPB:                     # @FindBiDirLumPredPB
# %bb.0:
	mv	t2, a4
	mv	t0, a2
	mv	t1, a0
	lw	a2, 0(a1)
	lw	a4, 8(a1)
	lw	t3, 4(a1)
	lw	a0, 12(a1)
	slli	a2, a2, 1
	add	a2, a2, a4
	slli	a1, t3, 1
	beqz	a5, .LBB7_3
# %bb.1:
	mul	a4, a2, t2
	divw	a4, a4, a3
	subw	a5, a5, a2
	addw	a4, a5, a4
	add	a0, a1, a0
	beqz	a6, .LBB7_4
.LBB7_2:
	mul	a1, a0, t2
	divw	a1, a1, a3
	subw	a5, a6, a0
	addw	a5, a5, a1
	j	.LBB7_5
.LBB7_3:
	subw	a4, t2, a3
	mul	a2, a2, a4
	divw	a4, a2, a3
	add	a0, a1, a0
	bnez	a6, .LBB7_2
.LBB7_4:
	subw	a1, t2, a3
	mul	a0, a0, a1
	divw	a5, a0, a3
.LBB7_5:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	ld	a2, 16(sp)
	li	a3, 1
	subw	a0, a3, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	slli	a1, a7, 3
	subw	a0, a0, a1
	sgtz	t2, a0
	addi	a6, a4, 1
	srliw	a7, a6, 31
	add	a6, a6, a7
	sraiw	a6, a6, 1
	li	a7, 15
	subw	a1, a7, a1
	subw	a1, a1, a6
	li	a6, 7
	neg	t2, t2
	blt	a1, a6, .LBB7_7
# %bb.6:
	li	a1, 7
.LBB7_7:
	and	a0, t2, a0
	subw	a3, a3, a5
	srliw	t2, a3, 31
	add	a3, a3, t2
	sraiw	a3, a3, 1
	slli	a2, a2, 3
	subw	t2, a3, a2
	sgtz	a3, t2
	neg	t3, a3
	addi	a3, a5, 1
	srliw	t4, a3, 31
	add	a3, a3, t4
	sraiw	a3, a3, 1
	subw	a2, a7, a2
	subw	a3, a2, a3
	and	a2, t3, t2
	blt	a3, a6, .LBB7_9
# %bb.8:
	li	a3, 7
.LBB7_9:
	li	a6, 16
	sd	a6, 0(sp)
	mv	a6, t1
	mv	a7, t0
	call	BiDirPredBlock
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	FindBiDirLumPredPB, .Lfunc_end7-FindBiDirLumPredPB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindBiDirChrPredPB              # -- Begin function FindBiDirChrPredPB
	.p2align	2
	.type	FindBiDirChrPredPB,@function
FindBiDirChrPredPB:                     # @FindBiDirChrPredPB
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
	mv	s2, a3
	mv	s0, a2
	mv	s1, a1
	mv	s3, a0
	li	s4, 7
	li	a0, -2
	li	s5, 7
	blt	a1, a0, .LBB8_2
# %bb.1:
	addi	a1, s1, 1
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	li	a2, 7
	sub	s5, a2, a1
.LBB8_2:
	blt	s0, a0, .LBB8_4
# %bb.3:
	addi	a0, s0, 1
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	li	a1, 7
	sub	s4, a1, a0
.LBB8_4:
	li	a0, 1
	subw	a1, a0, s0
	slti	a2, a1, -1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	addi	a2, a2, -1
	and	s6, a2, a1
	subw	a0, a0, s1
	slti	a1, a0, -1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a1, a1, -1
	and	s7, a1, a0
	addi	a6, s3, 1280
	addi	a7, s2, 1280
	li	s8, 8
	sd	s8, 0(sp)
	mv	a0, s7
	mv	a1, s5
	mv	a2, s6
	mv	a3, s4
	mv	a4, s1
	mv	a5, s0
	call	BiDirPredBlock
	addi	a6, s3, 1024
	addi	a7, s2, 1024
	sd	s8, 0(sp)
	mv	a0, s7
	mv	a1, s5
	mv	a2, s6
	mv	a3, s4
	mv	a4, s1
	mv	a5, s0
	call	BiDirPredBlock
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
	addi	sp, sp, 96
	ret
.Lfunc_end8:
	.size	FindBiDirChrPredPB, .Lfunc_end8-FindBiDirChrPredPB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MB_Recon_B                      # -- Begin function MB_Recon_B
	.p2align	2
	.type	MB_Recon_B,@function
MB_Recon_B:                             # @MB_Recon_B
# %bb.0:
	addi	sp, sp, -320
	sd	ra, 312(sp)                     # 8-byte Folded Spill
	sd	s0, 304(sp)                     # 8-byte Folded Spill
	sd	s1, 296(sp)                     # 8-byte Folded Spill
	sd	s2, 288(sp)                     # 8-byte Folded Spill
	sd	s3, 280(sp)                     # 8-byte Folded Spill
	sd	s4, 272(sp)                     # 8-byte Folded Spill
	sd	s5, 264(sp)                     # 8-byte Folded Spill
	sd	s6, 256(sp)                     # 8-byte Folded Spill
	sd	s7, 248(sp)                     # 8-byte Folded Spill
	sd	s8, 240(sp)                     # 8-byte Folded Spill
	sd	s9, 232(sp)                     # 8-byte Folded Spill
	sd	s10, 224(sp)                    # 8-byte Folded Spill
	sd	s11, 216(sp)                    # 8-byte Folded Spill
	mv	s4, a7
	mv	s5, a6
	mv	s2, a5
	mv	s6, a4
	mv	s7, a3
	mv	s11, a2
	mv	s1, a1
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	lui	s3, 65536
	li	a0, 1536
	call	malloc
	mv	s0, a0
	li	a0, 1536
	call	malloc
	mv	n23, s7
	mv	n22, s6
	slli	a1, s6, 1
	srli	a1, a1, 60
	addw	a1, s6, a1
	srli	a1, a1, 4
	li	a2, 720
	mul	a2, a1, a2
	slli	a1, s7, 1
	srli	a3, a1, 60
	add	a3, s7, a3
	sraiw	a3, a3, 4
	slli	a3, a3, 3
	add	a2, a2, s2
	add	n4, a2, a3
	lui	a2, 64
	add	a2, n4, a2
	ld	a2, 1384(a2)
	ld	a3, 728(n4)
	lw	s8, 0(a2)
	lw	s9, 4(a2)
	lw	a5, 20(a3)
	lui	a2, %hi(mv_outside_frame)
	lw	a2, %lo(mv_outside_frame)(a2)
	lui	a4, %hi(pels)
	lui	a6, %hi(long_vectors)
	lw	a6, %lo(long_vectors)(a6)
	lw	a4, %lo(pels)(a4)
	mv	s2, a0
	seqz	a0, a2
	li	a2, 32
	beqz	a6, .LBB9_2
# %bb.1:
	li	a2, 64
.LBB9_2:
	ld	s7, 320(sp)
	addi	n19, s3, -2
	addi	a0, a0, -1
	and	a0, a0, a2
	add	a4, a0, a4
	li	a0, 2
	addi	s10, s2, 1056
	slli	a2, n22, 1
	addi	a6, s2, 512
	sd	a6, 176(sp)                     # 8-byte Folded Spill
	addi	a6, s2, 544
	sd	a6, 192(sp)                     # 8-byte Folded Spill
	lui	n20, %hi(roundtab)
	addi	n20, n20, %lo(roundtab)
	addi	a6, s5, 32
	sd	a6, 160(sp)                     # 8-byte Folded Spill
	addi	a6, s5, 512
	sd	a6, 168(sp)                     # 8-byte Folded Spill
	addi	a6, s5, 544
	sd	a6, 184(sp)                     # 8-byte Folded Spill
	sd	s5, 208(sp)                     # 8-byte Folded Spill
	sd	n19, 200(sp)                    # 8-byte Folded Spill
	beq	a5, a0, .LBB9_3
	j	.LBB9_10
.LBB9_3:
	lui	a0, 13
	add	a0, n4, a0
	ld	s3, 40(a0)
	lui	a0, 26
	lui	t2, 39
	add	a0, n4, a0
	lw	a3, 4(s3)
	lw	a5, 12(s3)
	ld	n21, -648(a0)
	slli	a0, a4, 1
	slli	a3, a3, 1
	add	a3, a3, a5
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	mul	a3, a3, s7
	lw	a4, 0(s3)
	lw	a5, 8(s3)
	divw	t3, a3, s4
	sd	t3, 72(sp)                      # 8-byte Folded Spill
	add	t3, t3, s9
	slli	a4, a4, 1
	add	a4, a4, a5
	sd	a4, 128(sp)                     # 8-byte Folded Spill
	mul	a3, a4, s7
	divw	a3, a3, s4
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	addw	t4, a3, s8
	add	t4, s11, t4
	add	a3, t3, a2
	mulw	a3, a3, a0
	add	t5, t4, a3
	add	a3, t5, a1
	lbu	a6, 0(a3)
	addi	a3, a1, 2
	add	a4, t5, a3
	lbu	a7, 0(a4)
	addi	a4, a1, 4
	add	a5, t5, a4
	lbu	t0, 0(a5)
	addi	a5, a1, 6
	add	t1, t5, a5
	lbu	t1, 0(t1)
	sw	a6, 0(s2)
	sw	a7, 4(s2)
	sw	t0, 8(s2)
	sw	t1, 12(s2)
	addi	a6, a1, 8
	add	a7, t5, a6
	lbu	t6, 0(a7)
	addi	a7, a1, 10
	add	t0, t5, a7
	lbu	n1, 0(t0)
	addi	t0, a1, 12
	add	t1, t5, t0
	lbu	n2, 0(t1)
	addi	t1, a1, 14
	add	t5, t5, t1
	lbu	t5, 0(t5)
	sw	t6, 16(s2)
	sw	n1, 20(s2)
	sw	n2, 24(s2)
	sw	t5, 28(s2)
	addi	n5, a2, 2
	add	t5, t3, n5
	mulw	t5, t5, a0
	add	t5, t4, t5
	add	t6, t5, a1
	lbu	t6, 0(t6)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	add	n2, t5, a4
	lbu	n2, 0(n2)
	add	n3, t5, a5
	lbu	n3, 0(n3)
	sw	t6, 64(s2)
	sw	n1, 68(s2)
	sw	n2, 72(s2)
	sw	n3, 76(s2)
	add	t6, t5, a6
	lbu	t6, 0(t6)
	add	n1, t5, a7
	lbu	n1, 0(n1)
	add	n2, t5, t0
	lbu	n2, 0(n2)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	sw	t6, 80(s2)
	sw	n1, 84(s2)
	sw	n2, 88(s2)
	sw	t5, 92(s2)
	addi	n6, a2, 4
	add	t5, t3, n6
	mulw	t5, t5, a0
	add	t5, t4, t5
	add	t6, t5, a1
	lbu	t6, 0(t6)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	add	n2, t5, a4
	lbu	n2, 0(n2)
	add	n3, t5, a5
	lbu	n3, 0(n3)
	sw	t6, 128(s2)
	sw	n1, 132(s2)
	sw	n2, 136(s2)
	sw	n3, 140(s2)
	add	t6, t5, a6
	lbu	t6, 0(t6)
	add	n1, t5, a7
	lbu	n1, 0(n1)
	add	n2, t5, t0
	lbu	n2, 0(n2)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	sw	t6, 144(s2)
	sw	n1, 148(s2)
	sw	n2, 152(s2)
	sw	t5, 156(s2)
	addi	n7, a2, 6
	add	t5, t3, n7
	mulw	t5, t5, a0
	add	t5, t4, t5
	add	t6, t5, a1
	lbu	t6, 0(t6)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	add	n2, t5, a4
	lbu	n2, 0(n2)
	add	n3, t5, a5
	lbu	n3, 0(n3)
	sw	t6, 192(s2)
	sw	n1, 196(s2)
	sw	n2, 200(s2)
	sw	n3, 204(s2)
	add	t6, t5, a6
	lbu	t6, 0(t6)
	add	n1, t5, a7
	lbu	n1, 0(n1)
	add	n2, t5, t0
	lbu	n2, 0(n2)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	sw	t6, 208(s2)
	sw	n1, 212(s2)
	sw	n2, 216(s2)
	sw	t5, 220(s2)
	addi	n8, a2, 8
	add	t5, t3, n8
	mulw	t5, t5, a0
	add	t5, t4, t5
	add	t6, t5, a1
	lbu	t6, 0(t6)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	add	n2, t5, a4
	lbu	n2, 0(n2)
	add	n3, t5, a5
	lbu	n3, 0(n3)
	sw	t6, 256(s2)
	sw	n1, 260(s2)
	sw	n2, 264(s2)
	sw	n3, 268(s2)
	add	t6, t5, a6
	lbu	t6, 0(t6)
	add	n1, t5, a7
	lbu	n1, 0(n1)
	add	n2, t5, t0
	lbu	n2, 0(n2)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	sw	t6, 272(s2)
	sw	n1, 276(s2)
	sw	n2, 280(s2)
	sw	t5, 284(s2)
	addi	n9, a2, 10
	add	t5, t3, n9
	mulw	t5, t5, a0
	add	t5, t4, t5
	add	t6, t5, a1
	lbu	t6, 0(t6)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	add	n2, t5, a4
	lbu	n2, 0(n2)
	add	n3, t5, a5
	lbu	n3, 0(n3)
	sw	t6, 320(s2)
	sw	n1, 324(s2)
	sw	n2, 328(s2)
	sw	n3, 332(s2)
	add	t6, t5, a6
	lbu	t6, 0(t6)
	add	n1, t5, a7
	lbu	n1, 0(n1)
	add	n2, t5, t0
	lbu	n2, 0(n2)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	sw	t6, 336(s2)
	sw	n1, 340(s2)
	sw	n2, 344(s2)
	sw	t5, 348(s2)
	addi	n10, a2, 12
	add	t5, t3, n10
	mulw	t5, t5, a0
	add	t5, t4, t5
	add	t6, t5, a1
	lbu	t6, 0(t6)
	add	n1, t5, a3
	lbu	n1, 0(n1)
	add	n2, t5, a4
	lbu	n2, 0(n2)
	add	n3, t5, a5
	lbu	n3, 0(n3)
	sw	t6, 384(s2)
	sw	n1, 388(s2)
	sw	n2, 392(s2)
	sw	n3, 396(s2)
	add	t6, t5, a6
	lbu	t6, 0(t6)
	add	n1, t5, a7
	lbu	n1, 0(n1)
	add	n2, t5, t0
	lbu	n2, 0(n2)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	sw	t6, 400(s2)
	sw	n1, 404(s2)
	sw	n2, 408(s2)
	sw	t5, 412(s2)
	addi	n11, a2, 14
	add	t3, t3, n11
	mulw	t3, t3, a0
	add	t3, t4, t3
	add	t4, t3, a1
	lbu	t4, 0(t4)
	add	t5, t3, a3
	lbu	t5, 0(t5)
	add	t6, t3, a4
	lbu	t6, 0(t6)
	add	n1, t3, a5
	lbu	n1, 0(n1)
	sw	t4, 448(s2)
	sw	t5, 452(s2)
	sw	t6, 456(s2)
	sw	n1, 460(s2)
	add	t4, t3, a6
	lbu	t4, 0(t4)
	add	t5, t3, a7
	lbu	t5, 0(t5)
	add	t6, t3, t0
	lbu	t6, 0(t6)
	add	t3, t3, t1
	lbu	t3, 0(t3)
	sw	t4, 464(s2)
	sw	t5, 468(s2)
	sw	t6, 472(s2)
	sw	t3, 476(s2)
	lw	t3, 4(n21)
	lw	t4, 12(n21)
	add	t2, n4, t2
	mv	n24, s11
	ld	s11, -1336(t2)
	slli	t3, t3, 1
	add	t3, t3, t4
	sd	t3, 120(sp)                     # 8-byte Folded Spill
	mul	t2, t3, s7
	lw	t3, 0(n21)
	lw	t4, 8(n21)
	divw	n12, t2, s4
	sd	n12, 56(sp)                     # 8-byte Folded Spill
	add	n12, n12, s9
	slli	t3, t3, 1
	add	t3, t3, t4
	sd	t3, 112(sp)                     # 8-byte Folded Spill
	mul	t2, t3, s7
	divw	t2, t2, s4
	sd	t2, 48(sp)                      # 8-byte Folded Spill
	addw	n13, t2, s8
	add	n13, n24, n13
	addi	t2, a1, 16
	add	t3, n12, a2
	mulw	t3, t3, a0
	add	n14, n13, t3
	add	t3, n14, t2
	lbu	t6, 0(t3)
	addi	t3, a1, 18
	add	t4, n14, t3
	lbu	n1, 0(t4)
	addi	t4, a1, 20
	add	t5, n14, t4
	lbu	n2, 0(t5)
	addi	t5, a1, 22
	add	n3, n14, t5
	lbu	n3, 0(n3)
	sw	t6, 32(s2)
	sw	n1, 36(s2)
	sw	n2, 40(s2)
	sw	n3, 44(s2)
	addi	t6, a1, 24
	add	n1, n14, t6
	lbu	n15, 0(n1)
	addi	n1, a1, 26
	add	n2, n14, n1
	lbu	n16, 0(n2)
	addi	n2, a1, 28
	add	n3, n14, n2
	lbu	n17, 0(n3)
	addi	n3, a1, 30
	add	n14, n14, n3
	lbu	n14, 0(n14)
	sw	n15, 48(s2)
	sw	n16, 52(s2)
	sw	n17, 56(s2)
	sw	n14, 60(s2)
	add	n5, n12, n5
	mulw	n5, n5, a0
	add	n5, n13, n5
	add	n14, n5, t2
	lbu	n14, 0(n14)
	add	n15, n5, t3
	lbu	n15, 0(n15)
	add	n16, n5, t4
	lbu	n16, 0(n16)
	add	n17, n5, t5
	lbu	n17, 0(n17)
	sw	n14, 96(s2)
	sw	n15, 100(s2)
	sw	n16, 104(s2)
	sw	n17, 108(s2)
	add	n14, n5, t6
	lbu	n14, 0(n14)
	add	n15, n5, n1
	lbu	n15, 0(n15)
	add	n16, n5, n2
	lbu	n16, 0(n16)
	add	n5, n5, n3
	lbu	n5, 0(n5)
	sw	n14, 112(s2)
	sw	n15, 116(s2)
	sw	n16, 120(s2)
	sw	n5, 124(s2)
	add	n6, n12, n6
	mulw	n5, n6, a0
	add	n5, n13, n5
	add	n6, n5, t2
	lbu	n6, 0(n6)
	add	n14, n5, t3
	lbu	n14, 0(n14)
	add	n15, n5, t4
	lbu	n15, 0(n15)
	add	n16, n5, t5
	lbu	n16, 0(n16)
	sw	n6, 160(s2)
	sw	n14, 164(s2)
	sw	n15, 168(s2)
	sw	n16, 172(s2)
	add	n6, n5, t6
	lbu	n6, 0(n6)
	add	n14, n5, n1
	lbu	n14, 0(n14)
	add	n15, n5, n2
	lbu	n15, 0(n15)
	add	n5, n5, n3
	lbu	n5, 0(n5)
	sw	n6, 176(s2)
	sw	n14, 180(s2)
	sw	n15, 184(s2)
	sw	n5, 188(s2)
	add	n7, n12, n7
	mulw	n5, n7, a0
	add	n5, n13, n5
	add	n6, n5, t2
	lbu	n6, 0(n6)
	add	n7, n5, t3
	lbu	n7, 0(n7)
	add	n14, n5, t4
	lbu	n14, 0(n14)
	add	n15, n5, t5
	lbu	n15, 0(n15)
	sw	n6, 224(s2)
	sw	n7, 228(s2)
	sw	n14, 232(s2)
	sw	n15, 236(s2)
	add	n6, n5, t6
	lbu	n6, 0(n6)
	add	n7, n5, n1
	lbu	n7, 0(n7)
	add	n14, n5, n2
	lbu	n14, 0(n14)
	add	n5, n5, n3
	lbu	n5, 0(n5)
	sw	n6, 240(s2)
	sw	n7, 244(s2)
	sw	n14, 248(s2)
	sw	n5, 252(s2)
	add	n8, n12, n8
	mulw	n5, n8, a0
	add	n5, n13, n5
	add	n6, n5, t2
	lbu	n6, 0(n6)
	add	n7, n5, t3
	lbu	n7, 0(n7)
	add	n8, n5, t4
	lbu	n8, 0(n8)
	add	n14, n5, t5
	lbu	n14, 0(n14)
	sw	n6, 288(s2)
	sw	n7, 292(s2)
	sw	n8, 296(s2)
	sw	n14, 300(s2)
	add	n6, n5, t6
	lbu	n6, 0(n6)
	add	n7, n5, n1
	lbu	n7, 0(n7)
	add	n8, n5, n2
	lbu	n8, 0(n8)
	add	n5, n5, n3
	lbu	n5, 0(n5)
	sw	n6, 304(s2)
	sw	n7, 308(s2)
	sw	n8, 312(s2)
	sw	n5, 316(s2)
	add	n9, n12, n9
	mulw	n5, n9, a0
	add	n5, n13, n5
	add	n6, n5, t2
	lbu	n6, 0(n6)
	add	n7, n5, t3
	lbu	n7, 0(n7)
	add	n8, n5, t4
	lbu	n8, 0(n8)
	add	n9, n5, t5
	lbu	n9, 0(n9)
	sw	n6, 352(s2)
	sw	n7, 356(s2)
	sw	n8, 360(s2)
	sw	n9, 364(s2)
	add	n6, n5, t6
	lbu	n6, 0(n6)
	add	n7, n5, n1
	lbu	n7, 0(n7)
	add	n8, n5, n2
	lbu	n8, 0(n8)
	add	n5, n5, n3
	lbu	n5, 0(n5)
	sw	n6, 368(s2)
	sw	n7, 372(s2)
	sw	n8, 376(s2)
	sw	n5, 380(s2)
	add	n10, n12, n10
	mulw	n5, n10, a0
	add	n5, n13, n5
	add	n6, n5, t2
	lbu	n6, 0(n6)
	add	n7, n5, t3
	lbu	n7, 0(n7)
	add	n8, n5, t4
	lbu	n8, 0(n8)
	add	n9, n5, t5
	lbu	n9, 0(n9)
	sw	n6, 416(s2)
	sw	n7, 420(s2)
	sw	n8, 424(s2)
	sw	n9, 428(s2)
	add	n6, n5, t6
	lbu	n6, 0(n6)
	add	n7, n5, n1
	lbu	n7, 0(n7)
	add	n8, n5, n2
	lbu	n8, 0(n8)
	add	n5, n5, n3
	lbu	n5, 0(n5)
	sw	n6, 432(s2)
	sw	n7, 436(s2)
	sw	n8, 440(s2)
	sw	n5, 444(s2)
	add	n11, n12, n11
	mulw	n5, n11, a0
	add	n5, n13, n5
	add	n6, n5, t2
	lbu	n6, 0(n6)
	add	n7, n5, t3
	lbu	n7, 0(n7)
	add	n8, n5, t4
	lbu	n8, 0(n8)
	add	n9, n5, t5
	lbu	n9, 0(n9)
	sw	n6, 480(s2)
	sw	n7, 484(s2)
	sw	n8, 488(s2)
	sw	n9, 492(s2)
	add	n6, n5, t6
	lbu	n6, 0(n6)
	add	n7, n5, n1
	lbu	n7, 0(n7)
	add	n8, n5, n2
	lbu	n8, 0(n8)
	add	n5, n5, n3
	lbu	n5, 0(n5)
	sw	n6, 496(s2)
	sw	n7, 500(s2)
	sw	n8, 504(s2)
	sw	n5, 508(s2)
	lw	n5, 4(s11)
	lw	n6, 12(s11)
	slli	n5, n5, 1
	add	n5, n5, n6
	sd	n5, 104(sp)                     # 8-byte Folded Spill
	mul	n5, n5, s7
	lw	n6, 0(s11)
	lw	n7, 8(s11)
	divw	n11, n5, s4
	sd	n11, 40(sp)                     # 8-byte Folded Spill
	add	n11, n11, s9
	slli	n6, n6, 1
	add	n6, n6, n7
	sd	n6, 96(sp)                      # 8-byte Folded Spill
	mul	n5, n6, s7
	divw	n5, n5, s4
	sd	n5, 32(sp)                      # 8-byte Folded Spill
	addw	n12, n5, s8
	add	n12, n24, n12
	addi	n5, a2, 16
	add	n6, n11, n5
	mulw	n6, n6, a0
	add	n6, n12, n6
	add	n7, n6, a1
	lbu	n7, 0(n7)
	lui	n13, 52
	add	n13, n4, n13
	sw	n7, 512(s2)
	add	n4, n6, a3
	lbu	n4, 0(n4)
	add	n7, n6, a4
	lbu	n7, 0(n7)
	add	n8, n6, a5
	lbu	n8, 0(n8)
	add	n9, n6, a6
	lbu	n9, 0(n9)
	sw	n4, 516(s2)
	sw	n7, 520(s2)
	sw	n8, 524(s2)
	sw	n9, 528(s2)
	add	n4, n6, a7
	lbu	n7, 0(n4)
	add	n4, n6, t0
	lbu	n8, 0(n4)
	add	n6, n6, t1
	lbu	n6, 0(n6)
	addi	n4, a2, 18
	add	n9, n11, n4
	mulw	n9, n9, a0
	add	n9, n12, n9
	add	n10, n9, a1
	lbu	n10, 0(n10)
	sw	n7, 532(s2)
	sw	n8, 536(s2)
	sw	n6, 540(s2)
	sw	n10, 576(s2)
	add	n6, n9, a3
	lbu	n6, 0(n6)
	add	n7, n9, a4
	lbu	n7, 0(n7)
	add	n8, n9, a5
	lbu	n8, 0(n8)
	add	n10, n9, a6
	lbu	n10, 0(n10)
	sw	n6, 580(s2)
	sw	n7, 584(s2)
	sw	n8, 588(s2)
	sw	n10, 592(s2)
	add	n6, n9, a7
	lbu	n7, 0(n6)
	add	n6, n9, t0
	lbu	n8, 0(n6)
	add	n9, n9, t1
	lbu	n9, 0(n9)
	addi	n6, a2, 20
	add	n10, n11, n6
	mulw	n10, n10, a0
	add	n10, n12, n10
	add	n14, n10, a1
	lbu	n14, 0(n14)
	sw	n7, 596(s2)
	sw	n8, 600(s2)
	sw	n9, 604(s2)
	sw	n14, 640(s2)
	add	n7, n10, a3
	lbu	n7, 0(n7)
	add	n8, n10, a4
	lbu	n8, 0(n8)
	add	n9, n10, a5
	lbu	n9, 0(n9)
	add	n14, n10, a6
	lbu	n14, 0(n14)
	sw	n7, 644(s2)
	sw	n8, 648(s2)
	sw	n9, 652(s2)
	sw	n14, 656(s2)
	add	n7, n10, a7
	lbu	n8, 0(n7)
	add	n7, n10, t0
	lbu	n9, 0(n7)
	add	n10, n10, t1
	lbu	n10, 0(n10)
	addi	n7, a2, 22
	add	n14, n11, n7
	mulw	n14, n14, a0
	add	n14, n12, n14
	add	n15, n14, a1
	lbu	n15, 0(n15)
	sw	n8, 660(s2)
	sw	n9, 664(s2)
	sw	n10, 668(s2)
	sw	n15, 704(s2)
	add	n8, n14, a3
	lbu	n8, 0(n8)
	add	n9, n14, a4
	lbu	n9, 0(n9)
	add	n10, n14, a5
	lbu	n10, 0(n10)
	add	n15, n14, a6
	lbu	n15, 0(n15)
	sw	n8, 708(s2)
	sw	n9, 712(s2)
	sw	n10, 716(s2)
	sw	n15, 720(s2)
	add	n8, n14, a7
	lbu	n9, 0(n8)
	add	n8, n14, t0
	lbu	n10, 0(n8)
	add	n14, n14, t1
	lbu	n14, 0(n14)
	addi	n8, a2, 24
	add	n15, n11, n8
	mulw	n15, n15, a0
	add	n15, n12, n15
	add	n16, n15, a1
	lbu	n16, 0(n16)
	sw	n9, 724(s2)
	sw	n10, 728(s2)
	sw	n14, 732(s2)
	sw	n16, 768(s2)
	add	n9, n15, a3
	lbu	n9, 0(n9)
	add	n10, n15, a4
	lbu	n10, 0(n10)
	add	n14, n15, a5
	lbu	n14, 0(n14)
	add	n16, n15, a6
	lbu	n16, 0(n16)
	sw	n9, 772(s2)
	sw	n10, 776(s2)
	sw	n14, 780(s2)
	sw	n16, 784(s2)
	add	n9, n15, a7
	lbu	n10, 0(n9)
	add	n9, n15, t0
	lbu	n14, 0(n9)
	add	n15, n15, t1
	lbu	n15, 0(n15)
	addi	n9, a2, 26
	add	n16, n11, n9
	mulw	n16, n16, a0
	add	n16, n12, n16
	add	n17, n16, a1
	lbu	n17, 0(n17)
	sw	n10, 788(s2)
	sw	n14, 792(s2)
	sw	n15, 796(s2)
	sw	n17, 832(s2)
	add	n10, n16, a3
	lbu	n10, 0(n10)
	add	n14, n16, a4
	lbu	n14, 0(n14)
	add	n15, n16, a5
	lbu	n15, 0(n15)
	add	n17, n16, a6
	lbu	n17, 0(n17)
	sw	n10, 836(s2)
	sw	n14, 840(s2)
	sw	n15, 844(s2)
	sw	n17, 848(s2)
	add	n10, n16, a7
	lbu	n14, 0(n10)
	add	n10, n16, t0
	lbu	n15, 0(n10)
	add	n16, n16, t1
	lbu	n16, 0(n16)
	addi	n10, a2, 28
	add	n17, n11, n10
	mulw	n17, n17, a0
	add	n17, n12, n17
	add	n18, n17, a1
	lbu	n18, 0(n18)
	sw	n14, 852(s2)
	sw	n15, 856(s2)
	sw	n16, 860(s2)
	sw	n18, 896(s2)
	add	n14, n17, a3
	lbu	n14, 0(n14)
	add	n15, n17, a4
	lbu	n15, 0(n15)
	add	n16, n17, a5
	lbu	n16, 0(n16)
	add	n18, n17, a6
	lbu	n18, 0(n18)
	sw	n14, 900(s2)
	sw	n15, 904(s2)
	sw	n16, 908(s2)
	sw	n18, 912(s2)
	add	n14, n17, a7
	lbu	n14, 0(n14)
	add	n15, n17, t0
	lbu	n15, 0(n15)
	add	n17, n17, t1
	lbu	n16, 0(n17)
	sw	n14, 916(s2)
	ld	s6, -2024(n13)
	sw	n15, 920(s2)
	sw	n16, 924(s2)
	addi	a2, a2, 30
	add	n11, n11, a2
	mulw	n11, n11, a0
	add	n11, n12, n11
	add	a1, n11, a1
	lbu	a1, 0(a1)
	add	a3, n11, a3
	lbu	a3, 0(a3)
	add	a4, n11, a4
	lbu	a4, 0(a4)
	add	a5, n11, a5
	lbu	a5, 0(a5)
	sw	a1, 960(s2)
	sw	a3, 964(s2)
	sw	a4, 968(s2)
	sw	a5, 972(s2)
	add	a6, n11, a6
	lbu	a1, 0(a6)
	add	a7, n11, a7
	lbu	a3, 0(a7)
	add	t0, n11, t0
	lbu	a4, 0(t0)
	add	t1, n11, t1
	lbu	a5, 0(t1)
	sw	a1, 976(s2)
	sw	a3, 980(s2)
	sw	a4, 984(s2)
	sw	a5, 988(s2)
	lw	a1, 4(s6)
	lw	a3, 12(s6)
	slli	a1, a1, 1
	add	a1, a1, a3
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	mul	a1, a1, s7
	lw	a3, 0(s6)
	lw	a4, 8(s6)
	divw	a1, a1, s4
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	add	a1, a1, s9
	slli	a3, a3, 1
	add	a3, a3, a4
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	mul	a3, a3, s7
	divw	a3, a3, s4
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	addw	a3, a3, s8
	add	a3, n24, a3
	add	n5, a1, n5
	mulw	a4, n5, a0
	add	a4, a3, a4
	add	a5, a4, t2
	lbu	a5, 0(a5)
	add	a6, a4, t3
	lbu	a6, 0(a6)
	add	a7, a4, t4
	lbu	a7, 0(a7)
	add	t0, a4, t5
	lbu	t0, 0(t0)
	sw	a5, 544(s2)
	sw	a6, 548(s2)
	sw	a7, 552(s2)
	sw	t0, 556(s2)
	add	a5, a4, t6
	lbu	a5, 0(a5)
	add	a6, a4, n1
	lbu	a6, 0(a6)
	add	a7, a4, n2
	lbu	a7, 0(a7)
	add	a4, a4, n3
	lbu	a4, 0(a4)
	sw	a5, 560(s2)
	sw	a6, 564(s2)
	sw	a7, 568(s2)
	sw	a4, 572(s2)
	add	n4, a1, n4
	mulw	a4, n4, a0
	add	a4, a3, a4
	add	a5, a4, t2
	lbu	a5, 0(a5)
	add	a6, a4, t3
	lbu	a6, 0(a6)
	add	a7, a4, t4
	lbu	a7, 0(a7)
	add	t0, a4, t5
	lbu	t0, 0(t0)
	sw	a5, 608(s2)
	sw	a6, 612(s2)
	sw	a7, 616(s2)
	sw	t0, 620(s2)
	add	a5, a4, t6
	lbu	a5, 0(a5)
	add	a6, a4, n1
	lbu	a6, 0(a6)
	add	a7, a4, n2
	lbu	a7, 0(a7)
	add	a4, a4, n3
	lbu	a4, 0(a4)
	sw	a5, 624(s2)
	sw	a6, 628(s2)
	sw	a7, 632(s2)
	sw	a4, 636(s2)
	add	n6, a1, n6
	mulw	a4, n6, a0
	add	a4, a3, a4
	add	a5, a4, t2
	lbu	a5, 0(a5)
	add	a6, a4, t3
	lbu	a6, 0(a6)
	add	a7, a4, t4
	lbu	a7, 0(a7)
	add	t0, a4, t5
	lbu	t0, 0(t0)
	sw	a5, 672(s2)
	sw	a6, 676(s2)
	sw	a7, 680(s2)
	sw	t0, 684(s2)
	add	a5, a4, t6
	lbu	a5, 0(a5)
	add	a6, a4, n1
	lbu	a6, 0(a6)
	add	a7, a4, n2
	lbu	a7, 0(a7)
	add	a4, a4, n3
	lbu	a4, 0(a4)
	sw	a5, 688(s2)
	sw	a6, 692(s2)
	sw	a7, 696(s2)
	sw	a4, 700(s2)
	add	n7, a1, n7
	mulw	a4, n7, a0
	add	a4, a3, a4
	add	a5, a4, t2
	lbu	a5, 0(a5)
	add	a6, a4, t3
	lbu	a6, 0(a6)
	add	a7, a4, t4
	lbu	a7, 0(a7)
	add	t0, a4, t5
	lbu	t0, 0(t0)
	sw	a5, 736(s2)
	sw	a6, 740(s2)
	sw	a7, 744(s2)
	sw	t0, 748(s2)
	add	a5, a4, t6
	lbu	a5, 0(a5)
	add	a6, a4, n1
	lbu	a6, 0(a6)
	add	a7, a4, n2
	lbu	a7, 0(a7)
	add	a4, a4, n3
	lbu	a4, 0(a4)
	sw	a5, 752(s2)
	sw	a6, 756(s2)
	sw	a7, 760(s2)
	sw	a4, 764(s2)
	add	n8, a1, n8
	mulw	a4, n8, a0
	add	a4, a3, a4
	add	a5, a4, t2
	lbu	a5, 0(a5)
	add	a6, a4, t3
	lbu	a6, 0(a6)
	add	a7, a4, t4
	lbu	a7, 0(a7)
	add	t0, a4, t5
	lbu	t0, 0(t0)
	sw	a5, 800(s2)
	sw	a6, 804(s2)
	sw	a7, 808(s2)
	sw	t0, 812(s2)
	add	a5, a4, t6
	lbu	a5, 0(a5)
	add	a6, a4, n1
	lbu	a6, 0(a6)
	add	a7, a4, n2
	lbu	a7, 0(a7)
	add	a4, a4, n3
	lbu	a4, 0(a4)
	sw	a5, 816(s2)
	sw	a6, 820(s2)
	sw	a7, 824(s2)
	sw	a4, 828(s2)
	add	n9, a1, n9
	mulw	a4, n9, a0
	add	a4, a3, a4
	add	a5, a4, t2
	lbu	a5, 0(a5)
	add	a6, a4, t3
	lbu	a6, 0(a6)
	add	a7, a4, t4
	lbu	a7, 0(a7)
	add	t0, a4, t5
	lbu	t0, 0(t0)
	sw	a5, 864(s2)
	sw	a6, 868(s2)
	sw	a7, 872(s2)
	sw	t0, 876(s2)
	add	a5, a4, t6
	lbu	a5, 0(a5)
	add	a6, a4, n1
	lbu	a6, 0(a6)
	add	a7, a4, n2
	lbu	a7, 0(a7)
	add	a4, a4, n3
	lbu	a4, 0(a4)
	sw	a5, 880(s2)
	sw	a6, 884(s2)
	sw	a7, 888(s2)
	sw	a4, 892(s2)
	add	n10, a1, n10
	mulw	a4, n10, a0
	add	a4, a3, a4
	add	a5, a4, t2
	lbu	a5, 0(a5)
	add	a6, a4, t3
	lbu	a6, 0(a6)
	add	a7, a4, t4
	lbu	a7, 0(a7)
	add	t0, a4, t5
	lbu	t0, 0(t0)
	sw	a5, 928(s2)
	sw	a6, 932(s2)
	sw	a7, 936(s2)
	sw	t0, 940(s2)
	add	a5, a4, t6
	lbu	a5, 0(a5)
	add	a6, a4, n1
	lbu	a6, 0(a6)
	add	a7, a4, n2
	lbu	a7, 0(a7)
	add	a4, a4, n3
	lbu	a4, 0(a4)
	sw	a5, 944(s2)
	sw	a6, 948(s2)
	sw	a7, 952(s2)
	sw	a4, 956(s2)
	add	a1, a1, a2
	mulw	a0, a1, a0
	add	a0, a3, a0
	add	t2, a0, t2
	lbu	a1, 0(t2)
	add	t3, a0, t3
	lbu	a2, 0(t3)
	add	t4, a0, t4
	lbu	a3, 0(t4)
	add	t5, a0, t5
	lbu	a4, 0(t5)
	sw	a1, 992(s2)
	sw	a2, 996(s2)
	sw	a3, 1000(s2)
	sw	a4, 1004(s2)
	add	t6, a0, t6
	lbu	a1, 0(t6)
	add	n1, a0, n1
	lbu	a2, 0(n1)
	add	n2, a0, n2
	lbu	a3, 0(n2)
	add	a0, a0, n3
	lbu	a0, 0(a0)
	sw	a1, 1008(s2)
	sw	a2, 1012(s2)
	sw	a3, 1016(s2)
	sw	a0, 1020(s2)
	lw	a0, 0(s3)
	lw	a1, 8(s3)
	slli	a0, a0, 1
	add	a0, a0, a1
	lw	a1, 4(s3)
	lw	a2, 12(s3)
	mul	a0, a0, s7
	divw	a0, a0, s4
	slli	a1, a1, 1
	add	a1, a1, a2
	lw	a2, 0(n21)
	lw	a3, 8(n21)
	mul	a1, a1, s7
	divw	a1, a1, s4
	slli	a2, a2, 1
	add	a2, a2, a3
	mul	a2, a2, s7
	divw	a2, a2, s4
	lw	a3, 4(n21)
	sd	n21, 144(sp)                    # 8-byte Folded Spill
	lw	a4, 12(n21)
	slli	a5, s8, 1
	add	a0, a0, a5
	slli	a3, a3, 1
	add	a3, a3, a4
	mul	a3, a3, s7
	divw	a3, a3, s4
	lw	a4, 0(s11)
	lw	a5, 8(s11)
	slli	a6, s9, 1
	add	a1, a1, a6
	slli	a4, a4, 1
	add	a4, a4, a5
	mul	a4, a4, s7
	divw	a4, a4, s4
	lw	a5, 4(s11)
	lw	a6, 12(s11)
	add	a2, a2, s8
	add	a0, a0, a2
	slli	a5, a5, 1
	add	a5, a5, a6
	mul	a2, a5, s7
	divw	a2, a2, s4
	lw	a5, 0(s6)
	lw	a6, 8(s6)
	add	a3, a3, s9
	add	a1, a1, a3
	slli	a5, a5, 1
	add	a5, a5, a6
	mul	a3, a5, s7
	divw	a3, a3, s4
	add	a4, a4, s8
	lw	a5, 4(s6)
	lw	a6, 12(s6)
	add	a3, a4, a3
	addw	a3, a0, a3
	slli	a5, a5, 1
	add	a5, a5, a6
	mul	a0, a5, s7
	divw	a0, a0, s4
	add	a2, a2, s9
	add	a0, a2, a0
	sraiw	a2, a3, 31
	xor	a4, a3, a2
	sub	a4, a4, a2
	andi	a2, a4, 15
	slli	a2, a2, 2
	add	a2, n20, a2
	lw	a2, 0(a2)
	addw	a0, a1, a0
	srli	a4, a4, 3
	and	a1, a4, n19
	addw	a2, a2, a1
	bgez	a3, .LBB9_5
# %bb.4:
	negw	a2, a2
.LBB9_5:
	sraiw	a1, a0, 31
	xor	a3, a0, a1
	sub	a3, a3, a1
	andi	a1, a3, 15
	slli	a1, a1, 2
	add	a1, n20, a1
	lw	a1, 0(a1)
	srli	a3, a3, 3
	and	a3, a3, n19
	addw	a3, a1, a3
	bgez	a0, .LBB9_7
# %bb.6:
	negw	a3, a3
.LBB9_7:
	mv	a0, n23
	mv	a1, n22
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	mv	a5, s2
	call	FindChromBlock_P
	beqz	s8, .LBB9_19
# %bb.8:
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	subw	a0, s8, a0
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	addw	a4, a0, a4
	beqz	s9, .LBB9_20
.LBB9_9:
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	subw	a0, s9, a0
	ld	a5, 72(sp)                      # 8-byte Folded Reload
	addw	a5, a0, a5
	j	.LBB9_21
.LBB9_10:
	lw	a5, 4(a3)
	lw	a6, 12(a3)
	addi	a0, s2, 32
	slli	a5, a5, 1
	add	s3, a5, a6
	mul	a5, s3, s7
	lw	a6, 0(a3)
	lw	s6, 8(a3)
	divw	a3, a5, s4
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	addw	t2, a3, s9
	slli	a6, a6, 1
	add	s6, a6, s6
	mul	a3, s6, s7
	mv	a5, s11
	divw	s11, a3, s4
	addw	t3, s11, s8
	add	a3, a5, t3
	add	a2, t2, a2
	mul	a2, a2, a4
	slliw	a2, a2, 1
	slli	a4, a4, 2
.LBB9_11:                               # =>This Inner Loop Header: Depth=1
	add	a5, a3, a2
	add	a5, a5, a1
	lbu	a6, 0(a5)
	lbu	a7, 2(a5)
	lbu	t0, 4(a5)
	lbu	t1, 6(a5)
	sw	a6, -32(a0)
	sw	a7, -28(a0)
	sw	t0, -24(a0)
	sw	t1, -20(a0)
	lbu	a6, 8(a5)
	lbu	a7, 10(a5)
	lbu	t0, 12(a5)
	lbu	t1, 14(a5)
	sw	a6, -16(a0)
	sw	a7, -12(a0)
	sw	t0, -8(a0)
	sw	t1, -4(a0)
	lbu	a6, 16(a5)
	lbu	a7, 18(a5)
	lbu	t0, 20(a5)
	lbu	t1, 22(a5)
	sw	a6, 0(a0)
	sw	a7, 4(a0)
	sw	t0, 8(a0)
	sw	t1, 12(a0)
	lbu	a6, 24(a5)
	lbu	a7, 26(a5)
	lbu	t0, 28(a5)
	lbu	a5, 30(a5)
	sw	a6, 16(a0)
	sw	a7, 20(a0)
	sw	t0, 24(a0)
	sw	a5, 28(a0)
	addi	a0, a0, 64
	addw	a2, a2, a4
	bne	a0, s10, .LBB9_11
# %bb.12:
	slliw	a0, t3, 2
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	sub	a1, a0, a1
	andi	a0, a1, 12
	slli	a0, a0, 2
	add	a0, n20, a0
	lw	a2, 0(a0)
	slliw	a0, t2, 2
	srli	a1, a1, 3
	and	a1, a1, n19
	addw	a2, a2, a1
	bgez	t3, .LBB9_14
# %bb.13:
	negw	a2, a2
.LBB9_14:
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	sub	a0, a0, a1
	andi	a1, a0, 12
	slli	a1, a1, 2
	add	a1, n20, a1
	lw	a1, 0(a1)
	srli	a0, a0, 3
	and	a3, a0, n19
	addw	a3, a1, a3
	sd	t2, 128(sp)                     # 8-byte Folded Spill
	sd	t3, 120(sp)                     # 8-byte Folded Spill
	bgez	t2, .LBB9_16
# %bb.15:
	negw	a3, a3
.LBB9_16:
	mv	a0, n23
	mv	a1, n22
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	mv	a5, s2
	call	FindChromBlock_P
	subw	s5, s8, s6
	beqz	s8, .LBB9_28
# %bb.17:
	addw	a4, s5, s11
	mv	a1, s3
	subw	s3, s9, s3
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	beqz	s9, .LBB9_29
.LBB9_18:
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	addw	a5, s3, a0
	j	.LBB9_30
.LBB9_19:
	subw	a0, s7, s4
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a4, a0, s4
	bnez	s9, .LBB9_9
.LBB9_20:
	subw	a0, s7, s4
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a5, a0, s4
.LBB9_21:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a6, a0
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a3, -8
	neg	a6, a6
	blt	a1, a3, .LBB9_23
# %bb.22:
	li	a1, -8
.LBB9_23:
	and	a0, a6, a0
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a6, a2, 31
	add	a2, a2, a6
	sraiw	a2, a2, 1
	sgtz	a6, a2
	neg	a7, a6
	addi	a6, a5, 1
	srliw	t0, a6, 31
	add	a6, a6, t0
	sraiw	a6, a6, 1
	neg	a6, a6
	and	a2, a7, a2
	blt	a6, a3, .LBB9_25
# %bb.24:
	li	a6, -8
.LBB9_25:
	addiw	a3, a6, 15
	li	a6, 16
	sd	a6, 0(sp)
	mv	a6, s5
	mv	a7, s2
	call	BiDirPredBlock
	beqz	s8, .LBB9_37
# %bb.26:
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	subw	a0, s8, a0
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	addw	a4, a0, a4
	beqz	s9, .LBB9_38
.LBB9_27:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	subw	a0, s9, a0
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	addw	a5, a0, a5
	j	.LBB9_39
.LBB9_28:
	subw	a0, s7, s4
	mul	a0, s6, a0
	divw	a4, a0, s4
	mv	a1, s3
	subw	s3, s9, s3
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	bnez	s9, .LBB9_18
.LBB9_29:
	subw	a0, s7, s4
	mul	a0, a1, a0
	divw	a5, a0, s4
.LBB9_30:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a6, a0
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a3, -8
	neg	a6, a6
	blt	a1, a3, .LBB9_32
# %bb.31:
	li	a1, -8
.LBB9_32:
	and	a0, a6, a0
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a6, a2, 31
	add	a2, a2, a6
	sraiw	a2, a2, 1
	sgtz	a6, a2
	neg	a7, a6
	addi	a6, a5, 1
	srliw	t0, a6, 31
	add	a6, a6, t0
	sraiw	a6, a6, 1
	neg	a6, a6
	and	a2, a7, a2
	blt	a6, a3, .LBB9_34
# %bb.33:
	li	a6, -8
.LBB9_34:
	addiw	a3, a6, 15
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 208(sp)                     # 8-byte Folded Reload
	mv	a7, s2
	call	BiDirPredBlock
	beqz	s8, .LBB9_44
# %bb.35:
	addw	a4, s5, s11
	beqz	s9, .LBB9_45
.LBB9_36:
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	addw	a5, s3, a0
	j	.LBB9_46
.LBB9_37:
	subw	a0, s7, s4
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a4, a0, s4
	bnez	s9, .LBB9_27
.LBB9_38:
	subw	a0, s7, s4
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a5, a0, s4
.LBB9_39:
	addi	a7, s2, 32
	li	a1, 1
	subw	a0, a1, a4
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a2, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a2
	addi	a2, a4, 1
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	neg	a2, a2
	srai	a3, a2, 63
	and	a6, a3, a2
	subw	a1, a1, a5
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	sgtz	a2, a1
	neg	a2, a2
	and	a2, a2, a1
	addi	a1, a5, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a3, a1
	li	t0, -8
	addiw	a1, a6, 7
	blt	a3, t0, .LBB9_41
# %bb.40:
	li	a3, -8
.LBB9_41:
	addiw	a3, a3, 15
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 160(sp)                     # 8-byte Folded Reload
	call	BiDirPredBlock
	beqz	s8, .LBB9_51
# %bb.42:
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	subw	a0, s8, a0
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	addw	a4, a0, a4
	beqz	s9, .LBB9_52
.LBB9_43:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	subw	a0, s9, a0
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	addw	a5, a0, a5
	j	.LBB9_53
.LBB9_44:
	subw	a0, s7, s4
	mul	a0, s6, a0
	divw	a4, a0, s4
	bnez	s9, .LBB9_36
.LBB9_45:
	subw	a0, s7, s4
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a5, a0, s4
.LBB9_46:
	addi	a7, s2, 32
	li	a1, 1
	subw	a0, a1, a4
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a2, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a2
	addi	a2, a4, 1
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	neg	a2, a2
	srai	a3, a2, 63
	and	a6, a3, a2
	subw	a1, a1, a5
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	sgtz	a2, a1
	neg	a2, a2
	and	a2, a2, a1
	addi	a1, a5, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a3, a1
	li	t0, -8
	addiw	a1, a6, 7
	blt	a3, t0, .LBB9_48
# %bb.47:
	li	a3, -8
.LBB9_48:
	addiw	a3, a3, 15
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 160(sp)                     # 8-byte Folded Reload
	call	BiDirPredBlock
	beqz	s8, .LBB9_58
# %bb.49:
	addw	a4, s5, s11
	beqz	s9, .LBB9_59
.LBB9_50:
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	addw	a5, s3, a0
	j	.LBB9_60
.LBB9_51:
	subw	a0, s7, s4
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a4, a0, s4
	bnez	s9, .LBB9_43
.LBB9_52:
	subw	a0, s7, s4
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a5, a0, s4
.LBB9_53:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a1, a0
	neg	a3, a1
	addi	a1, a4, 1
	srliw	a6, a1, 31
	add	a1, a1, a6
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a6, -8
	and	a0, a3, a0
	blt	a1, a6, .LBB9_55
# %bb.54:
	li	a1, -8
.LBB9_55:
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 176(sp)                     # 8-byte Folded Reload
	call	BiDirPredBlock
	beqz	s8, .LBB9_65
# %bb.56:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	subw	a0, s8, a0
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	addw	a4, a0, a4
	beqz	s9, .LBB9_66
.LBB9_57:
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	subw	a0, s9, a0
	ld	a5, 24(sp)                      # 8-byte Folded Reload
	addw	a5, a0, a5
	subw	s5, s7, s4
	j	.LBB9_67
.LBB9_58:
	subw	a0, s7, s4
	mul	a0, s6, a0
	divw	a4, a0, s4
	bnez	s9, .LBB9_50
.LBB9_59:
	subw	a0, s7, s4
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a5, a0, s4
.LBB9_60:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	sgtz	a1, a0
	neg	a3, a1
	addi	a1, a4, 1
	srliw	a6, a1, 31
	add	a1, a1, a6
	sraiw	a1, a1, 1
	neg	a1, a1
	li	a6, -8
	and	a0, a3, a0
	blt	a1, a6, .LBB9_62
# %bb.61:
	li	a1, -8
.LBB9_62:
	addiw	a1, a1, 15
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 176(sp)                     # 8-byte Folded Reload
	call	BiDirPredBlock
	beqz	s8, .LBB9_69
# %bb.63:
	addw	a4, s5, s11
	beqz	s9, .LBB9_70
.LBB9_64:
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	addw	a5, s3, a0
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	j	.LBB9_71
.LBB9_65:
	subw	a0, s7, s4
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	mul	a0, a1, a0
	divw	a4, a0, s4
	bnez	s9, .LBB9_57
.LBB9_66:
	subw	s5, s7, s4
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	mul	a0, a0, s5
	divw	a5, a0, s4
.LBB9_67:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	addi	a1, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a1
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	srai	a3, a1, 63
	and	a1, a3, a1
	addiw	a1, a1, 7
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	call	BiDirPredBlock
	lw	a1, 0(s3)
	lw	a2, 8(s3)
	lw	a3, 4(s3)
	lw	a0, 12(s3)
	slli	a1, a1, 1
	add	a1, a1, a2
	slli	a2, a3, 1
	beqz	s8, .LBB9_73
# %bb.68:
	mul	a3, a1, s7
	divw	a3, a3, s4
	subw	a1, s8, a1
	add	a1, a1, a3
	j	.LBB9_74
.LBB9_69:
	subw	a0, s7, s4
	mul	a0, s6, a0
	divw	a4, a0, s4
	bnez	s9, .LBB9_64
.LBB9_70:
	subw	a0, s7, s4
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	mul	a0, s3, a0
	divw	a5, a0, s4
.LBB9_71:
	li	a2, 1
	subw	a0, a2, a4
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	addi	a1, a0, -8
	slti	a0, a0, 9
	addi	a0, a0, -1
	and	a0, a0, a1
	addi	a1, a4, 1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	neg	a1, a1
	srai	a3, a1, 63
	and	a1, a3, a1
	addiw	a1, a1, 7
	subw	a2, a2, a5
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -8
	slti	a2, a2, 9
	addi	a2, a2, -1
	and	a2, a2, a3
	addi	a3, a5, 1
	srliw	a6, a3, 31
	add	a3, a3, a6
	sraiw	a3, a3, 1
	neg	a3, a3
	srai	a6, a3, 63
	and	a3, a6, a3
	addiw	a3, a3, 7
	li	a6, 16
	sd	a6, 0(sp)
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	call	BiDirPredBlock
	beqz	s8, .LBB9_76
# %bb.72:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	subw	a1, a0, s6
	j	.LBB9_77
.LBB9_73:
	mul	a1, a1, s5
	divw	a1, a1, s4
.LBB9_74:
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	lui	t1, %hi(roundtab)
	addi	t1, t1, %lo(roundtab)
	add	a0, a2, a0
	beqz	s9, .LBB9_79
# %bb.75:
	mul	a2, a0, s7
	divw	a2, a2, s4
	subw	a0, s9, a0
	add	a0, a0, a2
	j	.LBB9_80
.LBB9_76:
	subw	a0, s7, s4
	mul	a0, s6, a0
	divw	a1, a0, s4
.LBB9_77:
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	lui	a6, %hi(roundtab)
	addi	a6, a6, %lo(roundtab)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	slliw	a2, a1, 2
	beqz	s9, .LBB9_83
# %bb.78:
	subw	a0, a0, s3
	j	.LBB9_84
.LBB9_79:
	mul	a0, a0, s5
	divw	a0, a0, s4
.LBB9_80:
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	lw	a3, 0(a2)
	lw	a4, 8(a2)
	lw	a5, 4(a2)
	lw	a2, 12(a2)
	slli	a3, a3, 1
	add	a3, a3, a4
	slli	a4, a5, 1
	beqz	s8, .LBB9_93
# %bb.81:
	mul	a5, a3, s7
	divw	a5, a5, s4
	subw	a3, s8, a3
	add	a3, a3, a5
	add	a2, a4, a2
	beqz	s9, .LBB9_94
.LBB9_82:
	mul	a4, a2, s7
	divw	a4, a4, s4
	subw	a2, s9, a2
	add	a2, a2, a4
	j	.LBB9_95
.LBB9_83:
	subw	a0, s7, s4
	mul	a0, s3, a0
	divw	a0, a0, s4
.LBB9_84:
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	sub	a3, a2, a3
	andi	a2, a3, 12
	slli	a2, a2, 2
	add	a2, a6, a2
	lw	a4, 0(a2)
	slliw	a2, a0, 2
	srli	a3, a3, 3
	and	a3, a3, a5
	addw	s4, a4, a3
	bgez	a1, .LBB9_86
# %bb.85:
	negw	s4, s4
.LBB9_86:
	sraiw	a1, a2, 31
	xor	a2, a2, a1
	sub	a2, a2, a1
	andi	a1, a2, 12
	slli	a1, a1, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	srli	a2, a2, 3
	and	a2, a2, a5
	addw	s5, a2, a1
	bltz	a0, .LBB9_108
.LBB9_87:
	li	s6, 7
	li	a0, -2
	li	s7, 7
	bge	s4, a0, .LBB9_109
.LBB9_88:
	blt	s5, a0, .LBB9_90
.LBB9_89:
	addi	a0, s5, 1
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	li	a1, 7
	sub	s6, a1, a0
.LBB9_90:
	li	a0, 1
	subw	a1, a0, s5
	slti	a2, a1, -1
	srliw	a3, a1, 31
	add	a1, a1, a3
	sraiw	a1, a1, 1
	addi	a2, a2, -1
	and	s8, a2, a1
	subw	a0, a0, s4
	slti	a1, a0, -1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	a1, a1, -1
	and	s9, a1, a0
	ld	s11, 208(sp)                    # 8-byte Folded Reload
	addi	a6, s11, 1280
	addi	a7, s2, 1280
	li	s3, 8
	sd	s3, 0(sp)
	mv	a0, s9
	mv	a1, s7
	mv	a2, s8
	mv	a3, s6
	mv	a4, s4
	mv	a5, s5
	call	BiDirPredBlock
	addi	a6, s11, 1024
	addi	a7, s2, 1024
	sd	s3, 0(sp)
	mv	a0, s9
	mv	a1, s7
	mv	a2, s8
	mv	a3, s6
	mv	a4, s4
	mv	a5, s5
	call	BiDirPredBlock
	addi	a0, s2, 32
	addi	a1, s1, 32
	addi	a2, s0, 32
.LBB9_91:                               # =>This Inner Loop Header: Depth=1
	lw	a3, -32(a0)
	lw	a4, -32(a1)
	lw	a5, -28(a0)
	lw	a6, -28(a1)
	add	a3, a4, a3
	sw	a3, -32(a2)
	add	a5, a6, a5
	lw	a3, -24(a0)
	lw	a4, -24(a1)
	lw	a6, -20(a0)
	lw	a7, -20(a1)
	sw	a5, -28(a2)
	add	a3, a4, a3
	sw	a3, -24(a2)
	add	a6, a7, a6
	lw	a3, -16(a0)
	lw	a4, -16(a1)
	lw	a5, -12(a0)
	lw	a7, -12(a1)
	sw	a6, -20(a2)
	add	a3, a4, a3
	sw	a3, -16(a2)
	add	a5, a7, a5
	lw	a3, -8(a0)
	lw	a4, -8(a1)
	lw	a6, -4(a0)
	lw	a7, -4(a1)
	sw	a5, -12(a2)
	add	a3, a4, a3
	sw	a3, -8(a2)
	add	a6, a7, a6
	lw	a3, 0(a0)
	lw	a4, 0(a1)
	lw	a5, 4(a0)
	lw	a7, 4(a1)
	sw	a6, -4(a2)
	add	a3, a4, a3
	sw	a3, 0(a2)
	add	a5, a7, a5
	lw	a3, 8(a0)
	lw	a4, 8(a1)
	lw	a6, 12(a0)
	lw	a7, 12(a1)
	sw	a5, 4(a2)
	add	a3, a4, a3
	sw	a3, 8(a2)
	add	a6, a7, a6
	lw	a3, 16(a0)
	lw	a4, 16(a1)
	lw	a5, 20(a0)
	lw	a7, 20(a1)
	sw	a6, 12(a2)
	add	a3, a4, a3
	sw	a3, 16(a2)
	add	a5, a7, a5
	lw	a3, 24(a0)
	lw	a4, 24(a1)
	lw	a6, 28(a0)
	lw	a7, 28(a1)
	sw	a5, 20(a2)
	add	a3, a4, a3
	sw	a3, 24(a2)
	add	a6, a7, a6
	sw	a6, 28(a2)
	addi	a0, a0, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	bne	a0, s10, .LBB9_91
# %bb.92:
	lw	a0, 1024(s2)
	lw	a1, 1024(s1)
	lw	a2, 1280(s2)
	lw	a3, 1280(s1)
	add	a0, a1, a0
	sw	a0, 1024(s0)
	add	a2, a3, a2
	lw	a0, 1028(s2)
	lw	a1, 1028(s1)
	lw	a3, 1284(s2)
	lw	a4, 1284(s1)
	sw	a2, 1280(s0)
	add	a0, a1, a0
	sw	a0, 1028(s0)
	add	a3, a4, a3
	lw	a0, 1032(s2)
	lw	a1, 1032(s1)
	lw	a2, 1288(s2)
	lw	a4, 1288(s1)
	sw	a3, 1284(s0)
	add	a0, a1, a0
	sw	a0, 1032(s0)
	add	a2, a4, a2
	lw	a0, 1036(s2)
	lw	a1, 1036(s1)
	lw	a3, 1292(s2)
	lw	a4, 1292(s1)
	sw	a2, 1288(s0)
	add	a0, a1, a0
	sw	a0, 1036(s0)
	add	a3, a4, a3
	lw	a0, 1040(s2)
	lw	a1, 1040(s1)
	lw	a2, 1296(s2)
	lw	a4, 1296(s1)
	sw	a3, 1292(s0)
	add	a0, a1, a0
	sw	a0, 1040(s0)
	add	a2, a4, a2
	lw	a0, 1044(s2)
	lw	a1, 1044(s1)
	lw	a3, 1300(s2)
	lw	a4, 1300(s1)
	sw	a2, 1296(s0)
	add	a0, a1, a0
	sw	a0, 1044(s0)
	add	a3, a4, a3
	lw	a0, 1048(s2)
	lw	a1, 1048(s1)
	lw	a2, 1304(s2)
	lw	a4, 1304(s1)
	sw	a3, 1300(s0)
	add	a0, a1, a0
	sw	a0, 1048(s0)
	add	a2, a4, a2
	lw	a0, 1052(s2)
	lw	a1, 1052(s1)
	lw	a3, 1308(s2)
	lw	a4, 1308(s1)
	sw	a2, 1304(s0)
	add	a0, a1, a0
	sw	a0, 1052(s0)
	add	a3, a4, a3
	lw	a0, 1056(s2)
	lw	a1, 1056(s1)
	lw	a2, 1312(s2)
	lw	a4, 1312(s1)
	sw	a3, 1308(s0)
	add	a0, a1, a0
	sw	a0, 1056(s0)
	add	a2, a4, a2
	lw	a0, 1060(s2)
	lw	a1, 1060(s1)
	lw	a3, 1316(s2)
	lw	a4, 1316(s1)
	sw	a2, 1312(s0)
	add	a0, a1, a0
	sw	a0, 1060(s0)
	add	a3, a4, a3
	lw	a0, 1064(s2)
	lw	a1, 1064(s1)
	lw	a2, 1320(s2)
	lw	a4, 1320(s1)
	sw	a3, 1316(s0)
	add	a0, a1, a0
	sw	a0, 1064(s0)
	add	a2, a4, a2
	lw	a0, 1068(s2)
	lw	a1, 1068(s1)
	lw	a3, 1324(s2)
	lw	a4, 1324(s1)
	sw	a2, 1320(s0)
	add	a0, a1, a0
	sw	a0, 1068(s0)
	add	a3, a4, a3
	lw	a0, 1072(s2)
	lw	a1, 1072(s1)
	lw	a2, 1328(s2)
	lw	a4, 1328(s1)
	sw	a3, 1324(s0)
	add	a0, a1, a0
	sw	a0, 1072(s0)
	add	a2, a4, a2
	lw	a0, 1076(s2)
	lw	a1, 1076(s1)
	lw	a3, 1332(s2)
	lw	a4, 1332(s1)
	sw	a2, 1328(s0)
	add	a0, a1, a0
	sw	a0, 1076(s0)
	add	a3, a4, a3
	lw	a0, 1080(s2)
	lw	a1, 1080(s1)
	lw	a2, 1336(s2)
	lw	a4, 1336(s1)
	sw	a3, 1332(s0)
	add	a0, a1, a0
	sw	a0, 1080(s0)
	add	a2, a4, a2
	lw	a0, 1084(s2)
	lw	a1, 1084(s1)
	lw	a3, 1340(s2)
	lw	a4, 1340(s1)
	sw	a2, 1336(s0)
	add	a0, a1, a0
	sw	a0, 1084(s0)
	add	a3, a4, a3
	lw	a0, 1088(s2)
	lw	a1, 1088(s1)
	lw	a2, 1344(s2)
	lw	a4, 1344(s1)
	sw	a3, 1340(s0)
	add	a0, a1, a0
	sw	a0, 1088(s0)
	add	a2, a4, a2
	lw	a0, 1092(s2)
	lw	a1, 1092(s1)
	lw	a3, 1348(s2)
	lw	a4, 1348(s1)
	sw	a2, 1344(s0)
	add	a0, a1, a0
	sw	a0, 1092(s0)
	add	a3, a4, a3
	lw	a0, 1096(s2)
	lw	a1, 1096(s1)
	lw	a2, 1352(s2)
	lw	a4, 1352(s1)
	sw	a3, 1348(s0)
	add	a0, a1, a0
	sw	a0, 1096(s0)
	add	a2, a4, a2
	lw	a0, 1100(s2)
	lw	a1, 1100(s1)
	lw	a3, 1356(s2)
	lw	a4, 1356(s1)
	sw	a2, 1352(s0)
	add	a0, a1, a0
	sw	a0, 1100(s0)
	add	a3, a4, a3
	lw	a0, 1104(s2)
	lw	a1, 1104(s1)
	lw	a2, 1360(s2)
	lw	a4, 1360(s1)
	sw	a3, 1356(s0)
	add	a0, a1, a0
	sw	a0, 1104(s0)
	add	a2, a4, a2
	lw	a0, 1108(s2)
	lw	a1, 1108(s1)
	lw	a3, 1364(s2)
	lw	a4, 1364(s1)
	sw	a2, 1360(s0)
	add	a0, a1, a0
	sw	a0, 1108(s0)
	add	a3, a4, a3
	lw	a0, 1112(s2)
	lw	a1, 1112(s1)
	lw	a2, 1368(s2)
	lw	a4, 1368(s1)
	sw	a3, 1364(s0)
	add	a0, a1, a0
	sw	a0, 1112(s0)
	add	a2, a4, a2
	lw	a0, 1116(s2)
	lw	a1, 1116(s1)
	lw	a3, 1372(s2)
	lw	a4, 1372(s1)
	sw	a2, 1368(s0)
	add	a0, a1, a0
	sw	a0, 1116(s0)
	add	a3, a4, a3
	lw	a0, 1120(s2)
	lw	a1, 1120(s1)
	lw	a2, 1376(s2)
	lw	a4, 1376(s1)
	sw	a3, 1372(s0)
	add	a0, a1, a0
	sw	a0, 1120(s0)
	add	a2, a4, a2
	lw	a0, 1124(s2)
	lw	a1, 1124(s1)
	lw	a3, 1380(s2)
	lw	a4, 1380(s1)
	sw	a2, 1376(s0)
	add	a0, a1, a0
	sw	a0, 1124(s0)
	add	a3, a4, a3
	lw	a0, 1128(s2)
	lw	a1, 1128(s1)
	lw	a2, 1384(s2)
	lw	a4, 1384(s1)
	sw	a3, 1380(s0)
	add	a0, a1, a0
	sw	a0, 1128(s0)
	add	a2, a4, a2
	lw	a0, 1132(s2)
	lw	a1, 1132(s1)
	lw	a3, 1388(s2)
	lw	a4, 1388(s1)
	sw	a2, 1384(s0)
	add	a0, a1, a0
	sw	a0, 1132(s0)
	add	a3, a4, a3
	lw	a0, 1136(s2)
	lw	a1, 1136(s1)
	lw	a2, 1392(s2)
	lw	a4, 1392(s1)
	sw	a3, 1388(s0)
	add	a0, a1, a0
	sw	a0, 1136(s0)
	add	a2, a4, a2
	lw	a0, 1140(s2)
	lw	a1, 1140(s1)
	lw	a3, 1396(s2)
	lw	a4, 1396(s1)
	sw	a2, 1392(s0)
	add	a0, a1, a0
	sw	a0, 1140(s0)
	add	a3, a4, a3
	lw	a0, 1144(s2)
	lw	a1, 1144(s1)
	lw	a2, 1400(s2)
	lw	a4, 1400(s1)
	sw	a3, 1396(s0)
	add	a0, a1, a0
	sw	a0, 1144(s0)
	add	a2, a4, a2
	lw	a0, 1148(s2)
	lw	a1, 1148(s1)
	lw	a3, 1404(s2)
	lw	a4, 1404(s1)
	sw	a2, 1400(s0)
	add	a0, a1, a0
	sw	a0, 1148(s0)
	add	a3, a4, a3
	lw	a0, 1152(s2)
	lw	a1, 1152(s1)
	lw	a2, 1408(s2)
	lw	a4, 1408(s1)
	sw	a3, 1404(s0)
	add	a0, a1, a0
	sw	a0, 1152(s0)
	add	a2, a4, a2
	lw	a0, 1156(s2)
	lw	a1, 1156(s1)
	lw	a3, 1412(s2)
	lw	a4, 1412(s1)
	sw	a2, 1408(s0)
	add	a0, a1, a0
	sw	a0, 1156(s0)
	add	a3, a4, a3
	lw	a0, 1160(s2)
	lw	a1, 1160(s1)
	lw	a2, 1416(s2)
	lw	a4, 1416(s1)
	sw	a3, 1412(s0)
	add	a0, a1, a0
	sw	a0, 1160(s0)
	add	a2, a4, a2
	lw	a0, 1164(s2)
	lw	a1, 1164(s1)
	lw	a3, 1420(s2)
	lw	a4, 1420(s1)
	sw	a2, 1416(s0)
	add	a0, a1, a0
	sw	a0, 1164(s0)
	add	a3, a4, a3
	lw	a0, 1168(s2)
	lw	a1, 1168(s1)
	lw	a2, 1424(s2)
	lw	a4, 1424(s1)
	sw	a3, 1420(s0)
	add	a0, a1, a0
	sw	a0, 1168(s0)
	add	a2, a4, a2
	lw	a0, 1172(s2)
	lw	a1, 1172(s1)
	lw	a3, 1428(s2)
	lw	a4, 1428(s1)
	sw	a2, 1424(s0)
	add	a0, a1, a0
	sw	a0, 1172(s0)
	add	a3, a4, a3
	lw	a0, 1176(s2)
	lw	a1, 1176(s1)
	lw	a2, 1432(s2)
	lw	a4, 1432(s1)
	sw	a3, 1428(s0)
	add	a0, a1, a0
	sw	a0, 1176(s0)
	add	a2, a4, a2
	lw	a0, 1180(s2)
	lw	a1, 1180(s1)
	lw	a3, 1436(s2)
	lw	a4, 1436(s1)
	sw	a2, 1432(s0)
	add	a0, a1, a0
	sw	a0, 1180(s0)
	add	a3, a4, a3
	lw	a0, 1184(s2)
	lw	a1, 1184(s1)
	lw	a2, 1440(s2)
	lw	a4, 1440(s1)
	sw	a3, 1436(s0)
	add	a0, a1, a0
	sw	a0, 1184(s0)
	add	a2, a4, a2
	lw	a0, 1188(s2)
	lw	a1, 1188(s1)
	lw	a3, 1444(s2)
	lw	a4, 1444(s1)
	sw	a2, 1440(s0)
	add	a0, a1, a0
	sw	a0, 1188(s0)
	add	a3, a4, a3
	lw	a0, 1192(s2)
	lw	a1, 1192(s1)
	lw	a2, 1448(s2)
	lw	a4, 1448(s1)
	sw	a3, 1444(s0)
	add	a0, a1, a0
	sw	a0, 1192(s0)
	add	a2, a4, a2
	lw	a0, 1196(s2)
	lw	a1, 1196(s1)
	lw	a3, 1452(s2)
	lw	a4, 1452(s1)
	sw	a2, 1448(s0)
	add	a0, a1, a0
	sw	a0, 1196(s0)
	add	a3, a4, a3
	lw	a0, 1200(s2)
	lw	a1, 1200(s1)
	lw	a2, 1456(s2)
	lw	a4, 1456(s1)
	sw	a3, 1452(s0)
	add	a0, a1, a0
	sw	a0, 1200(s0)
	add	a2, a4, a2
	lw	a0, 1204(s2)
	lw	a1, 1204(s1)
	lw	a3, 1460(s2)
	lw	a4, 1460(s1)
	sw	a2, 1456(s0)
	add	a0, a1, a0
	sw	a0, 1204(s0)
	add	a3, a4, a3
	lw	a0, 1208(s2)
	lw	a1, 1208(s1)
	lw	a2, 1464(s2)
	lw	a4, 1464(s1)
	sw	a3, 1460(s0)
	add	a0, a1, a0
	sw	a0, 1208(s0)
	add	a2, a4, a2
	lw	a0, 1212(s2)
	lw	a1, 1212(s1)
	lw	a3, 1468(s2)
	lw	a4, 1468(s1)
	sw	a2, 1464(s0)
	add	a0, a1, a0
	sw	a0, 1212(s0)
	add	a3, a4, a3
	lw	a0, 1216(s2)
	lw	a1, 1216(s1)
	lw	a2, 1472(s2)
	lw	a4, 1472(s1)
	sw	a3, 1468(s0)
	add	a0, a1, a0
	sw	a0, 1216(s0)
	add	a2, a4, a2
	lw	a0, 1220(s2)
	lw	a1, 1220(s1)
	lw	a3, 1476(s2)
	lw	a4, 1476(s1)
	sw	a2, 1472(s0)
	add	a0, a1, a0
	sw	a0, 1220(s0)
	add	a3, a4, a3
	lw	a0, 1224(s2)
	lw	a1, 1224(s1)
	lw	a2, 1480(s2)
	lw	a4, 1480(s1)
	sw	a3, 1476(s0)
	add	a0, a1, a0
	sw	a0, 1224(s0)
	add	a2, a4, a2
	lw	a0, 1228(s2)
	lw	a1, 1228(s1)
	lw	a3, 1484(s2)
	lw	a4, 1484(s1)
	sw	a2, 1480(s0)
	add	a0, a1, a0
	sw	a0, 1228(s0)
	add	a3, a4, a3
	lw	a0, 1232(s2)
	lw	a1, 1232(s1)
	lw	a2, 1488(s2)
	lw	a4, 1488(s1)
	sw	a3, 1484(s0)
	add	a0, a1, a0
	sw	a0, 1232(s0)
	add	a2, a4, a2
	lw	a0, 1236(s2)
	lw	a1, 1236(s1)
	lw	a3, 1492(s2)
	lw	a4, 1492(s1)
	sw	a2, 1488(s0)
	add	a0, a1, a0
	sw	a0, 1236(s0)
	add	a3, a4, a3
	lw	a0, 1240(s2)
	lw	a1, 1240(s1)
	lw	a2, 1496(s2)
	lw	a4, 1496(s1)
	sw	a3, 1492(s0)
	add	a0, a1, a0
	sw	a0, 1240(s0)
	add	a2, a4, a2
	lw	a0, 1244(s2)
	lw	a1, 1244(s1)
	lw	a3, 1500(s2)
	lw	a4, 1500(s1)
	sw	a2, 1496(s0)
	add	a0, a1, a0
	sw	a0, 1244(s0)
	add	a3, a4, a3
	lw	a0, 1248(s2)
	lw	a1, 1248(s1)
	lw	a2, 1504(s2)
	lw	a4, 1504(s1)
	sw	a3, 1500(s0)
	add	a0, a1, a0
	sw	a0, 1248(s0)
	add	a2, a4, a2
	lw	a0, 1252(s2)
	lw	a1, 1252(s1)
	lw	a3, 1508(s2)
	lw	a4, 1508(s1)
	sw	a2, 1504(s0)
	add	a0, a1, a0
	sw	a0, 1252(s0)
	add	a3, a4, a3
	lw	a0, 1256(s2)
	lw	a1, 1256(s1)
	lw	a2, 1512(s2)
	lw	a4, 1512(s1)
	sw	a3, 1508(s0)
	add	a0, a1, a0
	sw	a0, 1256(s0)
	add	a2, a4, a2
	lw	a0, 1260(s2)
	lw	a1, 1260(s1)
	lw	a3, 1516(s2)
	lw	a4, 1516(s1)
	sw	a2, 1512(s0)
	add	a0, a1, a0
	sw	a0, 1260(s0)
	add	a3, a4, a3
	lw	a0, 1264(s2)
	lw	a1, 1264(s1)
	lw	a2, 1520(s2)
	lw	a4, 1520(s1)
	sw	a3, 1516(s0)
	add	a0, a1, a0
	sw	a0, 1264(s0)
	add	a2, a4, a2
	lw	a0, 1268(s2)
	lw	a1, 1268(s1)
	lw	a3, 1524(s2)
	lw	a4, 1524(s1)
	sw	a2, 1520(s0)
	add	a0, a1, a0
	sw	a0, 1268(s0)
	add	a3, a4, a3
	lw	a0, 1272(s2)
	lw	a1, 1272(s1)
	lw	a2, 1528(s2)
	lw	a4, 1528(s1)
	sw	a3, 1524(s0)
	add	a0, a1, a0
	sw	a0, 1272(s0)
	add	a2, a4, a2
	lw	a0, 1276(s2)
	lw	a1, 1276(s1)
	lw	a3, 1532(s2)
	lw	a4, 1532(s1)
	sw	a2, 1528(s0)
	add	a0, a1, a0
	sw	a0, 1276(s0)
	add	a3, a4, a3
	sw	a3, 1532(s0)
	mv	a0, s2
	call	free
	mv	a0, s0
	ld	ra, 312(sp)                     # 8-byte Folded Reload
	ld	s0, 304(sp)                     # 8-byte Folded Reload
	ld	s1, 296(sp)                     # 8-byte Folded Reload
	ld	s2, 288(sp)                     # 8-byte Folded Reload
	ld	s3, 280(sp)                     # 8-byte Folded Reload
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	ld	s5, 264(sp)                     # 8-byte Folded Reload
	ld	s6, 256(sp)                     # 8-byte Folded Reload
	ld	s7, 248(sp)                     # 8-byte Folded Reload
	ld	s8, 240(sp)                     # 8-byte Folded Reload
	ld	s9, 232(sp)                     # 8-byte Folded Reload
	ld	s10, 224(sp)                    # 8-byte Folded Reload
	ld	s11, 216(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 320
	ret
.LBB9_93:
	mul	a3, a3, s5
	divw	a3, a3, s4
	add	a2, a4, a2
	bnez	s9, .LBB9_82
.LBB9_94:
	mul	a2, a2, s5
	divw	a2, a2, s4
.LBB9_95:
	lw	a4, 0(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	a5, 12(s11)
	slli	a4, a4, 1
	add	a4, a4, a6
	slli	a6, a7, 1
	beqz	s8, .LBB9_98
# %bb.96:
	mul	a7, a4, s7
	divw	a7, a7, s4
	subw	a4, s8, a4
	add	a4, a4, a7
	add	a3, a3, a1
	add	a5, a6, a5
	beqz	s9, .LBB9_99
.LBB9_97:
	mul	a1, a5, s7
	divw	a1, a1, s4
	subw	a5, s9, a5
	add	a1, a5, a1
	j	.LBB9_100
.LBB9_98:
	mul	a4, a4, s5
	divw	a4, a4, s4
	add	a3, a3, a1
	add	a5, a6, a5
	bnez	s9, .LBB9_97
.LBB9_99:
	mul	a1, a5, s5
	divw	a1, a1, s4
.LBB9_100:
	add	a2, a2, a0
	add	a0, a4, a3
	lw	a4, 0(s6)
	lw	a5, 8(s6)
	lw	a6, 4(s6)
	lw	a3, 12(s6)
	slli	a4, a4, 1
	add	a5, a4, a5
	slli	a4, a6, 1
	beqz	s8, .LBB9_103
# %bb.101:
	mul	a6, a5, s7
	divw	a6, a6, s4
	subw	a5, s8, a5
	add	a5, a5, a6
	add	a1, a1, a2
	add	a3, a4, a3
	addw	a0, a5, a0
	beqz	s9, .LBB9_104
.LBB9_102:
	mul	a2, a3, s7
	divw	a2, a2, s4
	subw	a3, s9, a3
	add	a2, a3, a2
	j	.LBB9_105
.LBB9_103:
	mul	a5, a5, s5
	divw	a5, a5, s4
	add	a1, a1, a2
	add	a3, a4, a3
	addw	a0, a5, a0
	bnez	s9, .LBB9_102
.LBB9_104:
	mul	a2, a3, s5
	divw	a2, a2, s4
.LBB9_105:
	sraiw	a3, a0, 31
	xor	a4, a0, a3
	sub	a4, a4, a3
	andi	a3, a4, 15
	slli	a3, a3, 2
	add	a3, t1, a3
	lw	a3, 0(a3)
	addw	a1, a2, a1
	srli	a4, a4, 3
	and	a2, a4, t0
	addw	s4, a3, a2
	bgez	a0, .LBB9_107
# %bb.106:
	negw	s4, s4
.LBB9_107:
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	sub	a2, a2, a0
	andi	a0, a2, 15
	slli	a0, a0, 2
	add	a0, t1, a0
	lw	a0, 0(a0)
	srli	a2, a2, 3
	and	a2, a2, t0
	addw	s5, a0, a2
	bgez	a1, .LBB9_87
.LBB9_108:
	negw	s5, s5
	li	s6, 7
	li	a0, -2
	li	s7, 7
	blt	s4, a0, .LBB9_88
.LBB9_109:
	addi	a1, s4, 1
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	li	a2, 7
	sub	s7, a2, a1
	bge	s5, a0, .LBB9_89
	j	.LBB9_90
.Lfunc_end9:
	.size	MB_Recon_B, .Lfunc_end9-MB_Recon_B
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindBiDirLimits                 # -- Begin function FindBiDirLimits
	.p2align	2
	.type	FindBiDirLimits,@function
FindBiDirLimits:                        # @FindBiDirLimits
# %bb.0:
	li	a4, 1
	subw	a4, a4, a0
	srliw	a5, a4, 31
	add	a4, a4, a5
	sraiw	a4, a4, 1
	slli	a3, a3, 3
	subw	a4, a4, a3
	sgtz	a5, a4
	negw	a5, a5
	and	a4, a5, a4
	addi	a0, a0, 1
	srliw	a5, a0, 31
	add	a0, a0, a5
	sraiw	a0, a0, 1
	li	a5, 15
	subw	a5, a5, a3
	subw	a0, a5, a0
	li	a3, 7
	sw	a4, 0(a1)
	blt	a0, a3, .LBB10_2
# %bb.1:
	li	a0, 7
.LBB10_2:
	sw	a0, 0(a2)
	ret
.Lfunc_end10:
	.size	FindBiDirLimits, .Lfunc_end10-FindBiDirLimits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	BiDirPredBlock                  # -- Begin function BiDirPredBlock
	.p2align	2
	.type	BiDirPredBlock,@function
BiDirPredBlock:                         # @BiDirPredBlock
# %bb.0:
	ld	t0, 0(sp)
	srai	t1, a4, 1
	or	t2, a5, a4
	andi	t3, t2, 1
	srai	t2, a5, 1
	bnez	t3, .LBB11_9
# %bb.1:
	blt	a3, a2, .LBB11_31
# %bb.2:
	blt	a1, a0, .LBB11_31
# %bb.3:
	addiw	a3, a3, 1
	subw	a1, a1, a0
	addi	a1, a1, 1
	mul	a4, t0, a2
	slli	a4, a4, 2
	slli	a5, a0, 2
	add	a0, a7, a5
	add	a0, a0, a4
	slli	a4, t0, 2
	add	t2, t2, a2
	mul	a7, t2, t0
	slli	a7, a7, 2
	slli	t1, t1, 2
	add	a5, a5, t1
	add	a5, a6, a5
	add	a5, a5, a7
	j	.LBB11_5
.LBB11_4:                               #   in Loop: Header=BB11_5 Depth=1
	addiw	a6, a2, 1
	addi	a2, a2, 1
	add	a0, a0, a4
	add	a5, a5, a4
	beq	a3, a6, .LBB11_31
.LBB11_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
	mv	a6, a5
	mv	a7, a0
	mv	t0, a1
	j	.LBB11_7
.LBB11_6:                               #   in Loop: Header=BB11_7 Depth=2
	lw	t2, 0(a7)
	add	t1, t1, t2
	sraiw	t1, t1, 1
	sw	t1, 0(a7)
	addiw	t0, t0, -1
	addi	a7, a7, 4
	addi	a6, a6, 4
	beqz	t0, .LBB11_4
.LBB11_7:                               #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t1, 0(a6)
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	li	t2, 255
	blt	t1, t2, .LBB11_6
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=2
	li	t1, 255
	j	.LBB11_6
.LBB11_9:
	andi	t3, a4, 1
	andi	a5, a5, 1
	bnez	t3, .LBB11_17
# %bb.10:
	beqz	a5, .LBB11_17
# %bb.11:
	blt	a3, a2, .LBB11_31
# %bb.12:
	blt	a1, a0, .LBB11_31
# %bb.13:
	addiw	a3, a3, 1
	subw	a1, a1, a0
	addi	a1, a1, 1
	mul	a4, t0, a2
	slli	a4, a4, 2
	slli	t3, a0, 2
	add	a0, a7, t3
	add	a0, a0, a4
	slli	a4, t0, 2
	add	t2, t2, a2
	add	a5, t2, a5
	mul	a5, a5, t0
	slli	a5, a5, 2
	slli	t1, t1, 2
	add	a7, t3, t1
	add	a7, a6, a7
	add	a5, a7, a5
	mul	a7, t2, t0
	slli	a7, a7, 2
	add	t1, t3, t1
	add	a6, a6, t1
	add	a6, a6, a7
.LBB11_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
	mv	a7, a6
	mv	t0, a5
	mv	t1, a0
	mv	t2, a1
.LBB11_15:                              #   Parent Loop BB11_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t3, 0(a7)
	lw	t4, 0(t0)
	lw	t5, 0(t1)
	add	t3, t3, t4
	addi	t3, t3, 1
	sraiw	t3, t3, 1
	add	t3, t3, t5
	sraiw	t3, t3, 1
	sw	t3, 0(t1)
	addiw	t2, t2, -1
	addi	t1, t1, 4
	addi	t0, t0, 4
	addi	a7, a7, 4
	bnez	t2, .LBB11_15
# %bb.16:                               #   in Loop: Header=BB11_14 Depth=1
	addiw	a7, a2, 1
	addi	a2, a2, 1
	add	a0, a0, a4
	add	a5, a5, a4
	add	a6, a6, a4
	bne	a3, a7, .LBB11_14
	j	.LBB11_31
.LBB11_17:
	beqz	t3, .LBB11_25
# %bb.18:
	bnez	a5, .LBB11_25
# %bb.19:
	blt	a3, a2, .LBB11_31
# %bb.20:
	blt	a1, a0, .LBB11_31
# %bb.21:
	addiw	a3, a3, 1
	subw	a1, a1, a0
	addi	a1, a1, 1
	mul	a4, t0, a2
	slli	a4, a4, 2
	slli	a5, a0, 2
	add	a0, a7, a5
	add	a0, a0, a4
	slli	a4, t0, 2
	add	t2, t2, a2
	mul	a7, t2, t0
	slli	a7, a7, 2
	slli	t1, t1, 2
	add	a5, a5, t1
	add	a7, a7, a5
	slli	t3, t3, 2
	add	a5, a6, t3
	add	a5, a5, a7
	add	a6, a6, a7
.LBB11_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_23 Depth 2
	mv	a7, a6
	mv	t0, a5
	mv	t1, a0
	mv	t2, a1
.LBB11_23:                              #   Parent Loop BB11_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t3, 0(a7)
	lw	t4, 0(t0)
	lw	t5, 0(t1)
	add	t3, t3, t4
	addi	t3, t3, 1
	sraiw	t3, t3, 1
	add	t3, t3, t5
	sraiw	t3, t3, 1
	sw	t3, 0(t1)
	addiw	t2, t2, -1
	addi	t1, t1, 4
	addi	t0, t0, 4
	addi	a7, a7, 4
	bnez	t2, .LBB11_23
# %bb.24:                               #   in Loop: Header=BB11_22 Depth=1
	addiw	a7, a2, 1
	addi	a2, a2, 1
	add	a0, a0, a4
	add	a5, a5, a4
	add	a6, a6, a4
	bne	a3, a7, .LBB11_22
	j	.LBB11_31
.LBB11_25:
	blt	a3, a2, .LBB11_31
# %bb.26:
	blt	a1, a0, .LBB11_31
# %bb.27:
	addiw	a3, a3, 1
	subw	a1, a1, a0
	addi	a1, a1, 1
	slli	a0, a0, 2
	mul	a4, t0, a2
	slli	a4, a4, 2
	add	a7, a7, a4
	slli	a4, t0, 2
	add	t2, t2, a2
	add	a5, t2, a5
	mul	a5, a5, t0
	slli	a5, a5, 2
	slli	t4, t1, 2
	add	t1, a5, t4
	slli	t3, t3, 2
	add	a5, a6, t3
	add	a5, a5, t1
	add	t1, a6, t1
	mul	t0, t2, t0
	slli	t0, t0, 2
	add	t4, t0, t4
	add	t0, a6, t3
	add	t0, t0, t4
	add	a6, a6, t4
.LBB11_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_29 Depth 2
	mv	t2, a6
	mv	t3, t0
	mv	t4, t1
	mv	t5, a5
	mv	t6, a7
	mv	n1, a1
.LBB11_29:                              #   Parent Loop BB11_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	n2, t2, a0
	lw	n2, 0(n2)
	add	n3, t4, a0
	lw	n3, 0(n3)
	add	n4, t3, a0
	lw	n4, 0(n4)
	add	n5, t5, a0
	lw	n5, 0(n5)
	add	n2, n2, n3
	add	n4, n4, n5
	add	n3, t6, a0
	lw	n5, 0(n3)
	add	n2, n2, n4
	addi	n2, n2, 2
	sraiw	n2, n2, 2
	add	n2, n2, n5
	sraiw	n2, n2, 1
	sw	n2, 0(n3)
	addiw	n1, n1, -1
	addi	t6, t6, 4
	addi	t5, t5, 4
	addi	t4, t4, 4
	addi	t3, t3, 4
	addi	t2, t2, 4
	bnez	n1, .LBB11_29
# %bb.30:                               #   in Loop: Header=BB11_28 Depth=1
	addiw	t2, a2, 1
	addi	a2, a2, 1
	add	a7, a7, a4
	add	a5, a5, a4
	add	t1, t1, a4
	add	t0, t0, a4
	add	a6, a6, a4
	bne	a3, t2, .LBB11_28
.LBB11_31:
	ret
.Lfunc_end11:
	.size	BiDirPredBlock, .Lfunc_end11-BiDirPredBlock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindBiDirChromaLimits           # -- Begin function FindBiDirChromaLimits
	.p2align	2
	.type	FindBiDirChromaLimits,@function
FindBiDirChromaLimits:                  # @FindBiDirChromaLimits
# %bb.0:
	li	a3, 1
	subw	a3, a3, a0
	slti	a4, a3, -1
	srliw	a5, a3, 31
	addw	a3, a3, a5
	srli	a3, a3, 1
	addi	a4, a4, -1
	and	a3, a4, a3
	sw	a3, 0(a1)
	li	a3, -2
	li	a1, 7
	blt	a0, a3, .LBB12_2
# %bb.1:
	addi	a0, a0, 1
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	li	a1, 7
	sub	a1, a1, a0
.LBB12_2:
	sw	a1, 0(a2)
	ret
.Lfunc_end12:
	.size	FindBiDirChromaLimits, .Lfunc_end12-FindBiDirChromaLimits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindHalfPel                     # -- Begin function FindHalfPel
	.p2align	2
	.type	FindHalfPel,@function
FindHalfPel:                            # @FindHalfPel
# %bb.0:
	lw	t0, 0(a2)
	lw	a7, 4(a2)
	slli	t1, a6, 3
	andi	t1, t1, 8
	add	t1, t1, a0
	lui	a0, %hi(mv_outside_frame)
	lw	t2, %lo(mv_outside_frame)(a0)
	lui	a0, %hi(pels)
	lw	a0, %lo(pels)(a0)
	addw	t1, t1, t0
	slli	a6, a6, 2
	andi	a6, a6, 8
	beqz	t2, .LBB13_4
# %bb.1:
	lui	t0, %hi(long_vectors)
	lw	t2, %lo(long_vectors)(t0)
	li	t0, 32
	beqz	t2, .LBB13_3
# %bb.2:
	li	t0, 64
.LBB13_3:
	add	a0, t0, a0
	li	t2, 1
	li	t0, -1
	li	t4, -1
	li	t3, 1
	j	.LBB13_5
.LBB13_4:
	add	t0, a6, a1
	addw	t3, t0, a7
	sgtz	t0, t1
	neg	t0, t0
	sgtz	t2, t3
	lui	t4, %hi(lines)
	lw	t5, %lo(lines)(t4)
	neg	t4, t2
	subw	t2, a0, a5
	slt	t2, t1, t2
	subw	t5, t5, a5
	slt	t3, t3, t5
.LBB13_5:
	addi	sp, sp, -80
	sw	zero, 8(sp)
	sw	zero, 12(sp)
	sw	t0, 16(sp)
	sw	t4, 20(sp)
	sw	zero, 24(sp)
	sw	t4, 28(sp)
	sw	t2, 32(sp)
	sw	t4, 36(sp)
	sw	t0, 40(sp)
	sw	zero, 44(sp)
	sw	t2, 48(sp)
	sw	zero, 52(sp)
	sw	t0, 56(sp)
	sw	t3, 60(sp)
	sw	zero, 64(sp)
	sw	t3, 68(sp)
	sw	t2, 72(sp)
	sw	t3, 76(sp)
	blez	a5, .LBB13_15
# %bb.6:
	li	t0, 0
	li	n1, 0
	slliw	t1, t1, 1
	add	a3, a3, t1
	slli	t1, a0, 1
	add	a1, a7, a1
	add	a1, a1, a6
	slli	a1, a1, 1
	slli	a6, a0, 2
	slli	a7, a5, 2
	lui	a0, 524288
	addiw	a0, a0, -1
	addi	t2, sp, 8
	li	t3, 9
	j	.LBB13_8
.LBB13_7:                               #   in Loop: Header=BB13_8 Depth=1
	addi	t0, t0, 1
	beq	t0, t3, .LBB13_14
.LBB13_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
                                        #       Child Loop BB13_10 Depth 3
	slli	t4, t0, 3
	add	t4, t2, t4
	lw	n2, 0(t4)
	lw	n3, 4(t4)
	li	t6, 0
	mv	t5, n1
	mv	t4, a0
	add	n1, a3, n2
	add	n3, a1, n3
	mulw	n2, t1, n3
	mv	n3, a4
	li	a0, 0
.LBB13_9:                               #   Parent Loop BB13_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_10 Depth 3
	slli	n4, t6, 6
	add	n4, a7, n4
	add	n4, a4, n4
	add	n5, n1, n2
	mv	n6, n3
.LBB13_10:                              #   Parent Loop BB13_8 Depth=1
                                        #     Parent Loop BB13_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n7, 0(n5)
	lw	n8, 0(n6)
	sub	n7, n7, n8
	sraiw	n8, n7, 31
	xor	n7, n7, n8
	subw	a0, n8, a0
	subw	a0, n7, a0
	addi	n6, n6, 4
	addi	n5, n5, 2
	bne	n6, n4, .LBB13_10
# %bb.11:                               #   in Loop: Header=BB13_9 Depth=2
	addi	t6, t6, 1
	addi	n3, n3, 64
	addw	n2, n2, a6
	bne	t6, a5, .LBB13_9
# %bb.12:                               #   in Loop: Header=BB13_8 Depth=1
	mv	n1, t0
	blt	a0, t4, .LBB13_7
# %bb.13:                               #   in Loop: Header=BB13_8 Depth=1
	mv	n1, t5
	mv	a0, t4
	j	.LBB13_7
.LBB13_14:
	sext.w	n1, n1
	slli	n1, n1, 3
	addi	a1, sp, 8
	add	a1, a1, n1
	lw	a3, 0(a1)
	lw	a1, 4(a1)
	j	.LBB13_16
.LBB13_15:
	li	a1, 0
	li	a3, 0
	li	a0, 0
.LBB13_16:
	sw	a0, 16(a2)
	sw	a3, 8(a2)
	sw	a1, 12(a2)
	addi	sp, sp, 80
	ret
.Lfunc_end13:
	.size	FindHalfPel, .Lfunc_end13-FindHalfPel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MB_Recon_P                      # -- Begin function MB_Recon_P
	.p2align	2
	.type	MB_Recon_P,@function
MB_Recon_P:                             # @MB_Recon_P
# %bb.0:
	addi	sp, sp, -1136
	sd	ra, 1128(sp)                    # 8-byte Folded Spill
	sd	s0, 1120(sp)                    # 8-byte Folded Spill
	sd	s1, 1112(sp)                    # 8-byte Folded Spill
	sd	s2, 1104(sp)                    # 8-byte Folded Spill
	sd	s3, 1096(sp)                    # 8-byte Folded Spill
	sd	s4, 1088(sp)                    # 8-byte Folded Spill
	sd	s5, 1080(sp)                    # 8-byte Folded Spill
	sd	s6, 1072(sp)                    # 8-byte Folded Spill
	sd	s7, 1064(sp)                    # 8-byte Folded Spill
	sd	s8, 1056(sp)                    # 8-byte Folded Spill
	sd	s9, 1048(sp)                    # 8-byte Folded Spill
	sd	s10, 1040(sp)                   # 8-byte Folded Spill
	mv	s6, a6
	mv	s4, a5
	mv	s2, a4
	mv	s3, a3
	mv	s0, a2
	mv	s5, a1
	mv	s1, a0
	li	a0, 1536
	call	malloc
	slli	a1, s2, 1
	srli	a1, a1, 60
	add	a1, s2, a1
	sraiw	s9, a1, 4
	addi	s9, s9, 1
	slli	a1, s3, 1
	srli	a1, a1, 60
	add	a1, s3, a1
	sraiw	a1, a1, 4
	addi	a1, a1, 1
	li	a2, 720
	mul	a2, s9, a2
	add	a2, s4, a2
	slli	s10, a1, 3
	add	a2, a2, s10
	ld	s8, 0(a2)
	lui	a1, %hi(advanced)
	lw	a2, %lo(advanced)(a1)
	lw	a1, 20(s8)
	beqz	a2, .LBB14_5
# %bb.1:
	li	a2, 2
	bgeu	a1, a2, .LBB14_11
# %bb.2:
	mv	s9, a0
	addi	a4, sp, 16
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	li	a5, 0
	mv	a6, s6
	call	FindPredOBMC
	addi	s7, sp, 48
	li	a5, 1
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	mv	a4, s7
	mv	a6, s6
	call	FindPredOBMC
	addi	a4, sp, 528
	li	a5, 2
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	mv	a6, s6
	call	FindPredOBMC
	addi	a4, sp, 560
	li	a5, 3
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	mv	a6, s6
	call	FindPredOBMC
	addi	a0, s0, 32
	addi	a1, sp, 1072
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	lw	a2, -32(s7)
	lw	a3, -32(a0)
	lw	a4, -28(s7)
	lw	a5, -28(a0)
	add	a2, a3, a2
	sw	a2, -32(a0)
	add	a4, a5, a4
	lw	a2, -24(s7)
	lw	a3, -24(a0)
	lw	a5, -20(s7)
	lw	a6, -20(a0)
	sw	a4, -28(a0)
	add	a2, a3, a2
	sw	a2, -24(a0)
	add	a5, a6, a5
	lw	a2, -16(s7)
	lw	a3, -16(a0)
	lw	a4, -12(s7)
	lw	a6, -12(a0)
	sw	a5, -20(a0)
	add	a2, a3, a2
	sw	a2, -16(a0)
	add	a4, a6, a4
	lw	a2, -8(s7)
	lw	a3, -8(a0)
	lw	a5, -4(s7)
	lw	a6, -4(a0)
	sw	a4, -12(a0)
	add	a2, a3, a2
	sw	a2, -8(a0)
	add	a5, a6, a5
	lw	a2, 0(s7)
	lw	a3, 0(a0)
	lw	a4, 4(s7)
	lw	a6, 4(a0)
	sw	a5, -4(a0)
	add	a2, a3, a2
	sw	a2, 0(a0)
	add	a4, a6, a4
	lw	a2, 8(s7)
	lw	a3, 8(a0)
	lw	a5, 12(s7)
	lw	a6, 12(a0)
	sw	a4, 4(a0)
	add	a2, a3, a2
	sw	a2, 8(a0)
	add	a5, a6, a5
	lw	a2, 16(s7)
	lw	a3, 16(a0)
	lw	a4, 20(s7)
	lw	a6, 20(a0)
	sw	a5, 12(a0)
	add	a2, a3, a2
	sw	a2, 16(a0)
	add	a4, a6, a4
	lw	a2, 24(s7)
	lw	a3, 24(a0)
	lw	a5, 28(s7)
	lw	a6, 28(a0)
	sw	a4, 20(a0)
	add	a2, a3, a2
	sw	a2, 24(a0)
	add	a5, a6, a5
	sw	a5, 28(a0)
	addi	s7, s7, 64
	addi	a0, a0, 64
	bne	s7, a1, .LBB14_3
# %bb.4:
	lw	a0, 0(s8)
	lw	a1, 8(s8)
	lw	a2, 4(s8)
	lw	a3, 12(s8)
	slli	a0, a0, 1
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a3, a2, a3
	andi	a1, a0, 3
	snez	a1, a1
	sraiw	a2, a0, 1
	or	a2, a2, a1
	andi	a0, a3, 3
	snez	a0, a0
	sraiw	a3, a3, 1
	or	a3, a3, a0
	mv	a0, s3
	mv	a1, s2
	mv	a4, s1
	mv	a5, s0
	call	ReconChromBlock_P
	mv	a0, s9
	j	.LBB14_19
.LBB14_5:
	li	a2, 1
	bltu	a2, a1, .LBB14_19
# %bb.6:
	lui	a1, %hi(mv_outside_frame)
	lw	a2, %lo(mv_outside_frame)(a1)
	lui	a1, %hi(pels)
	lui	a3, %hi(long_vectors)
	lw	a4, %lo(long_vectors)(a3)
	lw	a1, %lo(pels)(a1)
	seqz	a2, a2
	li	a3, 32
	beqz	a4, .LBB14_8
# %bb.7:
	li	a3, 64
.LBB14_8:
	mv	s4, a0
	addi	a2, a2, -1
	and	a2, a2, a3
	add	a1, a2, a1
	lw	a0, 12(s8)
	lw	a2, 0(s8)
	lw	a3, 4(s8)
	lw	a4, 8(s8)
	slli	a0, a0, 1
	add	a2, a2, s3
	slli	a2, a2, 1
	addw	a2, a2, a4
	add	s5, s5, a2
	add	a3, a3, s2
	slli	a3, a3, 2
	add	a0, a3, a0
	mulw	a0, a1, a0
	slli	a1, a1, 2
	addi	a2, s0, 32
	addi	a3, s0, 1056
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	add	a4, s5, a0
	lbu	a5, 0(a4)
	lw	a6, -32(a2)
	add	a5, a6, a5
	sw	a5, -32(a2)
	lbu	a5, 2(a4)
	lw	a6, -28(a2)
	add	a5, a6, a5
	sw	a5, -28(a2)
	lbu	a5, 4(a4)
	lw	a6, -24(a2)
	add	a5, a6, a5
	sw	a5, -24(a2)
	lbu	a5, 6(a4)
	lw	a6, -20(a2)
	add	a5, a6, a5
	sw	a5, -20(a2)
	lbu	a5, 8(a4)
	lw	a6, -16(a2)
	add	a5, a6, a5
	sw	a5, -16(a2)
	lbu	a5, 10(a4)
	lw	a6, -12(a2)
	add	a5, a6, a5
	sw	a5, -12(a2)
	lbu	a5, 12(a4)
	lw	a6, -8(a2)
	add	a5, a6, a5
	sw	a5, -8(a2)
	lbu	a5, 14(a4)
	lw	a6, -4(a2)
	add	a5, a6, a5
	sw	a5, -4(a2)
	lbu	a5, 16(a4)
	lw	a6, 0(a2)
	add	a5, a6, a5
	sw	a5, 0(a2)
	lbu	a5, 18(a4)
	lw	a6, 4(a2)
	add	a5, a6, a5
	sw	a5, 4(a2)
	lbu	a5, 20(a4)
	lw	a6, 8(a2)
	add	a5, a6, a5
	sw	a5, 8(a2)
	lbu	a5, 22(a4)
	lw	a6, 12(a2)
	add	a5, a6, a5
	sw	a5, 12(a2)
	lbu	a5, 24(a4)
	lw	a6, 16(a2)
	add	a5, a6, a5
	sw	a5, 16(a2)
	lbu	a5, 26(a4)
	lw	a6, 20(a2)
	add	a5, a6, a5
	sw	a5, 20(a2)
	lbu	a5, 28(a4)
	lw	a6, 24(a2)
	add	a5, a6, a5
	sw	a5, 24(a2)
	lbu	a4, 30(a4)
	lw	a5, 28(a2)
	add	a4, a5, a4
	sw	a4, 28(a2)
	addi	a2, a2, 64
	addw	a0, a0, a1
	bne	a2, a3, .LBB14_9
# %bb.10:
	lw	a0, 0(s8)
	lw	a1, 8(s8)
	lw	a2, 4(s8)
	lw	a3, 12(s8)
	slli	a0, a0, 1
	add	a0, a0, a1
	slli	a2, a2, 1
	add	a3, a2, a3
	andi	a1, a0, 3
	snez	a1, a1
	sraiw	a2, a0, 1
	or	a2, a2, a1
	andi	a0, a3, 3
	snez	a0, a0
	sraiw	a3, a3, 1
	or	a3, a3, a0
	mv	a0, s3
	mv	a1, s2
	mv	a4, s1
	mv	a5, s0
	call	ReconChromBlock_P
	mv	a0, s4
	j	.LBB14_19
.LBB14_11:
	bne	a1, a2, .LBB14_19
# %bb.12:
	mv	s8, a0
	addi	a4, sp, 16
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	li	a5, 0
	mv	a6, s6
	call	FindPredOBMC
	addi	s7, sp, 48
	li	a5, 1
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	mv	a4, s7
	mv	a6, s6
	call	FindPredOBMC
	addi	a4, sp, 528
	li	a5, 2
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	mv	a6, s6
	call	FindPredOBMC
	addi	a4, sp, 560
	li	a5, 3
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	mv	a3, s5
	mv	a6, s6
	call	FindPredOBMC
	addi	a0, s0, 32
	addi	a1, sp, 1072
.LBB14_13:                              # =>This Inner Loop Header: Depth=1
	lw	a2, -32(s7)
	lw	a3, -32(a0)
	lw	a4, -28(s7)
	lw	a5, -28(a0)
	add	a2, a3, a2
	sw	a2, -32(a0)
	add	a4, a5, a4
	lw	a2, -24(s7)
	lw	a3, -24(a0)
	lw	a5, -20(s7)
	lw	a6, -20(a0)
	sw	a4, -28(a0)
	add	a2, a3, a2
	sw	a2, -24(a0)
	add	a5, a6, a5
	lw	a2, -16(s7)
	lw	a3, -16(a0)
	lw	a4, -12(s7)
	lw	a6, -12(a0)
	sw	a5, -20(a0)
	add	a2, a3, a2
	sw	a2, -16(a0)
	add	a4, a6, a4
	lw	a2, -8(s7)
	lw	a3, -8(a0)
	lw	a5, -4(s7)
	lw	a6, -4(a0)
	sw	a4, -12(a0)
	add	a2, a3, a2
	sw	a2, -8(a0)
	add	a5, a6, a5
	lw	a2, 0(s7)
	lw	a3, 0(a0)
	lw	a4, 4(s7)
	lw	a6, 4(a0)
	sw	a5, -4(a0)
	add	a2, a3, a2
	sw	a2, 0(a0)
	add	a4, a6, a4
	lw	a2, 8(s7)
	lw	a3, 8(a0)
	lw	a5, 12(s7)
	lw	a6, 12(a0)
	sw	a4, 4(a0)
	add	a2, a3, a2
	sw	a2, 8(a0)
	add	a5, a6, a5
	lw	a2, 16(s7)
	lw	a3, 16(a0)
	lw	a4, 20(s7)
	lw	a6, 20(a0)
	sw	a5, 12(a0)
	add	a2, a3, a2
	sw	a2, 16(a0)
	add	a4, a6, a4
	lw	a2, 24(s7)
	lw	a3, 24(a0)
	lw	a5, 28(s7)
	lw	a6, 28(a0)
	sw	a4, 20(a0)
	add	a2, a3, a2
	sw	a2, 24(a0)
	add	a5, a6, a5
	sw	a5, 28(a0)
	addi	s7, s7, 64
	addi	a0, a0, 64
	bne	s7, a1, .LBB14_13
# %bb.14:
	li	a0, 720
	mul	a0, s9, a0
	lui	a1, 13
	add	a0, s4, a0
	add	s10, a0, s10
	add	a1, s10, a1
	ld	a0, -688(a1)
	lui	a1, 26
	add	a1, s10, a1
	ld	a3, -1376(a1)
	lui	a1, 38
	add	a1, s10, a1
	ld	a1, 2032(a1)
	lui	a2, 51
	add	a2, s10, a2
	ld	a4, 1344(a2)
	lw	a2, 0(a0)
	lw	a5, 8(a0)
	lw	a6, 0(a3)
	lw	a7, 8(a3)
	lw	t0, 0(a1)
	lw	t1, 0(a4)
	lw	t2, 8(a1)
	lw	t3, 8(a4)
	add	a2, a6, a2
	add	t0, t0, t1
	add	a2, a2, t0
	slli	a2, a2, 1
	add	a5, a7, a5
	add	t2, t2, t3
	add	a5, a5, t2
	addw	a7, a5, a2
	sraiw	a2, a7, 31
	xor	a5, a7, a2
	sub	a2, a5, a2
	andi	a5, a2, 15
	slli	a6, a5, 2
	lui	a5, %hi(roundtab)
	addi	a5, a5, %lo(roundtab)
	add	a6, a5, a6
	lw	t0, 0(a6)
	srli	a2, a2, 3
	lui	a6, 65536
	addi	a6, a6, -2
	and	a2, a2, a6
	addw	a2, a2, t0
	bgez	a7, .LBB14_16
# %bb.15:
	negw	a2, a2
.LBB14_16:
	lw	a7, 4(a0)
	lw	a0, 12(a0)
	lw	t0, 4(a3)
	lw	a3, 12(a3)
	lw	t1, 4(a1)
	lw	t2, 4(a4)
	lw	a1, 12(a1)
	lw	a4, 12(a4)
	add	a7, t0, a7
	add	t1, t1, t2
	add	a7, a7, t1
	slli	a7, a7, 1
	add	a0, a3, a0
	add	a1, a1, a4
	add	a0, a0, a1
	addw	a0, a0, a7
	sraiw	a1, a0, 31
	xor	a3, a0, a1
	sub	a3, a3, a1
	andi	a1, a3, 15
	slli	a1, a1, 2
	add	a1, a5, a1
	lw	a1, 0(a1)
	srli	a3, a3, 3
	and	a3, a3, a6
	addw	a3, a3, a1
	bgez	a0, .LBB14_18
# %bb.17:
	negw	a3, a3
.LBB14_18:
	mv	a0, s3
	mv	a1, s2
	mv	a4, s1
	mv	a5, s0
	call	ReconChromBlock_P
	mv	a0, s8
.LBB14_19:
	li	a2, 1536
	mv	a1, s0
	ld	ra, 1128(sp)                    # 8-byte Folded Reload
	ld	s0, 1120(sp)                    # 8-byte Folded Reload
	ld	s1, 1112(sp)                    # 8-byte Folded Reload
	ld	s2, 1104(sp)                    # 8-byte Folded Reload
	ld	s3, 1096(sp)                    # 8-byte Folded Reload
	ld	s4, 1088(sp)                    # 8-byte Folded Reload
	ld	s5, 1080(sp)                    # 8-byte Folded Reload
	ld	s6, 1072(sp)                    # 8-byte Folded Reload
	ld	s7, 1064(sp)                    # 8-byte Folded Reload
	ld	s8, 1056(sp)                    # 8-byte Folded Reload
	ld	s9, 1048(sp)                    # 8-byte Folded Reload
	ld	s10, 1040(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1136
	tail	memcpy
.Lfunc_end14:
	.size	MB_Recon_P, .Lfunc_end14-MB_Recon_P
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ReconChromBlock_P               # -- Begin function ReconChromBlock_P
	.p2align	2
	.type	ReconChromBlock_P,@function
ReconChromBlock_P:                      # @ReconChromBlock_P
# %bb.0:
	lui	a6, %hi(mv_outside_frame)
	lw	a6, %lo(mv_outside_frame)(a6)
	lui	a7, %hi(pels)
	lw	a7, %lo(pels)(a7)
	seqz	a6, a6
	lui	t0, %hi(long_vectors)
	lw	t1, %lo(long_vectors)(t0)
	srliw	t0, a7, 31
	add	a7, a7, t0
	sraiw	a7, a7, 1
	li	t0, 16
	beqz	t1, .LBB15_2
# %bb.1:
	li	t0, 32
.LBB15_2:
	addi	a6, a6, -1
	and	a6, a6, t0
	add	a6, a7, a6
	srai	a0, a0, 1
	srai	a1, a1, 1
	srai	t2, a2, 1
	or	a7, a3, a2
	andi	a7, a7, 1
	srai	t3, a3, 1
	bnez	a7, .LBB15_5
# %bb.3:
	add	a0, t2, a0
	add	a1, t3, a1
	ld	a2, 8(a4)
	ld	a3, 16(a4)
	mul	a1, a1, a6
	add	a0, a1, a0
	addi	a1, a0, 3
	add	a0, a2, a1
	add	a1, a3, a1
	addi	a2, a5, 1308
	addi	a3, a5, 1564
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	lbu	a4, -3(a0)
	lw	a5, -284(a2)
	add	a4, a5, a4
	sw	a4, -284(a2)
	lbu	a4, -3(a1)
	lw	a5, -28(a2)
	add	a4, a5, a4
	sw	a4, -28(a2)
	lbu	a4, -2(a0)
	lw	a5, -280(a2)
	add	a4, a5, a4
	sw	a4, -280(a2)
	lbu	a4, -2(a1)
	lw	a5, -24(a2)
	add	a4, a5, a4
	sw	a4, -24(a2)
	lbu	a4, -1(a0)
	lw	a5, -276(a2)
	add	a4, a5, a4
	sw	a4, -276(a2)
	lbu	a4, -1(a1)
	lw	a5, -20(a2)
	add	a4, a5, a4
	sw	a4, -20(a2)
	lbu	a4, 0(a0)
	lw	a5, -272(a2)
	add	a4, a5, a4
	sw	a4, -272(a2)
	lbu	a4, 0(a1)
	lw	a5, -16(a2)
	add	a4, a5, a4
	sw	a4, -16(a2)
	lbu	a4, 1(a0)
	lw	a5, -268(a2)
	add	a4, a5, a4
	sw	a4, -268(a2)
	lbu	a4, 1(a1)
	lw	a5, -12(a2)
	add	a4, a5, a4
	sw	a4, -12(a2)
	lbu	a4, 2(a0)
	lw	a5, -264(a2)
	add	a4, a5, a4
	sw	a4, -264(a2)
	lbu	a4, 2(a1)
	lw	a5, -8(a2)
	add	a4, a5, a4
	sw	a4, -8(a2)
	lbu	a4, 3(a0)
	lw	a5, -260(a2)
	add	a4, a5, a4
	sw	a4, -260(a2)
	lbu	a4, 3(a1)
	lw	a5, -4(a2)
	add	a4, a5, a4
	sw	a4, -4(a2)
	lbu	a4, 4(a0)
	lw	a5, -256(a2)
	add	a4, a5, a4
	sw	a4, -256(a2)
	lbu	a4, 4(a1)
	lw	a5, 0(a2)
	add	a4, a5, a4
	sw	a4, 0(a2)
	add	a0, a0, a6
	addi	a2, a2, 32
	add	a1, a1, a6
	bne	a2, a3, .LBB15_4
	j	.LBB15_15
.LBB15_5:
	andi	t0, a2, 1
	andi	a7, a3, 1
	bnez	t0, .LBB15_9
# %bb.6:
	beqz	a7, .LBB15_9
# %bb.7:
	add	a0, t2, a0
	add	t3, t3, a1
	ld	a3, 8(a4)
	ld	a4, 16(a4)
	mul	a1, t3, a6
	addi	a2, a1, 7
	add	a1, a3, a2
	add	a2, a4, a2
	addi	t3, t3, 1
	mul	a7, t3, a6
	addi	a7, a7, 7
	add	a3, a3, a7
	add	a4, a4, a7
	addi	a7, a5, 1308
	addi	a5, a5, 1564
.LBB15_8:                               # =>This Inner Loop Header: Depth=1
	add	t0, a1, a0
	lbu	t2, -7(t0)
	add	t1, a3, a0
	lbu	t3, -7(t1)
	lw	t4, -284(a7)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	add	t2, t2, t4
	sw	t2, -284(a7)
	add	t2, a2, a0
	lbu	t4, -7(t2)
	add	t3, a4, a0
	lbu	t5, -7(t3)
	lw	t6, -28(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -28(a7)
	lbu	t4, -6(t0)
	lbu	t5, -6(t1)
	lw	t6, -280(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -280(a7)
	lbu	t4, -6(t2)
	lbu	t5, -6(t3)
	lw	t6, -24(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -24(a7)
	lbu	t4, -5(t0)
	lbu	t5, -5(t1)
	lw	t6, -276(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -276(a7)
	lbu	t4, -5(t2)
	lbu	t5, -5(t3)
	lw	t6, -20(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -20(a7)
	lbu	t4, -4(t0)
	lbu	t5, -4(t1)
	lw	t6, -272(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -272(a7)
	lbu	t4, -4(t2)
	lbu	t5, -4(t3)
	lw	t6, -16(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -16(a7)
	lbu	t4, -3(t0)
	lbu	t5, -3(t1)
	lw	t6, -268(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -268(a7)
	lbu	t4, -3(t2)
	lbu	t5, -3(t3)
	lw	t6, -12(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -12(a7)
	lbu	t4, -2(t0)
	lbu	t5, -2(t1)
	lw	t6, -264(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -264(a7)
	lbu	t4, -2(t2)
	lbu	t5, -2(t3)
	lw	t6, -8(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -8(a7)
	lbu	t4, -1(t0)
	lbu	t5, -1(t1)
	lw	t6, -260(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -260(a7)
	lbu	t4, -1(t2)
	lbu	t5, -1(t3)
	lw	t6, -4(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t4, t4, t6
	sw	t4, -4(a7)
	lbu	t0, 0(t0)
	lbu	t1, 0(t1)
	lw	t4, -256(a7)
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	t0, t0, 1
	add	t0, t0, t4
	sw	t0, -256(a7)
	lbu	t0, 0(t2)
	lbu	t1, 0(t3)
	lw	t2, 0(a7)
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	t0, t0, 1
	add	t0, t0, t2
	sw	t0, 0(a7)
	add	a1, a1, a6
	add	a2, a2, a6
	add	a3, a3, a6
	addi	a7, a7, 32
	add	a4, a4, a6
	bne	a7, a5, .LBB15_8
	j	.LBB15_15
.LBB15_9:
	ld	t1, 8(a4)
	add	a0, t2, a0
	add	t3, t3, a1
	beqz	t0, .LBB15_13
# %bb.10:
	bnez	a7, .LBB15_13
# %bb.11:
	ld	a1, 16(a4)
	mul	a2, t3, a6
	add	a0, a2, a0
	addi	a2, a0, 4
	add	a0, t1, a2
	add	a1, a1, a2
	addi	a2, a5, 1308
	addi	a3, a5, 1564
.LBB15_12:                              # =>This Inner Loop Header: Depth=1
	lbu	a4, -4(a0)
	lbu	a5, -3(a0)
	lw	a7, -284(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -284(a2)
	lbu	a4, -4(a1)
	lbu	a5, -3(a1)
	lw	a7, -28(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -28(a2)
	lbu	a4, -3(a0)
	lbu	a5, -2(a0)
	lw	a7, -280(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -280(a2)
	lbu	a4, -3(a1)
	lbu	a5, -2(a1)
	lw	a7, -24(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -24(a2)
	lbu	a4, -2(a0)
	lbu	a5, -1(a0)
	lw	a7, -276(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -276(a2)
	lbu	a4, -2(a1)
	lbu	a5, -1(a1)
	lw	a7, -20(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -20(a2)
	lbu	a4, -1(a0)
	lbu	a5, 0(a0)
	lw	a7, -272(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -272(a2)
	lbu	a4, -1(a1)
	lbu	a5, 0(a1)
	lw	a7, -16(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -16(a2)
	lbu	a4, 0(a0)
	lbu	a5, 1(a0)
	lw	a7, -268(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -268(a2)
	lbu	a4, 0(a1)
	lbu	a5, 1(a1)
	lw	a7, -12(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -12(a2)
	lbu	a4, 1(a0)
	lbu	a5, 2(a0)
	lw	a7, -264(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -264(a2)
	lbu	a4, 1(a1)
	lbu	a5, 2(a1)
	lw	a7, -8(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -8(a2)
	lbu	a4, 2(a0)
	lbu	a5, 3(a0)
	lw	a7, -260(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -260(a2)
	lbu	a4, 2(a1)
	lbu	a5, 3(a1)
	lw	a7, -4(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -4(a2)
	lbu	a4, 3(a0)
	lbu	a5, 4(a0)
	lw	a7, -256(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, -256(a2)
	lbu	a4, 3(a1)
	lbu	a5, 4(a1)
	lw	a7, 0(a2)
	add	a4, a4, a5
	addi	a4, a4, 1
	srli	a4, a4, 1
	add	a4, a4, a7
	sw	a4, 0(a2)
	add	a0, a0, a6
	addi	a2, a2, 32
	add	a1, a1, a6
	bne	a2, a3, .LBB15_12
	j	.LBB15_15
.LBB15_13:
	ld	t2, 16(a4)
	mul	a1, t3, a6
	addi	a3, a1, 7
	add	a1, t1, a3
	add	a4, a3, t0
	add	a2, t1, a4
	add	a3, t2, a3
	add	a4, t2, a4
	add	a7, t3, a7
	mul	a7, a7, a6
	addi	t3, a7, 7
	add	a7, t1, t3
	add	t4, t3, t0
	add	t0, t1, t4
	add	t1, t2, t3
	add	t2, t2, t4
	addi	t3, a5, 1308
	addi	a5, a5, 1564
.LBB15_14:                              # =>This Inner Loop Header: Depth=1
	add	t4, a1, a0
	lbu	n2, -7(t4)
	add	t5, a2, a0
	lbu	n3, -7(t5)
	add	t6, a7, a0
	lbu	n4, -7(t6)
	add	n1, t0, a0
	lbu	n5, -7(n1)
	add	n2, n2, n3
	add	n4, n4, n5
	lw	n3, -284(t3)
	add	n2, n2, n4
	addi	n2, n2, 2
	srli	n2, n2, 2
	add	n2, n2, n3
	sw	n2, -284(t3)
	add	n2, a3, a0
	lbu	n6, -7(n2)
	add	n3, a4, a0
	lbu	n7, -7(n3)
	add	n4, t1, a0
	lbu	n8, -7(n4)
	add	n5, t2, a0
	lbu	n9, -7(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -28(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -28(t3)
	lbu	n6, -6(t4)
	lbu	n7, -6(t5)
	lbu	n8, -6(t6)
	lbu	n9, -6(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -280(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -280(t3)
	lbu	n6, -6(n2)
	lbu	n7, -6(n3)
	lbu	n8, -6(n4)
	lbu	n9, -6(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -24(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -24(t3)
	lbu	n6, -5(t4)
	lbu	n7, -5(t5)
	lbu	n8, -5(t6)
	lbu	n9, -5(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -276(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -276(t3)
	lbu	n6, -5(n2)
	lbu	n7, -5(n3)
	lbu	n8, -5(n4)
	lbu	n9, -5(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -20(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -20(t3)
	lbu	n6, -4(t4)
	lbu	n7, -4(t5)
	lbu	n8, -4(t6)
	lbu	n9, -4(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -272(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -272(t3)
	lbu	n6, -4(n2)
	lbu	n7, -4(n3)
	lbu	n8, -4(n4)
	lbu	n9, -4(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -16(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -16(t3)
	lbu	n6, -3(t4)
	lbu	n7, -3(t5)
	lbu	n8, -3(t6)
	lbu	n9, -3(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -268(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -268(t3)
	lbu	n6, -3(n2)
	lbu	n7, -3(n3)
	lbu	n8, -3(n4)
	lbu	n9, -3(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -12(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -12(t3)
	lbu	n6, -2(t4)
	lbu	n7, -2(t5)
	lbu	n8, -2(t6)
	lbu	n9, -2(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -264(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -264(t3)
	lbu	n6, -2(n2)
	lbu	n7, -2(n3)
	lbu	n8, -2(n4)
	lbu	n9, -2(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -8(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -8(t3)
	lbu	n6, -1(t4)
	lbu	n7, -1(t5)
	lbu	n8, -1(t6)
	lbu	n9, -1(n1)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -260(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -260(t3)
	lbu	n6, -1(n2)
	lbu	n7, -1(n3)
	lbu	n8, -1(n4)
	lbu	n9, -1(n5)
	add	n6, n6, n7
	add	n8, n8, n9
	lw	n7, -4(t3)
	add	n6, n6, n8
	addi	n6, n6, 2
	srli	n6, n6, 2
	add	n6, n6, n7
	sw	n6, -4(t3)
	lbu	t4, 0(t4)
	lbu	t5, 0(t5)
	lbu	t6, 0(t6)
	lbu	n1, 0(n1)
	add	t4, t4, t5
	add	t6, t6, n1
	lw	t5, -256(t3)
	add	t4, t4, t6
	addi	t4, t4, 2
	srli	t4, t4, 2
	add	t4, t4, t5
	sw	t4, -256(t3)
	lbu	t4, 0(n2)
	lbu	t5, 0(n3)
	lbu	t6, 0(n4)
	lbu	n1, 0(n5)
	add	t4, t4, t5
	add	t6, t6, n1
	lw	t5, 0(t3)
	add	t4, t4, t6
	addi	t4, t4, 2
	srli	t4, t4, 2
	add	t4, t4, t5
	sw	t4, 0(t3)
	add	a1, a1, a6
	add	a2, a2, a6
	add	a3, a3, a6
	add	a4, a4, a6
	add	a7, a7, a6
	add	t0, t0, a6
	add	t1, t1, a6
	addi	t3, t3, 32
	add	t2, t2, a6
	bne	t3, a5, .LBB15_14
.LBB15_15:
	ret
.Lfunc_end15:
	.size	ReconChromBlock_P, .Lfunc_end15-ReconChromBlock_P
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ReconLumBlock_P                 # -- Begin function ReconLumBlock_P
	.p2align	2
	.type	ReconLumBlock_P,@function
ReconLumBlock_P:                        # @ReconLumBlock_P
# %bb.0:
	lui	a7, %hi(long_vectors)
	lw	a7, %lo(long_vectors)(a7)
	li	t0, 32
	beqz	a7, .LBB16_2
# %bb.1:
	li	t0, 64
.LBB16_2:
	blez	a5, .LBB16_7
# %bb.3:
	lui	a7, %hi(mv_outside_frame)
	lw	t1, %lo(mv_outside_frame)(a7)
	li	a7, 0
	lui	t2, %hi(pels)
	seqz	t1, t1
	lw	t2, %lo(pels)(t2)
	addi	t1, t1, -1
	lw	t3, 4(a2)
	and	t0, t1, t0
	add	t0, t2, t0
	lw	t1, 12(a2)
	add	t3, t3, a1
	slli	a1, a6, 3
	andi	a1, a1, 16
	add	t1, t1, a1
	slli	a1, t0, 2
	slli	t3, t3, 2
	slli	t1, t1, 1
	add	t1, t3, t1
	lw	t2, 8(a2)
	lw	a2, 0(a2)
	slli	a6, a6, 4
	andi	a6, a6, 16
	add	a6, t2, a6
	add	a0, a2, a0
	slli	a0, a0, 1
	addw	a2, a6, a0
	mulw	a0, t1, t0
	add	a3, a3, a2
	slli	a2, a5, 2
	mv	a6, a4
.LBB16_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	slli	t0, a7, 6
	add	t0, a2, t0
	add	t0, a4, t0
	add	t1, a3, a0
	mv	t2, a6
.LBB16_5:                               #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t1)
	lw	t4, 0(t2)
	add	t3, t4, t3
	sw	t3, 0(t2)
	addi	t2, t2, 4
	addi	t1, t1, 2
	bne	t2, t0, .LBB16_5
# %bb.6:                                #   in Loop: Header=BB16_4 Depth=1
	addi	a7, a7, 1
	addi	a6, a6, 64
	addw	a0, a0, a1
	bne	a7, a5, .LBB16_4
.LBB16_7:
	ret
.Lfunc_end16:
	.size	ReconLumBlock_P, .Lfunc_end16-ReconLumBlock_P
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ChooseMode                      # -- Begin function ChooseMode
	.p2align	2
	.type	ChooseMode,@function
ChooseMode:                             # @ChooseMode
# %bb.0:
	lui	a4, %hi(pels)
	lw	a4, %lo(pels)(a4)
	li	a5, 0
	mul	a2, a4, a2
	add	a0, a1, a0
	add	a1, a2, a0
	addi	a0, a1, 7
	li	a2, 16
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	lbu	a6, -7(a0)
	lbu	a7, -6(a0)
	lbu	t0, -5(a0)
	add	a5, a5, a6
	lbu	a6, -4(a0)
	lbu	t1, -3(a0)
	add	a7, a7, t0
	add	a5, a5, a7
	lbu	a7, -2(a0)
	add	a6, a6, t1
	lbu	t0, -1(a0)
	lbu	t1, 0(a0)
	add	a6, a6, a7
	lbu	a7, 1(a0)
	add	a5, a5, a6
	add	t0, t0, t1
	lbu	a6, 2(a0)
	add	a7, t0, a7
	lbu	t0, 3(a0)
	lbu	t1, 4(a0)
	add	a6, a7, a6
	add	a5, a5, a6
	lbu	a6, 5(a0)
	add	t0, t0, t1
	lbu	a7, 6(a0)
	lbu	t1, 7(a0)
	add	a6, t0, a6
	lbu	t0, 8(a0)
	add	a6, a6, a7
	add	a6, a6, t1
	add	a5, a5, a6
	addw	a5, a5, t0
	addi	a2, a2, -1
	add	a0, a0, a4
	bnez	a2, .LBB17_1
# %bb.2:
	li	a6, 0
	slli	a0, a5, 1
	srli	a0, a0, 56
	add	a0, a5, a0
	sraiw	a0, a0, 8
	neg	a0, a0
	addi	a1, a1, 7
	li	a2, 16
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	lbu	a5, -7(a1)
	add	a5, a0, a5
	sraiw	a7, a5, 31
	lbu	t0, -6(a1)
	xor	a5, a5, a7
	subw	a6, a7, a6
	subw	a5, a5, a6
	add	t0, a0, t0
	sraiw	a6, t0, 31
	lbu	a7, -5(a1)
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	add	a7, a0, a7
	sraiw	a6, a7, 31
	lbu	t0, -4(a1)
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	add	t0, a0, t0
	sraiw	a6, t0, 31
	lbu	a7, -3(a1)
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	add	a7, a0, a7
	sraiw	a6, a7, 31
	lbu	t0, -2(a1)
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	add	t0, a0, t0
	sraiw	a6, t0, 31
	lbu	a7, -1(a1)
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	add	a7, a0, a7
	sraiw	a6, a7, 31
	lbu	t0, 0(a1)
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	add	t0, a0, t0
	sraiw	a6, t0, 31
	lbu	a7, 1(a1)
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	add	a7, a0, a7
	sraiw	a6, a7, 31
	lbu	t0, 2(a1)
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	add	t0, a0, t0
	sraiw	a6, t0, 31
	lbu	a7, 3(a1)
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	add	a7, a0, a7
	sraiw	a6, a7, 31
	lbu	t0, 4(a1)
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	add	t0, a0, t0
	sraiw	a6, t0, 31
	lbu	a7, 5(a1)
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	add	a7, a0, a7
	sraiw	a6, a7, 31
	lbu	t0, 6(a1)
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	add	t0, a0, t0
	sraiw	a6, t0, 31
	lbu	a7, 7(a1)
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	add	a7, a0, a7
	sraiw	a6, a7, 31
	lbu	t0, 8(a1)
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	add	t0, a0, t0
	sraiw	a6, t0, 31
	xor	a7, t0, a6
	subw	a6, a7, a6
	addw	a6, a6, a5
	addi	a2, a2, -1
	add	a1, a1, a4
	bnez	a2, .LBB17_3
# %bb.4:
	addiw	a0, a3, -500
	slt	a0, a6, a0
	negw	a0, a0
	andi	a0, a0, 3
	ret
.Lfunc_end17:
	.size	ChooseMode, .Lfunc_end17-ChooseMode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ModifyMode                      # -- Begin function ModifyMode
	.p2align	2
	.type	ModifyMode,@function
ModifyMode:                             # @ModifyMode
# %bb.0:
	mv	a2, a0
	bnez	a1, .LBB18_3
# %bb.1:
	li	a3, 3
	beq	a2, a3, .LBB18_4
.LBB18_2:
	ret
.LBB18_3:
	li	a0, 1
	li	a3, 3
	bne	a2, a3, .LBB18_2
.LBB18_4:
	snez	a0, a1
	addi	a0, a0, 3
	ret
.Lfunc_end18:
	.size	ModifyMode, .Lfunc_end18-ModifyMode
                                        # -- End function
	.option	pop
	.type	roundtab,@object                # @roundtab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
roundtab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	roundtab, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Illegal Mode in Predict_P (pred.c)\n"
	.size	.L.str, 36

	.type	.L__const.FindPredOBMC.Mc,@object # @__const.FindPredOBMC.Mc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.FindPredOBMC.Mc:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.size	.L__const.FindPredOBMC.Mc, 256

	.type	.L__const.FindPredOBMC.Mt,@object # @__const.FindPredOBMC.Mt
	.p2align	2, 0x0
.L__const.FindPredOBMC.Mt:
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.size	.L__const.FindPredOBMC.Mt, 256

	.type	.L__const.FindPredOBMC.Mb,@object # @__const.FindPredOBMC.Mb
	.p2align	2, 0x0
.L__const.FindPredOBMC.Mb:
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	.L__const.FindPredOBMC.Mb, 256

	.type	.L__const.FindPredOBMC.Mr,@object # @__const.FindPredOBMC.Mr
	.p2align	2, 0x0
.L__const.FindPredOBMC.Mr:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.size	.L__const.FindPredOBMC.Mr, 256

	.type	.L__const.FindPredOBMC.Ml,@object # @__const.FindPredOBMC.Ml
	.p2align	2, 0x0
.L__const.FindPredOBMC.Ml:
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.FindPredOBMC.Ml, 256

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Illegal block number in FindPredOBMC (pred.c)\n"
	.size	.L.str.1, 47

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
