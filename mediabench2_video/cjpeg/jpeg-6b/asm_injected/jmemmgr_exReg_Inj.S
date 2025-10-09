	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jmemmgr.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_memory_mgr                # -- Begin function jinit_memory_mgr
	.p2align	2
	.type	jinit_memory_mgr,@function
jinit_memory_mgr:                       # @jinit_memory_mgr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	mv	s1, a0
	sd	zero, 8(a0)
	call	jpeg_mem_init
	mv	s2, a0
	sd	a0, 16(sp)
	li	a1, 168
	li	s3, 168
	mv	a0, s1
	call	jpeg_get_small
	mv	s0, a0
	bnez	a0, .LBB0_2
# %bb.1:
	mv	a0, s1
	call	jpeg_mem_term
	ld	a0, 0(s1)
	li	a1, 54
	sd	a1, 40(a0)
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	mv	a0, s1
	jalr	a1
.LBB0_2:
	lui	a0, %hi(alloc_small)
	addi	a0, a0, %lo(alloc_small)
	sd	a0, 0(s0)
	lui	a0, %hi(alloc_large)
	addi	a0, a0, %lo(alloc_large)
	sd	a0, 8(s0)
	lui	a0, %hi(alloc_sarray)
	addi	a0, a0, %lo(alloc_sarray)
	sd	a0, 16(s0)
	lui	a0, %hi(alloc_barray)
	addi	a0, a0, %lo(alloc_barray)
	sd	a0, 24(s0)
	lui	a0, %hi(request_virt_sarray)
	addi	a0, a0, %lo(request_virt_sarray)
	sd	a0, 32(s0)
	lui	a0, %hi(request_virt_barray)
	addi	a0, a0, %lo(request_virt_barray)
	sd	a0, 40(s0)
	lui	a0, %hi(realize_virt_arrays)
	addi	a0, a0, %lo(realize_virt_arrays)
	sd	a0, 48(s0)
	lui	a0, %hi(access_virt_sarray)
	addi	a0, a0, %lo(access_virt_sarray)
	sd	a0, 56(s0)
	lui	a0, %hi(access_virt_barray)
	addi	a0, a0, %lo(access_virt_barray)
	sd	a0, 64(s0)
	lui	a0, %hi(free_pool)
	addi	a0, a0, %lo(free_pool)
	sd	a0, 72(s0)
	lui	a0, %hi(self_destruct)
	addi	a0, a0, %lo(self_destruct)
	sd	a0, 80(s0)
	lui	a0, 244141
	addiw	a0, a0, -1536
	sd	a0, 96(s0)
	sd	s2, 88(s0)
	sd	zero, 104(s0)
	sd	zero, 112(s0)
	sd	zero, 120(s0)
	sd	zero, 128(s0)
	sd	zero, 136(s0)
	sd	zero, 144(s0)
	sd	s3, 152(s0)
	sd	s0, 8(s1)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	getenv
	beqz	a0, .LBB0_7
# %bb.3:
	li	a1, 120
	sb	a1, 15(sp)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	addi	a2, sp, 16
	addi	a3, sp, 15
	call	__isoc99_sscanf
	blez	a0, .LBB0_7
# %bb.4:
	lbu	a1, 15(sp)
	ld	a0, 16(sp)
	andi	a2, a1, 223
	li	a3, 77
	li	a1, 1000
	bne	a2, a3, .LBB0_6
# %bb.5:
	mul	a0, a0, a1
.LBB0_6:
	mul	a0, a0, a1
	sd	a0, 88(s0)
.LBB0_7:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	jinit_memory_mgr, .Lfunc_end0-jinit_memory_mgr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function alloc_small
	.type	alloc_small,@function
alloc_small:                            # @alloc_small
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
	ld	s3, 8(a0)
	lui	a0, 244141
	addiw	a0, a0, -1559
	mv	s2, a2
	mv	s1, a1
	bltu	a2, a0, .LBB1_2
# %bb.1:
	ld	a0, 0(s0)
	li	a1, 1
	slli	a1, a1, 32
	addi	a1, a1, 54
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB1_2:
	li	a0, 2
	addi	s2, s2, 7
	bltu	s1, a0, .LBB1_4
# %bb.3:
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 14
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_4:
	slli	s4, s1, 3
	add	s4, s3, s4
	ld	a0, 104(s4)
	andi	s2, s2, -8
	beqz	a0, .LBB1_9
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	mv	s5, a0
	ld	a0, 16(a0)
	bgeu	a0, s2, .LBB1_17
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	ld	a0, 0(s5)
	bnez	a0, .LBB1_5
# %bb.7:
	beqz	s5, .LBB1_10
.LBB1_8:
	lui	a0, %hi(extra_pool_slop)
	addi	a0, a0, %lo(extra_pool_slop)
	j	.LBB1_11
.LBB1_9:
	li	s5, 0
	bnez	zero, .LBB1_8
.LBB1_10:
	lui	a0, %hi(first_pool_slop)
	addi	a0, a0, %lo(first_pool_slop)
.LBB1_11:
	slli	s1, s1, 3
	add	a0, a0, s1
	ld	s6, 0(a0)
	lui	a0, 244141
	addiw	a0, a0, -1560
	sub	a0, a0, s2
	addi	s7, s2, 24
	bltu	s6, a0, .LBB1_13
# %bb.12:
	mv	s6, a0
.LBB1_13:
	add	s1, s7, s6
	mv	a0, s0
	mv	a1, s1
	call	jpeg_get_small
	beqz	a0, .LBB1_19
.LBB1_14:
	ld	a1, 152(s3)
	add	a1, a1, s1
	sd	a1, 152(s3)
	add	s6, s6, s2
	sd	zero, 8(a0)
	sd	zero, 0(a0)
	sd	s6, 16(a0)
	bnez	s5, .LBB1_16
# %bb.15:
	addi	s5, s4, 104
.LBB1_16:
	sd	a0, 0(s5)
	j	.LBB1_18
.LBB1_17:
	mv	a0, s5
.LBB1_18:
	ld	a2, 8(a0)
	add	a1, a0, a2
	ld	a3, 16(a0)
	addi	a1, a1, 24
	add	a2, a2, s2
	sd	a2, 8(a0)
	sub	a2, a3, s2
	sd	a2, 16(a0)
	mv	a0, a1
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
.LBB1_19:                               # %.preheader
	li	s8, 99
	li	a0, 1
	slli	a0, a0, 33
	addi	s9, a0, 54
	j	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=1
	srli	s6, s6, 1
	add	s1, s7, s6
	mv	a0, s0
	mv	a1, s1
	call	jpeg_get_small
	bnez	a0, .LBB1_14
.LBB1_21:                               # =>This Inner Loop Header: Depth=1
	bltu	s8, s6, .LBB1_20
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=1
	ld	a0, 0(s0)
	sd	s9, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_20
.Lfunc_end1:
	.size	alloc_small, .Lfunc_end1-alloc_small
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function alloc_large
	.type	alloc_large,@function
alloc_large:                            # @alloc_large
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	s4, 8(a0)
	lui	a0, 244141
	addiw	a0, a0, -1559
	mv	s2, a2
	mv	s0, a1
	bltu	a2, a0, .LBB2_2
# %bb.1:
	ld	a0, 0(s1)
	li	a1, 3
	slli	a1, a1, 32
	addi	a1, a1, 54
	sd	a1, 40(a0)
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	mv	a0, s1
	jalr	a1
.LBB2_2:
	addi	s2, s2, 7
	li	a0, 2
	andi	s5, s2, -8
	bltu	s0, a0, .LBB2_4
# %bb.3:
	ld	a0, 0(s1)
	sw	s0, 44(a0)
	ld	a1, 0(s1)
	ld	a1, 0(a1)
	li	a2, 14
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB2_4:
	addi	s3, s5, 24
	mv	a0, s1
	mv	a1, s3
	call	jpeg_get_large
	mv	s2, a0
	bnez	a0, .LBB2_6
# %bb.5:
	ld	a0, 0(s1)
	li	a1, 1
	slli	a1, a1, 34
	addi	a1, a1, 54
	sd	a1, 40(a0)
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	mv	a0, s1
	jalr	a1
.LBB2_6:
	ld	a0, 152(s4)
	slli	s0, s0, 3
	add	s0, s4, s0
	ld	a1, 120(s0)
	add	a0, a0, s3
	sd	a0, 152(s4)
	sd	a1, 0(s2)
	sd	s5, 8(s2)
	sd	zero, 16(s2)
	addi	a0, s2, 24
	sd	s2, 120(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	alloc_large, .Lfunc_end2-alloc_large
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function alloc_sarray
	.type	alloc_sarray,@function
alloc_sarray:                           # @alloc_sarray
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
	mv	s0, a3
	mv	s4, a2
	mv	s1, a1
	mv	s2, a0
	ld	s3, 8(a0)
	lui	a0, 244141
	addi	a1, a0, -1560
	addiw	a0, a0, -1559
	divuw	s6, a1, a2
	bltu	a2, a0, .LBB3_2
# %bb.1:
	ld	a0, 0(s2)
	ld	a1, 0(a0)
	li	a2, 70
	sw	a2, 40(a0)
	mv	a0, s2
	jalr	a1
.LBB3_2:
	bltu	s6, s0, .LBB3_4
# %bb.3:
	mv	s6, s0
.LBB3_4:
	sw	s6, 160(s3)
	slli	a2, s0, 32
	srli	a2, a2, 29
	mv	a0, s2
	mv	a1, s1
	call	alloc_small
	mv	s3, a0
	beqz	s0, .LBB3_19
# %bb.5:
	li	s11, 0
	slli	s4, s4, 32
	srli	s7, s4, 32
	lui	a0, 244141
	addiw	a0, a0, -1559
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	li	a0, 3
	slli	a0, a0, 32
	addi	a0, a0, 54
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	li	a0, -15
	srli	a0, a0, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	li	a0, 1
	slli	a0, a0, 34
	addi	a0, a0, 54
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	slli	s9, s1, 3
	j	.LBB3_8
.LBB3_6:                                #   in Loop: Header=BB3_8 Depth=1
	mv	a0, s11
.LBB3_7:                                #   in Loop: Header=BB3_8 Depth=1
	mv	s11, a0
	bgeu	a0, s0, .LBB3_19
.LBB3_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	subw	a0, s0, s11
	bgeu	s6, a0, .LBB3_17
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	ld	s8, 8(s2)
	mul	s4, s6, s7
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bgeu	s4, a0, .LBB3_18
.LBB3_10:                               #   in Loop: Header=BB3_8 Depth=1
	li	a0, 2
	bltu	s1, a0, .LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=1
	ld	a0, 0(s2)
	sw	s1, 44(a0)
	ld	a1, 0(s2)
	ld	a1, 0(a1)
	li	a2, 14
	sw	a2, 40(a0)
	mv	a0, s2
	jalr	a1
.LBB3_12:                               #   in Loop: Header=BB3_8 Depth=1
	addi	s4, s4, 7
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	and	s10, s4, a0
	addi	s5, s10, 24
	mv	a0, s2
	mv	a1, s5
	call	jpeg_get_large
	mv	s4, a0
	bnez	a0, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_8 Depth=1
	ld	a0, 0(s2)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a0, 0(s2)
	ld	a1, 0(a0)
	mv	a0, s2
	jalr	a1
.LBB3_14:                               #   in Loop: Header=BB3_8 Depth=1
	ld	a0, 152(s8)
	add	a1, s8, s9
	ld	a2, 120(a1)
	add	a0, a0, s5
	sd	a0, 152(s8)
	sd	a2, 0(s4)
	sd	s10, 8(s4)
	sd	zero, 16(s4)
	sd	s4, 120(a1)
	beqz	s6, .LBB3_6
# %bb.15:                               #   in Loop: Header=BB3_8 Depth=1
	addi	s4, s4, 24
	mv	a1, s6
.LBB3_16:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a0, s11, 1
	slli	s11, s11, 32
	srli	a2, s11, 29
	add	a2, s3, a2
	sd	s4, 0(a2)
	addiw	a1, a1, -1
	add	s4, s4, s7
	mv	s11, a0
	bnez	a1, .LBB3_16
	j	.LBB3_7
.LBB3_17:                               #   in Loop: Header=BB3_8 Depth=1
	mv	s6, a0
	ld	s8, 8(s2)
	mul	s4, a0, s7
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bltu	s4, a0, .LBB3_10
.LBB3_18:                               #   in Loop: Header=BB3_8 Depth=1
	ld	a0, 0(s2)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a0, 0(s2)
	ld	a1, 0(a0)
	mv	a0, s2
	jalr	a1
	li	a0, 2
	bgeu	s1, a0, .LBB3_11
	j	.LBB3_12
.LBB3_19:
	mv	a0, s3
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
.Lfunc_end3:
	.size	alloc_sarray, .Lfunc_end3-alloc_sarray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function alloc_barray
	.type	alloc_barray,@function
alloc_barray:                           # @alloc_barray
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
	mv	s0, a3
	mv	s1, a1
	mv	s2, a0
	ld	s3, 8(a0)
	slli	s4, a2, 32
	srli	a3, s4, 25
	lui	a0, 244141
	addiw	a0, a0, -1560
	lui	a1, 1907
	addiw	a1, a1, 1428
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	divu	s7, a0, a3
	bltu	a2, a1, .LBB4_2
# %bb.1:
	ld	a0, 0(s2)
	ld	a1, 0(a0)
	li	a2, 70
	sw	a2, 40(a0)
	mv	a0, s2
	jalr	a1
.LBB4_2:
	slli	a2, s0, 32
	srli	a0, a2, 32
	bltu	s7, a0, .LBB4_4
# %bb.3:
	mv	s7, s0
.LBB4_4:
	sw	s7, 160(s3)
	srli	a2, a2, 29
	mv	a0, s2
	mv	a1, s1
	call	alloc_small
	mv	s3, a0
	beqz	s0, .LBB4_19
# %bb.5:
	li	s10, 0
	srli	s8, s4, 32
	slli	s8, s8, 7
	lui	a0, 244141
	addiw	a0, a0, -1559
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	li	a0, 3
	slli	a0, a0, 32
	addi	a0, a0, 54
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	li	a0, 1
	slli	a0, a0, 34
	addi	a0, a0, 54
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	slli	s11, s1, 3
	j	.LBB4_8
.LBB4_6:                                #   in Loop: Header=BB4_8 Depth=1
	mv	a0, s10
.LBB4_7:                                #   in Loop: Header=BB4_8 Depth=1
	mv	s10, a0
	bgeu	a0, s0, .LBB4_19
.LBB4_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
	subw	a0, s0, s10
	sext.w	s7, s7
	bltu	s7, a0, .LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	mv	s7, a0
.LBB4_10:                               #   in Loop: Header=BB4_8 Depth=1
	slli	a0, s7, 32
	ld	s9, 8(s2)
	srli	a0, a0, 32
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	mul	s6, a1, a0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	bltu	s6, a0, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_8 Depth=1
	ld	a0, 0(s2)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a0, 0(s2)
	ld	a1, 0(a0)
	mv	a0, s2
	jalr	a1
.LBB4_12:                               #   in Loop: Header=BB4_8 Depth=1
	li	a0, 2
	bltu	s1, a0, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_8 Depth=1
	ld	a0, 0(s2)
	sw	s1, 44(a0)
	ld	a1, 0(s2)
	ld	a1, 0(a1)
	li	a2, 14
	sw	a2, 40(a0)
	mv	a0, s2
	jalr	a1
.LBB4_14:                               #   in Loop: Header=BB4_8 Depth=1
	addi	s5, s6, 24
	mv	a0, s2
	mv	a1, s5
	call	jpeg_get_large
	mv	s4, a0
	bnez	a0, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_8 Depth=1
	ld	a0, 0(s2)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a0, 0(s2)
	ld	a1, 0(a0)
	mv	a0, s2
	jalr	a1
.LBB4_16:                               #   in Loop: Header=BB4_8 Depth=1
	ld	a0, 152(s9)
	add	a1, s9, s11
	ld	a2, 120(a1)
	add	a0, a0, s5
	sd	a0, 152(s9)
	sd	a2, 0(s4)
	sd	s6, 8(s4)
	sd	zero, 16(s4)
	sd	s4, 120(a1)
	beqz	s7, .LBB4_6
# %bb.17:                               #   in Loop: Header=BB4_8 Depth=1
	addi	s4, s4, 24
	mv	a1, s7
.LBB4_18:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a0, s10, 1
	slli	s10, s10, 32
	srli	a2, s10, 29
	add	a2, s3, a2
	sd	s4, 0(a2)
	addiw	a1, a1, -1
	add	s4, s4, s8
	mv	s10, a0
	bnez	a1, .LBB4_18
	j	.LBB4_7
.LBB4_19:
	mv	a0, s3
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
.Lfunc_end4:
	.size	alloc_barray, .Lfunc_end4-alloc_barray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function request_virt_sarray
	.type	request_virt_sarray,@function
request_virt_sarray:                    # @request_virt_sarray
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
	ld	s5, 8(a0)
	li	a6, 1
	mv	s0, a5
	mv	s3, a4
	mv	s2, a3
	mv	s1, a2
	beq	a1, a6, .LBB5_2
# %bb.1:
	ld	a2, 0(a0)
	sw	a1, 44(a2)
	ld	a3, 0(a0)
	ld	a3, 0(a3)
	li	a4, 14
	sw	a4, 40(a2)
	mv	s4, a0
	mv	s6, a1
	jalr	a3
	mv	a0, s4
	mv	a6, s6
.LBB5_2:
	li	a2, 152
	mv	a1, a6
	call	alloc_small
	sd	zero, 0(a0)
	sw	s3, 8(a0)
	sw	s2, 12(a0)
	ld	a1, 136(s5)
	sw	s0, 16(a0)
	sw	s1, 36(a0)
	sw	zero, 44(a0)
	sd	a1, 48(a0)
	sd	a0, 136(s5)
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
.Lfunc_end5:
	.size	request_virt_sarray, .Lfunc_end5-request_virt_sarray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function request_virt_barray
	.type	request_virt_barray,@function
request_virt_barray:                    # @request_virt_barray
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
	ld	s5, 8(a0)
	li	a6, 1
	mv	s0, a5
	mv	s3, a4
	mv	s2, a3
	mv	s1, a2
	beq	a1, a6, .LBB6_2
# %bb.1:
	ld	a2, 0(a0)
	sw	a1, 44(a2)
	ld	a3, 0(a0)
	ld	a3, 0(a3)
	li	a4, 14
	sw	a4, 40(a2)
	mv	s4, a0
	mv	s6, a1
	jalr	a3
	mv	a0, s4
	mv	a6, s6
.LBB6_2:
	li	a2, 152
	mv	a1, a6
	call	alloc_small
	sd	zero, 0(a0)
	sw	s3, 8(a0)
	sw	s2, 12(a0)
	ld	a1, 144(s5)
	sw	s0, 16(a0)
	sw	s1, 36(a0)
	sw	zero, 44(a0)
	sd	a1, 48(a0)
	sd	a0, 144(s5)
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
.Lfunc_end6:
	.size	request_virt_barray, .Lfunc_end6-request_virt_barray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function realize_virt_arrays
	.type	realize_virt_arrays,@function
realize_virt_arrays:                    # @realize_virt_arrays
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s3, 8(a0)
	ld	a0, 136(s3)
	beqz	a0, .LBB7_5
# %bb.1:                                # %.preheader3
	li	s1, 0
	li	s2, 0
	j	.LBB7_3
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	ld	a0, 48(a0)
	beqz	a0, .LBB7_6
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 0(a0)
	bnez	a1, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	lwu	a1, 16(a0)
	lwu	a2, 12(a0)
	lwu	a3, 8(a0)
	mul	a1, a2, a1
	add	s1, a1, s1
	mul	a1, a3, a2
	add	s2, a1, s2
	j	.LBB7_2
.LBB7_5:
	li	s2, 0
	li	s1, 0
.LBB7_6:
	ld	a0, 144(s3)
	bnez	a0, .LBB7_12
.LBB7_7:
	blez	s1, .LBB7_31
# %bb.8:
	ld	a3, 152(s3)
	mv	a0, s0
	mv	a1, s1
	mv	a2, s2
	call	jpeg_mem_available
	bge	a0, s2, .LBB7_14
# %bb.9:
	div	s1, a0, s1
	bgtz	s1, .LBB7_15
# %bb.10:
	li	s1, 1
	j	.LBB7_15
.LBB7_11:                               #   in Loop: Header=BB7_12 Depth=1
	ld	a0, 48(a0)
	beqz	a0, .LBB7_7
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	ld	a1, 0(a0)
	bnez	a1, .LBB7_11
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	lwu	a1, 16(a0)
	lwu	a2, 12(a0)
	lwu	a3, 8(a0)
	mul	a1, a1, a2
	slli	a1, a1, 7
	add	s1, a1, s1
	mul	a1, a2, a3
	slli	a1, a1, 7
	add	s2, a1, s2
	j	.LBB7_11
.LBB7_14:
	lui	a0, 244141
	addiw	s1, a0, -1536
.LBB7_15:
	ld	s2, 136(s3)
	beqz	s2, .LBB7_23
# %bb.16:
	li	s4, 1
	j	.LBB7_20
.LBB7_17:                               #   in Loop: Header=BB7_20 Depth=1
	sw	a3, 20(s2)
.LBB7_18:                               #   in Loop: Header=BB7_20 Depth=1
	lw	a2, 12(s2)
	sext.w	a3, a3
	li	a1, 1
	mv	a0, s0
	call	alloc_sarray
	lw	a1, 160(s3)
	sd	a0, 0(s2)
	sw	a1, 24(s2)
	sw	zero, 28(s2)
	sw	zero, 32(s2)
	sw	zero, 40(s2)
.LBB7_19:                               #   in Loop: Header=BB7_20 Depth=1
	ld	s2, 48(s2)
	beqz	s2, .LBB7_23
.LBB7_20:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s2)
	bnez	a0, .LBB7_19
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=1
	lwu	a3, 8(s2)
	lwu	a0, 16(s2)
	addi	a1, a3, -1
	div	a1, a1, a0
	blt	a1, s1, .LBB7_17
# %bb.22:                               #   in Loop: Header=BB7_20 Depth=1
	lwu	a2, 12(s2)
	mul	a0, a0, s1
	sw	a0, 20(s2)
	addi	a1, s2, 56
	mul	a2, a2, a3
	mv	a0, s0
	call	jpeg_open_backing_store
	lw	a3, 20(s2)
	sw	s4, 44(s2)
	j	.LBB7_18
.LBB7_23:
	ld	s2, 144(s3)
	beqz	s2, .LBB7_31
# %bb.24:
	li	s4, 1
	j	.LBB7_28
.LBB7_25:                               #   in Loop: Header=BB7_28 Depth=1
	sw	a3, 20(s2)
.LBB7_26:                               #   in Loop: Header=BB7_28 Depth=1
	lw	a2, 12(s2)
	sext.w	a3, a3
	li	a1, 1
	mv	a0, s0
	call	alloc_barray
	lw	a1, 160(s3)
	sd	a0, 0(s2)
	sw	a1, 24(s2)
	sw	zero, 28(s2)
	sw	zero, 32(s2)
	sw	zero, 40(s2)
.LBB7_27:                               #   in Loop: Header=BB7_28 Depth=1
	ld	s2, 48(s2)
	beqz	s2, .LBB7_31
.LBB7_28:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s2)
	bnez	a0, .LBB7_27
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=1
	lwu	a3, 8(s2)
	lwu	a0, 16(s2)
	addi	a1, a3, -1
	div	a1, a1, a0
	blt	a1, s1, .LBB7_25
# %bb.30:                               #   in Loop: Header=BB7_28 Depth=1
	lwu	a2, 12(s2)
	mul	a0, a0, s1
	sw	a0, 20(s2)
	addi	a1, s2, 56
	mul	a2, a3, a2
	slli	a2, a2, 7
	mv	a0, s0
	call	jpeg_open_backing_store
	lw	a3, 20(s2)
	sw	s4, 44(s2)
	j	.LBB7_26
.LBB7_31:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	realize_virt_arrays, .Lfunc_end7-realize_virt_arrays
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function access_virt_sarray
	.type	access_virt_sarray,@function
access_virt_sarray:                     # @access_virt_sarray
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
	mv	s0, a1
	lw	a1, 8(a1)
	mv	s1, a2
	addw	s7, a3, a2
	mv	s2, a4
	mv	s3, a0
	bltu	a1, s7, .LBB8_4
# %bb.1:
	lw	a0, 16(s0)
	bltu	a0, a3, .LBB8_4
# %bb.2:
	ld	a0, 0(s0)
	beqz	a0, .LBB8_4
# %bb.3:
	lw	a0, 28(s0)
	bgeu	s1, a0, .LBB8_5
	j	.LBB8_6
.LBB8_4:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 22
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
	lw	a0, 28(s0)
	bltu	s1, a0, .LBB8_6
.LBB8_5:
	lw	a1, 20(s0)
	addw	a0, a1, a0
	bgeu	a0, s7, .LBB8_32
.LBB8_6:
	lw	a0, 44(s0)
	bnez	a0, .LBB8_8
# %bb.7:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 69
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
.LBB8_8:
	lw	a0, 40(s0)
	addi	s4, s0, 56
	beqz	a0, .LBB8_20
# %bb.9:
	lwu	a0, 20(s0)
	beqz	a0, .LBB8_19
# %bb.10:
	lwu	s8, 12(s0)
	lwu	a2, 28(s0)
	lwu	a1, 24(s0)
	li	s9, 0
	mul	s5, a2, s8
.LBB8_11:                               # =>This Inner Loop Header: Depth=1
	sub	a0, a0, s9
	blt	a0, a1, .LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a0, a1
.LBB8_13:                               #   in Loop: Header=BB8_11 Depth=1
	lwu	a1, 28(s0)
	lwu	a2, 32(s0)
	add	a1, s9, a1
	sub	a2, a2, a1
	bge	a0, a2, .LBB8_16
# %bb.14:                               #   in Loop: Header=BB8_11 Depth=1
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	bge	a0, a1, .LBB8_17
.LBB8_15:                               #   in Loop: Header=BB8_11 Depth=1
	bgtz	a0, .LBB8_18
	j	.LBB8_19
.LBB8_16:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a0, a2
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	blt	a0, a1, .LBB8_15
.LBB8_17:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a0, a1
	blez	a1, .LBB8_19
.LBB8_18:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a1, 0(s0)
	ld	a5, 64(s0)
	slli	a2, s9, 3
	add	a1, a1, a2
	ld	a2, 0(a1)
	mul	s6, a0, s8
	mv	a0, s3
	mv	a1, s4
	mv	a3, s5
	mv	a4, s6
	jalr	a5
	lwu	a1, 24(s0)
	lwu	a0, 20(s0)
	add	s9, s9, a1
	add	s5, s6, s5
	bltu	s9, a0, .LBB8_11
.LBB8_19:
	sw	zero, 40(s0)
.LBB8_20:
	lw	a0, 28(s0)
	bgeu	a0, s1, .LBB8_22
# %bb.21:
	lw	a0, 20(s0)
	mv	a1, s1
	sext.w	a2, a0
	sw	s1, 28(s0)
	bnez	a2, .LBB8_23
	j	.LBB8_32
.LBB8_22:
	lwu	a0, 20(s0)
	slli	a1, s7, 32
	srli	a1, a1, 32
	sub	a1, a1, a0
	sgtz	a2, a1
	neg	a2, a2
	and	a1, a2, a1
	sext.w	a2, a0
	sw	a1, 28(s0)
	beqz	a2, .LBB8_32
.LBB8_23:
	li	s8, 0
	lwu	s9, 12(s0)
	slli	a0, a0, 32
	srli	a0, a0, 32
	lwu	a2, 24(s0)
	slli	a1, a1, 32
	srli	a1, a1, 32
	mul	s5, s9, a1
.LBB8_24:                               # =>This Inner Loop Header: Depth=1
	sub	a0, a0, s8
	blt	a0, a2, .LBB8_26
# %bb.25:                               #   in Loop: Header=BB8_24 Depth=1
	mv	a0, a2
.LBB8_26:                               #   in Loop: Header=BB8_24 Depth=1
	lwu	a1, 28(s0)
	lwu	a2, 32(s0)
	add	a1, s8, a1
	sub	a2, a2, a1
	bge	a0, a2, .LBB8_29
# %bb.27:                               #   in Loop: Header=BB8_24 Depth=1
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	bge	a0, a1, .LBB8_30
.LBB8_28:                               #   in Loop: Header=BB8_24 Depth=1
	bgtz	a0, .LBB8_31
	j	.LBB8_32
.LBB8_29:                               #   in Loop: Header=BB8_24 Depth=1
	mv	a0, a2
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	blt	a0, a1, .LBB8_28
.LBB8_30:                               #   in Loop: Header=BB8_24 Depth=1
	mv	a0, a1
	blez	a1, .LBB8_32
.LBB8_31:                               #   in Loop: Header=BB8_24 Depth=1
	ld	a1, 0(s0)
	ld	a5, 56(s0)
	slli	a2, s8, 3
	add	a1, a1, a2
	ld	a2, 0(a1)
	mul	s6, a0, s9
	mv	a0, s3
	mv	a1, s4
	mv	a3, s5
	mv	a4, s6
	jalr	a5
	lwu	a2, 24(s0)
	lwu	a0, 20(s0)
	add	s8, s8, a2
	add	s5, s6, s5
	bltu	s8, a0, .LBB8_24
.LBB8_32:
	lw	a0, 32(s0)
	bgeu	a0, s7, .LBB8_42
# %bb.33:
	bgeu	a0, s1, .LBB8_36
# %bb.34:
	beqz	s2, .LBB8_38
# %bb.35:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 22
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
	mv	a0, s1
	j	.LBB8_37
.LBB8_36:
	beqz	s2, .LBB8_45
.LBB8_37:
	lw	a1, 36(s0)
	sw	s7, 32(s0)
	bnez	a1, .LBB8_39
	j	.LBB8_43
.LBB8_38:
	lw	a1, 36(s0)
	mv	a0, s1
	beqz	a1, .LBB8_46
.LBB8_39:
	lw	a2, 28(s0)
	subw	a1, a0, a2
	subw	a2, s7, a2
	bgeu	a1, a2, .LBB8_42
# %bb.40:
	lwu	s3, 12(s0)
	slli	a1, a1, 32
	srli	s4, a1, 29
	not	a0, a0
	add	a0, a0, s7
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	a0, a0, s4
	addi	s5, a0, 8
.LBB8_41:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	mv	a1, s3
	call	jzero_far
	addi	s4, s4, 8
	bne	s4, s5, .LBB8_41
.LBB8_42:
	beqz	s2, .LBB8_44
.LBB8_43:
	li	a0, 1
	sw	a0, 40(s0)
.LBB8_44:
	lw	a0, 28(s0)
	ld	a1, 0(s0)
	subw	s1, s1, a0
	slli	s1, s1, 32
	srli	a0, s1, 29
	add	a0, a1, a0
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
.LBB8_45:
	lw	a1, 36(s0)
	bnez	a1, .LBB8_39
.LBB8_46:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 22
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
	j	.LBB8_44
.Lfunc_end8:
	.size	access_virt_sarray, .Lfunc_end8-access_virt_sarray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function access_virt_barray
	.type	access_virt_barray,@function
access_virt_barray:                     # @access_virt_barray
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
	mv	s0, a1
	lw	a1, 8(a1)
	mv	s1, a2
	addw	s7, a3, a2
	mv	s2, a4
	mv	s3, a0
	bltu	a1, s7, .LBB9_4
# %bb.1:
	lw	a0, 16(s0)
	bltu	a0, a3, .LBB9_4
# %bb.2:
	ld	a0, 0(s0)
	beqz	a0, .LBB9_4
# %bb.3:
	lw	a0, 28(s0)
	bgeu	s1, a0, .LBB9_5
	j	.LBB9_6
.LBB9_4:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 22
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
	lw	a0, 28(s0)
	bltu	s1, a0, .LBB9_6
.LBB9_5:
	lw	a1, 20(s0)
	addw	a0, a1, a0
	bgeu	a0, s7, .LBB9_32
.LBB9_6:
	lw	a0, 44(s0)
	bnez	a0, .LBB9_8
# %bb.7:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 69
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
.LBB9_8:
	lw	a0, 40(s0)
	addi	s4, s0, 56
	beqz	a0, .LBB9_20
# %bb.9:
	lwu	a0, 20(s0)
	beqz	a0, .LBB9_19
# %bb.10:
	lwu	s9, 12(s0)
	lwu	a2, 28(s0)
	lwu	a1, 24(s0)
	li	s8, 0
	slli	s9, s9, 7
	mul	s5, s9, a2
.LBB9_11:                               # =>This Inner Loop Header: Depth=1
	sub	a0, a0, s8
	blt	a0, a1, .LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=1
	mv	a0, a1
.LBB9_13:                               #   in Loop: Header=BB9_11 Depth=1
	lwu	a1, 28(s0)
	lwu	a2, 32(s0)
	add	a1, s8, a1
	sub	a2, a2, a1
	bge	a0, a2, .LBB9_16
# %bb.14:                               #   in Loop: Header=BB9_11 Depth=1
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	bge	a0, a1, .LBB9_17
.LBB9_15:                               #   in Loop: Header=BB9_11 Depth=1
	bgtz	a0, .LBB9_18
	j	.LBB9_19
.LBB9_16:                               #   in Loop: Header=BB9_11 Depth=1
	mv	a0, a2
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	blt	a0, a1, .LBB9_15
.LBB9_17:                               #   in Loop: Header=BB9_11 Depth=1
	mv	a0, a1
	blez	a1, .LBB9_19
.LBB9_18:                               #   in Loop: Header=BB9_11 Depth=1
	ld	a1, 0(s0)
	ld	a5, 64(s0)
	slli	a2, s8, 3
	add	a1, a1, a2
	ld	a2, 0(a1)
	mul	s6, a0, s9
	mv	a0, s3
	mv	a1, s4
	mv	a3, s5
	mv	a4, s6
	jalr	a5
	lwu	a1, 24(s0)
	lwu	a0, 20(s0)
	add	s8, s8, a1
	add	s5, s6, s5
	bltu	s8, a0, .LBB9_11
.LBB9_19:
	sw	zero, 40(s0)
.LBB9_20:
	lw	a0, 28(s0)
	bgeu	a0, s1, .LBB9_22
# %bb.21:
	lw	a0, 20(s0)
	mv	a1, s1
	sext.w	a2, a0
	sw	s1, 28(s0)
	bnez	a2, .LBB9_23
	j	.LBB9_32
.LBB9_22:
	lwu	a0, 20(s0)
	slli	a1, s7, 32
	srli	a1, a1, 32
	sub	a1, a1, a0
	sgtz	a2, a1
	neg	a2, a2
	and	a1, a2, a1
	sext.w	a2, a0
	sw	a1, 28(s0)
	beqz	a2, .LBB9_32
.LBB9_23:
	lwu	s9, 12(s0)
	li	s8, 0
	slli	s9, s9, 7
	slli	a0, a0, 32
	srli	a0, a0, 32
	lwu	a2, 24(s0)
	slli	a1, a1, 32
	srli	a1, a1, 32
	mul	s5, s9, a1
.LBB9_24:                               # =>This Inner Loop Header: Depth=1
	sub	a0, a0, s8
	blt	a0, a2, .LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_24 Depth=1
	mv	a0, a2
.LBB9_26:                               #   in Loop: Header=BB9_24 Depth=1
	lwu	a1, 28(s0)
	lwu	a2, 32(s0)
	add	a1, s8, a1
	sub	a2, a2, a1
	bge	a0, a2, .LBB9_29
# %bb.27:                               #   in Loop: Header=BB9_24 Depth=1
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	bge	a0, a1, .LBB9_30
.LBB9_28:                               #   in Loop: Header=BB9_24 Depth=1
	bgtz	a0, .LBB9_31
	j	.LBB9_32
.LBB9_29:                               #   in Loop: Header=BB9_24 Depth=1
	mv	a0, a2
	lwu	a2, 8(s0)
	sub	a1, a2, a1
	blt	a0, a1, .LBB9_28
.LBB9_30:                               #   in Loop: Header=BB9_24 Depth=1
	mv	a0, a1
	blez	a1, .LBB9_32
.LBB9_31:                               #   in Loop: Header=BB9_24 Depth=1
	ld	a1, 0(s0)
	ld	a5, 56(s0)
	slli	a2, s8, 3
	add	a1, a1, a2
	ld	a2, 0(a1)
	mul	s6, a0, s9
	mv	a0, s3
	mv	a1, s4
	mv	a3, s5
	mv	a4, s6
	jalr	a5
	lwu	a2, 24(s0)
	lwu	a0, 20(s0)
	add	s8, s8, a2
	add	s5, s6, s5
	bltu	s8, a0, .LBB9_24
.LBB9_32:
	lw	a0, 32(s0)
	bgeu	a0, s7, .LBB9_42
# %bb.33:
	bgeu	a0, s1, .LBB9_36
# %bb.34:
	beqz	s2, .LBB9_38
# %bb.35:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 22
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
	mv	a0, s1
	j	.LBB9_37
.LBB9_36:
	beqz	s2, .LBB9_45
.LBB9_37:
	lw	a1, 36(s0)
	sw	s7, 32(s0)
	bnez	a1, .LBB9_39
	j	.LBB9_43
.LBB9_38:
	lw	a1, 36(s0)
	mv	a0, s1
	beqz	a1, .LBB9_46
.LBB9_39:
	lw	a2, 28(s0)
	subw	a1, a0, a2
	subw	a2, s7, a2
	bgeu	a1, a2, .LBB9_42
# %bb.40:
	lwu	s3, 12(s0)
	slli	s3, s3, 7
	slli	a1, a1, 32
	srli	s4, a1, 29
	not	a0, a0
	add	a0, a0, s7
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	a0, a0, s4
	addi	s5, a0, 8
.LBB9_41:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	mv	a1, s3
	call	jzero_far
	addi	s4, s4, 8
	bne	s4, s5, .LBB9_41
.LBB9_42:
	beqz	s2, .LBB9_44
.LBB9_43:
	li	a0, 1
	sw	a0, 40(s0)
.LBB9_44:
	lw	a0, 28(s0)
	ld	a1, 0(s0)
	subw	s1, s1, a0
	slli	s1, s1, 32
	srli	a0, s1, 29
	add	a0, a1, a0
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
.LBB9_45:
	lw	a1, 36(s0)
	bnez	a1, .LBB9_39
.LBB9_46:
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	li	a2, 22
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
	j	.LBB9_44
.Lfunc_end9:
	.size	access_virt_barray, .Lfunc_end9-access_virt_barray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function free_pool
	.type	free_pool,@function
free_pool:                              # @free_pool
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s3, 8(a0)
	li	a0, 2
	mv	s1, a1
	bltu	a1, a0, .LBB10_2
# %bb.1:
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 14
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB10_6
.LBB10_2:
	li	a0, 1
	bne	s1, a0, .LBB10_6
# %bb.3:
	ld	s2, 136(s3)
	bnez	s2, .LBB10_12
.LBB10_4:
	ld	s2, 144(s3)
	sd	zero, 136(s3)
	bnez	s2, .LBB10_15
.LBB10_5:
	sd	zero, 144(s3)
.LBB10_6:
	slli	a0, s1, 3
	add	a0, s3, a0
	ld	a1, 120(a0)
	sd	zero, 120(a0)
	beqz	a1, .LBB10_8
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 8(a1)
	ld	a2, 16(a1)
	ld	s4, 0(a1)
	add	a0, a0, a2
	addi	s2, a0, 24
	mv	a0, s0
	mv	a2, s2
	call	jpeg_free_large
	ld	a0, 152(s3)
	sub	a0, a0, s2
	sd	a0, 152(s3)
	mv	a1, s4
	bnez	s4, .LBB10_7
.LBB10_8:
	slli	s1, s1, 3
	add	s1, s3, s1
	ld	a1, 104(s1)
	sd	zero, 104(s1)
	beqz	a1, .LBB10_10
.LBB10_9:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 8(a1)
	ld	a2, 16(a1)
	ld	s2, 0(a1)
	add	a0, a0, a2
	addi	s1, a0, 24
	mv	a0, s0
	mv	a2, s1
	call	jpeg_free_small
	ld	a0, 152(s3)
	sub	a0, a0, s1
	sd	a0, 152(s3)
	mv	a1, s2
	bnez	s2, .LBB10_9
.LBB10_10:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB10_11:                              #   in Loop: Header=BB10_12 Depth=1
	ld	s2, 48(s2)
	beqz	s2, .LBB10_4
.LBB10_12:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 44(s2)
	beqz	a0, .LBB10_11
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=1
	ld	a2, 72(s2)
	sw	zero, 44(s2)
	addi	a1, s2, 56
	mv	a0, s0
	jalr	a2
	j	.LBB10_11
.LBB10_14:                              #   in Loop: Header=BB10_15 Depth=1
	ld	s2, 48(s2)
	beqz	s2, .LBB10_5
.LBB10_15:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 44(s2)
	beqz	a0, .LBB10_14
# %bb.16:                               #   in Loop: Header=BB10_15 Depth=1
	ld	a2, 72(s2)
	sw	zero, 44(s2)
	addi	a1, s2, 56
	mv	a0, s0
	jalr	a2
	j	.LBB10_14
.Lfunc_end10:
	.size	free_pool, .Lfunc_end10-free_pool
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function self_destruct
	.type	self_destruct,@function
self_destruct:                          # @self_destruct
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	a1, 1
	call	free_pool
	mv	a0, s0
	li	a1, 0
	call	free_pool
	ld	a1, 8(s0)
	li	a2, 168
	mv	a0, s0
	call	jpeg_free_small
	sd	zero, 8(s0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	jpeg_mem_term
.Lfunc_end11:
	.size	self_destruct, .Lfunc_end11-self_destruct
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JPEGMEM"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%ld%c"
	.size	.L.str.1, 6

	.type	first_pool_slop,@object         # @first_pool_slop
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
first_pool_slop:
	.quad	1600                            # 0x640
	.quad	16000                           # 0x3e80
	.size	first_pool_slop, 16

	.type	extra_pool_slop,@object         # @extra_pool_slop
	.p2align	3, 0x0
extra_pool_slop:
	.quad	0                               # 0x0
	.quad	5000                            # 0x1388
	.size	extra_pool_slop, 16

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
