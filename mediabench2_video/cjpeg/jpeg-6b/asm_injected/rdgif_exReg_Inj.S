	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdgif.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_read_gif                  # -- Begin function jinit_read_gif
	.p2align	2
	.type	jinit_read_gif,@function
jinit_read_gif:                         # @jinit_read_gif
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 52
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.Lfunc_end0:
	.size	jinit_read_gif, .Lfunc_end0-jinit_read_gif
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIF input is unsupported for legal reasons.  Sorry.\n"
	.size	.L.str, 53

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
