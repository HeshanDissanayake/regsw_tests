	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"writepic.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeframe                      # -- Begin function writeframe
	.p2align	2
	.type	writeframe,@function
writeframe:                             # @writeframe
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	mv	s1, a0
	lbu	a0, 0(a0)
	li	a2, 45
	beq	a0, a2, .LBB0_8
# %bb.1:
	mv	s0, a1
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	addi	a1, a0, -3
	lui	a2, %hi(horizontal_size)
	lw	s4, %lo(horizontal_size)(a2)
	lui	a2, %hi(vertical_size)
	lw	s5, %lo(vertical_size)(a2)
	snez	s6, a1
	addi	a0, a0, -1
	seqz	s7, a0
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	addi	a0, sp, 8
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	addi	a0, sp, 8
	call	fopen
	mv	s2, a0
	bnez	a0, .LBB0_3
# %bb.2:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	addi	a2, sp, 8
	mv	a0, s3
	call	sprintf
	mv	a0, s3
	call	error
.LBB0_3:
	lui	a0, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(a0)
	lui	a0, %hi(vertical_size)
	lw	a2, %lo(vertical_size)(a0)
	ld	a0, 0(s0)
	sraw	s4, s4, s6
	sraw	s5, s5, s7
	mulw	a2, a2, a1
	li	a1, 1
	mv	a3, s2
	call	fwrite
	mv	a0, s2
	call	fclose
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	addi	a0, sp, 8
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	addi	a0, sp, 8
	call	fopen
	mv	s3, a0
	bnez	a0, .LBB0_5
# %bb.4:
	lui	s2, %hi(errortext)
	addi	s2, s2, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	addi	a2, sp, 8
	mv	a0, s2
	call	sprintf
	mv	a0, s2
	call	error
.LBB0_5:
	ld	a0, 8(s0)
	mulw	s2, s4, s5
	li	a1, 1
	mv	a2, s2
	mv	a3, s3
	call	fwrite
	mv	a0, s3
	call	fclose
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	addi	a0, sp, 8
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	addi	a0, sp, 8
	call	fopen
	mv	s1, a0
	bnez	a0, .LBB0_7
# %bb.6:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	addi	a2, sp, 8
	mv	a0, s3
	call	sprintf
	mv	a0, s3
	call	error
.LBB0_7:
	ld	a0, 16(s0)
	li	a1, 1
	mv	a2, s2
	mv	a3, s1
	call	fwrite
	mv	a0, s1
	call	fclose
.LBB0_8:
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end0:
	.size	writeframe, .Lfunc_end0-writeframe
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.Y"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"wb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Couldn't create %s\n"
	.size	.L.str.2, 20

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s.U"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s.V"
	.size	.L.str.4, 5

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
