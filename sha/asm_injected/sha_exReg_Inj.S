	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"sha.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha256_transform                # -- Begin function sha256_transform
	.p2align	2
	.type	sha256_transform,@function
sha256_transform:                       # @sha256_transform
.Lsha256_transform$local:
	.type	.Lsha256_transform$local,@function
# %bb.0:
	addi	sp, sp, -256
	addi	a1, a1, 3
	mv	a3, sp
	addi	a2, sp, 64
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, -3(a1)
	lbu	a5, -2(a1)
	slli	a4, a4, 24
	lbu	a6, -1(a1)
	lbu	a7, 0(a1)
	slli	a5, a5, 16
	or	a4, a5, a4
	slli	a6, a6, 8
	or	a5, a6, a7
	or	a4, a4, a5
	sw	a4, 0(a3)
	addi	a3, a3, 4
	addi	a1, a1, 4
	bne	a3, a2, .LBB0_1
# %bb.2:
	lw	a3, 0(sp)
	addi	a1, sp, 256
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a4, -8(a2)
	srliw	a5, a4, 17
	slli	a6, a4, 15
	or	a5, a6, a5
	lw	a6, -28(a2)
	srliw	a7, a4, 19
	slli	t0, a4, 13
	or	a7, t0, a7
	add	a3, a6, a3
	lwu	a6, -60(a2)
	xor	a5, a5, a7
	srliw	a4, a4, 10
	xor	a4, a5, a4
	srli	a5, a6, 7
	slli	a7, a6, 25
	or	a5, a7, a5
	srli	a7, a6, 18
	slli	t0, a6, 14
	or	a7, t0, a7
	xor	a5, a5, a7
	srli	a7, a6, 3
	xor	a5, a5, a7
	add	a3, a4, a3
	add	a3, a3, a5
	sw	a3, 0(a2)
	addi	a2, a2, 4
	mv	a3, a6
	bne	a2, a1, .LBB0_3
# %bb.4:
	lw	t1, 80(a0)
	lw	t0, 84(a0)
	lw	a7, 88(a0)
	lw	a6, 92(a0)
	lw	a5, 96(a0)
	regsw_c	x0, 0x0(x0)		# 000000000000000000000
	lw	a4, 100(a0)
	lw	a3, 104(a0)
	lw	a2, 108(a0)
	mv	t2, sp
.Lpcrel_hi0:
	auipc	t3, %pcrel_hi(k)
	addi	t3, t3, %pcrel_lo(.Lpcrel_hi0)
	regsw_c	x9, 0x124(x16)		# 100000100100100100100
	mv	x6, t1
	mv	t6, t0
	mv	x5, a2
	mv	x8, a3
	mv	x9, a4
	mv	x7, a5
	mv	x4, a6
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, a7
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x4, 0x516(x27)		# 110110010010100010110
	mv	x2, x3
	mv	x1, x7
	mv	t5, x9
	mv	t4, x8
	mv	x3, t6
	mv	t6, x6
	srliw	x6, x7, 6
	regsw_c	x29, 0x5fe(x27)		# 110111110110111111110
	slli	x7, x7, 26
	or	x6, x7, x6
	srliw	x7, x1, 11
	slli	x8, x1, 21
	or	x7, x8, x7
	xor	x6, x6, x7
	srliw	x7, x1, 25
	regsw_c	x31, 0x7ac(x27)		# 110111111111110101100
	slli	x8, x1, 7
	or	x7, x8, x7
	xor	x6, x6, x7
	and	x7, x9, x1
	not	x8, x1
	and	x8, t4, x8
	lw	x9, 0(t3)
	regsw_c	x31, 0x7fc(x19)		# 100111111111111111100
	lw	x10, 0(t2)
	add	x5, x7, x5
	add	x5, x5, x8
	add	x5, x6, x5
	add	x9, x9, x10
	add	x5, x5, x9
	srliw	x6, t6, 2
	regsw_c	x25, 0x1fc(x19)		# 100111100100111111100
	slli	x7, t6, 30
	or	x6, x7, x6
	srliw	x7, t6, 13
	slli	x8, t6, 19
	or	x7, x8, x7
	xor	x6, x6, x7
	srliw	x7, t6, 22
	regsw_c	x31, 0x77f(x19)		# 100111111111101111111
	slli	x8, t6, 10
	or	x7, x8, x7
	xor	x6, x6, x7
	xor	x7, x3, x2
	and	x7, t6, x7
	and	x8, x3, x2
	xor	x7, x7, x8
	regsw_c	x30, 0x24(x31)		# 111111111000000100100
	add	x6, x6, x7
	add	x7, x5, x4
	add	x6, x6, x5
	addi	t2, t2, 4
	addi	t3, t3, 4
	mv	x5, t4
	mv	x8, t5
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	mv	x9, x1
	mv	x4, x2
	bne	t2, a1, .LBB0_5
# %bb.6:
	regsw_c	x0, 0x82(x8)		# 010000000000010000010
	add	t1, x6, t1
	sw	t1, 80(a0)
	add	t0, t6, t0
	sw	t0, 84(a0)
	add	a7, x3, a7
	sw	a7, 88(a0)
	add	a6, x2, a6
	sw	a6, 92(a0)
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	add	a5, x7, a5
	sw	a5, 96(a0)
	add	a4, x1, a4
	sw	a4, 100(a0)
	add	a3, t5, a3
	sw	a3, 104(a0)
	add	a2, t4, a2
	sw	a2, 108(a0)
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	sha256_transform, .Lfunc_end0-sha256_transform
	.size	.Lsha256_transform$local, .Lfunc_end0-sha256_transform
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function sha256_init
.LCPI1_0:
	.quad	-4942790177982912921            # 0xbb67ae856a09e667
.LCPI1_1:
	.quad	-6534734903820487822            # 0xa54ff53a3c6ef372
.LCPI1_2:
	.quad	-7276294671082564993            # 0x9b05688c510e527f
.LCPI1_3:
	.quad	6620516960021240235             # 0x5be0cd191f83d9ab
	.text
	.globl	sha256_init
	.p2align	2
	.type	sha256_init,@function
sha256_init:                            # @sha256_init
.Lsha256_init$local:
	.type	.Lsha256_init$local,@function
# %bb.0:
	sw	zero, 64(a0)
	sd	zero, 72(a0)
.Lpcrel_hi1:
	auipc	a1, %pcrel_hi(.LCPI1_0)
	ld	a1, %pcrel_lo(.Lpcrel_hi1)(a1)
.Lpcrel_hi2:
	auipc	a2, %pcrel_hi(.LCPI1_1)
	ld	a2, %pcrel_lo(.Lpcrel_hi2)(a2)
.Lpcrel_hi3:
	auipc	a3, %pcrel_hi(.LCPI1_2)
	ld	a3, %pcrel_lo(.Lpcrel_hi3)(a3)
.Lpcrel_hi4:
	auipc	a4, %pcrel_hi(.LCPI1_3)
	ld	a4, %pcrel_lo(.Lpcrel_hi4)(a4)
	sd	a1, 80(a0)
	sd	a2, 88(a0)
	sd	a3, 96(a0)
	sd	a4, 104(a0)
	ret
.Lfunc_end1:
	.size	sha256_init, .Lfunc_end1-sha256_init
	.size	.Lsha256_init$local, .Lfunc_end1-sha256_init
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha256_update                   # -- Begin function sha256_update
	.p2align	2
	.type	sha256_update,@function
sha256_update:                          # @sha256_update
.Lsha256_update$local:
	.type	.Lsha256_update$local,@function
# %bb.0:
	beqz	a2, .LBB2_6
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	regsw_c	x0, 0x120(x18)		# 100100000000100100000
	mv	x11, a2
	mv	x12, a1
	lw	a1, 64(a0)
	li	a2, 0
	li	x13, 1
	li	x14, 64
	j	.LBB2_3
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	regsw_c	x12, 0x200(x8)		# 010000110001000000000
	slli	a2, x13, 32
	srli	a2, a2, 32
	addi	x13, x13, 1
	bgeu	a2, x11, .LBB2_5
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a2, x12, a2
	lbu	a2, 0(a2)
	slli	a1, a1, 32
	srli	a1, a1, 32
	add	a1, a0, a1
	sb	a2, 0(a1)
	lw	a1, 64(a0)
	addiw	a1, a1, 1
	sw	a1, 64(a0)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bne	a1, x14, .LBB2_2
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	mv	a1, a0
	call	.Lsha256_transform$local
	ld	a2, 72(a0)
	li	a1, 0
	addi	a2, a2, 512
	sd	a2, 72(a0)
	sw	zero, 64(a0)
	j	.LBB2_2
.LBB2_5:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
.LBB2_6:
	ret
.Lfunc_end2:
	.size	sha256_update, .Lfunc_end2-sha256_update
	.size	.Lsha256_update$local, .Lfunc_end2-sha256_update
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha256_final                    # -- Begin function sha256_final
	.p2align	2
	.type	sha256_final,@function
sha256_final:                           # @sha256_final
.Lsha256_final$local:
	.type	.Lsha256_final$local,@function
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lwu	a2, 64(a0)
	mv	s1, a1
	add	a0, a0, a2
	li	a3, 128
	li	a1, 55
	sb	a3, 0(a0)
	bltu	a1, a2, .LBB3_3
# %bb.1:
	beq	a2, a1, .LBB3_6
# %bb.2:
	addi	a0, a0, 1
	li	a1, 55
	subw	a2, a1, a2
	li	a1, 0
	call	memset
	j	.LBB3_6
.LBB3_3:
	addiw	a0, a2, 1
	li	a1, 63
	bltu	a1, a0, .LBB3_5
# %bb.4:
	add	a0, s0, a0
	li	a1, 62
	subw	a1, a1, a2
	addi	a2, a1, 1
	li	a1, 0
	call	memset
.LBB3_5:
	mv	a0, s0
	mv	a1, s0
	call	.Lsha256_transform$local
	sd	zero, 48(s0)
	sd	zero, 40(s0)
	sd	zero, 32(s0)
	sd	zero, 24(s0)
	sd	zero, 16(s0)
	sd	zero, 8(s0)
	sd	zero, 0(s0)
.LBB3_6:
	lw	a0, 64(s0)
	ld	a1, 72(s0)
	slli	a0, a0, 35
	srli	a0, a0, 32
	add	a0, a1, a0
	sd	a0, 72(s0)
	sb	a0, 63(s0)
	srli	a1, a0, 8
	sb	a1, 62(s0)
	srli	a1, a0, 16
	sb	a1, 61(s0)
	srli	a1, a0, 24
	sb	a1, 60(s0)
	srli	a1, a0, 32
	sb	a1, 59(s0)
	srli	a1, a0, 40
	sb	a1, 58(s0)
	srli	a1, a0, 48
	sb	a1, 57(s0)
	srli	a0, a0, 56
	sb	a0, 56(s0)
	mv	a0, s0
	mv	a1, s0
	call	.Lsha256_transform$local
	lbu	a0, 83(s0)
	sb	a0, 0(s1)
	lbu	a0, 87(s0)
	sb	a0, 4(s1)
	lbu	a0, 91(s0)
	sb	a0, 8(s1)
	lbu	a0, 95(s0)
	sb	a0, 12(s1)
	lbu	a0, 99(s0)
	sb	a0, 16(s1)
	lbu	a0, 103(s0)
	sb	a0, 20(s1)
	lbu	a0, 107(s0)
	sb	a0, 24(s1)
	lbu	a0, 111(s0)
	sb	a0, 28(s1)
	lbu	a0, 82(s0)
	sb	a0, 1(s1)
	lbu	a0, 86(s0)
	sb	a0, 5(s1)
	lbu	a0, 90(s0)
	sb	a0, 9(s1)
	lbu	a0, 94(s0)
	sb	a0, 13(s1)
	lbu	a0, 98(s0)
	sb	a0, 17(s1)
	lbu	a0, 102(s0)
	sb	a0, 21(s1)
	lbu	a0, 106(s0)
	sb	a0, 25(s1)
	lbu	a0, 110(s0)
	sb	a0, 29(s1)
	lbu	a0, 81(s0)
	sb	a0, 2(s1)
	lbu	a0, 85(s0)
	sb	a0, 6(s1)
	lbu	a0, 89(s0)
	sb	a0, 10(s1)
	lbu	a0, 93(s0)
	sb	a0, 14(s1)
	lbu	a0, 97(s0)
	sb	a0, 18(s1)
	lbu	a0, 101(s0)
	sb	a0, 22(s1)
	lbu	a0, 105(s0)
	sb	a0, 26(s1)
	lbu	a0, 109(s0)
	sb	a0, 30(s1)
	lbu	a0, 80(s0)
	sb	a0, 3(s1)
	lbu	a0, 84(s0)
	sb	a0, 7(s1)
	lbu	a0, 88(s0)
	sb	a0, 11(s1)
	lbu	a0, 92(s0)
	sb	a0, 15(s1)
	lbu	a0, 96(s0)
	sb	a0, 19(s1)
	regsw_c	x0, 0x0(x0)		# 000000000000000000000
	lbu	a0, 100(s0)
	sb	a0, 23(s1)
	lbu	a0, 104(s0)
	sb	a0, 27(s1)
	lbu	a0, 108(s0)
	sb	a0, 31(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	sha256_final, .Lfunc_end3-sha256_final
	.size	.Lsha256_final$local, .Lfunc_end3-sha256_final
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	use_64_registers                # -- Begin function use_64_registers
	.p2align	2
	.type	use_64_registers,@function
use_64_registers:                       # @use_64_registers
.Luse_64_registers$local:
	.type	.Luse_64_registers$local,@function
# %bb.0:
	li	a1, 2016
	sw	a1, 0(a0)
	ret
.Lfunc_end4:
	.size	use_64_registers, .Lfunc_end4-use_64_registers
	.size	.Luse_64_registers$local, .Lfunc_end4-use_64_registers
                                        # -- End function
	.option	pop
	.type	k,@object                       # @k
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
k:
	.word	1116352408                      # 0x428a2f98
	.word	1899447441                      # 0x71374491
	.word	3049323471                      # 0xb5c0fbcf
	.word	3921009573                      # 0xe9b5dba5
	.word	961987163                       # 0x3956c25b
	.word	1508970993                      # 0x59f111f1
	.word	2453635748                      # 0x923f82a4
	.word	2870763221                      # 0xab1c5ed5
	.word	3624381080                      # 0xd807aa98
	.word	310598401                       # 0x12835b01
	.word	607225278                       # 0x243185be
	.word	1426881987                      # 0x550c7dc3
	.word	1925078388                      # 0x72be5d74
	.word	2162078206                      # 0x80deb1fe
	.word	2614888103                      # 0x9bdc06a7
	.word	3248222580                      # 0xc19bf174
	.word	3835390401                      # 0xe49b69c1
	.word	4022224774                      # 0xefbe4786
	.word	264347078                       # 0xfc19dc6
	.word	604807628                       # 0x240ca1cc
	.word	770255983                       # 0x2de92c6f
	.word	1249150122                      # 0x4a7484aa
	.word	1555081692                      # 0x5cb0a9dc
	.word	1996064986                      # 0x76f988da
	.word	2554220882                      # 0x983e5152
	.word	2821834349                      # 0xa831c66d
	.word	2952996808                      # 0xb00327c8
	.word	3210313671                      # 0xbf597fc7
	.word	3336571891                      # 0xc6e00bf3
	.word	3584528711                      # 0xd5a79147
	.word	113926993                       # 0x6ca6351
	.word	338241895                       # 0x14292967
	.word	666307205                       # 0x27b70a85
	.word	773529912                       # 0x2e1b2138
	.word	1294757372                      # 0x4d2c6dfc
	.word	1396182291                      # 0x53380d13
	.word	1695183700                      # 0x650a7354
	.word	1986661051                      # 0x766a0abb
	.word	2177026350                      # 0x81c2c92e
	.word	2456956037                      # 0x92722c85
	.word	2730485921                      # 0xa2bfe8a1
	.word	2820302411                      # 0xa81a664b
	.word	3259730800                      # 0xc24b8b70
	.word	3345764771                      # 0xc76c51a3
	.word	3516065817                      # 0xd192e819
	.word	3600352804                      # 0xd6990624
	.word	4094571909                      # 0xf40e3585
	.word	275423344                       # 0x106aa070
	.word	430227734                       # 0x19a4c116
	.word	506948616                       # 0x1e376c08
	.word	659060556                       # 0x2748774c
	.word	883997877                       # 0x34b0bcb5
	.word	958139571                       # 0x391c0cb3
	.word	1322822218                      # 0x4ed8aa4a
	.word	1537002063                      # 0x5b9cca4f
	.word	1747873779                      # 0x682e6ff3
	.word	1955562222                      # 0x748f82ee
	.word	2024104815                      # 0x78a5636f
	.word	2227730452                      # 0x84c87814
	.word	2361852424                      # 0x8cc70208
	.word	2428436474                      # 0x90befffa
	.word	2756734187                      # 0xa4506ceb
	.word	3204031479                      # 0xbef9a3f7
	.word	3329325298                      # 0xc67178f2
	.size	k, 256

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
