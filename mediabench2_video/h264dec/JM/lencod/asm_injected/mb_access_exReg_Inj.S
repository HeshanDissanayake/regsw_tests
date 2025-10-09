	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"mb_access.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	mb_is_available                 # -- Begin function mb_is_available
	.p2align	2
	.type	mb_is_available,@function
mb_is_available:                        # @mb_is_available
# %bb.0:
	bltz	a0, .LBB0_5
# %bb.1:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	addiw	a3, a3, 192
	add	a3, a2, a3
	lw	a4, 0(a3)
	bge	a0, a4, .LBB0_5
# %bb.2:
	lw	a3, 156(a3)
	bnez	a3, .LBB0_4
# %bb.3:
	lui	a3, 8
	addiw	a3, a3, -1192
	add	a2, a2, a3
	ld	a2, 0(a2)
	li	a3, 528
	mul	a0, a0, a3
	add	a0, a2, a0
	lw	a0, 4(a0)
	mul	a1, a1, a3
	add	a1, a2, a1
	lw	a1, 4(a1)
	bne	a0, a1, .LBB0_5
.LBB0_4:
	li	a0, 1
	ret
.LBB0_5:
	li	a0, 0
	ret
.Lfunc_end0:
	.size	mb_is_available, .Lfunc_end0-mb_is_available
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CheckAvailabilityOfNeighbors    # -- Begin function CheckAvailabilityOfNeighbors
	.p2align	2
	.type	CheckAvailabilityOfNeighbors,@function
CheckAvailabilityOfNeighbors:           # @CheckAvailabilityOfNeighbors
# %bb.0:
	lui	a1, %hi(img)
	ld	a0, %lo(img)(a1)
	lw	a4, 12(a0)
	lui	a2, 8
	add	a0, a0, a2
	ld	a0, -1192(a0)
	li	a3, 528
	mul	a3, a4, a3
	add	a0, a0, a3
	sd	zero, 64(a0)
	sd	zero, 56(a0)
	ld	a1, %lo(img)(a1)
	lui	a3, 22
	addiw	a6, a3, 108
	add	a6, a1, a6
	lw	a3, 0(a6)
	addiw	a2, a2, -1192
	add	a1, a1, a2
	beqz	a3, .LBB1_21
# %bb.1:
	srliw	a2, a4, 31
	add	a2, a4, a2
	sraiw	t0, a2, 1
	lw	t1, 68(a6)
	andi	a2, a2, -2
	addiw	a3, a2, -2
	sw	a3, 432(a0)
	subw	a2, t0, t1
	slliw	a2, a2, 1
	sw	a2, 436(a0)
	addiw	t3, a2, 2
	sw	t3, 440(a0)
	not	a5, t1
	add	a5, t0, a5
	slliw	t2, a5, 1
	sw	t2, 444(a0)
	bltz	a3, .LBB1_6
# %bb.2:
	lw	a5, 84(a6)
	bge	a3, a5, .LBB1_6
# %bb.3:
	lw	a5, 240(a6)
	bnez	a5, .LBB1_5
# %bb.4:
	ld	a5, 0(a1)
	li	a7, 528
	mul	t4, a3, a7
	add	t4, a5, t4
	lw	t4, 4(t4)
	mul	a7, a4, a7
	add	a5, a5, a7
	lw	a5, 4(a5)
	bne	t4, a5, .LBB1_6
.LBB1_5:
	remuw	a5, t0, t1
	snez	a5, a5
	sw	a5, 448(a0)
	bgez	a2, .LBB1_7
	j	.LBB1_11
.LBB1_6:
	li	a5, 0
	sw	zero, 448(a0)
	bltz	a2, .LBB1_11
.LBB1_7:
	lw	a7, 84(a6)
	bge	a2, a7, .LBB1_11
# %bb.8:
	lw	a7, 240(a6)
	bnez	a7, .LBB1_10
# %bb.9:
	ld	a7, 0(a1)
	li	t4, 528
	mul	t5, a2, t4
	add	t5, a7, t5
	lw	t5, 4(t5)
	mul	t4, a4, t4
	add	a7, a7, t4
	lw	a7, 4(a7)
	bne	t5, a7, .LBB1_11
.LBB1_10:
	li	a7, 1
	sw	a7, 452(a0)
	bgez	t3, .LBB1_12
	j	.LBB1_16
.LBB1_11:
	li	a7, 0
	sw	zero, 452(a0)
	bltz	t3, .LBB1_16
.LBB1_12:
	lw	t4, 84(a6)
	bge	t3, t4, .LBB1_16
# %bb.13:
	lw	t4, 240(a6)
	bnez	t4, .LBB1_15
# %bb.14:
	ld	t4, 0(a1)
	li	t5, 528
	mul	t3, t3, t5
	add	t3, t4, t3
	lw	t3, 4(t3)
	mul	t5, a4, t5
	add	t4, t4, t5
	lw	t4, 4(t4)
	bne	t3, t4, .LBB1_16
.LBB1_15:
	addi	t3, t0, 1
	remuw	t3, t3, t1
	snez	t3, t3
	sw	t3, 456(a0)
	bgez	t2, .LBB1_17
	j	.LBB1_42
.LBB1_16:
	sw	zero, 456(a0)
	bltz	t2, .LBB1_42
.LBB1_17:
	lw	t3, 84(a6)
	bge	t2, t3, .LBB1_42
# %bb.18:
	lw	a6, 240(a6)
	bnez	a6, .LBB1_20
# %bb.19:
	ld	a6, 0(a1)
	li	t3, 528
	mul	t2, t2, t3
	add	t2, a6, t2
	lw	t2, 4(t2)
	mul	a4, a4, t3
	add	a4, a6, a4
	lw	a4, 4(a4)
	bne	t2, a4, .LBB1_42
.LBB1_20:
	remuw	a4, t0, t1
	snez	a4, a4
	sw	a4, 460(a0)
	bnez	a5, .LBB1_43
	j	.LBB1_44
.LBB1_21:
	lw	t0, 68(a6)
	addiw	a3, a4, -1
	sw	a3, 432(a0)
	subw	a2, a4, t0
	sw	a2, 436(a0)
	addiw	t2, a2, 1
	sw	t2, 440(a0)
	not	a5, t0
	addw	t1, a4, a5
	sw	t1, 444(a0)
	blez	a4, .LBB1_23
# %bb.22:
	lw	a5, 84(a6)
	bge	a5, a4, .LBB1_24
.LBB1_23:
	li	a5, 0
	sw	zero, 448(a0)
	bgez	a2, .LBB1_27
	j	.LBB1_31
.LBB1_24:
	lw	a5, 240(a6)
	bnez	a5, .LBB1_26
# %bb.25:
	ld	a5, 0(a1)
	li	a7, 528
	mul	t3, a3, a7
	add	t3, a5, t3
	lw	t3, 4(t3)
	mul	a7, a4, a7
	add	a5, a5, a7
	lw	a5, 4(a5)
	bne	t3, a5, .LBB1_23
.LBB1_26:
	remuw	a5, a4, t0
	snez	a5, a5
	sw	a5, 448(a0)
	bltz	a2, .LBB1_31
.LBB1_27:
	lw	t3, 84(a6)
	bge	a2, t3, .LBB1_31
# %bb.28:
	lw	a7, 240(a6)
	bnez	a7, .LBB1_30
# %bb.29:
	ld	a7, 0(a1)
	li	t4, 528
	mul	t5, a2, t4
	add	t5, a7, t5
	lw	t5, 4(t5)
	mul	t4, a4, t4
	add	a7, a7, t4
	lw	a7, 4(a7)
	bne	t5, a7, .LBB1_47
.LBB1_30:
	li	a7, 1
	sw	a7, 452(a0)
	blt	t2, t3, .LBB1_33
	j	.LBB1_37
.LBB1_31:
	sw	zero, 452(a0)
	bltz	t2, .LBB1_36
# %bb.32:
	lw	t3, 84(a6)
	li	a7, 0
	bge	t2, t3, .LBB1_37
.LBB1_33:
	lw	t3, 240(a6)
	bnez	t3, .LBB1_35
# %bb.34:
	ld	t3, 0(a1)
	li	t4, 528
	mul	t2, t2, t4
	add	t2, t3, t2
	lw	t2, 4(t2)
	mul	t4, a4, t4
	add	t3, t3, t4
	lw	t3, 4(t3)
	bne	t2, t3, .LBB1_37
.LBB1_35:
	addi	t2, a4, 1
	remuw	t2, t2, t0
	snez	t2, t2
	sw	t2, 456(a0)
	bgez	t1, .LBB1_38
	j	.LBB1_42
.LBB1_36:
	li	a7, 0
.LBB1_37:
	sw	zero, 456(a0)
	bltz	t1, .LBB1_42
.LBB1_38:
	lw	t2, 84(a6)
	bge	t1, t2, .LBB1_42
# %bb.39:
	lw	a6, 240(a6)
	bnez	a6, .LBB1_41
# %bb.40:
	ld	a6, 0(a1)
	li	t2, 528
	mul	t1, t1, t2
	add	t1, a6, t1
	lw	t1, 4(t1)
	mul	t2, a4, t2
	add	a6, a6, t2
	lw	a6, 4(a6)
	bne	t1, a6, .LBB1_42
.LBB1_41:
	remuw	a4, a4, t0
	snez	a4, a4
	sw	a4, 460(a0)
	bnez	a5, .LBB1_43
	j	.LBB1_44
.LBB1_42:
	sw	zero, 460(a0)
	beqz	a5, .LBB1_44
.LBB1_43:
	ld	a1, 0(a1)
	li	a4, 528
	mul	a3, a3, a4
	add	a1, a1, a3
	sd	a1, 64(a0)
.LBB1_44:
	beqz	a7, .LBB1_46
# %bb.45:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a3, 8
	add	a1, a1, a3
	ld	a1, -1192(a1)
	li	a3, 528
	mul	a2, a2, a3
	add	a1, a1, a2
	sd	a1, 56(a0)
.LBB1_46:
	ret
.LBB1_47:
	li	a7, 0
	sw	zero, 452(a0)
	blt	t2, t3, .LBB1_33
	j	.LBB1_37
.Lfunc_end1:
	.size	CheckAvailabilityOfNeighbors, .Lfunc_end1-CheckAvailabilityOfNeighbors
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mb_block_pos                # -- Begin function get_mb_block_pos
	.p2align	2
	.type	get_mb_block_pos,@function
get_mb_block_pos:                       # @get_mb_block_pos
# %bb.0:
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lui	a4, 22
	addiw	a4, a4, 108
	add	a3, a3, a4
	lw	a4, 0(a3)
	beqz	a4, .LBB2_2
# %bb.1:
	lw	a4, 68(a3)
	srliw	a5, a0, 31
	add	a5, a0, a5
	sraiw	a6, a5, 1
	remuw	a4, a6, a4
	sw	a4, 0(a1)
	lw	a1, 68(a3)
	divuw	a1, a6, a1
	slli	a1, a1, 1
	andi	a5, a5, -2
	subw	a0, a0, a5
	add	a0, a1, a0
	sw	a0, 0(a2)
	ret
.LBB2_2:
	lui	a3, %hi(xPicPos)
	ld	a3, %lo(xPicPos)(a3)
	slli	a0, a0, 2
	add	a3, a3, a0
	lw	a3, 0(a3)
	lui	a4, %hi(yPicPos)
	ld	a4, %lo(yPicPos)(a4)
	sw	a3, 0(a1)
	add	a0, a4, a0
	lw	a0, 0(a0)
	sw	a0, 0(a2)
	ret
.Lfunc_end2:
	.size	get_mb_block_pos, .Lfunc_end2-get_mb_block_pos
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mb_pos                      # -- Begin function get_mb_pos
	.p2align	2
	.type	get_mb_pos,@function
get_mb_pos:                             # @get_mb_pos
# %bb.0:
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lui	a4, 22
	addiw	a4, a4, 108
	add	a3, a3, a4
	lw	a4, 0(a3)
	beqz	a4, .LBB3_2
# %bb.1:
	lw	a4, 68(a3)
	srliw	a5, a0, 31
	add	a5, a0, a5
	sraiw	a6, a5, 1
	remuw	a4, a6, a4
	sw	a4, 0(a1)
	lw	a3, 68(a3)
	divuw	a3, a6, a3
	slli	a3, a3, 1
	andi	a5, a5, -2
	subw	a0, a0, a5
	add	a0, a3, a0
	j	.LBB3_3
.LBB3_2:
	lui	a3, %hi(xPicPos)
	ld	a3, %lo(xPicPos)(a3)
	slli	a0, a0, 2
	add	a3, a3, a0
	lw	a3, 0(a3)
	lui	a4, %hi(yPicPos)
	ld	a4, %lo(yPicPos)(a4)
	sw	a3, 0(a1)
	add	a0, a4, a0
	lw	a0, 0(a0)
.LBB3_3:
	sw	a0, 0(a2)
	lw	a0, 0(a1)
	slli	a0, a0, 4
	sw	a0, 0(a1)
	lw	a0, 0(a2)
	slli	a0, a0, 4
	sw	a0, 0(a2)
	ret
.Lfunc_end3:
	.size	get_mb_pos, .Lfunc_end3-get_mb_pos
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getNonAffNeighbour              # -- Begin function getNonAffNeighbour
	.p2align	2
	.type	getNonAffNeighbour,@function
getNonAffNeighbour:                     # @getNonAffNeighbour
# %bb.0:
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	lui	a6, 22
	addiw	a6, a6, 108
	lui	a7, 8
	add	a7, a5, a7
	ld	t0, -1192(a7)
	add	a5, a5, a6
	li	a7, 16
	li	a6, 16
	bnez	a3, .LBB4_3
# %bb.1:
	lw	a6, 328(a5)
	beqz	a6, .LBB4_33
# %bb.2:
	lw	a7, 336(a5)
	lw	a6, 340(a5)
.LBB4_3:
	li	t1, 33
	slli	t1, t1, 36
	slli	t2, a0, 32
	mulhu	t1, t2, t1
	and	t2, a2, a1
	add	t0, t0, t1
	bltz	t2, .LBB4_8
# %bb.4:
	bgez	a1, .LBB4_9
# %bb.5:
	bltz	a2, .LBB4_9
# %bb.6:
	bge	a2, a6, .LBB4_9
# %bb.7:
	addi	a0, t0, 432
	li	t1, 448
	j	.LBB4_13
.LBB4_8:
	addi	a0, t0, 444
	li	t1, 460
	j	.LBB4_13
.LBB4_9:
	bltz	a1, .LBB4_16
# %bb.10:
	bgez	a2, .LBB4_16
# %bb.11:
	bge	a1, a7, .LBB4_16
# %bb.12:
	addi	a0, t0, 436
	li	t1, 452
.LBB4_13:
	lw	a0, 0(a0)
	sw	a0, 4(a4)
	add	t0, t0, t1
	lw	t0, 0(t0)
	sw	t0, 0(a4)
	bnez	t0, .LBB4_21
# %bb.14:
	lw	a0, 240(a5)
	beqz	a0, .LBB4_28
.LBB4_15:
	lw	a0, 4(a4)
	j	.LBB4_21
.LBB4_16:
	bltz	a1, .LBB4_29
# %bb.17:
	bltz	a2, .LBB4_29
# %bb.18:
	bge	a1, a7, .LBB4_29
# %bb.19:
	bge	a2, a6, .LBB4_29
# %bb.20:
	sw	a0, 4(a4)
	li	t0, 1
	sw	t0, 0(a4)
.LBB4_21:
	add	a1, a7, a1
	addi	a7, a7, -1
	and	a7, a1, a7
	sw	a7, 8(a4)
	lw	t0, 0(a5)
	add	a2, a6, a2
	addi	a1, a6, -1
	and	a1, a2, a1
	sw	a1, 12(a4)
	beqz	t0, .LBB4_23
# %bb.22:
	lw	a2, 68(a5)
	srliw	a6, a0, 31
	add	a6, a0, a6
	sraiw	t0, a6, 1
	remuw	a2, t0, a2
	sw	a2, 16(a4)
	lw	t1, 68(a5)
	divuw	t0, t0, t1
	slli	t0, t0, 1
	andi	a6, a6, -2
	subw	a0, a0, a6
	add	a0, t0, a0
	j	.LBB4_24
.LBB4_23:
	lui	a2, %hi(xPicPos)
	ld	a2, %lo(xPicPos)(a2)
	slli	a0, a0, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	lui	a6, %hi(yPicPos)
	ld	a6, %lo(yPicPos)(a6)
	sw	a2, 16(a4)
	add	a0, a6, a0
	lw	a0, 0(a0)
.LBB4_24:
	slli	a2, a2, 4
	sw	a2, 16(a4)
	slli	a0, a0, 4
	sw	a0, 20(a4)
	beqz	a3, .LBB4_26
# %bb.25:
	add	a2, a2, a7
	sw	a2, 16(a4)
	j	.LBB4_27
.LBB4_26:
	lw	a3, 336(a5)
	mul	a2, a3, a2
	lw	a3, 340(a5)
	sraiw	a2, a2, 4
	add	a2, a2, a7
	sw	a2, 16(a4)
	mul	a0, a3, a0
	sraiw	a0, a0, 4
.LBB4_27:
	add	a0, a0, a1
	sw	a0, 20(a4)
.LBB4_28:
	ret
.LBB4_29:
	bgez	a2, .LBB4_32
# %bb.30:
	blt	a1, a7, .LBB4_32
# %bb.31:
	addi	a0, t0, 440
	li	t1, 456
	j	.LBB4_13
.LBB4_32:
	sw	zero, 0(a4)
	lw	a0, 240(a5)
	bnez	a0, .LBB4_15
	j	.LBB4_28
.LBB4_33:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.getNonAffNeighbour)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.getNonAffNeighbour)
	li	a2, 154
	call	__assert_fail
.Lfunc_end4:
	.size	getNonAffNeighbour, .Lfunc_end4-getNonAffNeighbour
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getAffNeighbour                 # -- Begin function getAffNeighbour
	.p2align	2
	.type	getAffNeighbour,@function
getAffNeighbour:                        # @getAffNeighbour
# %bb.0:
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	lui	a6, 22
	addiw	a6, a6, 108
	lui	a7, 8
	add	a7, a5, a7
	ld	t0, -1192(a7)
	add	a5, a5, a6
	li	a7, 16
	li	a6, 16
	beqz	a3, .LBB5_2
# %bb.1:
	sw	zero, 0(a4)
	blt	a2, a6, .LBB5_4
	j	.LBB5_6
.LBB5_2:
	lw	a6, 328(a5)
	beqz	a6, .LBB5_79
# %bb.3:
	lw	a7, 336(a5)
	lw	a6, 340(a5)
	sw	zero, 0(a4)
	bge	a2, a6, .LBB5_6
.LBB5_4:
	bltz	a2, .LBB5_7
# %bb.5:
	blt	a1, a7, .LBB5_7
.LBB5_6:
	ret
.LBB5_7:
	li	t1, 33
	slli	t1, t1, 36
	slli	t2, a0, 32
	mulhu	t1, t2, t1
	add	t1, t0, t1
	bltz	a1, .LBB5_13
# %bb.8:
	bge	a1, a7, .LBB5_20
# %bb.9:
	bltz	a2, .LBB5_29
# %bb.10:
	bnez	a2, .LBB5_69
# %bb.11:
	lw	t0, 240(a5)
	li	t2, 2
	bne	t0, t2, .LBB5_69
# %bb.12:
	lw	a0, 436(t1)
	addi	a0, a0, 1
	sw	a0, 4(a4)
	li	a0, 1
	sw	a0, 0(a4)
	li	a2, -1
	j	.LBB5_70
.LBB5_13:
	lw	t2, 424(t1)
	andi	t3, a0, 1
	bltz	a2, .LBB5_26
# %bb.14:
	lw	a0, 432(t1)
	lw	t1, 448(t1)
	sw	a0, 4(a4)
	sw	t1, 0(a4)
	beqz	t2, .LBB5_34
# %bb.15:
	bnez	t3, .LBB5_39
# %bb.16:
	beqz	t1, .LBB5_66
# %bb.17:
	li	t1, 528
	mul	t1, a0, t1
	add	t0, t0, t1
	lw	t0, 424(t0)
	bnez	t0, .LBB5_70
# %bb.18:
	srliw	t0, a6, 1
	bgeu	a2, t0, .LBB5_76
# %bb.19:
	slli	a2, a2, 1
	j	.LBB5_70
.LBB5_20:
	li	t2, -1
	bgez	a2, .LBB5_67
# %bb.21:
	lw	t3, 424(t1)
	andi	a0, a0, 1
	beqz	t3, .LBB5_45
# %bb.22:
	lw	t3, 440(t1)
	bnez	a0, .LBB5_59
# %bb.23:
	lw	a0, 456(t1)
	sw	t3, 4(a4)
	sw	a0, 0(a4)
	beqz	a0, .LBB5_67
# %bb.24:
	li	a0, 528
	mul	a0, t3, a0
	add	a0, t0, a0
	lw	a0, 424(a0)
	bnez	a0, .LBB5_70
# %bb.25:
	addi	t3, t3, 1
	sw	t3, 4(a4)
	slli	a2, a2, 1
	j	.LBB5_70
.LBB5_26:
	beqz	t2, .LBB5_43
# %bb.27:
	lw	t2, 444(t1)
	bnez	t3, .LBB5_48
# %bb.28:
	lw	a0, 460(t1)
	sw	t2, 4(a4)
	sw	a0, 0(a4)
	bnez	a0, .LBB5_32
	j	.LBB5_66
.LBB5_29:
	lw	t2, 424(t1)
	andi	t3, a0, 1
	beqz	t2, .LBB5_49
# %bb.30:
	lw	t2, 436(t1)
	bnez	t3, .LBB5_60
# %bb.31:
	lw	a0, 452(t1)
	sw	t2, 4(a4)
	sw	a0, 0(a4)
	beqz	a0, .LBB5_66
.LBB5_32:
	li	a0, 528
	mul	a0, t2, a0
	add	a0, t0, a0
	lw	a0, 424(a0)
	bnez	a0, .LBB5_70
# %bb.33:
	addi	t2, t2, 1
	sw	t2, 4(a4)
	slli	a2, a2, 1
	j	.LBB5_70
.LBB5_34:
	bnez	t3, .LBB5_53
# %bb.35:
	beqz	t1, .LBB5_66
# %bb.36:
	li	t1, 528
	mul	t1, a0, t1
	add	t0, t0, t1
	lw	t0, 424(t0)
	beqz	t0, .LBB5_70
# %bb.37:
	andi	t0, a2, 1
	bnez	t0, .LBB5_77
# %bb.38:
	srliw	a2, a2, 1
	j	.LBB5_70
.LBB5_39:
	beqz	t1, .LBB5_66
# %bb.40:
	li	t1, 528
	mul	t1, a0, t1
	add	t0, t0, t1
	lw	t0, 424(t0)
	bnez	t0, .LBB5_58
# %bb.41:
	srliw	t0, a6, 1
	bgeu	a2, t0, .LBB5_78
# %bb.42:
	slli	a2, a2, 1
	addi	a2, a2, 1
	j	.LBB5_70
.LBB5_43:
	bnez	t3, .LBB5_63
# %bb.44:
	lw	t0, 444(t1)
	lw	a0, 460(t1)
	j	.LBB5_47
.LBB5_45:
	bnez	a0, .LBB5_67
# %bb.46:
	lw	t0, 440(t1)
	lw	a0, 456(t1)
.LBB5_47:
	addi	t0, t0, 1
	sw	t0, 4(a4)
	j	.LBB5_62
.LBB5_48:
	lw	a0, 460(t1)
	j	.LBB5_61
.LBB5_49:
	bnez	t3, .LBB5_68
# %bb.50:
	lw	t2, 436(t1)
	lw	a0, 452(t1)
	sw	t2, 4(a4)
	beqz	a0, .LBB5_62
# %bb.51:
	lw	t1, 240(a5)
	li	t3, 1
	bne	t1, t3, .LBB5_61
# %bb.52:
	li	t1, 528
	mul	t1, t2, t1
	add	t0, t0, t1
	lw	t0, 424(t0)
	bnez	t0, .LBB5_62
	j	.LBB5_61
.LBB5_53:
	beqz	t1, .LBB5_66
# %bb.54:
	li	t1, 528
	mul	t1, a0, t1
	add	t0, t0, t1
	lw	t0, 424(t0)
	beqz	t0, .LBB5_58
# %bb.55:
	andi	t0, a2, 1
	beqz	t0, .LBB5_57
# %bb.56:
	addi	a0, a0, 1
	sw	a0, 4(a4)
.LBB5_57:
	add	a2, a6, a2
	srliw	a2, a2, 1
	j	.LBB5_70
.LBB5_58:
	addi	a0, a0, 1
	sw	a0, 4(a4)
	j	.LBB5_70
.LBB5_59:
	lw	a0, 456(t1)
	addi	t3, t3, 1
	sw	t3, 4(a4)
	j	.LBB5_62
.LBB5_60:
	lw	a0, 452(t1)
.LBB5_61:
	addi	t2, t2, 1
	sw	t2, 4(a4)
.LBB5_62:
	sw	a0, 0(a4)
	mv	t2, a2
	bnez	a0, .LBB5_70
	j	.LBB5_67
.LBB5_63:
	lw	a0, 432(t1)
	lw	t1, 448(t1)
	sw	a0, 4(a4)
	sw	t1, 0(a4)
	beqz	t1, .LBB5_66
# %bb.64:
	li	t1, 528
	mul	t1, a0, t1
	add	t0, t0, t1
	lw	t0, 424(t0)
	beqz	t0, .LBB5_70
# %bb.65:
	addi	a0, a0, 1
	sw	a0, 4(a4)
	add	a2, a6, a2
	sraiw	a2, a2, 1
	j	.LBB5_70
.LBB5_66:
	li	t2, -1
.LBB5_67:
	lw	a0, 240(a5)
	mv	a2, t2
	bnez	a0, .LBB5_70
	j	.LBB5_6
.LBB5_68:
	addi	a0, a0, -1
.LBB5_69:
	sw	a0, 4(a4)
	li	a0, 1
	sw	a0, 0(a4)
.LBB5_70:
	add	a1, a7, a1
	remw	a1, a1, a7
	sw	a1, 8(a4)
	lw	t0, 0(a5)
	lw	a7, 4(a4)
	add	a2, a2, a6
	remw	a0, a2, a6
	sw	a0, 12(a4)
	beqz	t0, .LBB5_72
# %bb.71:
	lw	a2, 68(a5)
	srliw	a6, a7, 31
	add	a6, a7, a6
	sraiw	t0, a6, 1
	remuw	a2, t0, a2
	sw	a2, 16(a4)
	lw	t1, 68(a5)
	divuw	t0, t0, t1
	slli	t0, t0, 1
	andi	a6, a6, -2
	subw	a6, a7, a6
	add	a6, t0, a6
	j	.LBB5_73
.LBB5_72:
	lui	a2, %hi(xPicPos)
	ld	a2, %lo(xPicPos)(a2)
	slli	a7, a7, 2
	add	a2, a2, a7
	lw	a2, 0(a2)
	lui	a6, %hi(yPicPos)
	ld	a6, %lo(yPicPos)(a6)
	sw	a2, 16(a4)
	add	a6, a6, a7
	lw	a6, 0(a6)
.LBB5_73:
	slli	a7, a2, 4
	sw	a7, 16(a4)
	slli	a2, a6, 4
	sw	a2, 20(a4)
	beqz	a3, .LBB5_75
# %bb.74:
	add	a1, a7, a1
	sw	a1, 16(a4)
	add	a0, a2, a0
	sw	a0, 20(a4)
	ret
.LBB5_75:
	lw	a3, 336(a5)
	mul	a3, a3, a7
	lw	a5, 340(a5)
	sraiw	a3, a3, 4
	add	a1, a3, a1
	sw	a1, 16(a4)
	mul	a1, a5, a2
	sraiw	a2, a1, 4
	add	a0, a2, a0
	sw	a0, 20(a4)
	ret
.LBB5_76:
	addi	a0, a0, 1
	sw	a0, 4(a4)
	slli	a2, a2, 1
	subw	a2, a2, a6
	j	.LBB5_70
.LBB5_77:
	addi	a0, a0, 1
	sw	a0, 4(a4)
	srliw	a2, a2, 1
	j	.LBB5_70
.LBB5_78:
	addi	a0, a0, 1
	sw	a0, 4(a4)
	slli	a2, a2, 1
	addi	a2, a2, 1
	subw	a2, a2, a6
	j	.LBB5_70
.LBB5_79:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.getAffNeighbour)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.getAffNeighbour)
	li	a2, 243
	call	__assert_fail
.Lfunc_end5:
	.size	getAffNeighbour, .Lfunc_end5-getAffNeighbour
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getNeighbour                    # -- Begin function getNeighbour
	.p2align	2
	.type	getNeighbour,@function
getNeighbour:                           # @getNeighbour
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	bgez	a0, .LBB6_2
# %bb.1:
	lui	a5, %hi(.L.str.2)
	addi	a5, a5, %lo(.L.str.2)
	mv	s0, a1
	li	a1, 100
	mv	s1, a0
	mv	a0, a5
	mv	s2, a4
	mv	s4, a3
	mv	s3, a2
	call	error
	mv	a0, s1
	mv	a1, s0
	mv	a2, s3
	mv	a3, s4
	mv	a4, s2
.LBB6_2:
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	lui	a6, 22
	add	a5, a5, a6
	lw	a5, 108(a5)
	beqz	a5, .LBB6_4
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	getAffNeighbour
.LBB6_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	getNonAffNeighbour
.Lfunc_end6:
	.size	getNeighbour, .Lfunc_end6-getNeighbour
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getLuma4x4Neighbour             # -- Begin function getLuma4x4Neighbour
	.p2align	2
	.type	getLuma4x4Neighbour,@function
getLuma4x4Neighbour:                    # @getLuma4x4Neighbour
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a5
	mv	s1, a4
	mv	s2, a3
	slli	s3, a1, 2
	slli	s4, a2, 2
	bgez	a0, .LBB7_2
# %bb.1:
	lui	a2, %hi(.L.str.2)
	addi	a2, a2, %lo(.L.str.2)
	li	a1, 100
	mv	s5, a0
	mv	a0, a2
	call	error
	mv	a0, s5
.LBB7_2:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a3, 108(a1)
	addw	a1, s3, s2
	addw	a2, s4, s1
	beqz	a3, .LBB7_6
# %bb.3:
	li	a3, 1
	mv	a4, s0
	call	getAffNeighbour
	lw	a0, 0(s0)
	beqz	a0, .LBB7_5
.LBB7_4:
	lw	a0, 8(s0)
	lw	a1, 12(s0)
	srli	a0, a0, 2
	sw	a0, 8(s0)
	lw	a0, 16(s0)
	srli	a1, a1, 2
	lw	a2, 20(s0)
	sw	a1, 12(s0)
	srli	a0, a0, 2
	sw	a0, 16(s0)
	srli	a2, a2, 2
	sw	a2, 20(s0)
.LBB7_5:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB7_6:
	li	a3, 1
	mv	a4, s0
	call	getNonAffNeighbour
	lw	a0, 0(s0)
	bnez	a0, .LBB7_4
	j	.LBB7_5
.Lfunc_end7:
	.size	getLuma4x4Neighbour, .Lfunc_end7-getLuma4x4Neighbour
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getChroma4x4Neighbour           # -- Begin function getChroma4x4Neighbour
	.p2align	2
	.type	getChroma4x4Neighbour,@function
getChroma4x4Neighbour:                  # @getChroma4x4Neighbour
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a5
	mv	s1, a4
	mv	s2, a3
	slli	s3, a1, 2
	slli	s4, a2, 2
	bgez	a0, .LBB8_2
# %bb.1:
	lui	a2, %hi(.L.str.2)
	addi	a2, a2, %lo(.L.str.2)
	li	a1, 100
	mv	s5, a0
	mv	a0, a2
	call	error
	mv	a0, s5
.LBB8_2:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a3, 108(a1)
	addw	a1, s3, s2
	addw	a2, s4, s1
	beqz	a3, .LBB8_6
# %bb.3:
	li	a3, 0
	mv	a4, s0
	call	getAffNeighbour
	lw	a0, 0(s0)
	beqz	a0, .LBB8_5
.LBB8_4:
	lw	a0, 8(s0)
	lw	a1, 12(s0)
	srli	a0, a0, 2
	sw	a0, 8(s0)
	lw	a0, 16(s0)
	srli	a1, a1, 2
	lw	a2, 20(s0)
	sw	a1, 12(s0)
	srli	a0, a0, 2
	sw	a0, 16(s0)
	srli	a2, a2, 2
	sw	a2, 20(s0)
.LBB8_5:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB8_6:
	mv	a4, s0
	call	getNonAffNeighbour
	lw	a0, 0(s0)
	bnez	a0, .LBB8_4
	j	.LBB8_5
.Lfunc_end8:
	.size	getChroma4x4Neighbour, .Lfunc_end8-getChroma4x4Neighbour
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"img->yuv_format != 0"
	.size	.L.str, 21

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/mb_access.c"
	.size	.L.str.1, 16

	.type	.L__PRETTY_FUNCTION__.getNonAffNeighbour,@object # @__PRETTY_FUNCTION__.getNonAffNeighbour
.L__PRETTY_FUNCTION__.getNonAffNeighbour:
	.asciz	"void getNonAffNeighbour(unsigned int, int, int, int, PixelPos *)"
	.size	.L__PRETTY_FUNCTION__.getNonAffNeighbour, 65

	.type	.L__PRETTY_FUNCTION__.getAffNeighbour,@object # @__PRETTY_FUNCTION__.getAffNeighbour
.L__PRETTY_FUNCTION__.getAffNeighbour:
	.asciz	"void getAffNeighbour(unsigned int, int, int, int, PixelPos *)"
	.size	.L__PRETTY_FUNCTION__.getAffNeighbour, 62

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"getNeighbour: invalid macroblock number"
	.size	.L.str.2, 40

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
