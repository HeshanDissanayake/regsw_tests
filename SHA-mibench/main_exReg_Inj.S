	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_f2p2_d2p2_zicsr2p0"
	.file	"main.c"
	.option	push
	.option	arch, +a, +m
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
.Lmain$local:
	.type	.Lmain$local,@function
# %bb.0:
	addi	sp, sp, -240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 216(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	li	a2, 2
	bge	a0, a2, .LBB0_2
# %bb.1:
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(stdin)
	ld	a1, %pcrel_lo(.Lpcrel_hi2)(a0)
	addi	a0, sp, 8
	call	sha_stream
	addi	a0, sp, 8
	call	sha_print
	j	.LBB0_6
.LBB0_2:
	addi	s3, a1, 8
	addi	a0, a0, -2
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	a0, a0, a1
	addi	s4, a0, 16
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(.L.str)
	addi	s0, a0, %pcrel_lo(.Lpcrel_hi0)
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(.L.str.1)
	addi	s1, a0, %pcrel_lo(.Lpcrel_hi1)
	j	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	mv	s2, a0
	addi	a0, sp, 8
	mv	a1, s2
	call	sha_stream
	addi	a0, sp, 8
	call	sha_print
	mv	a0, s2
	call	fclose
	addi	s3, s3, 8
	beq	s3, s4, .LBB0_6
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	mv	a1, s0
	call	fopen
	bnez	a0, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a1, 0(s3)
	mv	a0, s1
	call	printf
	addi	s3, s3, 8
	bne	s3, s4, .LBB0_4
.LBB0_6:
	li	a0, 0
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 240
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.size	.Lmain$local, .Lfunc_end0-main
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"error opening %s for reading\n"
	.size	.L.str.1, 30

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
