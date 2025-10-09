	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"filehandle.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	error                           # -- Begin function error
	.p2align	2
	.type	error,@function
error:                                  # @error
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(stderr)
	ld	a2, %lo(stderr)(a2)
	mv	s0, a1
	mv	a3, a0
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, a2
	mv	a2, a3
	call	fprintf
	call	flush_dpb
	mv	a0, s0
	call	exit
.Lfunc_end0:
	.size	error, .Lfunc_end0-error
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_PPS                       # -- Begin function write_PPS
	.p2align	2
	.type	write_PPS,@function
write_PPS:                              # @write_PPS
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	mv	a0, a1
	call	GeneratePic_parameter_set_NALU
	lui	a1, %hi(WriteNALU)
	ld	a1, %lo(WriteNALU)(a1)
	mv	s1, a0
	jalr	a1
	addw	s0, a0, s0
	mv	a0, s1
	call	FreeNALU
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	write_PPS, .Lfunc_end1-write_PPS
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	start_sequence                  # -- Begin function start_sequence
	.p2align	2
	.type	start_sequence,@function
start_sequence:                         # @start_sequence
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a3, 941(a1)
	lw	s3, 64(a0)
	li	a1, 1
	beq	a3, a1, .LBB2_3
# %bb.1:
	bnez	a3, .LBB2_8
# %bb.2:
	addi	a0, a0, 428
	call	OpenAnnexbFile
	lui	a0, %hi(WriteAnnexbNALU)
	addi	a0, a0, %lo(WriteAnnexbNALU)
	j	.LBB2_4
.LBB2_3:
	addi	a0, a0, 428
	call	OpenRTPFile
	lui	a0, %hi(WriteRTPNALU)
	addi	a0, a0, %lo(WriteRTPNALU)
.LBB2_4:
	lui	s4, %hi(WriteNALU)
	sd	a0, %lo(WriteNALU)(s4)
	call	GenerateSeq_parameter_set_NALU
	ld	a1, %lo(WriteNALU)(s4)
	mv	s1, a0
	jalr	a1
	mv	s0, a0
	mv	a0, s1
	call	FreeNALU
	li	a0, 0
	li	s5, 2
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	mv	s1, a0
	call	GeneratePic_parameter_set_NALU
	ld	a1, %lo(WriteNALU)(s4)
	mv	s2, a0
	jalr	a1
	add	s0, a0, s0
	mv	a0, s2
	call	FreeNALU
	beqz	s3, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	addiw	a0, s1, 1
	bltu	s1, s5, .LBB2_5
.LBB2_7:
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	sw	s0, 1500(a0)
	li	a0, 0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB2_8:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.1)
	addi	a2, a2, %lo(.L.str.1)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a2, s0
	call	fprintf
	call	flush_dpb
	li	a0, 1
	call	exit
.Lfunc_end2:
	.size	start_sequence, .Lfunc_end2-start_sequence
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	terminate_sequence              # -- Begin function terminate_sequence
	.p2align	2
	.type	terminate_sequence,@function
terminate_sequence:                     # @terminate_sequence
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a3, 941(a0)
	li	a0, 1
	beq	a3, a0, .LBB3_3
# %bb.1:
	bnez	a3, .LBB3_4
# %bb.2:
	call	CloseAnnexbFile
	li	a0, 1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB3_3:
	call	CloseRTPFile
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB3_4:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.1)
	addi	a2, a2, %lo(.L.str.1)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a2, s0
	call	fprintf
	call	flush_dpb
	li	a0, 1
	call	exit
.Lfunc_end3:
	.size	terminate_sequence, .Lfunc_end3-terminate_sequence
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Output File Mode %d not supported"
	.size	.L.str.1, 34

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
