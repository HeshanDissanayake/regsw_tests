	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"output.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	testEndian                      # -- Begin function testEndian
	.p2align	2
	.type	testEndian,@function
testEndian:                             # @testEndian
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end0:
	.size	testEndian, .Lfunc_end0-testEndian
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	img2buf                         # -- Begin function img2buf
	.p2align	2
	.type	img2buf,@function
img2buf:                                # @img2buf
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
	mv	s0, a7
	mv	s6, a6
	mv	s2, a4
	mv	s8, a3
	mv	s7, a2
	mv	s3, a1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	ld	s10, 128(sp)
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	add	a0, a5, a6
	li	a1, 3
	subw	s9, a2, a0
	bltu	a4, a1, .LBB1_2
# %bb.1:
	add	a0, s0, s10
	subw	a0, s8, a0
	mul	a1, s9, s2
	mulw	a2, a1, a0
	mv	a0, s3
	li	a1, 0
	call	memset
	li	s5, 2
	subw	a0, s8, s10
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	blt	s0, a0, .LBB1_3
	j	.LBB1_8
.LBB1_2:
	mv	s5, s2
	subw	a0, s8, s10
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	bge	s0, a0, .LBB1_8
.LBB1_3:
	subw	s6, s7, s6
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bge	a0, s6, .LBB1_8
# %bb.4:
	li	s4, 0
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	slli	s1, s1, 1
	mul	s9, s2, s9
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	slli	s11, s0, 3
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	s11, a0, s11
	mv	s7, s4
	mv	s10, s1
	ld	s8, 16(sp)                      # 8-byte Folded Reload
.LBB1_6:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 0(s11)
	add	a0, s3, s7
	add	a1, a1, s10
	mv	a2, s5
	call	memcpy
	addi	s8, s8, 1
	addi	s10, s10, 2
	addw	s7, s7, s2
	blt	s8, s6, .LBB1_6
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	addi	s0, s0, 1
	addw	s4, s4, s9
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	blt	s0, a0, .LBB1_5
.LBB1_8:
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
.Lfunc_end1:
	.size	img2buf, .Lfunc_end1-img2buf
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_picture                   # -- Begin function write_picture
	.p2align	2
	.type	write_picture,@function
write_picture:                          # @write_picture
# %bb.0:
	tail	write_out_picture
.Lfunc_end2:
	.size	write_picture, .Lfunc_end2-write_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_out_picture               # -- Begin function write_out_picture
	.p2align	2
	.type	write_out_picture,@function
write_out_picture:                      # @write_out_picture
# %bb.0:
	addi	sp, sp, -192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	addi	a3, a2, 2047
	lw	a3, 1937(a3)
	lui	a4, 2
	addiw	a4, a4, -1804
	add	s9, a0, a4
	beqz	a3, .LBB3_3
# %bb.1:
	lw	a0, 76(a2)
	addi	a0, a0, -3
	seqz	s2, a0
	lw	a0, 0(s9)
	beqz	a0, .LBB3_4
.LBB3_2:
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.LBB3_3:
	li	s2, 0
	lw	a0, 0(s9)
	bnez	a0, .LBB3_2
.LBB3_4:
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 368(a0)
	lw	a1, 172(s9)
	slli	a2, a0, 1
	srli	a2, a2, 61
	add	a0, a0, a2
	sraiw	s4, a0, 3
	beqz	a1, .LBB3_6
# %bb.5:
	lw	a0, 164(s9)
	slli	a0, a0, 2
	lui	a1, %hi(.L__const.write_out_picture.SubWidthC)
	addi	a1, a1, %lo(.L__const.write_out_picture.SubWidthC)
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, 176(s9)
	lw	a3, 180(s9)
	mulw	a2, a2, a1
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	mul	s3, a3, a1
	lui	a1, %hi(.L__const.write_out_picture.SubHeightC)
	addi	a1, a1, %lo(.L__const.write_out_picture.SubHeightC)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, 168(s9)
	li	a2, 2
	lw	a3, 184(s9)
	lw	a4, 188(s9)
	subw	a2, a2, a1
	mul	a0, a2, a0
	mulw	s8, a0, a3
	mul	s0, a0, a4
	j	.LBB3_7
.LBB3_6:
	li	s0, 0
	li	s8, 0
	li	s3, 0
	sd	zero, 80(sp)                    # 8-byte Folded Spill
.LBB3_7:
	lw	a0, 4(s9)
	lw	a1, 8(s9)
	mul	a0, a0, a1
	mulw	a0, a0, s4
	call	malloc
	mv	s1, a0
	beqz	a0, .LBB3_9
# %bb.8:
	sd	s9, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	bnez	s2, .LBB3_10
	j	.LBB3_21
.LBB3_9:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
	sd	s9, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	beqz	s2, .LBB3_21
.LBB3_10:
	lw	a4, 176(s9)
	lw	s3, 180(s9)
	lw	a0, 168(s9)
	li	s2, 2
	lw	a1, 184(s9)
	lw	a2, 188(s9)
	subw	a0, s2, a0
	ld	a3, 76(s9)
	mulw	s7, a0, a1
	mul	s5, a2, a0
	lw	s0, 12(s9)
	ld	a0, 8(a3)
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lw	s6, 16(s9)
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	add	a0, s3, a4
	subw	a0, s0, a0
	add	a1, s5, s7
	mul	s10, a0, s4
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	bgeu	s2, s4, .LBB3_12
# %bb.11:
	subw	a0, s6, a1
	mulw	a2, s10, a0
	mv	a0, s1
	li	a1, 0
	call	memset
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	subw	s11, s6, s5
	blt	s7, s11, .LBB3_13
	j	.LBB3_18
.LBB3_12:
	mv	s2, s4
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	subw	s11, s6, s5
	bge	s7, s11, .LBB3_18
.LBB3_13:
	subw	s9, s0, s3
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	bge	a0, s9, .LBB3_18
# %bb.14:
	li	s8, 0
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	slli	s0, s0, 1
.LBB3_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	slli	a0, s7, 3
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	s3, 0(a0)
	add	s3, s3, s0
	mv	s5, s8
	ld	s6, 80(sp)                      # 8-byte Folded Reload
.LBB3_16:                               #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, s1, s5
	mv	a1, s3
	mv	a2, s2
	call	memcpy
	addi	s6, s6, 1
	addi	s3, s3, 2
	addw	s5, s5, s4
	blt	s6, s9, .LBB3_16
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=1
	addi	s7, s7, 1
	addw	s8, s8, s10
	blt	s7, s11, .LBB3_15
.LBB3_18:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	subw	a0, a0, a1
	mulw	a2, s10, a0
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	mv	a1, s1
	call	write
	ld	s9, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 172(s9)
	beqz	a0, .LBB3_20
# %bb.19:
	lw	a0, 164(s9)
	slli	a0, a0, 2
	lui	a1, %hi(.L__const.write_out_picture.SubWidthC)
	addi	a1, a1, %lo(.L__const.write_out_picture.SubWidthC)
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, 176(s9)
	lw	a3, 180(s9)
	mulw	a2, a2, a1
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	mul	s3, a3, a1
	lui	a1, %hi(.L__const.write_out_picture.SubHeightC)
	addi	a1, a1, %lo(.L__const.write_out_picture.SubHeightC)
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, 168(s9)
	li	a2, 2
	lw	a3, 184(s9)
	lw	a4, 188(s9)
	subw	a2, a2, a1
	mul	a0, a2, a0
	mulw	s8, a0, a3
	mul	s0, a0, a4
	j	.LBB3_21
.LBB3_20:
	li	s0, 0
	li	s8, 0
	li	s3, 0
	sd	zero, 80(sp)                    # 8-byte Folded Spill
.LBB3_21:
	lw	s6, 4(s9)
	ld	a0, 36(s9)
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lw	s5, 8(s9)
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a0, a0, s3
	subw	a0, s6, a0
	li	a1, 3
	add	a2, s8, s0
	mul	s11, a0, s4
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	bltu	s4, a1, .LBB3_23
# %bb.22:
	subw	a0, s5, a2
	mulw	a2, s11, a0
	mv	a0, s1
	li	a1, 0
	call	memset
	li	s2, 2
	sd	s5, 64(sp)                      # 8-byte Folded Spill
	subw	s0, s5, s0
	blt	s8, s0, .LBB3_24
	j	.LBB3_29
.LBB3_23:
	mv	s2, s4
	sd	s5, 64(sp)                      # 8-byte Folded Spill
	subw	s0, s5, s0
	bge	s8, s0, .LBB3_29
.LBB3_24:
	subw	s6, s6, s3
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	bge	a0, s6, .LBB3_29
# %bb.25:
	li	s5, 0
	ld	s7, 80(sp)                      # 8-byte Folded Reload
	slli	s7, s7, 1
.LBB3_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_27 Depth 2
	slli	a0, s8, 3
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	s3, 0(a0)
	add	s3, s3, s7
	mv	s9, s5
	ld	s10, 80(sp)                     # 8-byte Folded Reload
.LBB3_27:                               #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, s1, s9
	mv	a1, s3
	mv	a2, s2
	call	memcpy
	addi	s10, s10, 1
	addi	s3, s3, 2
	addw	s9, s9, s4
	blt	s10, s6, .LBB3_27
# %bb.28:                               #   in Loop: Header=BB3_26 Depth=1
	addi	s8, s8, 1
	addw	s5, s5, s11
	blt	s8, s0, .LBB3_26
.LBB3_29:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	subw	a0, a0, a1
	mulw	a2, s11, a0
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	mv	a1, s1
	call	write
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 164(a4)
	beqz	a0, .LBB3_49
# %bb.30:
	lw	a5, 176(a4)
	lw	a6, 180(a4)
	lw	a0, 168(a4)
	li	s2, 2
	lw	a1, 184(a4)
	lw	a2, 188(a4)
	subw	a0, s2, a0
	ld	a3, 76(a4)
	mulw	s7, a0, a1
	mul	s0, a2, a0
	lw	s3, 12(a4)
	ld	a0, 0(a3)
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lw	s5, 16(a4)
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	sd	a6, 16(sp)                      # 8-byte Folded Spill
	add	a5, a6, a5
	sd	a5, 0(sp)                       # 8-byte Folded Spill
	subw	a0, s3, a5
	add	a1, s0, s7
	mul	s6, a0, s4
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	bgeu	s2, s4, .LBB3_32
# %bb.31:
	subw	a0, s5, a1
	mulw	a2, s6, a0
	mv	a0, s1
	li	a1, 0
	call	memset
	j	.LBB3_33
.LBB3_32:
	mv	s2, s4
.LBB3_33:
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	subw	a0, s5, s0
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	bge	s7, a0, .LBB3_39
# %bb.34:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	subw	s10, s3, a0
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	bge	a0, s10, .LBB3_39
# %bb.35:
	li	s9, 0
	ld	s5, 80(sp)                      # 8-byte Folded Reload
	slli	s5, s5, 1
	mv	s8, s7
.LBB3_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_37 Depth 2
	mv	s0, s6
	slli	a0, s8, 3
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	s3, 0(a0)
	add	s3, s3, s5
	mv	s6, s9
	ld	s11, 80(sp)                     # 8-byte Folded Reload
.LBB3_37:                               #   Parent Loop BB3_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, s1, s6
	mv	a1, s3
	mv	a2, s2
	call	memcpy
	addi	s11, s11, 1
	addi	s3, s3, 2
	addw	s6, s6, s4
	blt	s11, s10, .LBB3_37
# %bb.38:                               #   in Loop: Header=BB3_36 Depth=1
	addi	s8, s8, 1
	mv	s6, s0
	addw	s9, s9, s0
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	blt	s8, a0, .LBB3_36
.LBB3_39:
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	subw	a0, a0, s2
	mulw	a2, s6, a0
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	mv	a1, s1
	call	write
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB3_49
# %bb.40:
	ld	a0, 76(a1)
	lw	s3, 12(a1)
	lw	s0, 16(a1)
	ld	a0, 8(a0)
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	subw	a0, s3, a0
	li	a1, 3
	subw	a2, s0, s2
	mul	s9, a0, s4
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	bltu	s4, a1, .LBB3_42
# %bb.41:
	mulw	a2, s9, a2
	mv	a0, s1
	li	a1, 0
	call	memset
	li	s2, 2
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	subw	s0, s0, a0
	blt	s7, s0, .LBB3_43
	j	.LBB3_48
.LBB3_42:
	mv	s2, s4
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	subw	s0, s0, a0
	bge	s7, s0, .LBB3_48
.LBB3_43:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	subw	s10, s3, a0
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	bge	a0, s10, .LBB3_48
# %bb.44:
	li	s11, 0
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	slli	s6, s6, 1
.LBB3_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_46 Depth 2
	slli	a0, s7, 3
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	s3, 0(a0)
	add	s3, s3, s6
	mv	s8, s11
	ld	s5, 80(sp)                      # 8-byte Folded Reload
.LBB3_46:                               #   Parent Loop BB3_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, s1, s8
	mv	a1, s3
	mv	a2, s2
	call	memcpy
	addi	s5, s5, 1
	addi	s3, s3, 2
	addw	s8, s8, s4
	blt	s5, s10, .LBB3_46
# %bb.47:                               #   in Loop: Header=BB3_45 Depth=1
	addi	s7, s7, 1
	addw	s11, s11, s9
	blt	s7, s0, .LBB3_45
.LBB3_48:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	mulw	a2, s9, a0
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	mv	a1, s1
	call	write
.LBB3_49:
	mv	a0, s1
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	tail	free
.Lfunc_end3:
	.size	write_out_picture, .Lfunc_end3-write_out_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_out_buffer                 # -- Begin function init_out_buffer
	.p2align	2
	.type	init_out_buffer,@function
init_out_buffer:                        # @init_out_buffer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	call	alloc_frame_store
	lui	a1, %hi(out_buffer)
	sd	a0, %lo(out_buffer)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	init_out_buffer, .Lfunc_end4-init_out_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	uninit_out_buffer               # -- Begin function uninit_out_buffer
	.p2align	2
	.type	uninit_out_buffer,@function
uninit_out_buffer:                      # @uninit_out_buffer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(out_buffer)
	ld	a0, %lo(out_buffer)(s0)
	call	free_frame_store
	sd	zero, %lo(out_buffer)(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	uninit_out_buffer, .Lfunc_end5-uninit_out_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_picture                   # -- Begin function clear_picture
	.p2align	2
	.type	clear_picture,@function
clear_picture:                          # @clear_picture
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	a1, 2
	addiw	s0, a1, -1800
	add	s0, a0, s0
	lw	a0, 4(s0)
	blez	a0, .LBB6_3
# %bb.1:
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(img)
	lui	s4, 22
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 32(s0)
	ld	a1, %lo(img)(s3)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s4
	lw	a2, 0(s0)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 4(s0)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB6_2
.LBB6_3:
	lw	a0, 12(s0)
	blez	a0, .LBB6_9
# %bb.4:
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(img)
	lui	s4, 22
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s0)
	ld	a0, 0(a0)
	ld	a1, %lo(img)(s3)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s4
	lw	a2, 8(s0)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s0)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB6_5
# %bb.6:
	blez	a0, .LBB6_9
# %bb.7:
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(img)
	lui	s4, 22
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s0)
	ld	a0, 8(a0)
	ld	a1, %lo(img)(s3)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s4
	lw	a2, 8(s0)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s0)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB6_8
.LBB6_9:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end6:
	.size	clear_picture, .Lfunc_end6-clear_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_unpaired_field            # -- Begin function write_unpaired_field
	.p2align	2
	.type	write_unpaired_field,@function
write_unpaired_field:                   # @write_unpaired_field
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
	mv	s0, a0
	lw	a0, 0(a0)
	li	a2, 3
	bge	a0, a2, .LBB7_35
# %bb.1:
	mv	s1, a1
	andi	a1, a0, 1
	beqz	a1, .LBB7_12
# %bb.2:
	ld	a0, 48(s0)
	lui	a1, 2
	addiw	s2, a1, -1800
	add	s3, a0, s2
	lw	a1, 0(s3)
	lw	a2, 4(s3)
	lw	a3, 8(s3)
	lw	a4, 12(s3)
	li	a0, 2
	call	alloc_storable_picture
	add	s2, a0, s2
	lw	a1, 160(s3)
	lw	a2, 4(s2)
	sd	a0, 56(s0)
	sw	a1, 160(s2)
	blez	a2, .LBB7_5
# %bb.3:
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(img)
	lui	s6, 22
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 32(s2)
	ld	a1, %lo(img)(s5)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s6
	lw	a2, 0(s2)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 4(s2)
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a0, .LBB7_4
.LBB7_5:
	lw	a0, 12(s2)
	blez	a0, .LBB7_11
# %bb.6:
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(img)
	lui	s6, 22
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s2)
	ld	a0, 0(a0)
	ld	a1, %lo(img)(s5)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s6
	lw	a2, 8(s2)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s2)
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a0, .LBB7_7
# %bb.8:
	blez	a0, .LBB7_11
# %bb.9:                                # %.preheader5
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(img)
	lui	s6, 22
.LBB7_10:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s2)
	ld	a0, 8(a0)
	ld	a1, %lo(img)(s5)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s6
	lw	a2, 8(s2)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s2)
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a0, .LBB7_10
.LBB7_11:
	mv	a0, s0
	call	dpb_combine_field_yuv
	ld	a0, 40(s0)
	mv	a1, s1
	call	write_out_picture
	lw	a0, 0(s0)
.LBB7_12:
	andi	a0, a0, 2
	beqz	a0, .LBB7_34
# %bb.13:
	ld	s2, 56(s0)
	lui	a0, 2
	addiw	s3, a0, -1800
	add	s2, s2, s3
	lw	a1, 0(s2)
	lw	a2, 4(s2)
	lw	a3, 8(s2)
	lw	a4, 12(s2)
	li	a0, 1
	call	alloc_storable_picture
	add	s3, a0, s3
	lw	a1, 4(s3)
	sd	a0, 48(s0)
	blez	a1, .LBB7_16
# %bb.14:
	li	s4, 0
	li	s5, 0
	lui	s6, %hi(img)
	lui	s7, 22
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 32(s3)
	ld	a1, %lo(img)(s6)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a1, a1, s7
	lw	a2, 0(s3)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 4(s3)
	addi	s5, s5, 1
	addi	s4, s4, 8
	blt	s5, a0, .LBB7_15
.LBB7_16:
	lw	a0, 12(s3)
	blez	a0, .LBB7_22
# %bb.17:
	li	s4, 0
	li	s5, 0
	lui	s6, %hi(img)
	lui	s7, 22
.LBB7_18:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s3)
	ld	a0, 0(a0)
	ld	a1, %lo(img)(s6)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a1, a1, s7
	lw	a2, 8(s3)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s3)
	addi	s5, s5, 1
	addi	s4, s4, 8
	blt	s5, a0, .LBB7_18
# %bb.19:
	blez	a0, .LBB7_22
# %bb.20:                               # %.preheader2
	li	s4, 0
	li	s5, 0
	lui	s6, %hi(img)
	lui	s7, 22
.LBB7_21:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s3)
	ld	a0, 8(a0)
	ld	a1, %lo(img)(s6)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a1, a1, s7
	lw	a2, 8(s3)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s3)
	addi	s5, s5, 1
	addi	s4, s4, 8
	blt	s5, a0, .LBB7_21
.LBB7_22:
	ld	a0, 48(s0)
	lw	a1, 160(s2)
	lui	a2, 2
	addiw	s2, a2, -1800
	add	s2, a0, s2
	lw	a0, 4(s2)
	sw	a1, 160(s2)
	blez	a0, .LBB7_25
# %bb.23:
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(img)
	lui	s6, 22
.LBB7_24:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 32(s2)
	ld	a1, %lo(img)(s5)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s6
	lw	a2, 0(s2)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 4(s2)
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a0, .LBB7_24
.LBB7_25:
	lw	a0, 12(s2)
	blez	a0, .LBB7_31
# %bb.26:
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(img)
	lui	s6, 22
.LBB7_27:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s2)
	ld	a0, 0(a0)
	ld	a1, %lo(img)(s5)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s6
	lw	a2, 8(s2)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s2)
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a0, .LBB7_27
# %bb.28:
	blez	a0, .LBB7_31
# %bb.29:                               # %.preheader
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(img)
	lui	s6, 22
.LBB7_30:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 72(s2)
	ld	a0, 8(a0)
	ld	a1, %lo(img)(s5)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s6
	lw	a2, 8(s2)
	lbu	a1, 416(a1)
	slli	a2, a2, 1
	call	memset
	lw	a0, 12(s2)
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a0, .LBB7_30
.LBB7_31:
	ld	a0, 56(s0)
	lui	a1, 2
	addiw	a1, a1, -1632
	add	a0, a0, a1
	ld	a2, 48(s0)
	lw	a3, 0(a0)
	add	a1, a2, a1
	sw	a3, 0(a1)
	beqz	a3, .LBB7_33
# %bb.32:
	ld	a2, 8(a0)
	sd	a2, 8(a1)
	lw	a2, 16(a0)
	lw	a0, 4(a0)
	sw	a2, 16(a1)
	sw	a0, 4(a1)
.LBB7_33:
	mv	a0, s0
	call	dpb_combine_field_yuv
	ld	a0, 40(s0)
	mv	a1, s1
	call	write_out_picture
.LBB7_34:
	li	a0, 3
	sw	a0, 0(s0)
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
.LBB7_35:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.write_unpaired_field)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.write_unpaired_field)
	li	a2, 338
	call	__assert_fail
.Lfunc_end7:
	.size	write_unpaired_field, .Lfunc_end7-write_unpaired_field
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	flush_direct_output             # -- Begin function flush_direct_output
	.p2align	2
	.type	flush_direct_output,@function
flush_direct_output:                    # @flush_direct_output
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(out_buffer)
	ld	a1, %lo(out_buffer)(s0)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	write_unpaired_field
	ld	a0, %lo(out_buffer)(s0)
	ld	a0, 40(a0)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s0)
	ld	a0, 48(a1)
	sd	zero, 40(a1)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s0)
	ld	a0, 56(a1)
	sd	zero, 48(a1)
	call	free_storable_picture
	ld	a0, %lo(out_buffer)(s0)
	sd	zero, 56(a0)
	sw	zero, 0(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end8:
	.size	flush_direct_output, .Lfunc_end8-flush_direct_output
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_stored_frame              # -- Begin function write_stored_frame
	.p2align	2
	.type	write_stored_frame,@function
write_stored_frame:                     # @write_stored_frame
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(out_buffer)
	ld	a2, %lo(out_buffer)(s2)
	mv	s1, a1
	mv	s0, a0
	mv	a0, a2
	call	write_unpaired_field
	ld	a0, %lo(out_buffer)(s2)
	ld	a0, 40(a0)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 48(a1)
	sd	zero, 40(a1)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 56(a1)
	sd	zero, 48(a1)
	call	free_storable_picture
	ld	a0, %lo(out_buffer)(s2)
	sw	zero, 0(a0)
	lw	a1, 0(s0)
	li	a2, 2
	sd	zero, 56(a0)
	blt	a2, a1, .LBB9_2
# %bb.1:
	mv	a0, s0
	mv	a1, s1
	call	write_unpaired_field
	j	.LBB9_3
.LBB9_2:
	ld	a0, 40(s0)
	mv	a1, s1
	call	write_out_picture
.LBB9_3:
	li	a0, 1
	sw	a0, 32(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	write_stored_frame, .Lfunc_end9-write_stored_frame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	direct_output                   # -- Begin function direct_output
	.p2align	2
	.type	direct_output,@function
direct_output:                          # @direct_output
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	lw	a3, 0(a0)
	lui	a0, %hi(out_buffer)
	ld	a0, %lo(out_buffer)(a0)
	li	a2, 1
	mv	s0, a1
	beq	a3, a2, .LBB10_3
# %bb.1:
	bnez	a3, .LBB10_6
# %bb.2:
	mv	a1, s0
	call	write_unpaired_field
	lui	s2, %hi(out_buffer)
	ld	a0, %lo(out_buffer)(s2)
	ld	a0, 40(a0)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 48(a1)
	sd	zero, 40(a1)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 56(a1)
	sd	zero, 48(a1)
	call	free_storable_picture
	ld	a0, %lo(out_buffer)(s2)
	sd	zero, 56(a0)
	sw	zero, 0(a0)
	mv	a0, s1
	mv	a1, s0
	call	write_out_picture
	mv	a0, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	free_storable_picture
.LBB10_3:
	lwu	a1, 0(a0)
	andi	a3, a1, 1
	beqz	a3, .LBB10_5
# %bb.4:
	mv	a1, s0
	call	write_unpaired_field
	lui	s2, %hi(out_buffer)
	ld	a0, %lo(out_buffer)(s2)
	ld	a0, 40(a0)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 48(a1)
	sd	zero, 40(a1)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 56(a1)
	sd	zero, 48(a1)
	call	free_storable_picture
	ld	a0, %lo(out_buffer)(s2)
	lw	a2, 0(s1)
	li	a1, 0
	sd	zero, 56(a0)
	sw	zero, 0(a0)
.LBB10_5:
	sd	s1, 48(a0)
	ori	a1, a1, 1
	sw	a1, 0(a0)
	mv	a3, a2
.LBB10_6:
	lw	a1, 0(a0)
	li	a2, 2
	bne	a3, a2, .LBB10_10
# %bb.7:
	andi	a2, a1, 2
	beqz	a2, .LBB10_9
# %bb.8:
	mv	a1, s0
	call	write_unpaired_field
	lui	s2, %hi(out_buffer)
	ld	a0, %lo(out_buffer)(s2)
	ld	a0, 40(a0)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 48(a1)
	sd	zero, 40(a1)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s2)
	ld	a0, 56(a1)
	sd	zero, 48(a1)
	call	free_storable_picture
	ld	a0, %lo(out_buffer)(s2)
	li	a1, 0
	sd	zero, 56(a0)
	sw	zero, 0(a0)
.LBB10_9:
	sd	s1, 56(a0)
	ori	a1, a1, 2
	sw	a1, 0(a0)
.LBB10_10:
	li	a2, 3
	bne	a1, a2, .LBB10_12
# %bb.11:
	call	dpb_combine_field_yuv
	lui	s1, %hi(out_buffer)
	ld	a0, %lo(out_buffer)(s1)
	ld	a0, 40(a0)
	mv	a1, s0
	call	write_out_picture
	ld	a0, %lo(out_buffer)(s1)
	ld	a0, 40(a0)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s1)
	ld	a0, 48(a1)
	sd	zero, 40(a1)
	call	free_storable_picture
	ld	a1, %lo(out_buffer)(s1)
	ld	a0, 56(a1)
	sd	zero, 48(a1)
	call	free_storable_picture
	ld	a0, %lo(out_buffer)(s1)
	sd	zero, 56(a0)
	sw	zero, 0(a0)
.LBB10_12:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end10:
	.size	direct_output, .Lfunc_end10-direct_output
                                        # -- End function
	.option	pop
	.type	.L__const.write_out_picture.SubWidthC,@object # @__const.write_out_picture.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.write_out_picture.SubWidthC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.L__const.write_out_picture.SubWidthC, 16

	.type	.L__const.write_out_picture.SubHeightC,@object # @__const.write_out_picture.SubHeightC
	.p2align	2, 0x0
.L__const.write_out_picture.SubHeightC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.write_out_picture.SubHeightC, 16

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"write_out_picture: buf"
	.size	.L.str.1, 23

	.type	out_buffer,@object              # @out_buffer
	.section	.sbss,"aw",@nobits
	.globl	out_buffer
	.p2align	3, 0x0
out_buffer:
	.quad	0
	.size	out_buffer, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"fs->is_used<3"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"src/output.c"
	.size	.L.str.3, 13

	.type	.L__PRETTY_FUNCTION__.write_unpaired_field,@object # @__PRETTY_FUNCTION__.write_unpaired_field
.L__PRETTY_FUNCTION__.write_unpaired_field:
	.asciz	"void write_unpaired_field(FrameStore *, int)"
	.size	.L__PRETTY_FUNCTION__.write_unpaired_field, 45

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
