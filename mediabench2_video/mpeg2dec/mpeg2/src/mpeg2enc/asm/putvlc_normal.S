	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"putvlc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putDClum                        # -- Begin function putDClum
	.p2align	2
	.type	putDClum,@function
putDClum:                               # @putDClum
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	sraiw	a0, a0, 31
	xor	a1, s0, a0
	subw	s2, a1, a0
	li	a0, 2047
	bltu	a0, s2, .LBB0_3
# %bb.1:
	li	a0, 256
	bltu	s2, a0, .LBB0_4
# %bb.2:
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	beqz	a0, .LBB0_4
.LBB0_3:
	lui	s1, %hi(errortext)
	addi	s1, s1, %lo(errortext)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, s1
	mv	a2, s0
	call	sprintf
	mv	a0, s1
	call	error
.LBB0_4:
	li	s1, 0
	beqz	s0, .LBB0_6
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	srliw	s2, s2, 1
	addiw	s1, s1, 1
	bnez	s2, .LBB0_5
.LBB0_6:
	slli	a0, s1, 2
	lui	a1, %hi(DClumtab)
	addi	a1, a1, %lo(DClumtab)
	add	a1, a1, a0
	lhu	a0, 0(a1)
	lbu	a1, 2(a1)
	call	putbits
	beqz	s1, .LBB0_10
# %bb.7:
	bgez	s0, .LBB0_9
# %bb.8:
	li	a0, 1
	sllw	a0, a0, s1
	add	a0, s0, a0
	addiw	s0, a0, -1
.LBB0_9:
	mv	a0, s0
	mv	a1, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	putbits
.LBB0_10:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	putDClum, .Lfunc_end0-putDClum
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putDCchrom                      # -- Begin function putDCchrom
	.p2align	2
	.type	putDCchrom,@function
putDCchrom:                             # @putDCchrom
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	sraiw	a0, a0, 31
	xor	a1, s0, a0
	subw	s2, a1, a0
	li	a0, 2047
	bltu	a0, s2, .LBB1_3
# %bb.1:
	li	a0, 256
	bltu	s2, a0, .LBB1_4
# %bb.2:
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	beqz	a0, .LBB1_4
.LBB1_3:
	lui	s1, %hi(errortext)
	addi	s1, s1, %lo(errortext)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, s1
	mv	a2, s0
	call	sprintf
	mv	a0, s1
	call	error
.LBB1_4:
	li	s1, 0
	beqz	s0, .LBB1_6
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	srliw	s2, s2, 1
	addiw	s1, s1, 1
	bnez	s2, .LBB1_5
.LBB1_6:
	slli	a0, s1, 2
	lui	a1, %hi(DCchromtab)
	addi	a1, a1, %lo(DCchromtab)
	add	a1, a1, a0
	lhu	a0, 0(a1)
	lbu	a1, 2(a1)
	call	putbits
	beqz	s1, .LBB1_10
# %bb.7:
	bgez	s0, .LBB1_9
# %bb.8:
	li	a0, 1
	sllw	a0, a0, s1
	add	a0, s0, a0
	addiw	s0, a0, -1
.LBB1_9:
	mv	a0, s0
	mv	a1, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	putbits
.LBB1_10:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	putDCchrom, .Lfunc_end1-putDCchrom
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putACfirst                      # -- Begin function putACfirst
	.p2align	2
	.type	putACfirst,@function
putACfirst:                             # @putACfirst
# %bb.0:
	beqz	a0, .LBB2_2
# %bb.1:
	li	a2, 0
	tail	putAC
.LBB2_2:
	li	a0, -1
	beq	a1, a0, .LBB2_4
# %bb.3:
	li	a0, 1
	bne	a1, a0, .LBB2_5
.LBB2_4:
	srliw	a0, a1, 31
	addi	a0, a0, 2
	li	a1, 2
	tail	putbits
.LBB2_5:
	li	a0, 0
	li	a2, 0
	tail	putAC
.Lfunc_end2:
	.size	putACfirst, .Lfunc_end2-putACfirst
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putAC                           # -- Begin function putAC
	.p2align	2
	.type	putAC,@function
putAC:                                  # @putAC
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s2, a2
	mv	s0, a1
	mv	s1, a0
	sraiw	a0, a1, 31
	xor	a1, a1, a0
	li	a2, 63
	subw	s4, a1, a0
	bltu	a2, s1, .LBB3_5
# %bb.1:
	beqz	s0, .LBB3_5
# %bb.2:
	li	a0, 2047
	bltu	a0, s4, .LBB3_5
# %bb.3:
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	beqz	a0, .LBB3_6
# %bb.4:
	li	a0, 256
	bltu	s4, a0, .LBB3_6
.LBB3_5:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, s3
	mv	a2, s1
	mv	a3, s0
	call	sprintf
	mv	a0, s3
	call	error
.LBB3_6:
	li	a0, 1
	blt	a0, s1, .LBB3_10
# %bb.7:
	li	a0, 40
	bltu	a0, s4, .LBB3_10
# %bb.8:
	addiw	s4, s4, -1
	li	a0, 80
	mul	a0, s1, a0
	beqz	s2, .LBB3_14
# %bb.9:
	lui	a1, %hi(dct_code_tab1a)
	addi	a1, a1, %lo(dct_code_tab1a)
	j	.LBB3_16
.LBB3_10:
	li	a0, 31
	blt	a0, s1, .LBB3_18
# %bb.11:
	li	a0, 5
	bltu	a0, s4, .LBB3_18
# %bb.12:
	addiw	a0, s1, -2
	addiw	s4, s4, -1
	li	a1, 10
	mul	a0, a0, a1
	beqz	s2, .LBB3_15
# %bb.13:
	lui	a1, %hi(dct_code_tab2a)
	addi	a1, a1, %lo(dct_code_tab2a)
	j	.LBB3_16
.LBB3_14:
	lui	a1, %hi(dct_code_tab1)
	addi	a1, a1, %lo(dct_code_tab1)
	j	.LBB3_16
.LBB3_15:
	lui	a1, %hi(dct_code_tab2)
	addi	a1, a1, %lo(dct_code_tab2)
.LBB3_16:
	add	a0, a1, a0
	slli	s4, s4, 1
	add	a0, a0, s4
	lbu	a1, 1(a0)
	beqz	a1, .LBB3_18
# %bb.17:
	lbu	a0, 0(a0)
	call	putbits
	srliw	a0, s0, 31
	li	a1, 1
	j	.LBB3_26
.LBB3_18:
	li	a0, 1
	li	a1, 6
	call	putbits
	li	a1, 6
	mv	a0, s1
	call	putbits
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	beqz	a0, .LBB3_21
# %bb.19:
	li	a0, 127
	bge	a0, s0, .LBB3_22
# %bb.20:
	li	a0, 0
	j	.LBB3_23
.LBB3_21:
	li	a1, 12
	j	.LBB3_25
.LBB3_22:
	li	a1, -128
	li	a0, 128
	blt	a1, s0, .LBB3_24
.LBB3_23:
	li	a1, 8
	call	putbits
.LBB3_24:
	li	a1, 8
.LBB3_25:
	mv	a0, s0
.LBB3_26:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	putbits
.Lfunc_end3:
	.size	putAC, .Lfunc_end3-putAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putaddrinc                      # -- Begin function putaddrinc
	.p2align	2
	.type	putaddrinc,@function
putaddrinc:                             # @putaddrinc
# %bb.0:
	li	a1, 34
	blt	a0, a1, .LBB4_4
# %bb.1:                                # %.preheader
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	li	s0, 66
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	mv	s1, a0
	li	a0, 8
	li	a1, 11
	call	putbits
	addiw	a0, s1, -33
	bltu	s0, s1, .LBB4_2
# %bb.3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
.LBB4_4:
	slli	a0, a0, 1
	lui	a1, %hi(addrinctab)
	addi	a1, a1, %lo(addrinctab)
	add	a1, a0, a1
	lbu	a0, -2(a1)
	lbu	a1, -1(a1)
	tail	putbits
.Lfunc_end4:
	.size	putaddrinc, .Lfunc_end4-putaddrinc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putmbtype                       # -- Begin function putmbtype
	.p2align	2
	.type	putmbtype,@function
putmbtype:                              # @putmbtype
# %bb.0:
	slli	a0, a0, 6
	lui	a2, %hi(mbtypetab)
	addi	a2, a2, %lo(mbtypetab)
	add	a0, a0, a2
	slli	a1, a1, 1
	add	a1, a0, a1
	lbu	a0, -64(a1)
	lbu	a1, -63(a1)
	tail	putbits
.Lfunc_end5:
	.size	putmbtype, .Lfunc_end5-putmbtype
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putmotioncode                   # -- Begin function putmotioncode
	.p2align	2
	.type	putmotioncode,@function
putmotioncode:                          # @putmotioncode
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	sraiw	a0, a0, 31
	xor	a1, s0, a0
	subw	a1, a1, a0
	slli	a1, a1, 1
	lui	a0, %hi(motionvectab)
	addi	a0, a0, %lo(motionvectab)
	add	a1, a0, a1
	lbu	a0, 0(a1)
	lbu	a1, 1(a1)
	call	putbits
	beqz	s0, .LBB6_2
# %bb.1:
	srliw	a0, s0, 31
	li	a1, 1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	putbits
.LBB6_2:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	putmotioncode, .Lfunc_end6-putmotioncode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putdmv                          # -- Begin function putdmv
	.p2align	2
	.type	putdmv,@function
putdmv:                                 # @putdmv
# %bb.0:
	beqz	a0, .LBB7_3
# %bb.1:
	blez	a0, .LBB7_4
# %bb.2:
	li	a0, 2
	li	a1, 2
	tail	putbits
.LBB7_3:
	li	a1, 1
	tail	putbits
.LBB7_4:
	li	a0, 3
	li	a1, 2
	tail	putbits
.Lfunc_end7:
	.size	putdmv, .Lfunc_end7-putdmv
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putcbp                          # -- Begin function putcbp
	.p2align	2
	.type	putcbp,@function
putcbp:                                 # @putcbp
# %bb.0:
	slli	a0, a0, 1
	lui	a1, %hi(cbptable)
	addi	a1, a1, %lo(cbptable)
	add	a1, a1, a0
	lbu	a0, 0(a1)
	lbu	a1, 1(a1)
	tail	putbits
.Lfunc_end8:
	.size	putcbp, .Lfunc_end8-putcbp
                                        # -- End function
	.option	pop
	.type	DClumtab,@object                # @DClumtab
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
DClumtab:
	.half	4                               # 0x4
	.byte	3                               # 0x3
	.zero	1
	.half	0                               # 0x0
	.byte	2                               # 0x2
	.zero	1
	.half	1                               # 0x1
	.byte	2                               # 0x2
	.zero	1
	.half	5                               # 0x5
	.byte	3                               # 0x3
	.zero	1
	.half	6                               # 0x6
	.byte	3                               # 0x3
	.zero	1
	.half	14                              # 0xe
	.byte	4                               # 0x4
	.zero	1
	.half	30                              # 0x1e
	.byte	5                               # 0x5
	.zero	1
	.half	62                              # 0x3e
	.byte	6                               # 0x6
	.zero	1
	.half	126                             # 0x7e
	.byte	7                               # 0x7
	.zero	1
	.half	254                             # 0xfe
	.byte	8                               # 0x8
	.zero	1
	.half	510                             # 0x1fe
	.byte	9                               # 0x9
	.zero	1
	.half	511                             # 0x1ff
	.byte	9                               # 0x9
	.zero	1
	.size	DClumtab, 48

	.type	DCchromtab,@object              # @DCchromtab
	.p2align	1, 0x0
DCchromtab:
	.half	0                               # 0x0
	.byte	2                               # 0x2
	.zero	1
	.half	1                               # 0x1
	.byte	2                               # 0x2
	.zero	1
	.half	2                               # 0x2
	.byte	2                               # 0x2
	.zero	1
	.half	6                               # 0x6
	.byte	3                               # 0x3
	.zero	1
	.half	14                              # 0xe
	.byte	4                               # 0x4
	.zero	1
	.half	30                              # 0x1e
	.byte	5                               # 0x5
	.zero	1
	.half	62                              # 0x3e
	.byte	6                               # 0x6
	.zero	1
	.half	126                             # 0x7e
	.byte	7                               # 0x7
	.zero	1
	.half	254                             # 0xfe
	.byte	8                               # 0x8
	.zero	1
	.half	510                             # 0x1fe
	.byte	9                               # 0x9
	.zero	1
	.half	1022                            # 0x3fe
	.byte	10                              # 0xa
	.zero	1
	.half	1023                            # 0x3ff
	.byte	10                              # 0xa
	.zero	1
	.size	DCchromtab, 48

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AC value out of range (run=%d, signed_level=%d)\n"
	.size	.L.str, 49

	.type	dct_code_tab2a,@object          # @dct_code_tab2a
	.section	.rodata,"a",@progbits
dct_code_tab2a:
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	252                             # 0xfc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	20                              # 0x14
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	38                              # 0x26
	.byte	8                               # 0x8
	.byte	28                              # 0x1c
	.byte	12                              # 0xc
	.byte	19                              # 0x13
	.byte	13                              # 0xd
	.zero	2
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	253                             # 0xfd
	.byte	8                               # 0x8
	.byte	18                              # 0x12
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	18                              # 0x12
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	30                              # 0x1e
	.byte	12                              # 0xc
	.byte	20                              # 0x14
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	21                              # 0x15
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.byte	120                             # 0x78
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.byte	122                             # 0x7a
	.byte	7                               # 0x7
	.byte	16                              # 0x10
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.byte	33                              # 0x21
	.byte	8                               # 0x8
	.byte	26                              # 0x1a
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	37                              # 0x25
	.byte	8                               # 0x8
	.byte	25                              # 0x19
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	36                              # 0x24
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	23                              # 0x17
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	22                              # 0x16
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	21                              # 0x15
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	31                              # 0x1f
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	26                              # 0x1a
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	25                              # 0x19
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	23                              # 0x17
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	22                              # 0x16
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	31                              # 0x1f
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	30                              # 0x1e
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	29                              # 0x1d
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	28                              # 0x1c
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	27                              # 0x1b
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	31                              # 0x1f
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	30                              # 0x1e
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	29                              # 0x1d
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	28                              # 0x1c
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	27                              # 0x1b
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.size	dct_code_tab2a, 300

	.type	dct_code_tab2,@object           # @dct_code_tab2
dct_code_tab2:
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	20                              # 0x14
	.byte	12                              # 0xc
	.byte	20                              # 0x14
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	36                              # 0x24
	.byte	8                               # 0x8
	.byte	28                              # 0x1c
	.byte	12                              # 0xc
	.byte	19                              # 0x13
	.byte	13                              # 0xd
	.zero	2
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	15                              # 0xf
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	30                              # 0x1e
	.byte	12                              # 0xc
	.byte	20                              # 0x14
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	21                              # 0x15
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.byte	39                              # 0x27
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.byte	35                              # 0x23
	.byte	8                               # 0x8
	.byte	26                              # 0x1a
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	34                              # 0x22
	.byte	8                               # 0x8
	.byte	25                              # 0x19
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	32                              # 0x20
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	14                              # 0xe
	.byte	10                              # 0xa
	.byte	23                              # 0x17
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	22                              # 0x16
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	21                              # 0x15
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.byte	31                              # 0x1f
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	26                              # 0x1a
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	25                              # 0x19
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	23                              # 0x17
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	22                              # 0x16
	.byte	12                              # 0xc
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	31                              # 0x1f
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	30                              # 0x1e
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	29                              # 0x1d
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	28                              # 0x1c
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	27                              # 0x1b
	.byte	13                              # 0xd
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	31                              # 0x1f
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	30                              # 0x1e
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	29                              # 0x1d
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	28                              # 0x1c
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	27                              # 0x1b
	.byte	16                              # 0x10
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.size	dct_code_tab2, 300

	.type	addrinctab,@object              # @addrinctab
addrinctab:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	23                              # 0x17
	.byte	10                              # 0xa
	.byte	22                              # 0x16
	.byte	10                              # 0xa
	.byte	21                              # 0x15
	.byte	10                              # 0xa
	.byte	20                              # 0x14
	.byte	10                              # 0xa
	.byte	19                              # 0x13
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	10                              # 0xa
	.byte	35                              # 0x23
	.byte	11                              # 0xb
	.byte	34                              # 0x22
	.byte	11                              # 0xb
	.byte	33                              # 0x21
	.byte	11                              # 0xb
	.byte	32                              # 0x20
	.byte	11                              # 0xb
	.byte	31                              # 0x1f
	.byte	11                              # 0xb
	.byte	30                              # 0x1e
	.byte	11                              # 0xb
	.byte	29                              # 0x1d
	.byte	11                              # 0xb
	.byte	28                              # 0x1c
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
	.byte	11                              # 0xb
	.byte	26                              # 0x1a
	.byte	11                              # 0xb
	.byte	25                              # 0x19
	.byte	11                              # 0xb
	.byte	24                              # 0x18
	.byte	11                              # 0xb
	.size	addrinctab, 66

	.type	motionvectab,@object            # @motionvectab
motionvectab:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	17                              # 0x11
	.byte	10                              # 0xa
	.byte	16                              # 0x10
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.size	motionvectab, 34

	.type	cbptable,@object                # @cbptable
cbptable:
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	11                              # 0xb
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	13                              # 0xd
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.byte	23                              # 0x17
	.byte	7                               # 0x7
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.byte	31                              # 0x1f
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	4                               # 0x4
	.byte	22                              # 0x16
	.byte	7                               # 0x7
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.byte	30                              # 0x1e
	.byte	8                               # 0x8
	.byte	19                              # 0x13
	.byte	5                               # 0x5
	.byte	27                              # 0x1b
	.byte	8                               # 0x8
	.byte	23                              # 0x17
	.byte	8                               # 0x8
	.byte	19                              # 0x13
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	21                              # 0x15
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.byte	29                              # 0x1d
	.byte	8                               # 0x8
	.byte	17                              # 0x11
	.byte	5                               # 0x5
	.byte	25                              # 0x19
	.byte	8                               # 0x8
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.byte	17                              # 0x11
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	9                               # 0x9
	.byte	15                              # 0xf
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.byte	28                              # 0x1c
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	9                               # 0x9
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.byte	24                              # 0x18
	.byte	8                               # 0x8
	.byte	20                              # 0x14
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	5                               # 0x5
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	18                              # 0x12
	.byte	5                               # 0x5
	.byte	26                              # 0x1a
	.byte	8                               # 0x8
	.byte	22                              # 0x16
	.byte	8                               # 0x8
	.byte	18                              # 0x12
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	12                              # 0xc
	.byte	6                               # 0x6
	.size	cbptable, 128

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DC value out of range (%d)\n"
	.size	.L.str.1, 28

	.type	dct_code_tab1a,@object          # @dct_code_tab1a
	.section	.rodata,"a",@progbits
dct_code_tab1a:
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	4                               # 0x4
	.byte	28                              # 0x1c
	.byte	5                               # 0x5
	.byte	29                              # 0x1d
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	123                             # 0x7b
	.byte	7                               # 0x7
	.byte	124                             # 0x7c
	.byte	7                               # 0x7
	.byte	35                              # 0x23
	.byte	8                               # 0x8
	.byte	34                              # 0x22
	.byte	8                               # 0x8
	.byte	250                             # 0xfa
	.byte	8                               # 0x8
	.byte	251                             # 0xfb
	.byte	8                               # 0x8
	.byte	254                             # 0xfe
	.byte	8                               # 0x8
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	31                              # 0x1f
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	14                              # 0xe
	.byte	29                              # 0x1d
	.byte	14                              # 0xe
	.byte	28                              # 0x1c
	.byte	14                              # 0xe
	.byte	27                              # 0x1b
	.byte	14                              # 0xe
	.byte	26                              # 0x1a
	.byte	14                              # 0xe
	.byte	25                              # 0x19
	.byte	14                              # 0xe
	.byte	24                              # 0x18
	.byte	14                              # 0xe
	.byte	23                              # 0x17
	.byte	14                              # 0xe
	.byte	22                              # 0x16
	.byte	14                              # 0xe
	.byte	21                              # 0x15
	.byte	14                              # 0xe
	.byte	20                              # 0x14
	.byte	14                              # 0xe
	.byte	19                              # 0x13
	.byte	14                              # 0xe
	.byte	18                              # 0x12
	.byte	14                              # 0xe
	.byte	17                              # 0x11
	.byte	14                              # 0xe
	.byte	16                              # 0x10
	.byte	14                              # 0xe
	.byte	24                              # 0x18
	.byte	15                              # 0xf
	.byte	23                              # 0x17
	.byte	15                              # 0xf
	.byte	22                              # 0x16
	.byte	15                              # 0xf
	.byte	21                              # 0x15
	.byte	15                              # 0xf
	.byte	20                              # 0x14
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	15                              # 0xf
	.byte	18                              # 0x12
	.byte	15                              # 0xf
	.byte	17                              # 0x11
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	121                             # 0x79
	.byte	7                               # 0x7
	.byte	39                              # 0x27
	.byte	8                               # 0x8
	.byte	32                              # 0x20
	.byte	8                               # 0x8
	.byte	22                              # 0x16
	.byte	13                              # 0xd
	.byte	21                              # 0x15
	.byte	13                              # 0xd
	.byte	31                              # 0x1f
	.byte	15                              # 0xf
	.byte	30                              # 0x1e
	.byte	15                              # 0xf
	.byte	29                              # 0x1d
	.byte	15                              # 0xf
	.byte	28                              # 0x1c
	.byte	15                              # 0xf
	.byte	27                              # 0x1b
	.byte	15                              # 0xf
	.byte	26                              # 0x1a
	.byte	15                              # 0xf
	.byte	25                              # 0x19
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	16                              # 0x10
	.byte	18                              # 0x12
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.zero	44
	.size	dct_code_tab1a, 160

	.type	dct_code_tab1,@object           # @dct_code_tab1
dct_code_tab1:
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	38                              # 0x26
	.byte	8                               # 0x8
	.byte	33                              # 0x21
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	29                              # 0x1d
	.byte	12                              # 0xc
	.byte	24                              # 0x18
	.byte	12                              # 0xc
	.byte	19                              # 0x13
	.byte	12                              # 0xc
	.byte	16                              # 0x10
	.byte	12                              # 0xc
	.byte	26                              # 0x1a
	.byte	13                              # 0xd
	.byte	25                              # 0x19
	.byte	13                              # 0xd
	.byte	24                              # 0x18
	.byte	13                              # 0xd
	.byte	23                              # 0x17
	.byte	13                              # 0xd
	.byte	31                              # 0x1f
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	14                              # 0xe
	.byte	29                              # 0x1d
	.byte	14                              # 0xe
	.byte	28                              # 0x1c
	.byte	14                              # 0xe
	.byte	27                              # 0x1b
	.byte	14                              # 0xe
	.byte	26                              # 0x1a
	.byte	14                              # 0xe
	.byte	25                              # 0x19
	.byte	14                              # 0xe
	.byte	24                              # 0x18
	.byte	14                              # 0xe
	.byte	23                              # 0x17
	.byte	14                              # 0xe
	.byte	22                              # 0x16
	.byte	14                              # 0xe
	.byte	21                              # 0x15
	.byte	14                              # 0xe
	.byte	20                              # 0x14
	.byte	14                              # 0xe
	.byte	19                              # 0x13
	.byte	14                              # 0xe
	.byte	18                              # 0x12
	.byte	14                              # 0xe
	.byte	17                              # 0x11
	.byte	14                              # 0xe
	.byte	16                              # 0x10
	.byte	14                              # 0xe
	.byte	24                              # 0x18
	.byte	15                              # 0xf
	.byte	23                              # 0x17
	.byte	15                              # 0xf
	.byte	22                              # 0x16
	.byte	15                              # 0xf
	.byte	21                              # 0x15
	.byte	15                              # 0xf
	.byte	20                              # 0x14
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	15                              # 0xf
	.byte	18                              # 0x12
	.byte	15                              # 0xf
	.byte	17                              # 0x11
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	37                              # 0x25
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	27                              # 0x1b
	.byte	12                              # 0xc
	.byte	22                              # 0x16
	.byte	13                              # 0xd
	.byte	21                              # 0x15
	.byte	13                              # 0xd
	.byte	31                              # 0x1f
	.byte	15                              # 0xf
	.byte	30                              # 0x1e
	.byte	15                              # 0xf
	.byte	29                              # 0x1d
	.byte	15                              # 0xf
	.byte	28                              # 0x1c
	.byte	15                              # 0xf
	.byte	27                              # 0x1b
	.byte	15                              # 0xf
	.byte	26                              # 0x1a
	.byte	15                              # 0xf
	.byte	25                              # 0x19
	.byte	15                              # 0xf
	.byte	19                              # 0x13
	.byte	16                              # 0x10
	.byte	18                              # 0x12
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.zero	44
	.size	dct_code_tab1, 160

	.type	mbtypetab,@object               # @mbtypetab
mbtypetab:
	.zero	2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	28
	.zero	2
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.zero	2
	.zero	2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.zero	2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	2
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.zero	2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.zero	2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	2
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.zero	2
	.size	mbtypetab, 192

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
