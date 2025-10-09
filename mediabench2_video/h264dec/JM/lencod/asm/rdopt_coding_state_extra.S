	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdopt_coding_state.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	delete_coding_state             # -- Begin function delete_coding_state
	.p2align	2
	.type	delete_coding_state,@function
delete_coding_state:                    # @delete_coding_state
# %bb.0:
	beqz	a0, .LBB0_6
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	beqz	a0, .LBB0_3
# %bb.2:
	call	free
.LBB0_3:
	ld	a0, 16(s0)
	beqz	a0, .LBB0_5
# %bb.4:
	call	free
.LBB0_5:
	ld	a0, 32(s0)
	call	delete_contexts_MotionInfo
	ld	a0, 40(s0)
	call	delete_contexts_TextureInfo
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB0_6:
	ret
.Lfunc_end0:
	.size	delete_coding_state, .Lfunc_end0-delete_coding_state
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	create_coding_state             # -- Begin function create_coding_state
	.p2align	2
	.type	create_coding_state,@function
create_coding_state:                    # @create_coding_state
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	li	a0, 1
	li	a1, 352
	li	s2, 1
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB1_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB1_2:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 945(a0)
	li	s1, 1
	beqz	a1, .LBB1_4
# %bb.3:
	li	s1, 3
.LBB1_4:
	lw	a0, 937(a0)
	sw	s1, 0(s0)
	bne	a0, s2, .LBB1_7
# %bb.5:
	li	a1, 96
	mv	a0, s1
	call	calloc
	sd	a0, 8(s0)
	bnez	a0, .LBB1_7
# %bb.6:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB1_7:
	li	a1, 48
	mv	a0, s1
	call	calloc
	sd	a0, 16(s0)
	bnez	a0, .LBB1_9
# %bb.8:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
.LBB1_9:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	li	a1, 1
	sw	a0, 24(s0)
	bne	a0, a1, .LBB1_11
# %bb.10:
	call	create_contexts_MotionInfo
	mv	s1, a0
	call	create_contexts_TextureInfo
	j	.LBB1_12
.LBB1_11:
	li	s1, 0
	li	a0, 0
.LBB1_12:
	sd	s1, 32(s0)
	sd	a0, 40(s0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	create_coding_state, .Lfunc_end1-create_coding_state
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	store_coding_state              # -- Begin function store_coding_state
	.p2align	2
	.type	store_coding_state,@function
store_coding_state:                     # @store_coding_state
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	addiw	a2, a2, -1208
	add	a2, a1, a2
	ld	a3, 0(a2)
	lw	a3, 4(a3)
	mv	s0, a0
	li	a0, 1
	bnez	a3, .LBB2_2
# %bb.1:
	lw	a0, 0(s0)
.LBB2_2:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a3, 1089(a3)
	beqz	a3, .LBB2_12
# %bb.3:
	ld	s2, 8(a2)
	lw	a1, 12(a1)
	ld	s1, 16(a2)
	lw	a2, 24(s0)
	li	a3, 528
	mul	a1, a1, a3
	li	a3, 1
	add	s1, s1, a1
	bne	a2, a3, .LBB2_8
# %bb.4:
	blez	a0, .LBB2_7
# %bb.5:
	li	s3, 0
	li	s4, 0
	li	s5, 0
	li	a1, 96
	mul	s6, a0, a1
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	ld	a1, 24(s2)
	add	a0, a0, s5
	add	a1, a1, s4
	addi	a1, a1, 8
	li	a2, 96
	call	memcpy
	ld	a0, 24(s2)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a1, 16(s0)
	ld	a2, 0(a0)
	add	a1, a1, s3
	sd	a2, 0(a1)
	ld	a2, 8(a0)
	sd	a2, 8(a1)
	ld	a2, 16(a0)
	sd	a2, 16(a1)
	ld	a2, 24(a0)
	sd	a2, 24(a1)
	ld	a2, 32(a0)
	sd	a2, 32(a1)
	ld	a0, 40(a0)
	sd	a0, 40(a1)
	addi	s5, s5, 96
	addi	s4, s4, 112
	addi	s3, s3, 48
	bne	s6, s5, .LBB2_6
.LBB2_7:
	ld	a0, 32(s0)
	ld	a1, 32(s2)
	li	a2, 1504
	call	memcpy
	ld	a0, 40(s0)
	ld	a1, 40(s2)
	lui	a2, 3
	addiw	a2, a2, -160
	call	memcpy
	j	.LBB2_11
.LBB2_8:
	blez	a0, .LBB2_11
# %bb.9:
	li	a1, 0
	li	a2, 0
	li	a3, 48
	mul	a0, a0, a3
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 24(s2)
	add	a3, a3, a1
	ld	a3, 0(a3)
	ld	a4, 16(s0)
	ld	a5, 40(a3)
	add	a4, a4, a2
	sd	a5, 40(a4)
	ld	a5, 32(a3)
	sd	a5, 32(a4)
	ld	a5, 24(a3)
	sd	a5, 24(a4)
	ld	a5, 16(a3)
	sd	a5, 16(a4)
	ld	a5, 8(a3)
	sd	a5, 8(a4)
	ld	a3, 0(a3)
	sd	a3, 0(a4)
	addi	a2, a2, 48
	addi	a1, a1, 112
	bne	a0, a2, .LBB2_10
.LBB2_11:
	lw	a0, 0(s1)
	sw	a0, 48(s0)
	lw	a0, 20(s1)
	sw	a0, 52(s0)
	lw	a0, 24(s1)
	sw	a0, 56(s0)
	lw	a0, 28(s1)
	sw	a0, 60(s0)
	lw	a0, 32(s1)
	sw	a0, 64(s0)
	lw	a0, 36(s1)
	sw	a0, 68(s0)
	lw	a0, 40(s1)
	sw	a0, 72(s0)
	lw	a0, 44(s1)
	sw	a0, 76(s0)
	lw	a0, 48(s1)
	sw	a0, 80(s0)
	addi	a0, s0, 84
	addi	a1, s1, 76
	li	a2, 256
	call	memcpy
	ld	a0, 408(s1)
	sd	a0, 344(s0)
.LBB2_12:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	store_coding_state, .Lfunc_end2-store_coding_state
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	reset_coding_state              # -- Begin function reset_coding_state
	.p2align	2
	.type	reset_coding_state,@function
reset_coding_state:                     # @reset_coding_state
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	addiw	a2, a2, -1208
	add	a2, a1, a2
	ld	a3, 0(a2)
	lw	a3, 4(a3)
	mv	s0, a0
	li	a0, 1
	bnez	a3, .LBB3_2
# %bb.1:
	lw	a0, 0(s0)
.LBB3_2:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a3, 1089(a3)
	beqz	a3, .LBB3_12
# %bb.3:
	ld	s2, 8(a2)
	lw	a1, 12(a1)
	ld	s1, 16(a2)
	lw	a2, 24(s0)
	li	a3, 528
	mul	a1, a1, a3
	li	a3, 1
	add	s1, s1, a1
	bne	a2, a3, .LBB3_8
# %bb.4:
	blez	a0, .LBB3_7
# %bb.5:
	li	s3, 0
	li	s4, 0
	li	s5, 0
	li	a1, 96
	mul	s6, a0, a1
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s2)
	ld	a1, 8(s0)
	add	a0, a0, s3
	addi	a0, a0, 8
	add	a1, a1, s5
	li	a2, 96
	call	memcpy
	ld	a0, 24(s2)
	ld	a1, 16(s0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s4
	ld	a2, 0(a1)
	sd	a2, 0(a0)
	ld	a2, 8(a1)
	sd	a2, 8(a0)
	ld	a2, 16(a1)
	sd	a2, 16(a0)
	ld	a2, 24(a1)
	sd	a2, 24(a0)
	ld	a2, 32(a1)
	sd	a2, 32(a0)
	ld	a1, 40(a1)
	sd	a1, 40(a0)
	addi	s5, s5, 96
	addi	s4, s4, 48
	addi	s3, s3, 112
	bne	s6, s5, .LBB3_6
.LBB3_7:
	ld	a0, 32(s2)
	ld	a1, 32(s0)
	li	a2, 1504
	call	memcpy
	ld	a0, 40(s2)
	ld	a1, 40(s0)
	lui	a2, 3
	addiw	a2, a2, -160
	call	memcpy
	j	.LBB3_11
.LBB3_8:
	blez	a0, .LBB3_11
# %bb.9:
	li	a1, 0
	li	a2, 0
	li	a3, 112
	mul	a0, a0, a3
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 24(s2)
	ld	a4, 16(s0)
	add	a3, a3, a2
	ld	a3, 0(a3)
	add	a4, a4, a1
	ld	a5, 40(a4)
	sd	a5, 40(a3)
	ld	a5, 32(a4)
	sd	a5, 32(a3)
	ld	a5, 24(a4)
	sd	a5, 24(a3)
	ld	a5, 16(a4)
	sd	a5, 16(a3)
	ld	a5, 8(a4)
	sd	a5, 8(a3)
	ld	a4, 0(a4)
	sd	a4, 0(a3)
	addi	a2, a2, 112
	addi	a1, a1, 48
	bne	a0, a2, .LBB3_10
.LBB3_11:
	lw	a0, 48(s0)
	sw	a0, 0(s1)
	lw	a0, 52(s0)
	sw	a0, 20(s1)
	lw	a0, 56(s0)
	sw	a0, 24(s1)
	lw	a0, 60(s0)
	sw	a0, 28(s1)
	lw	a0, 64(s0)
	sw	a0, 32(s1)
	lw	a0, 68(s0)
	sw	a0, 36(s1)
	lw	a0, 72(s0)
	sw	a0, 40(s1)
	lw	a0, 76(s0)
	sw	a0, 44(s1)
	lw	a0, 80(s0)
	sw	a0, 48(s1)
	addi	a0, s1, 76
	addi	a1, s0, 84
	li	a2, 256
	call	memcpy
	ld	a0, 344(s0)
	sd	a0, 408(s1)
.LBB3_12:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	reset_coding_state, .Lfunc_end3-reset_coding_state
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_coding_state: cs"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_coding_state: cs->encenv"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"init_coding_state: cs->bitstream"
	.size	.L.str.2, 33

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
