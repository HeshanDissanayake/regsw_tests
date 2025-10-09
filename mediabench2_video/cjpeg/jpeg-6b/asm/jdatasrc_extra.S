	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdatasrc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_stdio_src                  # -- Begin function jpeg_stdio_src
	.p2align	2
	.type	jpeg_stdio_src,@function
jpeg_stdio_src:                         # @jpeg_stdio_src
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	ld	a2, 40(a0)
	mv	s0, a1
	bnez	a2, .LBB0_2
# %bb.1:
	ld	a1, 8(a0)
	ld	a3, 0(a1)
	li	a2, 80
	mv	s1, a0
	li	a1, 0
	jalr	a3
	ld	a1, 8(s1)
	ld	a3, 0(a1)
	mv	s2, a0
	sd	a0, 40(s1)
	lui	a2, 1
	mv	a0, s1
	li	a1, 0
	jalr	a3
	ld	a2, 40(s1)
	sd	a0, 64(s2)
.LBB0_2:
	lui	a0, %hi(init_source)
	addi	a0, a0, %lo(init_source)
	sd	a0, 16(a2)
	lui	a0, %hi(fill_input_buffer)
	addi	a0, a0, %lo(fill_input_buffer)
	sd	a0, 24(a2)
	lui	a0, %hi(skip_input_data)
	addi	a0, a0, %lo(skip_input_data)
	sd	a0, 32(a2)
	lui	a0, %hi(jpeg_resync_to_restart)
	addi	a0, a0, %lo(jpeg_resync_to_restart)
	sd	a0, 40(a2)
	lui	a0, %hi(term_source)
	addi	a0, a0, %lo(term_source)
	sd	a0, 48(a2)
	sd	s0, 56(a2)
	sd	zero, 0(a2)
	sd	zero, 8(a2)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jpeg_stdio_src, .Lfunc_end0-jpeg_stdio_src
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function init_source
	.type	init_source,@function
init_source:                            # @init_source
# %bb.0:
	ld	a0, 40(a0)
	li	a1, 1
	sw	a1, 72(a0)
	ret
.Lfunc_end1:
	.size	init_source, .Lfunc_end1-init_source
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function fill_input_buffer
	.type	fill_input_buffer,@function
fill_input_buffer:                      # @fill_input_buffer
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 40(a0)
	ld	a0, 64(s1)
	ld	a3, 56(s1)
	li	a1, 1
	lui	a2, 1
	call	fread
	bnez	a0, .LBB2_4
# %bb.1:
	lw	a0, 72(s1)
	beqz	a0, .LBB2_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 42
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_3:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 120
	sw	a1, 40(a0)
	li	a1, -1
	li	s2, -1
	mv	a0, s0
	jalr	a2
	ld	a0, 64(s1)
	sb	s2, 0(a0)
	ld	a0, 64(s1)
	li	a1, 217
	sb	a1, 1(a0)
	li	a0, 2
.LBB2_4:
	ld	a1, 64(s1)
	sd	a1, 0(s1)
	sd	a0, 8(s1)
	li	a0, 1
	sw	zero, 72(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	fill_input_buffer, .Lfunc_end2-fill_input_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function skip_input_data
	.type	skip_input_data,@function
skip_input_data:                        # @skip_input_data
# %bb.0:
	blez	a1, .LBB3_9
# %bb.1:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	mv	s1, a0
	ld	s2, 40(a0)
	ld	s3, 8(s2)
	bge	s3, a1, .LBB3_8
# %bb.2:                                # %.preheader
	li	s4, 120
	li	s5, -1
	li	s6, 217
	li	s7, 42
	j	.LBB3_5
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	ld	a0, 0(s1)
	ld	a2, 8(a0)
	sw	s4, 40(a0)
	li	a1, -1
	mv	a0, s1
	jalr	a2
	ld	a0, 64(s8)
	sb	s5, 0(a0)
	ld	a0, 64(s8)
	sb	s6, 1(a0)
	li	a0, 2
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	sub	s0, s0, s3
	ld	a1, 64(s8)
	sd	a0, 8(s8)
	ld	s3, 8(s2)
	sd	a1, 0(s8)
	sw	zero, 72(s8)
	bge	s3, s0, .LBB3_8
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	ld	s8, 40(s1)
	ld	a0, 64(s8)
	ld	a3, 56(s8)
	li	a1, 1
	lui	a2, 1
	call	fread
	bnez	a0, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	lw	a0, 72(s8)
	beqz	a0, .LBB3_3
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	sw	s7, 40(a0)
	mv	a0, s1
	jalr	a1
	j	.LBB3_3
.LBB3_8:
	ld	a0, 0(s2)
	add	a0, a0, s0
	sd	a0, 0(s2)
	sub	a0, s3, s0
	sd	a0, 8(s2)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
.LBB3_9:
	ret
.Lfunc_end3:
	.size	skip_input_data, .Lfunc_end3-skip_input_data
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function term_source
	.type	term_source,@function
term_source:                            # @term_source
# %bb.0:
	ret
.Lfunc_end4:
	.size	term_source, .Lfunc_end4-term_source
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
