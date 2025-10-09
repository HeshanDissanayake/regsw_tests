	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getvlc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getTMNMV                        # -- Begin function getTMNMV
	.p2align	2
	.type	getTMNMV,@function
getTMNMV:                               # @getTMNMV
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
.LBB0_2:
	call	getbits1
	beqz	a0, .LBB0_5
# %bb.3:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_18
# %bb.4:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, 0
	j	.LBB0_18
.LBB0_5:
	li	a0, 12
	call	showbits
	li	a1, 512
	blt	a0, a1, .LBB0_8
# %bb.6:
	srliw	s0, a0, 8
	slli	s2, s0, 3
	lui	a0, %hi(TMNMVtab0)
	addi	a0, a0, %lo(TMNMVtab0)
	add	s2, s2, a0
	lw	s1, -12(s2)
	mv	a0, s1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_14
# %bb.7:
	li	a0, 48
	call	putchar
	li	a1, 4
	mv	a0, s0
	mv	a2, s1
	call	printbits
	lw	s0, -16(s2)
	j	.LBB0_17
.LBB0_8:
	li	a1, 128
	blt	a0, a1, .LBB0_11
# %bb.9:
	srliw	s0, a0, 2
	slli	s2, s0, 3
	lui	a0, %hi(TMNMVtab1)
	addi	a0, a0, %lo(TMNMVtab1)
	add	s2, s2, a0
	lw	s1, -252(s2)
	mv	a0, s1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_19
# %bb.10:
	li	a0, 48
	call	putchar
	li	a1, 10
	mv	a0, s0
	mv	a2, s1
	call	printbits
	lw	s0, -256(s2)
	j	.LBB0_17
.LBB0_11:
	li	a1, 4
	blt	a1, a0, .LBB0_15
# %bb.12:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_21
.LBB0_13:
	li	a0, 0
	lui	a1, %hi(fault)
	li	a2, 1
	sw	a2, %lo(fault)(a1)
	j	.LBB0_18
.LBB0_14:
	lw	a0, -16(s2)
	j	.LBB0_18
.LBB0_15:
	mv	s0, a0
	slli	a0, a0, 3
	lui	s2, %hi(TMNMVtab2)
	addi	s2, s2, %lo(TMNMVtab2)
	add	s2, a0, s2
	lw	s1, -36(s2)
	mv	a0, s1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB0_20
# %bb.16:
	li	a0, 48
	call	putchar
	li	a1, 12
	mv	a0, s0
	mv	a2, s1
	call	printbits
	lw	s0, -40(s2)
.LBB0_17:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	mv	a1, s0
	call	printf
	mv	a0, s0
.LBB0_18:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB0_19:
	lw	a0, -256(s2)
	j	.LBB0_18
.LBB0_20:
	lw	a0, -40(s2)
	j	.LBB0_18
.LBB0_21:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, 27
	li	a2, 1
	call	fwrite
	j	.LBB0_13
.Lfunc_end0:
	.size	getTMNMV, .Lfunc_end0-getTMNMV
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getMCBPC                        # -- Begin function getMCBPC
	.p2align	2
	.type	getMCBPC,@function
getMCBPC:                               # @getMCBPC
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_2
# %bb.1:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	printf
.LBB1_2:
	li	a0, 9
	call	showbits
	beqz	a0, .LBB1_7
# %bb.3:
	li	a1, 1
	bne	a0, a1, .LBB1_9
# %bb.4:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_6
# %bb.5:
	lui	a0, %hi(.Lstr.22)
	addi	a0, a0, %lo(.Lstr.22)
	call	puts
.LBB1_6:
	li	a0, 9
	call	flushbits
	li	a0, 255
	j	.LBB1_15
.LBB1_7:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB1_16
.LBB1_8:
	li	a0, 0
	lui	a1, %hi(fault)
	li	a2, 1
	sw	a2, %lo(fault)(a1)
	j	.LBB1_15
.LBB1_9:
	li	a1, 256
	blt	a0, a1, .LBB1_12
# %bb.10:
	li	a0, 1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_15
# %bb.11:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 0
	call	printf
	li	a0, 0
	j	.LBB1_15
.LBB1_12:
	mv	s0, a0
	slli	a0, a0, 3
	lui	s2, %hi(MCBPCtab)
	addi	s2, s2, %lo(MCBPCtab)
	add	s2, s2, a0
	lw	s1, 4(s2)
	mv	a0, s1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB1_14
# %bb.13:
	li	a1, 9
	mv	a0, s0
	mv	a2, s1
	call	printbits
	lw	s0, 0(s2)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	mv	a1, s0
	call	printf
	mv	a0, s0
	j	.LBB1_15
.LBB1_14:
	lw	a0, 0(s2)
.LBB1_15:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB1_16:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	li	a1, 19
	li	a2, 1
	call	fwrite
	j	.LBB1_8
.Lfunc_end1:
	.size	getMCBPC, .Lfunc_end1-getMCBPC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getMODB                         # -- Begin function getMODB
	.p2align	2
	.type	getMODB,@function
getMODB:                                # @getMODB
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB2_2
# %bb.1:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	printf
.LBB2_2:
	li	a0, 2
	li	s0, 2
	call	showbits
	li	a1, 1
	blt	a1, a0, .LBB2_5
# %bb.3:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	li	s1, 0
	beqz	a0, .LBB2_9
# %bb.4:
	lui	a0, %hi(.Lstr.21)
	addi	a0, a0, %lo(.Lstr.21)
	li	s0, 1
	j	.LBB2_8
.LBB2_5:
	lui	a1, %hi(trace)
	lw	a1, %lo(trace)(a1)
	addi	a2, a0, -2
	snez	s1, a2
	beq	a0, s0, .LBB2_7
# %bb.6:
	lui	a0, %hi(.Lstr.19)
	addi	a0, a0, %lo(.Lstr.19)
	addi	s1, s1, 1
	bnez	a1, .LBB2_8
	j	.LBB2_10
.LBB2_7:
	lui	a0, %hi(.Lstr.20)
	addi	a0, a0, %lo(.Lstr.20)
	addi	s1, s1, 1
	beqz	a1, .LBB2_10
.LBB2_8:
	call	puts
	j	.LBB2_10
.LBB2_9:
	li	s0, 1
.LBB2_10:
	mv	a0, s0
	call	flushbits
	mv	a0, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	getMODB, .Lfunc_end2-getMODB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getMCBPCintra                   # -- Begin function getMCBPCintra
	.p2align	2
	.type	getMCBPCintra,@function
getMCBPCintra:                          # @getMCBPCintra
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB3_2
# %bb.1:
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	call	printf
.LBB3_2:
	li	a0, 9
	call	showbits
	li	a1, 1
	bne	a0, a1, .LBB3_6
# %bb.3:
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB3_5
# %bb.4:
	lui	a0, %hi(.Lstr.22)
	addi	a0, a0, %lo(.Lstr.22)
	call	puts
.LBB3_5:
	li	a0, 9
	call	flushbits
	li	a0, 255
	j	.LBB3_16
.LBB3_6:
	li	a1, 7
	blt	a1, a0, .LBB3_9
# %bb.7:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB3_17
.LBB3_8:
	li	a0, 0
	lui	a1, %hi(fault)
	li	a2, 1
	sw	a2, %lo(fault)(a1)
	j	.LBB3_16
.LBB3_9:
	li	a1, 256
	bltu	a0, a1, .LBB3_12
# %bb.10:
	li	a0, 1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB3_14
# %bb.11:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 3
	call	printf
	li	a0, 3
	j	.LBB3_16
.LBB3_12:
	srliw	s0, a0, 3
	slli	s2, s0, 3
	lui	a0, %hi(MCBPCtabintra)
	addi	a0, a0, %lo(MCBPCtabintra)
	add	s2, a0, s2
	lw	s1, 4(s2)
	mv	a0, s1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB3_15
# %bb.13:
	li	a1, 6
	mv	a0, s0
	mv	a2, s1
	call	printbits
	lw	s0, 0(s2)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	mv	a1, s0
	call	printf
	mv	a0, s0
	j	.LBB3_16
.LBB3_14:
	li	a0, 3
	j	.LBB3_16
.LBB3_15:
	lw	a0, 0(s2)
.LBB3_16:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB3_17:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	li	a1, 24
	li	a2, 1
	call	fwrite
	j	.LBB3_8
.Lfunc_end3:
	.size	getMCBPCintra, .Lfunc_end3-getMCBPCintra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getCBPY                         # -- Begin function getCBPY
	.p2align	2
	.type	getCBPY,@function
getCBPY:                                # @getCBPY
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB4_2
# %bb.1:
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	call	printf
.LBB4_2:
	li	a0, 6
	call	showbits
	li	a1, 1
	blt	a1, a0, .LBB4_5
# %bb.3:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB4_12
.LBB4_4:
	lui	a0, %hi(fault)
	li	a1, 1
	sw	a1, %lo(fault)(a0)
	li	a0, -1
	j	.LBB4_11
.LBB4_5:
	li	a1, 48
	bltu	a0, a1, .LBB4_8
# %bb.6:
	li	a0, 2
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB4_11
# %bb.7:
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	li	a1, 0
	call	printf
	li	a0, 0
	j	.LBB4_11
.LBB4_8:
	mv	s0, a0
	slli	a0, a0, 3
	lui	s2, %hi(CBPYtab)
	addi	s2, s2, %lo(CBPYtab)
	add	s2, s2, a0
	lw	s1, 4(s2)
	mv	a0, s1
	call	flushbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB4_10
# %bb.9:
	li	a1, 6
	mv	a0, s0
	mv	a2, s1
	call	printbits
	lw	s0, 0(s2)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	mv	a1, s0
	call	printf
	mv	a0, s0
	j	.LBB4_11
.LBB4_10:
	lw	a0, 0(s2)
.LBB4_11:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB4_12:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	li	a1, 18
	li	a2, 1
	call	fwrite
	j	.LBB4_4
.Lfunc_end4:
	.size	getCBPY, .Lfunc_end4-getCBPY
                                        # -- End function
	.option	pop
	.type	DCT3Dtab0,@object               # @DCT3Dtab0
	.data
	.globl	DCT3Dtab0
	.p2align	2, 0x0
DCT3Dtab0:
	.word	4225                            # 0x1081
	.word	7                               # 0x7
	.word	4209                            # 0x1071
	.word	7                               # 0x7
	.word	4193                            # 0x1061
	.word	7                               # 0x7
	.word	4177                            # 0x1051
	.word	7                               # 0x7
	.word	193                             # 0xc1
	.word	7                               # 0x7
	.word	177                             # 0xb1
	.word	7                               # 0x7
	.word	161                             # 0xa1
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	4161                            # 0x1041
	.word	6                               # 0x6
	.word	4161                            # 0x1041
	.word	6                               # 0x6
	.word	4145                            # 0x1031
	.word	6                               # 0x6
	.word	4145                            # 0x1031
	.word	6                               # 0x6
	.word	4129                            # 0x1021
	.word	6                               # 0x6
	.word	4129                            # 0x1021
	.word	6                               # 0x6
	.word	4113                            # 0x1011
	.word	6                               # 0x6
	.word	4113                            # 0x1011
	.word	6                               # 0x6
	.word	145                             # 0x91
	.word	6                               # 0x6
	.word	145                             # 0x91
	.word	6                               # 0x6
	.word	129                             # 0x81
	.word	6                               # 0x6
	.word	129                             # 0x81
	.word	6                               # 0x6
	.word	113                             # 0x71
	.word	6                               # 0x6
	.word	113                             # 0x71
	.word	6                               # 0x6
	.word	97                              # 0x61
	.word	6                               # 0x6
	.word	97                              # 0x61
	.word	6                               # 0x6
	.word	18                              # 0x12
	.word	6                               # 0x6
	.word	18                              # 0x12
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	81                              # 0x51
	.word	5                               # 0x5
	.word	81                              # 0x51
	.word	5                               # 0x5
	.word	81                              # 0x51
	.word	5                               # 0x5
	.word	81                              # 0x51
	.word	5                               # 0x5
	.word	65                              # 0x41
	.word	5                               # 0x5
	.word	65                              # 0x41
	.word	5                               # 0x5
	.word	65                              # 0x41
	.word	5                               # 0x5
	.word	65                              # 0x41
	.word	5                               # 0x5
	.word	49                              # 0x31
	.word	5                               # 0x5
	.word	49                              # 0x31
	.word	5                               # 0x5
	.word	49                              # 0x31
	.word	5                               # 0x5
	.word	49                              # 0x31
	.word	5                               # 0x5
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	4097                            # 0x1001
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	17                              # 0x11
	.word	3                               # 0x3
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	33                              # 0x21
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.size	DCT3Dtab0, 896

	.type	DCT3Dtab1,@object               # @DCT3Dtab1
	.globl	DCT3Dtab1
	.p2align	2, 0x0
DCT3Dtab1:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	4481                            # 0x1181
	.word	9                               # 0x9
	.word	4481                            # 0x1181
	.word	9                               # 0x9
	.word	4465                            # 0x1171
	.word	9                               # 0x9
	.word	4465                            # 0x1171
	.word	9                               # 0x9
	.word	4449                            # 0x1161
	.word	9                               # 0x9
	.word	4449                            # 0x1161
	.word	9                               # 0x9
	.word	4433                            # 0x1151
	.word	9                               # 0x9
	.word	4433                            # 0x1151
	.word	9                               # 0x9
	.word	4417                            # 0x1141
	.word	9                               # 0x9
	.word	4417                            # 0x1141
	.word	9                               # 0x9
	.word	4401                            # 0x1131
	.word	9                               # 0x9
	.word	4401                            # 0x1131
	.word	9                               # 0x9
	.word	4385                            # 0x1121
	.word	9                               # 0x9
	.word	4385                            # 0x1121
	.word	9                               # 0x9
	.word	4369                            # 0x1111
	.word	9                               # 0x9
	.word	4369                            # 0x1111
	.word	9                               # 0x9
	.word	4098                            # 0x1002
	.word	9                               # 0x9
	.word	4098                            # 0x1002
	.word	9                               # 0x9
	.word	353                             # 0x161
	.word	9                               # 0x9
	.word	353                             # 0x161
	.word	9                               # 0x9
	.word	337                             # 0x151
	.word	9                               # 0x9
	.word	337                             # 0x151
	.word	9                               # 0x9
	.word	321                             # 0x141
	.word	9                               # 0x9
	.word	321                             # 0x141
	.word	9                               # 0x9
	.word	305                             # 0x131
	.word	9                               # 0x9
	.word	305                             # 0x131
	.word	9                               # 0x9
	.word	289                             # 0x121
	.word	9                               # 0x9
	.word	289                             # 0x121
	.word	9                               # 0x9
	.word	273                             # 0x111
	.word	9                               # 0x9
	.word	273                             # 0x111
	.word	9                               # 0x9
	.word	257                             # 0x101
	.word	9                               # 0x9
	.word	257                             # 0x101
	.word	9                               # 0x9
	.word	241                             # 0xf1
	.word	9                               # 0x9
	.word	241                             # 0xf1
	.word	9                               # 0x9
	.word	66                              # 0x42
	.word	9                               # 0x9
	.word	66                              # 0x42
	.word	9                               # 0x9
	.word	50                              # 0x32
	.word	9                               # 0x9
	.word	50                              # 0x32
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	4353                            # 0x1101
	.word	8                               # 0x8
	.word	4353                            # 0x1101
	.word	8                               # 0x8
	.word	4353                            # 0x1101
	.word	8                               # 0x8
	.word	4353                            # 0x1101
	.word	8                               # 0x8
	.word	4337                            # 0x10f1
	.word	8                               # 0x8
	.word	4337                            # 0x10f1
	.word	8                               # 0x8
	.word	4337                            # 0x10f1
	.word	8                               # 0x8
	.word	4337                            # 0x10f1
	.word	8                               # 0x8
	.word	4321                            # 0x10e1
	.word	8                               # 0x8
	.word	4321                            # 0x10e1
	.word	8                               # 0x8
	.word	4321                            # 0x10e1
	.word	8                               # 0x8
	.word	4321                            # 0x10e1
	.word	8                               # 0x8
	.word	4305                            # 0x10d1
	.word	8                               # 0x8
	.word	4305                            # 0x10d1
	.word	8                               # 0x8
	.word	4305                            # 0x10d1
	.word	8                               # 0x8
	.word	4305                            # 0x10d1
	.word	8                               # 0x8
	.word	4289                            # 0x10c1
	.word	8                               # 0x8
	.word	4289                            # 0x10c1
	.word	8                               # 0x8
	.word	4289                            # 0x10c1
	.word	8                               # 0x8
	.word	4289                            # 0x10c1
	.word	8                               # 0x8
	.word	4273                            # 0x10b1
	.word	8                               # 0x8
	.word	4273                            # 0x10b1
	.word	8                               # 0x8
	.word	4273                            # 0x10b1
	.word	8                               # 0x8
	.word	4273                            # 0x10b1
	.word	8                               # 0x8
	.word	4257                            # 0x10a1
	.word	8                               # 0x8
	.word	4257                            # 0x10a1
	.word	8                               # 0x8
	.word	4257                            # 0x10a1
	.word	8                               # 0x8
	.word	4257                            # 0x10a1
	.word	8                               # 0x8
	.word	4241                            # 0x1091
	.word	8                               # 0x8
	.word	4241                            # 0x1091
	.word	8                               # 0x8
	.word	4241                            # 0x1091
	.word	8                               # 0x8
	.word	4241                            # 0x1091
	.word	8                               # 0x8
	.word	225                             # 0xe1
	.word	8                               # 0x8
	.word	225                             # 0xe1
	.word	8                               # 0x8
	.word	225                             # 0xe1
	.word	8                               # 0x8
	.word	225                             # 0xe1
	.word	8                               # 0x8
	.word	209                             # 0xd1
	.word	8                               # 0x8
	.word	209                             # 0xd1
	.word	8                               # 0x8
	.word	209                             # 0xd1
	.word	8                               # 0x8
	.word	209                             # 0xd1
	.word	8                               # 0x8
	.word	34                              # 0x22
	.word	8                               # 0x8
	.word	34                              # 0x22
	.word	8                               # 0x8
	.word	34                              # 0x22
	.word	8                               # 0x8
	.word	34                              # 0x22
	.word	8                               # 0x8
	.word	19                              # 0x13
	.word	8                               # 0x8
	.word	19                              # 0x13
	.word	8                               # 0x8
	.word	19                              # 0x13
	.word	8                               # 0x8
	.word	19                              # 0x13
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	8                               # 0x8
	.size	DCT3Dtab1, 768

	.type	DCT3Dtab2,@object               # @DCT3Dtab2
	.globl	DCT3Dtab2
	.p2align	2, 0x0
DCT3Dtab2:
	.word	4114                            # 0x1012
	.word	11                              # 0xb
	.word	4114                            # 0x1012
	.word	11                              # 0xb
	.word	4099                            # 0x1003
	.word	11                              # 0xb
	.word	4099                            # 0x1003
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	4545                            # 0x11c1
	.word	10                              # 0xa
	.word	4545                            # 0x11c1
	.word	10                              # 0xa
	.word	4545                            # 0x11c1
	.word	10                              # 0xa
	.word	4545                            # 0x11c1
	.word	10                              # 0xa
	.word	4529                            # 0x11b1
	.word	10                              # 0xa
	.word	4529                            # 0x11b1
	.word	10                              # 0xa
	.word	4529                            # 0x11b1
	.word	10                              # 0xa
	.word	4529                            # 0x11b1
	.word	10                              # 0xa
	.word	4513                            # 0x11a1
	.word	10                              # 0xa
	.word	4513                            # 0x11a1
	.word	10                              # 0xa
	.word	4513                            # 0x11a1
	.word	10                              # 0xa
	.word	4513                            # 0x11a1
	.word	10                              # 0xa
	.word	4497                            # 0x1191
	.word	10                              # 0xa
	.word	4497                            # 0x1191
	.word	10                              # 0xa
	.word	4497                            # 0x1191
	.word	10                              # 0xa
	.word	4497                            # 0x1191
	.word	10                              # 0xa
	.word	146                             # 0x92
	.word	10                              # 0xa
	.word	146                             # 0x92
	.word	10                              # 0xa
	.word	146                             # 0x92
	.word	10                              # 0xa
	.word	146                             # 0x92
	.word	10                              # 0xa
	.word	130                             # 0x82
	.word	10                              # 0xa
	.word	130                             # 0x82
	.word	10                              # 0xa
	.word	130                             # 0x82
	.word	10                              # 0xa
	.word	130                             # 0x82
	.word	10                              # 0xa
	.word	114                             # 0x72
	.word	10                              # 0xa
	.word	114                             # 0x72
	.word	10                              # 0xa
	.word	114                             # 0x72
	.word	10                              # 0xa
	.word	114                             # 0x72
	.word	10                              # 0xa
	.word	98                              # 0x62
	.word	10                              # 0xa
	.word	98                              # 0x62
	.word	10                              # 0xa
	.word	98                              # 0x62
	.word	10                              # 0xa
	.word	98                              # 0x62
	.word	10                              # 0xa
	.word	82                              # 0x52
	.word	10                              # 0xa
	.word	82                              # 0x52
	.word	10                              # 0xa
	.word	82                              # 0x52
	.word	10                              # 0xa
	.word	82                              # 0x52
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.word	35                              # 0x23
	.word	10                              # 0xa
	.word	35                              # 0x23
	.word	10                              # 0xa
	.word	35                              # 0x23
	.word	10                              # 0xa
	.word	35                              # 0x23
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	21                              # 0x15
	.word	11                              # 0xb
	.word	21                              # 0x15
	.word	11                              # 0xb
	.word	369                             # 0x171
	.word	11                              # 0xb
	.word	369                             # 0x171
	.word	11                              # 0xb
	.word	385                             # 0x181
	.word	11                              # 0xb
	.word	385                             # 0x181
	.word	11                              # 0xb
	.word	4561                            # 0x11d1
	.word	11                              # 0xb
	.word	4561                            # 0x11d1
	.word	11                              # 0xb
	.word	4577                            # 0x11e1
	.word	11                              # 0xb
	.word	4577                            # 0x11e1
	.word	11                              # 0xb
	.word	4593                            # 0x11f1
	.word	11                              # 0xb
	.word	4593                            # 0x11f1
	.word	11                              # 0xb
	.word	4609                            # 0x1201
	.word	11                              # 0xb
	.word	4609                            # 0x1201
	.word	11                              # 0xb
	.word	22                              # 0x16
	.word	12                              # 0xc
	.word	36                              # 0x24
	.word	12                              # 0xc
	.word	67                              # 0x43
	.word	12                              # 0xc
	.word	83                              # 0x53
	.word	12                              # 0xc
	.word	99                              # 0x63
	.word	12                              # 0xc
	.word	162                             # 0xa2
	.word	12                              # 0xc
	.word	401                             # 0x191
	.word	12                              # 0xc
	.word	417                             # 0x1a1
	.word	12                              # 0xc
	.word	4625                            # 0x1211
	.word	12                              # 0xc
	.word	4641                            # 0x1221
	.word	12                              # 0xc
	.word	4657                            # 0x1231
	.word	12                              # 0xc
	.word	4673                            # 0x1241
	.word	12                              # 0xc
	.word	4689                            # 0x1251
	.word	12                              # 0xc
	.word	4705                            # 0x1261
	.word	12                              # 0xc
	.word	4721                            # 0x1271
	.word	12                              # 0xc
	.word	4737                            # 0x1281
	.word	12                              # 0xc
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.word	7167                            # 0x1bff
	.word	7                               # 0x7
	.size	DCT3Dtab2, 960

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"motion_code ("
	.size	.L.str, 14

	.type	TMNMVtab0,@object               # @TMNMVtab0
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
TMNMVtab0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	61                              # 0x3d
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	63                              # 0x3f
	.word	2                               # 0x2
	.word	63                              # 0x3f
	.word	2                               # 0x2
	.word	63                              # 0x3f
	.word	2                               # 0x2
	.word	63                              # 0x3f
	.word	2                               # 0x2
	.size	TMNMVtab0, 112

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"): %d\n"
	.size	.L.str.3, 7

	.type	TMNMVtab1,@object               # @TMNMVtab1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
TMNMVtab1:
	.word	12                              # 0xc
	.word	10                              # 0xa
	.word	52                              # 0x34
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	53                              # 0x35
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	54                              # 0x36
	.word	9                               # 0x9
	.word	54                              # 0x36
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	55                              # 0x37
	.word	9                               # 0x9
	.word	55                              # 0x37
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	56                              # 0x38
	.word	9                               # 0x9
	.word	56                              # 0x38
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.size	TMNMVtab1, 768

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Invalid motion_vector code\n"
	.size	.L.str.4, 28

	.type	TMNMVtab2,@object               # @TMNMVtab2
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
TMNMVtab2:
	.word	32                              # 0x20
	.word	12                              # 0xc
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	33                              # 0x21
	.word	12                              # 0xc
	.word	30                              # 0x1e
	.word	11                              # 0xb
	.word	30                              # 0x1e
	.word	11                              # 0xb
	.word	34                              # 0x22
	.word	11                              # 0xb
	.word	34                              # 0x22
	.word	11                              # 0xb
	.word	29                              # 0x1d
	.word	11                              # 0xb
	.word	29                              # 0x1d
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	11                              # 0xb
	.word	28                              # 0x1c
	.word	11                              # 0xb
	.word	28                              # 0x1c
	.word	11                              # 0xb
	.word	36                              # 0x24
	.word	11                              # 0xb
	.word	36                              # 0x24
	.word	11                              # 0xb
	.word	27                              # 0x1b
	.word	11                              # 0xb
	.word	27                              # 0x1b
	.word	11                              # 0xb
	.word	37                              # 0x25
	.word	11                              # 0xb
	.word	37                              # 0x25
	.word	11                              # 0xb
	.word	26                              # 0x1a
	.word	11                              # 0xb
	.word	26                              # 0x1a
	.word	11                              # 0xb
	.word	38                              # 0x26
	.word	11                              # 0xb
	.word	38                              # 0x26
	.word	11                              # 0xb
	.word	25                              # 0x19
	.word	11                              # 0xb
	.word	25                              # 0x19
	.word	11                              # 0xb
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	24                              # 0x18
	.word	10                              # 0xa
	.word	24                              # 0x18
	.word	10                              # 0xa
	.word	24                              # 0x18
	.word	10                              # 0xa
	.word	24                              # 0x18
	.word	10                              # 0xa
	.word	40                              # 0x28
	.word	10                              # 0xa
	.word	40                              # 0x28
	.word	10                              # 0xa
	.word	40                              # 0x28
	.word	10                              # 0xa
	.word	40                              # 0x28
	.word	10                              # 0xa
	.word	23                              # 0x17
	.word	10                              # 0xa
	.word	23                              # 0x17
	.word	10                              # 0xa
	.word	23                              # 0x17
	.word	10                              # 0xa
	.word	23                              # 0x17
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	22                              # 0x16
	.word	10                              # 0xa
	.word	22                              # 0x16
	.word	10                              # 0xa
	.word	22                              # 0x16
	.word	10                              # 0xa
	.word	22                              # 0x16
	.word	10                              # 0xa
	.word	42                              # 0x2a
	.word	10                              # 0xa
	.word	42                              # 0x2a
	.word	10                              # 0xa
	.word	42                              # 0x2a
	.word	10                              # 0xa
	.word	42                              # 0x2a
	.word	10                              # 0xa
	.word	21                              # 0x15
	.word	10                              # 0xa
	.word	21                              # 0x15
	.word	10                              # 0xa
	.word	21                              # 0x15
	.word	10                              # 0xa
	.word	21                              # 0x15
	.word	10                              # 0xa
	.word	43                              # 0x2b
	.word	10                              # 0xa
	.word	43                              # 0x2b
	.word	10                              # 0xa
	.word	43                              # 0x2b
	.word	10                              # 0xa
	.word	43                              # 0x2b
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	10                              # 0xa
	.word	19                              # 0x13
	.word	10                              # 0xa
	.word	19                              # 0x13
	.word	10                              # 0xa
	.word	19                              # 0x13
	.word	10                              # 0xa
	.word	19                              # 0x13
	.word	10                              # 0xa
	.word	45                              # 0x2d
	.word	10                              # 0xa
	.word	45                              # 0x2d
	.word	10                              # 0xa
	.word	45                              # 0x2d
	.word	10                              # 0xa
	.word	45                              # 0x2d
	.word	10                              # 0xa
	.word	18                              # 0x12
	.word	10                              # 0xa
	.word	18                              # 0x12
	.word	10                              # 0xa
	.word	18                              # 0x12
	.word	10                              # 0xa
	.word	18                              # 0x12
	.word	10                              # 0xa
	.word	46                              # 0x2e
	.word	10                              # 0xa
	.word	46                              # 0x2e
	.word	10                              # 0xa
	.word	46                              # 0x2e
	.word	10                              # 0xa
	.word	46                              # 0x2e
	.word	10                              # 0xa
	.word	17                              # 0x11
	.word	10                              # 0xa
	.word	17                              # 0x11
	.word	10                              # 0xa
	.word	17                              # 0x11
	.word	10                              # 0xa
	.word	17                              # 0x11
	.word	10                              # 0xa
	.word	47                              # 0x2f
	.word	10                              # 0xa
	.word	47                              # 0x2f
	.word	10                              # 0xa
	.word	47                              # 0x2f
	.word	10                              # 0xa
	.word	47                              # 0x2f
	.word	10                              # 0xa
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	48                              # 0x30
	.word	10                              # 0xa
	.word	48                              # 0x30
	.word	10                              # 0xa
	.word	48                              # 0x30
	.word	10                              # 0xa
	.word	48                              # 0x30
	.word	10                              # 0xa
	.word	15                              # 0xf
	.word	10                              # 0xa
	.word	15                              # 0xf
	.word	10                              # 0xa
	.word	15                              # 0xf
	.word	10                              # 0xa
	.word	15                              # 0xf
	.word	10                              # 0xa
	.word	49                              # 0x31
	.word	10                              # 0xa
	.word	49                              # 0x31
	.word	10                              # 0xa
	.word	49                              # 0x31
	.word	10                              # 0xa
	.word	49                              # 0x31
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.word	51                              # 0x33
	.word	10                              # 0xa
	.size	TMNMVtab2, 984

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"MCBPC ("
	.size	.L.str.5, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Invalid MCBPC code\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"1): %d\n"
	.size	.L.str.8, 8

	.type	MCBPCtab,@object                # @MCBPCtab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
MCBPCtab:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	255                             # 0xff
	.word	9                               # 0x9
	.word	52                              # 0x34
	.word	9                               # 0x9
	.word	36                              # 0x24
	.word	9                               # 0x9
	.word	20                              # 0x14
	.word	9                               # 0x9
	.word	49                              # 0x31
	.word	9                               # 0x9
	.word	35                              # 0x23
	.word	8                               # 0x8
	.word	35                              # 0x23
	.word	8                               # 0x8
	.word	19                              # 0x13
	.word	8                               # 0x8
	.word	19                              # 0x13
	.word	8                               # 0x8
	.word	50                              # 0x32
	.word	8                               # 0x8
	.word	50                              # 0x32
	.word	8                               # 0x8
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	7                               # 0x7
	.word	18                              # 0x12
	.word	7                               # 0x7
	.word	18                              # 0x12
	.word	7                               # 0x7
	.word	18                              # 0x12
	.word	7                               # 0x7
	.word	18                              # 0x12
	.word	7                               # 0x7
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	17                              # 0x11
	.word	7                               # 0x7
	.word	17                              # 0x11
	.word	7                               # 0x7
	.word	17                              # 0x11
	.word	7                               # 0x7
	.word	17                              # 0x11
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	48                              # 0x30
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.size	MCBPCtab, 2048

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"MODB ("
	.size	.L.str.9, 7

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"MCBPCintra ("
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Invalid MCBPCintra code\n"
	.size	.L.str.14, 25

	.type	MCBPCtabintra,@object           # @MCBPCtabintra
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
MCBPCtabintra:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	20                              # 0x14
	.word	6                               # 0x6
	.word	36                              # 0x24
	.word	6                               # 0x6
	.word	52                              # 0x34
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	19                              # 0x13
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	35                              # 0x23
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	3                               # 0x3
	.size	MCBPCtabintra, 256

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"CBPY ("
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Invalid CBPY code\n"
	.size	.L.str.16, 19

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"11): %d\n"
	.size	.L.str.17, 9

	.type	CBPYtab,@object                 # @CBPYtab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
CBPYtab:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	11                              # 0xb
	.word	5                               # 0x5
	.word	11                              # 0xb
	.word	5                               # 0x5
	.word	13                              # 0xd
	.word	5                               # 0x5
	.word	13                              # 0xd
	.word	5                               # 0x5
	.word	14                              # 0xe
	.word	5                               # 0x5
	.word	14                              # 0xe
	.word	5                               # 0x5
	.word	15                              # 0xf
	.word	4                               # 0x4
	.word	15                              # 0xf
	.word	4                               # 0x4
	.word	15                              # 0xf
	.word	4                               # 0x4
	.word	15                              # 0xf
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.size	CBPYtab, 384

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"1): 0"
	.size	.Lstr, 6

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"11): MODB = 2"
	.size	.Lstr.19, 14

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"10): MODB = 1"
	.size	.Lstr.20, 14

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"0): MODB = 0"
	.size	.Lstr.21, 13

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"000000001): stuffing"
	.size	.Lstr.22, 21

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
