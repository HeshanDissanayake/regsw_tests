	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdatadst.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_stdio_dest                 # -- Begin function jpeg_stdio_dest
	.p2align	2
	.type	jpeg_stdio_dest,@function
jpeg_stdio_dest:                        # @jpeg_stdio_dest
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 40(a0)
	mv	s0, a1
	bnez	a0, .LBB0_2
# %bb.1:
	ld	a0, 8(s1)
	ld	a4, 0(a0)
	li	a2, 56
	mv	a0, s1
	li	a1, 0
	jalr	a4
	sd	a0, 40(s1)
.LBB0_2:
	lui	a1, %hi(init_destination)
	addi	a1, a1, %lo(init_destination)
	sd	a1, 16(a0)
	lui	a1, %hi(empty_output_buffer)
	addi	a1, a1, %lo(empty_output_buffer)
	sd	a1, 24(a0)
	lui	a1, %hi(term_destination)
	addi	a1, a1, %lo(term_destination)
	sd	a1, 32(a0)
	sd	s0, 40(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jpeg_stdio_dest, .Lfunc_end0-jpeg_stdio_dest
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function init_destination
	.type	init_destination,@function
init_destination:                       # @init_destination
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 8(a0)
	ld	s0, 40(a0)
	ld	a3, 0(a1)
	li	a1, 1
	lui	a2, 1
	lui	s1, 1
	jalr	a3
	sd	a0, 48(s0)
	sd	a0, 0(s0)
	sd	s1, 8(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	init_destination, .Lfunc_end1-init_destination
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function empty_output_buffer
	.type	empty_output_buffer,@function
empty_output_buffer:                    # @empty_output_buffer
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 40(a0)
	ld	a0, 48(s1)
	ld	a3, 40(s1)
	li	a1, 1
	lui	a2, 1
	lui	s2, 1
	call	fwrite
	beq	a0, s2, .LBB2_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_2:
	ld	a0, 48(s1)
	sd	a0, 0(s1)
	li	a0, 1
	sd	s2, 8(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	empty_output_buffer, .Lfunc_end2-empty_output_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function term_destination
	.type	term_destination,@function
term_destination:                       # @term_destination
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s2, 40(a0)
	ld	a1, 8(s2)
	lui	s1, 1
	beq	a1, s1, .LBB3_3
# %bb.1:
	ld	a0, 48(s2)
	ld	a3, 40(s2)
	sub	s1, s1, a1
	li	a1, 1
	mv	a2, s1
	call	fwrite
	beq	a0, s1, .LBB3_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_3:
	ld	a0, 40(s2)
	call	fflush
	ld	a0, 40(s2)
	call	ferror
	beqz	a0, .LBB3_5
# %bb.4:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 37
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.LBB3_5:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	term_destination, .Lfunc_end3-term_destination
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
