	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"putvlc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	put_mv                          # -- Begin function put_mv
	.p2align	2
	.type	put_mv,@function
put_mv:                                 # @put_mv
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	li	a1, 31
	mv	s0, a0
	blt	a1, a0, .LBB0_2
# %bb.1:
	mv	a0, s0
	j	.LBB0_3
.LBB0_2:
	li	a0, 64
	subw	a0, a0, s0
.LBB0_3:
	slli	a0, a0, 3
	lui	a1, %hi(mvtab)
	addi	a1, a1, %lo(mvtab)
	add	a0, a1, a0
	lw	s1, 4(a0)
	lw	a1, 0(a0)
	mv	a0, s1
	call	putbits
	beqz	s0, .LBB0_5
# %bb.4:
	slti	a0, s0, 32
	xori	a1, a0, 1
	li	a0, 1
	call	putbits
	addiw	s1, s1, 1
.LBB0_5:
	mv	a0, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	put_mv, .Lfunc_end0-put_mv
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	put_cbpcm_intra                 # -- Begin function put_cbpcm_intra
	.p2align	2
	.type	put_cbpcm_intra,@function
put_cbpcm_intra:                        # @put_cbpcm_intra
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	slli	a1, a1, 62
	srli	a1, a1, 63
	slli	a0, a0, 2
	andi	a0, a0, 12
	or	a0, a1, a0
	slli	a0, a0, 3
	lui	a1, %hi(cbpcm_intra_tab)
	addi	a1, a1, %lo(cbpcm_intra_tab)
	add	a0, a1, a0
	lw	s0, 4(a0)
	lw	a1, 0(a0)
	mv	a0, s0
	call	putbits
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	put_cbpcm_intra, .Lfunc_end1-put_cbpcm_intra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	put_cbpcm_inter                 # -- Begin function put_cbpcm_inter
	.p2align	2
	.type	put_cbpcm_inter,@function
put_cbpcm_inter:                        # @put_cbpcm_inter
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	andi	a1, a1, 7
	slli	a0, a0, 3
	andi	a0, a0, 24
	or	a0, a1, a0
	slli	a0, a0, 3
	lui	a1, %hi(cbpcm_inter_tab)
	addi	a1, a1, %lo(cbpcm_inter_tab)
	add	a0, a1, a0
	lw	s0, 4(a0)
	lw	a1, 0(a0)
	mv	a0, s0
	call	putbits
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	put_cbpcm_inter, .Lfunc_end2-put_cbpcm_inter
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	put_cbpy                        # -- Begin function put_cbpy
	.p2align	2
	.type	put_cbpy,@function
put_cbpy:                               # @put_cbpy
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	srli	a0, a0, 2
	slti	a1, a1, 3
	negw	a1, a1
	andi	a1, a1, 15
	xor	a0, a0, a1
	slli	a0, a0, 3
	lui	a1, %hi(cbpy_tab)
	addi	a1, a1, %lo(cbpy_tab)
	add	a0, a1, a0
	lw	s0, 4(a0)
	lw	a1, 0(a0)
	mv	a0, s0
	call	putbits
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	put_cbpy, .Lfunc_end3-put_cbpy
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	put_coeff                       # -- Begin function put_coeff
	.p2align	2
	.type	put_coeff,@function
put_coeff:                              # @put_coeff
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a3, 2
	bgeu	a2, a3, .LBB4_19
# %bb.1:
	li	a3, 64
	bgeu	a0, a3, .LBB4_20
# %bb.2:
	addiw	a3, a1, -1
	li	a4, 127
	bgeu	a3, a4, .LBB4_21
# %bb.3:
	beqz	a2, .LBB4_7
# %bb.4:
	li	a2, 1
	bltu	a2, a0, .LBB4_10
# %bb.5:
	li	a2, 3
	bltu	a2, a1, .LBB4_10
# %bb.6:
	li	a1, 24
	mul	a0, a0, a1
	lui	a1, %hi(coeff_tab2)
	addi	a1, a1, %lo(coeff_tab2)
	j	.LBB4_16
.LBB4_7:
	li	a2, 1
	bltu	a2, a0, .LBB4_13
# %bb.8:
	li	a2, 12
	bltu	a2, a1, .LBB4_13
# %bb.9:
	li	a1, 96
	mul	a0, a0, a1
	lui	a1, %hi(coeff_tab0)
	addi	a1, a1, %lo(coeff_tab0)
	j	.LBB4_16
.LBB4_10:
	addiw	a0, a0, -2
	li	a2, 39
	li	s0, 0
	bltu	a2, a0, .LBB4_18
# %bb.11:
	li	a2, 1
	bne	a1, a2, .LBB4_18
# %bb.12:
	slli	a0, a0, 3
	lui	a1, %hi(coeff_tab3)
	addi	a1, a1, %lo(coeff_tab3)
	add	a0, a1, a0
	j	.LBB4_17
.LBB4_13:
	addiw	a0, a0, -2
	li	a2, 24
	li	s0, 0
	bltu	a2, a0, .LBB4_18
# %bb.14:
	li	a2, 4
	bltu	a2, a1, .LBB4_18
# %bb.15:
	slli	a0, a0, 5
	lui	a1, %hi(coeff_tab1)
	addi	a1, a1, %lo(coeff_tab1)
.LBB4_16:
	add	a0, a1, a0
	slli	a3, a3, 3
	add	a0, a0, a3
.LBB4_17:
	lw	s0, 4(a0)
	lw	a1, 0(a0)
	mv	a0, s0
	call	putbits
.LBB4_18:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB4_19:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.put_coeff)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.put_coeff)
	li	a2, 115
	call	__assert_fail
.LBB4_20:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.put_coeff)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.put_coeff)
	li	a2, 116
	call	__assert_fail
.LBB4_21:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.put_coeff)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.put_coeff)
	li	a2, 117
	call	__assert_fail
.Lfunc_end4:
	.size	put_coeff, .Lfunc_end4-put_coeff
                                        # -- End function
	.option	pop
	.type	mvtab,@object                   # @mvtab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
mvtab:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	17                              # 0x11
	.word	10                              # 0xa
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	15                              # 0xf
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	6                               # 0x6
	.word	10                              # 0xa
	.word	5                               # 0x5
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	7                               # 0x7
	.word	11                              # 0xb
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	5                               # 0x5
	.word	11                              # 0xb
	.word	4                               # 0x4
	.word	11                              # 0xb
	.word	3                               # 0x3
	.word	11                              # 0xb
	.word	2                               # 0x2
	.word	11                              # 0xb
	.word	3                               # 0x3
	.word	12                              # 0xc
	.word	2                               # 0x2
	.word	12                              # 0xc
	.size	mvtab, 264

	.type	cbpcm_intra_tab,@object         # @cbpcm_intra_tab
	.p2align	2, 0x0
cbpcm_intra_tab:
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4                               # 0x4
	.zero	8
	.zero	8
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	6                               # 0x6
	.zero	8
	.zero	8
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	6                               # 0x6
	.zero	8
	.zero	8
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	6                               # 0x6
	.size	cbpcm_intra_tab, 120

	.type	cbpcm_inter_tab,@object         # @cbpcm_inter_tab
	.p2align	2, 0x0
cbpcm_inter_tab:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	3                               # 0x3
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	2                               # 0x2
	.word	9                               # 0x9
	.size	cbpcm_inter_tab, 232

	.type	cbpy_tab,@object                # @cbpy_tab
	.p2align	2, 0x0
cbpy_tab:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	9                               # 0x9
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.size	cbpy_tab, 128

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"last >= 0 && last < 2"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"putvlc.c"
	.size	.L.str.1, 9

	.type	.L__PRETTY_FUNCTION__.put_coeff,@object # @__PRETTY_FUNCTION__.put_coeff
.L__PRETTY_FUNCTION__.put_coeff:
	.asciz	"int put_coeff(int, int, int)"
	.size	.L__PRETTY_FUNCTION__.put_coeff, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"run >= 0 && run < 64"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"level > 0 && level < 128"
	.size	.L.str.3, 25

	.type	coeff_tab0,@object              # @coeff_tab0
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
coeff_tab0:
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	15                              # 0xf
	.word	4                               # 0x4
	.word	21                              # 0x15
	.word	6                               # 0x6
	.word	23                              # 0x17
	.word	7                               # 0x7
	.word	31                              # 0x1f
	.word	8                               # 0x8
	.word	37                              # 0x25
	.word	9                               # 0x9
	.word	36                              # 0x24
	.word	9                               # 0x9
	.word	33                              # 0x21
	.word	10                              # 0xa
	.word	32                              # 0x20
	.word	10                              # 0xa
	.word	7                               # 0x7
	.word	11                              # 0xb
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	20                              # 0x14
	.word	6                               # 0x6
	.word	30                              # 0x1e
	.word	8                               # 0x8
	.word	15                              # 0xf
	.word	10                              # 0xa
	.word	33                              # 0x21
	.word	11                              # 0xb
	.word	80                              # 0x50
	.word	12                              # 0xc
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.size	coeff_tab0, 192

	.type	coeff_tab1,@object              # @coeff_tab1
	.p2align	2, 0x0
coeff_tab1:
	.word	14                              # 0xe
	.word	4                               # 0x4
	.word	29                              # 0x1d
	.word	8                               # 0x8
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	81                              # 0x51
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	5                               # 0x5
	.word	35                              # 0x23
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	10                              # 0xa
	.zero	8
	.word	12                              # 0xc
	.word	5                               # 0x5
	.word	34                              # 0x22
	.word	9                               # 0x9
	.word	82                              # 0x52
	.word	12                              # 0xc
	.zero	8
	.word	11                              # 0xb
	.word	5                               # 0x5
	.word	12                              # 0xc
	.word	10                              # 0xa
	.word	83                              # 0x53
	.word	12                              # 0xc
	.zero	8
	.word	19                              # 0x13
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	84                              # 0x54
	.word	12                              # 0xc
	.zero	8
	.word	18                              # 0x12
	.word	6                               # 0x6
	.word	10                              # 0xa
	.word	10                              # 0xa
	.zero	8
	.zero	8
	.word	17                              # 0x11
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	10                              # 0xa
	.zero	8
	.zero	8
	.word	16                              # 0x10
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	10                              # 0xa
	.zero	8
	.zero	8
	.word	22                              # 0x16
	.word	7                               # 0x7
	.word	85                              # 0x55
	.word	12                              # 0xc
	.zero	8
	.zero	8
	.word	21                              # 0x15
	.word	7                               # 0x7
	.zero	8
	.zero	8
	.zero	8
	.word	20                              # 0x14
	.word	7                               # 0x7
	.zero	8
	.zero	8
	.zero	8
	.word	28                              # 0x1c
	.word	8                               # 0x8
	.zero	8
	.zero	8
	.zero	8
	.word	27                              # 0x1b
	.word	8                               # 0x8
	.zero	8
	.zero	8
	.zero	8
	.word	33                              # 0x21
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	32                              # 0x20
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	31                              # 0x1f
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	30                              # 0x1e
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	29                              # 0x1d
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	28                              # 0x1c
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	27                              # 0x1b
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	26                              # 0x1a
	.word	9                               # 0x9
	.zero	8
	.zero	8
	.zero	8
	.word	34                              # 0x22
	.word	11                              # 0xb
	.zero	8
	.zero	8
	.zero	8
	.word	35                              # 0x23
	.word	11                              # 0xb
	.zero	8
	.zero	8
	.zero	8
	.word	86                              # 0x56
	.word	12                              # 0xc
	.zero	8
	.zero	8
	.zero	8
	.word	87                              # 0x57
	.word	12                              # 0xc
	.zero	8
	.zero	8
	.zero	8
	.size	coeff_tab1, 800

	.type	coeff_tab2,@object              # @coeff_tab2
	.p2align	2, 0x0
coeff_tab2:
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	25                              # 0x19
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	11                              # 0xb
	.zero	8
	.size	coeff_tab2, 48

	.type	coeff_tab3,@object              # @coeff_tab3
	.p2align	2, 0x0
coeff_tab3:
	.word	14                              # 0xe
	.word	6                               # 0x6
	.word	13                              # 0xd
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	19                              # 0x13
	.word	7                               # 0x7
	.word	18                              # 0x12
	.word	7                               # 0x7
	.word	17                              # 0x11
	.word	7                               # 0x7
	.word	16                              # 0x10
	.word	7                               # 0x7
	.word	26                              # 0x1a
	.word	8                               # 0x8
	.word	25                              # 0x19
	.word	8                               # 0x8
	.word	24                              # 0x18
	.word	8                               # 0x8
	.word	23                              # 0x17
	.word	8                               # 0x8
	.word	22                              # 0x16
	.word	8                               # 0x8
	.word	21                              # 0x15
	.word	8                               # 0x8
	.word	20                              # 0x14
	.word	8                               # 0x8
	.word	19                              # 0x13
	.word	8                               # 0x8
	.word	24                              # 0x18
	.word	9                               # 0x9
	.word	23                              # 0x17
	.word	9                               # 0x9
	.word	22                              # 0x16
	.word	9                               # 0x9
	.word	21                              # 0x15
	.word	9                               # 0x9
	.word	20                              # 0x14
	.word	9                               # 0x9
	.word	19                              # 0x13
	.word	9                               # 0x9
	.word	18                              # 0x12
	.word	9                               # 0x9
	.word	17                              # 0x11
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	6                               # 0x6
	.word	10                              # 0xa
	.word	5                               # 0x5
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	36                              # 0x24
	.word	11                              # 0xb
	.word	37                              # 0x25
	.word	11                              # 0xb
	.word	38                              # 0x26
	.word	11                              # 0xb
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	88                              # 0x58
	.word	12                              # 0xc
	.word	89                              # 0x59
	.word	12                              # 0xc
	.word	90                              # 0x5a
	.word	12                              # 0xc
	.word	91                              # 0x5b
	.word	12                              # 0xc
	.word	92                              # 0x5c
	.word	12                              # 0xc
	.word	93                              # 0x5d
	.word	12                              # 0xc
	.word	94                              # 0x5e
	.word	12                              # 0xc
	.word	95                              # 0x5f
	.word	12                              # 0xc
	.zero	8
	.size	coeff_tab3, 320

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
