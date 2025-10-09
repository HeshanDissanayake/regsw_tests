	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"leaky_bucket.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_LeakyBucketRate             # -- Begin function get_LeakyBucketRate
	.p2align	2
	.type	get_LeakyBucketRate,@function
get_LeakyBucketRate:                    # @get_LeakyBucketRate
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	mv	s0, a1
	mv	s2, a0
	addi	a0, a2, 2047
	addi	a0, a0, 1105
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	call	fopen
	beqz	a0, .LBB0_6
# %bb.1:
	mv	s1, a0
	beqz	s2, .LBB0_5
# %bb.2:
	lui	s3, %hi(.L.str.2)
	addi	s3, s3, %lo(.L.str.2)
	li	s4, 1
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addi	a2, sp, 8
	mv	a0, s1
	mv	a1, s3
	call	__isoc99_fscanf
	bne	a0, s4, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, 8(sp)
	sd	a0, 0(s0)
	addi	s2, s2, -1
	addi	s0, s0, 8
	bnez	s2, .LBB0_3
.LBB0_5:
	mv	a0, s1
	call	fclose
	li	a0, 1
	j	.LBB0_9
.LBB0_6:
	lui	a0, %hi(.Lstr.14)
	addi	a0, a0, %lo(.Lstr.14)
	call	puts
	j	.LBB0_8
.LBB0_7:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	mv	a0, s1
	call	fclose
.LBB0_8:
	li	a0, 0
.LBB0_9:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	get_LeakyBucketRate, .Lfunc_end0-get_LeakyBucketRate
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	PutBigDoubleWord                # -- Begin function PutBigDoubleWord
	.p2align	2
	.type	PutBigDoubleWord,@function
PutBigDoubleWord:                       # @PutBigDoubleWord
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	mv	s1, a0
	srliw	a0, a0, 24
	call	fputc
	slli	a0, s1, 40
	srli	a0, a0, 56
	mv	a1, s0
	call	fputc
	slli	a0, s1, 48
	srli	a0, a0, 56
	mv	a1, s0
	call	fputc
	andi	a0, s1, 255
	mv	a1, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	fputc
.Lfunc_end1:
	.size	PutBigDoubleWord, .Lfunc_end1-PutBigDoubleWord
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_buffer                    # -- Begin function write_buffer
	.p2align	2
	.type	write_buffer,@function
write_buffer:                           # @write_buffer
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
	lui	s5, %hi(input)
	ld	a4, %lo(input)(s5)
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	addi	a0, a4, 2047
	addi	a0, a0, 1305
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fopen
	mv	s4, a0
	beqz	a0, .LBB2_2
# %bb.1:
	srliw	a0, s3, 24
	mv	a1, s4
	call	fputc
	slli	a0, s3, 40
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	slli	a0, s3, 48
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	andi	a0, s3, 255
	mv	a1, s4
	j	.LBB2_3
.LBB2_2:
	ld	a0, %lo(input)(s5)
	addi	a0, a0, 2047
	addi	a3, a0, 1305
	lui	s5, %hi(errortext)
	addi	s5, s5, %lo(errortext)
	lui	a2, %hi(.L.str.5)
	addi	a2, a2, %lo(.L.str.5)
	li	a1, 300
	mv	a0, s5
	call	snprintf
	li	a1, 1
	mv	a0, s5
	call	error
	srliw	a0, s3, 24
	li	a1, 0
	call	fputc
	slli	a0, s3, 40
	srli	a0, a0, 56
	li	a1, 0
	call	fputc
	slli	a0, s3, 48
	srli	a0, a0, 56
	li	a1, 0
	call	fputc
	andi	a0, s3, 255
	li	a1, 0
.LBB2_3:
	call	fputc
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1857(a0)
	beqz	a0, .LBB2_5
# %bb.4:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	mv	a1, s3
	call	printf
.LBB2_5:
	beqz	s3, .LBB2_10
# %bb.6:                                # %.preheader
	lui	s6, %hi(input)
	lui	s5, %hi(.L.str.7)
	addi	s5, s5, %lo(.L.str.7)
	j	.LBB2_8
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	addi	s3, s3, -1
	addi	s0, s0, 8
	addi	s1, s1, 8
	addi	s2, s2, 8
	beqz	s3, .LBB2_10
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	lw	s7, 0(s2)
	srliw	a0, s7, 24
	mv	a1, s4
	call	fputc
	slli	a0, s7, 40
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	slli	a0, s7, 48
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	andi	a0, s7, 255
	mv	a1, s4
	call	fputc
	lw	s7, 0(s1)
	srliw	a0, s7, 24
	mv	a1, s4
	call	fputc
	slli	a0, s7, 40
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	slli	a0, s7, 48
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	andi	a0, s7, 255
	mv	a1, s4
	call	fputc
	lw	s7, 0(s0)
	srliw	a0, s7, 24
	mv	a1, s4
	call	fputc
	slli	a0, s7, 40
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	slli	a0, s7, 48
	srli	a0, a0, 56
	mv	a1, s4
	call	fputc
	andi	a0, s7, 255
	mv	a1, s4
	call	fputc
	ld	a0, %lo(input)(s6)
	addi	a0, a0, 2047
	lw	a0, 1857(a0)
	beqz	a0, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	ld	a1, 0(s2)
	ld	a2, 0(s1)
	ld	a3, 0(s0)
	mv	a0, s5
	call	printf
	j	.LBB2_7
.LBB2_10:
	mv	a0, s4
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
	tail	fclose
.Lfunc_end2:
	.size	write_buffer, .Lfunc_end2-write_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Sort                            # -- Begin function Sort
	.p2align	2
	.type	Sort,@function
Sort:                                   # @Sort
# %bb.0:
	addi	a2, a0, -1
	beqz	a2, .LBB3_8
# %bb.1:                                # %.preheader
	li	a5, 0
	addi	a3, a1, 8
	mv	a4, a2
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi	a4, a4, -1
	addi	a3, a3, 8
	beq	a5, a2, .LBB3_8
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	mv	a6, a5
	addi	a5, a5, 1
	bgeu	a5, a0, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	slli	a6, a6, 3
	add	a6, a1, a6
	mv	a7, a3
	mv	t0, a4
	j	.LBB3_6
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=2
	addi	t0, t0, -1
	addi	a7, a7, 8
	beqz	t0, .LBB3_2
.LBB3_6:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t1, 0(a6)
	ld	t2, 0(a7)
	bgeu	t2, t1, .LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	sd	t2, 0(a6)
	sd	t1, 0(a7)
	j	.LBB3_5
.LBB3_8:
	ret
.Lfunc_end3:
	.size	Sort, .Lfunc_end3-Sort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	calc_buffer                     # -- Begin function calc_buffer
	.p2align	2
	.type	calc_buffer,@function
calc_buffer:                            # @calc_buffer
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(stdout)
	ld	a3, %lo(stdout)(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 80
	li	a2, 1
	call	fwrite
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	lui	a1, %hi(total_frame_buffer)
	ld	a1, %lo(total_frame_buffer)(a1)
	lw	a2, 8(a0)
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	printf
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	s0, 1101(a0)
	li	a1, 8
	mv	a0, s0
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB4_2
# %bb.1:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	no_mem_exit
.LBB4_2:
	li	a1, 8
	mv	a0, s0
	call	calloc
	mv	s2, a0
	bnez	a0, .LBB4_4
# %bb.3:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	no_mem_exit
.LBB4_4:
	li	a1, 8
	mv	a0, s0
	call	calloc
	mv	s3, a0
	beqz	a0, .LBB4_9
# %bb.5:
	lui	a0, %hi(total_frame_buffer)
	ld	a0, %lo(total_frame_buffer)(a0)
	beqz	a0, .LBB4_10
.LBB4_6:                                # %.preheader6
	li	a1, 0
	lui	a2, %hi(Bit_Buffer)
	addi	a2, a2, %lo(Bit_Buffer)
	mv	a3, a0
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	ld	a4, 0(a2)
	add	a1, a4, a1
	addi	a3, a3, -1
	addi	a2, a2, 8
	bnez	a3, .LBB4_7
# %bb.8:
	fcvt.s.lu	fa5, a1
	j	.LBB4_11
.LBB4_9:
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	call	no_mem_exit
	lui	a0, %hi(total_frame_buffer)
	ld	a0, %lo(total_frame_buffer)(a0)
	bnez	a0, .LBB4_6
.LBB4_10:
	fmv.w.x	fa5, zero
.LBB4_11:
	fcvt.s.lu	fa4, a0
	fdiv.s	fa5, fa5, fa4
	fcvt.lu.s	s4, fa5, rtz
	mv	a0, s0
	mv	a1, s1
	call	get_LeakyBucketRate
	bnez	a0, .LBB4_16
# %bb.12:
	beqz	s0, .LBB4_16
# %bb.13:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	flw	fa5, 48(a0)
	lw	a0, 20(a1)
	fcvt.s.lu	fa4, s4
	fmul.s	fa4, fa5, fa4
	fcvt.lu.s	a1, fa4, rtz
	addiw	a0, a0, 1
	divu	a1, a1, a0
	li	a2, 1
	sd	a1, 0(s1)
	beq	s0, a2, .LBB4_25
# %bb.14:
	srli	a1, s4, 2
	fcvt.s.lu	fa4, a1
	fmul.s	fa5, fa5, fa4
	fcvt.s.w	fa4, a0
	ld	a1, 0(s1)
	fdiv.s	fa5, fa5, fa4
	addi	a0, s0, -1
	addi	a2, s1, 8
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	fcvt.s.lu	fa4, a1
	fadd.s	fa4, fa5, fa4
	fcvt.lu.s	a1, fa4, rtz
	sd	a1, 0(a2)
	addi	a0, a0, -1
	addi	a2, a2, 8
	bnez	a0, .LBB4_15
.LBB4_16:
	addi	a0, s0, -1
	beqz	a0, .LBB4_24
# %bb.17:                               # %.preheader3
	li	a3, 0
	addi	a1, s1, 8
	mv	a2, a0
	j	.LBB4_19
.LBB4_18:                               #   in Loop: Header=BB4_19 Depth=1
	addi	a2, a2, -1
	addi	a1, a1, 8
	beq	a3, a0, .LBB4_24
.LBB4_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
	mv	a4, a3
	addi	a3, a3, 1
	bgeu	a3, s0, .LBB4_18
# %bb.20:                               #   in Loop: Header=BB4_19 Depth=1
	slli	a4, a4, 3
	add	a4, s1, a4
	mv	a5, a1
	mv	a6, a2
	j	.LBB4_22
.LBB4_21:                               #   in Loop: Header=BB4_22 Depth=2
	addi	a6, a6, -1
	addi	a5, a5, 8
	beqz	a6, .LBB4_18
.LBB4_22:                               #   Parent Loop BB4_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a4)
	ld	t0, 0(a5)
	bgeu	t0, a7, .LBB4_21
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=2
	sd	t0, 0(a4)
	sd	a7, 0(a5)
	j	.LBB4_21
.LBB4_24:
	beqz	s0, .LBB4_38
.LBB4_25:
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	li	a0, 0
	li	a6, 0
	li	a3, 20
	lw	a4, 20(a1)
	flw	fa5, 48(a2)
	lui	a1, %hi(total_frame_buffer)
	ld	a1, %lo(total_frame_buffer)(a1)
	lui	a2, %hi(Bit_Buffer)
	ld	a2, %lo(Bit_Buffer)(a2)
	mul	a3, s4, a3
	addiw	a4, a4, 1
	lui	a5, %hi(Bit_Buffer)
	addi	a5, a5, %lo(Bit_Buffer)
	j	.LBB4_27
.LBB4_26:                               #   in Loop: Header=BB4_27 Depth=1
	add	t0, s2, a7
	sd	t1, 0(t0)
	add	a7, s3, a7
	addi	a0, a0, 1
	sd	t2, 0(a7)
	beq	a0, s0, .LBB4_38
.LBB4_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_30 Depth 2
                                        #     Child Loop BB4_36 Depth 2
	slli	a7, a0, 3
	add	t0, s1, a7
	ld	t0, 0(t0)
	mul	t0, t0, a4
	fcvt.s.lu	fa4, t0
	fdiv.s	fa4, fa4, fa5
	fcvt.l.s	t0, fa4, rtz
	beqz	a1, .LBB4_34
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB4_27 Depth=1
	li	t1, 0
	mv	t2, a5
	mv	t4, a3
	mv	t5, a3
	mv	t6, a6
	j	.LBB4_30
.LBB4_29:                               #   in Loop: Header=BB4_30 Depth=2
	addi	t1, t1, 1
	addi	t2, t2, 8
	mv	t5, t3
	mv	t6, a6
	beq	a1, t1, .LBB4_35
.LBB4_30:                               #   Parent Loop BB4_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(t2)
	sub	t4, t4, a6
	mv	a6, t1
	mv	t3, t4
	blt	t4, t5, .LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_30 Depth=2
	mv	a6, t6
	mv	t3, t5
.LBB4_32:                               #   in Loop: Header=BB4_30 Depth=2
	add	t4, t4, t0
	blt	t4, a3, .LBB4_29
# %bb.33:                               #   in Loop: Header=BB4_30 Depth=2
	mv	t4, a3
	j	.LBB4_29
.LBB4_34:                               #   in Loop: Header=BB4_27 Depth=1
	mv	t3, a3
.LBB4_35:                               #   in Loop: Header=BB4_27 Depth=1
	sub	t1, a3, t3
	addi	t3, a6, 2
	mv	t5, a5
	mv	t4, a2
	mv	t2, a2
.LBB4_36:                               #   Parent Loop BB4_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	t3, t3, -1
	beqz	t3, .LBB4_26
# %bb.37:                               #   in Loop: Header=BB4_36 Depth=2
	ld	t6, 0(t5)
	addi	t5, t5, 8
	sub	t4, t4, t6
	sgtz	t6, t4
	neg	t6, t6
	and	t6, t6, t4
	regsw_c	x0, 0x200(x19)		# 100110000001000000000
	srai	x1, t4, 63
	and	x1, x1, t4
	add	t4, t6, t0
	sub	t2, t2, x1
	bge	t1, t4, .LBB4_36
	j	.LBB4_26
.LBB4_38:
	mv	a0, s0
	mv	a1, s1
	mv	a2, s2
	mv	a3, s3
	call	write_buffer
	mv	a0, s1
	call	free
	mv	a0, s2
	call	free
	mv	a0, s3
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.Lfunc_end4:
	.size	calc_buffer, .Lfunc_end4-calc_buffer
                                        # -- End function
	.option	pop
	.type	total_frame_buffer,@object      # @total_frame_buffer
	.section	.sbss,"aw",@nobits
	.globl	total_frame_buffer
	.p2align	3, 0x0
total_frame_buffer:
	.quad	0                               # 0x0
	.size	total_frame_buffer, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%ld"
	.size	.L.str.2, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"wb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Error open file lk %s  \n"
	.size	.L.str.5, 25

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" Number Leaky Buckets: %ld \n     Rmin     Bmin     Fmin \n"
	.size	.L.str.6, 58

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" %8ld %8ld %8ld \n"
	.size	.L.str.7, 18

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"-------------------------------------------------------------------------------\n"
	.size	.L.str.8, 81

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" Total Frames:  %ld (%d) \n"
	.size	.L.str.9, 27

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"init_buffer: Rmin"
	.size	.L.str.11, 18

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"init_buffer: Bmin"
	.size	.L.str.12, 18

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"init_buffer: Fmin"
	.size	.L.str.13, 18

	.type	Bit_Buffer,@object              # @Bit_Buffer
	.bss
	.globl	Bit_Buffer
	.p2align	3, 0x0
Bit_Buffer:
	.zero	80000
	.size	Bit_Buffer, 80000

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	" Leaky BucketRateFile does not have valid entries.\n Using rate calculated from avg. rate "
	.size	.Lstr, 90

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	" LeakyBucketRate File does not exist. Using rate calculated from avg. rate "
	.size	.Lstr.14, 76

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
