	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"memalloc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_top_bot_planes             # -- Begin function init_top_bot_planes
	.p2align	2
	.type	init_top_bot_planes,@function
init_top_bot_planes:                    # @init_top_bot_planes
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a4
	mv	s2, a3
	mv	s1, a1
	mv	s3, a0
	srliw	a0, a1, 31
	add	a0, a1, a0
	sraiw	s4, a0, 1
	li	a1, 8
	mv	a0, s4
	call	calloc
	sd	a0, 0(s2)
	bnez	a0, .LBB0_2
# %bb.1:
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str)
	addi	a3, a3, %lo(.L.str)
	li	a1, 300
	mv	a0, s5
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB0_2:
	li	a1, 8
	mv	a0, s4
	call	calloc
	sd	a0, 0(s0)
	beqz	a0, .LBB0_4
# %bb.3:
	li	a0, 2
	bge	s1, a0, .LBB0_5
	j	.LBB0_7
.LBB0_4:
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.1)
	addi	a3, a3, %lo(.L.str.1)
	li	a1, 300
	mv	a0, s5
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
	li	a0, 2
	blt	s1, a0, .LBB0_7
.LBB0_5:
	li	a0, 0
	addi	s3, s3, 8
	slli	a1, s4, 32
	srli	a1, a1, 29
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s2)
	ld	a3, -8(s3)
	add	a2, a2, a0
	sd	a3, 0(a2)
	ld	a2, 0(s0)
	ld	a3, 0(s3)
	add	a2, a2, a0
	sd	a3, 0(a2)
	addi	a0, a0, 8
	addi	s3, s3, 16
	bne	a0, a1, .LBB0_6
.LBB0_7:
	slliw	a0, s1, 3
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
	.size	init_top_bot_planes, .Lfunc_end0-init_top_bot_planes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	no_mem_exit                     # -- Begin function no_mem_exit
	.p2align	2
	.type	no_mem_exit,@function
no_mem_exit:                            # @no_mem_exit
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	a3, a0
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 100
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	error
.Lfunc_end1:
	.size	no_mem_exit, .Lfunc_end1-no_mem_exit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_top_bot_planes             # -- Begin function free_top_bot_planes
	.p2align	2
	.type	free_top_bot_planes,@function
free_top_bot_planes:                    # @free_top_bot_planes
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	call	free
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end2:
	.size	free_top_bot_planes, .Lfunc_end2-free_top_bot_planes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2Dpel                    # -- Begin function get_mem2Dpel
	.p2align	2
	.type	get_mem2Dpel,@function
get_mem2Dpel:                           # @get_mem2Dpel
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s4, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB3_2
# %bb.1:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.2)
	addi	a3, a3, %lo(.L.str.2)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	ld	s4, 0(s0)
.LBB3_2:
	mulw	s3, s1, s2
	li	a1, 2
	li	s5, 2
	mv	a0, s3
	call	calloc
	sd	a0, 0(s4)
	beqz	a0, .LBB3_4
# %bb.3:
	bge	s2, s5, .LBB3_5
	j	.LBB3_7
.LBB3_4:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.2)
	addi	a3, a3, %lo(.L.str.2)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	blt	s2, s5, .LBB3_7
.LBB3_5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
	slli	s1, s1, 1
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s1
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB3_6
.LBB3_7:
	slliw	a0, s3, 1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	get_mem2Dpel, .Lfunc_end3-get_mem2Dpel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem3Dpel                    # -- Begin function get_mem3Dpel
	.p2align	2
	.type	get_mem3Dpel,@function
get_mem3Dpel:                           # @get_mem3Dpel
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	sd	a0, 0(s3)
	bnez	a0, .LBB4_2
# %bb.1:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.3)
	addi	a3, a3, %lo(.L.str.3)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
.LBB4_2:
	blez	s2, .LBB4_5
# %bb.3:
	li	s4, 0
	slli	s5, s2, 3
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	add	a0, a0, s4
	mv	a1, s1
	mv	a2, s0
	call	get_mem2Dpel
	addi	s4, s4, 8
	bne	s5, s4, .LBB4_4
.LBB4_5:
	mul	a0, s2, s1
	mul	a0, a0, s0
	slliw	a0, a0, 1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end4:
	.size	get_mem3Dpel, .Lfunc_end4-get_mem3Dpel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2Dpel                   # -- Begin function free_mem2Dpel
	.p2align	2
	.type	free_mem2Dpel,@function
free_mem2Dpel:                          # @free_mem2Dpel
# %bb.0:
	beqz	a0, .LBB5_3
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	beqz	a0, .LBB5_4
# %bb.2:
	call	free
	j	.LBB5_5
.LBB5_3:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, 100
	tail	error
.LBB5_4:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, 100
	call	error
.LBB5_5:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end5:
	.size	free_mem2Dpel, .Lfunc_end5-free_mem2Dpel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem3Dpel                   # -- Begin function free_mem3Dpel
	.p2align	2
	.type	free_mem3Dpel,@function
free_mem3Dpel:                          # @free_mem3Dpel
# %bb.0:
	beqz	a0, .LBB6_10
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	blez	a1, .LBB6_9
# %bb.2:
	slli	a1, a1, 3
	add	s3, s0, a1
	lui	s1, %hi(.L.str.4)
	addi	s1, s1, %lo(.L.str.4)
	mv	s4, s0
	j	.LBB6_4
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
	addi	s4, s4, 8
	beq	s4, s3, .LBB6_9
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	ld	s2, 0(s4)
	beqz	s2, .LBB6_3
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	ld	a0, 0(s2)
	beqz	a0, .LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=1
	call	free
	j	.LBB6_8
.LBB6_7:                                #   in Loop: Header=BB6_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	mv	a0, s2
	call	free
	addi	s4, s4, 8
	bne	s4, s3, .LBB6_4
.LBB6_9:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.LBB6_10:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 100
	tail	error
.Lfunc_end6:
	.size	free_mem3Dpel, .Lfunc_end6-free_mem3Dpel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2D                       # -- Begin function get_mem2D
	.p2align	2
	.type	get_mem2D,@function
get_mem2D:                              # @get_mem2D
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	mv	s2, a1
	mv	s1, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s4, a0
	sd	a0, 0(s1)
	bnez	a0, .LBB7_2
# %bb.1:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.6)
	addi	a3, a3, %lo(.L.str.6)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	ld	s4, 0(s1)
.LBB7_2:
	mulw	s3, s0, s2
	li	a1, 1
	mv	a0, s3
	call	calloc
	sd	a0, 0(s4)
	beqz	a0, .LBB7_4
# %bb.3:
	li	a0, 2
	bge	s2, a0, .LBB7_5
	j	.LBB7_7
.LBB7_4:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.6)
	addi	a3, a3, %lo(.L.str.6)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	li	a0, 2
	blt	s2, a0, .LBB7_7
.LBB7_5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s1)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s0
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB7_6
.LBB7_7:
	mv	a0, s3
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	get_mem2D, .Lfunc_end7-get_mem2D
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2Dint                    # -- Begin function get_mem2Dint
	.p2align	2
	.type	get_mem2Dint,@function
get_mem2Dint:                           # @get_mem2Dint
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s4, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB8_2
# %bb.1:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.7)
	addi	a3, a3, %lo(.L.str.7)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	ld	s4, 0(s0)
.LBB8_2:
	mulw	s3, s1, s2
	li	a1, 4
	mv	a0, s3
	call	calloc
	sd	a0, 0(s4)
	beqz	a0, .LBB8_4
# %bb.3:
	li	a0, 2
	bge	s2, a0, .LBB8_5
	j	.LBB8_7
.LBB8_4:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.7)
	addi	a3, a3, %lo(.L.str.7)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	li	a0, 2
	blt	s2, a0, .LBB8_7
.LBB8_5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
	slli	s1, s1, 2
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s1
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB8_6
.LBB8_7:
	slliw	a0, s3, 2
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end8:
	.size	get_mem2Dint, .Lfunc_end8-get_mem2Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2Dint64                  # -- Begin function get_mem2Dint64
	.p2align	2
	.type	get_mem2Dint64,@function
get_mem2Dint64:                         # @get_mem2Dint64
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s4, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB9_2
# %bb.1:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.8)
	addi	a3, a3, %lo(.L.str.8)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	ld	s4, 0(s0)
.LBB9_2:
	mulw	s3, s1, s2
	li	a1, 8
	mv	a0, s3
	call	calloc
	sd	a0, 0(s4)
	beqz	a0, .LBB9_4
# %bb.3:
	li	a0, 2
	bge	s2, a0, .LBB9_5
	j	.LBB9_7
.LBB9_4:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.8)
	addi	a3, a3, %lo(.L.str.8)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	li	a0, 2
	blt	s2, a0, .LBB9_7
.LBB9_5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
	slli	s1, s1, 3
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s1
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB9_6
.LBB9_7:
	slliw	a0, s3, 3
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end9:
	.size	get_mem2Dint64, .Lfunc_end9-get_mem2Dint64
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem3D                       # -- Begin function get_mem3D
	.p2align	2
	.type	get_mem3D,@function
get_mem3D:                              # @get_mem3D
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	sd	a0, 0(s3)
	bnez	a0, .LBB10_2
# %bb.1:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.9)
	addi	a3, a3, %lo(.L.str.9)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
.LBB10_2:
	blez	s2, .LBB10_5
# %bb.3:
	li	s4, 0
	slli	s5, s2, 3
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	add	a0, a0, s4
	mv	a1, s1
	mv	a2, s0
	call	get_mem2D
	addi	s4, s4, 8
	bne	s5, s4, .LBB10_4
.LBB10_5:
	mul	a0, s1, s2
	mulw	a0, a0, s0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end10:
	.size	get_mem3D, .Lfunc_end10-get_mem3D
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem3Dint                    # -- Begin function get_mem3Dint
	.p2align	2
	.type	get_mem3Dint,@function
get_mem3Dint:                           # @get_mem3Dint
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	sd	a0, 0(s3)
	bnez	a0, .LBB11_2
# %bb.1:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.10)
	addi	a3, a3, %lo(.L.str.10)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
.LBB11_2:
	blez	s2, .LBB11_5
# %bb.3:
	li	s4, 0
	slli	s5, s2, 3
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	add	a0, a0, s4
	mv	a1, s1
	mv	a2, s0
	call	get_mem2Dint
	addi	s4, s4, 8
	bne	s5, s4, .LBB11_4
.LBB11_5:
	mul	a0, s2, s1
	mul	a0, a0, s0
	slliw	a0, a0, 2
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end11:
	.size	get_mem3Dint, .Lfunc_end11-get_mem3Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem3Dint64                  # -- Begin function get_mem3Dint64
	.p2align	2
	.type	get_mem3Dint64,@function
get_mem3Dint64:                         # @get_mem3Dint64
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	sd	a0, 0(s3)
	bnez	a0, .LBB12_2
# %bb.1:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.11)
	addi	a3, a3, %lo(.L.str.11)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
.LBB12_2:
	blez	s2, .LBB12_5
# %bb.3:
	li	s4, 0
	slli	s5, s2, 3
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	add	a0, a0, s4
	mv	a1, s1
	mv	a2, s0
	call	get_mem2Dint64
	addi	s4, s4, 8
	bne	s5, s4, .LBB12_4
.LBB12_5:
	mul	a0, s2, s1
	mul	a0, a0, s0
	slliw	a0, a0, 3
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end12:
	.size	get_mem3Dint64, .Lfunc_end12-get_mem3Dint64
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem4Dint                    # -- Begin function get_mem4Dint
	.p2align	2
	.type	get_mem4Dint,@function
get_mem4Dint:                           # @get_mem4Dint
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	mv	s9, a4
	mv	s4, a3
	mv	s11, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	a0, 0(s0)
	beqz	a0, .LBB13_16
# %bb.1:
	blez	s2, .LBB13_17
.LBB13_2:
	mulw	s3, s9, s4
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	blez	s11, .LBB13_18
# %bb.3:
	slli	a0, s11, 32
	li	a1, 1
	srli	s10, a0, 32
	sd	s11, 16(sp)                     # 8-byte Folded Spill
	bge	a1, s4, .LBB13_24
# %bb.4:                                # %.preheader
	li	a1, 0
	slli	a0, s4, 32
	srli	a0, a0, 32
	slli	a0, a0, 3
	addi	s7, a0, -8
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	s6, %hi(.L.str.22)
	addi	s6, s6, %lo(.L.str.22)
	lui	s8, %hi(.L.str.7)
	addi	s8, s8, %lo(.L.str.7)
	slli	s9, s9, 2
.LBB13_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
                                        #       Child Loop BB13_13 Depth 3
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 0(a0)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	slli	a0, a1, 3
	add	s2, s2, a0
	li	a1, 8
	mv	a0, s11
	call	calloc
	sd	a0, 0(s2)
	bnez	a0, .LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	lui	a3, %hi(.L.str.10)
	addi	a3, a3, %lo(.L.str.10)
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB13_7:                               #   in Loop: Header=BB13_5 Depth=1
	li	s0, 0
.LBB13_8:                               #   Parent Loop BB13_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_13 Depth 3
	ld	s11, 0(s2)
	slli	a0, s0, 3
	add	s11, s11, a0
	li	a1, 8
	mv	a0, s4
	call	calloc
	mv	s1, a0
	sd	a0, 0(s11)
	bnez	a0, .LBB13_10
# %bb.9:                                #   in Loop: Header=BB13_8 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
	ld	s1, 0(s11)
.LBB13_10:                              #   in Loop: Header=BB13_8 Depth=2
	li	a1, 4
	mv	a0, s3
	call	calloc
	sd	a0, 0(s1)
	bnez	a0, .LBB13_12
# %bb.11:                               #   in Loop: Header=BB13_8 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB13_12:                              #   in Loop: Header=BB13_8 Depth=2
	li	a0, 0
.LBB13_13:                              #   Parent Loop BB13_5 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 0(s11)
	add	a1, a1, a0
	ld	a2, 0(a1)
	add	a2, a2, s9
	addi	a0, a0, 8
	sd	a2, 8(a1)
	bne	s7, a0, .LBB13_13
# %bb.14:                               #   in Loop: Header=BB13_8 Depth=2
	addi	s0, s0, 1
	bne	s0, s10, .LBB13_8
# %bb.15:                               #   in Loop: Header=BB13_5 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	addi	a1, a1, 1
	ld	s11, 16(sp)                     # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	bne	a1, s2, .LBB13_5
	j	.LBB13_23
.LBB13_16:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.12)
	addi	a3, a3, %lo(.L.str.12)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	bgtz	s2, .LBB13_2
.LBB13_17:
	mul	s3, s9, s4
	j	.LBB13_23
.LBB13_18:
	li	s0, 0
	slli	s1, s2, 32
	srli	s1, s1, 29
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	s5, %hi(.L.str.22)
	addi	s5, s5, %lo(.L.str.22)
	lui	s6, %hi(.L.str.10)
	addi	s6, s6, %lo(.L.str.10)
	j	.LBB13_20
.LBB13_19:                              #   in Loop: Header=BB13_20 Depth=1
	addi	s0, s0, 8
	beq	s1, s0, .LBB13_22
.LBB13_20:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a0)
	add	s2, a0, s0
	li	a1, 8
	mv	a0, s11
	call	calloc
	sd	a0, 0(s2)
	bnez	a0, .LBB13_19
# %bb.21:                               #   in Loop: Header=BB13_20 Depth=1
	li	a1, 300
	mv	a0, s4
	mv	a2, s5
	mv	a3, s6
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	j	.LBB13_19
.LBB13_22:
	ld	s2, 24(sp)                      # 8-byte Folded Reload
.LBB13_23:
	mul	a0, s2, s11
	mul	a0, s3, a0
	slliw	a0, a0, 2
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB13_24:                              # %.preheader1
	li	s1, 0
	slli	s10, s10, 3
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	s6, %hi(.L.str.22)
	addi	s6, s6, %lo(.L.str.22)
	lui	s7, %hi(.L.str.10)
	addi	s7, s7, %lo(.L.str.10)
	lui	s8, %hi(.L.str.7)
	addi	s8, s8, %lo(.L.str.7)
	j	.LBB13_26
.LBB13_25:                              #   in Loop: Header=BB13_26 Depth=1
	addi	s1, s1, 1
	ld	s11, 16(sp)                     # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	beq	s1, s2, .LBB13_23
.LBB13_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_30 Depth 2
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 0(a0)
	slli	a0, s1, 3
	add	s2, s2, a0
	li	a1, 8
	mv	a0, s11
	call	calloc
	sd	a0, 0(s2)
	bnez	a0, .LBB13_28
# %bb.27:                               #   in Loop: Header=BB13_26 Depth=1
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s7
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB13_28:                              #   in Loop: Header=BB13_26 Depth=1
	li	s0, 0
	j	.LBB13_30
.LBB13_29:                              #   in Loop: Header=BB13_30 Depth=2
	addi	s0, s0, 8
	beq	s10, s0, .LBB13_25
.LBB13_30:                              #   Parent Loop BB13_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s11, 0(s2)
	add	s11, s11, s0
	li	a1, 8
	mv	a0, s4
	call	calloc
	mv	s9, a0
	sd	a0, 0(s11)
	bnez	a0, .LBB13_32
# %bb.31:                               #   in Loop: Header=BB13_30 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
	ld	s9, 0(s11)
.LBB13_32:                              #   in Loop: Header=BB13_30 Depth=2
	li	a1, 4
	mv	a0, s3
	call	calloc
	sd	a0, 0(s9)
	bnez	a0, .LBB13_29
# %bb.33:                               #   in Loop: Header=BB13_30 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
	j	.LBB13_29
.Lfunc_end13:
	.size	get_mem4Dint, .Lfunc_end13-get_mem4Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem5Dint                    # -- Begin function get_mem5Dint
	.p2align	2
	.type	get_mem5Dint,@function
get_mem5Dint:                           # @get_mem5Dint
# %bb.0:
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
	mv	s0, a5
	mv	s1, a4
	mv	s2, a3
	mv	s3, a2
	mv	s4, a1
	mv	s5, a0
	li	a1, 8
	mv	a0, s4
	call	calloc
	sd	a0, 0(s5)
	bnez	a0, .LBB14_2
# %bb.1:
	lui	s6, %hi(errortext)
	addi	s6, s6, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.13)
	addi	a3, a3, %lo(.L.str.13)
	li	a1, 300
	mv	a0, s6
	call	snprintf
	li	a1, 100
	mv	a0, s6
	call	error
.LBB14_2:
	blez	s4, .LBB14_5
# %bb.3:
	li	s6, 0
	slli	s7, s4, 3
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s5)
	add	a0, a0, s6
	mv	a1, s3
	mv	a2, s2
	mv	a3, s1
	mv	a4, s0
	call	get_mem4Dint
	addi	s6, s6, 8
	bne	s7, s6, .LBB14_4
.LBB14_5:
	mul	a0, s4, s3
	mul	a1, s2, s1
	mul	a0, a0, a1
	mul	a0, a0, s0
	slliw	a0, a0, 2
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end14:
	.size	get_mem5Dint, .Lfunc_end14-get_mem5Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2D                      # -- Begin function free_mem2D
	.p2align	2
	.type	free_mem2D,@function
free_mem2D:                             # @free_mem2D
# %bb.0:
	beqz	a0, .LBB15_3
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	beqz	a0, .LBB15_4
# %bb.2:
	call	free
	j	.LBB15_5
.LBB15_3:
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	li	a1, 100
	tail	error
.LBB15_4:
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	li	a1, 100
	call	error
.LBB15_5:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end15:
	.size	free_mem2D, .Lfunc_end15-free_mem2D
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2Dint                   # -- Begin function free_mem2Dint
	.p2align	2
	.type	free_mem2Dint,@function
free_mem2Dint:                          # @free_mem2Dint
# %bb.0:
	beqz	a0, .LBB16_3
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	beqz	a0, .LBB16_4
# %bb.2:
	call	free
	j	.LBB16_5
.LBB16_3:
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	li	a1, 100
	tail	error
.LBB16_4:
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	li	a1, 100
	call	error
.LBB16_5:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end16:
	.size	free_mem2Dint, .Lfunc_end16-free_mem2Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2Dint64                 # -- Begin function free_mem2Dint64
	.p2align	2
	.type	free_mem2Dint64,@function
free_mem2Dint64:                        # @free_mem2Dint64
# %bb.0:
	beqz	a0, .LBB17_3
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	beqz	a0, .LBB17_4
# %bb.2:
	call	free
	j	.LBB17_5
.LBB17_3:
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	li	a1, 100
	tail	error
.LBB17_4:
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	li	a1, 100
	call	error
.LBB17_5:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end17:
	.size	free_mem2Dint64, .Lfunc_end17-free_mem2Dint64
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem3D                      # -- Begin function free_mem3D
	.p2align	2
	.type	free_mem3D,@function
free_mem3D:                             # @free_mem3D
# %bb.0:
	beqz	a0, .LBB18_10
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	blez	a1, .LBB18_9
# %bb.2:
	slli	a1, a1, 3
	add	s3, s0, a1
	lui	s1, %hi(.L.str.14)
	addi	s1, s1, %lo(.L.str.14)
	mv	s4, s0
	j	.LBB18_4
.LBB18_3:                               #   in Loop: Header=BB18_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
	addi	s4, s4, 8
	beq	s4, s3, .LBB18_9
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	ld	s2, 0(s4)
	beqz	s2, .LBB18_3
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	ld	a0, 0(s2)
	beqz	a0, .LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=1
	call	free
	j	.LBB18_8
.LBB18_7:                               #   in Loop: Header=BB18_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
.LBB18_8:                               #   in Loop: Header=BB18_4 Depth=1
	mv	a0, s2
	call	free
	addi	s4, s4, 8
	bne	s4, s3, .LBB18_4
.LBB18_9:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.LBB18_10:
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	li	a1, 100
	tail	error
.Lfunc_end18:
	.size	free_mem3D, .Lfunc_end18-free_mem3D
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem3Dint                   # -- Begin function free_mem3Dint
	.p2align	2
	.type	free_mem3Dint,@function
free_mem3Dint:                          # @free_mem3Dint
# %bb.0:
	beqz	a0, .LBB19_10
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	blez	a1, .LBB19_9
# %bb.2:
	slli	a1, a1, 3
	add	s3, s0, a1
	lui	s1, %hi(.L.str.15)
	addi	s1, s1, %lo(.L.str.15)
	mv	s4, s0
	j	.LBB19_4
.LBB19_3:                               #   in Loop: Header=BB19_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
	addi	s4, s4, 8
	beq	s4, s3, .LBB19_9
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	ld	s2, 0(s4)
	beqz	s2, .LBB19_3
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=1
	ld	a0, 0(s2)
	beqz	a0, .LBB19_7
# %bb.6:                                #   in Loop: Header=BB19_4 Depth=1
	call	free
	j	.LBB19_8
.LBB19_7:                               #   in Loop: Header=BB19_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
.LBB19_8:                               #   in Loop: Header=BB19_4 Depth=1
	mv	a0, s2
	call	free
	addi	s4, s4, 8
	bne	s4, s3, .LBB19_4
.LBB19_9:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.LBB19_10:
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	li	a1, 100
	tail	error
.Lfunc_end19:
	.size	free_mem3Dint, .Lfunc_end19-free_mem3Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem3Dint64                 # -- Begin function free_mem3Dint64
	.p2align	2
	.type	free_mem3Dint64,@function
free_mem3Dint64:                        # @free_mem3Dint64
# %bb.0:
	beqz	a0, .LBB20_10
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	blez	a1, .LBB20_9
# %bb.2:
	slli	a1, a1, 3
	add	s3, s0, a1
	lui	s1, %hi(.L.str.16)
	addi	s1, s1, %lo(.L.str.16)
	mv	s4, s0
	j	.LBB20_4
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
	addi	s4, s4, 8
	beq	s4, s3, .LBB20_9
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	ld	s2, 0(s4)
	beqz	s2, .LBB20_3
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	ld	a0, 0(s2)
	beqz	a0, .LBB20_7
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=1
	call	free
	j	.LBB20_8
.LBB20_7:                               #   in Loop: Header=BB20_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
.LBB20_8:                               #   in Loop: Header=BB20_4 Depth=1
	mv	a0, s2
	call	free
	addi	s4, s4, 8
	bne	s4, s3, .LBB20_4
.LBB20_9:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.LBB20_10:
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	li	a1, 100
	tail	error
.Lfunc_end20:
	.size	free_mem3Dint64, .Lfunc_end20-free_mem3Dint64
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem4Dint                   # -- Begin function free_mem4Dint
	.p2align	2
	.type	free_mem4Dint,@function
free_mem4Dint:                          # @free_mem4Dint
# %bb.0:
	beqz	a0, .LBB21_5
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	blez	a1, .LBB21_4
# %bb.2:
	mv	s0, a2
	slli	a1, a1, 3
	add	s2, s1, a1
	mv	s3, s1
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	mv	a1, s0
	call	free_mem3Dint
	addi	s3, s3, 8
	bne	s3, s2, .LBB21_3
.LBB21_4:
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.LBB21_5:
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	li	a1, 100
	tail	error
.Lfunc_end21:
	.size	free_mem4Dint, .Lfunc_end21-free_mem4Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem5Dint                   # -- Begin function free_mem5Dint
	.p2align	2
	.type	free_mem5Dint,@function
free_mem5Dint:                          # @free_mem5Dint
# %bb.0:
	beqz	a0, .LBB22_19
# %bb.1:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	mv	s1, a1
	mv	s7, a0
	blez	a1, .LBB22_32
# %bb.2:
	blez	a2, .LBB22_20
# %bb.3:
	slli	a2, a2, 32
	srli	s8, a2, 32
	blez	a3, .LBB22_24
# %bb.4:                                # %.preheader2
	li	s9, 0
	slli	a3, a3, 32
	srli	a3, a3, 32
	slli	s10, a3, 3
	lui	s3, %hi(.L.str.18)
	addi	s3, s3, %lo(.L.str.18)
	lui	s4, %hi(.L.str.15)
	addi	s4, s4, %lo(.L.str.15)
	sd	s1, 0(sp)                       # 8-byte Folded Spill
	j	.LBB22_6
.LBB22_5:                               #   in Loop: Header=BB22_6 Depth=1
	li	a1, 100
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	call	error
	addi	s9, s9, 1
	beq	s9, s1, .LBB22_32
.LBB22_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_9 Depth 2
                                        #       Child Loop BB22_12 Depth 3
	slli	a0, s9, 3
	add	a0, s7, a0
	ld	s5, 0(a0)
	beqz	s5, .LBB22_5
# %bb.7:                                # %.preheader1
                                        #   in Loop: Header=BB22_6 Depth=1
	mv	s1, s7
	li	s11, 0
	j	.LBB22_9
.LBB22_8:                               #   in Loop: Header=BB22_9 Depth=2
	li	a1, 100
	mv	a0, s3
	call	error
	addi	s11, s11, 1
	beq	s11, s8, .LBB22_18
.LBB22_9:                               #   Parent Loop BB22_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_12 Depth 3
	slli	a0, s11, 3
	add	a0, s5, a0
	ld	s0, 0(a0)
	beqz	s0, .LBB22_8
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB22_9 Depth=2
	add	s6, s0, s10
	mv	s2, s0
	j	.LBB22_12
.LBB22_11:                              #   in Loop: Header=BB22_12 Depth=3
	li	a1, 100
	mv	a0, s4
	call	error
	addi	s2, s2, 8
	beq	s2, s6, .LBB22_17
.LBB22_12:                              #   Parent Loop BB22_6 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	s7, 0(s2)
	beqz	s7, .LBB22_11
# %bb.13:                               #   in Loop: Header=BB22_12 Depth=3
	ld	a0, 0(s7)
	beqz	a0, .LBB22_15
# %bb.14:                               #   in Loop: Header=BB22_12 Depth=3
	call	free
	j	.LBB22_16
.LBB22_15:                              #   in Loop: Header=BB22_12 Depth=3
	li	a1, 100
	mv	a0, s4
	call	error
.LBB22_16:                              #   in Loop: Header=BB22_12 Depth=3
	mv	a0, s7
	call	free
	addi	s2, s2, 8
	bne	s2, s6, .LBB22_12
.LBB22_17:                              #   in Loop: Header=BB22_9 Depth=2
	mv	a0, s0
	call	free
	addi	s11, s11, 1
	bne	s11, s8, .LBB22_9
.LBB22_18:                              #   in Loop: Header=BB22_6 Depth=1
	mv	a0, s5
	call	free
	mv	s7, s1
	ld	s1, 0(sp)                       # 8-byte Folded Reload
	addi	s9, s9, 1
	bne	s9, s1, .LBB22_6
	j	.LBB22_32
.LBB22_19:
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	li	a1, 100
	tail	error
.LBB22_20:
	slli	s1, s1, 32
	srli	s0, s1, 29
	add	s0, s7, s0
	lui	s1, %hi(.L.str.20)
	addi	s1, s1, %lo(.L.str.20)
	mv	s2, s7
	j	.LBB22_22
.LBB22_21:                              #   in Loop: Header=BB22_22 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
	addi	s2, s2, 8
	beq	s2, s0, .LBB22_32
.LBB22_22:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s2)
	beqz	a0, .LBB22_21
# %bb.23:                               #   in Loop: Header=BB22_22 Depth=1
	call	free
	addi	s2, s2, 8
	bne	s2, s0, .LBB22_22
	j	.LBB22_32
.LBB22_24:                              # %.preheader4
	li	s5, 0
	slli	s8, s8, 3
	lui	s2, %hi(.L.str.20)
	addi	s2, s2, %lo(.L.str.20)
	lui	s3, %hi(.L.str.18)
	addi	s3, s3, %lo(.L.str.18)
	j	.LBB22_26
.LBB22_25:                              #   in Loop: Header=BB22_26 Depth=1
	mv	a0, s4
	call	free
	addi	s5, s5, 1
	beq	s5, s1, .LBB22_32
.LBB22_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_29 Depth 2
	slli	a0, s5, 3
	add	a0, s7, a0
	ld	s4, 0(a0)
	beqz	s4, .LBB22_31
# %bb.27:                               # %.preheader3
                                        #   in Loop: Header=BB22_26 Depth=1
	add	s0, s4, s8
	mv	s6, s4
	j	.LBB22_29
.LBB22_28:                              #   in Loop: Header=BB22_29 Depth=2
	call	free
	addi	s6, s6, 8
	beq	s6, s0, .LBB22_25
.LBB22_29:                              #   Parent Loop BB22_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s6)
	bnez	a0, .LBB22_28
# %bb.30:                               #   in Loop: Header=BB22_29 Depth=2
	li	a1, 100
	mv	a0, s3
	call	error
	addi	s6, s6, 8
	bne	s6, s0, .LBB22_29
	j	.LBB22_25
.LBB22_31:                              #   in Loop: Header=BB22_26 Depth=1
	li	a1, 100
	mv	a0, s2
	call	error
	addi	s5, s5, 1
	bne	s5, s1, .LBB22_26
.LBB22_32:
	mv	a0, s7
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	tail	free
.Lfunc_end22:
	.size	free_mem5Dint, .Lfunc_end22-free_mem5Dint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2Dshort                  # -- Begin function get_mem2Dshort
	.p2align	2
	.type	get_mem2Dshort,@function
get_mem2Dshort:                         # @get_mem2Dshort
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s4, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB23_2
# %bb.1:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.23)
	addi	a3, a3, %lo(.L.str.23)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	ld	s4, 0(s0)
.LBB23_2:
	mulw	s3, s1, s2
	li	a1, 2
	li	s5, 2
	mv	a0, s3
	call	calloc
	sd	a0, 0(s4)
	beqz	a0, .LBB23_4
# %bb.3:
	bge	s2, s5, .LBB23_5
	j	.LBB23_7
.LBB23_4:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.23)
	addi	a3, a3, %lo(.L.str.23)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	blt	s2, s5, .LBB23_7
.LBB23_5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
	slli	s1, s1, 1
.LBB23_6:                               # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s1
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB23_6
.LBB23_7:
	slliw	a0, s3, 1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end23:
	.size	get_mem2Dshort, .Lfunc_end23-get_mem2Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem3Dshort                  # -- Begin function get_mem3Dshort
	.p2align	2
	.type	get_mem3Dshort,@function
get_mem3Dshort:                         # @get_mem3Dshort
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	sd	a0, 0(s3)
	bnez	a0, .LBB24_2
# %bb.1:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.24)
	addi	a3, a3, %lo(.L.str.24)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
.LBB24_2:
	blez	s2, .LBB24_5
# %bb.3:
	li	s4, 0
	slli	s5, s2, 3
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	add	a0, a0, s4
	mv	a1, s1
	mv	a2, s0
	call	get_mem2Dshort
	addi	s4, s4, 8
	bne	s5, s4, .LBB24_4
.LBB24_5:
	mul	a0, s2, s1
	mul	a0, a0, s0
	slliw	a0, a0, 1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end24:
	.size	get_mem3Dshort, .Lfunc_end24-get_mem3Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem4Dshort                  # -- Begin function get_mem4Dshort
	.p2align	2
	.type	get_mem4Dshort,@function
get_mem4Dshort:                         # @get_mem4Dshort
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	mv	s9, a4
	mv	s4, a3
	mv	s11, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	a0, 0(s0)
	beqz	a0, .LBB25_16
# %bb.1:
	blez	s2, .LBB25_17
.LBB25_2:
	mulw	s3, s9, s4
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	blez	s11, .LBB25_18
# %bb.3:
	slli	a0, s11, 32
	li	a1, 1
	srli	s10, a0, 32
	sd	s11, 16(sp)                     # 8-byte Folded Spill
	bge	a1, s4, .LBB25_24
# %bb.4:                                # %.preheader
	li	a1, 0
	slli	a0, s4, 32
	srli	a0, a0, 32
	slli	a0, a0, 3
	addi	s7, a0, -8
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	s6, %hi(.L.str.22)
	addi	s6, s6, %lo(.L.str.22)
	lui	s8, %hi(.L.str.23)
	addi	s8, s8, %lo(.L.str.23)
	slli	s9, s9, 1
.LBB25_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_8 Depth 2
                                        #       Child Loop BB25_13 Depth 3
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 0(a0)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	slli	a0, a1, 3
	add	s2, s2, a0
	li	a1, 8
	mv	a0, s11
	call	calloc
	sd	a0, 0(s2)
	bnez	a0, .LBB25_7
# %bb.6:                                #   in Loop: Header=BB25_5 Depth=1
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	lui	a3, %hi(.L.str.24)
	addi	a3, a3, %lo(.L.str.24)
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB25_7:                               #   in Loop: Header=BB25_5 Depth=1
	li	s0, 0
.LBB25_8:                               #   Parent Loop BB25_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_13 Depth 3
	ld	s11, 0(s2)
	slli	a0, s0, 3
	add	s11, s11, a0
	li	a1, 8
	mv	a0, s4
	call	calloc
	mv	s1, a0
	sd	a0, 0(s11)
	bnez	a0, .LBB25_10
# %bb.9:                                #   in Loop: Header=BB25_8 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
	ld	s1, 0(s11)
.LBB25_10:                              #   in Loop: Header=BB25_8 Depth=2
	li	a1, 2
	mv	a0, s3
	call	calloc
	sd	a0, 0(s1)
	bnez	a0, .LBB25_12
# %bb.11:                               #   in Loop: Header=BB25_8 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB25_12:                              #   in Loop: Header=BB25_8 Depth=2
	li	a0, 0
.LBB25_13:                              #   Parent Loop BB25_5 Depth=1
                                        #     Parent Loop BB25_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 0(s11)
	add	a1, a1, a0
	ld	a2, 0(a1)
	add	a2, a2, s9
	addi	a0, a0, 8
	sd	a2, 8(a1)
	bne	s7, a0, .LBB25_13
# %bb.14:                               #   in Loop: Header=BB25_8 Depth=2
	addi	s0, s0, 1
	bne	s0, s10, .LBB25_8
# %bb.15:                               #   in Loop: Header=BB25_5 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	addi	a1, a1, 1
	ld	s11, 16(sp)                     # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	bne	a1, s2, .LBB25_5
	j	.LBB25_23
.LBB25_16:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.25)
	addi	a3, a3, %lo(.L.str.25)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	bgtz	s2, .LBB25_2
.LBB25_17:
	mul	s3, s9, s4
	j	.LBB25_23
.LBB25_18:
	li	s0, 0
	slli	s1, s2, 32
	srli	s1, s1, 29
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	s5, %hi(.L.str.22)
	addi	s5, s5, %lo(.L.str.22)
	lui	s6, %hi(.L.str.24)
	addi	s6, s6, %lo(.L.str.24)
	j	.LBB25_20
.LBB25_19:                              #   in Loop: Header=BB25_20 Depth=1
	addi	s0, s0, 8
	beq	s1, s0, .LBB25_22
.LBB25_20:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a0)
	add	s2, a0, s0
	li	a1, 8
	mv	a0, s11
	call	calloc
	sd	a0, 0(s2)
	bnez	a0, .LBB25_19
# %bb.21:                               #   in Loop: Header=BB25_20 Depth=1
	li	a1, 300
	mv	a0, s4
	mv	a2, s5
	mv	a3, s6
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	j	.LBB25_19
.LBB25_22:
	ld	s2, 24(sp)                      # 8-byte Folded Reload
.LBB25_23:
	mul	a0, s2, s11
	mul	a0, s3, a0
	slliw	a0, a0, 1
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB25_24:                              # %.preheader1
	li	s1, 0
	slli	s10, s10, 3
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	s6, %hi(.L.str.22)
	addi	s6, s6, %lo(.L.str.22)
	lui	s7, %hi(.L.str.24)
	addi	s7, s7, %lo(.L.str.24)
	lui	s8, %hi(.L.str.23)
	addi	s8, s8, %lo(.L.str.23)
	j	.LBB25_26
.LBB25_25:                              #   in Loop: Header=BB25_26 Depth=1
	addi	s1, s1, 1
	ld	s11, 16(sp)                     # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	beq	s1, s2, .LBB25_23
.LBB25_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_30 Depth 2
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 0(a0)
	slli	a0, s1, 3
	add	s2, s2, a0
	li	a1, 8
	mv	a0, s11
	call	calloc
	sd	a0, 0(s2)
	bnez	a0, .LBB25_28
# %bb.27:                               #   in Loop: Header=BB25_26 Depth=1
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s7
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB25_28:                              #   in Loop: Header=BB25_26 Depth=1
	li	s0, 0
	j	.LBB25_30
.LBB25_29:                              #   in Loop: Header=BB25_30 Depth=2
	addi	s0, s0, 8
	beq	s10, s0, .LBB25_25
.LBB25_30:                              #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s11, 0(s2)
	add	s11, s11, s0
	li	a1, 8
	mv	a0, s4
	call	calloc
	mv	s9, a0
	sd	a0, 0(s11)
	bnez	a0, .LBB25_32
# %bb.31:                               #   in Loop: Header=BB25_30 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
	ld	s9, 0(s11)
.LBB25_32:                              #   in Loop: Header=BB25_30 Depth=2
	li	a1, 2
	mv	a0, s3
	call	calloc
	sd	a0, 0(s9)
	bnez	a0, .LBB25_29
# %bb.33:                               #   in Loop: Header=BB25_30 Depth=2
	li	a1, 300
	mv	a0, s5
	mv	a2, s6
	mv	a3, s8
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
	j	.LBB25_29
.Lfunc_end25:
	.size	get_mem4Dshort, .Lfunc_end25-get_mem4Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem5Dshort                  # -- Begin function get_mem5Dshort
	.p2align	2
	.type	get_mem5Dshort,@function
get_mem5Dshort:                         # @get_mem5Dshort
# %bb.0:
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
	mv	s0, a5
	mv	s1, a4
	mv	s2, a3
	mv	s3, a2
	mv	s4, a1
	mv	s5, a0
	li	a1, 8
	mv	a0, s4
	call	calloc
	sd	a0, 0(s5)
	bnez	a0, .LBB26_2
# %bb.1:
	lui	s6, %hi(errortext)
	addi	s6, s6, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.26)
	addi	a3, a3, %lo(.L.str.26)
	li	a1, 300
	mv	a0, s6
	call	snprintf
	li	a1, 100
	mv	a0, s6
	call	error
.LBB26_2:
	blez	s4, .LBB26_5
# %bb.3:
	li	s6, 0
	slli	s7, s4, 3
.LBB26_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s5)
	add	a0, a0, s6
	mv	a1, s3
	mv	a2, s2
	mv	a3, s1
	mv	a4, s0
	call	get_mem4Dshort
	addi	s6, s6, 8
	bne	s7, s6, .LBB26_4
.LBB26_5:
	mul	a0, s4, s3
	mul	a1, s2, s1
	mul	a0, a0, a1
	mul	a0, a0, s0
	slliw	a0, a0, 1
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end26:
	.size	get_mem5Dshort, .Lfunc_end26-get_mem5Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem6Dshort                  # -- Begin function get_mem6Dshort
	.p2align	2
	.type	get_mem6Dshort,@function
get_mem6Dshort:                         # @get_mem6Dshort
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	mv	s0, a6
	mv	s1, a5
	mv	s2, a4
	mv	s3, a3
	mv	s4, a2
	mv	s5, a1
	mv	s6, a0
	li	a1, 8
	mv	a0, s5
	call	calloc
	sd	a0, 0(s6)
	bnez	a0, .LBB27_2
# %bb.1:
	lui	s7, %hi(errortext)
	addi	s7, s7, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.27)
	addi	a3, a3, %lo(.L.str.27)
	li	a1, 300
	mv	a0, s7
	call	snprintf
	li	a1, 100
	mv	a0, s7
	call	error
.LBB27_2:
	blez	s5, .LBB27_10
# %bb.3:
	li	s10, 0
	blez	s4, .LBB27_11
# %bb.4:                                # %.preheader
	slli	a0, s4, 32
	srli	a0, a0, 32
	slli	s11, a0, 3
	lui	s7, %hi(errortext)
	addi	s7, s7, %lo(errortext)
.LBB27_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_8 Depth 2
	ld	s8, 0(s6)
	slli	a0, s10, 3
	add	s8, s8, a0
	li	a1, 8
	mv	a0, s4
	call	calloc
	sd	a0, 0(s8)
	bnez	a0, .LBB27_7
# %bb.6:                                #   in Loop: Header=BB27_5 Depth=1
	li	a1, 300
	mv	a0, s7
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.26)
	addi	a3, a3, %lo(.L.str.26)
	call	snprintf
	li	a1, 100
	mv	a0, s7
	call	error
.LBB27_7:                               #   in Loop: Header=BB27_5 Depth=1
	li	s9, 0
.LBB27_8:                               #   Parent Loop BB27_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s8)
	add	a0, a0, s9
	mv	a1, s3
	mv	a2, s2
	mv	a3, s1
	mv	a4, s0
	call	get_mem4Dshort
	addi	s9, s9, 8
	bne	s11, s9, .LBB27_8
# %bb.9:                                #   in Loop: Header=BB27_5 Depth=1
	addi	s10, s10, 1
	bne	s10, s5, .LBB27_5
.LBB27_10:
	mul	a0, s5, s4
	mul	a1, s3, s2
	mul	a0, a0, a1
	mul	a1, s1, s0
	mul	a0, a0, a1
	slliw	a0, a0, 1
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.LBB27_11:                              # %.preheader1
	slli	s11, s5, 3
	lui	s7, %hi(errortext)
	addi	s7, s7, %lo(errortext)
	lui	s9, %hi(.L.str.26)
	addi	s9, s9, %lo(.L.str.26)
	j	.LBB27_13
.LBB27_12:                              #   in Loop: Header=BB27_13 Depth=1
	addi	s10, s10, 8
	beq	s11, s10, .LBB27_10
.LBB27_13:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s6)
	add	s8, a0, s10
	li	a1, 8
	mv	a0, s4
	call	calloc
	sd	a0, 0(s8)
	bnez	a0, .LBB27_12
# %bb.14:                               #   in Loop: Header=BB27_13 Depth=1
	li	a1, 300
	mv	a0, s7
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	mv	a3, s9
	call	snprintf
	li	a1, 100
	mv	a0, s7
	call	error
	j	.LBB27_12
.Lfunc_end27:
	.size	get_mem6Dshort, .Lfunc_end27-get_mem6Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2Dshort                 # -- Begin function free_mem2Dshort
	.p2align	2
	.type	free_mem2Dshort,@function
free_mem2Dshort:                        # @free_mem2Dshort
# %bb.0:
	beqz	a0, .LBB28_3
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	beqz	a0, .LBB28_4
# %bb.2:
	call	free
	j	.LBB28_5
.LBB28_3:
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	li	a1, 100
	tail	error
.LBB28_4:
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	li	a1, 100
	call	error
.LBB28_5:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end28:
	.size	free_mem2Dshort, .Lfunc_end28-free_mem2Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem3Dshort                 # -- Begin function free_mem3Dshort
	.p2align	2
	.type	free_mem3Dshort,@function
free_mem3Dshort:                        # @free_mem3Dshort
# %bb.0:
	beqz	a0, .LBB29_10
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	blez	a1, .LBB29_9
# %bb.2:
	slli	a1, a1, 3
	add	s3, s0, a1
	lui	s1, %hi(.L.str.28)
	addi	s1, s1, %lo(.L.str.28)
	mv	s4, s0
	j	.LBB29_4
.LBB29_3:                               #   in Loop: Header=BB29_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
	addi	s4, s4, 8
	beq	s4, s3, .LBB29_9
.LBB29_4:                               # =>This Inner Loop Header: Depth=1
	ld	s2, 0(s4)
	beqz	s2, .LBB29_3
# %bb.5:                                #   in Loop: Header=BB29_4 Depth=1
	ld	a0, 0(s2)
	beqz	a0, .LBB29_7
# %bb.6:                                #   in Loop: Header=BB29_4 Depth=1
	call	free
	j	.LBB29_8
.LBB29_7:                               #   in Loop: Header=BB29_4 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
.LBB29_8:                               #   in Loop: Header=BB29_4 Depth=1
	mv	a0, s2
	call	free
	addi	s4, s4, 8
	bne	s4, s3, .LBB29_4
.LBB29_9:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.LBB29_10:
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	li	a1, 100
	tail	error
.Lfunc_end29:
	.size	free_mem3Dshort, .Lfunc_end29-free_mem3Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem4Dshort                 # -- Begin function free_mem4Dshort
	.p2align	2
	.type	free_mem4Dshort,@function
free_mem4Dshort:                        # @free_mem4Dshort
# %bb.0:
	beqz	a0, .LBB30_5
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	blez	a1, .LBB30_4
# %bb.2:
	mv	s0, a2
	slli	a1, a1, 3
	add	s2, s1, a1
	mv	s3, s1
.LBB30_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s3)
	mv	a1, s0
	call	free_mem3Dshort
	addi	s3, s3, 8
	bne	s3, s2, .LBB30_3
.LBB30_4:
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.LBB30_5:
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	li	a1, 100
	tail	error
.Lfunc_end30:
	.size	free_mem4Dshort, .Lfunc_end30-free_mem4Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem5Dshort                 # -- Begin function free_mem5Dshort
	.p2align	2
	.type	free_mem5Dshort,@function
free_mem5Dshort:                        # @free_mem5Dshort
# %bb.0:
	beqz	a0, .LBB31_19
# %bb.1:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	mv	s1, a1
	mv	s7, a0
	blez	a1, .LBB31_32
# %bb.2:
	blez	a2, .LBB31_20
# %bb.3:
	slli	a2, a2, 32
	srli	s8, a2, 32
	blez	a3, .LBB31_24
# %bb.4:                                # %.preheader2
	li	s9, 0
	slli	a3, a3, 32
	srli	a3, a3, 32
	slli	s10, a3, 3
	lui	s3, %hi(.L.str.29)
	addi	s3, s3, %lo(.L.str.29)
	lui	s4, %hi(.L.str.28)
	addi	s4, s4, %lo(.L.str.28)
	sd	s1, 0(sp)                       # 8-byte Folded Spill
	j	.LBB31_6
.LBB31_5:                               #   in Loop: Header=BB31_6 Depth=1
	li	a1, 100
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	call	error
	addi	s9, s9, 1
	beq	s9, s1, .LBB31_32
.LBB31_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_9 Depth 2
                                        #       Child Loop BB31_12 Depth 3
	slli	a0, s9, 3
	add	a0, s7, a0
	ld	s5, 0(a0)
	beqz	s5, .LBB31_5
# %bb.7:                                # %.preheader1
                                        #   in Loop: Header=BB31_6 Depth=1
	mv	s1, s7
	li	s11, 0
	j	.LBB31_9
.LBB31_8:                               #   in Loop: Header=BB31_9 Depth=2
	li	a1, 100
	mv	a0, s3
	call	error
	addi	s11, s11, 1
	beq	s11, s8, .LBB31_18
.LBB31_9:                               #   Parent Loop BB31_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_12 Depth 3
	slli	a0, s11, 3
	add	a0, s5, a0
	ld	s0, 0(a0)
	beqz	s0, .LBB31_8
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB31_9 Depth=2
	add	s6, s0, s10
	mv	s2, s0
	j	.LBB31_12
.LBB31_11:                              #   in Loop: Header=BB31_12 Depth=3
	li	a1, 100
	mv	a0, s4
	call	error
	addi	s2, s2, 8
	beq	s2, s6, .LBB31_17
.LBB31_12:                              #   Parent Loop BB31_6 Depth=1
                                        #     Parent Loop BB31_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	s7, 0(s2)
	beqz	s7, .LBB31_11
# %bb.13:                               #   in Loop: Header=BB31_12 Depth=3
	ld	a0, 0(s7)
	beqz	a0, .LBB31_15
# %bb.14:                               #   in Loop: Header=BB31_12 Depth=3
	call	free
	j	.LBB31_16
.LBB31_15:                              #   in Loop: Header=BB31_12 Depth=3
	li	a1, 100
	mv	a0, s4
	call	error
.LBB31_16:                              #   in Loop: Header=BB31_12 Depth=3
	mv	a0, s7
	call	free
	addi	s2, s2, 8
	bne	s2, s6, .LBB31_12
.LBB31_17:                              #   in Loop: Header=BB31_9 Depth=2
	mv	a0, s0
	call	free
	addi	s11, s11, 1
	bne	s11, s8, .LBB31_9
.LBB31_18:                              #   in Loop: Header=BB31_6 Depth=1
	mv	a0, s5
	call	free
	mv	s7, s1
	ld	s1, 0(sp)                       # 8-byte Folded Reload
	addi	s9, s9, 1
	bne	s9, s1, .LBB31_6
	j	.LBB31_32
.LBB31_19:
	lui	a0, %hi(.L.str.31)
	addi	a0, a0, %lo(.L.str.31)
	li	a1, 100
	tail	error
.LBB31_20:
	slli	s1, s1, 32
	srli	s0, s1, 29
	add	s0, s7, s0
	lui	s1, %hi(.L.str.30)
	addi	s1, s1, %lo(.L.str.30)
	mv	s2, s7
	j	.LBB31_22
.LBB31_21:                              #   in Loop: Header=BB31_22 Depth=1
	li	a1, 100
	mv	a0, s1
	call	error
	addi	s2, s2, 8
	beq	s2, s0, .LBB31_32
.LBB31_22:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s2)
	beqz	a0, .LBB31_21
# %bb.23:                               #   in Loop: Header=BB31_22 Depth=1
	call	free
	addi	s2, s2, 8
	bne	s2, s0, .LBB31_22
	j	.LBB31_32
.LBB31_24:                              # %.preheader4
	li	s5, 0
	slli	s8, s8, 3
	lui	s2, %hi(.L.str.30)
	addi	s2, s2, %lo(.L.str.30)
	lui	s3, %hi(.L.str.29)
	addi	s3, s3, %lo(.L.str.29)
	j	.LBB31_26
.LBB31_25:                              #   in Loop: Header=BB31_26 Depth=1
	mv	a0, s4
	call	free
	addi	s5, s5, 1
	beq	s5, s1, .LBB31_32
.LBB31_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_29 Depth 2
	slli	a0, s5, 3
	add	a0, s7, a0
	ld	s4, 0(a0)
	beqz	s4, .LBB31_31
# %bb.27:                               # %.preheader3
                                        #   in Loop: Header=BB31_26 Depth=1
	add	s0, s4, s8
	mv	s6, s4
	j	.LBB31_29
.LBB31_28:                              #   in Loop: Header=BB31_29 Depth=2
	call	free
	addi	s6, s6, 8
	beq	s6, s0, .LBB31_25
.LBB31_29:                              #   Parent Loop BB31_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s6)
	bnez	a0, .LBB31_28
# %bb.30:                               #   in Loop: Header=BB31_29 Depth=2
	li	a1, 100
	mv	a0, s3
	call	error
	addi	s6, s6, 8
	bne	s6, s0, .LBB31_29
	j	.LBB31_25
.LBB31_31:                              #   in Loop: Header=BB31_26 Depth=1
	li	a1, 100
	mv	a0, s2
	call	error
	addi	s5, s5, 1
	bne	s5, s1, .LBB31_26
.LBB31_32:
	mv	a0, s7
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	tail	free
.Lfunc_end31:
	.size	free_mem5Dshort, .Lfunc_end31-free_mem5Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem6Dshort                 # -- Begin function free_mem6Dshort
	.p2align	2
	.type	free_mem6Dshort,@function
free_mem6Dshort:                        # @free_mem6Dshort
# %bb.0:
	beqz	a0, .LBB32_5
# %bb.1:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s3, a0
	blez	a1, .LBB32_4
# %bb.2:
	mv	s0, a4
	mv	s1, a3
	mv	s2, a2
	slli	a1, a1, 3
	add	s4, s3, a1
	mv	s5, s3
.LBB32_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s5)
	mv	a1, s2
	mv	a2, s1
	mv	a3, s0
	call	free_mem5Dshort
	addi	s5, s5, 8
	bne	s5, s4, .LBB32_3
.LBB32_4:
	mv	a0, s3
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	free
.LBB32_5:
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	li	a1, 100
	tail	error
.Lfunc_end32:
	.size	free_mem6Dshort, .Lfunc_end32-free_mem6Dshort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2Ddouble                 # -- Begin function get_mem2Ddouble
	.p2align	2
	.type	get_mem2Ddouble,@function
get_mem2Ddouble:                        # @get_mem2Ddouble
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s4, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB33_2
# %bb.1:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.33)
	addi	a3, a3, %lo(.L.str.33)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 100
	mv	a0, s3
	call	error
	ld	s4, 0(s0)
.LBB33_2:
	mulw	s3, s1, s2
	li	a1, 8
	mv	a0, s3
	call	calloc
	sd	a0, 0(s4)
	beqz	a0, .LBB33_4
# %bb.3:
	li	a0, 2
	bge	s2, a0, .LBB33_5
	j	.LBB33_7
.LBB33_4:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.33)
	addi	a3, a3, %lo(.L.str.33)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	li	a0, 2
	blt	s2, a0, .LBB33_7
.LBB33_5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
	slli	s1, s1, 3
.LBB33_6:                               # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s1
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB33_6
.LBB33_7:
	slliw	a0, s3, 3
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end33:
	.size	get_mem2Ddouble, .Lfunc_end33-get_mem2Ddouble
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2Ddb_offset              # -- Begin function get_mem2Ddb_offset
	.p2align	2
	.type	get_mem2Ddb_offset,@function
get_mem2Ddb_offset:                     # @get_mem2Ddb_offset
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s3, a3
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s5, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB34_2
# %bb.1:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.33)
	addi	a3, a3, %lo(.L.str.33)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	ld	s5, 0(s0)
.LBB34_2:
	mulw	s4, s1, s2
	li	a1, 8
	mv	a0, s4
	call	calloc
	sd	a0, 0(s5)
	bnez	a0, .LBB34_4
# %bb.3:
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.33)
	addi	a3, a3, %lo(.L.str.33)
	li	a1, 300
	mv	a0, s5
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB34_4:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	slli	s3, s3, 3
	add	a1, a1, s3
	li	a2, 2
	sd	a1, 0(a0)
	blt	s2, a2, .LBB34_7
# %bb.5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
	slli	s1, s1, 3
.LBB34_6:                               # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s1
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB34_6
.LBB34_7:
	slliw	a0, s4, 3
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end34:
	.size	get_mem2Ddb_offset, .Lfunc_end34-get_mem2Ddb_offset
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2Ddouble                # -- Begin function free_mem2Ddouble
	.p2align	2
	.type	free_mem2Ddouble,@function
free_mem2Ddouble:                       # @free_mem2Ddouble
# %bb.0:
	beqz	a0, .LBB35_3
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	beqz	a0, .LBB35_4
# %bb.2:
	call	free
	j	.LBB35_5
.LBB35_3:
	lui	a0, %hi(.L.str.34)
	addi	a0, a0, %lo(.L.str.34)
	li	a1, 100
	tail	error
.LBB35_4:
	lui	a0, %hi(.L.str.34)
	addi	a0, a0, %lo(.L.str.34)
	li	a1, 100
	call	error
.LBB35_5:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end35:
	.size	free_mem2Ddouble, .Lfunc_end35-free_mem2Ddouble
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2Ddb_offset             # -- Begin function free_mem2Ddb_offset
	.p2align	2
	.type	free_mem2Ddb_offset,@function
free_mem2Ddb_offset:                    # @free_mem2Ddb_offset
# %bb.0:
	beqz	a0, .LBB36_2
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	a1, 0(a0)
	mv	s0, a0
	mv	a0, a1
	call	free
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB36_2:
	lui	a0, %hi(.L.str.35)
	addi	a0, a0, %lo(.L.str.35)
	li	a1, 100
	tail	error
.Lfunc_end36:
	.size	free_mem2Ddb_offset, .Lfunc_end36-free_mem2Ddb_offset
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem2Dint_offset             # -- Begin function get_mem2Dint_offset
	.p2align	2
	.type	get_mem2Dint_offset,@function
get_mem2Dint_offset:                    # @get_mem2Dint_offset
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s3, a3
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s5, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB37_2
# %bb.1:
	lui	s4, %hi(errortext)
	addi	s4, s4, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.7)
	addi	a3, a3, %lo(.L.str.7)
	li	a1, 300
	mv	a0, s4
	call	snprintf
	li	a1, 100
	mv	a0, s4
	call	error
	ld	s5, 0(s0)
.LBB37_2:
	mulw	s4, s1, s2
	li	a1, 4
	mv	a0, s4
	call	calloc
	sd	a0, 0(s5)
	bnez	a0, .LBB37_4
# %bb.3:
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	a2, %hi(.L.str.22)
	addi	a2, a2, %lo(.L.str.22)
	lui	a3, %hi(.L.str.7)
	addi	a3, a3, %lo(.L.str.7)
	li	a1, 300
	mv	a0, s5
	call	snprintf
	li	a1, 100
	mv	a0, s5
	call	error
.LBB37_4:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	slli	s3, s3, 2
	add	a1, a1, s3
	li	a2, 2
	sd	a1, 0(a0)
	blt	s2, a2, .LBB37_7
# %bb.5:
	li	a0, 0
	slli	a1, s2, 3
	addi	a1, a1, -8
	slli	s1, s1, 2
.LBB37_6:                               # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	add	a2, a2, a0
	ld	a3, 0(a2)
	add	a3, a3, s1
	addi	a0, a0, 8
	sd	a3, 8(a2)
	bne	a1, a0, .LBB37_6
.LBB37_7:
	slliw	a0, s4, 2
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end37:
	.size	get_mem2Dint_offset, .Lfunc_end37-get_mem2Dint_offset
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem2Dint_offset            # -- Begin function free_mem2Dint_offset
	.p2align	2
	.type	free_mem2Dint_offset,@function
free_mem2Dint_offset:                   # @free_mem2Dint_offset
# %bb.0:
	beqz	a0, .LBB38_2
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	a1, 0(a0)
	mv	s0, a0
	mv	a0, a1
	call	free
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB38_2:
	lui	a0, %hi(.L.str.36)
	addi	a0, a0, %lo(.L.str.36)
	li	a1, 100
	tail	error
.Lfunc_end38:
	.size	free_mem2Dint_offset, .Lfunc_end38-free_mem2Dint_offset
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_top_bot_planes: imgTopField"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_top_bot_planes: imgBotField"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"get_mem2Dpel: array2D"
	.size	.L.str.2, 22

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"get_mem3Dpel: array3D"
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"free_mem2Dpel: trying to free unused memory"
	.size	.L.str.4, 44

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"free_mem3Dpel: trying to free unused memory"
	.size	.L.str.5, 44

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"get_mem2D: array2D"
	.size	.L.str.6, 19

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"get_mem2Dint: array2D"
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"get_mem2Dint64: array2D"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"get_mem3D: array3D"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"get_mem3Dint: array3D"
	.size	.L.str.10, 22

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"get_mem3Dint64: array3D"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"get_mem4Dint: array4D"
	.size	.L.str.12, 22

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"get_mem5Dint: array5D"
	.size	.L.str.13, 22

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"free_mem2D: trying to free unused memory"
	.size	.L.str.14, 41

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"free_mem2Dint: trying to free unused memory"
	.size	.L.str.15, 44

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"free_mem2Dint64: trying to free unused memory"
	.size	.L.str.16, 46

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"free_mem3D: trying to free unused memory"
	.size	.L.str.17, 41

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"free_mem3Dint: trying to free unused memory"
	.size	.L.str.18, 44

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"free_mem3Dint64: trying to free unused memory"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"free_mem4Dint: trying to free unused memory"
	.size	.L.str.20, 44

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"free_mem5Dint: trying to free unused memory"
	.size	.L.str.21, 44

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Could not allocate memory: %s"
	.size	.L.str.22, 30

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"get_mem2Dshort: array2D"
	.size	.L.str.23, 24

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"get_mem3Dshort: array3D"
	.size	.L.str.24, 24

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"get_mem4Dshort: array4D"
	.size	.L.str.25, 24

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"get_mem5Dshort: array5D"
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"get_mem6Dshort: array6D"
	.size	.L.str.27, 24

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"free_mem2Dshort: trying to free unused memory"
	.size	.L.str.28, 46

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"free_mem3Dshort: trying to free unused memory"
	.size	.L.str.29, 46

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"free_mem4Dshort: trying to free unused memory"
	.size	.L.str.30, 46

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"free_mem5Dshort: trying to free unused memory"
	.size	.L.str.31, 46

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"free_mem6Dshort: trying to free unused memory"
	.size	.L.str.32, 46

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"get_mem2Ddouble: array2D"
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"free_mem2Ddouble: trying to free unused memory"
	.size	.L.str.34, 47

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"free_mem2Ddb_offset: trying to free unused memory"
	.size	.L.str.35, 50

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"free_mem2Dint_offset: trying to free unused memory"
	.size	.L.str.36, 51

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
