	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"cdjpeg.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	keymatch                        # -- Begin function keymatch
	.p2align	2
	.type	keymatch,@function
keymatch:                               # @keymatch
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lbu	s4, 0(a0)
	mv	s0, a2
	beqz	s4, .LBB0_8
# %bb.1:                                # %.preheader
	mv	s1, a1
	li	s2, 0
	addi	s3, a0, 1
	j	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s4, s4, 2
	add	a0, a0, s4
	lw	a0, 0(a0)
	bne	a0, s5, .LBB0_7
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	lbu	s4, 0(s3)
	addi	s1, s1, 1
	addiw	s2, s2, 1
	addi	s3, s3, 1
	beqz	s4, .LBB0_9
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lbu	s5, 0(s1)
	beqz	s5, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	call	__ctype_b_loc
	ld	a0, 0(a0)
	slli	a1, s4, 1
	add	a0, a0, a1
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	bnez	a0, .LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	andi	a0, s4, 255
	beq	a0, s5, .LBB0_3
.LBB0_7:
	li	a0, 0
	j	.LBB0_10
.LBB0_8:
	li	s2, 0
.LBB0_9:
	slt	a0, s2, s0
	xori	a0, a0, 1
.LBB0_10:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	keymatch, .Lfunc_end0-keymatch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	read_stdin                      # -- Begin function read_stdin
	.p2align	2
	.type	read_stdin,@function
read_stdin:                             # @read_stdin
# %bb.0:
	lui	a0, %hi(stdin)
	ld	a0, %lo(stdin)(a0)
	ret
.Lfunc_end1:
	.size	read_stdin, .Lfunc_end1-read_stdin
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_stdout                    # -- Begin function write_stdout
	.p2align	2
	.type	write_stdout,@function
write_stdout:                           # @write_stdout
# %bb.0:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	ret
.Lfunc_end2:
	.size	write_stdout, .Lfunc_end2-write_stdout
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
