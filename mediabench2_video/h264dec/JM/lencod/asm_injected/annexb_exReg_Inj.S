	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"annexb.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	WriteAnnexbNALU                 # -- Begin function WriteAnnexbNALU
	.p2align	2
	.type	WriteAnnexbNALU,@function
WriteAnnexbNALU:                        # @WriteAnnexbNALU
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB0_8
# %bb.1:
	mv	s0, a0
	lw	a0, 20(a0)
	bnez	a0, .LBB0_9
# %bb.2:
	lui	a0, %hi(f)
	ld	a1, %lo(f)(a0)
	beqz	a1, .LBB0_10
# %bb.3:
	lw	a0, 0(s0)
	addiw	a2, a0, -3
	li	a3, 2
	bgeu	a2, a3, .LBB0_11
# %bb.4:
	li	a2, 4
	li	s2, 24
	bltu	a0, a2, .LBB0_6
# %bb.5:
	li	a0, 0
	call	putc
	lui	a0, %hi(f)
	ld	a1, %lo(f)(a0)
	li	s2, 32
.LBB0_6:
	li	a0, 0
	call	putc
	lui	s3, %hi(f)
	ld	a1, %lo(f)(s3)
	li	a0, 0
	call	putc
	ld	a1, %lo(f)(s3)
	li	a0, 1
	call	putc
	lw	a0, 20(s0)
	lw	a1, 16(s0)
	slli	a0, a0, 7
	lw	a2, 12(s0)
	ld	a3, 24(s0)
	slli	a1, a1, 5
	or	a0, a1, a0
	or	a0, a0, a2
	sb	a0, 0(a3)
	lwu	s1, 4(s0)
	ld	a0, 24(s0)
	ld	a3, %lo(f)(s3)
	li	a1, 1
	mv	a2, s1
	call	fwrite
	lw	a1, 4(s0)
	bne	a0, s1, .LBB0_12
# %bb.7:
	ld	a0, %lo(f)(s3)
	slli	a1, a1, 3
	addw	s0, a1, s2
	call	fflush
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB0_8:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	li	a2, 38
	call	__assert_fail
.LBB0_9:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	li	a2, 39
	call	__assert_fail
.LBB0_10:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	li	a2, 40
	call	__assert_fail
.LBB0_11:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.WriteAnnexbNALU)
	li	a2, 41
	call	__assert_fail
.LBB0_12:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end0:
	.size	WriteAnnexbNALU, .Lfunc_end0-WriteAnnexbNALU
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	OpenAnnexbFile                  # -- Begin function OpenAnnexbFile
	.p2align	2
	.type	OpenAnnexbFile,@function
OpenAnnexbFile:                         # @OpenAnnexbFile
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen
	lui	a1, %hi(f)
	sd	a0, %lo(f)(a1)
	beqz	a0, .LBB1_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB1_2:
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	mv	a1, s0
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end1:
	.size	OpenAnnexbFile, .Lfunc_end1-OpenAnnexbFile
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CloseAnnexbFile                 # -- Begin function CloseAnnexbFile
	.p2align	2
	.type	CloseAnnexbFile,@function
CloseAnnexbFile:                        # @CloseAnnexbFile
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(f)
	ld	a0, %lo(f)(a0)
	call	fclose
	bnez	a0, .LBB2_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB2_2:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, -1
	call	exit
.Lfunc_end2:
	.size	CloseAnnexbFile, .Lfunc_end2-CloseAnnexbFile
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"n != NULL"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/annexb.c"
	.size	.L.str.1, 13

	.type	.L__PRETTY_FUNCTION__.WriteAnnexbNALU,@object # @__PRETTY_FUNCTION__.WriteAnnexbNALU
.L__PRETTY_FUNCTION__.WriteAnnexbNALU:
	.asciz	"int WriteAnnexbNALU(NALU_t *)"
	.size	.L__PRETTY_FUNCTION__.WriteAnnexbNALU, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"n->forbidden_bit == 0"
	.size	.L.str.2, 22

	.type	f,@object                       # @f
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
f:
	.quad	0
	.size	f, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"f != NULL"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"n->startcodeprefix_len == 3 || n->startcodeprefix_len == 4"
	.size	.L.str.4, 59

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Fatal: cannot write %d bytes to bitstream file, exit (-1)\n"
	.size	.L.str.5, 59

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"wb"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Fatal: cannot open Annex B bytestream file '%s', exit (-1)\n"
	.size	.L.str.7, 60

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Fatal: cannot close Annex B bytestream file, exit (-1)"
	.size	.Lstr, 55

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
