	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"mbuffer.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dump_dpb                        # -- Begin function dump_dpb
	.p2align	2
	.type	dump_dpb,@function
dump_dpb:                               # @dump_dpb
# %bb.0:
	ret
.Lfunc_end0:
	.size	dump_dpb, .Lfunc_end0-dump_dpb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getDpbSize                      # -- Begin function getDpbSize
	.p2align	2
	.type	getDpbSize,@function
getDpbSize:                             # @getDpbSize
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(active_sps)
	ld	a1, %lo(active_sps)(a0)
	lw	a0, 24(a1)
	lw	s1, 1140(a1)
	lw	s2, 1144(a1)
	lw	s0, 1148(a1)
	addi	a0, a0, -10
	li	a2, 41
	bltu	a2, a0, .LBB1_9
# %bb.1:
	slli	a0, a0, 2
	lui	a2, %hi(.LJTI1_0)
	addi	a2, a2, %lo(.LJTI1_0)
	add	a0, a0, a2
	lw	a2, 0(a0)
	lui	a0, 37
	addi	a0, a0, 512
	jr	a2
.LBB1_2:
	lui	a0, 223
	addi	a0, a0, -1024
	j	.LBB1_15
.LBB1_3:
	lui	a0, 759
	addi	a0, a0, 1536
	j	.LBB1_15
.LBB1_4:
	lui	a0, 10350
	j	.LBB1_15
.LBB1_5:
	lw	a0, 4(a1)
	addi	a0, a0, -100
	li	a1, 44
	bltu	a1, a0, .LBB1_7
# %bb.6:
	lui	a1, 1024
	addiw	a1, a1, 1
	slli	a1, a1, 22
	addi	a1, a1, 1025
	srl	a0, a1, a0
	andi	a1, a0, 1
	lui	a0, 3264
	bnez	a1, .LBB1_15
.LBB1_7:
	lui	a0, 3072
	j	.LBB1_15
.LBB1_8:
	lui	a0, 446
	j	.LBB1_14
.LBB1_9:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 500
	call	error
	li	a0, 0
	j	.LBB1_15
.LBB1_10:
	lui	a0, 84
	addi	a0, a0, 1536
	j	.LBB1_15
.LBB1_11:
	lui	a0, 17280
	j	.LBB1_15
.LBB1_12:
	lui	a0, 1920
	j	.LBB1_15
.LBB1_13:
	lui	a0, 1688
.LBB1_14:
	addi	a0, a0, -2048
.LBB1_15:
	addi	s1, s1, 1
	addi	s2, s2, 1
	mul	a1, s2, s1
	seqz	a2, s0
	sllw	a1, a1, a2
	li	a2, 384
	mul	a1, a1, a2
	divw	a0, a0, a1
	li	a1, 16
	blt	a0, a1, .LBB1_17
# %bb.16:
	li	a0, 16
.LBB1_17:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	getDpbSize, .Lfunc_end1-getDpbSize
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_15
	.word	.LBB1_10
	.word	.LBB1_2
	.word	.LBB1_2
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_2
	.word	.LBB1_8
	.word	.LBB1_3
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_3
	.word	.LBB1_13
	.word	.LBB1_12
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_7
	.word	.LBB1_7
	.word	.LBB1_5
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_9
	.word	.LBB1_4
	.word	.LBB1_11
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	check_num_ref                   # -- Begin function check_num_ref
	.p2align	2
	.type	check_num_ref,@function
check_num_ref:                          # @check_num_ref
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(dpb)
	addi	a1, a1, %lo(dpb)
	lw	a2, 36(a1)
	lw	a3, 32(a1)
	lw	a1, 32(a0)
	addw	a0, a3, a2
	bgtz	a1, .LBB2_2
# %bb.1:
	li	a1, 1
.LBB2_2:
	bge	a1, a0, .LBB2_4
# %bb.3:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 500
	tail	error
.LBB2_4:
	ret
.Lfunc_end2:
	.size	check_num_ref, .Lfunc_end2-check_num_ref
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_dpb                        # -- Begin function init_dpb
	.p2align	2
	.type	init_dpb,@function
init_dpb:                               # @init_dpb
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
	lui	s3, %hi(dpb)
	addi	s3, s3, %lo(dpb)
	lw	a0, 48(s3)
	beqz	a0, .LBB3_2
# %bb.1:
	call	free_dpb
.LBB3_2:
	call	getDpbSize
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a1, 36(a1)
	mv	s0, a0
	sw	a0, 24(s3)
	bgeu	a0, a1, .LBB3_4
# %bb.3:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	li	a1, 1000
	call	error
	lw	s0, 24(s3)
.LBB3_4:
	lui	s2, %hi(dpb)
	addi	a0, s2, %lo(dpb)
	sw	zero, 28(a0)
	sd	zero, 56(a0)
	sd	zero, 32(a0)
	slli	s1, s0, 32
	srli	s1, s1, 32
	li	a1, 8
	mv	a0, s1
	call	calloc
	sd	a0, %lo(dpb)(s2)
	bnez	a0, .LBB3_6
# %bb.5:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
	lwu	s1, 24(s3)
	mv	s0, s1
.LBB3_6:
	li	a1, 8
	mv	a0, s1
	call	calloc
	sd	a0, 8(s3)
	bnez	a0, .LBB3_8
# %bb.7:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	no_mem_exit
	lwu	s1, 24(s3)
	mv	s0, s1
.LBB3_8:
	li	a1, 8
	mv	a0, s1
	call	calloc
	sd	a0, 16(s3)
	bnez	a0, .LBB3_10
# %bb.9:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	no_mem_exit
	lw	s0, 24(s3)
.LBB3_10:
	sext.w	a0, s0
	beqz	a0, .LBB3_15
# %bb.11:                               # %.preheader
	li	s4, 0
	li	s5, 0
	lui	s1, %hi(.L.str.7)
	addi	s1, s1, %lo(.L.str.7)
	lui	s6, %hi(dpb)
	addi	s7, s6, %lo(dpb)
	j	.LBB3_13
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	ld	a0, %lo(dpb)(s6)
	add	a0, a0, s4
	sd	s2, 0(a0)
	ld	a0, 8(s7)
	add	a0, a0, s4
	sd	zero, 0(a0)
	ld	a0, 16(s7)
	add	a0, a0, s4
	sd	zero, 0(a0)
	addi	s5, s5, 1
	slli	a0, s0, 32
	srli	a0, a0, 32
	addi	s4, s4, 8
	bgeu	s5, a0, .LBB3_15
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	li	a0, 1
	li	a1, 64
	call	calloc
	mv	s2, a0
	bnez	a0, .LBB3_12
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	mv	a0, s1
	call	no_mem_exit
	lw	s0, 24(s3)
	j	.LBB3_12
.LBB3_15:
	li	a0, 33
	li	a1, 8
	call	calloc
	lui	a1, %hi(listX)
	sd	a0, %lo(listX)(a1)
	bnez	a0, .LBB3_17
# %bb.16:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB3_17:
	li	a0, 33
	li	a1, 8
	call	calloc
	lui	s0, %hi(listX)
	addi	s0, s0, %lo(listX)
	sd	a0, 8(s0)
	bnez	a0, .LBB3_19
# %bb.18:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB3_19:
	li	a0, 33
	li	a1, 8
	call	calloc
	sd	a0, 16(s0)
	bnez	a0, .LBB3_21
# %bb.20:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB3_21:
	li	a0, 33
	li	a1, 8
	call	calloc
	sd	a0, 24(s0)
	bnez	a0, .LBB3_23
# %bb.22:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB3_23:
	li	a0, 33
	li	a1, 8
	call	calloc
	sd	a0, 32(s0)
	bnez	a0, .LBB3_25
# %bb.24:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB3_25:
	li	a0, 33
	li	a1, 8
	call	calloc
	sd	a0, 40(s0)
	bnez	a0, .LBB3_27
# %bb.26:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	no_mem_exit
.LBB3_27:
	lui	a0, %hi(listXsize)
	addi	a0, a0, %lo(listXsize)
	addi	a1, a0, 24
.LBB3_28:                               # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s0)
	sd	zero, 0(a2)
	ld	a2, 0(s0)
	sd	zero, 8(a2)
	ld	a2, 0(s0)
	sd	zero, 16(a2)
	ld	a2, 0(s0)
	sd	zero, 24(a2)
	ld	a2, 0(s0)
	sd	zero, 32(a2)
	ld	a2, 0(s0)
	sd	zero, 40(a2)
	ld	a2, 0(s0)
	sd	zero, 48(a2)
	ld	a2, 0(s0)
	sd	zero, 56(a2)
	ld	a2, 0(s0)
	sd	zero, 64(a2)
	ld	a2, 0(s0)
	sd	zero, 72(a2)
	ld	a2, 0(s0)
	sd	zero, 80(a2)
	ld	a2, 0(s0)
	sd	zero, 88(a2)
	ld	a2, 0(s0)
	sd	zero, 96(a2)
	ld	a2, 0(s0)
	sd	zero, 104(a2)
	ld	a2, 0(s0)
	sd	zero, 112(a2)
	ld	a2, 0(s0)
	sd	zero, 120(a2)
	ld	a2, 0(s0)
	sd	zero, 128(a2)
	ld	a2, 0(s0)
	sd	zero, 136(a2)
	ld	a2, 0(s0)
	sd	zero, 144(a2)
	ld	a2, 0(s0)
	sd	zero, 152(a2)
	ld	a2, 0(s0)
	sd	zero, 160(a2)
	ld	a2, 0(s0)
	sd	zero, 168(a2)
	ld	a2, 0(s0)
	sd	zero, 176(a2)
	ld	a2, 0(s0)
	sd	zero, 184(a2)
	ld	a2, 0(s0)
	sd	zero, 192(a2)
	ld	a2, 0(s0)
	sd	zero, 200(a2)
	ld	a2, 0(s0)
	sd	zero, 208(a2)
	ld	a2, 0(s0)
	sd	zero, 216(a2)
	ld	a2, 0(s0)
	sd	zero, 224(a2)
	ld	a2, 0(s0)
	sd	zero, 232(a2)
	ld	a2, 0(s0)
	sd	zero, 240(a2)
	ld	a2, 0(s0)
	sd	zero, 248(a2)
	ld	a2, 0(s0)
	sd	zero, 256(a2)
	sw	zero, 0(a0)
	addi	a0, a0, 4
	addi	s0, s0, 8
	bne	a0, a1, .LBB3_28
# %bb.29:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 524288
	sw	a1, 40(s3)
	lui	a1, 22
	add	a0, a0, a1
	sw	zero, 356(a0)
	li	a0, 1
	sw	a0, 48(s3)
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
.Lfunc_end3:
	.size	init_dpb, .Lfunc_end3-init_dpb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_dpb                        # -- Begin function free_dpb
	.p2align	2
	.type	free_dpb,@function
free_dpb:                               # @free_dpb
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(dpb)
	ld	a0, %lo(dpb)(a0)
	lui	s1, %hi(dpb)
	addi	s1, s1, %lo(dpb)
	beqz	a0, .LBB4_13
# %bb.1:
	lwu	a1, 24(s1)
	beqz	a1, .LBB4_12
# %bb.2:                                # %.preheader
	li	s2, 0
	li	s3, 0
	lui	s4, %hi(dpb)
	addi	s5, s4, %lo(dpb)
	j	.LBB4_5
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	mv	a0, s0
	call	free
	ld	a0, %lo(dpb)(s4)
	lwu	a1, 24(s5)
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi	s3, s3, 1
	addi	s2, s2, 8
	bgeu	s3, a1, .LBB4_12
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	add	a2, a0, s2
	ld	s0, 0(a2)
	beqz	s0, .LBB4_4
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	ld	a0, 40(s0)
	beqz	a0, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	call	free_storable_picture
	sd	zero, 40(s0)
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	ld	a0, 48(s0)
	beqz	a0, .LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	call	free_storable_picture
	sd	zero, 48(s0)
.LBB4_10:                               #   in Loop: Header=BB4_5 Depth=1
	ld	a0, 56(s0)
	beqz	a0, .LBB4_3
# %bb.11:                               #   in Loop: Header=BB4_5 Depth=1
	call	free_storable_picture
	j	.LBB4_3
.LBB4_12:
	call	free
	lui	a0, %hi(dpb)
	sd	zero, %lo(dpb)(a0)
.LBB4_13:
	ld	a0, 8(s1)
	beqz	a0, .LBB4_15
# %bb.14:
	call	free
.LBB4_15:
	ld	a0, 16(s1)
	beqz	a0, .LBB4_17
# %bb.16:
	call	free
.LBB4_17:
	lui	s0, %hi(listX)
	ld	a0, %lo(listX)(s0)
	lui	a1, 524288
	sw	a1, 40(s1)
	beqz	a0, .LBB4_19
# %bb.18:
	call	free
	sd	zero, %lo(listX)(s0)
.LBB4_19:
	lui	s0, %hi(listX)
	addi	s0, s0, %lo(listX)
	ld	a0, 8(s0)
	beqz	a0, .LBB4_21
# %bb.20:
	call	free
	sd	zero, 8(s0)
.LBB4_21:
	ld	a0, 16(s0)
	beqz	a0, .LBB4_23
# %bb.22:
	call	free
	sd	zero, 16(s0)
.LBB4_23:
	ld	a0, 24(s0)
	beqz	a0, .LBB4_25
# %bb.24:
	call	free
	sd	zero, 24(s0)
.LBB4_25:
	ld	a0, 32(s0)
	beqz	a0, .LBB4_27
# %bb.26:
	call	free
	sd	zero, 32(s0)
.LBB4_27:
	ld	a0, 40(s0)
	beqz	a0, .LBB4_29
# %bb.28:
	call	free
	sd	zero, 40(s0)
.LBB4_29:
	sw	zero, 48(s1)
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
	.size	free_dpb, .Lfunc_end4-free_dpb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	alloc_frame_store               # -- Begin function alloc_frame_store
	.p2align	2
	.type	alloc_frame_store,@function
alloc_frame_store:                      # @alloc_frame_store
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 1
	li	a1, 64
	call	calloc
	beqz	a0, .LBB5_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_2:
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	mv	s0, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	alloc_frame_store, .Lfunc_end5-alloc_frame_store
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_frame_store                # -- Begin function free_frame_store
	.p2align	2
	.type	free_frame_store,@function
free_frame_store:                       # @free_frame_store
# %bb.0:
	beqz	a0, .LBB6_8
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	beqz	a0, .LBB6_3
# %bb.2:
	call	free_storable_picture
	sd	zero, 40(s0)
.LBB6_3:
	ld	a0, 48(s0)
	beqz	a0, .LBB6_5
# %bb.4:
	call	free_storable_picture
	sd	zero, 48(s0)
.LBB6_5:
	ld	a0, 56(s0)
	beqz	a0, .LBB6_7
# %bb.6:
	call	free_storable_picture
.LBB6_7:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB6_8:
	ret
.Lfunc_end6:
	.size	free_frame_store, .Lfunc_end6-free_frame_store
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	alloc_storable_picture          # -- Begin function alloc_storable_picture
	.p2align	2
	.type	alloc_storable_picture,@function
alloc_storable_picture:                 # @alloc_storable_picture
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a4
	mv	s1, a3
	mv	s2, a2
	mv	s4, a1
	mv	s5, a0
	lui	s6, 2
	addiw	a1, s6, -1608
	li	a0, 1
	call	calloc
	mv	s3, a0
	addiw	s8, s6, -1800
	bnez	a0, .LBB7_2
# %bb.1:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	call	no_mem_exit
.LBB7_2:
	add	s8, s3, s8
	addiw	a0, s6, -1768
	add	a0, s3, a0
	mv	a1, s2
	mv	a2, s4
	call	get_mem2Dpel
	lui	s7, %hi(img)
	ld	a0, %lo(img)(s7)
	lui	s6, 22
	add	a1, a0, s6
	lw	a1, 436(a1)
	beqz	a1, .LBB7_4
# %bb.3:
	lui	a0, 2
	addiw	a0, a0, -1728
	add	a0, s3, a0
	li	a1, 2
	mv	a2, s0
	mv	a3, s1
	call	get_mem3Dpel
	ld	a0, %lo(img)(s7)
.LBB7_4:
	add	a0, a0, s6
	lwu	a0, 192(a0)
	li	a1, 4
	call	calloc
	sd	a0, 80(s8)
	bnez	a0, .LBB7_6
# %bb.5:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	no_mem_exit
.LBB7_6:
	lui	s9, 2
	addiw	a0, s9, -1712
	add	a0, s3, a0
	slli	a1, s2, 1
	srli	a1, a1, 62
	add	a1, s2, a1
	sraiw	s6, a1, 2
	slli	a1, s4, 1
	srli	a1, a1, 62
	add	a1, s4, a1
	sraiw	s7, a1, 2
	li	a1, 2
	mv	a2, s6
	mv	a3, s7
	call	get_mem3D
	addiw	a0, s9, -1704
	add	a0, s3, a0
	li	a1, 6
	mv	a2, s6
	mv	a3, s7
	call	get_mem3Dint64
	addiw	a0, s9, -1696
	add	a0, s3, a0
	li	a1, 6
	mv	a2, s6
	mv	a3, s7
	call	get_mem3Dint64
	addiw	a0, s9, -1688
	add	a0, s3, a0
	li	a1, 2
	li	a4, 2
	mv	a2, s6
	mv	a3, s7
	call	get_mem4Dshort
	addiw	a0, s9, -1680
	add	a0, s3, a0
	mv	a1, s6
	mv	a2, s7
	call	get_mem2D
	addiw	a0, s9, -1672
	add	a0, s3, a0
	mv	a1, s6
	mv	a2, s7
	call	get_mem2D
	addiw	a0, s9, -1832
	add	a0, s3, a0
	sd	zero, 0(a0)
	sd	zero, 8(a0)
	sd	zero, 16(a0)
	sd	zero, 24(a0)
	sw	s5, 0(s3)
	sw	s4, 0(s8)
	sw	s2, 4(s8)
	sw	s1, 8(s8)
	sw	s0, 12(s8)
	addiw	a0, s9, -1664
	add	a0, s3, a0
	sw	zero, 20(s8)
	sw	zero, 24(s8)
	sd	zero, 0(a0)
	sd	zero, 8(a0)
	sd	zero, 16(a0)
	mv	a0, s3
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end7:
	.size	alloc_storable_picture, .Lfunc_end7-alloc_storable_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_storable_picture           # -- Begin function free_storable_picture
	.p2align	2
	.type	free_storable_picture,@function
free_storable_picture:                  # @free_storable_picture
# %bb.0:
	beqz	a0, .LBB8_31
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	a0, 2
	addiw	s1, a0, -1796
	add	s1, s0, s1
	ld	a0, 84(s1)
	beqz	a0, .LBB8_3
# %bb.2:
	li	a1, 2
	call	free_mem3D
	sd	zero, 84(s1)
.LBB8_3:
	ld	a0, 92(s1)
	beqz	a0, .LBB8_5
# %bb.4:
	li	a1, 6
	call	free_mem3Dint64
	sd	zero, 92(s1)
.LBB8_5:
	ld	a0, 100(s1)
	beqz	a0, .LBB8_7
# %bb.6:
	li	a1, 6
	call	free_mem3Dint64
	sd	zero, 100(s1)
.LBB8_7:
	ld	a0, 108(s1)
	beqz	a0, .LBB8_9
# %bb.8:
	lw	a1, 0(s1)
	slli	a2, a1, 1
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a2, a1, 2
	li	a1, 2
	call	free_mem4Dshort
	sd	zero, 108(s1)
.LBB8_9:
	ld	a0, 116(s1)
	beqz	a0, .LBB8_11
# %bb.10:
	call	free_mem2D
	sd	zero, 116(s1)
.LBB8_11:
	ld	a0, 124(s1)
	beqz	a0, .LBB8_13
# %bb.12:
	call	free_mem2D
	sd	zero, 124(s1)
.LBB8_13:
	ld	a0, 28(s1)
	beqz	a0, .LBB8_15
# %bb.14:
	call	free_mem2Dpel
	sd	zero, 28(s1)
.LBB8_15:
	ld	a0, 36(s1)
	beqz	a0, .LBB8_17
# %bb.16:
	call	free
	sd	zero, 36(s1)
.LBB8_17:
	ld	a0, 52(s1)
	beqz	a0, .LBB8_19
# %bb.18:
	call	free_mem2Dpel
	sd	zero, 52(s1)
.LBB8_19:
	ld	a0, 68(s1)
	beqz	a0, .LBB8_21
# %bb.20:
	li	a1, 2
	call	free_mem3Dpel
	sd	zero, 68(s1)
.LBB8_21:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 1904(a0)
	bnez	a1, .LBB8_24
# %bb.22:
	lw	a1, 1908(a0)
	bnez	a1, .LBB8_24
# %bb.23:
	lw	a0, 64(a0)
	beqz	a0, .LBB8_28
.LBB8_24:
	ld	a0, 44(s1)
	beqz	a0, .LBB8_26
# %bb.25:
	call	free
	sd	zero, 44(s1)
.LBB8_26:
	ld	a0, 60(s1)
	beqz	a0, .LBB8_28
# %bb.27:
	call	free_mem2Dpel
	sd	zero, 60(s1)
.LBB8_28:
	ld	a0, 76(s1)
	beqz	a0, .LBB8_30
# %bb.29:
	call	free
.LBB8_30:
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	free
.LBB8_31:
	ret
.Lfunc_end8:
	.size	free_storable_picture, .Lfunc_end8-free_storable_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	is_short_ref                    # -- Begin function is_short_ref
	.p2align	2
	.type	is_short_ref,@function
is_short_ref:                           # @is_short_ref
# %bb.0:
	lui	a1, 2
	addiw	a1, a1, -1816
	add	a0, a0, a1
	lw	a1, 4(a0)
	beqz	a1, .LBB9_2
# %bb.1:
	lw	a0, 0(a0)
	seqz	a0, a0
	ret
.LBB9_2:
	li	a0, 0
	ret
.Lfunc_end9:
	.size	is_short_ref, .Lfunc_end9-is_short_ref
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	is_long_ref                     # -- Begin function is_long_ref
	.p2align	2
	.type	is_long_ref,@function
is_long_ref:                            # @is_long_ref
# %bb.0:
	lui	a1, 2
	addiw	a1, a1, -1816
	add	a0, a0, a1
	lw	a1, 4(a0)
	beqz	a1, .LBB10_2
# %bb.1:
	lw	a0, 0(a0)
	snez	a0, a0
	ret
.LBB10_2:
	li	a0, 0
	ret
.Lfunc_end10:
	.size	is_long_ref, .Lfunc_end10-is_long_ref
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_lists                      # -- Begin function init_lists
	.p2align	2
	.type	init_lists,@function
init_lists:                             # @init_lists
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
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(log2_max_frame_num_minus4)
	lw	a2, %lo(log2_max_frame_num_minus4)(a2)
	mv	s0, a1
	addi	a2, a2, 4
	li	a1, 1
	sllw	a1, a1, a2
	lui	s7, %hi(dpb)
	addi	s7, s7, %lo(dpb)
	beqz	s0, .LBB11_16
# %bb.1:
	lwu	a6, 32(s7)
	addi	a3, s0, -1
	snez	a2, a3
	seqz	a3, a3
	beqz	a6, .LBB11_9
# %bb.2:
	lui	a4, %hi(img)
	ld	a5, %lo(img)(a4)
	ld	a4, 8(s7)
	lui	a7, 22
	addiw	a7, a7, 172
	add	a5, a5, a7
	slli	a6, a6, 3
	add	a6, a4, a6
	lui	a7, 2
	j	.LBB11_4
.LBB11_3:                               #   in Loop: Header=BB11_4 Depth=1
	addi	a4, a4, 8
	beq	a4, a6, .LBB11_9
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	ld	t0, 0(a4)
	lw	t1, 4(t0)
	beqz	t1, .LBB11_3
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	lw	t2, 20(t0)
	lw	t3, 0(a5)
	sltu	t3, t3, t2
	negw	t3, t3
	and	t3, t3, a1
	subw	t2, t2, t3
	andi	t3, t1, 1
	sw	t2, 24(t0)
	beqz	t3, .LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_4 Depth=1
	ld	t3, 48(t0)
	slli	t4, t2, 1
	or	t4, t4, a3
	add	t3, t3, a7
	sw	t4, -1828(t3)
.LBB11_7:                               #   in Loop: Header=BB11_4 Depth=1
	andi	t1, t1, 2
	beqz	t1, .LBB11_3
# %bb.8:                                #   in Loop: Header=BB11_4 Depth=1
	ld	t0, 56(t0)
	slli	t2, t2, 1
	or	t1, t2, a2
	add	t0, t0, a7
	sw	t1, -1828(t0)
	j	.LBB11_3
.LBB11_9:
	lwu	a4, 36(s7)
	beqz	a4, .LBB11_29
# %bb.10:
	ld	a1, 16(s7)
	slli	a4, a4, 3
	add	a4, a1, a4
	lui	a5, 2
	addiw	a5, a5, -1824
	j	.LBB11_12
.LBB11_11:                              #   in Loop: Header=BB11_12 Depth=1
	addi	a1, a1, 8
	beq	a1, a4, .LBB11_29
.LBB11_12:                              # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a1)
	lwu	a7, 8(a6)
	andi	t0, a7, 1
	bnez	t0, .LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=1
	andi	a7, a7, 2
	beqz	a7, .LBB11_11
	j	.LBB11_15
.LBB11_14:                              #   in Loop: Header=BB11_12 Depth=1
	ld	t0, 48(a6)
	add	t0, t0, a5
	lw	t1, 4(t0)
	slli	t1, t1, 1
	or	t1, t1, a3
	sw	t1, 0(t0)
	andi	a7, a7, 2
	beqz	a7, .LBB11_11
.LBB11_15:                              #   in Loop: Header=BB11_12 Depth=1
	ld	a6, 56(a6)
	add	a6, a6, a5
	lw	a7, 4(a6)
	slli	a7, a7, 1
	or	a7, a7, a2
	sw	a7, 0(a6)
	j	.LBB11_11
.LBB11_16:
	lwu	a4, 32(s7)
	beqz	a4, .LBB11_23
# %bb.17:
	lui	a2, %hi(img)
	ld	a3, %lo(img)(a2)
	ld	a2, 8(s7)
	lui	a5, 22
	addiw	a5, a5, 172
	add	a3, a3, a5
	slli	a4, a4, 3
	add	a4, a2, a4
	li	a5, 3
	lui	a6, 2
	addiw	a6, a6, -1828
	j	.LBB11_19
.LBB11_18:                              #   in Loop: Header=BB11_19 Depth=1
	addi	a2, a2, 8
	beq	a2, a4, .LBB11_23
.LBB11_19:                              # =>This Inner Loop Header: Depth=1
	ld	a7, 0(a2)
	lw	t0, 0(a7)
	bne	t0, a5, .LBB11_18
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=1
	ld	t0, 40(a7)
	add	t0, t0, a6
	lw	t1, 16(t0)
	beqz	t1, .LBB11_18
# %bb.21:                               #   in Loop: Header=BB11_19 Depth=1
	lw	t1, 12(t0)
	bnez	t1, .LBB11_18
# %bb.22:                               #   in Loop: Header=BB11_19 Depth=1
	lw	t1, 20(a7)
	lw	t2, 0(a3)
	sltu	t2, t2, t1
	negw	t2, t2
	and	t2, t2, a1
	subw	t1, t1, t2
	sw	t1, 24(a7)
	sw	t1, 0(t0)
	j	.LBB11_18
.LBB11_23:
	lwu	a2, 36(s7)
	beqz	a2, .LBB11_29
# %bb.24:
	ld	a1, 16(s7)
	slli	a2, a2, 3
	add	a2, a1, a2
	li	a3, 3
	lui	a4, 2
	addiw	a4, a4, -1824
	j	.LBB11_26
.LBB11_25:                              #   in Loop: Header=BB11_26 Depth=1
	addi	a1, a1, 8
	beq	a1, a2, .LBB11_29
.LBB11_26:                              # =>This Inner Loop Header: Depth=1
	ld	a5, 0(a1)
	lw	a6, 0(a5)
	bne	a6, a3, .LBB11_25
# %bb.27:                               #   in Loop: Header=BB11_26 Depth=1
	ld	a5, 40(a5)
	add	a5, a5, a4
	lw	a6, 8(a5)
	beqz	a6, .LBB11_25
# %bb.28:                               #   in Loop: Header=BB11_26 Depth=1
	lw	a6, 4(a5)
	sw	a6, 0(a5)
	j	.LBB11_25
.LBB11_29:
	li	a1, 2
	blt	a1, a0, .LBB11_45
# %bb.30:
	beqz	a0, .LBB11_48
# %bb.31:
	li	a1, 2
	beq	a0, a1, .LBB11_47
.LBB11_32:
	beqz	s0, .LBB11_194
# %bb.33:
	lwu	s3, 24(s7)
	li	a1, 8
	mv	a0, s3
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB11_35
# %bb.34:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	call	no_mem_exit
	lwu	s3, 24(s7)
.LBB11_35:
	li	a1, 8
	mv	a0, s3
	call	calloc
	mv	s2, a0
	bnez	a0, .LBB11_37
# %bb.36:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	no_mem_exit
	lwu	s3, 24(s7)
.LBB11_37:
	li	a1, 8
	mv	a0, s3
	call	calloc
	mv	s3, a0
	bnez	a0, .LBB11_39
# %bb.38:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	no_mem_exit
.LBB11_39:
	lui	a0, %hi(listXsize)
	lwu	a2, 32(s7)
	sw	zero, %lo(listXsize)(a0)
	addi	a0, a0, %lo(listXsize)
	li	a1, 1
	sw	a1, 4(a0)
	li	s4, 0
	beqz	a2, .LBB11_64
# %bb.40:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	ld	a0, 8(s7)
	lui	a3, 22
	addiw	a3, a3, 168
	add	a1, a1, a3
	slli	a2, a2, 3
	add	a2, a0, a2
	j	.LBB11_42
.LBB11_41:                              #   in Loop: Header=BB11_42 Depth=1
	addi	a0, a0, 8
	beq	a0, a2, .LBB11_64
.LBB11_42:                              # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	lw	a4, 0(a3)
	beqz	a4, .LBB11_41
# %bb.43:                               #   in Loop: Header=BB11_42 Depth=1
	lw	a4, 0(a1)
	lw	a5, 36(a3)
	blt	a4, a5, .LBB11_41
# %bb.44:                               #   in Loop: Header=BB11_42 Depth=1
	slli	a4, s4, 3
	addiw	s4, s4, 1
	add	a4, s1, a4
	sd	a3, 0(a4)
	j	.LBB11_41
.LBB11_45:
	li	a1, 3
	beq	a0, a1, .LBB11_48
# %bb.46:
	li	a1, 4
	bne	a0, a1, .LBB11_32
.LBB11_47:
	lui	a0, %hi(listXsize)
	sw	zero, %lo(listXsize)(a0)
	addi	a0, a0, %lo(listXsize)
	sw	zero, 4(a0)
	j	.LBB11_385
.LBB11_48:
	beqz	s0, .LBB11_57
# %bb.49:
	lwu	s2, 24(s7)
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB11_51
# %bb.50:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	call	no_mem_exit
	lwu	s2, 24(s7)
.LBB11_51:
	li	a1, 8
	mv	a0, s2
	call	calloc
	mv	s2, a0
	beqz	a0, .LBB11_139
# %bb.52:
	lwu	a1, 32(s7)
	beqz	a1, .LBB11_140
.LBB11_53:
	ld	a0, 8(s7)
	li	s3, 0
	slli	a1, a1, 3
	add	a1, a0, a1
	j	.LBB11_55
.LBB11_54:                              #   in Loop: Header=BB11_55 Depth=1
	addi	a0, a0, 8
	beq	a0, a1, .LBB11_141
.LBB11_55:                              # =>This Inner Loop Header: Depth=1
	ld	a2, 0(a0)
	lw	a3, 4(a2)
	beqz	a3, .LBB11_54
# %bb.56:                               #   in Loop: Header=BB11_55 Depth=1
	slli	a3, s3, 3
	addiw	s3, s3, 1
	add	a3, s1, a3
	sd	a2, 0(a3)
	j	.LBB11_54
.LBB11_57:
	lwu	a1, 32(s7)
	beqz	a1, .LBB11_202
# %bb.58:
	li	a0, 0
	li	s0, 0
	ld	a5, 8(s7)
	slli	a1, a1, 3
	li	a2, 3
	lui	a3, 2
	addiw	a3, a3, -1816
	lui	a4, %hi(listX)
	j	.LBB11_60
.LBB11_59:                              #   in Loop: Header=BB11_60 Depth=1
	addi	a0, a0, 8
	beq	a1, a0, .LBB11_203
.LBB11_60:                              # =>This Inner Loop Header: Depth=1
	add	a6, a5, a0
	ld	a6, 0(a6)
	lw	a7, 0(a6)
	bne	a7, a2, .LBB11_59
# %bb.61:                               #   in Loop: Header=BB11_60 Depth=1
	ld	a6, 40(a6)
	add	a7, a6, a3
	lw	t0, 4(a7)
	beqz	t0, .LBB11_59
# %bb.62:                               #   in Loop: Header=BB11_60 Depth=1
	lw	a7, 0(a7)
	bnez	a7, .LBB11_59
# %bb.63:                               #   in Loop: Header=BB11_60 Depth=1
	ld	a5, %lo(listX)(a4)
	slli	a7, s0, 3
	add	a5, a5, a7
	sd	a6, 0(a5)
	ld	a5, 8(s7)
	addiw	s0, s0, 1
	j	.LBB11_59
.LBB11_64:
	lui	a3, %hi(compare_fs_by_poc_desc)
	addi	a3, a3, %lo(compare_fs_by_poc_desc)
	li	a2, 8
	mv	a0, s1
	mv	a1, s4
	call	qsort
	lwu	a2, 32(s7)
	mv	s8, s4
	beqz	a2, .LBB11_70
# %bb.65:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	ld	a0, 8(s7)
	lui	a3, 22
	addiw	a3, a3, 168
	add	a1, a1, a3
	slli	a2, a2, 3
	add	a2, a0, a2
	mv	s8, s4
	j	.LBB11_67
.LBB11_66:                              #   in Loop: Header=BB11_67 Depth=1
	addi	a0, a0, 8
	beq	a0, a2, .LBB11_70
.LBB11_67:                              # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	lw	a4, 0(a3)
	beqz	a4, .LBB11_66
# %bb.68:                               #   in Loop: Header=BB11_67 Depth=1
	lw	a4, 0(a1)
	lw	a5, 36(a3)
	bge	a4, a5, .LBB11_66
# %bb.69:                               #   in Loop: Header=BB11_67 Depth=1
	slli	a4, s8, 3
	addiw	s8, s8, 1
	add	a4, s1, a4
	sd	a3, 0(a4)
	j	.LBB11_66
.LBB11_70:
	slli	s5, s4, 3
	add	s5, s1, s5
	subw	s6, s8, s4
	lui	a3, %hi(compare_fs_by_poc_asc)
	addi	a3, a3, %lo(compare_fs_by_poc_asc)
	li	a2, 8
	mv	a0, s5
	mv	a1, s6
	call	qsort
	blez	s4, .LBB11_73
# %bb.71:
	slli	a0, s6, 3
	add	a0, s2, a0
	slli	a1, s8, 3
	add	a1, s2, a1
	mv	a2, s1
.LBB11_72:                              # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a2)
	sd	a3, 0(a0)
	addi	a0, a0, 8
	addi	a2, a2, 8
	bne	a0, a1, .LBB11_72
.LBB11_73:
	bge	s4, s8, .LBB11_75
# %bb.74:
	not	a0, s4
	add	a0, s8, a0
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	a2, a0, 8
	mv	a0, s2
	mv	a1, s5
	call	memcpy
.LBB11_75:
	li	a1, 0
	li	a3, 0
	li	a2, 0
	lui	a0, %hi(listXsize)
	sw	zero, %lo(listXsize)(a0)
	addi	a0, a0, %lo(listXsize)
	sw	zero, 4(a0)
	lui	a0, %hi(listX)
	ld	a0, %lo(listX)(a0)
	li	a4, 1
	lui	s5, %hi(listXsize+4)
	lui	s6, %hi(listX+8)
	bne	s0, a4, .LBB11_96
# %bb.76:
	blez	s8, .LBB11_252
# %bb.77:                               # %.preheader33
	li	a1, 0
	li	a2, 0
	li	a3, 0
	lui	a4, 2
	addiw	a4, a4, -1816
	lui	a5, %hi(listXsize)
.LBB11_78:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_84 Depth 2
                                        #     Child Loop BB11_91 Depth 2
	blt	a3, s8, .LBB11_82
# %bb.79:                               #   in Loop: Header=BB11_78 Depth=1
	blt	a2, s8, .LBB11_89
.LBB11_80:                              #   in Loop: Header=BB11_78 Depth=1
	blt	a3, s8, .LBB11_78
.LBB11_81:                              #   in Loop: Header=BB11_78 Depth=1
	blt	a2, s8, .LBB11_78
	j	.LBB11_96
.LBB11_82:                              #   in Loop: Header=BB11_78 Depth=1
	subw	a6, s8, a3
	slli	a7, a3, 3
	addiw	a3, a3, 1
	add	a7, s1, a7
	j	.LBB11_84
.LBB11_83:                              #   in Loop: Header=BB11_84 Depth=2
	addiw	a6, a6, -1
	addiw	a3, a3, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_88
.LBB11_84:                              #   Parent Loop BB11_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 1
	beqz	t1, .LBB11_83
# %bb.85:                               #   in Loop: Header=BB11_84 Depth=2
	ld	t0, 48(t0)
	add	t1, t0, a4
	lw	t2, 4(t1)
	beqz	t2, .LBB11_83
# %bb.86:                               #   in Loop: Header=BB11_84 Depth=2
	lw	t1, 0(t1)
	bnez	t1, .LBB11_83
# %bb.87:                               #   in Loop: Header=BB11_78 Depth=1
	slli	a6, a1, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize)(a5)
	bge	a2, s8, .LBB11_80
	j	.LBB11_89
.LBB11_88:                              #   in Loop: Header=BB11_78 Depth=1
	mv	a3, s8
	bge	a2, s8, .LBB11_80
.LBB11_89:                              #   in Loop: Header=BB11_78 Depth=1
	subw	a6, s8, a2
	slli	a7, a2, 3
	addiw	a2, a2, 1
	add	a7, s1, a7
	j	.LBB11_91
.LBB11_90:                              #   in Loop: Header=BB11_91 Depth=2
	addiw	a6, a6, -1
	addiw	a2, a2, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_95
.LBB11_91:                              #   Parent Loop BB11_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 2
	beqz	t1, .LBB11_90
# %bb.92:                               #   in Loop: Header=BB11_91 Depth=2
	ld	t0, 56(t0)
	add	t1, t0, a4
	lw	t2, 4(t1)
	beqz	t2, .LBB11_90
# %bb.93:                               #   in Loop: Header=BB11_91 Depth=2
	lw	t1, 0(t1)
	bnez	t1, .LBB11_90
# %bb.94:                               #   in Loop: Header=BB11_78 Depth=1
	slli	a6, a1, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize)(a5)
	bge	a3, s8, .LBB11_81
	j	.LBB11_78
.LBB11_95:                              #   in Loop: Header=BB11_78 Depth=1
	mv	a2, s8
	bge	a3, s8, .LBB11_81
	j	.LBB11_78
.LBB11_96:
	li	a4, 2
	bne	s0, a4, .LBB11_118
# %bb.97:
	blt	a3, s8, .LBB11_114
# %bb.98:
	blt	a2, s8, .LBB11_114
# %bb.99:
	ld	a0, %lo(listX+8)(s6)
	li	a1, 0
	li	a2, 0
	li	a3, 0
	j	.LBB11_250
.LBB11_100:                             #   in Loop: Header=BB11_114 Depth=1
	subw	a4, s8, a2
	slli	a5, a2, 3
	addiw	a2, a2, 1
	add	a5, s1, a5
	j	.LBB11_102
.LBB11_101:                             #   in Loop: Header=BB11_102 Depth=2
	addiw	a4, a4, -1
	addiw	a2, a2, 1
	addi	a5, a5, 8
	beqz	a4, .LBB11_106
.LBB11_102:                             #   Parent Loop BB11_114 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a5)
	lbu	a7, 0(a6)
	andi	a7, a7, 2
	beqz	a7, .LBB11_101
# %bb.103:                              #   in Loop: Header=BB11_102 Depth=2
	ld	a6, 56(a6)
	lui	a7, 2
	addiw	a7, a7, -1816
	add	a7, a6, a7
	lw	t0, 4(a7)
	beqz	t0, .LBB11_101
# %bb.104:                              #   in Loop: Header=BB11_102 Depth=2
	lw	a7, 0(a7)
	bnez	a7, .LBB11_101
# %bb.105:                              #   in Loop: Header=BB11_114 Depth=1
	slli	a4, a1, 3
	add	a4, a0, a4
	sd	a6, 0(a4)
	addiw	a1, a1, 1
	lui	a4, %hi(listXsize)
	sw	a1, %lo(listXsize)(a4)
	blt	a3, s8, .LBB11_107
	j	.LBB11_116
.LBB11_106:                             #   in Loop: Header=BB11_114 Depth=1
	mv	a2, s8
	bge	a3, s8, .LBB11_116
.LBB11_107:                             #   in Loop: Header=BB11_114 Depth=1
	subw	a4, s8, a3
	slli	a5, a3, 3
	addiw	a3, a3, 1
	add	a5, s1, a5
	j	.LBB11_109
.LBB11_108:                             #   in Loop: Header=BB11_109 Depth=2
	addiw	a4, a4, -1
	addiw	a3, a3, 1
	addi	a5, a5, 8
	beqz	a4, .LBB11_113
.LBB11_109:                             #   Parent Loop BB11_114 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a5)
	lbu	a7, 0(a6)
	andi	a7, a7, 1
	beqz	a7, .LBB11_108
# %bb.110:                              #   in Loop: Header=BB11_109 Depth=2
	ld	a6, 48(a6)
	lui	a7, 2
	addiw	a7, a7, -1816
	add	a7, a6, a7
	lw	t0, 4(a7)
	beqz	t0, .LBB11_108
# %bb.111:                              #   in Loop: Header=BB11_109 Depth=2
	lw	a7, 0(a7)
	bnez	a7, .LBB11_108
# %bb.112:                              #   in Loop: Header=BB11_114 Depth=1
	slli	a4, a1, 3
	add	a4, a0, a4
	sd	a6, 0(a4)
	addiw	a1, a1, 1
	lui	a4, %hi(listXsize)
	sw	a1, %lo(listXsize)(a4)
	bge	a3, s8, .LBB11_117
	j	.LBB11_114
.LBB11_113:                             #   in Loop: Header=BB11_114 Depth=1
	mv	a3, s8
	bge	s8, s8, .LBB11_117
.LBB11_114:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_102 Depth 2
                                        #     Child Loop BB11_109 Depth 2
	blt	a2, s8, .LBB11_100
# %bb.115:                              #   in Loop: Header=BB11_114 Depth=1
	blt	a3, s8, .LBB11_107
.LBB11_116:                             #   in Loop: Header=BB11_114 Depth=1
	blt	a3, s8, .LBB11_114
.LBB11_117:                             #   in Loop: Header=BB11_114 Depth=1
	blt	a2, s8, .LBB11_114
.LBB11_118:
	ld	a0, %lo(listX+8)(s6)
	li	a1, 1
	bne	s0, a1, .LBB11_248
# %bb.119:
	blez	s8, .LBB11_252
# %bb.120:                              # %.preheader25
	li	a1, 0
	li	a2, 0
	li	a3, 0
	lui	a4, 2
	addiw	a4, a4, -1816
.LBB11_121:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_127 Depth 2
                                        #     Child Loop BB11_134 Depth 2
	blt	a3, s8, .LBB11_125
# %bb.122:                              #   in Loop: Header=BB11_121 Depth=1
	blt	a2, s8, .LBB11_132
.LBB11_123:                             #   in Loop: Header=BB11_121 Depth=1
	blt	a3, s8, .LBB11_121
.LBB11_124:                             #   in Loop: Header=BB11_121 Depth=1
	blt	a2, s8, .LBB11_121
	j	.LBB11_249
.LBB11_125:                             #   in Loop: Header=BB11_121 Depth=1
	subw	a5, s8, a3
	slli	a6, a3, 3
	addiw	a3, a3, 1
	add	a6, s2, a6
	j	.LBB11_127
.LBB11_126:                             #   in Loop: Header=BB11_127 Depth=2
	addiw	a5, a5, -1
	addiw	a3, a3, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_131
.LBB11_127:                             #   Parent Loop BB11_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 1
	beqz	t0, .LBB11_126
# %bb.128:                              #   in Loop: Header=BB11_127 Depth=2
	ld	a7, 48(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_126
# %bb.129:                              #   in Loop: Header=BB11_127 Depth=2
	lw	t0, 0(t0)
	bnez	t0, .LBB11_126
# %bb.130:                              #   in Loop: Header=BB11_121 Depth=1
	slli	a5, a1, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize+4)(s5)
	bge	a2, s8, .LBB11_123
	j	.LBB11_132
.LBB11_131:                             #   in Loop: Header=BB11_121 Depth=1
	mv	a3, s8
	bge	a2, s8, .LBB11_123
.LBB11_132:                             #   in Loop: Header=BB11_121 Depth=1
	subw	a5, s8, a2
	slli	a6, a2, 3
	addiw	a2, a2, 1
	add	a6, s2, a6
	j	.LBB11_134
.LBB11_133:                             #   in Loop: Header=BB11_134 Depth=2
	addiw	a5, a5, -1
	addiw	a2, a2, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_138
.LBB11_134:                             #   Parent Loop BB11_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 2
	beqz	t0, .LBB11_133
# %bb.135:                              #   in Loop: Header=BB11_134 Depth=2
	ld	a7, 56(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_133
# %bb.136:                              #   in Loop: Header=BB11_134 Depth=2
	lw	t0, 0(t0)
	bnez	t0, .LBB11_133
# %bb.137:                              #   in Loop: Header=BB11_121 Depth=1
	slli	a5, a1, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize+4)(s5)
	bge	a3, s8, .LBB11_124
	j	.LBB11_121
.LBB11_138:                             #   in Loop: Header=BB11_121 Depth=1
	mv	a2, s8
	bge	a3, s8, .LBB11_124
	j	.LBB11_121
.LBB11_139:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	no_mem_exit
	lwu	a1, 32(s7)
	bnez	a1, .LBB11_53
.LBB11_140:
	li	s3, 0
.LBB11_141:
	lui	a3, %hi(compare_fs_by_frame_num_desc)
	addi	a3, a3, %lo(compare_fs_by_frame_num_desc)
	li	a2, 8
	mv	a0, s1
	mv	a1, s3
	call	qsort
	li	a1, 0
	li	a3, 0
	li	a2, 0
	lui	a0, %hi(listX)
	ld	a0, %lo(listX)(a0)
	lui	a4, %hi(listXsize)
	li	a5, 1
	sw	zero, %lo(listXsize)(a4)
	bne	s0, a5, .LBB11_162
# %bb.142:
	blez	s3, .LBB11_165
# %bb.143:                              # %.preheader53
	li	a1, 0
	li	a2, 0
	li	a3, 0
	lui	a4, 2
	addiw	a4, a4, -1816
	lui	a5, %hi(listXsize)
.LBB11_144:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_150 Depth 2
                                        #     Child Loop BB11_157 Depth 2
	blt	a3, s3, .LBB11_148
# %bb.145:                              #   in Loop: Header=BB11_144 Depth=1
	blt	a2, s3, .LBB11_155
.LBB11_146:                             #   in Loop: Header=BB11_144 Depth=1
	blt	a3, s3, .LBB11_144
.LBB11_147:                             #   in Loop: Header=BB11_144 Depth=1
	blt	a2, s3, .LBB11_144
	j	.LBB11_162
.LBB11_148:                             #   in Loop: Header=BB11_144 Depth=1
	subw	a6, s3, a3
	slli	a7, a3, 3
	addiw	a3, a3, 1
	add	a7, s1, a7
	j	.LBB11_150
.LBB11_149:                             #   in Loop: Header=BB11_150 Depth=2
	addiw	a6, a6, -1
	addiw	a3, a3, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_154
.LBB11_150:                             #   Parent Loop BB11_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 1
	beqz	t1, .LBB11_149
# %bb.151:                              #   in Loop: Header=BB11_150 Depth=2
	ld	t0, 48(t0)
	add	t1, t0, a4
	lw	t2, 4(t1)
	beqz	t2, .LBB11_149
# %bb.152:                              #   in Loop: Header=BB11_150 Depth=2
	lw	t1, 0(t1)
	bnez	t1, .LBB11_149
# %bb.153:                              #   in Loop: Header=BB11_144 Depth=1
	slli	a6, a1, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize)(a5)
	bge	a2, s3, .LBB11_146
	j	.LBB11_155
.LBB11_154:                             #   in Loop: Header=BB11_144 Depth=1
	mv	a3, s3
	bge	a2, s3, .LBB11_146
.LBB11_155:                             #   in Loop: Header=BB11_144 Depth=1
	subw	a6, s3, a2
	slli	a7, a2, 3
	addiw	a2, a2, 1
	add	a7, s1, a7
	j	.LBB11_157
.LBB11_156:                             #   in Loop: Header=BB11_157 Depth=2
	addiw	a6, a6, -1
	addiw	a2, a2, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_161
.LBB11_157:                             #   Parent Loop BB11_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 2
	beqz	t1, .LBB11_156
# %bb.158:                              #   in Loop: Header=BB11_157 Depth=2
	ld	t0, 56(t0)
	add	t1, t0, a4
	lw	t2, 4(t1)
	beqz	t2, .LBB11_156
# %bb.159:                              #   in Loop: Header=BB11_157 Depth=2
	lw	t1, 0(t1)
	bnez	t1, .LBB11_156
# %bb.160:                              #   in Loop: Header=BB11_144 Depth=1
	slli	a6, a1, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize)(a5)
	bge	a3, s3, .LBB11_147
	j	.LBB11_144
.LBB11_161:                             #   in Loop: Header=BB11_144 Depth=1
	mv	a2, s3
	bge	a3, s3, .LBB11_147
	j	.LBB11_144
.LBB11_162:
	li	a4, 2
	bne	s0, a4, .LBB11_165
# %bb.163:
	blt	a3, s3, .LBB11_210
# %bb.164:
	blt	a2, s3, .LBB11_210
.LBB11_165:
	lwu	a1, 36(s7)
	sext.w	s3, a1
	beqz	a1, .LBB11_168
# %bb.166:
	ld	a0, 16(s7)
	slli	a1, a1, 3
	add	a1, s2, a1
	mv	a2, s2
.LBB11_167:                             # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	sd	a3, 0(a2)
	addi	a2, a2, 8
	addi	a0, a0, 8
	bne	a2, a1, .LBB11_167
.LBB11_168:
	lui	a3, %hi(compare_fs_by_lt_pic_idx_asc)
	addi	a3, a3, %lo(compare_fs_by_lt_pic_idx_asc)
	li	a2, 8
	mv	a0, s2
	mv	a1, s3
	call	qsort
	lui	a0, %hi(listX)
	ld	a0, %lo(listX)(a0)
	li	a1, 1
	bne	s0, a1, .LBB11_189
# %bb.169:
	beqz	s3, .LBB11_193
# %bb.170:
	lui	a3, %hi(listXsize)
	lw	a4, %lo(listXsize)(a3)
	li	a1, 0
	li	a2, 0
	lui	a5, 2
	addiw	a5, a5, -1816
.LBB11_171:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_177 Depth 2
                                        #     Child Loop BB11_184 Depth 2
	blt	a2, s3, .LBB11_175
# %bb.172:                              #   in Loop: Header=BB11_171 Depth=1
	blt	a1, s3, .LBB11_182
.LBB11_173:                             #   in Loop: Header=BB11_171 Depth=1
	blt	a2, s3, .LBB11_171
.LBB11_174:                             #   in Loop: Header=BB11_171 Depth=1
	blt	a1, s3, .LBB11_171
	j	.LBB11_190
.LBB11_175:                             #   in Loop: Header=BB11_171 Depth=1
	subw	a6, s3, a2
	slli	a7, a2, 3
	addiw	a2, a2, 1
	add	a7, s2, a7
	j	.LBB11_177
.LBB11_176:                             #   in Loop: Header=BB11_177 Depth=2
	addiw	a6, a6, -1
	addiw	a2, a2, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_181
.LBB11_177:                             #   Parent Loop BB11_171 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 1
	beqz	t1, .LBB11_176
# %bb.178:                              #   in Loop: Header=BB11_177 Depth=2
	ld	t0, 48(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_176
# %bb.179:                              #   in Loop: Header=BB11_177 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_176
# %bb.180:                              #   in Loop: Header=BB11_171 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a1, s3, .LBB11_173
	j	.LBB11_182
.LBB11_181:                             #   in Loop: Header=BB11_171 Depth=1
	mv	a2, s3
	bge	a1, s3, .LBB11_173
.LBB11_182:                             #   in Loop: Header=BB11_171 Depth=1
	subw	a6, s3, a1
	slli	a7, a1, 3
	addiw	a1, a1, 1
	add	a7, s2, a7
	j	.LBB11_184
.LBB11_183:                             #   in Loop: Header=BB11_184 Depth=2
	addiw	a6, a6, -1
	addiw	a1, a1, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_188
.LBB11_184:                             #   Parent Loop BB11_171 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 2
	beqz	t1, .LBB11_183
# %bb.185:                              #   in Loop: Header=BB11_184 Depth=2
	ld	t0, 56(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_183
# %bb.186:                              #   in Loop: Header=BB11_184 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_183
# %bb.187:                              #   in Loop: Header=BB11_171 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a2, s3, .LBB11_174
	j	.LBB11_171
.LBB11_188:                             #   in Loop: Header=BB11_171 Depth=1
	mv	a1, s3
	bge	a2, s3, .LBB11_174
	j	.LBB11_171
.LBB11_189:
	li	a2, 0
	li	a1, 0
.LBB11_190:
	li	a3, 2
	bne	s0, a3, .LBB11_193
# %bb.191:
	blt	a2, s3, .LBB11_229
# %bb.192:
	blt	a1, s3, .LBB11_229
.LBB11_193:
	mv	a0, s1
	call	free
	mv	a0, s2
	call	free
	li	s2, 0
	j	.LBB11_367
.LBB11_194:
	lwu	a1, 32(s7)
	beqz	a1, .LBB11_300
# %bb.195:
	li	a0, 0
	li	s0, 0
	ld	a6, 8(s7)
	slli	a1, a1, 3
	li	a2, 3
	lui	a3, 2
	addiw	a3, a3, -1816
	lui	a4, %hi(img)
	lui	a5, 22
	lui	a7, %hi(listX)
	j	.LBB11_197
.LBB11_196:                             #   in Loop: Header=BB11_197 Depth=1
	addi	a0, a0, 8
	beq	a1, a0, .LBB11_301
.LBB11_197:                             # =>This Inner Loop Header: Depth=1
	add	t0, a6, a0
	ld	t0, 0(t0)
	lw	t1, 0(t0)
	bne	t1, a2, .LBB11_196
# %bb.198:                              #   in Loop: Header=BB11_197 Depth=1
	ld	t0, 40(t0)
	add	t1, t0, a3
	lw	t2, 4(t1)
	beqz	t2, .LBB11_196
# %bb.199:                              #   in Loop: Header=BB11_197 Depth=1
	lw	t1, 0(t1)
	bnez	t1, .LBB11_196
# %bb.200:                              #   in Loop: Header=BB11_197 Depth=1
	ld	t1, %lo(img)(a4)
	add	t1, t1, a5
	lw	t1, 164(t1)
	lw	t2, 4(t0)
	bge	t2, t1, .LBB11_196
# %bb.201:                              #   in Loop: Header=BB11_197 Depth=1
	ld	a6, %lo(listX)(a7)
	slli	t1, s0, 3
	add	a6, a6, t1
	sd	t0, 0(a6)
	ld	a6, 8(s7)
	addiw	s0, s0, 1
	j	.LBB11_196
.LBB11_202:
	li	s0, 0
.LBB11_203:
	lui	s2, %hi(listX)
	ld	a0, %lo(listX)(s2)
	lui	a3, %hi(compare_pic_by_pic_num_desc)
	addi	a3, a3, %lo(compare_pic_by_pic_num_desc)
	li	a2, 8
	mv	a1, s0
	call	qsort
	lwu	a1, 36(s7)
	lui	s1, %hi(listXsize)
	sw	s0, %lo(listXsize)(s1)
	mv	s3, s0
	beqz	a1, .LBB11_209
# %bb.204:
	li	a0, 0
	ld	a4, 16(s7)
	slli	a1, a1, 3
	li	a2, 3
	lui	a3, 2
	mv	s3, s0
	j	.LBB11_206
.LBB11_205:                             #   in Loop: Header=BB11_206 Depth=1
	addi	a0, a0, 8
	beq	a1, a0, .LBB11_209
.LBB11_206:                             # =>This Inner Loop Header: Depth=1
	add	a5, a4, a0
	ld	a5, 0(a5)
	lw	a6, 0(a5)
	bne	a6, a2, .LBB11_205
# %bb.207:                              #   in Loop: Header=BB11_206 Depth=1
	ld	a5, 40(a5)
	add	a6, a5, a3
	lw	a6, -1816(a6)
	beqz	a6, .LBB11_205
# %bb.208:                              #   in Loop: Header=BB11_206 Depth=1
	ld	a4, %lo(listX)(s2)
	slli	a6, s3, 3
	add	a4, a4, a6
	sd	a5, 0(a4)
	ld	a4, 16(s7)
	addiw	s3, s3, 1
	j	.LBB11_205
.LBB11_209:
	ld	a0, %lo(listX)(s2)
	slli	a1, s0, 3
	add	a0, a0, a1
	subw	a1, s3, s0
	lui	a3, %hi(compare_pic_by_lt_pic_num_asc)
	addi	a3, a3, %lo(compare_pic_by_lt_pic_num_asc)
	li	a2, 8
	call	qsort
	li	s2, 0
	sw	s3, %lo(listXsize)(s1)
	j	.LBB11_367
.LBB11_210:                             # %.preheader49
	lui	a4, 2
	addiw	a4, a4, -1816
	lui	a5, %hi(listXsize)
.LBB11_211:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_217 Depth 2
                                        #     Child Loop BB11_224 Depth 2
	blt	a2, s3, .LBB11_215
# %bb.212:                              #   in Loop: Header=BB11_211 Depth=1
	blt	a3, s3, .LBB11_222
.LBB11_213:                             #   in Loop: Header=BB11_211 Depth=1
	blt	a3, s3, .LBB11_211
.LBB11_214:                             #   in Loop: Header=BB11_211 Depth=1
	blt	a2, s3, .LBB11_211
	j	.LBB11_165
.LBB11_215:                             #   in Loop: Header=BB11_211 Depth=1
	subw	a6, s3, a2
	slli	a7, a2, 3
	addiw	a2, a2, 1
	add	a7, s1, a7
	j	.LBB11_217
.LBB11_216:                             #   in Loop: Header=BB11_217 Depth=2
	addiw	a6, a6, -1
	addiw	a2, a2, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_221
.LBB11_217:                             #   Parent Loop BB11_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 2
	beqz	t1, .LBB11_216
# %bb.218:                              #   in Loop: Header=BB11_217 Depth=2
	ld	t0, 56(t0)
	add	t1, t0, a4
	lw	t2, 4(t1)
	beqz	t2, .LBB11_216
# %bb.219:                              #   in Loop: Header=BB11_217 Depth=2
	lw	t1, 0(t1)
	bnez	t1, .LBB11_216
# %bb.220:                              #   in Loop: Header=BB11_211 Depth=1
	slli	a6, a1, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize)(a5)
	bge	a3, s3, .LBB11_213
	j	.LBB11_222
.LBB11_221:                             #   in Loop: Header=BB11_211 Depth=1
	mv	a2, s3
	bge	a3, s3, .LBB11_213
.LBB11_222:                             #   in Loop: Header=BB11_211 Depth=1
	subw	a6, s3, a3
	slli	a7, a3, 3
	addiw	a3, a3, 1
	add	a7, s1, a7
	j	.LBB11_224
.LBB11_223:                             #   in Loop: Header=BB11_224 Depth=2
	addiw	a6, a6, -1
	addiw	a3, a3, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_228
.LBB11_224:                             #   Parent Loop BB11_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 1
	beqz	t1, .LBB11_223
# %bb.225:                              #   in Loop: Header=BB11_224 Depth=2
	ld	t0, 48(t0)
	add	t1, t0, a4
	lw	t2, 4(t1)
	beqz	t2, .LBB11_223
# %bb.226:                              #   in Loop: Header=BB11_224 Depth=2
	lw	t1, 0(t1)
	bnez	t1, .LBB11_223
# %bb.227:                              #   in Loop: Header=BB11_211 Depth=1
	slli	a6, a1, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize)(a5)
	bge	a3, s3, .LBB11_214
	j	.LBB11_211
.LBB11_228:                             #   in Loop: Header=BB11_211 Depth=1
	mv	a3, s3
	bge	s3, s3, .LBB11_214
	j	.LBB11_211
.LBB11_229:
	lui	a3, %hi(listXsize)
	lw	a4, %lo(listXsize)(a3)
	lui	a5, 2
	addiw	a5, a5, -1816
.LBB11_230:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_236 Depth 2
                                        #     Child Loop BB11_243 Depth 2
	blt	a1, s3, .LBB11_234
# %bb.231:                              #   in Loop: Header=BB11_230 Depth=1
	blt	a2, s3, .LBB11_241
.LBB11_232:                             #   in Loop: Header=BB11_230 Depth=1
	blt	a2, s3, .LBB11_230
.LBB11_233:                             #   in Loop: Header=BB11_230 Depth=1
	blt	a1, s3, .LBB11_230
	j	.LBB11_193
.LBB11_234:                             #   in Loop: Header=BB11_230 Depth=1
	subw	a6, s3, a1
	slli	a7, a1, 3
	addiw	a1, a1, 1
	add	a7, s2, a7
	j	.LBB11_236
.LBB11_235:                             #   in Loop: Header=BB11_236 Depth=2
	addiw	a6, a6, -1
	addiw	a1, a1, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_240
.LBB11_236:                             #   Parent Loop BB11_230 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 2
	beqz	t1, .LBB11_235
# %bb.237:                              #   in Loop: Header=BB11_236 Depth=2
	ld	t0, 56(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_235
# %bb.238:                              #   in Loop: Header=BB11_236 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_235
# %bb.239:                              #   in Loop: Header=BB11_230 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a2, s3, .LBB11_232
	j	.LBB11_241
.LBB11_240:                             #   in Loop: Header=BB11_230 Depth=1
	mv	a1, s3
	bge	a2, s3, .LBB11_232
.LBB11_241:                             #   in Loop: Header=BB11_230 Depth=1
	subw	a6, s3, a2
	slli	a7, a2, 3
	addiw	a2, a2, 1
	add	a7, s2, a7
	j	.LBB11_243
.LBB11_242:                             #   in Loop: Header=BB11_243 Depth=2
	addiw	a6, a6, -1
	addiw	a2, a2, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_247
.LBB11_243:                             #   Parent Loop BB11_230 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 1
	beqz	t1, .LBB11_242
# %bb.244:                              #   in Loop: Header=BB11_243 Depth=2
	ld	t0, 48(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_242
# %bb.245:                              #   in Loop: Header=BB11_243 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_242
# %bb.246:                              #   in Loop: Header=BB11_230 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a2, s3, .LBB11_233
	j	.LBB11_230
.LBB11_247:                             #   in Loop: Header=BB11_230 Depth=1
	mv	a2, s3
	bge	s3, s3, .LBB11_233
	j	.LBB11_230
.LBB11_248:
	li	a1, 0
	li	a3, 0
	li	a2, 0
.LBB11_249:
	li	a4, 2
	bne	s0, a4, .LBB11_252
.LBB11_250:
	blt	a3, s8, .LBB11_281
# %bb.251:
	blt	a2, s8, .LBB11_281
.LBB11_252:
	lwu	a1, 36(s7)
	sext.w	s4, a1
	beqz	a1, .LBB11_255
# %bb.253:
	ld	a0, 16(s7)
	slli	a1, a1, 3
	add	a1, s3, a1
	mv	a2, s3
.LBB11_254:                             # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	sd	a3, 0(a2)
	addi	a2, a2, 8
	addi	a0, a0, 8
	bne	a2, a1, .LBB11_254
.LBB11_255:
	lui	a3, %hi(compare_fs_by_lt_pic_idx_asc)
	addi	a3, a3, %lo(compare_fs_by_lt_pic_idx_asc)
	li	a2, 8
	mv	a0, s3
	mv	a1, s4
	call	qsort
	lui	a0, %hi(listX)
	ld	a0, %lo(listX)(a0)
	li	a1, 1
	bne	s0, a1, .LBB11_276
# %bb.256:
	beqz	s4, .LBB11_366
# %bb.257:
	lui	a3, %hi(listXsize)
	lw	a4, %lo(listXsize)(a3)
	li	a1, 0
	li	a2, 0
	lui	a5, 2
	addiw	a5, a5, -1816
.LBB11_258:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_264 Depth 2
                                        #     Child Loop BB11_271 Depth 2
	blt	a2, s4, .LBB11_262
# %bb.259:                              #   in Loop: Header=BB11_258 Depth=1
	blt	a1, s4, .LBB11_269
.LBB11_260:                             #   in Loop: Header=BB11_258 Depth=1
	blt	a2, s4, .LBB11_258
.LBB11_261:                             #   in Loop: Header=BB11_258 Depth=1
	blt	a1, s4, .LBB11_258
	j	.LBB11_277
.LBB11_262:                             #   in Loop: Header=BB11_258 Depth=1
	subw	a6, s4, a2
	slli	a7, a2, 3
	addiw	a2, a2, 1
	add	a7, s3, a7
	j	.LBB11_264
.LBB11_263:                             #   in Loop: Header=BB11_264 Depth=2
	addiw	a6, a6, -1
	addiw	a2, a2, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_268
.LBB11_264:                             #   Parent Loop BB11_258 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 1
	beqz	t1, .LBB11_263
# %bb.265:                              #   in Loop: Header=BB11_264 Depth=2
	ld	t0, 48(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_263
# %bb.266:                              #   in Loop: Header=BB11_264 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_263
# %bb.267:                              #   in Loop: Header=BB11_258 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a1, s4, .LBB11_260
	j	.LBB11_269
.LBB11_268:                             #   in Loop: Header=BB11_258 Depth=1
	mv	a2, s4
	bge	a1, s4, .LBB11_260
.LBB11_269:                             #   in Loop: Header=BB11_258 Depth=1
	subw	a6, s4, a1
	slli	a7, a1, 3
	addiw	a1, a1, 1
	add	a7, s3, a7
	j	.LBB11_271
.LBB11_270:                             #   in Loop: Header=BB11_271 Depth=2
	addiw	a6, a6, -1
	addiw	a1, a1, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_275
.LBB11_271:                             #   Parent Loop BB11_258 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 2
	beqz	t1, .LBB11_270
# %bb.272:                              #   in Loop: Header=BB11_271 Depth=2
	ld	t0, 56(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_270
# %bb.273:                              #   in Loop: Header=BB11_271 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_270
# %bb.274:                              #   in Loop: Header=BB11_258 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a2, s4, .LBB11_261
	j	.LBB11_258
.LBB11_275:                             #   in Loop: Header=BB11_258 Depth=1
	mv	a1, s4
	bge	a2, s4, .LBB11_261
	j	.LBB11_258
.LBB11_276:
	li	a2, 0
	li	a1, 0
.LBB11_277:
	li	a3, 2
	bne	s0, a3, .LBB11_341
# %bb.278:
	blt	a2, s4, .LBB11_322
# %bb.279:
	blt	a1, s4, .LBB11_322
# %bb.280:
	ld	a0, %lo(listX+8)(s6)
	li	a1, 0
	li	a2, 0
	j	.LBB11_364
.LBB11_281:                             # %.preheader
	lui	a4, 2
	addiw	a4, a4, -1816
.LBB11_282:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_288 Depth 2
                                        #     Child Loop BB11_295 Depth 2
	blt	a2, s8, .LBB11_286
# %bb.283:                              #   in Loop: Header=BB11_282 Depth=1
	blt	a3, s8, .LBB11_293
.LBB11_284:                             #   in Loop: Header=BB11_282 Depth=1
	blt	a3, s8, .LBB11_282
.LBB11_285:                             #   in Loop: Header=BB11_282 Depth=1
	blt	a2, s8, .LBB11_282
	j	.LBB11_252
.LBB11_286:                             #   in Loop: Header=BB11_282 Depth=1
	subw	a5, s8, a2
	slli	a6, a2, 3
	addiw	a2, a2, 1
	add	a6, s2, a6
	j	.LBB11_288
.LBB11_287:                             #   in Loop: Header=BB11_288 Depth=2
	addiw	a5, a5, -1
	addiw	a2, a2, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_292
.LBB11_288:                             #   Parent Loop BB11_282 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 2
	beqz	t0, .LBB11_287
# %bb.289:                              #   in Loop: Header=BB11_288 Depth=2
	ld	a7, 56(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_287
# %bb.290:                              #   in Loop: Header=BB11_288 Depth=2
	lw	t0, 0(t0)
	bnez	t0, .LBB11_287
# %bb.291:                              #   in Loop: Header=BB11_282 Depth=1
	slli	a5, a1, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize+4)(s5)
	bge	a3, s8, .LBB11_284
	j	.LBB11_293
.LBB11_292:                             #   in Loop: Header=BB11_282 Depth=1
	mv	a2, s8
	bge	a3, s8, .LBB11_284
.LBB11_293:                             #   in Loop: Header=BB11_282 Depth=1
	subw	a5, s8, a3
	slli	a6, a3, 3
	addiw	a3, a3, 1
	add	a6, s2, a6
	j	.LBB11_295
.LBB11_294:                             #   in Loop: Header=BB11_295 Depth=2
	addiw	a5, a5, -1
	addiw	a3, a3, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_299
.LBB11_295:                             #   Parent Loop BB11_282 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 1
	beqz	t0, .LBB11_294
# %bb.296:                              #   in Loop: Header=BB11_295 Depth=2
	ld	a7, 48(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_294
# %bb.297:                              #   in Loop: Header=BB11_295 Depth=2
	lw	t0, 0(t0)
	bnez	t0, .LBB11_294
# %bb.298:                              #   in Loop: Header=BB11_282 Depth=1
	slli	a5, a1, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a1, a1, 1
	sw	a1, %lo(listXsize+4)(s5)
	bge	a3, s8, .LBB11_285
	j	.LBB11_282
.LBB11_299:                             #   in Loop: Header=BB11_282 Depth=1
	mv	a3, s8
	bge	s8, s8, .LBB11_285
	j	.LBB11_282
.LBB11_300:
	li	s0, 0
.LBB11_301:
	lui	s2, %hi(listX)
	ld	a0, %lo(listX)(s2)
	lui	a3, %hi(compare_pic_by_poc_desc)
	addi	a3, a3, %lo(compare_pic_by_poc_desc)
	li	a2, 8
	mv	a1, s0
	call	qsort
	lwu	a1, 32(s7)
	mv	s1, s0
	beqz	a1, .LBB11_309
# %bb.302:
	li	a0, 0
	ld	a6, 8(s7)
	slli	a1, a1, 3
	li	a2, 3
	lui	a3, 2
	addiw	a3, a3, -1816
	lui	a4, %hi(img)
	lui	a5, 22
	mv	s1, s0
	j	.LBB11_304
.LBB11_303:                             #   in Loop: Header=BB11_304 Depth=1
	addi	a0, a0, 8
	beq	a1, a0, .LBB11_309
.LBB11_304:                             # =>This Inner Loop Header: Depth=1
	add	a7, a6, a0
	ld	a7, 0(a7)
	lw	t0, 0(a7)
	bne	t0, a2, .LBB11_303
# %bb.305:                              #   in Loop: Header=BB11_304 Depth=1
	ld	a7, 40(a7)
	add	t0, a7, a3
	lw	t1, 4(t0)
	beqz	t1, .LBB11_303
# %bb.306:                              #   in Loop: Header=BB11_304 Depth=1
	lw	t0, 0(t0)
	bnez	t0, .LBB11_303
# %bb.307:                              #   in Loop: Header=BB11_304 Depth=1
	ld	t0, %lo(img)(a4)
	add	t0, t0, a5
	lw	t0, 164(t0)
	lw	t1, 4(a7)
	bge	t0, t1, .LBB11_303
# %bb.308:                              #   in Loop: Header=BB11_304 Depth=1
	ld	a6, %lo(listX)(s2)
	slli	t0, s1, 3
	add	a6, a6, t0
	sd	a7, 0(a6)
	ld	a6, 8(s7)
	addiw	s1, s1, 1
	j	.LBB11_303
.LBB11_309:
	ld	a0, %lo(listX)(s2)
	slli	s2, s0, 3
	add	a0, a0, s2
	subw	a1, s1, s0
	lui	a3, %hi(compare_pic_by_poc_asc)
	addi	a3, a3, %lo(compare_pic_by_poc_asc)
	li	a2, 8
	call	qsort
	blez	s0, .LBB11_312
# %bb.310:
	li	a0, 0
	slli	a1, s1, 3
	sub	a1, a1, s2
	lui	a2, %hi(listX)
	addi	a3, a2, %lo(listX)
.LBB11_311:                             # =>This Inner Loop Header: Depth=1
	ld	a4, %lo(listX)(a2)
	ld	a5, 8(a3)
	add	a4, a4, a0
	ld	a4, 0(a4)
	add	a6, a1, a0
	add	a5, a5, a6
	addi	a0, a0, 8
	sd	a4, 0(a5)
	bne	s2, a0, .LBB11_311
.LBB11_312:
	bge	s0, s1, .LBB11_315
# %bb.313:
	li	a0, 0
	slli	a1, s1, 3
	sub	a1, a1, s2
	lui	a2, %hi(listX)
	addi	a3, a2, %lo(listX)
.LBB11_314:                             # =>This Inner Loop Header: Depth=1
	ld	a4, %lo(listX)(a2)
	add	a5, s2, a0
	ld	a6, 8(a3)
	add	a4, a4, a5
	ld	a4, 0(a4)
	add	a6, a6, a0
	addi	a0, a0, 8
	sd	a4, 0(a6)
	bne	a0, a1, .LBB11_314
.LBB11_315:
	lwu	a1, 36(s7)
	lui	s3, %hi(listXsize)
	addi	a0, s3, %lo(listXsize)
	sw	s1, 4(a0)
	sw	s1, %lo(listXsize)(s3)
	mv	s2, s1
	beqz	a1, .LBB11_321
# %bb.316:
	li	a0, 0
	ld	a6, 16(s7)
	slli	a1, a1, 3
	li	a2, 3
	lui	a3, 2
	lui	a4, %hi(listX)
	addi	a5, a4, %lo(listX)
	mv	s2, s1
	j	.LBB11_318
.LBB11_317:                             #   in Loop: Header=BB11_318 Depth=1
	addi	a0, a0, 8
	beq	a1, a0, .LBB11_321
.LBB11_318:                             # =>This Inner Loop Header: Depth=1
	add	a7, a6, a0
	ld	a7, 0(a7)
	lw	t0, 0(a7)
	bne	t0, a2, .LBB11_317
# %bb.319:                              #   in Loop: Header=BB11_318 Depth=1
	ld	a7, 40(a7)
	add	t0, a7, a3
	lw	t0, -1816(t0)
	beqz	t0, .LBB11_317
# %bb.320:                              #   in Loop: Header=BB11_318 Depth=1
	ld	a6, %lo(listX)(a4)
	slli	t0, s2, 3
	add	a6, a6, t0
	sd	a7, 0(a6)
	ld	a6, 16(s7)
	add	a6, a6, a0
	ld	a6, 0(a6)
	ld	a7, 8(a5)
	ld	a6, 40(a6)
	add	a7, a7, t0
	sd	a6, 0(a7)
	ld	a6, 16(s7)
	addiw	s2, s2, 1
	j	.LBB11_317
.LBB11_321:
	lui	a0, %hi(listX)
	ld	a1, %lo(listX)(a0)
	addi	s4, a0, %lo(listX)
	slli	a0, s1, 3
	add	a0, a1, a0
	subw	a1, s2, s1
	lui	s0, %hi(compare_pic_by_lt_pic_num_asc)
	addi	s0, s0, %lo(compare_pic_by_lt_pic_num_asc)
	li	a2, 8
	mv	a3, s0
	call	qsort
	lw	a1, %lo(listXsize)(s3)
	ld	a0, 8(s4)
	slli	a2, a1, 3
	add	a0, a0, a2
	subw	a1, s2, a1
	li	a2, 8
	mv	a3, s0
	call	qsort
	sw	s2, %lo(listXsize)(s3)
	j	.LBB11_367
.LBB11_322:
	lui	a3, %hi(listXsize)
	lw	a4, %lo(listXsize)(a3)
	lui	a5, 2
	addiw	a5, a5, -1816
.LBB11_323:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_329 Depth 2
                                        #     Child Loop BB11_336 Depth 2
	blt	a1, s4, .LBB11_327
# %bb.324:                              #   in Loop: Header=BB11_323 Depth=1
	blt	a2, s4, .LBB11_334
.LBB11_325:                             #   in Loop: Header=BB11_323 Depth=1
	blt	a2, s4, .LBB11_323
.LBB11_326:                             #   in Loop: Header=BB11_323 Depth=1
	blt	a1, s4, .LBB11_323
	j	.LBB11_341
.LBB11_327:                             #   in Loop: Header=BB11_323 Depth=1
	subw	a6, s4, a1
	slli	a7, a1, 3
	addiw	a1, a1, 1
	add	a7, s3, a7
	j	.LBB11_329
.LBB11_328:                             #   in Loop: Header=BB11_329 Depth=2
	addiw	a6, a6, -1
	addiw	a1, a1, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_333
.LBB11_329:                             #   Parent Loop BB11_323 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 2
	beqz	t1, .LBB11_328
# %bb.330:                              #   in Loop: Header=BB11_329 Depth=2
	ld	t0, 56(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_328
# %bb.331:                              #   in Loop: Header=BB11_329 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_328
# %bb.332:                              #   in Loop: Header=BB11_323 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a2, s4, .LBB11_325
	j	.LBB11_334
.LBB11_333:                             #   in Loop: Header=BB11_323 Depth=1
	mv	a1, s4
	bge	a2, s4, .LBB11_325
.LBB11_334:                             #   in Loop: Header=BB11_323 Depth=1
	subw	a6, s4, a2
	slli	a7, a2, 3
	addiw	a2, a2, 1
	add	a7, s3, a7
	j	.LBB11_336
.LBB11_335:                             #   in Loop: Header=BB11_336 Depth=2
	addiw	a6, a6, -1
	addiw	a2, a2, 1
	addi	a7, a7, 8
	beqz	a6, .LBB11_340
.LBB11_336:                             #   Parent Loop BB11_323 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a7)
	lbu	t1, 0(t0)
	andi	t1, t1, 1
	beqz	t1, .LBB11_335
# %bb.337:                              #   in Loop: Header=BB11_336 Depth=2
	ld	t0, 48(t0)
	add	t1, t0, a5
	lw	t2, 4(t1)
	beqz	t2, .LBB11_335
# %bb.338:                              #   in Loop: Header=BB11_336 Depth=2
	lw	t1, 0(t1)
	beqz	t1, .LBB11_335
# %bb.339:                              #   in Loop: Header=BB11_323 Depth=1
	slli	a6, a4, 3
	add	a6, a0, a6
	sd	t0, 0(a6)
	addiw	a4, a4, 1
	sw	a4, %lo(listXsize)(a3)
	bge	a2, s4, .LBB11_326
	j	.LBB11_323
.LBB11_340:                             #   in Loop: Header=BB11_323 Depth=1
	mv	a2, s4
	bge	s4, s4, .LBB11_326
	j	.LBB11_323
.LBB11_341:
	ld	a0, %lo(listX+8)(s6)
	li	a1, 1
	bne	s0, a1, .LBB11_362
# %bb.342:
	beqz	s4, .LBB11_366
# %bb.343:
	lw	a3, %lo(listXsize+4)(s5)
	li	a1, 0
	li	a2, 0
	lui	a4, 2
	addiw	a4, a4, -1816
.LBB11_344:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_350 Depth 2
                                        #     Child Loop BB11_357 Depth 2
	blt	a2, s4, .LBB11_348
# %bb.345:                              #   in Loop: Header=BB11_344 Depth=1
	blt	a1, s4, .LBB11_355
.LBB11_346:                             #   in Loop: Header=BB11_344 Depth=1
	blt	a2, s4, .LBB11_344
.LBB11_347:                             #   in Loop: Header=BB11_344 Depth=1
	blt	a1, s4, .LBB11_344
	j	.LBB11_363
.LBB11_348:                             #   in Loop: Header=BB11_344 Depth=1
	subw	a5, s4, a2
	slli	a6, a2, 3
	addiw	a2, a2, 1
	add	a6, s3, a6
	j	.LBB11_350
.LBB11_349:                             #   in Loop: Header=BB11_350 Depth=2
	addiw	a5, a5, -1
	addiw	a2, a2, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_354
.LBB11_350:                             #   Parent Loop BB11_344 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 1
	beqz	t0, .LBB11_349
# %bb.351:                              #   in Loop: Header=BB11_350 Depth=2
	ld	a7, 48(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_349
# %bb.352:                              #   in Loop: Header=BB11_350 Depth=2
	lw	t0, 0(t0)
	beqz	t0, .LBB11_349
# %bb.353:                              #   in Loop: Header=BB11_344 Depth=1
	slli	a5, a3, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a3, a3, 1
	sw	a3, %lo(listXsize+4)(s5)
	bge	a1, s4, .LBB11_346
	j	.LBB11_355
.LBB11_354:                             #   in Loop: Header=BB11_344 Depth=1
	mv	a2, s4
	bge	a1, s4, .LBB11_346
.LBB11_355:                             #   in Loop: Header=BB11_344 Depth=1
	subw	a5, s4, a1
	slli	a6, a1, 3
	addiw	a1, a1, 1
	add	a6, s3, a6
	j	.LBB11_357
.LBB11_356:                             #   in Loop: Header=BB11_357 Depth=2
	addiw	a5, a5, -1
	addiw	a1, a1, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_361
.LBB11_357:                             #   Parent Loop BB11_344 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 2
	beqz	t0, .LBB11_356
# %bb.358:                              #   in Loop: Header=BB11_357 Depth=2
	ld	a7, 56(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_356
# %bb.359:                              #   in Loop: Header=BB11_357 Depth=2
	lw	t0, 0(t0)
	beqz	t0, .LBB11_356
# %bb.360:                              #   in Loop: Header=BB11_344 Depth=1
	slli	a5, a3, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a3, a3, 1
	sw	a3, %lo(listXsize+4)(s5)
	bge	a2, s4, .LBB11_347
	j	.LBB11_344
.LBB11_361:                             #   in Loop: Header=BB11_344 Depth=1
	mv	a1, s4
	bge	a2, s4, .LBB11_347
	j	.LBB11_344
.LBB11_362:
	li	a2, 0
	li	a1, 0
.LBB11_363:
	li	a3, 2
	bne	s0, a3, .LBB11_366
.LBB11_364:
	blt	a2, s4, .LBB11_386
# %bb.365:
	blt	a1, s4, .LBB11_386
.LBB11_366:
	mv	a0, s1
	call	free
	mv	a0, s2
	call	free
	mv	a0, s3
	call	free
	lw	s2, %lo(listXsize+4)(s5)
.LBB11_367:
	lui	a0, %hi(listXsize)
	lw	a0, %lo(listXsize)(a0)
	li	a1, 2
	blt	a0, a1, .LBB11_375
# %bb.368:
	bne	a0, s2, .LBB11_375
# %bb.369:
	li	a2, 0
	lui	a3, %hi(listX)
	addi	a1, a3, %lo(listX)
	ld	a1, 8(a1)
	ld	a3, %lo(listX)(a3)
	slli	a4, s2, 32
	srli	a4, a4, 29
	add	a4, a1, a4
	mv	a5, a1
	j	.LBB11_371
.LBB11_370:                             #   in Loop: Header=BB11_371 Depth=1
	addi	a5, a5, 8
	addi	a3, a3, 8
	beq	a5, a4, .LBB11_373
.LBB11_371:                             # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a3)
	ld	a7, 0(a5)
	beq	a6, a7, .LBB11_370
# %bb.372:                              #   in Loop: Header=BB11_371 Depth=1
	li	a2, 1
	j	.LBB11_370
.LBB11_373:
	bnez	a2, .LBB11_375
# %bb.374:
	ld	a2, 8(a1)
	ld	a3, 0(a1)
	sd	a2, 0(a1)
	lui	a1, %hi(listX+8)
	ld	a1, %lo(listX+8)(a1)
	sd	a3, 8(a1)
.LBB11_375:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	addiw	a2, a2, -704
	add	a1, a1, a2
	lw	a2, 0(a1)
	blt	a0, a2, .LBB11_377
# %bb.376:
	mv	a0, a2
.LBB11_377:
	lui	a3, %hi(listXsize)
	sw	a0, %lo(listXsize)(a3)
	lw	a2, 4(a1)
	li	a1, -1
	addi	a3, a3, %lo(listXsize)
	blt	s2, a2, .LBB11_379
# %bb.378:
	mv	s2, a2
.LBB11_379:
	srli	a1, a1, 32
	li	a2, 32
	sw	s2, 4(a3)
	bltu	a2, a0, .LBB11_382
# %bb.380:
	addi	a3, a0, 1
	slli	a0, a0, 3
	lui	a4, %hi(listX)
	li	a5, 33
.LBB11_381:                             # =>This Inner Loop Header: Depth=1
	ld	a6, %lo(listX)(a4)
	add	a6, a6, a0
	sd	zero, 0(a6)
	and	a6, a3, a1
	addi	a3, a3, 1
	addi	a0, a0, 8
	bne	a6, a5, .LBB11_381
.LBB11_382:
	bltu	a2, s2, .LBB11_385
# %bb.383:
	addi	a0, s2, 1
	slli	s2, s2, 3
	lui	a2, %hi(listX+8)
	li	a3, 33
.LBB11_384:                             # =>This Inner Loop Header: Depth=1
	ld	a4, %lo(listX+8)(a2)
	add	a4, a4, s2
	sd	zero, 0(a4)
	and	a4, a0, a1
	addi	a0, a0, 1
	addi	s2, s2, 8
	bne	a4, a3, .LBB11_384
.LBB11_385:
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
	ret
.LBB11_386:
	lw	a3, %lo(listXsize+4)(s5)
	lui	a4, 2
	addiw	a4, a4, -1816
.LBB11_387:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_393 Depth 2
                                        #     Child Loop BB11_400 Depth 2
	blt	a1, s4, .LBB11_391
# %bb.388:                              #   in Loop: Header=BB11_387 Depth=1
	blt	a2, s4, .LBB11_398
.LBB11_389:                             #   in Loop: Header=BB11_387 Depth=1
	blt	a2, s4, .LBB11_387
.LBB11_390:                             #   in Loop: Header=BB11_387 Depth=1
	blt	a1, s4, .LBB11_387
	j	.LBB11_366
.LBB11_391:                             #   in Loop: Header=BB11_387 Depth=1
	subw	a5, s4, a1
	slli	a6, a1, 3
	addiw	a1, a1, 1
	add	a6, s3, a6
	j	.LBB11_393
.LBB11_392:                             #   in Loop: Header=BB11_393 Depth=2
	addiw	a5, a5, -1
	addiw	a1, a1, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_397
.LBB11_393:                             #   Parent Loop BB11_387 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 2
	beqz	t0, .LBB11_392
# %bb.394:                              #   in Loop: Header=BB11_393 Depth=2
	ld	a7, 56(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_392
# %bb.395:                              #   in Loop: Header=BB11_393 Depth=2
	lw	t0, 0(t0)
	beqz	t0, .LBB11_392
# %bb.396:                              #   in Loop: Header=BB11_387 Depth=1
	slli	a5, a3, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a3, a3, 1
	sw	a3, %lo(listXsize+4)(s5)
	bge	a2, s4, .LBB11_389
	j	.LBB11_398
.LBB11_397:                             #   in Loop: Header=BB11_387 Depth=1
	mv	a1, s4
	bge	a2, s4, .LBB11_389
.LBB11_398:                             #   in Loop: Header=BB11_387 Depth=1
	subw	a5, s4, a2
	slli	a6, a2, 3
	addiw	a2, a2, 1
	add	a6, s3, a6
	j	.LBB11_400
.LBB11_399:                             #   in Loop: Header=BB11_400 Depth=2
	addiw	a5, a5, -1
	addiw	a2, a2, 1
	addi	a6, a6, 8
	beqz	a5, .LBB11_404
.LBB11_400:                             #   Parent Loop BB11_387 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a6)
	lbu	t0, 0(a7)
	andi	t0, t0, 1
	beqz	t0, .LBB11_399
# %bb.401:                              #   in Loop: Header=BB11_400 Depth=2
	ld	a7, 48(a7)
	add	t0, a7, a4
	lw	t1, 4(t0)
	beqz	t1, .LBB11_399
# %bb.402:                              #   in Loop: Header=BB11_400 Depth=2
	lw	t0, 0(t0)
	beqz	t0, .LBB11_399
# %bb.403:                              #   in Loop: Header=BB11_387 Depth=1
	slli	a5, a3, 3
	add	a5, a0, a5
	sd	a7, 0(a5)
	addiw	a3, a3, 1
	sw	a3, %lo(listXsize+4)(s5)
	bge	a2, s4, .LBB11_390
	j	.LBB11_387
.LBB11_404:                             #   in Loop: Header=BB11_387 Depth=1
	mv	a2, s4
	bge	s4, s4, .LBB11_390
	j	.LBB11_387
.Lfunc_end11:
	.size	init_lists, .Lfunc_end11-init_lists
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc,@function
compare_pic_by_pic_num_desc:            # @compare_pic_by_pic_num_desc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lui	a2, 2
	add	a0, a0, a2
	lw	a0, -1828(a0)
	add	a1, a1, a2
	lw	a1, -1828(a1)
	bge	a0, a1, .LBB12_2
# %bb.1:
	li	a0, 1
	ret
.LBB12_2:
	slt	a0, a1, a0
	neg	a0, a0
	ret
.Lfunc_end12:
	.size	compare_pic_by_pic_num_desc, .Lfunc_end12-compare_pic_by_pic_num_desc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc,@function
compare_pic_by_lt_pic_num_asc:          # @compare_pic_by_lt_pic_num_asc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lui	a2, 2
	add	a0, a0, a2
	lw	a0, -1824(a0)
	add	a1, a1, a2
	lw	a1, -1824(a1)
	slt	a2, a0, a1
	slt	a0, a1, a0
	neg	a1, a2
	or	a0, a1, a0
	ret
.Lfunc_end13:
	.size	compare_pic_by_lt_pic_num_asc, .Lfunc_end13-compare_pic_by_lt_pic_num_asc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc,@function
compare_fs_by_frame_num_desc:           # @compare_fs_by_frame_num_desc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 24(a0)
	lw	a1, 24(a1)
	bge	a0, a1, .LBB14_2
# %bb.1:
	li	a0, 1
	ret
.LBB14_2:
	slt	a0, a1, a0
	neg	a0, a0
	ret
.Lfunc_end14:
	.size	compare_fs_by_frame_num_desc, .Lfunc_end14-compare_fs_by_frame_num_desc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc,@function
compare_fs_by_lt_pic_idx_asc:           # @compare_fs_by_lt_pic_idx_asc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 28(a0)
	lw	a1, 28(a1)
	slt	a2, a0, a1
	slt	a0, a1, a0
	neg	a1, a2
	or	a0, a1, a0
	ret
.Lfunc_end15:
	.size	compare_fs_by_lt_pic_idx_asc, .Lfunc_end15-compare_fs_by_lt_pic_idx_asc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc,@function
compare_pic_by_poc_desc:                # @compare_pic_by_poc_desc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 4(a0)
	lw	a1, 4(a1)
	bge	a0, a1, .LBB16_2
# %bb.1:
	li	a0, 1
	ret
.LBB16_2:
	slt	a0, a1, a0
	neg	a0, a0
	ret
.Lfunc_end16:
	.size	compare_pic_by_poc_desc, .Lfunc_end16-compare_pic_by_poc_desc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc,@function
compare_pic_by_poc_asc:                 # @compare_pic_by_poc_asc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 4(a0)
	lw	a1, 4(a1)
	slt	a2, a0, a1
	slt	a0, a1, a0
	neg	a1, a2
	or	a0, a1, a0
	ret
.Lfunc_end17:
	.size	compare_pic_by_poc_asc, .Lfunc_end17-compare_pic_by_poc_asc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc,@function
compare_fs_by_poc_desc:                 # @compare_fs_by_poc_desc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 36(a0)
	lw	a1, 36(a1)
	bge	a0, a1, .LBB18_2
# %bb.1:
	li	a0, 1
	ret
.LBB18_2:
	slt	a0, a1, a0
	neg	a0, a0
	ret
.Lfunc_end18:
	.size	compare_fs_by_poc_desc, .Lfunc_end18-compare_fs_by_poc_desc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc,@function
compare_fs_by_poc_asc:                  # @compare_fs_by_poc_asc
# %bb.0:
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 36(a0)
	lw	a1, 36(a1)
	slt	a2, a0, a1
	slt	a0, a1, a0
	neg	a1, a2
	or	a0, a1, a0
	ret
.Lfunc_end19:
	.size	compare_fs_by_poc_asc, .Lfunc_end19-compare_fs_by_poc_asc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_mbaff_lists                # -- Begin function init_mbaff_lists
	.p2align	2
	.type	init_mbaff_lists,@function
init_mbaff_lists:                       # @init_mbaff_lists
# %bb.0:
	lui	a0, %hi(listXsize)
	addi	a0, a0, %lo(listXsize)
	addi	a2, a0, 8
	lui	a1, %hi(listX)
	addi	a1, a1, %lo(listX)
	addi	a3, a1, 16
	addi	a4, a0, 24
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	ld	a5, 0(a3)
	sd	zero, 0(a5)
	ld	a5, 0(a3)
	sd	zero, 8(a5)
	ld	a5, 0(a3)
	sd	zero, 16(a5)
	ld	a5, 0(a3)
	sd	zero, 24(a5)
	ld	a5, 0(a3)
	sd	zero, 32(a5)
	ld	a5, 0(a3)
	sd	zero, 40(a5)
	ld	a5, 0(a3)
	sd	zero, 48(a5)
	ld	a5, 0(a3)
	sd	zero, 56(a5)
	ld	a5, 0(a3)
	sd	zero, 64(a5)
	ld	a5, 0(a3)
	sd	zero, 72(a5)
	ld	a5, 0(a3)
	sd	zero, 80(a5)
	ld	a5, 0(a3)
	sd	zero, 88(a5)
	ld	a5, 0(a3)
	sd	zero, 96(a5)
	ld	a5, 0(a3)
	sd	zero, 104(a5)
	ld	a5, 0(a3)
	sd	zero, 112(a5)
	ld	a5, 0(a3)
	sd	zero, 120(a5)
	ld	a5, 0(a3)
	sd	zero, 128(a5)
	ld	a5, 0(a3)
	sd	zero, 136(a5)
	ld	a5, 0(a3)
	sd	zero, 144(a5)
	ld	a5, 0(a3)
	sd	zero, 152(a5)
	ld	a5, 0(a3)
	sd	zero, 160(a5)
	ld	a5, 0(a3)
	sd	zero, 168(a5)
	ld	a5, 0(a3)
	sd	zero, 176(a5)
	ld	a5, 0(a3)
	sd	zero, 184(a5)
	ld	a5, 0(a3)
	sd	zero, 192(a5)
	ld	a5, 0(a3)
	sd	zero, 200(a5)
	ld	a5, 0(a3)
	sd	zero, 208(a5)
	ld	a5, 0(a3)
	sd	zero, 216(a5)
	ld	a5, 0(a3)
	sd	zero, 224(a5)
	ld	a5, 0(a3)
	sd	zero, 232(a5)
	ld	a5, 0(a3)
	sd	zero, 240(a5)
	ld	a5, 0(a3)
	sd	zero, 248(a5)
	ld	a5, 0(a3)
	sd	zero, 256(a5)
	sw	zero, 0(a2)
	addi	a2, a2, 4
	addi	a3, a3, 8
	bne	a2, a4, .LBB20_1
# %bb.2:
	lui	a2, %hi(listXsize)
	lw	a2, %lo(listXsize)(a2)
	blez	a2, .LBB20_5
# %bb.3:
	li	a3, 0
	li	a4, 0
	slli	a5, a2, 4
	lui	a6, %hi(listX)
	addi	a7, a6, %lo(listX)
	lui	t0, 2
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	ld	t1, %lo(listX)(a6)
	add	t1, t1, a3
	ld	t1, 0(t1)
	add	t1, t1, t0
	ld	t2, 16(a7)
	ld	t1, -1664(t1)
	add	t2, t2, a4
	sd	t1, 0(t2)
	ld	t1, %lo(listX)(a6)
	add	t1, t1, a3
	ld	t1, 0(t1)
	add	t1, t1, t0
	ld	t2, 16(a7)
	ld	t1, -1656(t1)
	add	t2, t2, a4
	sd	t1, 8(t2)
	ld	t1, %lo(listX)(a6)
	add	t1, t1, a3
	ld	t1, 0(t1)
	add	t1, t1, t0
	ld	t2, 32(a7)
	ld	t1, -1656(t1)
	add	t2, t2, a4
	sd	t1, 0(t2)
	ld	t1, %lo(listX)(a6)
	add	t1, t1, a3
	ld	t1, 0(t1)
	add	t1, t1, t0
	ld	t2, 32(a7)
	ld	t1, -1664(t1)
	add	t2, t2, a4
	sd	t1, 8(t2)
	addi	a4, a4, 16
	addi	a3, a3, 8
	bne	a5, a4, .LBB20_4
.LBB20_5:
	lw	a3, 4(a0)
	slli	a2, a2, 1
	sw	a2, 16(a0)
	sw	a2, 8(a0)
	blez	a3, .LBB20_8
# %bb.6:
	li	a2, 0
	li	a4, 0
	slli	a5, a3, 4
	lui	a6, 2
.LBB20_7:                               # =>This Inner Loop Header: Depth=1
	ld	a7, 8(a1)
	add	a7, a7, a2
	ld	a7, 0(a7)
	add	a7, a7, a6
	ld	t0, 24(a1)
	ld	a7, -1664(a7)
	add	t0, t0, a4
	sd	a7, 0(t0)
	ld	a7, 8(a1)
	add	a7, a7, a2
	ld	a7, 0(a7)
	add	a7, a7, a6
	ld	t0, 24(a1)
	ld	a7, -1656(a7)
	add	t0, t0, a4
	sd	a7, 8(t0)
	ld	a7, 8(a1)
	add	a7, a7, a2
	ld	a7, 0(a7)
	add	a7, a7, a6
	ld	t0, 40(a1)
	ld	a7, -1656(a7)
	add	t0, t0, a4
	sd	a7, 0(t0)
	ld	a7, 8(a1)
	add	a7, a7, a2
	ld	a7, 0(a7)
	add	a7, a7, a6
	ld	t0, 40(a1)
	ld	a7, -1664(a7)
	add	t0, t0, a4
	sd	a7, 8(t0)
	addi	a4, a4, 16
	addi	a2, a2, 8
	bne	a5, a4, .LBB20_7
.LBB20_8:
	slli	a3, a3, 1
	sw	a3, 20(a0)
	sw	a3, 12(a0)
	ret
.Lfunc_end20:
	.size	init_mbaff_lists, .Lfunc_end20-init_mbaff_lists
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	reorder_ref_pic_list            # -- Begin function reorder_ref_pic_list
	.p2align	2
	.type	reorder_ref_pic_list,@function
reorder_ref_pic_list:                   # @reorder_ref_pic_list
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	lui	a6, %hi(img)
	ld	a7, %lo(img)(a6)
	lw	a6, 28(a7)
	lui	t0, 22
	add	a7, a7, t0
	lw	s8, 172(a7)
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	mv	t3, a2
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	mv	s5, a0
	beqz	a6, .LBB21_2
# %bb.1:
	slliw	a0, s8, 1
	addi	s8, a0, 1
.LBB21_2:
	lw	a0, 0(a3)
	li	s7, 3
	addiw	a1, t3, 1
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	bne	a0, s7, .LBB21_4
.LBB21_3:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sw	a1, 0(a0)
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.LBB21_4:
	lui	a1, %hi(log2_max_frame_num_minus4)
	lw	a1, %lo(log2_max_frame_num_minus4)(a1)
	li	s1, 0
	li	s3, 0
	snez	a2, a6
	addi	a1, a1, 4
	addi	a2, a2, 1
	sllw	s2, a2, a1
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	slli	a1, a2, 3
	add	a1, s5, a1
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	addi	a2, a2, -1
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	addi	a1, s5, 8
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addi	a1, t3, 1
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	li	t4, 4
	li	t5, 1
	lui	s11, %hi(dpb)
	addi	s11, s11, %lo(dpb)
	lui	a1, 2
	addiw	s6, a1, -1828
	mv	s9, s8
	j	.LBB21_7
.LBB21_5:                               #   in Loop: Header=BB21_7 Depth=1
	addiw	t1, s3, 1
	slli	s3, s3, 3
	add	s3, s5, s3
	sd	a2, 0(s3)
.LBB21_6:                               #   in Loop: Header=BB21_7 Depth=1
	addi	s1, s1, 1
	slli	a0, s1, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	mv	s3, t1
	beq	a0, s7, .LBB21_3
.LBB21_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_15 Depth 2
                                        #     Child Loop BB21_29 Depth 2
                                        #     Child Loop BB21_35 Depth 2
                                        #     Child Loop BB21_41 Depth 2
                                        #     Child Loop BB21_55 Depth 2
                                        #     Child Loop BB21_61 Depth 2
	slli	s10, s1, 2
	blt	a0, t4, .LBB21_9
# %bb.8:                                #   in Loop: Header=BB21_7 Depth=1
	mv	s0, s2
	add	s2, a3, s10
	li	a1, 500
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	mv	s7, a3
	mv	s4, t3
	call	error
	li	t5, 1
	li	t4, 4
	mv	t3, s4
	mv	a3, s7
	li	s7, 3
	lw	a0, 0(s2)
	mv	s2, s0
.LBB21_9:                               #   in Loop: Header=BB21_7 Depth=1
	blt	t5, a0, .LBB21_12
# %bb.10:                               #   in Loop: Header=BB21_7 Depth=1
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	s10, a1, s10
	lw	a1, 0(s10)
	beqz	a0, .LBB21_37
# %bb.11:                               #   in Loop: Header=BB21_7 Depth=1
	add	a1, s9, a1
	addiw	a1, a1, 1
	slt	a0, a1, s2
	addi	a0, a0, -1
	and	a0, a0, s2
	subw	s9, a1, a0
	j	.LBB21_38
.LBB21_12:                              #   in Loop: Header=BB21_7 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	add	s10, a0, s10
	lwu	s0, 36(s11)
	lw	a0, 0(s10)
	lui	a1, 2
	addiw	a1, a1, -1824
	beqz	s0, .LBB21_25
# %bb.13:                               #   in Loop: Header=BB21_7 Depth=1
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a4, 28(a2)
	ld	a5, 16(s11)
	j	.LBB21_15
.LBB21_14:                              #   in Loop: Header=BB21_15 Depth=2
	addi	s0, s0, -1
	addi	a5, a5, 8
	beqz	s0, .LBB21_25
.LBB21_15:                              #   Parent Loop BB21_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a5)
	lw	a7, 4(a6)
	beqz	a4, .LBB21_21
# %bb.16:                               #   in Loop: Header=BB21_15 Depth=2
	andi	a2, a7, 1
	beqz	a2, .LBB21_19
# %bb.17:                               #   in Loop: Header=BB21_15 Depth=2
	ld	a2, 48(a6)
	add	t0, a2, a1
	lw	t1, 8(t0)
	beqz	t1, .LBB21_19
# %bb.18:                               #   in Loop: Header=BB21_15 Depth=2
	lw	t0, 0(t0)
	beq	t0, a0, .LBB21_24
.LBB21_19:                              #   in Loop: Header=BB21_15 Depth=2
	andi	a2, a7, 2
	beqz	a2, .LBB21_14
# %bb.20:                               #   in Loop: Header=BB21_15 Depth=2
	ld	a2, 56(a6)
	add	a6, a2, a1
	lw	a7, 8(a6)
	bnez	a7, .LBB21_23
	j	.LBB21_14
.LBB21_21:                              #   in Loop: Header=BB21_15 Depth=2
	bne	a7, s7, .LBB21_14
# %bb.22:                               #   in Loop: Header=BB21_15 Depth=2
	ld	a2, 40(a6)
	add	a6, a2, a1
	lw	a7, 8(a6)
	beqz	a7, .LBB21_14
.LBB21_23:                              #   in Loop: Header=BB21_15 Depth=2
	lw	a6, 0(a6)
	bne	a6, a0, .LBB21_14
.LBB21_24:                              #   in Loop: Header=BB21_7 Depth=1
	blt	t3, s3, .LBB21_5
	j	.LBB21_26
.LBB21_25:                              #   in Loop: Header=BB21_7 Depth=1
	li	a2, 0
	blt	t3, s3, .LBB21_5
.LBB21_26:                              # %.preheader3
                                        #   in Loop: Header=BB21_7 Depth=1
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a5, a4
	blt	a4, s3, .LBB21_28
# %bb.27:                               # %.preheader3
                                        #   in Loop: Header=BB21_7 Depth=1
	mv	a5, s3
.LBB21_28:                              # %.preheader3
                                        #   in Loop: Header=BB21_7 Depth=1
	slli	a5, a5, 3
	add	a7, s5, a5
	ld	a4, 48(sp)                      # 8-byte Folded Reload
.LBB21_29:                              #   Parent Loop BB21_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, -8(a4)
	addi	a6, a4, -8
	sd	a5, 0(a4)
	mv	a4, a6
	bne	a6, a7, .LBB21_29
# %bb.30:                               #   in Loop: Header=BB21_7 Depth=1
	addiw	t1, s3, 1
	slli	s3, s3, 3
	add	s3, s5, s3
	sd	a2, 0(s3)
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	mv	a4, a2
	blt	t1, a2, .LBB21_32
# %bb.31:                               #   in Loop: Header=BB21_7 Depth=1
	mv	a4, t1
.LBB21_32:                              #   in Loop: Header=BB21_7 Depth=1
	slli	a2, t1, 3
	add	a2, s5, a2
	slli	a4, a4, 3
	ld	a5, 32(sp)                      # 8-byte Folded Reload
	add	a4, a5, a4
	mv	a5, t1
	j	.LBB21_35
.LBB21_33:                              #   in Loop: Header=BB21_35 Depth=2
	slli	a7, a5, 3
	addiw	a5, a5, 1
	add	a7, s5, a7
	sd	a6, 0(a7)
.LBB21_34:                              #   in Loop: Header=BB21_35 Depth=2
	addi	a2, a2, 8
	beq	a2, a4, .LBB21_6
.LBB21_35:                              #   Parent Loop BB21_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a2)
	add	a7, a6, a1
	lw	t0, 8(a7)
	beqz	t0, .LBB21_33
# %bb.36:                               #   in Loop: Header=BB21_35 Depth=2
	lw	a7, 0(a7)
	bne	a7, a0, .LBB21_33
	j	.LBB21_34
.LBB21_37:                              #   in Loop: Header=BB21_7 Depth=1
	not	a0, a1
	add	a0, s9, a0
	sraiw	a1, a0, 31
	and	a1, a1, s2
	addw	s9, a1, a0
.LBB21_38:                              #   in Loop: Header=BB21_7 Depth=1
	lwu	a1, 32(s11)
	slt	a0, s8, s9
	negw	a0, a0
	and	a0, a0, s2
	subw	a0, s9, a0
	beqz	a1, .LBB21_51
# %bb.39:                               #   in Loop: Header=BB21_7 Depth=1
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	t1, 28(a2)
	ld	a4, 8(s11)
	j	.LBB21_41
.LBB21_40:                              #   in Loop: Header=BB21_41 Depth=2
	addi	a1, a1, -1
	addi	a4, a4, 8
	beqz	a1, .LBB21_51
.LBB21_41:                              #   Parent Loop BB21_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 0(a4)
	lw	a6, 4(a5)
	beqz	t1, .LBB21_47
# %bb.42:                               #   in Loop: Header=BB21_41 Depth=2
	andi	a2, a6, 1
	beqz	a2, .LBB21_45
# %bb.43:                               #   in Loop: Header=BB21_41 Depth=2
	ld	a2, 48(a5)
	add	a7, a2, s6
	lw	t0, 12(a7)
	bnez	t0, .LBB21_45
# %bb.44:                               #   in Loop: Header=BB21_41 Depth=2
	lw	a7, 0(a7)
	beq	a7, a0, .LBB21_50
.LBB21_45:                              #   in Loop: Header=BB21_41 Depth=2
	andi	a2, a6, 2
	beqz	a2, .LBB21_40
# %bb.46:                               #   in Loop: Header=BB21_41 Depth=2
	ld	a2, 56(a5)
	add	a5, a2, s6
	lw	a6, 12(a5)
	bnez	a6, .LBB21_40
	j	.LBB21_49
.LBB21_47:                              #   in Loop: Header=BB21_41 Depth=2
	bne	a6, s7, .LBB21_40
# %bb.48:                               #   in Loop: Header=BB21_41 Depth=2
	ld	a2, 40(a5)
	add	a5, a2, s6
	lw	a6, 12(a5)
	bnez	a6, .LBB21_40
.LBB21_49:                              #   in Loop: Header=BB21_41 Depth=2
	lw	a5, 0(a5)
	bne	a5, a0, .LBB21_40
.LBB21_50:                              #   in Loop: Header=BB21_7 Depth=1
	blt	t3, s3, .LBB21_5
	j	.LBB21_52
.LBB21_51:                              #   in Loop: Header=BB21_7 Depth=1
	li	a2, 0
	blt	t3, s3, .LBB21_5
.LBB21_52:                              # %.preheader
                                        #   in Loop: Header=BB21_7 Depth=1
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a1, a4
	blt	a4, s3, .LBB21_54
# %bb.53:                               # %.preheader
                                        #   in Loop: Header=BB21_7 Depth=1
	mv	a1, s3
.LBB21_54:                              # %.preheader
                                        #   in Loop: Header=BB21_7 Depth=1
	slli	a1, a1, 3
	add	a1, s5, a1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
.LBB21_55:                              #   Parent Loop BB21_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a4, -8(a6)
	addi	a5, a6, -8
	sd	a4, 0(a6)
	mv	a6, a5
	bne	a5, a1, .LBB21_55
# %bb.56:                               #   in Loop: Header=BB21_7 Depth=1
	addiw	t1, s3, 1
	slli	s3, s3, 3
	add	s3, s5, s3
	sd	a2, 0(s3)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	mv	a2, a1
	blt	t1, a1, .LBB21_58
# %bb.57:                               #   in Loop: Header=BB21_7 Depth=1
	mv	a2, t1
.LBB21_58:                              #   in Loop: Header=BB21_7 Depth=1
	slli	a1, t1, 3
	add	a1, s5, a1
	slli	a2, a2, 3
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	add	a2, a4, a2
	mv	a4, t1
	j	.LBB21_61
.LBB21_59:                              #   in Loop: Header=BB21_61 Depth=2
	slli	a6, a4, 3
	addiw	a4, a4, 1
	add	a6, s5, a6
	sd	a5, 0(a6)
.LBB21_60:                              #   in Loop: Header=BB21_61 Depth=2
	addi	a1, a1, 8
	beq	a1, a2, .LBB21_6
.LBB21_61:                              #   Parent Loop BB21_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 0(a1)
	beqz	a5, .LBB21_60
# %bb.62:                               #   in Loop: Header=BB21_61 Depth=2
	add	a6, a5, s6
	lw	a7, 12(a6)
	bnez	a7, .LBB21_59
# %bb.63:                               #   in Loop: Header=BB21_61 Depth=2
	lw	a6, 0(a6)
	bne	a6, a0, .LBB21_59
	j	.LBB21_60
.Lfunc_end21:
	.size	reorder_ref_pic_list, .Lfunc_end21-reorder_ref_pic_list
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	update_ref_list                 # -- Begin function update_ref_list
	.p2align	2
	.type	update_ref_list,@function
update_ref_list:                        # @update_ref_list
# %bb.0:
	lui	a0, %hi(dpb)
	addi	a0, a0, %lo(dpb)
	lwu	a4, 28(a0)
	beqz	a4, .LBB22_15
# %bb.1:
	li	a2, 0
	li	a1, 0
	lui	a3, %hi(dpb)
	ld	t0, %lo(dpb)(a3)
	slli	a4, a4, 3
	li	a5, 3
	lui	a6, 2
	addiw	a6, a6, -1816
	addi	a7, a3, %lo(dpb)
	j	.LBB22_4
.LBB22_2:                               #   in Loop: Header=BB22_4 Depth=1
	ld	t0, 8(a7)
	slli	t2, a1, 32
	srli	t2, t2, 29
	add	t0, t0, t2
	sd	t1, 0(t0)
	ld	t0, %lo(dpb)(a3)
	addiw	a1, a1, 1
.LBB22_3:                               #   in Loop: Header=BB22_4 Depth=1
	addi	a2, a2, 8
	beq	a4, a2, .LBB22_16
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	add	t1, t0, a2
	ld	t1, 0(t1)
	lw	t2, 0(t1)
	bne	t2, a5, .LBB22_7
# %bb.5:                                #   in Loop: Header=BB22_4 Depth=1
	ld	t3, 40(t1)
	add	t3, t3, a6
	lw	t4, 4(t3)
	beqz	t4, .LBB22_8
# %bb.6:                                #   in Loop: Header=BB22_4 Depth=1
	lw	t3, 0(t3)
	bnez	t3, .LBB22_8
	j	.LBB22_2
.LBB22_7:                               #   in Loop: Header=BB22_4 Depth=1
	andi	t3, t2, 1
	beqz	t3, .LBB22_11
.LBB22_8:                               #   in Loop: Header=BB22_4 Depth=1
	ld	t3, 48(t1)
	beqz	t3, .LBB22_11
# %bb.9:                                #   in Loop: Header=BB22_4 Depth=1
	add	t3, t3, a6
	lw	t4, 4(t3)
	beqz	t4, .LBB22_11
# %bb.10:                               #   in Loop: Header=BB22_4 Depth=1
	lw	t3, 0(t3)
	beqz	t3, .LBB22_2
.LBB22_11:                              #   in Loop: Header=BB22_4 Depth=1
	andi	t2, t2, 2
	beqz	t2, .LBB22_3
# %bb.12:                               #   in Loop: Header=BB22_4 Depth=1
	ld	t2, 56(t1)
	beqz	t2, .LBB22_3
# %bb.13:                               #   in Loop: Header=BB22_4 Depth=1
	add	t2, t2, a6
	lw	t3, 4(t2)
	beqz	t3, .LBB22_3
# %bb.14:                               #   in Loop: Header=BB22_4 Depth=1
	lw	t2, 0(t2)
	bnez	t2, .LBB22_3
	j	.LBB22_2
.LBB22_15:
	li	a1, 0
.LBB22_16:
	lw	a2, 24(a0)
	sw	a1, 32(a0)
	bgeu	a1, a2, .LBB22_19
# %bb.17:
	slli	a2, a2, 32
	srli	a2, a2, 32
	slli	a1, a1, 32
	srli	a1, a1, 29
	slli	a2, a2, 3
.LBB22_18:                              # =>This Inner Loop Header: Depth=1
	ld	a3, 8(a0)
	add	a3, a3, a1
	addi	a1, a1, 8
	sd	zero, 0(a3)
	bne	a1, a2, .LBB22_18
.LBB22_19:
	ret
.Lfunc_end22:
	.size	update_ref_list, .Lfunc_end22-update_ref_list
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	update_ltref_list               # -- Begin function update_ltref_list
	.p2align	2
	.type	update_ltref_list,@function
update_ltref_list:                      # @update_ltref_list
# %bb.0:
	lui	a0, %hi(dpb)
	addi	a0, a0, %lo(dpb)
	lwu	a4, 28(a0)
	beqz	a4, .LBB23_15
# %bb.1:
	li	a2, 0
	li	a1, 0
	lui	a3, %hi(dpb)
	ld	t0, %lo(dpb)(a3)
	slli	a4, a4, 3
	li	a5, 3
	lui	a6, 2
	addiw	a6, a6, -1816
	addi	a7, a3, %lo(dpb)
	j	.LBB23_4
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	ld	t0, 16(a7)
	slli	t2, a1, 32
	srli	t2, t2, 29
	add	t0, t0, t2
	sd	t1, 0(t0)
	ld	t0, %lo(dpb)(a3)
	addiw	a1, a1, 1
.LBB23_3:                               #   in Loop: Header=BB23_4 Depth=1
	addi	a2, a2, 8
	beq	a4, a2, .LBB23_16
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	add	t1, t0, a2
	ld	t1, 0(t1)
	lw	t2, 0(t1)
	bne	t2, a5, .LBB23_7
# %bb.5:                                #   in Loop: Header=BB23_4 Depth=1
	ld	t3, 40(t1)
	add	t3, t3, a6
	lw	t4, 4(t3)
	beqz	t4, .LBB23_8
# %bb.6:                                #   in Loop: Header=BB23_4 Depth=1
	lw	t3, 0(t3)
	bnez	t3, .LBB23_2
	j	.LBB23_8
.LBB23_7:                               #   in Loop: Header=BB23_4 Depth=1
	andi	t3, t2, 1
	beqz	t3, .LBB23_11
.LBB23_8:                               #   in Loop: Header=BB23_4 Depth=1
	ld	t3, 48(t1)
	beqz	t3, .LBB23_11
# %bb.9:                                #   in Loop: Header=BB23_4 Depth=1
	add	t3, t3, a6
	lw	t4, 4(t3)
	beqz	t4, .LBB23_11
# %bb.10:                               #   in Loop: Header=BB23_4 Depth=1
	lw	t3, 0(t3)
	bnez	t3, .LBB23_2
.LBB23_11:                              #   in Loop: Header=BB23_4 Depth=1
	andi	t2, t2, 2
	beqz	t2, .LBB23_3
# %bb.12:                               #   in Loop: Header=BB23_4 Depth=1
	ld	t2, 56(t1)
	beqz	t2, .LBB23_3
# %bb.13:                               #   in Loop: Header=BB23_4 Depth=1
	add	t2, t2, a6
	lw	t3, 4(t2)
	beqz	t3, .LBB23_3
# %bb.14:                               #   in Loop: Header=BB23_4 Depth=1
	lw	t2, 0(t2)
	bnez	t2, .LBB23_2
	j	.LBB23_3
.LBB23_15:
	li	a1, 0
.LBB23_16:
	lw	a2, 24(a0)
	sw	a1, 36(a0)
	bgeu	a1, a2, .LBB23_19
# %bb.17:
	slli	a2, a2, 32
	srli	a2, a2, 32
	slli	a1, a1, 32
	srli	a1, a1, 29
	slli	a2, a2, 3
.LBB23_18:                              # =>This Inner Loop Header: Depth=1
	ld	a3, 16(a0)
	add	a3, a3, a1
	addi	a1, a1, 8
	sd	zero, 0(a3)
	bne	a1, a2, .LBB23_18
.LBB23_19:
	ret
.Lfunc_end23:
	.size	update_ltref_list, .Lfunc_end23-update_ltref_list
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	mm_update_max_long_term_frame_idx # -- Begin function mm_update_max_long_term_frame_idx
	.p2align	2
	.type	mm_update_max_long_term_frame_idx,@function
mm_update_max_long_term_frame_idx:      # @mm_update_max_long_term_frame_idx
# %bb.0:
	lui	a1, %hi(dpb)
	addi	a1, a1, %lo(dpb)
	lwu	a2, 36(a1)
	addi	a3, a0, -1
	sw	a3, 44(a1)
	beqz	a2, .LBB24_16
# %bb.1:
	ld	a1, 16(a1)
	slli	a2, a2, 3
	add	a2, a1, a2
	li	a3, 3
	lui	a4, 2
	addiw	a5, a4, -1816
	j	.LBB24_5
.LBB24_2:                               #   in Loop: Header=BB24_5 Depth=1
	ld	a7, 40(a6)
	add	a7, a7, a4
	sd	zero, -1816(a7)
.LBB24_3:                               #   in Loop: Header=BB24_5 Depth=1
	sw	zero, 4(a6)
	sw	zero, 8(a6)
.LBB24_4:                               #   in Loop: Header=BB24_5 Depth=1
	addi	a1, a1, 8
	beq	a1, a2, .LBB24_16
.LBB24_5:                               # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a1)
	lw	a7, 28(a6)
	blt	a7, a0, .LBB24_4
# %bb.6:                                #   in Loop: Header=BB24_5 Depth=1
	lwu	a7, 0(a6)
	andi	t0, a7, 1
	beqz	t0, .LBB24_9
# %bb.7:                                #   in Loop: Header=BB24_5 Depth=1
	ld	t0, 48(a6)
	beqz	t0, .LBB24_9
# %bb.8:                                #   in Loop: Header=BB24_5 Depth=1
	add	t0, t0, a5
	sd	zero, 0(t0)
.LBB24_9:                               #   in Loop: Header=BB24_5 Depth=1
	andi	t0, a7, 2
	beqz	t0, .LBB24_12
# %bb.10:                               #   in Loop: Header=BB24_5 Depth=1
	ld	t0, 56(a6)
	beqz	t0, .LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_5 Depth=1
	add	t0, t0, a5
	sd	zero, 0(t0)
.LBB24_12:                              #   in Loop: Header=BB24_5 Depth=1
	bne	a7, a3, .LBB24_3
# %bb.13:                               #   in Loop: Header=BB24_5 Depth=1
	ld	a7, 48(a6)
	beqz	a7, .LBB24_2
# %bb.14:                               #   in Loop: Header=BB24_5 Depth=1
	ld	t0, 56(a6)
	beqz	t0, .LBB24_2
# %bb.15:                               #   in Loop: Header=BB24_5 Depth=1
	add	a7, a7, a5
	add	t0, t0, a5
	sd	zero, 0(a7)
	sd	zero, 0(t0)
	j	.LBB24_2
.LBB24_16:
	ret
.Lfunc_end24:
	.size	mm_update_max_long_term_frame_idx, .Lfunc_end24-mm_update_max_long_term_frame_idx
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	store_picture_in_dpb            # -- Begin function store_picture_in_dpb
	.p2align	2
	.type	store_picture_in_dpb,@function
store_picture_in_dpb:                   # @store_picture_in_dpb
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	bnez	a0, .LBB25_1
	j	.LBB25_292
.LBB25_1:
	mv	s7, a0
	lui	a0, 2
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	addiw	s0, a0, -1832
	lui	a0, 22
	addiw	a0, a0, 204
	add	a0, a1, a0
	lw	a2, 0(a0)
	add	s0, s7, s0
	lui	a3, 8
	add	a3, a1, a3
	snez	a4, a2
	ld	a3, -1208(a3)
	lw	a5, 28(a1)
	sw	a4, 20(s0)
	sw	zero, 152(a0)
	lw	a3, 4(a3)
	addi	a5, a5, -2
	seqz	a4, a5
	sw	a4, 148(a0)
	lui	s11, %hi(dpb)
	addi	s11, s11, %lo(dpb)
	beqz	a3, .LBB25_23
# %bb.2:
	lw	a0, 8(a0)
	beqz	a0, .LBB25_208
# %bb.3:
	lw	a0, 28(s11)
	beqz	a0, .LBB25_16
# %bb.4:                                # %.preheader16
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(dpb)
	lui	s1, %hi(.L.str.7)
	addi	s1, s1, %lo(.L.str.7)
	addi	s6, s5, %lo(dpb)
	j	.LBB25_6
.LBB25_5:                               #   in Loop: Header=BB25_6 Depth=1
	ld	a0, %lo(dpb)(s5)
	lwu	a1, 28(s6)
	add	a0, a0, s3
	sd	s2, 0(a0)
	addi	s4, s4, 1
	addi	s3, s3, 8
	bgeu	s4, a1, .LBB25_16
.LBB25_6:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(dpb)(s5)
	add	a0, a0, s3
	ld	s2, 0(a0)
	beqz	s2, .LBB25_14
# %bb.7:                                #   in Loop: Header=BB25_6 Depth=1
	ld	a0, 40(s2)
	beqz	a0, .LBB25_9
# %bb.8:                                #   in Loop: Header=BB25_6 Depth=1
	call	free_storable_picture
	sd	zero, 40(s2)
.LBB25_9:                               #   in Loop: Header=BB25_6 Depth=1
	ld	a0, 48(s2)
	beqz	a0, .LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_6 Depth=1
	call	free_storable_picture
	sd	zero, 48(s2)
.LBB25_11:                              #   in Loop: Header=BB25_6 Depth=1
	ld	a0, 56(s2)
	beqz	a0, .LBB25_13
# %bb.12:                               #   in Loop: Header=BB25_6 Depth=1
	call	free_storable_picture
.LBB25_13:                              #   in Loop: Header=BB25_6 Depth=1
	mv	a0, s2
	call	free
.LBB25_14:                              #   in Loop: Header=BB25_6 Depth=1
	li	a0, 1
	li	a1, 64
	call	calloc
	mv	s2, a0
	bnez	a0, .LBB25_5
# %bb.15:                               #   in Loop: Header=BB25_6 Depth=1
	mv	a0, s1
	call	no_mem_exit
	j	.LBB25_5
.LBB25_16:
	lwu	a1, 32(s11)
	beqz	a1, .LBB25_19
# %bb.17:
	li	a0, 0
	slli	a1, a1, 3
.LBB25_18:                              # =>This Inner Loop Header: Depth=1
	ld	a2, 8(s11)
	add	a2, a2, a0
	addi	a0, a0, 8
	sd	zero, 0(a2)
	bne	a1, a0, .LBB25_18
.LBB25_19:
	lwu	a1, 36(s11)
	beqz	a1, .LBB25_22
# %bb.20:
	li	a0, 0
	slli	a1, a1, 3
.LBB25_21:                              # =>This Inner Loop Header: Depth=1
	ld	a2, 16(s11)
	add	a2, a2, a0
	addi	a0, a0, 8
	sd	zero, 0(a2)
	bne	a1, a0, .LBB25_21
.LBB25_22:
	sw	zero, 28(s11)
	j	.LBB25_209
.LBB25_23:
	beqz	a2, .LBB25_213
# %bb.24:
	lw	a2, 4(a0)
	beqz	a2, .LBB25_213
# %bb.25:
	ld	s2, 20(a0)
	beqz	s2, .LBB25_213
# %bb.26:
	li	s10, 6
	lui	s5, %hi(img)
	lui	s4, 22
	addiw	s9, s4, 156
	li	s1, 3
	lui	s3, 2
	addiw	s6, s3, -1828
	addiw	a0, s3, -1824
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	j	.LBB25_29
.LBB25_27:                              #   in Loop: Header=BB25_29 Depth=1
	call	update_ltref_list
.LBB25_28:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a0, %lo(img)(s5)
	ld	a1, 24(s2)
	add	a0, a0, s4
	sd	a1, 224(a0)
	mv	a0, s2
	call	free
	ld	a1, %lo(img)(s5)
	add	a0, a1, s9
	ld	s2, 68(a0)
	beqz	s2, .LBB25_224
.LBB25_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_154 Depth 2
                                        #     Child Loop BB25_81 Depth 2
                                        #     Child Loop BB25_87 Depth 2
                                        #     Child Loop BB25_38 Depth 2
                                        #     Child Loop BB25_57 Depth 2
                                        #     Child Loop BB25_113 Depth 2
                                        #     Child Loop BB25_127 Depth 2
                                        #     Child Loop BB25_141 Depth 2
                                        #     Child Loop BB25_168 Depth 2
                                        #     Child Loop BB25_68 Depth 2
	lw	a0, 0(s2)
	bltu	s10, a0, .LBB25_62
# %bb.30:                               #   in Loop: Header=BB25_29 Depth=1
	slli	a0, a0, 2
	lui	a2, %hi(.LJTI25_0)
	addi	a2, a2, %lo(.LJTI25_0)
	add	a0, a0, a2
	lw	a0, 0(a0)
	addiw	s8, s3, -1816
	jr	a0
.LBB25_31:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a0, 24(s2)
	beqz	a0, .LBB25_28
# %bb.32:                               #   in Loop: Header=BB25_29 Depth=1
	li	a1, 500
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	j	.LBB25_105
.LBB25_33:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a0, 16(s2)
	lwu	a2, 36(s11)
	addi	a1, a0, -1
	sw	a1, 44(s11)
	beqz	a2, .LBB25_27
# %bb.34:                               #   in Loop: Header=BB25_29 Depth=1
	ld	a1, 16(s11)
	slli	a2, a2, 3
	add	a2, a1, a2
	j	.LBB25_38
.LBB25_35:                              #   in Loop: Header=BB25_38 Depth=2
	ld	a4, 40(a3)
	add	a4, a4, s3
	sd	zero, -1816(a4)
.LBB25_36:                              #   in Loop: Header=BB25_38 Depth=2
	sw	zero, 4(a3)
	sw	zero, 8(a3)
.LBB25_37:                              #   in Loop: Header=BB25_38 Depth=2
	addi	a1, a1, 8
	beq	a1, a2, .LBB25_27
.LBB25_38:                              #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a3, 0(a1)
	lw	a4, 28(a3)
	blt	a4, a0, .LBB25_37
# %bb.39:                               #   in Loop: Header=BB25_38 Depth=2
	lwu	a4, 0(a3)
	andi	a5, a4, 1
	beqz	a5, .LBB25_42
# %bb.40:                               #   in Loop: Header=BB25_38 Depth=2
	ld	a5, 48(a3)
	beqz	a5, .LBB25_42
# %bb.41:                               #   in Loop: Header=BB25_38 Depth=2
	add	a5, a5, s8
	sd	zero, 0(a5)
.LBB25_42:                              #   in Loop: Header=BB25_38 Depth=2
	andi	a5, a4, 2
	beqz	a5, .LBB25_45
# %bb.43:                               #   in Loop: Header=BB25_38 Depth=2
	ld	a5, 56(a3)
	beqz	a5, .LBB25_45
# %bb.44:                               #   in Loop: Header=BB25_38 Depth=2
	add	a5, a5, s8
	sd	zero, 0(a5)
.LBB25_45:                              #   in Loop: Header=BB25_38 Depth=2
	bne	a4, s1, .LBB25_36
# %bb.46:                               #   in Loop: Header=BB25_38 Depth=2
	ld	a4, 48(a3)
	beqz	a4, .LBB25_35
# %bb.47:                               #   in Loop: Header=BB25_38 Depth=2
	ld	a5, 56(a3)
	beqz	a5, .LBB25_35
# %bb.48:                               #   in Loop: Header=BB25_38 Depth=2
	add	a4, a4, s8
	add	a5, a5, s8
	sd	zero, 0(a4)
	sd	zero, 0(a5)
	j	.LBB25_35
.LBB25_49:                              #   in Loop: Header=BB25_29 Depth=1
	lwu	a1, 36(s11)
	beqz	a1, .LBB25_27
# %bb.50:                               #   in Loop: Header=BB25_29 Depth=1
	lw	a2, 8(s2)
	lw	a3, 0(s7)
	ld	a4, 16(s11)
	j	.LBB25_168
.LBB25_51:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a0, 0(s7)
	lw	a1, 0(s0)
	beqz	a0, .LBB25_53
# %bb.52:                               #   in Loop: Header=BB25_29 Depth=1
	slli	a1, a1, 1
	addi	a1, a1, 1
.LBB25_53:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a2, 4(s2)
	lw	s9, 12(s2)
	not	a2, a2
	addw	s10, a1, a2
	beqz	a0, .LBB25_122
# %bb.54:                               #   in Loop: Header=BB25_29 Depth=1
	lwu	a0, 32(s11)
	beqz	a0, .LBB25_106
# %bb.55:                               #   in Loop: Header=BB25_29 Depth=1
	ld	a1, 8(s11)
	j	.LBB25_57
.LBB25_56:                              #   in Loop: Header=BB25_57 Depth=2
	addi	a0, a0, -1
	addi	a1, a1, 8
	beqz	a0, .LBB25_106
.LBB25_57:                              #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a2, 0(a1)
	lwu	a3, 4(a2)
	andi	a4, a3, 1
	beqz	a4, .LBB25_59
# %bb.58:                               #   in Loop: Header=BB25_57 Depth=2
	ld	a4, 48(a2)
	add	a4, a4, s3
	lw	a4, -1828(a4)
	beq	a4, s10, .LBB25_190
.LBB25_59:                              #   in Loop: Header=BB25_57 Depth=2
	andi	a3, a3, 2
	beqz	a3, .LBB25_56
# %bb.60:                               #   in Loop: Header=BB25_57 Depth=2
	ld	a2, 56(a2)
	add	a2, a2, s3
	lw	a2, -1828(a2)
	bne	a2, s10, .LBB25_56
# %bb.61:                               #   in Loop: Header=BB25_29 Depth=1
	li	a0, 2
	j	.LBB25_107
.LBB25_62:                              #   in Loop: Header=BB25_29 Depth=1
	li	a1, 500
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	j	.LBB25_105
.LBB25_63:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a1, 0(s7)
	lw	a0, 0(s0)
	beqz	a1, .LBB25_65
# %bb.64:                               #   in Loop: Header=BB25_29 Depth=1
	slli	a0, a0, 1
	addi	a0, a0, 1
.LBB25_65:                              #   in Loop: Header=BB25_29 Depth=1
	lwu	a2, 32(s11)
	beqz	a2, .LBB25_198
# %bb.66:                               #   in Loop: Header=BB25_29 Depth=1
	lw	a4, 4(s2)
	ld	a3, 8(s11)
	not	a4, a4
	addw	a4, a0, a4
	j	.LBB25_68
.LBB25_67:                              #   in Loop: Header=BB25_68 Depth=2
	addi	a2, a2, -1
	addi	a3, a3, 8
	beqz	a2, .LBB25_198
.LBB25_68:                              #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(a3)
	lw	a6, 4(a0)
	beqz	a1, .LBB25_75
# %bb.69:                               #   in Loop: Header=BB25_68 Depth=2
	andi	a5, a6, 1
	andi	a6, a6, 2
	beqz	a5, .LBB25_72
# %bb.70:                               #   in Loop: Header=BB25_68 Depth=2
	lbu	a7, 8(a0)
	andi	a7, a7, 1
	bnez	a7, .LBB25_72
# %bb.71:                               #   in Loop: Header=BB25_68 Depth=2
	ld	a7, 48(a0)
	add	a7, a7, s6
	lw	t0, 0(a7)
	beq	t0, a4, .LBB25_195
.LBB25_72:                              #   in Loop: Header=BB25_68 Depth=2
	beqz	a6, .LBB25_67
# %bb.73:                               #   in Loop: Header=BB25_68 Depth=2
	lbu	a6, 8(a0)
	andi	a6, a6, 2
	bnez	a6, .LBB25_67
# %bb.74:                               #   in Loop: Header=BB25_68 Depth=2
	ld	a6, 56(a0)
	add	a6, a6, s6
	lw	a7, 0(a6)
	bne	a7, a4, .LBB25_67
	j	.LBB25_197
.LBB25_75:                              #   in Loop: Header=BB25_68 Depth=2
	bne	a6, s1, .LBB25_67
# %bb.76:                               #   in Loop: Header=BB25_68 Depth=2
	lw	a5, 8(a0)
	bnez	a5, .LBB25_67
# %bb.77:                               #   in Loop: Header=BB25_68 Depth=2
	ld	a5, 40(a0)
	add	a5, a5, s3
	lw	a5, -1828(a5)
	bne	a5, a4, .LBB25_67
# %bb.78:                               #   in Loop: Header=BB25_29 Depth=1
	call	unmark_for_reference
	call	update_ref_list
	j	.LBB25_28
.LBB25_79:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a0, 32(s11)
	beqz	a0, .LBB25_82
# %bb.80:                               # %.preheader
                                        #   in Loop: Header=BB25_29 Depth=1
	li	s4, 0
	li	s9, 0
.LBB25_81:                              #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 8(s11)
	add	a0, a0, s4
	ld	a0, 0(a0)
	call	unmark_for_reference
	lwu	a0, 32(s11)
	addi	s9, s9, 1
	addi	s4, s4, 8
	bltu	s9, a0, .LBB25_81
.LBB25_82:                              #   in Loop: Header=BB25_29 Depth=1
	call	update_ref_list
	lwu	a1, 36(s11)
	li	a0, -1
	sw	a0, 44(s11)
	lui	s4, 22
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	beqz	a1, .LBB25_98
# %bb.83:                               #   in Loop: Header=BB25_29 Depth=1
	ld	a0, 16(s11)
	slli	a1, a1, 3
	add	a1, a0, a1
	j	.LBB25_87
.LBB25_84:                              #   in Loop: Header=BB25_87 Depth=2
	ld	a3, 40(a2)
	add	a3, a3, s3
	sd	zero, -1816(a3)
.LBB25_85:                              #   in Loop: Header=BB25_87 Depth=2
	sw	zero, 4(a2)
	sw	zero, 8(a2)
.LBB25_86:                              #   in Loop: Header=BB25_87 Depth=2
	addi	a0, a0, 8
	beq	a0, a1, .LBB25_98
.LBB25_87:                              #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a2, 0(a0)
	lw	a3, 28(a2)
	bltz	a3, .LBB25_86
# %bb.88:                               #   in Loop: Header=BB25_87 Depth=2
	lwu	a3, 0(a2)
	andi	a4, a3, 1
	beqz	a4, .LBB25_91
# %bb.89:                               #   in Loop: Header=BB25_87 Depth=2
	ld	a4, 48(a2)
	beqz	a4, .LBB25_91
# %bb.90:                               #   in Loop: Header=BB25_87 Depth=2
	add	a4, a4, s8
	sd	zero, 0(a4)
.LBB25_91:                              #   in Loop: Header=BB25_87 Depth=2
	andi	a4, a3, 2
	beqz	a4, .LBB25_94
# %bb.92:                               #   in Loop: Header=BB25_87 Depth=2
	ld	a4, 56(a2)
	beqz	a4, .LBB25_94
# %bb.93:                               #   in Loop: Header=BB25_87 Depth=2
	add	a4, a4, s8
	sd	zero, 0(a4)
.LBB25_94:                              #   in Loop: Header=BB25_87 Depth=2
	bne	a3, s1, .LBB25_85
# %bb.95:                               #   in Loop: Header=BB25_87 Depth=2
	ld	a3, 48(a2)
	beqz	a3, .LBB25_84
# %bb.96:                               #   in Loop: Header=BB25_87 Depth=2
	ld	a4, 56(a2)
	beqz	a4, .LBB25_84
# %bb.97:                               #   in Loop: Header=BB25_87 Depth=2
	add	a3, a3, s8
	add	a4, a4, s8
	sd	zero, 0(a3)
	sd	zero, 0(a4)
	j	.LBB25_84
.LBB25_98:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a0, %lo(img)(s5)
	add	a0, a0, s4
	li	a1, 1
	sw	a1, 356(a0)
	j	.LBB25_28
.LBB25_99:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a0, 0(s7)
	lw	s9, 12(s2)
	beqz	a0, .LBB25_149
# %bb.100:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a3, 4(s0)
	li	a2, 1
	mv	a1, s9
	li	a4, 0
	call	unmark_long_term_field_for_reference_by_frame_idx
	lw	a0, 36(s11)
	ld	a1, %lo(img)(s5)
.LBB25_101:                             #   in Loop: Header=BB25_29 Depth=1
	lw	a1, 32(a1)
	lw	a2, 32(s11)
	li	a3, 1
	sw	a3, 16(s0)
	sw	s9, 12(s0)
	bgtz	a1, .LBB25_103
# %bb.102:                              #   in Loop: Header=BB25_29 Depth=1
	li	a1, 1
.LBB25_103:                             #   in Loop: Header=BB25_29 Depth=1
	addw	a0, a2, a0
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	bge	a1, a0, .LBB25_28
# %bb.104:                              #   in Loop: Header=BB25_29 Depth=1
	li	a1, 500
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
.LBB25_105:                             #   in Loop: Header=BB25_29 Depth=1
	call	error
	j	.LBB25_28
.LBB25_106:                             #   in Loop: Header=BB25_29 Depth=1
	li	a1, 200
	lui	a0, %hi(.L.str.31)
	addi	a0, a0, %lo(.L.str.31)
	call	error
	li	a0, 0
.LBB25_107:                             #   in Loop: Header=BB25_29 Depth=1
	mv	a1, s9
	li	a2, 0
	li	a3, 0
	mv	a4, s10
	call	unmark_long_term_field_for_reference_by_frame_idx
	lw	s8, 0(s7)
	li	a0, 1
	beq	s8, a0, .LBB25_110
# %bb.108:                              #   in Loop: Header=BB25_29 Depth=1
	beqz	s8, .LBB25_138
# %bb.109:                              #   in Loop: Header=BB25_29 Depth=1
	li	s8, 0
.LBB25_110:                             #   in Loop: Header=BB25_29 Depth=1
	lwu	a2, 32(s11)
	beqz	a2, .LBB25_188
# %bb.111:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a1, 8(s11)
	li	s4, 0
	slli	a2, a2, 3
	j	.LBB25_113
.LBB25_112:                             #   in Loop: Header=BB25_113 Depth=2
	addi	s4, s4, 8
	beq	a2, s4, .LBB25_188
.LBB25_113:                             #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, a1, s4
	ld	a0, 0(a0)
	lwu	a4, 4(a0)
	andi	a3, a4, 1
	beqz	a3, .LBB25_116
# %bb.114:                              #   in Loop: Header=BB25_113 Depth=2
	ld	a3, 48(a0)
	add	a5, a3, s6
	lw	a6, 12(a5)
	bnez	a6, .LBB25_116
# %bb.115:                              #   in Loop: Header=BB25_113 Depth=2
	lw	a5, 0(a5)
	beq	a5, s10, .LBB25_199
.LBB25_116:                             #   in Loop: Header=BB25_113 Depth=2
	andi	a4, a4, 2
	beqz	a4, .LBB25_112
# %bb.117:                              #   in Loop: Header=BB25_113 Depth=2
	ld	a3, 56(a0)
	add	a4, a3, s6
	lw	a5, 12(a4)
	bnez	a5, .LBB25_112
# %bb.118:                              #   in Loop: Header=BB25_113 Depth=2
	lw	a4, 0(a4)
	bne	a4, s10, .LBB25_112
# %bb.119:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a1, 8(a0)
	beqz	a1, .LBB25_204
# %bb.120:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a2, 28(a0)
	li	s10, 6
	beq	a2, s9, .LBB25_205
# %bb.121:                              #   in Loop: Header=BB25_29 Depth=1
	lui	a0, %hi(.Lstr.43)
	addi	a0, a0, %lo(.Lstr.43)
	call	puts
	ld	a0, 8(s11)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a3, 56(a0)
	lw	a1, 8(a0)
	j	.LBB25_205
.LBB25_122:                             #   in Loop: Header=BB25_29 Depth=1
	lwu	a1, 36(s11)
	beqz	a1, .LBB25_138
# %bb.123:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a0, 16(s11)
	slli	a1, a1, 3
	add	a1, a0, a1
	j	.LBB25_127
.LBB25_124:                             #   in Loop: Header=BB25_127 Depth=2
	ld	a3, 40(a2)
	add	a3, a3, s3
	sd	zero, -1816(a3)
.LBB25_125:                             #   in Loop: Header=BB25_127 Depth=2
	sw	zero, 4(a2)
	sw	zero, 8(a2)
.LBB25_126:                             #   in Loop: Header=BB25_127 Depth=2
	addi	a0, a0, 8
	beq	a0, a1, .LBB25_138
.LBB25_127:                             #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a2, 0(a0)
	lw	a3, 28(a2)
	bne	a3, s9, .LBB25_126
# %bb.128:                              #   in Loop: Header=BB25_127 Depth=2
	lwu	a3, 0(a2)
	andi	a4, a3, 1
	beqz	a4, .LBB25_131
# %bb.129:                              #   in Loop: Header=BB25_127 Depth=2
	ld	a4, 48(a2)
	beqz	a4, .LBB25_131
# %bb.130:                              #   in Loop: Header=BB25_127 Depth=2
	add	a4, a4, s8
	sd	zero, 0(a4)
.LBB25_131:                             #   in Loop: Header=BB25_127 Depth=2
	andi	a4, a3, 2
	beqz	a4, .LBB25_134
# %bb.132:                              #   in Loop: Header=BB25_127 Depth=2
	ld	a4, 56(a2)
	beqz	a4, .LBB25_134
# %bb.133:                              #   in Loop: Header=BB25_127 Depth=2
	add	a4, a4, s8
	sd	zero, 0(a4)
.LBB25_134:                             #   in Loop: Header=BB25_127 Depth=2
	bne	a3, s1, .LBB25_125
# %bb.135:                              #   in Loop: Header=BB25_127 Depth=2
	ld	a3, 48(a2)
	beqz	a3, .LBB25_124
# %bb.136:                              #   in Loop: Header=BB25_127 Depth=2
	ld	a4, 56(a2)
	beqz	a4, .LBB25_124
# %bb.137:                              #   in Loop: Header=BB25_127 Depth=2
	add	a3, a3, s8
	add	a4, a4, s8
	sd	zero, 0(a3)
	sd	zero, 0(a4)
	j	.LBB25_124
.LBB25_138:                             #   in Loop: Header=BB25_29 Depth=1
	lwu	a1, 32(s11)
	beqz	a1, .LBB25_148
# %bb.139:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a2, 8(s11)
	j	.LBB25_141
.LBB25_140:                             #   in Loop: Header=BB25_141 Depth=2
	addi	a1, a1, -1
	addi	a2, a2, 8
	beqz	a1, .LBB25_148
.LBB25_141:                             #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(a2)
	lw	a3, 4(a0)
	bne	a3, s1, .LBB25_140
# %bb.142:                              #   in Loop: Header=BB25_141 Depth=2
	ld	a3, 40(a0)
	add	a3, a3, s6
	lw	a4, 12(a3)
	bnez	a4, .LBB25_140
# %bb.143:                              #   in Loop: Header=BB25_141 Depth=2
	lw	a4, 0(a3)
	bne	a4, s10, .LBB25_140
# %bb.144:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a1, 48(a0)
	sw	s9, 8(a3)
	sw	s9, 28(a0)
	sw	s9, 4(a3)
	li	a2, 1
	sw	a2, 12(a3)
	li	s10, 6
	beqz	a1, .LBB25_147
# %bb.145:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a2, 56(a0)
	beqz	a2, .LBB25_147
# %bb.146:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, a3
	add	a2, a2, a3
	sw	s9, 4(a2)
	sw	s9, 4(a1)
	sw	s9, 0(a1)
	sw	s9, 0(a2)
	li	a3, 1
	sw	a3, 8(a2)
	sw	a3, 8(a1)
.LBB25_147:                             #   in Loop: Header=BB25_29 Depth=1
	sw	s1, 8(a0)
	j	.LBB25_189
.LBB25_148:                             #   in Loop: Header=BB25_29 Depth=1
	lui	a0, %hi(.Lstr.44)
	addi	a0, a0, %lo(.Lstr.44)
	call	puts
	li	s10, 6
	j	.LBB25_189
.LBB25_149:                             #   in Loop: Header=BB25_29 Depth=1
	lwu	a0, 36(s11)
	beqz	a0, .LBB25_101
# %bb.150:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a2, 16(s11)
	slli	a3, a0, 3
	add	a3, a2, a3
	j	.LBB25_154
.LBB25_151:                             #   in Loop: Header=BB25_154 Depth=2
	ld	a5, 40(a4)
	add	a5, a5, s3
	sd	zero, -1816(a5)
.LBB25_152:                             #   in Loop: Header=BB25_154 Depth=2
	sw	zero, 4(a4)
	sw	zero, 8(a4)
.LBB25_153:                             #   in Loop: Header=BB25_154 Depth=2
	addi	a2, a2, 8
	beq	a2, a3, .LBB25_101
.LBB25_154:                             #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a4, 0(a2)
	lw	a5, 28(a4)
	bne	a5, s9, .LBB25_153
# %bb.155:                              #   in Loop: Header=BB25_154 Depth=2
	lwu	a5, 0(a4)
	andi	a6, a5, 1
	beqz	a6, .LBB25_158
# %bb.156:                              #   in Loop: Header=BB25_154 Depth=2
	ld	a6, 48(a4)
	beqz	a6, .LBB25_158
# %bb.157:                              #   in Loop: Header=BB25_154 Depth=2
	add	a6, a6, s8
	sd	zero, 0(a6)
.LBB25_158:                             #   in Loop: Header=BB25_154 Depth=2
	andi	a6, a5, 2
	beqz	a6, .LBB25_161
# %bb.159:                              #   in Loop: Header=BB25_154 Depth=2
	ld	a6, 56(a4)
	beqz	a6, .LBB25_161
# %bb.160:                              #   in Loop: Header=BB25_154 Depth=2
	add	a6, a6, s8
	sd	zero, 0(a6)
.LBB25_161:                             #   in Loop: Header=BB25_154 Depth=2
	bne	a5, s1, .LBB25_152
# %bb.162:                              #   in Loop: Header=BB25_154 Depth=2
	ld	a5, 48(a4)
	beqz	a5, .LBB25_151
# %bb.163:                              #   in Loop: Header=BB25_154 Depth=2
	ld	a6, 56(a4)
	beqz	a6, .LBB25_151
# %bb.164:                              #   in Loop: Header=BB25_154 Depth=2
	add	a5, a5, s8
	add	a6, a6, s8
	sd	zero, 0(a5)
	sd	zero, 0(a6)
	j	.LBB25_151
.LBB25_165:                             #   in Loop: Header=BB25_168 Depth=2
	sd	zero, 8(a5)
.LBB25_166:                             #   in Loop: Header=BB25_168 Depth=2
	sw	zero, 4(a0)
	sw	zero, 8(a0)
.LBB25_167:                             #   in Loop: Header=BB25_168 Depth=2
	addi	a1, a1, -1
	addi	a4, a4, 8
	beqz	a1, .LBB25_27
.LBB25_168:                             #   Parent Loop BB25_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(a4)
	lw	a6, 4(a0)
	beqz	a3, .LBB25_175
# %bb.169:                              #   in Loop: Header=BB25_168 Depth=2
	andi	a5, a6, 1
	andi	a6, a6, 2
	beqz	a5, .LBB25_172
# %bb.170:                              #   in Loop: Header=BB25_168 Depth=2
	lwu	a7, 8(a0)
	andi	t0, a7, 1
	beqz	t0, .LBB25_172
# %bb.171:                              #   in Loop: Header=BB25_168 Depth=2
	ld	t0, 48(a0)
	ld	t1, 16(sp)                      # 8-byte Folded Reload
	add	t0, t0, t1
	lw	t1, 0(t0)
	beq	t1, a2, .LBB25_191
.LBB25_172:                             #   in Loop: Header=BB25_168 Depth=2
	beqz	a6, .LBB25_167
# %bb.173:                              #   in Loop: Header=BB25_168 Depth=2
	lwu	a6, 8(a0)
	andi	a7, a6, 2
	beqz	a7, .LBB25_167
# %bb.174:                              #   in Loop: Header=BB25_168 Depth=2
	ld	a7, 56(a0)
	ld	t0, 16(sp)                      # 8-byte Folded Reload
	add	a7, a7, t0
	lw	t0, 0(a7)
	bne	t0, a2, .LBB25_167
	j	.LBB25_192
.LBB25_175:                             #   in Loop: Header=BB25_168 Depth=2
	bne	a6, s1, .LBB25_167
# %bb.176:                              #   in Loop: Header=BB25_168 Depth=2
	lw	a5, 8(a0)
	bne	a5, s1, .LBB25_167
# %bb.177:                              #   in Loop: Header=BB25_168 Depth=2
	ld	a5, 40(a0)
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	add	a5, a5, a6
	lw	a6, 0(a5)
	bne	a6, a2, .LBB25_167
# %bb.178:                              #   in Loop: Header=BB25_168 Depth=2
	lwu	a6, 0(a0)
	andi	a7, a6, 1
	beqz	a7, .LBB25_181
# %bb.179:                              #   in Loop: Header=BB25_168 Depth=2
	ld	a7, 48(a0)
	beqz	a7, .LBB25_181
# %bb.180:                              #   in Loop: Header=BB25_168 Depth=2
	add	a7, a7, s8
	sd	zero, 0(a7)
.LBB25_181:                             #   in Loop: Header=BB25_168 Depth=2
	andi	a7, a6, 2
	beqz	a7, .LBB25_184
# %bb.182:                              #   in Loop: Header=BB25_168 Depth=2
	ld	a7, 56(a0)
	beqz	a7, .LBB25_184
# %bb.183:                              #   in Loop: Header=BB25_168 Depth=2
	add	a7, a7, s8
	sd	zero, 0(a7)
.LBB25_184:                             #   in Loop: Header=BB25_168 Depth=2
	bne	a6, s1, .LBB25_166
# %bb.185:                              #   in Loop: Header=BB25_168 Depth=2
	ld	a6, 48(a0)
	beqz	a6, .LBB25_165
# %bb.186:                              #   in Loop: Header=BB25_168 Depth=2
	ld	a7, 56(a0)
	beqz	a7, .LBB25_165
# %bb.187:                              #   in Loop: Header=BB25_168 Depth=2
	add	a6, a6, s8
	add	a7, a7, s8
	sd	zero, 0(a6)
	sd	zero, 0(a7)
	j	.LBB25_165
.LBB25_188:                             #   in Loop: Header=BB25_29 Depth=1
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	s10, 6
	lui	s4, 22
.LBB25_189:                             #   in Loop: Header=BB25_29 Depth=1
	call	update_ref_list
	call	update_ltref_list
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	j	.LBB25_28
.LBB25_190:                             #   in Loop: Header=BB25_29 Depth=1
	li	a0, 1
	j	.LBB25_107
.LBB25_191:                             #   in Loop: Header=BB25_29 Depth=1
	sd	zero, 8(t0)
	lw	a1, 0(a0)
	sw	a6, 4(a0)
	andi	a2, a7, 2
	j	.LBB25_193
.LBB25_192:                             #   in Loop: Header=BB25_29 Depth=1
	sd	zero, 8(a7)
	lw	a1, 0(a0)
	sw	a5, 4(a0)
	andi	a2, a6, 1
.LBB25_193:                             #   in Loop: Header=BB25_29 Depth=1
	sw	a2, 8(a0)
	bne	a1, s1, .LBB25_27
# %bb.194:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a0, 40(a0)
	add	a0, a0, s3
	sd	zero, -1816(a0)
	j	.LBB25_27
.LBB25_195:                             #   in Loop: Header=BB25_29 Depth=1
	lw	a1, 0(a0)
	sw	zero, 16(a7)
	sw	a6, 4(a0)
	bne	a1, s1, .LBB25_198
.LBB25_196:                             #   in Loop: Header=BB25_29 Depth=1
	ld	a0, 40(a0)
	add	a0, a0, s3
	sw	zero, -1812(a0)
	call	update_ref_list
	j	.LBB25_28
.LBB25_197:                             #   in Loop: Header=BB25_29 Depth=1
	lw	a1, 0(a0)
	sw	zero, 16(a6)
	sw	a5, 4(a0)
	beq	a1, s1, .LBB25_196
.LBB25_198:                             #   in Loop: Header=BB25_29 Depth=1
	call	update_ref_list
	j	.LBB25_28
.LBB25_199:                             #   in Loop: Header=BB25_29 Depth=1
	lw	a1, 8(a0)
	beqz	a1, .LBB25_202
# %bb.200:                              #   in Loop: Header=BB25_29 Depth=1
	lw	a2, 28(a0)
	li	s10, 6
	beq	a2, s9, .LBB25_203
# %bb.201:                              #   in Loop: Header=BB25_29 Depth=1
	lui	a0, %hi(.Lstr.43)
	addi	a0, a0, %lo(.Lstr.43)
	call	puts
	ld	a0, 8(s11)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a3, 48(a0)
	lw	a1, 8(a0)
	j	.LBB25_203
.LBB25_202:                             #   in Loop: Header=BB25_29 Depth=1
	li	s10, 6
.LBB25_203:                             #   in Loop: Header=BB25_29 Depth=1
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a3, a3, a2
	sw	s9, 4(a3)
	sw	s9, 28(a0)
	slli	a2, s9, 1
	or	a2, s8, a2
	sw	a2, 0(a3)
	li	a2, 1
	sw	a2, 8(a3)
	ori	a1, a1, 1
	j	.LBB25_206
.LBB25_204:                             #   in Loop: Header=BB25_29 Depth=1
	li	s10, 6
.LBB25_205:                             #   in Loop: Header=BB25_29 Depth=1
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a3, a3, a2
	sw	s9, 4(a3)
	sw	s9, 28(a0)
	slli	a2, s9, 1
	or	a2, s8, a2
	sw	a2, 0(a3)
	li	a2, 1
	sw	a2, 8(a3)
	ori	a1, a1, 2
.LBB25_206:                             #   in Loop: Header=BB25_29 Depth=1
	sw	a1, 8(a0)
	lui	s4, 22
	bne	a1, s1, .LBB25_189
# %bb.207:                              #   in Loop: Header=BB25_29 Depth=1
	ld	a0, 40(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	li	a1, 1
	sw	a1, 8(a0)
	sw	s9, 0(a0)
	sw	s9, 4(a0)
	j	.LBB25_189
.LBB25_208:
	call	flush_dpb
.LBB25_209:
	sd	zero, 56(s11)
	call	update_ref_list
	call	update_ltref_list
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 216(a0)
	lui	a1, 524288
	sw	a1, 40(s11)
	beqz	a0, .LBB25_211
# %bb.210:
	li	a0, 0
	sw	zero, 12(s0)
	li	a1, 1
	j	.LBB25_212
.LBB25_211:
	li	a1, 0
	li	a0, -1
.LBB25_212:
	sw	a0, 44(s11)
	sw	a1, 16(s0)
.LBB25_213:
	lw	a0, 0(s7)
	li	a1, 1
	bne	a0, a1, .LBB25_217
# %bb.214:
	ld	a0, 56(s11)
	beqz	a0, .LBB25_230
# %bb.215:
	lw	a1, 20(a0)
	lw	a2, 4(s0)
	bne	a1, a2, .LBB25_230
# %bb.216:
	lw	a1, 0(a0)
	li	a2, 2
	beq	a1, a2, .LBB25_221
	j	.LBB25_230
.LBB25_217:
	li	a1, 2
	bne	a0, a1, .LBB25_230
# %bb.218:
	ld	a0, 56(s11)
	beqz	a0, .LBB25_230
# %bb.219:
	lw	a1, 20(a0)
	lw	a2, 4(s0)
	bne	a1, a2, .LBB25_230
# %bb.220:
	lw	a1, 0(a0)
	li	a2, 1
	bne	a1, a2, .LBB25_230
.LBB25_221:
	lw	a2, 20(s0)
	lw	a1, 12(a0)
	beqz	a2, .LBB25_229
# %bb.222:
	beqz	a1, .LBB25_230
.LBB25_223:
	mv	a1, s7
	call	insert_picture_in_dpb
	call	update_ref_list
	call	update_ltref_list
	sd	zero, 56(s11)
	j	.LBB25_285
.LBB25_224:
	lw	a1, 200(a0)
	beqz	a1, .LBB25_213
# %bb.225:
	lw	a1, 0(s7)
	sd	zero, 0(s0)
	beqz	a1, .LBB25_287
# %bb.226:
	li	a2, 1
	beq	a1, a2, .LBB25_286
# %bb.227:
	li	a2, 2
	bne	a1, a2, .LBB25_290
# %bb.228:
	li	a1, 0
	sw	zero, 4(a0)
	sw	zero, 12(s7)
	sw	zero, 4(s7)
	j	.LBB25_291
.LBB25_229:
	beqz	a1, .LBB25_223
.LBB25_230:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a1, a0, a1
	ld	a1, -1208(a1)
	lw	a1, 4(a1)
	beqz	a1, .LBB25_268
.LBB25_231:
	lwu	a1, 28(s11)
	lwu	a2, 24(s11)
	beqz	a1, .LBB25_246
# %bb.232:
	bne	a1, a2, .LBB25_246
# %bb.233:
	lui	a0, %hi(dpb)
	ld	a2, %lo(dpb)(a0)
	li	a0, 0
	li	a3, 3
	lui	a4, 2
	mv	a5, a1
	j	.LBB25_236
.LBB25_234:                             #   in Loop: Header=BB25_236 Depth=1
	ld	t0, 40(a6)
	add	t0, t0, a4
	lw	t0, -1812(t0)
	beqz	t0, .LBB25_240
.LBB25_235:                             #   in Loop: Header=BB25_236 Depth=1
	addi	a5, a5, -1
	addiw	a0, a0, 1
	addi	a2, a2, 8
	beqz	a5, .LBB25_247
.LBB25_236:                             # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a2)
	lw	a7, 32(a6)
	beqz	a7, .LBB25_235
# %bb.237:                              #   in Loop: Header=BB25_236 Depth=1
	lw	a7, 4(a6)
	bnez	a7, .LBB25_235
# %bb.238:                              #   in Loop: Header=BB25_236 Depth=1
	lw	a7, 0(a6)
	beq	a7, a3, .LBB25_234
# %bb.239:                              #   in Loop: Header=BB25_236 Depth=1
	andi	t0, a7, 1
	beqz	t0, .LBB25_242
.LBB25_240:                             #   in Loop: Header=BB25_236 Depth=1
	ld	t0, 48(a6)
	beqz	t0, .LBB25_242
# %bb.241:                              #   in Loop: Header=BB25_236 Depth=1
	add	t0, t0, a4
	lw	t0, -1812(t0)
	bnez	t0, .LBB25_235
.LBB25_242:                             #   in Loop: Header=BB25_236 Depth=1
	andi	a7, a7, 2
	beqz	a7, .LBB25_245
# %bb.243:                              #   in Loop: Header=BB25_236 Depth=1
	ld	a6, 56(a6)
	beqz	a6, .LBB25_245
# %bb.244:                              #   in Loop: Header=BB25_236 Depth=1
	add	a6, a6, a4
	lw	a6, -1812(a6)
	bnez	a6, .LBB25_235
.LBB25_245:
	call	remove_frame_from_dpb
	lwu	a1, 28(s11)
	lwu	a2, 24(s11)
.LBB25_246:
	mv	a0, a1
	mv	a1, a2
	bne	a0, a2, .LBB25_261
.LBB25_247:
	lui	s1, %hi(.L.str.37)
	addi	s1, s1, %lo(.L.str.37)
	lui	s2, %hi(dpb)
	lui	s3, 524288
	addiw	s3, s3, -1
	li	s4, -1
	mv	a0, a1
	j	.LBB25_249
.LBB25_248:                             #   in Loop: Header=BB25_249 Depth=1
	call	output_one_frame_from_dpb
	lwu	a0, 28(s11)
	lwu	a1, 24(s11)
	bne	a0, a1, .LBB25_261
.LBB25_249:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_255 Depth 2
	lw	a1, 20(s0)
	bnez	a1, .LBB25_248
# %bb.250:                              #   in Loop: Header=BB25_249 Depth=1
	bnez	a0, .LBB25_252
# %bb.251:                              #   in Loop: Header=BB25_249 Depth=1
	li	a1, 150
	mv	a0, s1
	call	error
	lwu	a0, 28(s11)
	beqz	a0, .LBB25_260
.LBB25_252:                             #   in Loop: Header=BB25_249 Depth=1
	ld	a1, %lo(dpb)(s2)
	li	a2, 0
	slli	a0, a0, 3
	add	a0, a1, a0
	li	a4, -1
	mv	a3, s3
	j	.LBB25_255
.LBB25_253:                             #   in Loop: Header=BB25_255 Depth=2
	mv	a3, a5
	mv	a4, a6
.LBB25_254:                             #   in Loop: Header=BB25_255 Depth=2
	addi	a1, a1, 8
	addiw	a2, a2, 1
	beq	a1, a0, .LBB25_258
.LBB25_255:                             #   Parent Loop BB25_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a1)
	lw	a5, 36(a6)
	bge	a5, a3, .LBB25_254
# %bb.256:                              #   in Loop: Header=BB25_255 Depth=2
	lw	a7, 32(a6)
	mv	a6, a2
	beqz	a7, .LBB25_253
# %bb.257:                              #   in Loop: Header=BB25_255 Depth=2
	mv	a5, a3
	mv	a6, a4
	j	.LBB25_253
.LBB25_258:                             #   in Loop: Header=BB25_249 Depth=1
	beq	a4, s4, .LBB25_260
# %bb.259:                              #   in Loop: Header=BB25_249 Depth=1
	lw	a0, 4(s7)
	bge	a0, a3, .LBB25_248
.LBB25_260:
	lui	a0, %hi(p_dec)
	lw	a1, %lo(p_dec)(a0)
	mv	a0, s7
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	tail	direct_output
.LBB25_261:
	lw	a1, 20(s0)
	beqz	a1, .LBB25_279
# %bb.262:
	lw	a1, 16(s0)
	bnez	a1, .LBB25_279
# %bb.263:
	lwu	a1, 32(s11)
	beqz	a1, .LBB25_279
# %bb.264:
	ld	a0, 8(s11)
	li	s2, 0
	li	s3, 0
	lui	s1, %hi(.L.str.16)
	addi	s1, s1, %lo(.L.str.16)
	j	.LBB25_266
.LBB25_265:                             #   in Loop: Header=BB25_266 Depth=1
	addi	s3, s3, 1
	addi	s2, s2, 8
	bgeu	s3, a1, .LBB25_278
.LBB25_266:                             # =>This Inner Loop Header: Depth=1
	add	a2, a0, s2
	ld	a2, 0(a2)
	lw	a2, 20(a2)
	lw	a3, 0(s0)
	bne	a2, a3, .LBB25_265
# %bb.267:                              #   in Loop: Header=BB25_266 Depth=1
	li	a1, 500
	mv	a0, s1
	call	error
	ld	a0, 8(s11)
	lwu	a1, 32(s11)
	j	.LBB25_265
.LBB25_268:
	lw	a1, 20(s0)
	beqz	a1, .LBB25_231
# %bb.269:
	lui	a1, 22
	addiw	a1, a1, 208
	add	a0, a0, a1
	lw	a0, 0(a0)
	bnez	a0, .LBB25_231
# %bb.270:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1132(a0)
	lw	a1, 36(s11)
	lw	a2, 32(s11)
	subw	a0, a0, a1
	bne	a2, a0, .LBB25_277
# %bb.271:
	lwu	a1, 28(s11)
	beqz	a1, .LBB25_277
# %bb.272:
	lui	a0, %hi(dpb)
	ld	a2, %lo(dpb)(a0)
	j	.LBB25_274
.LBB25_273:                             #   in Loop: Header=BB25_274 Depth=1
	addi	a1, a1, -1
	addi	a2, a2, 8
	beqz	a1, .LBB25_277
.LBB25_274:                             # =>This Inner Loop Header: Depth=1
	ld	a0, 0(a2)
	lw	a3, 4(a0)
	beqz	a3, .LBB25_273
# %bb.275:                              #   in Loop: Header=BB25_274 Depth=1
	lw	a3, 8(a0)
	bnez	a3, .LBB25_273
# %bb.276:
	call	unmark_for_reference
	call	update_ref_list
.LBB25_277:
	sw	zero, 16(s0)
	j	.LBB25_231
.LBB25_278:
	lwu	a0, 28(s11)
.LBB25_279:
	lui	s0, %hi(dpb)
	ld	a1, %lo(dpb)(s0)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	addi	s1, s0, %lo(dpb)
	mv	a1, s7
	call	insert_picture_in_dpb
	lw	a1, 0(s7)
	lwu	a0, 28(s1)
	beqz	a1, .LBB25_281
# %bb.280:
	ld	a1, %lo(dpb)(s0)
	slli	a2, a0, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
.LBB25_281:
	sd	a1, 56(s11)
	addi	a0, a0, 1
	sw	a0, 28(s11)
	call	update_ref_list
	call	update_ltref_list
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a2, 36(s11)
	lw	a3, 32(s11)
	lw	a1, 32(a0)
	addw	a0, a3, a2
	bgtz	a1, .LBB25_283
# %bb.282:
	li	a1, 1
.LBB25_283:
	bge	a1, a0, .LBB25_285
# %bb.284:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 500
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	tail	error
.LBB25_285:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.LBB25_286:
	li	a1, 0
	sw	zero, 0(a0)
	sw	zero, 8(s7)
	sw	zero, 4(s7)
	j	.LBB25_291
.LBB25_287:
	lw	a2, 4(s7)
	lw	a1, 8(s7)
	lw	a3, 12(s7)
	subw	a1, a1, a2
	sw	a1, 8(s7)
	subw	a2, a3, a2
	sw	a2, 12(s7)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	blt	a1, a2, .LBB25_289
# %bb.288:
	mv	a1, a2
.LBB25_289:
	sw	a1, 4(s7)
	sw	a1, 8(a0)
	j	.LBB25_291
.LBB25_290:
	lw	a1, 4(s7)
.LBB25_291:
	sw	a1, 12(a0)
	call	flush_dpb
	j	.LBB25_213
.LBB25_292:
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.store_picture_in_dpb)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.store_picture_in_dpb)
	lui	a2, 1
	addiw	a2, a2, -1797
	call	__assert_fail
.Lfunc_end25:
	.size	store_picture_in_dpb, .Lfunc_end25-store_picture_in_dpb
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI25_0:
	.word	.LBB25_31
	.word	.LBB25_63
	.word	.LBB25_49
	.word	.LBB25_51
	.word	.LBB25_33
	.word	.LBB25_79
	.word	.LBB25_99
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function insert_picture_in_dpb
	.type	insert_picture_in_dpb,@function
insert_picture_in_dpb:                  # @insert_picture_in_dpb
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB26_34
# %bb.1:
	mv	s1, a1
	mv	s0, a0
	lui	a0, 2
	addiw	s2, a0, -1828
	add	s2, a1, s2
	lw	a0, 16(s2)
	beqz	a0, .LBB26_3
# %bb.2:
	mv	a0, s1
	call	UnifiedOneForthPix
.LBB26_3:
	lw	a0, 0(s1)
	li	a1, 2
	beq	a0, a1, .LBB26_21
# %bb.4:
	li	a1, 1
	beq	a0, a1, .LBB26_10
# %bb.5:
	bnez	a0, .LBB26_26
# %bb.6:
	lw	a1, 16(s2)
	sd	s1, 40(s0)
	li	a0, 3
	sw	a0, 0(s0)
	beqz	a1, .LBB26_9
# %bb.7:
	lw	a1, 12(s2)
	sw	a0, 4(s0)
	sw	a0, 12(s0)
	beqz	a1, .LBB26_9
# %bb.8:
	lw	a0, 8(s2)
	li	a1, 3
	sw	a1, 8(s0)
	sw	a0, 28(s0)
.LBB26_9:
	mv	a0, s0
	call	dpb_split_field
	j	.LBB26_26
.LBB26_10:
	lw	a0, 0(s0)
	lw	a1, 16(s2)
	sd	s1, 48(s0)
	ori	a0, a0, 1
	sw	a0, 0(s0)
	beqz	a1, .LBB26_13
# %bb.11:
	lw	a1, 4(s0)
	lw	a2, 12(s0)
	lw	a3, 12(s2)
	ori	a1, a1, 1
	sw	a1, 4(s0)
	ori	a1, a2, 1
	sw	a1, 12(s0)
	beqz	a3, .LBB26_13
# %bb.12:
	lw	a1, 8(s0)
	lw	a2, 8(s2)
	ori	a1, a1, 1
	sw	a1, 8(s0)
	sw	a2, 28(s0)
.LBB26_13:
	li	a1, 3
	beq	a0, a1, .LBB26_25
# %bb.14:
	lw	a1, 4(s1)
	lw	a5, 28(s2)
	li	a0, 4
	sw	a1, 36(s0)
	blt	a5, a0, .LBB26_26
# %bb.15:
	li	a1, 0
	lw	t0, 32(s2)
	addi	a2, s1, 24
	addi	a3, s1, 288
	li	a4, 1
	j	.LBB26_17
.LBB26_16:                              #   in Loop: Header=BB26_17 Depth=1
	addi	a1, a1, 1
	sraiw	a6, a5, 31
	srliw	a6, a6, 30
	add	a6, a5, a6
	sraiw	a6, a6, 2
	bge	a1, a6, .LBB26_26
.LBB26_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_19 Depth 2
	blt	t0, a0, .LBB26_16
# %bb.18:                               # %.preheader
                                        #   in Loop: Header=BB26_17 Depth=1
	li	a5, 0
	li	a6, 0
	slli	a7, a1, 3
.LBB26_19:                              #   Parent Loop BB26_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 116(s2)
	ld	t1, 0(t0)
	ld	t0, 8(t0)
	add	t1, t1, a5
	ld	t1, 0(t1)
	add	t0, t0, a5
	ld	t0, 0(t0)
	ld	t2, 132(s2)
	add	t1, t1, a1
	lbu	t1, 0(t1)
	ld	t3, 0(t2)
	add	t0, t0, a1
	slli	t1, t1, 3
	add	t1, a2, t1
	add	t3, t3, a5
	ld	t3, 0(t3)
	ld	t1, 0(t1)
	lbu	t0, 0(t0)
	add	t3, t3, a7
	sd	t1, 0(t3)
	slli	t0, t0, 3
	ld	t1, 8(t2)
	add	t0, a3, t0
	ld	t2, 156(s2)
	ld	t0, 0(t0)
	add	t1, t1, a5
	ld	t1, 0(t1)
	add	t2, t2, a5
	ld	t2, 0(t2)
	add	t1, t1, a7
	sd	t0, 0(t1)
	add	t2, t2, a1
	sb	a4, 0(t2)
	lw	t0, 32(s2)
	addi	a6, a6, 1
	slli	t1, t0, 1
	srli	t1, t1, 62
	add	t1, t0, t1
	sraiw	t1, t1, 2
	addi	a5, a5, 8
	blt	a6, t1, .LBB26_19
# %bb.20:                               #   in Loop: Header=BB26_17 Depth=1
	lw	a5, 28(s2)
	j	.LBB26_16
.LBB26_21:
	lw	a0, 0(s0)
	lw	a1, 16(s2)
	sd	s1, 56(s0)
	ori	a0, a0, 2
	sw	a0, 0(s0)
	beqz	a1, .LBB26_24
# %bb.22:
	lw	a1, 4(s0)
	lw	a2, 12(s0)
	lw	a3, 12(s2)
	ori	a1, a1, 2
	sw	a1, 4(s0)
	ori	a1, a2, 2
	sw	a1, 12(s0)
	beqz	a3, .LBB26_24
# %bb.23:
	lw	a1, 8(s0)
	lw	a2, 8(s2)
	ori	a1, a1, 2
	sw	a1, 8(s0)
	sw	a2, 28(s0)
.LBB26_24:
	li	a1, 3
	bne	a0, a1, .LBB26_27
.LBB26_25:
	mv	a0, s0
	call	dpb_combine_field
.LBB26_26:
	lw	a0, 0(s2)
	lw	a1, 20(s2)
	sw	a0, 20(s0)
	sw	a1, 32(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB26_27:
	lw	a1, 4(s1)
	lw	a5, 28(s2)
	li	a0, 4
	sw	a1, 36(s0)
	blt	a5, a0, .LBB26_26
# %bb.28:
	li	a1, 0
	lw	t0, 32(s2)
	addi	a2, s1, 24
	addi	a3, s1, 288
	li	a4, 1
	j	.LBB26_30
.LBB26_29:                              #   in Loop: Header=BB26_30 Depth=1
	addi	a1, a1, 1
	sraiw	a6, a5, 31
	srliw	a6, a6, 30
	add	a6, a5, a6
	sraiw	a6, a6, 2
	bge	a1, a6, .LBB26_26
.LBB26_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_32 Depth 2
	blt	t0, a0, .LBB26_29
# %bb.31:                               # %.preheader1
                                        #   in Loop: Header=BB26_30 Depth=1
	li	a5, 0
	li	a6, 0
	slli	a7, a1, 3
.LBB26_32:                              #   Parent Loop BB26_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 116(s2)
	ld	t1, 0(t0)
	ld	t0, 8(t0)
	add	t1, t1, a5
	ld	t1, 0(t1)
	add	t0, t0, a5
	ld	t0, 0(t0)
	ld	t2, 132(s2)
	add	t1, t1, a1
	lbu	t1, 0(t1)
	ld	t3, 0(t2)
	add	t0, t0, a1
	slli	t1, t1, 3
	add	t1, a2, t1
	add	t3, t3, a5
	ld	t3, 0(t3)
	ld	t1, 0(t1)
	lbu	t0, 0(t0)
	add	t3, t3, a7
	sd	t1, 0(t3)
	slli	t0, t0, 3
	ld	t1, 8(t2)
	add	t0, a3, t0
	ld	t2, 156(s2)
	ld	t0, 0(t0)
	add	t1, t1, a5
	ld	t1, 0(t1)
	add	t2, t2, a5
	ld	t2, 0(t2)
	add	t1, t1, a7
	sd	t0, 0(t1)
	add	t2, t2, a1
	sb	a4, 0(t2)
	lw	t0, 32(s2)
	addi	a6, a6, 1
	slli	t1, t0, 1
	srli	t1, t1, 62
	add	t1, t0, t1
	sraiw	t1, t1, 2
	addi	a5, a5, 8
	blt	a6, t1, .LBB26_32
# %bb.33:                               #   in Loop: Header=BB26_30 Depth=1
	lw	a5, 28(s2)
	j	.LBB26_29
.LBB26_34:
	lui	a0, %hi(.L.str.36)
	addi	a0, a0, %lo(.L.str.36)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.insert_picture_in_dpb)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.insert_picture_in_dpb)
	lui	a2, 1
	addiw	a2, a2, -1611
	call	__assert_fail
.Lfunc_end26:
	.size	insert_picture_in_dpb, .Lfunc_end26-insert_picture_in_dpb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function output_one_frame_from_dpb
	.type	output_one_frame_from_dpb,@function
output_one_frame_from_dpb:              # @output_one_frame_from_dpb
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(dpb)
	addi	s1, s1, %lo(dpb)
	lw	a2, 28(s1)
	bnez	a2, .LBB27_3
# %bb.1:
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	li	a1, 150
	call	error
	lw	a2, 28(s1)
	bnez	a2, .LBB27_3
# %bb.2:
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	li	a1, 150
	call	error
	lw	a2, 28(s1)
	beqz	a2, .LBB27_24
.LBB27_3:
	lui	a0, %hi(dpb)
	ld	a0, %lo(dpb)(a0)
	li	a1, 0
	slli	a2, a2, 32
	srli	a2, a2, 29
	add	a2, a0, a2
	li	s0, -1
	lui	s2, 524288
	addiw	s2, s2, -1
	mv	a3, a0
	j	.LBB27_6
.LBB27_4:                               #   in Loop: Header=BB27_6 Depth=1
	mv	s2, a4
	mv	s0, a5
.LBB27_5:                               #   in Loop: Header=BB27_6 Depth=1
	addi	a3, a3, 8
	addiw	a1, a1, 1
	beq	a3, a2, .LBB27_9
.LBB27_6:                               # =>This Inner Loop Header: Depth=1
	ld	a5, 0(a3)
	lw	a4, 36(a5)
	bge	a4, s2, .LBB27_5
# %bb.7:                                #   in Loop: Header=BB27_6 Depth=1
	lw	a6, 32(a5)
	mv	a5, a1
	beqz	a6, .LBB27_4
# %bb.8:                                #   in Loop: Header=BB27_6 Depth=1
	mv	a4, s2
	mv	a5, s0
	j	.LBB27_4
.LBB27_9:
	li	a1, -1
	bne	s0, a1, .LBB27_11
.LBB27_10:
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	li	a1, 150
	call	error
	lui	a0, %hi(dpb)
	ld	a0, %lo(dpb)(a0)
	li	s0, -1
.LBB27_11:
	slli	s3, s0, 3
	add	a0, a0, s3
	ld	a0, 0(a0)
	lui	a1, %hi(p_dec)
	lw	a1, %lo(p_dec)(a1)
	call	write_stored_frame
	lw	a0, 40(s1)
	blt	a0, s2, .LBB27_13
# %bb.12:
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	li	a1, 150
	call	error
.LBB27_13:
	lui	a1, %hi(dpb)
	ld	a0, %lo(dpb)(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	lw	a2, 4(a0)
	addi	a1, a1, %lo(dpb)
	sw	s2, 40(a1)
	beqz	a2, .LBB27_15
.LBB27_14:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB27_15:
	lw	a1, 0(a0)
	li	a2, 3
	bne	a1, a2, .LBB27_17
# %bb.16:
	ld	a2, 40(a0)
	lui	a3, 2
	add	a2, a2, a3
	lw	a2, -1812(a2)
	bnez	a2, .LBB27_14
	j	.LBB27_18
.LBB27_17:
	andi	a2, a1, 1
	beqz	a2, .LBB27_20
.LBB27_18:
	ld	a2, 48(a0)
	beqz	a2, .LBB27_20
# %bb.19:
	lui	a3, 2
	add	a2, a2, a3
	lw	a2, -1812(a2)
	bnez	a2, .LBB27_14
.LBB27_20:
	andi	a1, a1, 2
	beqz	a1, .LBB27_23
# %bb.21:
	ld	a0, 56(a0)
	beqz	a0, .LBB27_23
# %bb.22:
	lui	a1, 2
	add	a0, a0, a1
	lw	a0, -1812(a0)
	bnez	a0, .LBB27_14
.LBB27_23:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	remove_frame_from_dpb
.LBB27_24:
	lui	s2, 524288
	addiw	s2, s2, -1
	j	.LBB27_10
.Lfunc_end27:
	.size	output_one_frame_from_dpb, .Lfunc_end27-output_one_frame_from_dpb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	replace_top_pic_with_frame      # -- Begin function replace_top_pic_with_frame
	.p2align	2
	.type	replace_top_pic_with_frame,@function
replace_top_pic_with_frame:             # @replace_top_pic_with_frame
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB28_14
# %bb.1:
	mv	s0, a0
	lw	a0, 0(a0)
	bnez	a0, .LBB28_15
# %bb.2:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 204(a0)
	lui	a1, 2
	addiw	s2, a1, -1816
	add	s2, s0, s2
	snez	a1, a0
	sw	a1, 4(s2)
	beqz	a0, .LBB28_4
# %bb.3:
	mv	a0, s0
	call	UnifiedOneForthPix
.LBB28_4:
	lui	a0, %hi(dpb+28)
	lwu	a0, %lo(dpb+28)(a0)
	beqz	a0, .LBB28_9
# %bb.5:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	lui	a1, %hi(dpb)
	ld	a1, %lo(dpb)(a1)
	lui	a3, 22
	add	a2, a2, a3
	lw	a2, 172(a2)
	li	a3, 1
	j	.LBB28_7
.LBB28_6:                               #   in Loop: Header=BB28_7 Depth=1
	addi	a0, a0, -1
	addi	a1, a1, 8
	beqz	a0, .LBB28_9
.LBB28_7:                               # =>This Inner Loop Header: Depth=1
	ld	s1, 0(a1)
	lw	a4, 20(s1)
	bne	a4, a2, .LBB28_6
# %bb.8:                                #   in Loop: Header=BB28_7 Depth=1
	lw	a4, 0(s1)
	bne	a4, a3, .LBB28_6
	j	.LBB28_10
.LBB28_9:
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	li	a1, 500
	call	error
	li	s1, 0
.LBB28_10:
	ld	a0, 48(s1)
	call	free_storable_picture
	lw	a1, 4(s2)
	sd	zero, 48(s1)
	sd	s0, 40(s1)
	li	a0, 3
	sw	a0, 0(s1)
	beqz	a1, .LBB28_13
# %bb.11:
	lw	a1, 0(s2)
	sw	a0, 4(s1)
	beqz	a1, .LBB28_13
# %bb.12:
	li	a0, 3
	sw	a0, 8(s1)
.LBB28_13:
	mv	a0, s1
	call	dpb_split_field
	call	update_ref_list
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	update_ltref_list
.LBB28_14:
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.replace_top_pic_with_frame)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.replace_top_pic_with_frame)
	lui	a2, 1
	addiw	a2, a2, -1674
	call	__assert_fail
.LBB28_15:
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.replace_top_pic_with_frame)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.replace_top_pic_with_frame)
	lui	a2, 1
	addiw	a2, a2, -1673
	call	__assert_fail
.Lfunc_end28:
	.size	replace_top_pic_with_frame, .Lfunc_end28-replace_top_pic_with_frame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dpb_split_field                 # -- Begin function dpb_split_field
	.p2align	2
	.type	dpb_split_field,@function
dpb_split_field:                        # @dpb_split_field
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	mv	s0, a0
	ld	a7, 40(a0)
	lui	s1, 2
	addiw	s3, s1, -1800
	add	a0, a7, s3
	lw	a2, 4(a7)
	lui	a1, %hi(active_sps)
	ld	a4, %lo(active_sps)(a1)
	lw	a1, 0(a0)
	sw	a2, 36(s0)
	lw	a2, 1148(a4)
	slli	a4, a1, 1
	srli	a4, a4, 60
	add	a4, a1, a4
	sraiw	s2, a4, 4
	beqz	a2, .LBB29_2
# %bb.1:
	addiw	a0, s1, -1664
	add	a0, a7, a0
	sd	zero, 56(s0)
	sd	zero, 48(s0)
	sd	zero, 8(a0)
	sd	zero, 0(a0)
	j	.LBB29_15
.LBB29_2:
	lw	a2, 4(a0)
	srliw	a3, a2, 31
	lw	a4, 12(a0)
	add	a2, a2, a3
	sraiw	a2, a2, 1
	lw	a3, 8(a0)
	srliw	a0, a4, 31
	add	a0, a4, a0
	sraiw	a4, a0, 1
	li	a0, 1
	call	alloc_storable_picture
	ld	a1, 40(s0)
	add	s3, a1, s3
	lw	a2, 4(s3)
	sd	a0, 48(s0)
	lw	a1, 0(s3)
	srliw	a0, a2, 31
	lw	a4, 12(s3)
	add	a0, a2, a0
	sraiw	a2, a0, 1
	lw	a3, 8(s3)
	srliw	a0, a4, 31
	add	a0, a4, a0
	sraiw	a4, a0, 1
	li	a0, 2
	li	s3, 2
	call	alloc_storable_picture
	ld	a1, 40(s0)
	add	s1, a1, s1
	lw	a2, -1796(s1)
	sd	a0, 56(s0)
	blt	a2, s3, .LBB29_5
# %bb.3:                                # %.preheader10
	li	s1, 0
	li	s4, 0
	li	s5, 0
	lui	s6, 2
	addiw	s7, s6, -1800
.LBB29_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 48(s0)
	add	a0, a0, s6
	ld	a0, -1768(a0)
	add	a1, a1, s7
	ld	a2, 32(a1)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a2, a2, s4
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, 40(s0)
	add	a0, a1, s6
	lw	a0, -1796(a0)
	addi	s5, s5, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	s4, s4, 16
	addi	s1, s1, 8
	blt	s5, a0, .LBB29_4
.LBB29_5:
	lui	s1, 2
	add	a0, a1, s1
	lw	a0, -1788(a0)
	blt	a0, s3, .LBB29_8
# %bb.6:                                # %.preheader8
	li	s3, 0
	li	s4, 0
	li	s5, 0
	li	s6, 25
	slli	s6, s6, 8
.LBB29_7:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 48(s0)
	add	a0, a0, s1
	ld	a0, -1728(a0)
	add	a1, a1, s6
	ld	a2, 64(a1)
	ld	a0, 0(a0)
	ld	a2, 0(a2)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a2, a2, s3
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, 48(s0)
	ld	a1, 40(s0)
	add	a0, a0, s1
	ld	a0, -1728(a0)
	add	a1, a1, s6
	ld	a2, 64(a1)
	ld	a0, 8(a0)
	ld	a2, 8(a2)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a2, a2, s3
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, 40(s0)
	add	a0, a1, s1
	lw	a0, -1788(a0)
	addi	s5, s5, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	s4, s4, 8
	addi	s3, s3, 16
	blt	s5, a0, .LBB29_7
.LBB29_8:
	add	s1, a1, s1
	lw	a0, -1796(s1)
	li	s3, 2
	blt	a0, s3, .LBB29_11
# %bb.9:                                # %.preheader6
	li	s1, 0
	li	s4, 0
	li	s5, 8
	lui	s6, 2
	addiw	s7, s6, -1800
.LBB29_10:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 56(s0)
	add	a0, a0, s6
	ld	a0, -1768(a0)
	add	a1, a1, s7
	ld	a2, 32(a1)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a2, a2, s5
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, 40(s0)
	add	a0, a1, s6
	lw	a0, -1796(a0)
	addi	s4, s4, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	s5, s5, 16
	addi	s1, s1, 8
	blt	s4, a0, .LBB29_10
.LBB29_11:
	lui	s1, 2
	add	a0, a1, s1
	lw	a0, -1788(a0)
	blt	a0, s3, .LBB29_14
# %bb.12:                               # %.preheader
	li	s3, 0
	li	s4, 0
	li	s5, 8
	li	s6, 25
	slli	s6, s6, 8
.LBB29_13:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 56(s0)
	add	a0, a0, s1
	ld	a0, -1728(a0)
	add	a1, a1, s6
	ld	a2, 64(a1)
	ld	a0, 0(a0)
	ld	a2, 0(a2)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a2, a2, s5
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, 56(s0)
	ld	a1, 40(s0)
	add	a0, a0, s1
	ld	a0, -1728(a0)
	add	a1, a1, s6
	ld	a2, 64(a1)
	ld	a0, 8(a0)
	ld	a2, 8(a2)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a2, a2, s5
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, 40(s0)
	add	a0, a1, s1
	lw	a0, -1788(a0)
	addi	s4, s4, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	s3, s3, 8
	addi	s5, s5, 16
	blt	s4, a0, .LBB29_13
.LBB29_14:
	ld	a0, 48(s0)
	call	UnifiedOneForthPix
	ld	a0, 56(s0)
	call	UnifiedOneForthPix
	ld	a1, 40(s0)
	ld	a0, 48(s0)
	addiw	a2, s1, -1820
	add	a3, a1, a2
	lw	a4, 8(a1)
	add	a5, a0, a2
	ld	a6, 56(s0)
	lw	a7, 12(a1)
	lw	t0, 16(a1)
	sw	a4, 4(a0)
	add	a2, a6, a2
	sw	a7, 4(a6)
	sw	t0, 16(a0)
	sw	a7, 12(a6)
	sw	a7, 12(a0)
	sw	a4, 8(a6)
	lw	a7, 8(a3)
	sw	a4, 8(a0)
	sw	t0, 16(a6)
	lw	a4, 4(a3)
	sw	a7, 8(a2)
	lw	t0, 0(a3)
	sw	a7, 8(a5)
	sw	a4, 4(a2)
	sw	a4, 4(a5)
	sw	t0, 0(a2)
	sw	t0, 0(a5)
	sw	t0, 28(s0)
	lw	a4, 44(a3)
	li	a7, 1
	sw	a7, 40(a2)
	sw	a7, 40(a5)
	sw	a4, 44(a2)
	sw	a4, 44(a5)
	sd	a0, 156(a3)
	sd	a6, 164(a3)
	lw	a3, 180(a3)
	sd	a6, 164(a5)
	sd	a1, 172(a5)
	sd	a0, 156(a2)
	sw	a3, 180(a2)
	sw	a3, 180(a5)
	lui	s3, %hi(listXsize)
	addi	a3, s3, %lo(listXsize)
	lw	a3, 4(a3)
	sd	a1, 172(a2)
	addi	a0, a0, 288
	addi	a1, a1, 816
	slliw	s1, a3, 1
	slli	s1, s1, 3
	mv	a2, s1
	call	memcpy
	ld	a0, 56(s0)
	ld	a1, 40(s0)
	addi	a0, a0, 288
	addi	a1, a1, 1344
	mv	a2, s1
	call	memcpy
	ld	a0, 48(s0)
	ld	a1, 40(s0)
	lw	a2, %lo(listXsize)(s3)
	addi	a0, a0, 24
	addi	a1, a1, 552
	slliw	s1, a2, 1
	slli	s1, s1, 3
	mv	a2, s1
	call	memcpy
	ld	a0, 56(s0)
	ld	a1, 40(s0)
	addi	a0, a0, 24
	addi	a1, a1, 1080
	mv	a2, s1
	call	memcpy
	ld	a7, 40(s0)
.LBB29_15:
	lui	a0, 2
	addiw	a1, a0, -1800
	add	a1, a7, a1
	lw	a0, 4(a1)
	li	a2, 4
	slli	s2, s2, 1
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	blt	a0, a2, .LBB29_28
# %bb.16:
	li	a4, 0
	lw	a5, 0(a1)
	lui	a6, 262144
	addi	a6, a6, -2
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	srliw	a0, a0, 2
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	slli	t0, a5, 1
	srli	t0, t0, 62
	addw	t4, a5, t0
	addi	a3, a7, 24
	addi	t2, a7, 1608
	addi	t3, a7, 288
	slli	t4, t4, 30
	srli	t4, t4, 32
	li	t5, 264
	j	.LBB29_18
.LBB29_17:                              #   in Loop: Header=BB29_18 Depth=1
	addi	a4, a4, 1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beq	a4, a0, .LBB29_28
.LBB29_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_24 Depth 2
	li	a0, 4
	blt	a5, a0, .LBB29_17
# %bb.19:                               #   in Loop: Header=BB29_18 Depth=1
	slli	t6, a4, 61
	srli	t6, t6, 63
	li	a0, 2
	beqz	t6, .LBB29_21
# %bb.20:                               #   in Loop: Header=BB29_18 Depth=1
	li	a0, 4
.LBB29_21:                              #   in Loop: Header=BB29_18 Depth=1
	li	s2, 0
	li	s3, 0
	li	s4, 0
	lw	s5, 24(a1)
	srliw	s6, a4, 3
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	mul	s6, s6, a2
	addi	s7, a0, 1
	slli	s8, a4, 3
	j	.LBB29_24
.LBB29_22:                              #   in Loop: Header=BB29_24 Depth=2
	ld	s11, 0(s10)
	add	s11, s11, s8
	ld	s11, 0(s11)
	ld	s10, 8(s10)
	add	s11, s11, s4
	lbu	s11, 0(s11)
	add	s10, s10, s8
	ld	s10, 0(s10)
	mul	ra, a0, t5
	slli	s1, a0, 3
	add	s1, s9, s1
	ld	s1, 0(s1)
	add	t0, a3, ra
	slli	s11, s11, 3
	add	t0, t0, s11
	add	s1, s1, s8
	ld	s1, 0(s1)
	ld	t0, 0(t0)
	add	s10, s10, s4
	lbu	s10, 0(s10)
	add	s1, s1, s3
	sd	t0, 0(s1)
	slli	t0, s7, 3
	add	t0, s9, t0
	ld	t0, 0(t0)
	mul	s1, s7, t5
	add	a2, a3, s1
	slli	s10, s10, 3
	add	t0, t0, s8
	ld	t0, 0(t0)
	add	a2, a2, s10
	ld	a2, 0(a2)
	add	t0, t0, s3
	ld	t1, 0(s9)
	sd	a2, 0(t0)
	add	ra, t2, ra
	add	s11, ra, s11
	add	t1, t1, s8
	ld	a2, 0(t1)
	ld	t0, 0(s11)
	add	a2, a2, s3
	sd	t0, 0(a2)
	add	s1, t2, s1
	add	s10, s1, s10
.LBB29_23:                              #   in Loop: Header=BB29_24 Depth=2
	ld	a2, 8(s9)
	add	a2, a2, s8
	ld	a2, 0(a2)
	ld	t0, 0(s10)
	add	a2, a2, s3
	sd	t0, 0(a2)
	addi	s4, s4, 1
	addi	s3, s3, 8
	addiw	s2, s2, 1
	beq	t4, s4, .LBB29_17
.LBB29_24:                              #   Parent Loop BB29_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	s5, .LBB29_26
# %bb.25:                               #   in Loop: Header=BB29_24 Depth=2
	srli	s9, s2, 1
	ld	s10, 80(a1)
	and	s9, s9, a6
	addw	s9, s9, s6
	or	s9, s9, t6
	add	s9, s10, s9
	lbu	s11, 0(s9)
	ld	s10, 88(a1)
	ld	s9, 104(a1)
	bnez	s11, .LBB29_22
	j	.LBB29_27
.LBB29_26:                              #   in Loop: Header=BB29_24 Depth=2
	ld	s10, 88(a1)
	ld	s9, 104(a1)
.LBB29_27:                              #   in Loop: Header=BB29_24 Depth=2
	ld	a2, 0(s10)
	ld	t0, 8(s10)
	add	a2, a2, s8
	ld	a2, 0(a2)
	add	t0, t0, s8
	ld	t0, 0(t0)
	add	a2, a2, s4
	lbu	a2, 0(a2)
	ld	t1, 0(s9)
	add	t0, t0, s4
	slli	a2, a2, 3
	add	a2, a3, a2
	add	t1, t1, s8
	ld	t1, 0(t1)
	ld	a2, 0(a2)
	lbu	t0, 0(t0)
	add	t1, t1, s3
	sd	a2, 0(t1)
	slli	t0, t0, 3
	add	s10, t3, t0
	j	.LBB29_23
.LBB29_28:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB29_31
# %bb.29:
	ld	a5, 0(sp)                       # 8-byte Folded Reload
.LBB29_30:
	lui	a0, 2
	addiw	a0, a0, -1800
	add	a0, a7, a0
	ld	a1, 128(a0)
	lw	a2, 0(a0)
	ld	a0, 0(a1)
	mul	a1, a2, a5
	sraiw	a2, a1, 31
	srliw	a2, a2, 28
	add	a1, a1, a2
	sraiw	a2, a1, 4
	li	a1, 0
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	tail	memset
.LBB29_31:
	lw	a0, 24(a1)
	ld	a5, 0(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB29_41
# %bb.32:
	li	a0, 8
	blt	a5, a0, .LBB29_56
# %bb.33:
	li	a1, 0
	lui	a0, 262144
	addi	a0, a0, -2
	lui	a4, 2
	lui	a6, 524288
	addiw	a6, a6, -8
	li	a3, 1
	addiw	t0, a4, -1712
	j	.LBB29_35
.LBB29_34:                              #   in Loop: Header=BB29_35 Depth=1
	add	a2, a7, a4
	lw	a5, -1796(a2)
	addi	a1, a1, 1
	slli	a2, a5, 1
	srli	a2, a2, 61
	add	a2, a5, a2
	sraiw	a2, a2, 3
	bge	a1, a2, .LBB29_40
.LBB29_35:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_38 Depth 2
	add	a2, a7, a4
	lw	a2, -1800(a2)
	li	a5, 4
	blt	a2, a5, .LBB29_34
# %bb.36:                               #   in Loop: Header=BB29_35 Depth=1
	li	t1, 0
	li	t2, 0
	li	t3, 0
	slli	s2, a1, 1
	and	a2, s2, a6
	andi	t4, a1, 3
	or	a2, a2, t4
	addi	s3, a2, 4
	srliw	t4, a1, 2
	ld	a5, 8(sp)                       # 8-byte Folded Reload
	mul	t4, t4, a5
	slli	t5, a1, 62
	srli	t5, t5, 63
	addi	s1, s2, 1
	slli	t6, a1, 3
	slli	s1, s1, 3
	slli	s2, s2, 3
	slli	s3, s3, 3
	slli	s4, a2, 3
	j	.LBB29_38
.LBB29_37:                              #   in Loop: Header=BB29_38 Depth=2
	add	a2, a7, a4
	lw	a2, -1800(a2)
	addi	t3, t3, 1
	slli	a5, a2, 1
	srli	a5, a5, 62
	add	a2, a2, a5
	sraiw	a2, a2, 2
	addi	t2, t2, 8
	addiw	t1, t1, 1
	bge	t3, a2, .LBB29_34
.LBB29_38:                              #   Parent Loop BB29_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli	a2, t1, 1
	add	s5, a7, a4
	ld	s5, -1720(s5)
	and	a2, a2, a0
	addw	a2, a2, t4
	or	a2, a2, t5
	add	a2, s5, a2
	lbu	a2, 0(a2)
	beqz	a2, .LBB29_37
# %bb.39:                               #   in Loop: Header=BB29_38 Depth=2
	ld	a2, 48(s0)
	add	a2, a2, a4
	ld	a2, -1672(a2)
	add	a2, a2, t6
	ld	a2, 0(a2)
	add	a2, a2, t3
	sb	a3, 0(a2)
	ld	a2, 56(s0)
	add	a2, a2, a4
	ld	a2, -1672(a2)
	add	a2, a2, t6
	ld	a2, 0(a2)
	add	a2, a2, t3
	sb	a3, 0(a2)
	ld	a2, 40(s0)
	add	a2, a2, a4
	ld	a2, -1672(a2)
	add	a2, a2, s1
	ld	a2, 0(a2)
	add	a2, a2, t3
	sb	a3, 0(a2)
	ld	a2, 40(s0)
	add	a2, a2, a4
	ld	a2, -1672(a2)
	add	a2, a2, s2
	ld	a2, 0(a2)
	add	a2, a2, t3
	sb	a3, 0(a2)
	ld	a2, 40(s0)
	add	a2, a2, t0
	ld	a7, 24(a2)
	ld	s5, 56(s0)
	ld	s6, 0(a7)
	add	s5, s5, t0
	ld	s7, 24(s5)
	add	s6, s6, s3
	ld	s6, 0(s6)
	ld	s8, 0(s7)
	add	s6, s6, t2
	ld	s6, 0(s6)
	add	s8, s8, t6
	ld	s8, 0(s8)
	lh	s9, 0(s6)
	ld	a7, 8(a7)
	add	s8, s8, t2
	ld	s8, 0(s8)
	add	a7, a7, s3
	ld	a7, 0(a7)
	sh	s9, 0(s8)
	ld	s7, 8(s7)
	lh	s6, 2(s6)
	add	a7, a7, t2
	ld	a7, 0(a7)
	add	s7, s7, t6
	ld	s7, 0(s7)
	sh	s6, 2(s8)
	lh	s6, 0(a7)
	add	s7, s7, t2
	ld	a2, 0(a2)
	ld	s7, 0(s7)
	ld	a2, 0(a2)
	sh	s6, 0(s7)
	ld	s5, 0(s5)
	lh	a7, 2(a7)
	add	a2, a2, s3
	ld	a2, 0(a2)
	ld	s5, 0(s5)
	sh	a7, 2(s7)
	add	a2, a2, t3
	add	s5, s5, t6
	ld	a7, 0(s5)
	lbu	a2, 0(a2)
	add	a7, a7, t3
	sb	a2, 0(a7)
	ld	a2, 40(s0)
	add	a2, a2, a4
	ld	a2, -1712(a2)
	ld	a7, 56(s0)
	ld	a2, 8(a2)
	add	a7, a7, a4
	ld	a7, -1712(a7)
	add	a2, a2, s3
	ld	a2, 0(a2)
	ld	a7, 8(a7)
	add	a2, a2, t3
	add	a7, a7, t6
	ld	a7, 0(a7)
	lbu	a2, 0(a2)
	add	a7, a7, t3
	sb	a2, 0(a7)
	ld	a2, 40(s0)
	add	a2, a2, t0
	ld	a7, 16(a2)
	ld	s5, 32(a7)
	add	s5, s5, s3
	ld	s5, 0(s5)
	ld	s6, 56(s0)
	ld	s7, 24(a2)
	add	s5, s5, t2
	ld	s8, 48(s0)
	add	s6, s6, a4
	ld	s9, 0(s7)
	ld	s6, -1696(s6)
	add	s8, s8, t0
	ld	s10, 24(s8)
	add	s9, s9, s4
	ld	s9, 0(s9)
	ld	s5, 0(s5)
	ld	s11, 0(s10)
	ld	ra, 0(s6)
	add	s9, s9, t2
	ld	s9, 0(s9)
	add	s11, s11, t6
	ld	s11, 0(s11)
	add	ra, ra, t6
	ld	ra, 0(ra)
	lh	a5, 0(s9)
	add	s11, s11, t2
	ld	s11, 0(s11)
	add	ra, ra, t2
	sd	s5, 0(ra)
	ld	a7, 40(a7)
	sh	a5, 0(s11)
	lh	a5, 2(s9)
	ld	s5, 8(s7)
	add	a7, a7, s3
	ld	a7, 0(a7)
	sh	a5, 2(s11)
	add	s5, s5, s4
	ld	a5, 0(s5)
	add	a7, a7, t2
	ld	s5, 8(s10)
	ld	s6, 8(s6)
	add	a5, a5, t2
	ld	a5, 0(a5)
	add	s5, s5, t6
	ld	s5, 0(s5)
	add	s6, s6, t6
	ld	s6, 0(s6)
	lh	s7, 0(a5)
	add	s5, s5, t2
	ld	a2, 0(a2)
	ld	s5, 0(s5)
	ld	a7, 0(a7)
	add	s6, s6, t2
	ld	a2, 0(a2)
	sh	s7, 0(s5)
	ld	s7, 0(s8)
	lh	a5, 2(a5)
	add	a2, a2, s4
	ld	a2, 0(a2)
	ld	s7, 0(s7)
	sd	a7, 0(s6)
	sh	a5, 2(s5)
	add	a2, a2, t3
	add	s7, s7, t6
	ld	a5, 0(s7)
	lbu	a2, 0(a2)
	add	a5, a5, t3
	sb	a2, 0(a5)
	ld	a2, 40(s0)
	add	a2, a2, a4
	ld	a2, -1712(a2)
	ld	a5, 48(s0)
	ld	a2, 8(a2)
	add	a5, a5, a4
	ld	a5, -1712(a5)
	add	a2, a2, s4
	ld	a2, 0(a2)
	ld	a5, 8(a5)
	add	a2, a2, t3
	add	a5, a5, t6
	ld	a5, 0(a5)
	lbu	a2, 0(a2)
	add	a5, a5, t3
	sb	a2, 0(a5)
	ld	a7, 40(s0)
	add	a2, a7, a4
	ld	a2, -1696(a2)
	ld	a5, 16(a2)
	ld	s5, 48(s0)
	add	a5, a5, s4
	add	s5, s5, a4
	ld	s5, -1696(s5)
	ld	a5, 0(a5)
	ld	s6, 0(s5)
	add	a5, a5, t2
	ld	a2, 24(a2)
	ld	a5, 0(a5)
	add	s6, s6, t6
	ld	s6, 0(s6)
	add	a2, a2, s4
	ld	a2, 0(a2)
	ld	s5, 8(s5)
	add	s6, s6, t2
	sd	a5, 0(s6)
	add	a2, a2, t2
	add	s5, s5, t6
	ld	a5, 0(s5)
	ld	a2, 0(a2)
	add	a5, a5, t2
	sd	a2, 0(a5)
	j	.LBB29_37
.LBB29_40:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	bnez	a0, .LBB29_30
.LBB29_41:
	li	a0, 8
	blt	a5, a0, .LBB29_56
# %bb.42:
	li	a1, 0
	lui	a0, 524288
	addi	a0, a0, -2
	lui	a4, 262144
	addi	a4, a4, -2
	lui	a5, 2
	addiw	a3, a5, -1776
	addiw	t0, a5, -1712
	lui	t1, 1
	j	.LBB29_44
.LBB29_43:                              #   in Loop: Header=BB29_44 Depth=1
	add	a2, a7, a5
	lw	a2, -1796(a2)
	addi	a1, a1, 1
	slli	a6, a2, 1
	srli	a6, a6, 61
	add	a2, a2, a6
	sraiw	a2, a2, 3
	bge	a1, a2, .LBB29_56
.LBB29_44:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_51 Depth 2
	add	a2, a7, a5
	lw	a2, -1800(a2)
	li	a6, 4
	blt	a2, a6, .LBB29_43
# %bb.45:                               #   in Loop: Header=BB29_44 Depth=1
	andi	a2, a1, 2
	beqz	a2, .LBB29_47
# %bb.46:                               #   in Loop: Header=BB29_44 Depth=1
	ori	s1, a1, 1
	j	.LBB29_48
.LBB29_47:                              #   in Loop: Header=BB29_44 Depth=1
	and	s1, a1, a0
.LBB29_48:                              #   in Loop: Header=BB29_44 Depth=1
	li	t2, 0
	li	t3, 0
	li	t4, 0
	srliw	a2, a1, 2
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	mul	t5, a2, a6
	slli	t6, a1, 62
	srli	t6, t6, 63
	slli	a2, a1, 1
	addi	s2, a2, 1
	slli	s1, s1, 33
	srli	s4, s1, 32
	slli	s1, a2, 3
	slli	s2, s2, 3
	slli	s3, a1, 3
	slli	s4, s4, 3
	j	.LBB29_51
.LBB29_49:                              #   in Loop: Header=BB29_51 Depth=2
	ld	a2, 104(a2)
	add	a2, a2, s1
	ld	a2, 0(a2)
	add	a2, a2, t4
	sb	zero, 0(a2)
	ld	a2, 40(s0)
	add	a2, a2, a5
	ld	a2, -1672(a2)
	add	a2, a2, s2
	ld	a2, 0(a2)
	add	a2, a2, t4
	sb	zero, 0(a2)
	ld	a2, 56(s0)
	add	a2, a2, a5
	ld	a2, -1672(a2)
	add	a2, a2, s3
	ld	a2, 0(a2)
	add	a2, a2, t4
	sb	zero, 0(a2)
	ld	a2, 48(s0)
	add	a2, a2, a5
	ld	a2, -1672(a2)
	add	a2, a2, s3
	ld	a2, 0(a2)
	add	a2, a2, t4
	sb	zero, 0(a2)
	ld	a2, 40(s0)
	add	a2, a2, t0
	ld	a7, 24(a2)
	ld	s6, 0(a7)
	add	s6, s6, s4
	ld	s7, 56(s0)
	ld	s8, 0(s6)
	ld	s9, 48(s0)
	slli	s6, s5, 32
	add	s5, s7, t0
	ld	s7, 24(s5)
	add	s9, s9, a5
	ld	s9, -1688(s9)
	srli	s10, s6, 29
	ld	s11, 0(s7)
	add	s8, s8, s10
	ld	ra, 0(s9)
	ld	s8, 0(s8)
	add	s11, s11, s3
	ld	s11, 0(s11)
	add	ra, ra, s3
	ld	ra, 0(ra)
	lh	a6, 0(s8)
	add	s11, s11, t3
	ld	s11, 0(s11)
	add	ra, ra, t3
	ld	ra, 0(ra)
	sh	a6, 0(s11)
	ld	a7, 8(a7)
	sh	a6, 0(ra)
	lh	a6, 2(s8)
	add	a7, a7, s4
	ld	a7, 0(a7)
	sh	a6, 2(s11)
	sh	a6, 2(ra)
	ld	a6, 8(s7)
	add	a7, a7, s10
	ld	s7, 8(s9)
	ld	a7, 0(a7)
	add	a6, a6, s3
	ld	a6, 0(a6)
	add	s7, s7, s3
	ld	s7, 0(s7)
	lh	s8, 0(a7)
	add	a6, a6, t3
	ld	a6, 0(a6)
	add	s7, s7, t3
	ld	s9, 0(a2)
	ld	s7, 0(s7)
	srli	a2, s6, 32
	sh	s8, 0(a6)
	ld	s6, 0(s9)
	sh	s8, 0(s7)
	ld	s5, 0(s5)
	lh	a7, 2(a7)
	add	s6, s6, s4
	ld	s6, 0(s6)
	ld	s5, 0(s5)
	sh	a7, 2(a6)
	sh	a7, 2(s7)
	add	s6, s6, a2
	add	s5, s5, s3
	ld	a6, 0(s5)
	lbu	a7, 0(s6)
	add	a6, a6, t4
	sb	a7, 0(a6)
	ld	a6, 48(s0)
	add	a6, a6, a5
	ld	a6, -1712(a6)
	ld	a6, 0(a6)
	add	a6, a6, s3
	ld	a6, 0(a6)
	add	a6, a6, t4
	sb	a7, 0(a6)
	ld	a6, 48(s0)
	add	a6, a6, a5
	ld	a6, -1696(a6)
	ld	s5, 40(s0)
	ld	a6, 0(a6)
	slli	a7, a7, 3
	add	a7, s5, a7
	add	a6, a6, s3
	ld	a6, 0(a6)
	ld	s6, 56(s0)
	addi	s7, a7, 2047
	ld	s7, 1145(s7)
	add	a6, a6, t3
	add	s6, s6, t0
	ld	s8, 16(s6)
	sd	s7, 0(a6)
	add	s5, s5, a5
	ld	a6, -1712(s5)
	ld	s5, 0(s8)
	add	a7, a7, t1
	ld	a7, 680(a7)
	ld	a6, 8(a6)
	add	s5, s5, s3
	ld	s6, 0(s6)
	ld	s5, 0(s5)
	add	a6, a6, s4
	ld	a6, 0(a6)
	ld	s6, 8(s6)
	add	s5, s5, t3
	sd	a7, 0(s5)
	add	a2, a6, a2
	add	s6, s6, s3
	ld	a6, 0(s6)
	lbu	a2, 0(a2)
	add	a6, a6, t4
	sb	a2, 0(a6)
	ld	a6, 48(s0)
	add	a6, a6, a5
	ld	a6, -1712(a6)
	ld	a6, 8(a6)
	add	a6, a6, s3
	ld	a6, 0(a6)
	add	a6, a6, t4
	sb	a2, 0(a6)
	ld	a6, 48(s0)
	add	a6, a6, a5
	ld	a6, -1696(a6)
	ld	a7, 40(s0)
	slli	a2, a2, 3
	ld	a6, 8(a6)
	ld	s5, 56(s0)
	add	a2, a7, a2
	addi	s6, a2, 2047
	add	a6, a6, s3
	add	s5, s5, a5
	ld	s5, -1696(s5)
	ld	a6, 0(a6)
	ld	s6, 1409(s6)
	ld	s5, 8(s5)
	add	a6, a6, t3
	sd	s6, 0(a6)
	add	a2, a2, t1
	add	s5, s5, s3
	ld	a6, 0(s5)
	ld	a2, 944(a2)
	add	a6, a6, t3
	sd	a2, 0(a6)
.LBB29_50:                              #   in Loop: Header=BB29_51 Depth=2
	add	a2, a7, a5
	lw	a2, -1800(a2)
	addi	t4, t4, 1
	slli	a6, a2, 1
	srli	a6, a6, 62
	add	a2, a2, a6
	sraiw	a2, a2, 2
	addi	t3, t3, 8
	addiw	t2, t2, 1
	bge	t4, a2, .LBB29_43
.LBB29_51:                              #   Parent Loop BB29_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	a2, t2, 2
	beqz	a2, .LBB29_53
# %bb.52:                               #   in Loop: Header=BB29_51 Depth=2
	ori	s5, t4, 1
	add	a2, a7, a3
	lw	a7, 0(a2)
	bnez	a7, .LBB29_54
	j	.LBB29_49
.LBB29_53:                              #   in Loop: Header=BB29_51 Depth=2
	and	s5, t4, a0
	add	a2, a7, a3
	lw	a7, 0(a2)
	beqz	a7, .LBB29_49
.LBB29_54:                              #   in Loop: Header=BB29_51 Depth=2
	srli	a7, t2, 1
	ld	s6, 56(a2)
	and	a7, a7, a4
	addw	a7, a7, t5
	or	a7, a7, t6
	add	a7, s6, a7
	lbu	s6, 0(a7)
	beqz	s6, .LBB29_49
# %bb.55:                               #   in Loop: Header=BB29_51 Depth=2
	ld	a2, 104(a2)
	add	a2, a2, s1
	ld	a2, 0(a2)
	add	a2, a2, t4
	sb	s6, 0(a2)
	ld	a2, 40(s0)
	add	a2, a2, a5
	ld	a2, -1672(a2)
	add	a2, a2, s2
	ld	a2, 0(a2)
	add	a2, a2, t4
	sb	s6, 0(a2)
	ld	a7, 40(s0)
	j	.LBB29_50
.LBB29_56:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end29:
	.size	dpb_split_field, .Lfunc_end29-dpb_split_field
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	flush_dpb                       # -- Begin function flush_dpb
	.p2align	2
	.type	flush_dpb,@function
flush_dpb:                              # @flush_dpb
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(dpb)
	addi	s0, s0, %lo(dpb)
	lw	a0, 28(s0)
	beqz	a0, .LBB30_19
# %bb.1:                                # %.preheader3
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(dpb)
	addi	s4, s3, %lo(dpb)
.LBB30_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(dpb)(s3)
	add	a0, a0, s1
	ld	a0, 0(a0)
	call	unmark_for_reference
	lwu	a1, 28(s4)
	addi	s2, s2, 1
	addi	s1, s1, 8
	bltu	s2, a1, .LBB30_2
# %bb.3:
	beqz	a1, .LBB30_19
# %bb.4:
	lui	s1, %hi(dpb)
	li	s2, 3
	lui	s3, 2
.LBB30_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_8 Depth 2
	ld	a2, %lo(dpb)(s1)
	li	a0, 0
	j	.LBB30_8
.LBB30_6:                               #   in Loop: Header=BB30_8 Depth=2
	ld	a5, 40(a3)
	add	a5, a5, s3
	lw	a5, -1812(a5)
	beqz	a5, .LBB30_12
.LBB30_7:                               #   in Loop: Header=BB30_8 Depth=2
	addi	a1, a1, -1
	addi	a2, a2, 8
	addiw	a0, a0, 1
	beqz	a1, .LBB30_18
.LBB30_8:                               #   Parent Loop BB30_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a3, 0(a2)
	lw	a4, 32(a3)
	beqz	a4, .LBB30_7
# %bb.9:                                #   in Loop: Header=BB30_8 Depth=2
	lw	a4, 4(a3)
	bnez	a4, .LBB30_7
# %bb.10:                               #   in Loop: Header=BB30_8 Depth=2
	lw	a4, 0(a3)
	beq	a4, s2, .LBB30_6
# %bb.11:                               #   in Loop: Header=BB30_8 Depth=2
	andi	a5, a4, 1
	beqz	a5, .LBB30_14
.LBB30_12:                              #   in Loop: Header=BB30_8 Depth=2
	ld	a5, 48(a3)
	beqz	a5, .LBB30_14
# %bb.13:                               #   in Loop: Header=BB30_8 Depth=2
	add	a5, a5, s3
	lw	a5, -1812(a5)
	bnez	a5, .LBB30_7
.LBB30_14:                              #   in Loop: Header=BB30_8 Depth=2
	andi	a4, a4, 2
	beqz	a4, .LBB30_17
# %bb.15:                               #   in Loop: Header=BB30_8 Depth=2
	ld	a3, 56(a3)
	beqz	a3, .LBB30_17
# %bb.16:                               #   in Loop: Header=BB30_8 Depth=2
	add	a3, a3, s3
	lw	a3, -1812(a3)
	bnez	a3, .LBB30_7
.LBB30_17:                              #   in Loop: Header=BB30_5 Depth=1
	call	remove_frame_from_dpb
	lwu	a1, 28(s0)
	bnez	a1, .LBB30_5
	j	.LBB30_19
.LBB30_18:                              # =>This Inner Loop Header: Depth=1
	call	output_one_frame_from_dpb
	lw	a0, 28(s0)
	bnez	a0, .LBB30_18
.LBB30_19:
	lui	a0, 524288
	sw	a0, 40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end30:
	.size	flush_dpb, .Lfunc_end30-flush_dpb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function unmark_for_reference
	.type	unmark_for_reference,@function
unmark_for_reference:                   # @unmark_for_reference
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lwu	a0, 0(a0)
	andi	a1, a0, 1
	beqz	a1, .LBB31_3
# %bb.1:
	ld	a1, 48(s0)
	beqz	a1, .LBB31_3
# %bb.2:
	lui	a2, 2
	add	a1, a1, a2
	sw	zero, -1812(a1)
.LBB31_3:
	andi	a1, a0, 2
	beqz	a1, .LBB31_6
# %bb.4:
	ld	a1, 56(s0)
	beqz	a1, .LBB31_6
# %bb.5:
	lui	a2, 2
	add	a1, a1, a2
	sw	zero, -1812(a1)
.LBB31_6:
	li	a1, 3
	bne	a0, a1, .LBB31_11
# %bb.7:
	ld	a0, 48(s0)
	beqz	a0, .LBB31_10
# %bb.8:
	ld	a1, 56(s0)
	beqz	a1, .LBB31_10
# %bb.9:
	lui	a2, 2
	add	a0, a0, a2
	sw	zero, -1812(a0)
	add	a1, a1, a2
	sw	zero, -1812(a1)
.LBB31_10:
	ld	a1, 40(s0)
	lui	a0, 2
	add	a0, a1, a0
	sw	zero, -1812(a0)
	sw	zero, 4(s0)
	j	.LBB31_12
.LBB31_11:
	ld	a1, 40(s0)
	sw	zero, 4(s0)
	beqz	a1, .LBB31_22
.LBB31_12:
	lui	s1, 2
	add	a0, a1, s1
	ld	a0, -1736(a0)
	beqz	a0, .LBB31_14
# %bb.13:
	call	free_mem2Dpel
	ld	a1, 40(s0)
	add	a0, a1, s1
	sd	zero, -1736(a0)
.LBB31_14:
	add	s1, a1, s1
	ld	a0, -1744(s1)
	beqz	a0, .LBB31_16
# %bb.15:
	call	free_mem2Dpel
	ld	a1, 40(s0)
	lui	a0, 2
	add	a0, a1, a0
	sd	zero, -1744(a0)
.LBB31_16:
	lui	s1, 2
	add	a0, a1, s1
	ld	a0, -1752(a0)
	beqz	a0, .LBB31_18
# %bb.17:
	call	free
	ld	a1, 40(s0)
	add	a0, a1, s1
	sd	zero, -1752(a0)
.LBB31_18:
	add	s1, a1, s1
	ld	a0, -1704(s1)
	beqz	a0, .LBB31_20
# %bb.19:
	li	a1, 6
	call	free_mem3Dint64
	ld	a1, 40(s0)
	lui	a0, 2
	add	a0, a1, a0
	sd	zero, -1704(a0)
.LBB31_20:
	lui	s1, 2
	add	a1, a1, s1
	ld	a0, -1696(a1)
	beqz	a0, .LBB31_22
# %bb.21:
	li	a1, 6
	call	free_mem3Dint64
	ld	a0, 40(s0)
	add	a0, a0, s1
	sd	zero, -1696(a0)
.LBB31_22:
	ld	a1, 48(s0)
	beqz	a1, .LBB31_33
# %bb.23:
	lui	s1, 2
	add	a0, a1, s1
	ld	a0, -1736(a0)
	beqz	a0, .LBB31_25
# %bb.24:
	call	free_mem2Dpel
	ld	a1, 48(s0)
	add	a0, a1, s1
	sd	zero, -1736(a0)
.LBB31_25:
	add	s1, a1, s1
	ld	a0, -1744(s1)
	beqz	a0, .LBB31_27
# %bb.26:
	call	free_mem2Dpel
	ld	a1, 48(s0)
	lui	a0, 2
	add	a0, a1, a0
	sd	zero, -1744(a0)
.LBB31_27:
	lui	s1, 2
	add	a0, a1, s1
	ld	a0, -1752(a0)
	beqz	a0, .LBB31_29
# %bb.28:
	call	free
	ld	a1, 48(s0)
	add	a0, a1, s1
	sd	zero, -1752(a0)
.LBB31_29:
	add	s1, a1, s1
	ld	a0, -1704(s1)
	beqz	a0, .LBB31_31
# %bb.30:
	li	a1, 6
	call	free_mem3Dint64
	ld	a1, 48(s0)
	lui	a0, 2
	add	a0, a1, a0
	sd	zero, -1704(a0)
.LBB31_31:
	lui	s1, 2
	add	a1, a1, s1
	ld	a0, -1696(a1)
	beqz	a0, .LBB31_33
# %bb.32:
	li	a1, 6
	call	free_mem3Dint64
	ld	a0, 48(s0)
	add	a0, a0, s1
	sd	zero, -1696(a0)
.LBB31_33:
	ld	a1, 56(s0)
	beqz	a1, .LBB31_44
# %bb.34:
	lui	s1, 2
	add	a0, a1, s1
	ld	a0, -1736(a0)
	beqz	a0, .LBB31_36
# %bb.35:
	call	free_mem2Dpel
	ld	a1, 56(s0)
	add	a0, a1, s1
	sd	zero, -1736(a0)
.LBB31_36:
	add	s1, a1, s1
	ld	a0, -1744(s1)
	beqz	a0, .LBB31_38
# %bb.37:
	call	free_mem2Dpel
	ld	a1, 56(s0)
	lui	a0, 2
	add	a0, a1, a0
	sd	zero, -1744(a0)
.LBB31_38:
	lui	s1, 2
	add	a0, a1, s1
	ld	a0, -1752(a0)
	beqz	a0, .LBB31_40
# %bb.39:
	call	free
	ld	a1, 56(s0)
	add	a0, a1, s1
	sd	zero, -1752(a0)
.LBB31_40:
	add	s1, a1, s1
	ld	a0, -1704(s1)
	beqz	a0, .LBB31_42
# %bb.41:
	li	a1, 6
	call	free_mem3Dint64
	ld	a1, 56(s0)
	lui	a0, 2
	add	a0, a1, a0
	sd	zero, -1704(a0)
.LBB31_42:
	lui	s1, 2
	add	a1, a1, s1
	ld	a0, -1696(a1)
	beqz	a0, .LBB31_44
# %bb.43:
	li	a1, 6
	call	free_mem3Dint64
	ld	a0, 56(s0)
	add	a0, a0, s1
	sd	zero, -1696(a0)
.LBB31_44:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end31:
	.size	unmark_for_reference, .Lfunc_end31-unmark_for_reference
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	gen_field_ref_ids               # -- Begin function gen_field_ref_ids
	.p2align	2
	.type	gen_field_ref_ids,@function
gen_field_ref_ids:                      # @gen_field_ref_ids
# %bb.0:
	lui	a1, 2
	addiw	a1, a1, -1800
	add	a1, a0, a1
	lw	a6, 0(a1)
	li	a2, 4
	blt	a6, a2, .LBB32_7
# %bb.1:
	li	a3, 0
	lw	t1, 4(a1)
	addi	a4, a0, 24
	addi	a0, a0, 288
	li	a5, 1
	j	.LBB32_3
.LBB32_2:                               #   in Loop: Header=BB32_3 Depth=1
	addi	a3, a3, 1
	sraiw	a7, a6, 31
	srliw	a7, a7, 30
	add	a7, a6, a7
	sraiw	a7, a7, 2
	bge	a3, a7, .LBB32_7
.LBB32_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_5 Depth 2
	blt	t1, a2, .LBB32_2
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB32_3 Depth=1
	li	a6, 0
	li	a7, 0
	slli	t0, a3, 3
.LBB32_5:                               #   Parent Loop BB32_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t1, 88(a1)
	ld	t2, 0(t1)
	ld	t1, 8(t1)
	add	t2, t2, a6
	ld	t2, 0(t2)
	add	t1, t1, a6
	ld	t1, 0(t1)
	ld	t3, 104(a1)
	add	t2, t2, a3
	lbu	t2, 0(t2)
	ld	t4, 0(t3)
	add	t1, t1, a3
	slli	t2, t2, 3
	add	t2, a4, t2
	add	t4, t4, a6
	ld	t4, 0(t4)
	ld	t2, 0(t2)
	lbu	t1, 0(t1)
	add	t4, t4, t0
	sd	t2, 0(t4)
	slli	t1, t1, 3
	ld	t2, 8(t3)
	add	t1, a0, t1
	ld	t3, 128(a1)
	ld	t1, 0(t1)
	add	t2, t2, a6
	ld	t2, 0(t2)
	add	t3, t3, a6
	ld	t3, 0(t3)
	add	t2, t2, t0
	sd	t1, 0(t2)
	add	t3, t3, a3
	sb	a5, 0(t3)
	lw	t1, 4(a1)
	addi	a7, a7, 1
	slli	t2, t1, 1
	srli	t2, t2, 62
	add	t2, t1, t2
	sraiw	t2, t2, 2
	addi	a6, a6, 8
	blt	a7, t2, .LBB32_5
# %bb.6:                                #   in Loop: Header=BB32_3 Depth=1
	lw	a6, 0(a1)
	j	.LBB32_2
.LBB32_7:
	ret
.Lfunc_end32:
	.size	gen_field_ref_ids, .Lfunc_end32-gen_field_ref_ids
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dpb_combine_field_yuv           # -- Begin function dpb_combine_field_yuv
	.p2align	2
	.type	dpb_combine_field_yuv,@function
dpb_combine_field_yuv:                  # @dpb_combine_field_yuv
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 48(a0)
	lui	s1, 2
	addiw	s2, s1, -1800
	add	a0, a0, s2
	lw	a1, 0(a0)
	lw	a2, 4(a0)
	lw	a4, 12(a0)
	lw	a3, 8(a0)
	slliw	a2, a2, 1
	slliw	a4, a4, 1
	li	a0, 0
	call	alloc_storable_picture
	ld	a1, 48(s0)
	add	a2, a1, s1
	lw	a2, -1796(a2)
	sd	a0, 40(s0)
	blez	a2, .LBB33_3
# %bb.1:
	li	s3, 0
	li	s4, 0
	li	s5, 0
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 40(s0)
	add	a0, a0, s1
	ld	a0, -1768(a0)
	add	a1, a1, s2
	ld	a2, 32(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a2, a2, s4
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, 40(s0)
	ld	a1, 56(s0)
	add	a0, a0, s1
	ld	a0, -1768(a0)
	add	a1, a1, s2
	ld	a2, 32(a1)
	add	a0, a0, s3
	ld	a0, 8(a0)
	add	a2, a2, s4
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, 48(s0)
	add	a0, a1, s1
	lw	a0, -1796(a0)
	addi	s5, s5, 1
	addi	s4, s4, 8
	addi	s3, s3, 16
	blt	s5, a0, .LBB33_2
.LBB33_3:
	add	s1, a1, s1
	lw	a0, -1788(s1)
	blez	a0, .LBB33_6
# %bb.4:
	li	s1, 0
	li	s2, 0
	li	s3, 0
	li	s4, 25
	slli	s4, s4, 8
	lui	s5, 2
.LBB33_5:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 40(s0)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	add	a1, a1, s4
	ld	a2, 64(a1)
	ld	a0, 0(a0)
	ld	a2, 0(a2)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a2, a2, s2
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, 40(s0)
	ld	a1, 56(s0)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	add	a1, a1, s4
	ld	a2, 64(a1)
	ld	a0, 0(a0)
	ld	a2, 0(a2)
	add	a0, a0, s1
	ld	a0, 8(a0)
	add	a2, a2, s2
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, 40(s0)
	ld	a1, 48(s0)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	add	a1, a1, s4
	ld	a2, 64(a1)
	ld	a0, 8(a0)
	ld	a2, 8(a2)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a2, a2, s2
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, 40(s0)
	ld	a1, 56(s0)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	add	a1, a1, s4
	ld	a2, 64(a1)
	ld	a0, 8(a0)
	ld	a2, 8(a2)
	add	a0, a0, s1
	ld	a0, 8(a0)
	add	a2, a2, s2
	lw	a3, 0(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, 48(s0)
	add	a0, a1, s5
	lw	a0, -1788(a0)
	addi	s3, s3, 1
	addi	s2, s2, 8
	addi	s1, s1, 16
	blt	s3, a0, .LBB33_5
.LBB33_6:
	ld	a3, 56(s0)
	lw	a6, 4(a1)
	lw	a2, 4(a3)
	lui	a5, 2
	addiw	a4, a5, -1816
	add	a0, a1, a4
	blt	a6, a2, .LBB33_8
# %bb.7:
	mv	a6, a2
.LBB33_8:
	ld	a2, 40(s0)
	sw	a6, 16(a2)
	sw	a6, 4(a2)
	sw	a6, 36(s0)
	lw	a7, 4(a1)
	sw	a6, 16(a1)
	lw	t0, 4(a3)
	sw	a6, 16(a3)
	sw	a7, 8(a2)
	sw	a7, 8(a3)
	sw	t0, 12(a2)
	lw	a6, 4(a0)
	sw	t0, 12(a1)
	add	a4, a3, a4
	addiw	a5, a5, -1820
	add	a5, a2, a5
	beqz	a6, .LBB33_10
# %bb.9:
	lw	a6, 4(a4)
	snez	a6, a6
.LBB33_10:
	lw	a7, 0(a0)
	sw	a6, 8(a5)
	beqz	a7, .LBB33_13
# %bb.11:
	lw	a6, 0(a4)
	snez	a7, a6
	sw	a7, 4(a5)
	beqz	a6, .LBB33_14
# %bb.12:
	lw	a6, 28(s0)
	sw	a6, 0(a5)
	j	.LBB33_14
.LBB33_13:
	sw	zero, 4(a5)
.LBB33_14:
	sd	a1, 156(a5)
	lw	a1, 176(a0)
	lw	a6, 184(a0)
	sd	a3, 164(a5)
	sw	zero, 40(a5)
	sw	a1, 180(a5)
	sw	a6, 188(a5)
	beqz	a6, .LBB33_16
# %bb.15:
	ld	a1, 192(a0)
	sd	a1, 196(a5)
	lw	a1, 200(a0)
	lw	a3, 188(a0)
	sw	a1, 204(a5)
	sw	a3, 192(a5)
.LBB33_16:
	sd	a2, 168(a4)
	sd	a2, 168(a0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end33:
	.size	dpb_combine_field_yuv, .Lfunc_end33-dpb_combine_field_yuv
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dpb_combine_field               # -- Begin function dpb_combine_field
	.p2align	2
	.type	dpb_combine_field,@function
dpb_combine_field:                      # @dpb_combine_field
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	call	dpb_combine_field_yuv
	ld	a0, 40(s0)
	call	UnifiedOneForthPix
	lui	a0, %hi(listXsize+4)
	lw	a0, %lo(listXsize+4)(a0)
	blez	a0, .LBB34_5
# %bb.1:
	ld	a1, 48(s0)
	ld	a2, 56(s0)
	ld	a3, 40(s0)
	addi	a4, a0, 1
	addi	a0, a1, 288
	addi	a1, a2, 288
	addi	a2, a3, 288
	srliw	a3, a4, 1
	slli	a3, a3, 3
	add	a3, a2, a3
	j	.LBB34_3
.LBB34_2:                               #   in Loop: Header=BB34_3 Depth=1
	sd	a4, 0(a2)
	addi	a2, a2, 8
	addi	a1, a1, 16
	addi	a0, a0, 16
	beq	a2, a3, .LBB34_5
.LBB34_3:                               # =>This Inner Loop Header: Depth=1
	ld	a4, 0(a0)
	ld	a5, 0(a1)
	srli	a6, a4, 63
	add	a4, a4, a6
	andi	a4, a4, -2
	srli	a6, a5, 63
	add	a5, a5, a6
	andi	a5, a5, -2
	blt	a4, a5, .LBB34_2
# %bb.4:                                #   in Loop: Header=BB34_3 Depth=1
	mv	a4, a5
	j	.LBB34_2
.LBB34_5:
	lui	a0, %hi(listXsize)
	lw	a0, %lo(listXsize)(a0)
	blez	a0, .LBB34_10
# %bb.6:
	ld	t3, 48(s0)
	ld	a1, 56(s0)
	ld	a2, 40(s0)
	addi	a3, a0, 1
	addi	a0, t3, 24
	addi	a1, a1, 24
	addi	a2, a2, 24
	srliw	a3, a3, 1
	slli	a3, a3, 3
	add	a3, a2, a3
	j	.LBB34_8
.LBB34_7:                               #   in Loop: Header=BB34_8 Depth=1
	sd	a4, 0(a2)
	addi	a2, a2, 8
	addi	a1, a1, 16
	addi	a0, a0, 16
	beq	a2, a3, .LBB34_11
.LBB34_8:                               # =>This Inner Loop Header: Depth=1
	ld	a4, 0(a0)
	ld	a5, 0(a1)
	srli	a6, a4, 63
	add	a4, a4, a6
	andi	a4, a4, -2
	srli	a6, a5, 63
	add	a5, a5, a6
	andi	a5, a5, -2
	blt	a4, a5, .LBB34_7
# %bb.9:                                #   in Loop: Header=BB34_8 Depth=1
	mv	a4, a5
	j	.LBB34_7
.LBB34_10:
	ld	t3, 48(s0)
.LBB34_11:
	lui	a0, 2
	add	a1, t3, a0
	lw	a2, -1796(a1)
	li	a1, 4
	blt	a2, a1, .LBB34_17
# %bb.12:
	li	a2, 0
	lui	a3, 524288
	addiw	a3, a3, -8
	li	a4, 1
	addiw	a5, a0, -1712
	j	.LBB34_14
.LBB34_13:                              #   in Loop: Header=BB34_14 Depth=1
	add	a6, t3, a0
	lw	a6, -1796(a6)
	addi	a2, a2, 1
	slli	a7, a6, 1
	srli	a7, a7, 62
	add	a6, a6, a7
	sraiw	a6, a6, 2
	bge	a2, a6, .LBB34_17
.LBB34_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_16 Depth 2
	add	a6, t3, a0
	lw	a6, -1800(a6)
	blt	a6, a1, .LBB34_13
# %bb.15:                               #   in Loop: Header=BB34_14 Depth=1
	li	a6, 0
	li	a7, 0
	slli	t0, a2, 1
	and	t0, t0, a3
	andi	t1, a2, 3
	or	t1, t0, t1
	addi	t0, t1, 4
	slli	t0, t0, 3
	slli	t1, t1, 3
	slli	t2, a2, 3
.LBB34_16:                              #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 40(s0)
	add	t3, t3, a0
	ld	t3, -1672(t3)
	add	t3, t3, t0
	ld	t3, 0(t3)
	add	t3, t3, a7
	sb	a4, 0(t3)
	ld	t3, 40(s0)
	add	t3, t3, a0
	ld	t3, -1672(t3)
	add	t3, t3, t1
	ld	t3, 0(t3)
	add	t3, t3, a7
	sb	a4, 0(t3)
	ld	t3, 48(s0)
	add	t3, t3, a5
	ld	t4, 24(t3)
	ld	t5, 40(s0)
	ld	t6, 0(t4)
	add	t5, t5, a5
	ld	s1, 24(t5)
	add	t6, t6, t2
	ld	t6, 0(t6)
	ld	s2, 0(s1)
	add	t6, t6, a6
	ld	t6, 0(t6)
	add	s2, s2, t1
	ld	s2, 0(s2)
	lh	s3, 0(t6)
	ld	t4, 8(t4)
	add	s2, s2, a6
	ld	s2, 0(s2)
	add	t4, t4, t2
	ld	t4, 0(t4)
	sh	s3, 0(s2)
	ld	s1, 8(s1)
	lh	t6, 2(t6)
	add	t4, t4, a6
	ld	t4, 0(t4)
	add	s1, s1, t1
	ld	s1, 0(s1)
	sh	t6, 2(s2)
	lh	t6, 0(t4)
	add	s1, s1, a6
	ld	t3, 0(t3)
	ld	s1, 0(s1)
	ld	t3, 0(t3)
	sh	t6, 0(s1)
	ld	t5, 0(t5)
	lh	t4, 2(t4)
	add	t3, t3, t2
	ld	t3, 0(t3)
	ld	t5, 0(t5)
	sh	t4, 2(s1)
	add	t3, t3, a7
	add	t5, t5, t1
	ld	t4, 0(t5)
	lbu	t3, 0(t3)
	add	t4, t4, a7
	sb	t3, 0(t4)
	ld	t4, 48(s0)
	add	t4, t4, a0
	ld	t4, -1712(t4)
	ld	t5, 40(s0)
	ld	t4, 8(t4)
	add	t5, t5, a0
	ld	t5, -1712(t5)
	add	t4, t4, t2
	ld	t4, 0(t4)
	ld	t5, 8(t5)
	add	t4, t4, a7
	add	t5, t5, t1
	ld	t5, 0(t5)
	lbu	t4, 0(t4)
	add	t5, t5, a7
	sb	t4, 0(t5)
	ld	t5, 48(s0)
	add	t6, t5, a0
	ld	s1, -1696(t6)
	ld	t6, 0(s1)
	slli	t3, t3, 3
	add	t6, t6, t2
	ld	t6, 0(t6)
	add	t3, t5, t3
	ld	s2, 24(t3)
	add	t6, t6, a6
	ld	s3, 56(s0)
	sd	s2, 0(t6)
	slli	t4, t4, 3
	add	t4, t5, t4
	add	t6, s3, a5
	ld	s2, 24(t6)
	ld	t5, 8(s1)
	ld	s1, 40(s0)
	ld	s3, 288(t4)
	ld	s4, 0(s2)
	add	s5, t5, t2
	add	t5, s1, a5
	ld	s1, 24(t5)
	add	s4, s4, t2
	ld	s4, 0(s4)
	ld	s5, 0(s5)
	ld	s6, 0(s1)
	ld	s7, 16(t5)
	add	s4, s4, a6
	ld	s4, 0(s4)
	add	s6, s6, t0
	ld	s6, 0(s6)
	add	s5, s5, a6
	ld	s8, 0(s7)
	lh	s9, 0(s4)
	add	s6, s6, a6
	ld	s6, 0(s6)
	sd	s3, 0(s5)
	add	s8, s8, t1
	ld	s3, 0(s8)
	sh	s9, 0(s6)
	ld	t3, 1608(t3)
	ld	s2, 8(s2)
	add	s3, s3, a6
	lh	s4, 2(s4)
	sd	t3, 0(s3)
	add	s2, s2, t2
	ld	t3, 0(s2)
	sh	s4, 2(s6)
	ld	s1, 8(s1)
	ld	s2, 8(s7)
	add	t3, t3, a6
	ld	t3, 0(t3)
	add	s1, s1, t0
	ld	s1, 0(s1)
	add	s2, s2, t1
	ld	s2, 0(s2)
	lh	s3, 0(t3)
	add	s1, s1, a6
	ld	t6, 0(t6)
	ld	s1, 0(s1)
	ld	t4, 1872(t4)
	add	s2, s2, a6
	ld	t6, 0(t6)
	sh	s3, 0(s1)
	ld	t5, 0(t5)
	lh	t3, 2(t3)
	add	t6, t6, t2
	ld	t6, 0(t6)
	ld	t5, 0(t5)
	sd	t4, 0(s2)
	sh	t3, 2(s1)
	add	t6, t6, a7
	add	t5, t5, t0
	ld	t3, 0(t5)
	lbu	t4, 0(t6)
	add	t3, t3, a7
	sb	t4, 0(t3)
	ld	t3, 56(s0)
	add	t3, t3, a0
	ld	t3, -1712(t3)
	ld	t5, 40(s0)
	ld	t3, 8(t3)
	add	t5, t5, a0
	ld	t5, -1712(t5)
	add	t3, t3, t2
	ld	t3, 0(t3)
	ld	t5, 8(t5)
	add	t3, t3, a7
	add	t5, t5, t0
	ld	t5, 0(t5)
	lbu	t3, 0(t3)
	add	t5, t5, a7
	sb	t3, 0(t5)
	ld	t5, 56(s0)
	add	t6, t5, a0
	ld	t6, -1696(t6)
	ld	s1, 0(t6)
	slli	t4, t4, 3
	add	t4, t5, t4
	add	s1, s1, t2
	ld	s1, 0(s1)
	ld	s2, 24(t4)
	add	s1, s1, a6
	sd	s2, 0(s1)
	ld	s1, 40(s0)
	slli	t3, t3, 3
	ld	t6, 8(t6)
	add	t3, t5, t3
	add	s1, s1, a0
	ld	t5, -1696(s1)
	add	t6, t6, t2
	ld	t6, 0(t6)
	ld	s1, 288(t3)
	ld	s2, 0(t5)
	add	t6, t6, a6
	sd	s1, 0(t6)
	add	s2, s2, t0
	ld	t6, 0(s2)
	ld	t4, 1608(t4)
	ld	s1, 48(s0)
	add	t6, t6, a6
	sd	t4, 0(t6)
	ld	t4, 8(t5)
	add	s1, s1, a0
	ld	t5, -1672(s1)
	ld	t3, 1872(t3)
	add	t4, t4, t0
	ld	t4, 0(t4)
	add	t5, t5, t2
	ld	t5, 0(t5)
	add	t4, t4, a6
	sd	t3, 0(t4)
	add	t5, t5, a7
	sb	a4, 0(t5)
	ld	t3, 56(s0)
	add	t3, t3, a0
	ld	t3, -1672(t3)
	add	t3, t3, t2
	ld	t3, 0(t3)
	add	t3, t3, a7
	sb	a4, 0(t3)
	ld	t3, 48(s0)
	add	t4, t3, a0
	lw	t4, -1800(t4)
	addi	a7, a7, 1
	slli	t5, t4, 1
	srli	t5, t5, 62
	add	t4, t4, t5
	sraiw	t4, t4, 2
	addi	a6, a6, 8
	blt	a7, t4, .LBB34_16
	j	.LBB34_13
.LBB34_17:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end34:
	.size	dpb_combine_field, .Lfunc_end34-dpb_combine_field
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	alloc_ref_pic_list_reordering_buffer # -- Begin function alloc_ref_pic_list_reordering_buffer
	.p2align	2
	.type	alloc_ref_pic_list_reordering_buffer,@function
alloc_ref_pic_list_reordering_buffer:   # @alloc_ref_pic_list_reordering_buffer
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 24(a1)
	li	a3, 2
	mv	s0, a0
	beq	a2, a3, .LBB35_2
# %bb.1:
	li	a0, 4
	bne	a2, a0, .LBB35_3
.LBB35_2:
	sd	zero, 80(s0)
	sd	zero, 72(s0)
	sd	zero, 64(s0)
	j	.LBB35_9
.LBB35_3:
	lui	a0, 22
	add	a0, a1, a0
	lw	s1, -704(a0)
	addiw	s1, s1, 1
	li	a1, 4
	mv	a0, s1
	call	calloc
	sd	a0, 64(s0)
	bnez	a0, .LBB35_5
# %bb.4:
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	call	no_mem_exit
.LBB35_5:
	li	a1, 4
	mv	a0, s1
	call	calloc
	sd	a0, 72(s0)
	bnez	a0, .LBB35_7
# %bb.6:
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	call	no_mem_exit
.LBB35_7:
	li	a1, 4
	mv	a0, s1
	call	calloc
	sd	a0, 80(s0)
	bnez	a0, .LBB35_9
# %bb.8:
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	call	no_mem_exit
.LBB35_9:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 1
	bne	a1, a2, .LBB35_16
# %bb.10:
	lui	a1, 22
	add	a0, a0, a1
	lw	s1, -700(a0)
	addiw	s1, s1, 1
	li	a1, 4
	mv	a0, s1
	call	calloc
	sd	a0, 96(s0)
	bnez	a0, .LBB35_12
# %bb.11:
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	call	no_mem_exit
.LBB35_12:
	li	a1, 4
	mv	a0, s1
	call	calloc
	sd	a0, 104(s0)
	bnez	a0, .LBB35_14
# %bb.13:
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	call	no_mem_exit
.LBB35_14:
	li	a1, 4
	mv	a0, s1
	call	calloc
	sd	a0, 112(s0)
	bnez	a0, .LBB35_17
# %bb.15:
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	no_mem_exit
.LBB35_16:
	sd	zero, 112(s0)
	sd	zero, 104(s0)
	sd	zero, 96(s0)
.LBB35_17:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end35:
	.size	alloc_ref_pic_list_reordering_buffer, .Lfunc_end35-alloc_ref_pic_list_reordering_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_ref_pic_list_reordering_buffer # -- Begin function free_ref_pic_list_reordering_buffer
	.p2align	2
	.type	free_ref_pic_list_reordering_buffer,@function
free_ref_pic_list_reordering_buffer:    # @free_ref_pic_list_reordering_buffer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 64(a0)
	beqz	a0, .LBB36_2
# %bb.1:
	call	free
.LBB36_2:
	ld	a0, 72(s0)
	beqz	a0, .LBB36_4
# %bb.3:
	call	free
.LBB36_4:
	ld	a0, 80(s0)
	beqz	a0, .LBB36_6
# %bb.5:
	call	free
.LBB36_6:
	ld	a0, 96(s0)
	sd	zero, 80(s0)
	sd	zero, 72(s0)
	sd	zero, 64(s0)
	beqz	a0, .LBB36_8
# %bb.7:
	call	free
.LBB36_8:
	ld	a0, 104(s0)
	beqz	a0, .LBB36_10
# %bb.9:
	call	free
.LBB36_10:
	ld	a0, 112(s0)
	beqz	a0, .LBB36_12
# %bb.11:
	call	free
.LBB36_12:
	sd	zero, 112(s0)
	sd	zero, 104(s0)
	sd	zero, 96(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end36:
	.size	free_ref_pic_list_reordering_buffer, .Lfunc_end36-free_ref_pic_list_reordering_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	fill_frame_num_gap              # -- Begin function fill_frame_num_gap
	.p2align	2
	.type	fill_frame_num_gap,@function
fill_frame_num_gap:                     # @fill_frame_num_gap
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
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	a0, %hi(log2_max_frame_num_minus4)
	lw	a0, %lo(log2_max_frame_num_minus4)(a0)
	lui	a1, 22
	addiw	s1, a1, 172
	add	s1, s0, s1
	addi	a0, a0, 4
	li	s2, 1
	lw	a1, 188(s1)
	sllw	s3, s2, a0
	lw	s5, 0(s1)
	lw	s4, 32(s1)
	addi	a1, a1, 1
	remw	s6, a1, s3
	sw	s2, 32(s1)
	beq	s5, s6, .LBB37_3
# %bb.1:
	lui	a0, 2
	addiw	s7, a0, -1828
	slli	s8, s2, 32
	addi	s8, s8, 1
.LBB37_2:                               # =>This Inner Loop Header: Depth=1
	lw	a1, 52(s0)
	lw	a2, 60(s0)
	lw	a3, 56(s0)
	lw	a4, 64(s0)
	li	a0, 0
	call	alloc_storable_picture
	add	a1, a0, s7
	sw	s2, 48(a1)
	sw	s6, 0(a1)
	sd	s8, 20(a1)
	sw	zero, 36(s1)
	call	store_picture_in_dpb
	addi	s6, s6, 1
	remw	s6, s6, s3
	bne	s5, s6, .LBB37_2
.LBB37_3:
	sw	s4, 32(s1)
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
	ret
.Lfunc_end37:
	.size	fill_frame_num_gap, .Lfunc_end37-fill_frame_num_gap
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	alloc_colocated                 # -- Begin function alloc_colocated
	.p2align	2
	.type	alloc_colocated,@function
alloc_colocated:                        # @alloc_colocated
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
	mv	s0, a2
	mv	s3, a1
	mv	s2, a0
	lui	s5, 1
	addiw	a1, s5, 784
	li	a0, 1
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB38_2
# %bb.1:
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	call	no_mem_exit
.LBB38_2:
	sw	s2, 4(s1)
	sw	s3, 8(s1)
	addi	a0, s1, 1600
	slli	s6, s3, 1
	srli	a1, s6, 62
	add	a1, s3, a1
	sraiw	s4, a1, 2
	slli	a1, s2, 1
	srli	a1, a1, 62
	add	a1, s2, a1
	sraiw	s2, a1, 2
	li	a1, 2
	mv	a2, s4
	mv	a3, s2
	call	get_mem3D
	addi	a0, s1, 1608
	li	a1, 2
	mv	a2, s4
	mv	a3, s2
	call	get_mem3Dint64
	addi	a0, s1, 1616
	li	a1, 2
	li	a4, 2
	mv	a2, s4
	mv	a3, s2
	call	get_mem4Dshort
	addi	a0, s1, 1624
	mv	a1, s4
	mv	a2, s2
	call	get_mem2D
	addiw	a0, s5, 776
	add	a0, s1, a0
	mv	a1, s4
	mv	a2, s2
	call	get_mem2D
	beqz	s0, .LBB38_4
# %bb.3:
	addi	s4, s1, 2047
	addi	a0, s4, 1169
	srli	a1, s6, 61
	add	a1, s3, a1
	sraiw	s3, a1, 3
	li	a1, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem3D
	addi	a0, s4, 1177
	li	a1, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem3Dint64
	addi	a0, s4, 1185
	li	a1, 2
	li	a4, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem4Dshort
	addi	a0, s4, 1193
	mv	a1, s3
	mv	a2, s2
	call	get_mem2D
	lui	s4, 1
	addiw	a0, s4, 736
	add	a0, s1, a0
	li	a1, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem3D
	addiw	a0, s4, 744
	add	a0, s1, a0
	li	a1, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem3Dint64
	addiw	a0, s4, 752
	add	a0, s1, a0
	li	a1, 2
	li	a4, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem4Dshort
	addiw	a0, s4, 760
	add	a0, s1, a0
	mv	a1, s3
	mv	a2, s2
	call	get_mem2D
.LBB38_4:
	sw	s0, 0(s1)
	mv	a0, s1
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
.Lfunc_end38:
	.size	alloc_colocated, .Lfunc_end38-alloc_colocated
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_colocated                  # -- Begin function free_colocated
	.p2align	2
	.type	free_colocated,@function
free_colocated:                         # @free_colocated
# %bb.0:
	beqz	a0, .LBB39_11
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 1600(a0)
	addi	a1, s0, 2047
	addi	s1, a1, 1169
	li	a1, 2
	call	free_mem3D
	ld	a0, 1608(s0)
	li	a1, 2
	call	free_mem3Dint64
	lw	a1, 8(s0)
	ld	a0, 1616(s0)
	slli	a2, a1, 1
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a2, a1, 2
	li	a1, 2
	call	free_mem4Dshort
	ld	a0, 1624(s0)
	beqz	a0, .LBB39_3
# %bb.2:
	call	free_mem2D
	sd	zero, 1624(s0)
.LBB39_3:
	ld	a0, 1656(s1)
	beqz	a0, .LBB39_5
# %bb.4:
	call	free_mem2D
	sd	zero, 1656(s1)
.LBB39_5:
	lw	a0, 0(s0)
	beqz	a0, .LBB39_10
# %bb.6:
	ld	a0, 0(s1)
	li	a1, 2
	call	free_mem3D
	ld	a0, 8(s1)
	li	a1, 2
	call	free_mem3Dint64
	lw	a1, 8(s0)
	ld	a0, 16(s1)
	slli	a2, a1, 1
	srli	a2, a2, 61
	add	a1, a1, a2
	sraiw	a2, a1, 3
	li	a1, 2
	call	free_mem4Dshort
	ld	a0, 24(s1)
	beqz	a0, .LBB39_8
# %bb.7:
	call	free_mem2D
	sd	zero, 24(s1)
.LBB39_8:
	ld	a0, 1616(s1)
	li	a1, 2
	call	free_mem3D
	ld	a0, 1624(s1)
	li	a1, 2
	call	free_mem3Dint64
	lw	a1, 8(s0)
	ld	a0, 1632(s1)
	slli	a2, a1, 1
	srli	a2, a2, 61
	add	a1, a1, a2
	sraiw	a2, a1, 3
	li	a1, 2
	call	free_mem4Dshort
	ld	a0, 1640(s1)
	beqz	a0, .LBB39_10
# %bb.9:
	call	free_mem2D
.LBB39_10:
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	free
.LBB39_11:
	ret
.Lfunc_end39:
	.size	free_colocated, .Lfunc_end39-free_colocated
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	compute_colocated               # -- Begin function compute_colocated
	.p2align	2
	.type	compute_colocated,@function
compute_colocated:                      # @compute_colocated
# %bb.0:
	addi	sp, sp, -96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	s4, %lo(img)(a2)
	ld	a2, 8(a1)
	lui	a3, 22
	add	a3, s4, a3
	lw	a3, 108(a3)
	ld	t0, 0(a2)
	addi	a2, a0, 2047
	beqz	a3, .LBB40_2
# %bb.1:
	ld	a3, 24(a1)
	ld	a4, 40(a1)
	ld	a7, 0(a3)
	ld	a6, 0(a4)
	j	.LBB40_10
.LBB40_2:
	lw	a3, 28(s4)
	beqz	a3, .LBB40_4
# %bb.3:
	lw	a4, 0(t0)
	bne	a3, a4, .LBB40_5
.LBB40_4:
	mv	a6, t0
	mv	a7, t0
	j	.LBB40_10
.LBB40_5:
	lui	a4, 2
	addiw	a4, a4, -1780
	add	a4, t0, a4
	lw	a5, 0(a4)
	mv	a6, t0
	mv	a7, t0
	beqz	a5, .LBB40_10
# %bb.6:
	li	a5, 1
	bne	a3, a5, .LBB40_8
# %bb.7:
	ld	a6, 116(a4)
	j	.LBB40_9
.LBB40_8:
	ld	a6, 124(a4)
.LBB40_9:
	mv	a7, a6
	mv	t0, a6
.LBB40_10:
	lui	a3, %hi(active_sps)
	ld	t1, %lo(active_sps)(a3)
	addi	a3, a2, 1169
	lui	a2, 2
	lw	t2, 1148(t1)
	addiw	a2, a2, -1816
	add	a4, a6, a2
	add	a5, a7, a2
	add	a2, t0, a2
	beqz	t2, .LBB40_12
# %bb.11:
	lw	t0, 1156(t1)
	beqz	t0, .LBB40_26
.LBB40_12:
	lw	t6, 20(a2)
	li	t0, 4
	blt	t6, t0, .LBB40_26
# %bb.13:
	li	t1, 0
	lui	t2, 262144
	addi	t2, t2, -4
	lw	s5, 16(a2)
	lui	t3, %hi(img)
	lui	t4, 22
	lui	t5, %hi(enc_picture)
	j	.LBB40_16
.LBB40_14:                              #   in Loop: Header=BB40_16 Depth=1
	lw	t6, 20(a2)
.LBB40_15:                              #   in Loop: Header=BB40_16 Depth=1
	addi	t1, t1, 1
	sraiw	s0, t6, 31
	srliw	s0, s0, 30
	add	s0, t6, s0
	sraiw	s0, s0, 2
	bge	t1, s0, .LBB40_25
.LBB40_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_20 Depth 2
	blt	s5, t0, .LBB40_15
# %bb.17:                               #   in Loop: Header=BB40_16 Depth=1
	li	t6, 0
	li	s0, 0
	srliw	s1, t1, 1
	and	s2, s1, t2
	addw	s2, s2, s1
	addiw	s3, s2, 4
	slli	s4, t1, 3
	j	.LBB40_20
.LBB40_18:                              #   in Loop: Header=BB40_20 Depth=2
	ld	s5, 128(a2)
	ld	s6, 0(s5)
	ld	s7, 1616(a0)
	add	s6, s6, s4
	ld	s6, 0(s6)
	ld	s8, 0(s7)
	add	s6, s6, t6
	ld	s6, 0(s6)
	add	s8, s8, s4
	ld	s8, 0(s8)
	lh	s9, 0(s6)
	ld	s5, 8(s5)
	add	s8, s8, t6
	ld	s8, 0(s8)
	add	s5, s5, s4
	ld	s5, 0(s5)
	sh	s9, 0(s8)
	ld	s9, 8(s7)
	lh	s6, 2(s6)
	add	s5, s5, t6
	ld	s7, 0(s5)
	add	s9, s9, s4
	ld	s5, 0(s9)
	sh	s6, 2(s8)
	lh	s6, 0(s7)
	add	s5, s5, t6
	ld	s8, 0(s5)
	sh	s6, 0(s8)
	mv	s9, t1
	mv	s6, t1
	mv	s5, a2
.LBB40_19:                              #   in Loop: Header=BB40_20 Depth=2
	ld	s10, 104(s5)
	ld	s10, 0(s10)
	lh	s7, 2(s7)
	ld	s11, 1600(a0)
	slli	s9, s9, 3
	add	s10, s10, s9
	ld	s10, 0(s10)
	ld	s11, 0(s11)
	sh	s7, 2(s8)
	add	s10, s10, s0
	add	s11, s11, s4
	ld	s7, 0(s11)
	lbu	s8, 0(s10)
	add	s7, s7, s0
	sb	s8, 0(s7)
	ld	s7, 104(s5)
	ld	s7, 8(s7)
	ld	s8, 1600(a0)
	add	s7, s7, s9
	ld	s7, 0(s7)
	ld	s8, 8(s8)
	add	s7, s7, s0
	add	s8, s8, s4
	ld	s8, 0(s8)
	lbu	s7, 0(s7)
	add	s8, s8, s0
	sb	s7, 0(s8)
	ld	s7, 120(a2)
	ld	s8, 1608(a0)
	ld	s9, 0(s7)
	slli	s6, s6, 3
	ld	s10, 0(s8)
	add	s9, s9, s6
	ld	s9, 0(s9)
	add	s10, s10, s4
	ld	s10, 0(s10)
	add	s9, s9, t6
	ld	s7, 8(s7)
	ld	s9, 0(s9)
	add	s10, s10, t6
	ld	s8, 8(s8)
	add	s6, s7, s6
	ld	s6, 0(s6)
	sd	s9, 0(s10)
	add	s8, s8, s4
	ld	s7, 0(s8)
	add	s6, s6, t6
	ld	s6, 0(s6)
	lbu	s8, 0(s5)
	add	s7, s7, t6
	lw	s5, 16(a2)
	sd	s6, 0(s7)
	sb	s8, 1648(a3)
	addi	s0, s0, 1
	slli	s6, s5, 1
	srli	s6, s6, 62
	add	s6, s5, s6
	sraiw	s6, s6, 2
	addi	t6, t6, 8
	bge	s0, s6, .LBB40_14
.LBB40_20:                              #   Parent Loop BB40_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s5, %lo(img)(t3)
	add	s5, s5, t4
	lw	s5, 108(s5)
	beqz	s5, .LBB40_18
# %bb.21:                               #   in Loop: Header=BB40_20 Depth=2
	ld	s5, 144(a2)
	add	s5, s5, s4
	ld	s5, 0(s5)
	add	s5, s5, s0
	lbu	s5, 0(s5)
	beqz	s5, .LBB40_18
# %bb.22:                               #   in Loop: Header=BB40_20 Depth=2
	ld	s5, %lo(enc_picture)(t5)
	lw	s6, 4(s5)
	lw	s7, 4(a6)
	ld	s5, 1616(a0)
	sub	s7, s6, s7
	ld	s8, 0(s5)
	sraiw	s9, s7, 31
	xor	s7, s7, s9
	lw	s10, 4(a7)
	add	s8, s8, s4
	ld	s8, 0(s8)
	subw	s7, s7, s9
	sub	s9, s6, s10
	sraiw	s10, s9, 31
	add	s8, s8, t6
	ld	s6, 0(s8)
	xor	s8, s9, s10
	subw	s8, s8, s10
	bgeu	s8, s7, .LBB40_24
# %bb.23:                               #   in Loop: Header=BB40_20 Depth=2
	ld	s7, 128(a5)
	ld	s8, 0(s7)
	slli	s9, s1, 3
	add	s8, s8, s9
	ld	s8, 0(s8)
	add	s8, s8, t6
	ld	s8, 0(s8)
	ld	s7, 8(s7)
	lh	s10, 0(s8)
	add	s7, s7, s9
	ld	s7, 0(s7)
	sh	s10, 0(s6)
	ld	s5, 8(s5)
	lh	s8, 2(s8)
	add	s7, s7, t6
	ld	s7, 0(s7)
	add	s5, s5, s4
	ld	s5, 0(s5)
	sh	s8, 2(s6)
	lh	s6, 0(s7)
	add	s5, s5, t6
	ld	s8, 0(s5)
	sh	s6, 0(s8)
	mv	s9, s1
	mv	s6, s2
	mv	s5, a5
	j	.LBB40_19
.LBB40_24:                              #   in Loop: Header=BB40_20 Depth=2
	ld	s7, 128(a4)
	ld	s8, 0(s7)
	slli	s9, s1, 3
	add	s8, s8, s9
	ld	s8, 0(s8)
	add	s8, s8, t6
	ld	s8, 0(s8)
	ld	s7, 8(s7)
	lh	s10, 0(s8)
	add	s7, s7, s9
	ld	s7, 0(s7)
	sh	s10, 0(s6)
	ld	s5, 8(s5)
	lh	s8, 2(s8)
	add	s7, s7, t6
	ld	s7, 0(s7)
	add	s5, s5, s4
	ld	s5, 0(s5)
	sh	s8, 2(s6)
	lh	s6, 0(s7)
	add	s5, s5, t6
	ld	s8, 0(s5)
	sh	s6, 0(s8)
	mv	s9, s1
	mv	s6, s3
	mv	s5, a4
	j	.LBB40_19
.LBB40_25:
	lui	a6, %hi(img)
	ld	s4, %lo(img)(a6)
.LBB40_26:
	lw	a6, 28(s4)
	bnez	a6, .LBB40_28
# %bb.27:
	lui	a6, 22
	add	a6, s4, a6
	lw	a6, 108(a6)
	beqz	a6, .LBB40_69
.LBB40_28:
	lw	t6, 20(a2)
	li	a6, 8
	blt	t6, a6, .LBB40_69
# %bb.29:
	li	a6, 0
	li	a7, -1
	srli	a7, a7, 32
	lui	t0, 524288
	addiw	t0, t0, -2
	lw	s5, 16(a2)
	li	t1, 4
	lui	t2, 22
	lui	t3, %hi(img)
	li	t4, 1
	li	t5, 2
	j	.LBB40_32
.LBB40_30:                              #   in Loop: Header=BB40_32 Depth=1
	lw	t6, 20(a2)
.LBB40_31:                              #   in Loop: Header=BB40_32 Depth=1
	addi	a6, a6, 1
	sraiw	s0, t6, 31
	srliw	s0, s0, 29
	add	s0, t6, s0
	sraiw	s0, s0, 3
	bge	a6, s0, .LBB40_69
.LBB40_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_41 Depth 2
	blt	s5, t1, .LBB40_31
# %bb.33:                               #   in Loop: Header=BB40_32 Depth=1
	andi	t6, a6, 2
	beqz	t6, .LBB40_35
# %bb.34:                               #   in Loop: Header=BB40_32 Depth=1
	ori	s1, a6, 1
	j	.LBB40_36
.LBB40_35:                              #   in Loop: Header=BB40_32 Depth=1
	and	s1, a6, t0
.LBB40_36:                              #   in Loop: Header=BB40_32 Depth=1
	li	t6, 0
	li	s0, 0
	and	s1, s1, a7
	slli	s3, a6, 1
	slli	s1, s1, 3
	slli	s2, a6, 3
	slli	s3, s3, 3
	j	.LBB40_41
.LBB40_37:                              #   in Loop: Header=BB40_41 Depth=2
	li	s4, 1
.LBB40_38:                              #   in Loop: Header=BB40_41 Depth=2
	ld	s5, 24(a3)
	add	s5, s5, s2
	ld	s5, 0(s5)
	add	s5, s5, s0
	sb	s4, 0(s5)
	ld	s4, %lo(img)(t3)
	add	s5, s4, t2
	lw	s5, -708(s5)
.LBB40_39:                              #   in Loop: Header=BB40_41 Depth=2
	beqz	s5, .LBB40_65
.LBB40_40:                              #   in Loop: Header=BB40_41 Depth=2
	lw	s5, 16(a2)
	addi	s0, s0, 1
	slli	s6, s5, 1
	srli	s6, s6, 62
	add	s6, s5, s6
	sraiw	s6, s6, 2
	addi	t6, t6, 8
	bge	s0, s6, .LBB40_30
.LBB40_41:                              #   Parent Loop BB40_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	s5, s0, 2
	beqz	s5, .LBB40_43
# %bb.42:                               #   in Loop: Header=BB40_41 Depth=2
	ori	s5, s0, 1
	j	.LBB40_44
.LBB40_43:                              #   in Loop: Header=BB40_41 Depth=2
	and	s5, s0, t0
.LBB40_44:                              #   in Loop: Header=BB40_41 Depth=2
	add	s4, s4, t2
	lw	s6, 108(s4)
	and	s5, s5, a7
	slli	s4, s5, 3
	beqz	s6, .LBB40_51
# %bb.45:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s6, 128(a4)
	ld	s7, 0(s6)
	ld	s8, 1632(a3)
	add	s7, s7, s1
	ld	s7, 0(s7)
	ld	s9, 0(s8)
	add	s7, s7, s4
	ld	s7, 0(s7)
	add	s9, s9, s2
	ld	s9, 0(s9)
	lh	s10, 0(s7)
	ld	s6, 8(s6)
	add	s9, s9, t6
	ld	s9, 0(s9)
	add	s6, s6, s1
	ld	s6, 0(s6)
	sh	s10, 0(s9)
	ld	s8, 8(s8)
	lh	s7, 2(s7)
	add	s6, s6, s4
	ld	s6, 0(s6)
	add	s8, s8, s2
	ld	s8, 0(s8)
	sh	s7, 2(s9)
	lh	s7, 0(s6)
	add	s8, s8, t6
	ld	s9, 104(a4)
	ld	s8, 0(s8)
	ld	s9, 0(s9)
	sh	s7, 0(s8)
	ld	s7, 1616(a3)
	lh	s6, 2(s6)
	add	s9, s9, s1
	ld	s9, 0(s9)
	ld	s7, 0(s7)
	sh	s6, 2(s8)
	add	s9, s9, s5
	add	s7, s7, s2
	ld	s6, 0(s7)
	lbu	s7, 0(s9)
	add	s6, s6, s0
	sb	s7, 0(s6)
	ld	s6, 104(a4)
	ld	s6, 8(s6)
	ld	s7, 1616(a3)
	add	s6, s6, s1
	ld	s6, 0(s6)
	ld	s7, 8(s7)
	add	s6, s6, s5
	add	s7, s7, s2
	ld	s7, 0(s7)
	lbu	s6, 0(s6)
	add	s7, s7, s0
	sb	s6, 0(s7)
	ld	s6, 120(a4)
	ld	s7, 0(s6)
	ld	s8, 1624(a3)
	add	s7, s7, s1
	ld	s7, 0(s7)
	ld	s9, 0(s8)
	add	s7, s7, s4
	ld	s6, 8(s6)
	add	s9, s9, s2
	ld	s9, 0(s9)
	ld	s7, 0(s7)
	add	s6, s6, s1
	ld	s6, 0(s6)
	add	s9, s9, t6
	sd	s7, 0(s9)
	ld	s7, 8(s8)
	add	s6, s6, s4
	ld	s8, %lo(img)(t3)
	ld	s6, 0(s6)
	add	s7, s7, s2
	ld	s7, 0(s7)
	add	s8, s8, t2
	lw	s8, -708(s8)
	add	s7, s7, t6
	sd	s6, 0(s7)
	bne	s8, t4, .LBB40_59
# %bb.46:                               #   in Loop: Header=BB40_41 Depth=2
	lw	s6, 0(a4)
	bnez	s6, .LBB40_57
# %bb.47:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s6, 1616(a3)
	ld	s6, 0(s6)
	add	s6, s6, s2
	ld	s6, 0(s6)
	add	s6, s6, s0
	lbu	s6, 0(s6)
	bnez	s6, .LBB40_57
# %bb.48:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s6, 1632(a3)
	ld	s6, 0(s6)
	add	s6, s6, s2
	ld	s6, 0(s6)
	add	s6, s6, t6
	ld	s6, 0(s6)
	lh	s7, 0(s6)
	slli	s8, s7, 48
	srai	s8, s8, 63
	xor	s7, s7, s8
	subw	s7, s7, s8
	slli	s7, s7, 48
	srli	s7, s7, 48
	bltu	t4, s7, .LBB40_57
# %bb.49:                               #   in Loop: Header=BB40_41 Depth=2
	lh	s6, 2(s6)
	slli	s7, s6, 48
	srai	s7, s7, 63
	xor	s6, s6, s7
	subw	s6, s6, s7
	slli	s6, s6, 48
	srli	s6, s6, 48
	bgeu	s6, t5, .LBB40_57
# %bb.50:                               #   in Loop: Header=BB40_41 Depth=2
	li	s6, 0
	j	.LBB40_58
.LBB40_51:                              #   in Loop: Header=BB40_41 Depth=2
	ld	s6, 128(a2)
	ld	s7, 0(s6)
	ld	s8, 1616(a0)
	add	s7, s7, s1
	ld	s7, 0(s7)
	ld	s9, 0(s8)
	add	s7, s7, s4
	ld	s7, 0(s7)
	add	s9, s9, s2
	ld	s9, 0(s9)
	lh	s10, 0(s7)
	ld	s6, 8(s6)
	add	s9, s9, t6
	ld	s9, 0(s9)
	add	s6, s6, s1
	ld	s6, 0(s6)
	sh	s10, 0(s9)
	ld	s8, 8(s8)
	lh	s7, 2(s7)
	add	s6, s6, s4
	ld	s6, 0(s6)
	add	s8, s8, s2
	ld	s8, 0(s8)
	sh	s7, 2(s9)
	lh	s7, 0(s6)
	add	s8, s8, t6
	ld	s9, 104(a2)
	ld	s8, 0(s8)
	ld	s9, 0(s9)
	sh	s7, 0(s8)
	ld	s7, 1600(a0)
	lh	s6, 2(s6)
	add	s9, s9, s1
	ld	s9, 0(s9)
	ld	s7, 0(s7)
	sh	s6, 2(s8)
	add	s9, s9, s5
	add	s7, s7, s2
	ld	s6, 0(s7)
	lbu	s7, 0(s9)
	add	s6, s6, s0
	sb	s7, 0(s6)
	ld	s6, 120(a2)
	ld	s6, 0(s6)
	add	s6, s6, s1
	ld	s7, 1608(a0)
	ld	s6, 0(s6)
	ld	s8, 104(a2)
	ld	s7, 0(s7)
	add	s6, s6, s4
	ld	s6, 0(s6)
	ld	s8, 8(s8)
	add	s7, s7, s2
	ld	s9, 1600(a0)
	ld	s7, 0(s7)
	add	s8, s8, s1
	ld	s8, 0(s8)
	ld	s9, 8(s9)
	add	s7, s7, t6
	sd	s6, 0(s7)
	add	s5, s8, s5
	add	s9, s9, s2
	ld	s6, 0(s9)
	lbu	s5, 0(s5)
	add	s6, s6, s0
	sb	s5, 0(s6)
	ld	s5, 120(a2)
	ld	s5, 8(s5)
	add	s5, s5, s1
	ld	s6, 1608(a0)
	ld	s5, 0(s5)
	ld	s6, 8(s6)
	add	s4, s5, s4
	ld	s7, 0(s4)
	ld	s4, %lo(img)(t3)
	add	s6, s6, s2
	ld	s6, 0(s6)
	lw	s5, 0(a2)
	add	s8, s4, t2
	lw	s8, -708(s8)
	add	s6, s6, t6
	sd	s7, 0(s6)
	sb	s5, 1648(a3)
	bne	s8, t4, .LBB40_40
# %bb.52:                               #   in Loop: Header=BB40_41 Depth=2
	andi	s4, s5, 255
	bnez	s4, .LBB40_67
# %bb.53:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s4, 1600(a0)
	ld	s4, 0(s4)
	add	s4, s4, s2
	ld	s4, 0(s4)
	add	s4, s4, s0
	lbu	s4, 0(s4)
	bnez	s4, .LBB40_67
# %bb.54:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s4, 1616(a0)
	ld	s4, 0(s4)
	add	s4, s4, s2
	ld	s4, 0(s4)
	add	s4, s4, t6
	ld	s4, 0(s4)
	lh	s5, 0(s4)
	slli	s6, s5, 48
	srai	s6, s6, 63
	xor	s5, s5, s6
	subw	s5, s5, s6
	slli	s5, s5, 48
	srli	s5, s5, 48
	bltu	t4, s5, .LBB40_67
# %bb.55:                               #   in Loop: Header=BB40_41 Depth=2
	lh	s4, 2(s4)
	slli	s5, s4, 48
	srai	s5, s5, 63
	xor	s4, s4, s5
	subw	s4, s4, s5
	slli	s4, s4, 48
	srli	s4, s4, 48
	bgeu	s4, t5, .LBB40_67
# %bb.56:                               #   in Loop: Header=BB40_41 Depth=2
	li	s4, 0
	j	.LBB40_68
.LBB40_57:                              #   in Loop: Header=BB40_41 Depth=2
	li	s6, 1
.LBB40_58:                              #   in Loop: Header=BB40_41 Depth=2
	ld	s7, 1640(a3)
	add	s7, s7, s2
	ld	s7, 0(s7)
	add	s7, s7, s0
	sb	s6, 0(s7)
.LBB40_59:                              #   in Loop: Header=BB40_41 Depth=2
	ld	s6, 128(a5)
	ld	s7, 0(s6)
	ld	s8, 16(a3)
	add	s7, s7, s1
	ld	s7, 0(s7)
	ld	s9, 0(s8)
	add	s7, s7, s4
	ld	s7, 0(s7)
	add	s9, s9, s2
	ld	s9, 0(s9)
	lh	s10, 0(s7)
	ld	s6, 8(s6)
	add	s9, s9, t6
	ld	s9, 0(s9)
	add	s6, s6, s1
	ld	s6, 0(s6)
	sh	s10, 0(s9)
	ld	s8, 8(s8)
	lh	s7, 2(s7)
	add	s6, s6, s4
	ld	s6, 0(s6)
	add	s8, s8, s2
	ld	s8, 0(s8)
	sh	s7, 2(s9)
	lh	s7, 0(s6)
	add	s8, s8, t6
	ld	s9, 104(a5)
	ld	s8, 0(s8)
	ld	s9, 0(s9)
	sh	s7, 0(s8)
	ld	s7, 0(a3)
	lh	s6, 2(s6)
	add	s9, s9, s1
	ld	s9, 0(s9)
	ld	s7, 0(s7)
	sh	s6, 2(s8)
	add	s9, s9, s5
	add	s7, s7, s2
	ld	s6, 0(s7)
	lbu	s7, 0(s9)
	add	s6, s6, s0
	sb	s7, 0(s6)
	ld	s6, 104(a5)
	ld	s6, 8(s6)
	ld	s7, 0(a3)
	add	s6, s6, s1
	ld	s6, 0(s6)
	ld	s7, 8(s7)
	add	s5, s6, s5
	add	s7, s7, s2
	ld	s6, 0(s7)
	lbu	s5, 0(s5)
	add	s6, s6, s0
	sb	s5, 0(s6)
	ld	s5, 120(a5)
	ld	s6, 0(s5)
	ld	s7, 8(a3)
	add	s6, s6, s1
	ld	s6, 0(s6)
	ld	s8, 0(s7)
	add	s6, s6, s4
	ld	s5, 8(s5)
	add	s8, s8, s2
	ld	s8, 0(s8)
	ld	s6, 0(s6)
	add	s5, s5, s1
	ld	s5, 0(s5)
	add	s8, s8, t6
	sd	s6, 0(s8)
	ld	s6, 8(s7)
	add	s5, s5, s4
	ld	s4, %lo(img)(t3)
	ld	s7, 0(s5)
	add	s6, s6, s2
	ld	s6, 0(s6)
	add	s5, s4, t2
	lw	s5, -708(s5)
	add	s6, s6, t6
	sd	s7, 0(s6)
	bne	s5, t4, .LBB40_39
# %bb.60:                               #   in Loop: Header=BB40_41 Depth=2
	lw	s4, 0(a5)
	bnez	s4, .LBB40_37
# %bb.61:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s4, 0(a3)
	ld	s4, 0(s4)
	add	s4, s4, s2
	ld	s4, 0(s4)
	add	s4, s4, s0
	lbu	s4, 0(s4)
	bnez	s4, .LBB40_37
# %bb.62:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s4, 16(a3)
	ld	s4, 0(s4)
	add	s4, s4, s2
	ld	s4, 0(s4)
	add	s4, s4, t6
	ld	s4, 0(s4)
	lh	s5, 0(s4)
	slli	s6, s5, 48
	srai	s6, s6, 63
	xor	s5, s5, s6
	subw	s5, s5, s6
	slli	s5, s5, 48
	srli	s5, s5, 48
	bltu	t4, s5, .LBB40_37
# %bb.63:                               #   in Loop: Header=BB40_41 Depth=2
	lh	s4, 2(s4)
	slli	s5, s4, 48
	srai	s5, s5, 63
	xor	s4, s4, s5
	subw	s4, s4, s5
	slli	s4, s4, 48
	srli	s4, s4, 48
	bgeu	s4, t5, .LBB40_37
# %bb.64:                               #   in Loop: Header=BB40_41 Depth=2
	li	s4, 0
	j	.LBB40_38
.LBB40_65:                              #   in Loop: Header=BB40_41 Depth=2
	ld	s5, 144(a2)
	add	s5, s5, s3
	ld	s5, 0(s5)
	add	s5, s5, s0
	lbu	s5, 0(s5)
	bnez	s5, .LBB40_40
# %bb.66:                               #   in Loop: Header=BB40_41 Depth=2
	ld	s5, 16(a3)
	ld	s6, 0(s5)
	add	s6, s6, s2
	ld	s6, 0(s6)
	add	s6, s6, t6
	ld	s6, 0(s6)
	lhu	s7, 2(s6)
	ld	s5, 8(s5)
	srli	s8, s7, 15
	add	s5, s5, s2
	ld	s5, 0(s5)
	add	s7, s7, s8
	slli	s7, s7, 48
	srai	s7, s7, 48
	add	s5, s5, t6
	ld	s5, 0(s5)
	ld	s8, 1632(a3)
	srli	s7, s7, 1
	sh	s7, 2(s6)
	lhu	s6, 2(s5)
	ld	s7, 0(s8)
	srli	s9, s6, 15
	add	s7, s7, s2
	ld	s7, 0(s7)
	add	s6, s6, s9
	slli	s6, s6, 48
	srai	s6, s6, 48
	add	s7, s7, t6
	ld	s7, 0(s7)
	srli	s6, s6, 1
	ld	s8, 8(s8)
	sh	s6, 2(s5)
	lhu	s5, 2(s7)
	add	s8, s8, s2
	ld	s6, 0(s8)
	srli	s8, s5, 15
	add	s5, s5, s8
	slli	s5, s5, 48
	add	s6, s6, t6
	ld	s6, 0(s6)
	srai	s5, s5, 48
	srli	s5, s5, 1
	sh	s5, 2(s7)
	lhu	s5, 2(s6)
	srli	s7, s5, 15
	add	s5, s5, s7
	slli	s5, s5, 48
	srai	s5, s5, 48
	srli	s5, s5, 1
	sh	s5, 2(s6)
	j	.LBB40_40
.LBB40_67:                              #   in Loop: Header=BB40_41 Depth=2
	li	s4, 1
.LBB40_68:                              #   in Loop: Header=BB40_41 Depth=2
	ld	s5, 1624(a0)
	add	s5, s5, s2
	ld	s5, 0(s5)
	add	s5, s5, s0
	sb	s4, 0(s5)
	ld	s4, %lo(img)(t3)
	j	.LBB40_40
.LBB40_69:
	lui	a4, %hi(active_sps)
	ld	a5, %lo(active_sps)(a4)
	lw	a6, 1148(a5)
	beqz	a6, .LBB40_71
# %bb.70:
	lw	a4, 1156(a5)
	beqz	a4, .LBB40_84
.LBB40_71:
	lw	a4, 28(s4)
	bnez	a4, .LBB40_86
# %bb.72:
	lw	t3, 20(a2)
	li	a4, 4
	blt	t3, a4, .LBB40_86
# %bb.73:
	li	a5, 0
	lui	a6, 262144
	addiw	a6, a6, -4
	addi	a7, a2, 160
	lw	s2, 16(a2)
	addi	t0, a2, 152
	lui	t1, %hi(enc_picture)
	lui	t2, 2
	j	.LBB40_76
.LBB40_74:                              #   in Loop: Header=BB40_76 Depth=1
	lw	t3, 20(a2)
.LBB40_75:                              #   in Loop: Header=BB40_76 Depth=1
	addi	a5, a5, 1
	sraiw	t4, t3, 31
	srliw	t4, t4, 30
	add	t4, t3, t4
	sraiw	t4, t4, 2
	bge	a5, t4, .LBB40_85
.LBB40_76:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_81 Depth 2
	blt	s2, a4, .LBB40_75
# %bb.77:                               #   in Loop: Header=BB40_76 Depth=1
	li	t3, 0
	li	t4, 0
	srliw	s1, a5, 1
	and	t5, s1, a6
	add	t5, t5, s1
	addi	t6, t5, 4
	slli	s0, a5, 3
	slli	s1, s1, 3
	j	.LBB40_81
.LBB40_78:                              #   in Loop: Header=BB40_81 Depth=2
	add	s3, s2, t2
	ld	s3, -1688(s3)
	ld	s6, 0(s3)
	add	s6, s6, s1
	ld	s6, 0(s6)
	add	s6, s6, t3
	ld	s6, 0(s6)
	ld	s3, 8(s3)
	lh	s7, 0(s6)
	add	s3, s3, s1
	ld	s3, 0(s3)
	sh	s7, 0(s5)
	ld	s4, 8(s4)
	lh	s7, 2(s6)
	add	s3, s3, t3
	ld	s6, 0(s3)
	add	s4, s4, s0
	ld	s3, 0(s4)
	sh	s7, 2(s5)
	lh	s4, 0(s6)
	add	s3, s3, t3
	ld	s5, 0(s3)
	sh	s4, 0(s5)
	mv	s3, s2
	mv	s2, a7
	mv	s4, t6
.LBB40_79:                              #   in Loop: Header=BB40_81 Depth=2
	add	s3, s3, t2
	ld	s3, -1712(s3)
	ld	s3, 0(s3)
	ld	s7, 1600(a0)
	lh	s6, 2(s6)
	add	s3, s3, s1
	ld	s3, 0(s3)
	ld	s7, 0(s7)
	sh	s6, 2(s5)
	add	s3, s3, t4
	add	s7, s7, s0
	ld	s5, 0(s7)
	lbu	s3, 0(s3)
	add	s5, s5, t4
	sb	s3, 0(s5)
	ld	s3, 0(s2)
	add	s3, s3, t2
	ld	s3, -1712(s3)
	ld	s3, 8(s3)
	ld	s5, 1600(a0)
	add	s3, s3, s1
	ld	s3, 0(s3)
	ld	s5, 8(s5)
	add	s3, s3, t4
	add	s5, s5, s0
	ld	s5, 0(s5)
	lbu	s3, 0(s3)
	add	s5, s5, t4
	sb	s3, 0(s5)
	ld	s3, 120(a2)
	ld	s5, 0(s3)
	slli	s4, s4, 3
	ld	s6, 1608(a0)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s7, 0(s6)
	add	s5, s5, t3
	ld	s3, 8(s3)
	add	s7, s7, s0
	ld	s7, 0(s7)
	ld	s5, 0(s5)
	add	s3, s3, s4
	ld	s3, 0(s3)
	add	s7, s7, t3
	sd	s5, 0(s7)
	ld	s4, 8(s6)
	add	s3, s3, t3
	ld	s2, 0(s2)
	ld	s3, 0(s3)
	add	s4, s4, s0
	ld	s4, 0(s4)
	add	s2, s2, t2
	lbu	s2, -1816(s2)
	add	s4, s4, t3
	sd	s3, 0(s4)
	sb	s2, 1648(a3)
.LBB40_80:                              #   in Loop: Header=BB40_81 Depth=2
	lw	s2, 16(a2)
	addi	t4, t4, 1
	slli	s3, s2, 1
	srli	s3, s3, 62
	add	s3, s2, s3
	sraiw	s3, s3, 2
	addi	t3, t3, 8
	bge	t4, s3, .LBB40_74
.LBB40_81:                              #   Parent Loop BB40_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s2, 144(a2)
	add	s2, s2, s0
	ld	s2, 0(s2)
	add	s2, s2, t4
	lbu	s2, 0(s2)
	beqz	s2, .LBB40_80
# %bb.82:                               #   in Loop: Header=BB40_81 Depth=2
	ld	s3, %lo(enc_picture)(t1)
	ld	s2, 0(a7)
	lw	s5, 4(s3)
	lw	s3, 4(s2)
	ld	s4, 1616(a0)
	sub	s6, s5, s3
	ld	s3, 0(t0)
	ld	s7, 0(s4)
	sraiw	s8, s6, 31
	xor	s6, s6, s8
	lw	s9, 4(s3)
	add	s7, s7, s0
	ld	s7, 0(s7)
	subw	s6, s6, s8
	sub	s8, s5, s9
	sraiw	s9, s8, 31
	add	s7, s7, t3
	ld	s5, 0(s7)
	xor	s7, s8, s9
	subw	s7, s7, s9
	bgeu	s7, s6, .LBB40_78
# %bb.83:                               #   in Loop: Header=BB40_81 Depth=2
	add	s2, s3, t2
	ld	s2, -1688(s2)
	ld	s6, 0(s2)
	add	s6, s6, s1
	ld	s6, 0(s6)
	add	s6, s6, t3
	ld	s6, 0(s6)
	ld	s2, 8(s2)
	lh	s7, 0(s6)
	add	s2, s2, s1
	ld	s2, 0(s2)
	sh	s7, 0(s5)
	ld	s4, 8(s4)
	lh	s7, 2(s6)
	add	s2, s2, t3
	ld	s6, 0(s2)
	add	s4, s4, s0
	ld	s2, 0(s4)
	sh	s7, 2(s5)
	lh	s4, 0(s6)
	add	s2, s2, t3
	ld	s5, 0(s2)
	sh	s4, 0(s5)
	mv	s2, t0
	mv	s4, t5
	j	.LBB40_79
.LBB40_84:
	lbu	a6, 0(a2)
	addi	a4, a3, 1648
	sb	a6, 1648(a3)
	j	.LBB40_87
.LBB40_85:
	lui	a4, %hi(active_sps)
	ld	a5, %lo(active_sps)(a4)
	lw	a6, 1148(a5)
.LBB40_86:
	lbu	a7, 0(a2)
	addi	a4, a3, 1648
	sb	a7, 1648(a3)
	beqz	a6, .LBB40_88
.LBB40_87:
	lw	a3, 1156(a5)
	beqz	a3, .LBB40_109
.LBB40_88:
	lw	t4, 20(a2)
	li	a3, 4
	blt	t4, a3, .LBB40_124
# %bb.89:
	li	a5, 0
	li	a6, -1
	srli	a6, a6, 32
	lui	a7, 524288
	addiw	a7, a7, -2
	lw	s1, 16(a2)
	lui	t0, %hi(img)
	lui	t1, 22
	li	t2, 1
	li	t3, 2
	j	.LBB40_92
.LBB40_90:                              #   in Loop: Header=BB40_92 Depth=1
	lw	t4, 20(a2)
.LBB40_91:                              #   in Loop: Header=BB40_92 Depth=1
	addi	a5, a5, 1
	sraiw	t5, t4, 31
	srliw	t5, t5, 30
	add	t5, t4, t5
	sraiw	t5, t5, 2
	bge	a5, t5, .LBB40_124
.LBB40_92:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_100 Depth 2
	blt	s1, a3, .LBB40_91
# %bb.93:                               #   in Loop: Header=BB40_92 Depth=1
	andi	t4, a5, 2
	beqz	t4, .LBB40_95
# %bb.94:                               #   in Loop: Header=BB40_92 Depth=1
	ori	t6, a5, 1
	j	.LBB40_96
.LBB40_95:                              #   in Loop: Header=BB40_92 Depth=1
	and	t6, a5, a7
.LBB40_96:                              #   in Loop: Header=BB40_92 Depth=1
	li	t4, 0
	li	t5, 0
	and	t6, t6, a6
	slli	t6, t6, 3
	slli	s0, a5, 3
	j	.LBB40_100
.LBB40_97:                              #   in Loop: Header=BB40_100 Depth=2
	li	s1, 1
.LBB40_98:                              #   in Loop: Header=BB40_100 Depth=2
	ld	s2, 1624(a0)
	add	s2, s2, s0
	ld	s2, 0(s2)
	add	s2, s2, t5
	sb	s1, 0(s2)
.LBB40_99:                              #   in Loop: Header=BB40_100 Depth=2
	lw	s1, 16(a2)
	addi	t5, t5, 1
	slli	s2, s1, 1
	srli	s2, s2, 62
	add	s2, s1, s2
	sraiw	s2, s2, 2
	addi	t4, t4, 8
	bge	t5, s2, .LBB40_90
.LBB40_100:                             #   Parent Loop BB40_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	s1, t5, 2
	beqz	s1, .LBB40_102
# %bb.101:                              #   in Loop: Header=BB40_100 Depth=2
	ori	s1, t5, 1
	j	.LBB40_103
.LBB40_102:                             #   in Loop: Header=BB40_100 Depth=2
	and	s1, t5, a7
.LBB40_103:                             #   in Loop: Header=BB40_100 Depth=2
	ld	s2, 1616(a0)
	ld	s3, 0(s2)
	add	s4, s3, t6
	ld	s4, 0(s4)
	and	s5, s1, a6
	slli	s1, s5, 3
	add	s4, s4, s1
	ld	s4, 0(s4)
	add	s3, s3, s0
	ld	s3, 0(s3)
	ld	s2, 8(s2)
	lh	s6, 0(s4)
	add	s3, s3, t4
	ld	s3, 0(s3)
	add	s7, s2, t6
	ld	s7, 0(s7)
	sh	s6, 0(s3)
	lh	s4, 2(s4)
	add	s7, s7, s1
	ld	s6, 0(s7)
	add	s2, s2, s0
	ld	s2, 0(s2)
	sh	s4, 2(s3)
	lh	s3, 0(s6)
	ld	s4, 1600(a0)
	add	s2, s2, t4
	ld	s2, 0(s2)
	ld	s4, 0(s4)
	sh	s3, 0(s2)
	lh	s3, 2(s6)
	add	s6, s4, t6
	ld	s6, 0(s6)
	sh	s3, 2(s2)
	add	s6, s6, s5
	add	s4, s4, s0
	ld	s2, 0(s4)
	lbu	s3, 0(s6)
	add	s2, s2, t5
	sb	s3, 0(s2)
	ld	s2, 1600(a0)
	ld	s2, 8(s2)
	add	s3, s2, t6
	ld	s3, 0(s3)
	add	s3, s3, s5
	add	s2, s2, s0
	ld	s2, 0(s2)
	lbu	s3, 0(s3)
	add	s2, s2, t5
	sb	s3, 0(s2)
	ld	s2, 1608(a0)
	ld	s3, 0(s2)
	add	s4, s3, t6
	ld	s4, 0(s4)
	add	s4, s4, s1
	ld	s2, 8(s2)
	ld	s4, 0(s4)
	add	s3, s3, s0
	ld	s3, 0(s3)
	add	s5, s2, t6
	ld	s5, 0(s5)
	add	s3, s3, t4
	sd	s4, 0(s3)
	add	s1, s5, s1
	ld	s3, %lo(img)(t0)
	ld	s1, 0(s1)
	add	s2, s2, s0
	ld	s2, 0(s2)
	add	s3, s3, t1
	lw	s3, -708(s3)
	add	s2, s2, t4
	sd	s1, 0(s2)
	bne	s3, t2, .LBB40_99
# %bb.104:                              #   in Loop: Header=BB40_100 Depth=2
	lbu	s1, 0(a4)
	bnez	s1, .LBB40_97
# %bb.105:                              #   in Loop: Header=BB40_100 Depth=2
	ld	s1, 1600(a0)
	ld	s1, 0(s1)
	add	s1, s1, s0
	ld	s1, 0(s1)
	add	s1, s1, t5
	lbu	s1, 0(s1)
	bnez	s1, .LBB40_97
# %bb.106:                              #   in Loop: Header=BB40_100 Depth=2
	ld	s1, 1616(a0)
	ld	s1, 0(s1)
	add	s1, s1, s0
	ld	s1, 0(s1)
	add	s1, s1, t4
	ld	s1, 0(s1)
	lh	s2, 0(s1)
	slli	s3, s2, 48
	srai	s3, s3, 63
	xor	s2, s2, s3
	subw	s2, s2, s3
	slli	s2, s2, 48
	srli	s2, s2, 48
	bltu	t2, s2, .LBB40_97
# %bb.107:                              #   in Loop: Header=BB40_100 Depth=2
	lh	s1, 2(s1)
	slli	s2, s1, 48
	srai	s2, s2, 63
	xor	s1, s1, s2
	subw	s1, s1, s2
	slli	s1, s1, 48
	srli	s1, s1, 48
	bgeu	s1, t3, .LBB40_97
# %bb.108:                              #   in Loop: Header=BB40_100 Depth=2
	li	s1, 0
	j	.LBB40_98
.LBB40_109:
	lw	t4, 20(a2)
	li	a3, 4
	blt	t4, a3, .LBB40_124
# %bb.110:
	li	a5, 0
	lw	t5, 16(a2)
	lui	a6, %hi(img)
	lui	a7, 22
	li	t0, 1
	li	t1, 2
	j	.LBB40_113
.LBB40_111:                             #   in Loop: Header=BB40_113 Depth=1
	lw	t4, 20(a2)
.LBB40_112:                             #   in Loop: Header=BB40_113 Depth=1
	addi	a5, a5, 1
	sraiw	t2, t4, 31
	srliw	t2, t2, 30
	add	t2, t4, t2
	sraiw	t2, t2, 2
	bge	a5, t2, .LBB40_124
.LBB40_113:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_118 Depth 2
	blt	t5, a3, .LBB40_112
# %bb.114:                              # %.preheader
                                        #   in Loop: Header=BB40_113 Depth=1
	li	t2, 0
	li	t3, 0
	slli	t4, a5, 3
	j	.LBB40_118
.LBB40_115:                             #   in Loop: Header=BB40_118 Depth=2
	li	t5, 1
.LBB40_116:                             #   in Loop: Header=BB40_118 Depth=2
	ld	t6, 1624(a0)
	add	t6, t6, t4
	ld	t6, 0(t6)
	add	t6, t6, t3
	sb	t5, 0(t6)
.LBB40_117:                             #   in Loop: Header=BB40_118 Depth=2
	lw	t5, 16(a2)
	addi	t3, t3, 1
	slli	t6, t5, 1
	srli	t6, t6, 62
	add	t6, t5, t6
	sraiw	t6, t6, 2
	addi	t2, t2, 8
	bge	t3, t6, .LBB40_111
.LBB40_118:                             #   Parent Loop BB40_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t5, 128(a2)
	ld	t6, 0(t5)
	ld	s0, 1616(a0)
	add	t6, t6, t4
	ld	t6, 0(t6)
	ld	s1, 0(s0)
	add	t6, t6, t2
	ld	t6, 0(t6)
	add	s1, s1, t4
	ld	s1, 0(s1)
	lh	s2, 0(t6)
	ld	t5, 8(t5)
	add	s1, s1, t2
	ld	s1, 0(s1)
	add	t5, t5, t4
	ld	t5, 0(t5)
	sh	s2, 0(s1)
	ld	s0, 8(s0)
	lh	t6, 2(t6)
	add	t5, t5, t2
	ld	t5, 0(t5)
	add	s0, s0, t4
	ld	s0, 0(s0)
	sh	t6, 2(s1)
	lh	t6, 0(t5)
	add	s0, s0, t2
	ld	s1, 104(a2)
	ld	s0, 0(s0)
	ld	s1, 0(s1)
	sh	t6, 0(s0)
	ld	t6, 1600(a0)
	lh	t5, 2(t5)
	add	s1, s1, t4
	ld	s1, 0(s1)
	ld	t6, 0(t6)
	sh	t5, 2(s0)
	add	s1, s1, t3
	add	t6, t6, t4
	ld	t5, 0(t6)
	lbu	t6, 0(s1)
	add	t5, t5, t3
	sb	t6, 0(t5)
	ld	t5, 104(a2)
	ld	t5, 8(t5)
	ld	t6, 1600(a0)
	add	t5, t5, t4
	ld	t5, 0(t5)
	ld	t6, 8(t6)
	add	t5, t5, t3
	add	t6, t6, t4
	ld	t6, 0(t6)
	lbu	t5, 0(t5)
	add	t6, t6, t3
	sb	t5, 0(t6)
	ld	t5, 120(a2)
	ld	t6, 0(t5)
	ld	s0, 1608(a0)
	add	t6, t6, t4
	ld	t6, 0(t6)
	ld	s1, 0(s0)
	add	t6, t6, t2
	ld	t5, 8(t5)
	add	s1, s1, t4
	ld	s1, 0(s1)
	ld	t6, 0(t6)
	add	t5, t5, t4
	ld	t5, 0(t5)
	add	s1, s1, t2
	sd	t6, 0(s1)
	ld	t6, 8(s0)
	add	t5, t5, t2
	ld	s0, %lo(img)(a6)
	ld	t5, 0(t5)
	add	t6, t6, t4
	ld	t6, 0(t6)
	add	s0, s0, a7
	lw	s0, -708(s0)
	add	t6, t6, t2
	sd	t5, 0(t6)
	bne	s0, t0, .LBB40_117
# %bb.119:                              #   in Loop: Header=BB40_118 Depth=2
	lbu	t5, 0(a4)
	bnez	t5, .LBB40_115
# %bb.120:                              #   in Loop: Header=BB40_118 Depth=2
	ld	t5, 1600(a0)
	ld	t5, 0(t5)
	add	t5, t5, t4
	ld	t5, 0(t5)
	add	t5, t5, t3
	lbu	t5, 0(t5)
	bnez	t5, .LBB40_115
# %bb.121:                              #   in Loop: Header=BB40_118 Depth=2
	ld	t5, 1616(a0)
	ld	t5, 0(t5)
	add	t5, t5, t4
	ld	t5, 0(t5)
	add	t5, t5, t2
	ld	t5, 0(t5)
	lh	t6, 0(t5)
	slli	s0, t6, 48
	srai	s0, s0, 63
	xor	t6, t6, s0
	subw	t6, t6, s0
	slli	t6, t6, 48
	srli	t6, t6, 48
	bltu	t0, t6, .LBB40_115
# %bb.122:                              #   in Loop: Header=BB40_118 Depth=2
	lh	t5, 2(t5)
	slli	t6, t5, 48
	srai	t6, t6, 63
	xor	t5, t5, t6
	subw	t5, t5, t6
	slli	t5, t5, 48
	srli	t5, t5, 48
	bgeu	t5, t1, .LBB40_115
# %bb.123:                              #   in Loop: Header=BB40_118 Depth=2
	li	t5, 0
	j	.LBB40_116
.LBB40_124:
	lui	a3, %hi(img)
	ld	a4, %lo(img)(a3)
	lui	a3, 22
	addiw	a3, a3, -708
	add	a3, a4, a3
	lw	a5, 0(a3)
	beqz	a5, .LBB40_126
.LBB40_125:
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	ld	s11, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.LBB40_126:
	li	a5, 4
	blt	t4, a5, .LBB40_141
# %bb.127:
	lw	a6, 16(a2)
	li	a7, 0
	srliw	t0, t4, 2
	slli	t1, a6, 1
	srli	t1, t1, 62
	addw	t1, a6, t1
	slli	t1, t1, 30
	srli	t1, t1, 32
	j	.LBB40_129
.LBB40_128:                             #   in Loop: Header=BB40_129 Depth=1
	addi	a7, a7, 1
	beq	a7, t0, .LBB40_141
.LBB40_129:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_135 Depth 2
	blt	a6, a5, .LBB40_128
# %bb.130:                              #   in Loop: Header=BB40_129 Depth=1
	lw	t2, 816(a3)
	li	t3, 0
	li	t4, 0
	slli	t5, a7, 3
	j	.LBB40_135
.LBB40_131:                             #   in Loop: Header=BB40_135 Depth=2
	ld	t6, 144(a2)
	add	t6, t6, t5
	ld	t6, 0(t6)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	beqz	t6, .LBB40_134
.LBB40_132:                             #   in Loop: Header=BB40_135 Depth=2
	ld	t6, 1616(a0)
	ld	s0, 0(t6)
	add	s0, s0, t5
	ld	s0, 0(s0)
	ld	t6, 8(t6)
	add	s0, s0, t3
	ld	s0, 0(s0)
	add	t6, t6, t5
	ld	t6, 0(t6)
	lh	s1, 2(s0)
	add	t6, t6, t3
	ld	t6, 0(t6)
	slli	s1, s1, 1
	sh	s1, 2(s0)
	lh	s0, 2(t6)
	slli	s0, s0, 1
.LBB40_133:                             #   in Loop: Header=BB40_135 Depth=2
	sh	s0, 2(t6)
.LBB40_134:                             #   in Loop: Header=BB40_135 Depth=2
	addi	t4, t4, 1
	addi	t3, t3, 8
	beq	t1, t4, .LBB40_128
.LBB40_135:                             #   Parent Loop BB40_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	t2, .LBB40_138
# %bb.136:                              #   in Loop: Header=BB40_135 Depth=2
	ld	t6, 144(a2)
	add	t6, t6, t5
	ld	t6, 0(t6)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	bnez	t6, .LBB40_132
# %bb.137:                              #   in Loop: Header=BB40_135 Depth=2
	lw	t6, 28(a4)
	bnez	t6, .LBB40_139
	j	.LBB40_134
.LBB40_138:                             #   in Loop: Header=BB40_135 Depth=2
	lw	t6, 28(a4)
	beqz	t6, .LBB40_131
.LBB40_139:                             #   in Loop: Header=BB40_135 Depth=2
	ld	t6, 144(a2)
	add	t6, t6, t5
	ld	t6, 0(t6)
	add	t6, t6, t4
	lbu	t6, 0(t6)
	bnez	t6, .LBB40_134
# %bb.140:                              #   in Loop: Header=BB40_135 Depth=2
	ld	t6, 1616(a0)
	ld	s0, 0(t6)
	add	s0, s0, t5
	ld	s0, 0(s0)
	add	s0, s0, t3
	ld	s0, 0(s0)
	ld	t6, 8(t6)
	lhu	s1, 2(s0)
	add	t6, t6, t5
	ld	t6, 0(t6)
	srli	s2, s1, 15
	add	s1, s1, s2
	slli	s1, s1, 48
	add	t6, t6, t3
	ld	t6, 0(t6)
	srai	s1, s1, 48
	srli	s1, s1, 1
	sh	s1, 2(s0)
	lhu	s0, 2(t6)
	srli	s1, s0, 15
	add	s0, s0, s1
	slli	s0, s0, 48
	srai	s0, s0, 48
	srli	s0, s0, 1
	j	.LBB40_133
.LBB40_141:
	lw	t3, 816(a3)
	bltz	t3, .LBB40_125
# %bb.142:
	li	t2, 0
	addi	a0, a3, 20
	lui	a2, %hi(listXsize)
	addi	a2, a2, %lo(listXsize)
	lui	a4, %hi(enc_picture)
	lui	a5, 2
	addi	a5, a5, 1807
	li	a6, -1
	lui	a7, 4
	li	t0, 2
	li	s8, -128
	j	.LBB40_145
.LBB40_143:                             #   in Loop: Header=BB40_145 Depth=1
	lw	t3, 816(a3)
.LBB40_144:                             #   in Loop: Header=BB40_145 Depth=1
	addi	t2, t1, 2
	slliw	t4, t3, 2
	addi	a0, a0, 256
	bge	t1, t4, .LBB40_125
.LBB40_145:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_148 Depth 2
	mv	t1, t2
	slli	t2, t2, 2
	add	t2, a2, t2
	lw	t4, 0(t2)
	blez	t4, .LBB40_144
# %bb.146:                              #   in Loop: Header=BB40_145 Depth=1
	ld	s1, %lo(enc_picture)(a4)
	slli	t3, t1, 3
	add	t6, a1, t3
	ld	t5, 8(t6)
	li	t3, 0
	addi	t4, s1, 8
	ld	t5, 0(t5)
	ld	t6, 0(t6)
	addi	s0, s1, 4
	addi	s1, s1, 12
	sext.w	s2, t1
	mv	s3, a0
	j	.LBB40_148
.LBB40_147:                             #   in Loop: Header=BB40_148 Depth=2
	sw	s7, 0(s3)
	lw	s4, 0(t2)
	addi	t3, t3, 1
	addi	s3, s3, 4
	addi	t6, t6, 8
	bge	t3, s4, .LBB40_143
.LBB40_148:                             #   Parent Loop BB40_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	s4, s0
	beqz	s2, .LBB40_151
# %bb.149:                              #   in Loop: Header=BB40_148 Depth=2
	mv	s4, t4
	beq	s2, t0, .LBB40_151
# %bb.150:                              #   in Loop: Header=BB40_148 Depth=2
	mv	s4, s1
.LBB40_151:                             #   in Loop: Header=BB40_148 Depth=2
	ld	s6, 0(t6)
	lw	s5, 4(t5)
	lw	s6, 4(s6)
	mv	s7, a5
	beq	s5, s6, .LBB40_147
# %bb.152:                              #   in Loop: Header=BB40_148 Depth=2
	ld	s7, 0(t6)
	lw	s7, 4(s7)
	lw	s4, 0(s4)
	subw	s4, s4, s7
	li	s7, 127
	bge	s4, s7, .LBB40_163
# %bb.153:                              #   in Loop: Header=BB40_148 Depth=2
	bge	s8, s4, .LBB40_164
.LBB40_154:                             #   in Loop: Header=BB40_148 Depth=2
	subw	s6, s5, s6
	mv	s5, s6
	bge	s6, s7, .LBB40_165
.LBB40_155:                             #   in Loop: Header=BB40_148 Depth=2
	blt	s8, s5, .LBB40_157
.LBB40_156:                             #   in Loop: Header=BB40_148 Depth=2
	li	s5, -128
.LBB40_157:                             #   in Loop: Header=BB40_148 Depth=2
	slli	s7, s5, 56
	srli	s7, s7, 63
	add	s7, s5, s7
	slli	s7, s7, 56
	srai	s7, s7, 57
	bge	s6, a6, .LBB40_159
# %bb.158:                              #   in Loop: Header=BB40_148 Depth=2
	neg	s7, s7
.LBB40_159:                             #   in Loop: Header=BB40_148 Depth=2
	add	s7, s7, a7
	slli	s7, s7, 48
	srai	s6, s7, 48
	slli	s5, s5, 48
	srai	s5, s5, 48
	divw	s5, s6, s5
	slli	s5, s5, 48
	srai	s5, s5, 48
	mul	s4, s4, s5
	addi	s4, s4, 32
	sraiw	s7, s4, 6
	li	s4, 1023
	blt	s7, s4, .LBB40_161
# %bb.160:                              #   in Loop: Header=BB40_148 Depth=2
	li	s7, 1023
.LBB40_161:                             #   in Loop: Header=BB40_148 Depth=2
	li	s4, -1024
	blt	s4, s7, .LBB40_147
# %bb.162:                              #   in Loop: Header=BB40_148 Depth=2
	li	s7, -1024
	j	.LBB40_147
.LBB40_163:                             #   in Loop: Header=BB40_148 Depth=2
	li	s4, 127
	blt	s8, s4, .LBB40_154
.LBB40_164:                             #   in Loop: Header=BB40_148 Depth=2
	li	s4, -128
	subw	s6, s5, s6
	mv	s5, s6
	blt	s6, s7, .LBB40_155
.LBB40_165:                             #   in Loop: Header=BB40_148 Depth=2
	li	s5, 127
	bge	s8, s5, .LBB40_156
	j	.LBB40_157
.Lfunc_end40:
	.size	compute_colocated, .Lfunc_end40-compute_colocated
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function unmark_long_term_field_for_reference_by_frame_idx
	.type	unmark_long_term_field_for_reference_by_frame_idx,@function
unmark_long_term_field_for_reference_by_frame_idx: # @unmark_long_term_field_for_reference_by_frame_idx
# %bb.0:
	addi	sp, sp, -16
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB41_29
# %bb.1:
	lui	a7, %hi(dpb)
	addi	a7, a7, %lo(dpb)
	lwu	t0, 36(a7)
	beqz	t0, .LBB41_28
# %bb.2:
	lui	a5, %hi(log2_max_frame_num_minus4)
	lw	a5, %lo(log2_max_frame_num_minus4)(a5)
	addi	a6, a5, 4
	li	a5, 2
	sllw	a6, a5, a6
	srli	t1, a4, 31
	and	a6, t1, a6
	add	a4, a6, a4
	srliw	a6, a4, 31
	add	a6, a4, a6
	ld	a4, 16(a7)
	sraiw	a6, a6, 1
	ld	a7, 56(a7)
	slli	t0, t0, 3
	add	t0, a4, t0
	li	t1, 3
	lui	t2, 2
	addiw	t3, t2, -1816
	li	t4, 1
	j	.LBB41_6
.LBB41_3:                               #   in Loop: Header=BB41_6 Depth=1
	ld	t6, 40(t5)
	add	t6, t6, t2
	sd	zero, -1816(t6)
.LBB41_4:                               #   in Loop: Header=BB41_6 Depth=1
	sw	zero, 4(t5)
	sw	zero, 8(t5)
.LBB41_5:                               #   in Loop: Header=BB41_6 Depth=1
	addi	a4, a4, 8
	beq	a4, t0, .LBB41_28
.LBB41_6:                               # =>This Inner Loop Header: Depth=1
	ld	t5, 0(a4)
	lw	t6, 28(t5)
	bne	t6, a1, .LBB41_5
# %bb.7:                                #   in Loop: Header=BB41_6 Depth=1
	beq	a0, a5, .LBB41_11
# %bb.8:                                #   in Loop: Header=BB41_6 Depth=1
	bne	a0, t4, .LBB41_5
# %bb.9:                                #   in Loop: Header=BB41_6 Depth=1
	lw	t6, 8(t5)
	beq	t6, t4, .LBB41_18
# %bb.10:                               #   in Loop: Header=BB41_6 Depth=1
	beq	t6, t1, .LBB41_18
	j	.LBB41_13
.LBB41_11:                              #   in Loop: Header=BB41_6 Depth=1
	lw	t6, 8(t5)
	beq	t6, a5, .LBB41_18
# %bb.12:                               #   in Loop: Header=BB41_6 Depth=1
	beq	t6, t1, .LBB41_18
.LBB41_13:                              #   in Loop: Header=BB41_6 Depth=1
	beqz	a2, .LBB41_17
# %bb.14:                               #   in Loop: Header=BB41_6 Depth=1
	beqz	a7, .LBB41_18
# %bb.15:                               #   in Loop: Header=BB41_6 Depth=1
	bne	a7, t5, .LBB41_18
# %bb.16:                               #   in Loop: Header=BB41_6 Depth=1
	lw	t6, 20(a7)
	beq	t6, a3, .LBB41_5
	j	.LBB41_18
.LBB41_17:                              #   in Loop: Header=BB41_6 Depth=1
	lw	t6, 20(t5)
	beq	t6, a6, .LBB41_5
.LBB41_18:                              #   in Loop: Header=BB41_6 Depth=1
	lwu	t6, 0(t5)
	andi	s0, t6, 1
	beqz	s0, .LBB41_21
# %bb.19:                               #   in Loop: Header=BB41_6 Depth=1
	ld	s0, 48(t5)
	beqz	s0, .LBB41_21
# %bb.20:                               #   in Loop: Header=BB41_6 Depth=1
	add	s0, s0, t3
	sd	zero, 0(s0)
.LBB41_21:                              #   in Loop: Header=BB41_6 Depth=1
	andi	s0, t6, 2
	beqz	s0, .LBB41_24
# %bb.22:                               #   in Loop: Header=BB41_6 Depth=1
	ld	s0, 56(t5)
	beqz	s0, .LBB41_24
# %bb.23:                               #   in Loop: Header=BB41_6 Depth=1
	add	s0, s0, t3
	sd	zero, 0(s0)
.LBB41_24:                              #   in Loop: Header=BB41_6 Depth=1
	bne	t6, t1, .LBB41_4
# %bb.25:                               #   in Loop: Header=BB41_6 Depth=1
	ld	t6, 48(t5)
	beqz	t6, .LBB41_3
# %bb.26:                               #   in Loop: Header=BB41_6 Depth=1
	ld	s0, 56(t5)
	beqz	s0, .LBB41_3
# %bb.27:                               #   in Loop: Header=BB41_6 Depth=1
	add	s0, s0, t2
	add	t6, t6, t2
	sd	zero, -1816(t6)
	sd	zero, -1816(s0)
	j	.LBB41_3
.LBB41_28:
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB41_29:
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx)
	li	a2, 1868
	call	__assert_fail
.Lfunc_end41:
	.size	unmark_long_term_field_for_reference_by_frame_idx, .Lfunc_end41-unmark_long_term_field_for_reference_by_frame_idx
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function remove_frame_from_dpb
	.type	remove_frame_from_dpb,@function
remove_frame_from_dpb:                  # @remove_frame_from_dpb
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(dpb)
	ld	a1, %lo(dpb)(a1)
	mv	s0, a0
	slli	s1, a0, 3
	add	a1, a1, s1
	ld	s2, 0(a1)
	lw	a0, 0(s2)
	li	a1, 1
	blt	a1, a0, .LBB42_4
# %bb.1:
	beqz	a0, .LBB42_9
# %bb.2:
	li	a1, 1
	bne	a0, a1, .LBB42_7
# %bb.3:
	ld	a0, 48(s2)
	call	free_storable_picture
	sd	zero, 48(s2)
	j	.LBB42_9
.LBB42_4:
	li	a1, 2
	beq	a0, a1, .LBB42_8
# %bb.5:
	li	a1, 3
	bne	a0, a1, .LBB42_7
# %bb.6:
	ld	a0, 40(s2)
	call	free_storable_picture
	ld	a0, 48(s2)
	call	free_storable_picture
	ld	a0, 56(s2)
	call	free_storable_picture
	sd	zero, 56(s2)
	sd	zero, 48(s2)
	sd	zero, 40(s2)
	j	.LBB42_9
.LBB42_7:
	lui	a0, %hi(.L.str.38)
	addi	a0, a0, %lo(.L.str.38)
	li	a1, 500
	call	error
	j	.LBB42_9
.LBB42_8:
	ld	a0, 56(s2)
	call	free_storable_picture
	sd	zero, 56(s2)
.LBB42_9:
	sd	zero, 8(s2)
	sd	zero, 0(s2)
	lui	a2, %hi(dpb)
	ld	a4, %lo(dpb)(a2)
	addi	a0, a2, %lo(dpb)
	lw	a0, 28(a0)
	add	s1, a4, s1
	ld	a1, 0(s1)
	addiw	a0, a0, -1
	bgeu	s0, a0, .LBB42_13
# %bb.10:
	slli	a5, a0, 32
	srli	a3, a5, 32
	slli	a4, s0, 32
	srli	a4, a4, 29
	srli	a5, a5, 29
.LBB42_11:                              # =>This Inner Loop Header: Depth=1
	ld	a6, %lo(dpb)(a2)
	add	a6, a6, a4
	ld	a7, 8(a6)
	addi	a4, a4, 8
	sd	a7, 0(a6)
	bne	a4, a5, .LBB42_11
# %bb.12:
	lui	a2, %hi(dpb)
	ld	a4, %lo(dpb)(a2)
	j	.LBB42_14
.LBB42_13:
	slli	a3, a0, 32
	srli	a3, a3, 32
.LBB42_14:
	slli	a3, a3, 3
	add	a3, a4, a3
	sd	a1, 0(a3)
	lui	a1, %hi(dpb+28)
	sw	a0, %lo(dpb+28)(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end42:
	.size	remove_frame_from_dpb, .Lfunc_end42-remove_frame_from_dpb
                                        # -- End function
	.option	pop
	.type	Co_located,@object              # @Co_located
	.section	.sbss,"aw",@nobits
	.globl	Co_located
	.p2align	3, 0x0
Co_located:
	.quad	0
	.size	Co_located, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"undefined level"
	.size	.L.str, 16

	.type	dpb,@object                     # @dpb
	.bss
	.globl	dpb
	.p2align	3, 0x0
dpb:
	.zero	64
	.size	dpb, 64

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Max. number of reference frames exceeded. Invalid stream."
	.size	.L.str.1, 58

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\n"
	.size	.L.str.2, 108

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"init_dpb: dpb->fs"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"init_dpb: dpb->fs_ref"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"init_dpb: dpb->fs_ltref"
	.size	.L.str.5, 24

	.type	listX,@object                   # @listX
	.bss
	.globl	listX
	.p2align	3, 0x0
listX:
	.zero	48
	.size	listX, 48

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"init_dpb: listX[i]"
	.size	.L.str.6, 19

	.type	listXsize,@object               # @listXsize
	.bss
	.globl	listXsize
	.p2align	2, 0x0
listXsize:
	.zero	24
	.size	listXsize, 24

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"alloc_frame_store: f"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"alloc_storable_picture: s"
	.size	.L.str.8, 26

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"alloc_storable_picture: s->mb_field"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"init_lists: fs_list0"
	.size	.L.str.10, 21

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"init_lists: fs_listlt"
	.size	.L.str.11, 22

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"init_lists: fs_list1"
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Invalid remapping_of_pic_nums_idc command"
	.size	.L.str.13, 42

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"p!=NULL"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"src/mbuffer.c"
	.size	.L.str.15, 14

	.type	.L__PRETTY_FUNCTION__.store_picture_in_dpb,@object # @__PRETTY_FUNCTION__.store_picture_in_dpb
.L__PRETTY_FUNCTION__.store_picture_in_dpb:
	.asciz	"void store_picture_in_dpb(StorablePicture *)"
	.size	.L__PRETTY_FUNCTION__.store_picture_in_dpb, 45

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"duplicate frame_num im short-term reference picture buffer"
	.size	.L.str.16, 59

	.type	.L__PRETTY_FUNCTION__.replace_top_pic_with_frame,@object # @__PRETTY_FUNCTION__.replace_top_pic_with_frame
.L__PRETTY_FUNCTION__.replace_top_pic_with_frame:
	.asciz	"void replace_top_pic_with_frame(StorablePicture *)"
	.size	.L__PRETTY_FUNCTION__.replace_top_pic_with_frame, 51

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"p->structure==FRAME"
	.size	.L.str.17, 20

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"replace_top_pic_with_frame: error storing reference frame (top field not found)"
	.size	.L.str.18, 80

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l0"
	.size	.L.str.19, 67

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0"
	.size	.L.str.20, 65

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0"
	.size	.L.str.21, 59

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l1"
	.size	.L.str.22, 67

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1"
	.size	.L.str.23, 65

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1"
	.size	.L.str.24, 59

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"alloc_colocated: s"
	.size	.L.str.25, 19

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"memory_management_control_operation = 0 not last operation in buffer"
	.size	.L.str.29, 69

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"invalid memory_management_control_operation in buffer"
	.size	.L.str.30, 54

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"field for long term marking not found"
	.size	.L.str.31, 38

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"structure!=FRAME"
	.size	.L.str.32, 17

	.type	.L__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx,@object # @__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx
.L__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx:
	.asciz	"void unmark_long_term_field_for_reference_by_frame_idx(PictureStructure, int, int, unsigned int, int)"
	.size	.L__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx, 102

	.type	.L__PRETTY_FUNCTION__.insert_picture_in_dpb,@object # @__PRETTY_FUNCTION__.insert_picture_in_dpb
.L__PRETTY_FUNCTION__.insert_picture_in_dpb:
	.asciz	"void insert_picture_in_dpb(FrameStore *, StorablePicture *)"
	.size	.L__PRETTY_FUNCTION__.insert_picture_in_dpb, 60

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"fs!=NULL"
	.size	.L.str.36, 9

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Cannot determine smallest POC, DPB empty."
	.size	.L.str.37, 42

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"invalid frame store type"
	.size	.L.str.38, 25

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Cannot output frame, DPB empty."
	.size	.L.str.39, 32

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"no frames for output available"
	.size	.L.str.40, 31

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"output POC must be in ascending order"
	.size	.L.str.41, 38

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Warning: reference field for long term marking not found"
	.size	.Lstr, 57

	.type	.Lstr.43,@object                # @str.43
.Lstr.43:
	.asciz	"Warning: assigning long_term_frame_idx different from other field"
	.size	.Lstr.43, 66

	.type	.Lstr.44,@object                # @str.44
.Lstr.44:
	.asciz	"Warning: reference frame for long term marking not found"
	.size	.Lstr.44, 57

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
