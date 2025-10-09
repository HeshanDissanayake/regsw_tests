	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"io.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ReadImage                       # -- Begin function ReadImage
	.p2align	2
	.type	ReadImage,@function
ReadImage:                              # @ReadImage
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a3, %hi(pels)
	lw	a3, %lo(pels)(a3)
	lui	a4, %hi(lines)
	lw	a4, %lo(lines)(a4)
	mv	s5, a2
	mv	s1, a1
	mv	s0, a0
	mul	a0, a3, a4
	slli	a1, a0, 1
	add	a0, a1, a0
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	s3, a0, 1
	mv	a0, s3
	call	malloc
	beqz	a0, .LBB0_5
# %bb.1:
	mv	s2, a0
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, s0
	call	fopen
	beqz	a0, .LBB0_6
# %bb.2:
	mv	s4, a0
	call	rewind
	mul	a0, s3, s1
	addw	a1, a0, s5
	mv	a0, s4
	li	a2, 0
	call	fseek
	bnez	a0, .LBB0_7
# %bb.3:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	mv	a2, s1
	call	fprintf
	li	a1, 1
	mv	a0, s2
	mv	a2, s3
	mv	a3, s4
	call	fread
	sext.w	a0, a0
	bne	s3, a0, .LBB0_8
# %bb.4:
	mv	a0, s4
	call	fclose
	mv	a0, s2
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB0_5:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 34
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.LBB0_6:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, s0
	call	fprintf
	li	a0, -1
	call	exit
.LBB0_7:
	lui	s2, %hi(stderr)
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	j	.LBB0_9
.LBB0_8:
	lui	s2, %hi(stderr)
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
.LBB0_9:
	mv	a2, s1
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a2, s0
	call	fprintf
	li	a0, -1
	call	exit
.Lfunc_end0:
	.size	ReadImage, .Lfunc_end0-ReadImage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FillImage                       # -- Begin function FillImage
	.p2align	2
	.type	FillImage,@function
FillImage:                              # @FillImage
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(pels)
	lw	a1, %lo(pels)(s2)
	lui	s3, %hi(lines)
	lw	a2, %lo(lines)(s3)
	mv	s0, a0
	mulw	a0, a2, a1
	call	InitImage
	mv	s1, a0
	lw	a1, %lo(pels)(s2)
	lw	a2, %lo(lines)(s3)
	ld	a0, 0(a0)
	mulw	a2, a2, a1
	mv	a1, s0
	call	memcpy
	lw	a1, %lo(pels)(s2)
	lw	a2, %lo(lines)(s3)
	ld	a0, 16(s1)
	mulw	a2, a2, a1
	add	a1, s0, a2
	sraiw	a3, a2, 31
	srliw	a3, a3, 30
	add	a2, a2, a3
	sraiw	a2, a2, 2
	call	memcpy
	lw	a1, %lo(pels)(s2)
	lw	a2, %lo(lines)(s3)
	ld	a0, 8(s1)
	mulw	a1, a2, a1
	add	a3, s0, a1
	sraiw	a2, a1, 31
	srliw	a2, a2, 30
	add	a1, a1, a2
	sraiw	a2, a1, 2
	add	a1, a3, a2
	call	memcpy
	mv	a0, s0
	call	free
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	FillImage, .Lfunc_end1-FillImage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitImage                       # -- Begin function InitImage
	.p2align	2
	.type	InitImage,@function
InitImage:                              # @InitImage
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	li	a0, 24
	call	malloc
	beqz	a0, .LBB2_5
# %bb.1:
	mv	s0, a0
	mv	a0, s1
	call	malloc
	sd	a0, 0(s0)
	beqz	a0, .LBB2_6
# %bb.2:
	srli	s1, s1, 2
	mv	a0, s1
	call	malloc
	sd	a0, 8(s0)
	beqz	a0, .LBB2_7
# %bb.3:
	mv	a0, s1
	call	malloc
	sd	a0, 16(s0)
	beqz	a0, .LBB2_8
# %bb.4:
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB2_5:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	j	.LBB2_9
.LBB2_6:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	li	a1, 39
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.LBB2_7:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	j	.LBB2_9
.LBB2_8:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
.LBB2_9:
	li	a1, 32
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end2:
	.size	InitImage, .Lfunc_end2-InitImage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	WriteImage                      # -- Begin function WriteImage
	.p2align	2
	.type	WriteImage,@function
WriteImage:                             # @WriteImage
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	mv	s2, a0
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	mv	a0, s0
	call	fopen
	beqz	a0, .LBB3_6
# %bb.1:
	mv	s1, a0
	lui	s3, %hi(pels)
	lw	a1, %lo(pels)(s3)
	lui	s4, %hi(lines)
	lw	a2, %lo(lines)(s4)
	ld	a0, 0(s2)
	mulw	a2, a2, a1
	li	a1, 1
	mv	a3, s1
	call	fwrite
	lw	a1, %lo(pels)(s3)
	lw	a2, %lo(lines)(s4)
	sext.w	a3, a0
	mulw	a1, a2, a1
	bne	a1, a3, .LBB3_5
# %bb.2:
	ld	a3, 16(s2)
	sraiw	a1, a0, 31
	srliw	a1, a1, 30
	add	a0, a0, a1
	sraiw	a2, a0, 2
	li	a1, 1
	mv	a0, a3
	mv	a3, s1
	call	fwrite
	lw	a1, %lo(pels)(s3)
	lw	a3, %lo(lines)(s4)
	sext.w	a2, a0
	mul	a0, a3, a1
	sraiw	a1, a0, 31
	srliw	a1, a1, 30
	add	a0, a0, a1
	sraiw	a0, a0, 2
	bne	a0, a2, .LBB3_5
# %bb.3:
	ld	a0, 8(s2)
	li	a1, 1
	mv	a3, s1
	call	fwrite
	lui	a1, %hi(pels)
	lw	a1, %lo(pels)(a1)
	lui	a2, %hi(lines)
	lw	a2, %lo(lines)(a2)
	sext.w	a0, a0
	mul	a1, a2, a1
	sraiw	a2, a1, 31
	srliw	a2, a2, 30
	add	a1, a1, a2
	sraiw	a1, a1, 2
	bne	a1, a0, .LBB3_5
# %bb.4:
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	fclose
.LBB3_5:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	lui	a2, %hi(.L.str.10)
	addi	a2, a2, %lo(.L.str.10)
	mv	a3, s0
	call	fprintf
	li	a0, -1
	call	exit
.LBB3_6:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	lui	a2, %hi(.L.str.9)
	addi	a2, a2, %lo(.L.str.9)
	mv	a3, s0
	call	fprintf
	li	a0, -1
	call	exit
.Lfunc_end3:
	.size	WriteImage, .Lfunc_end3-WriteImage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FreeImage                       # -- Begin function FreeImage
	.p2align	2
	.type	FreeImage,@function
FreeImage:                              # @FreeImage
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	call	free
	ld	a0, 8(s0)
	call	free
	ld	a0, 16(s0)
	call	free
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end4:
	.size	FreeImage, .Lfunc_end4-FreeImage
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Couldn't allocate memory to image\n"
	.size	.L.str, 35

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Unable to open image_file: %s\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Error in seeking image no: %d\n"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"From file: %s\n"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Reading image no: %d\n"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Error in reading image no: %d\n"
	.size	.L.str.6, 31

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ab"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s%s\n"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Error in opening file: "
	.size	.L.str.9, 24

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error in writing to file: "
	.size	.L.str.10, 27

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Couldn't allocate (PictImage *)\n"
	.size	.L.str.11, 33

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Couldn't allocate memory for luminance\n"
	.size	.L.str.12, 40

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Couldn't allocate memory for Cr\n"
	.size	.L.str.13, 33

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Couldn't allocate memory for Cb\n"
	.size	.L.str.14, 33

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
