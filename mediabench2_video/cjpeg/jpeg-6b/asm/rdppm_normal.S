	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdppm.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_read_ppm                  # -- Begin function jinit_read_ppm
	.p2align	2
	.type	jinit_read_ppm,@function
jinit_read_ppm:                         # @jinit_read_ppm
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 8(a0)
	ld	a3, 0(a1)
	li	a1, 1
	li	a2, 80
	jalr	a3
	lui	a1, %hi(start_input_ppm)
	addi	a1, a1, %lo(start_input_ppm)
	sd	a1, 0(a0)
	lui	a1, %hi(finish_input_ppm)
	addi	a1, a1, %lo(finish_input_ppm)
	sd	a1, 16(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	jinit_read_ppm, .Lfunc_end0-jinit_read_ppm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_input_ppm
	.type	start_input_ppm,@function
start_input_ppm:                        # @start_input_ppm
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
	mv	s0, a1
	ld	a1, 24(a1)
	mv	s1, a0
	mv	a0, a1
	call	getc
	li	a1, 80
	beq	a0, a1, .LBB1_2
# %bb.1:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 1027
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB1_2:
	ld	a0, 24(s0)
	call	getc
	li	a1, 54
	mv	s5, a0
	bltu	a1, a0, .LBB1_20
# %bb.3:
	li	a0, 27
	slli	a0, a0, 50
	srl	a0, a0, s5
	andi	a0, a0, 1
	beqz	a0, .LBB1_20
.LBB1_4:
	ld	a1, 24(s0)
	mv	a0, s1
	call	read_pbm_integer
	ld	a1, 24(s0)
	mv	s3, a0
	mv	a0, s1
	call	read_pbm_integer
	ld	a1, 24(s0)
	mv	s4, a0
	mv	a0, s1
	call	read_pbm_integer
	mv	s2, a0
	beqz	s3, .LBB1_7
# %bb.5:
	beqz	s4, .LBB1_7
# %bb.6:
	bnez	s2, .LBB1_8
.LBB1_7:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 1027
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB1_8:
	li	s7, 0
	li	a0, 8
	sw	a0, 72(s1)
	sw	s3, 48(s1)
	sw	s4, 52(s1)
	li	a0, 52
	li	s6, 1
	blt	a0, s5, .LBB1_12
# %bb.9:
	li	a0, 50
	beq	s5, a0, .LBB1_16
# %bb.10:
	li	a0, 51
	bne	s5, a0, .LBB1_27
# %bb.11:
	lui	s5, %hi(get_text_rgb_row)
	addi	s5, s5, %lo(get_text_rgb_row)
	li	a0, 1031
	li	a1, 2
	li	s6, 3
	j	.LBB1_17
.LBB1_12:
	li	a0, 53
	beq	s5, a0, .LBB1_18
# %bb.13:
	li	a0, 54
	bne	s5, a0, .LBB1_27
# %bb.14:
	li	s6, 1
	ld	a0, 0(s1)
	slli	a1, s6, 33
	addi	a1, a1, 3
	sd	a1, 56(s1)
	sw	s3, 44(a0)
	ld	a1, 0(s1)
	li	a2, 1030
	sw	a2, 40(a0)
	sw	s4, 48(a1)
	ld	a0, 0(s1)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s1
	jalr	a2
	li	a0, 256
	bltu	s2, a0, .LBB1_21
# %bb.15:
	li	s7, 0
	lui	a0, %hi(get_word_rgb_row)
	addi	a0, a0, %lo(get_word_rgb_row)
	sd	a0, 8(s0)
	j	.LBB1_27
.LBB1_16:
	lui	s5, %hi(get_text_gray_row)
	addi	s5, s5, %lo(get_text_gray_row)
	li	a0, 1029
	li	a1, 1
.LBB1_17:
	ld	a2, 0(s1)
	sw	s6, 56(s1)
	sw	a1, 60(s1)
	sw	s3, 44(a2)
	ld	a1, 0(s1)
	sw	a0, 40(a2)
	sw	s4, 48(a1)
	ld	a0, 0(s1)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s1
	jalr	a2
	li	s7, 0
	sd	s5, 8(s0)
	j	.LBB1_28
.LBB1_18:
	li	s6, 1
	ld	a0, 0(s1)
	slli	a1, s6, 32
	addi	a1, a1, 1
	sd	a1, 56(s1)
	sw	s3, 44(a0)
	ld	a1, 0(s1)
	li	a2, 1028
	sw	a2, 40(a0)
	sw	s4, 48(a1)
	ld	a0, 0(s1)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s1
	jalr	a2
	li	a0, 256
	bltu	s2, a0, .LBB1_23
# %bb.19:
	li	s7, 0
	lui	a0, %hi(get_word_gray_row)
	addi	a0, a0, %lo(get_word_gray_row)
	sd	a0, 8(s0)
	j	.LBB1_27
.LBB1_20:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 1027
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
	j	.LBB1_4
.LBB1_21:
	li	a0, 255
	beq	s2, a0, .LBB1_24
# %bb.22:
	li	s7, 0
	lui	a0, %hi(get_scaled_rgb_row)
	addi	a0, a0, %lo(get_scaled_rgb_row)
	j	.LBB1_26
.LBB1_23:
	li	a0, 255
	bne	s2, a0, .LBB1_25
.LBB1_24:
	li	s6, 0
	lui	a0, %hi(get_raw_row)
	addi	a0, a0, %lo(get_raw_row)
	sd	a0, 8(s0)
	li	s7, 1
	j	.LBB1_27
.LBB1_25:
	li	s7, 0
	lui	a0, %hi(get_scaled_gray_row)
	addi	a0, a0, %lo(get_scaled_gray_row)
.LBB1_26:
	sd	a0, 8(s0)
	li	s6, 1
.LBB1_27:
	lw	a0, 56(s1)
	slli	a1, s3, 32
	ld	a2, 8(s1)
	srli	a1, a1, 32
	mul	a0, a0, a1
	sltiu	a1, s2, 256
	ld	a3, 0(a2)
	xori	a1, a1, 1
	sll	a2, a0, a1
	sd	a2, 64(s0)
	li	a1, 1
	li	s4, 1
	mv	a0, s1
	jalr	a3
	sd	a0, 48(s0)
	beqz	s6, .LBB1_29
.LBB1_28:
	ld	a0, 8(s1)
	lw	a1, 56(s1)
	ld	a4, 16(a0)
	mulw	a2, a1, s3
	li	a1, 1
	li	a3, 1
	li	s3, 1
	mv	a0, s1
	jalr	a4
	sd	a0, 32(s0)
	sw	s3, 40(s0)
	beqz	s7, .LBB1_30
	j	.LBB1_32
.LBB1_29:
	addi	a1, s0, 56
	sd	a0, 56(s0)
	sd	a1, 32(s0)
	sw	s4, 40(s0)
	bnez	s7, .LBB1_32
.LBB1_30:
	ld	a0, 8(s1)
	ld	a3, 0(a0)
	slli	a0, s2, 32
	srli	s4, a0, 32
	addi	s3, s4, 1
	li	a1, 1
	mv	a0, s1
	mv	a2, s3
	jalr	a3
	li	a1, 0
	sd	a0, 72(s0)
	srliw	a0, s2, 1
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	ld	a2, 72(s0)
	divu	a3, a0, s4
	add	a2, a2, a1
	sb	a3, 0(a2)
	addi	a1, a1, 1
	addi	a0, a0, 255
	bne	s3, a1, .LBB1_31
.LBB1_32:
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
.Lfunc_end1:
	.size	start_input_ppm, .Lfunc_end1-start_input_ppm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_input_ppm
	.type	finish_input_ppm,@function
finish_input_ppm:                       # @finish_input_ppm
# %bb.0:
	ret
.Lfunc_end2:
	.size	finish_input_ppm, .Lfunc_end2-finish_input_ppm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_pbm_integer
	.type	read_pbm_integer,@function
read_pbm_integer:                       # @read_pbm_integer
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
	mv	s0, a1
	mv	s1, a0
	li	s2, 35
	li	s3, 10
	li	s4, -1
	li	s5, 33
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 10
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	mv	a0, s0
	call	getc
	bne	a0, s2, .LBB3_4
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s0
	call	getc
	beq	a0, s3, .LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=2
	bne	a0, s4, .LBB3_2
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	addi	a1, a0, 1
	bltu	s5, a1, .LBB3_8
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	srl	a2, s6, a1
	andi	a2, a2, 1
	bnez	a2, .LBB3_1
# %bb.6:
	bnez	a1, .LBB3_8
# %bb.7:
	mv	s2, a0
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
	j	.LBB3_9
.LBB3_8:
	mv	s2, a0
	addiw	a0, a0, -58
	li	a1, -11
	bltu	a1, a0, .LBB3_10
.LBB3_9:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 1026
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB3_10:
	addiw	s1, s2, -48
	li	s2, 35
	li	s3, 10
	li	s4, -1
	li	s5, 9
	mv	a0, s0
	call	getc
	bne	a0, s2, .LBB3_13
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	call	getc
	beq	a0, s3, .LBB3_13
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	bne	a0, s4, .LBB3_11
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	addiw	a0, a0, -48
	bltu	s5, a0, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	mul	s1, s1, s3
	addw	s1, a0, s1
	mv	a0, s0
	call	getc
	beq	a0, s2, .LBB3_11
	j	.LBB3_13
.LBB3_15:
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
.Lfunc_end3:
	.size	read_pbm_integer, .Lfunc_end3-read_pbm_integer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_text_gray_row
	.type	get_text_gray_row,@function
get_text_gray_row:                      # @get_text_gray_row
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 48(a0)
	beqz	a0, .LBB4_3
# %bb.1:
	ld	a2, 32(a1)
	ld	s1, 24(a1)
	ld	s2, 72(a1)
	ld	s3, 0(a2)
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, a0, s3
	addi	s4, a0, 1
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	mv	a1, s1
	call	read_pbm_integer
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, s2, a0
	lbu	a0, 0(a0)
	addi	a1, s3, 1
	sb	a0, 0(s3)
	mv	s3, a1
	bne	a1, s4, .LBB4_2
.LBB4_3:
	li	a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	get_text_gray_row, .Lfunc_end4-get_text_gray_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_text_rgb_row
	.type	get_text_rgb_row,@function
get_text_rgb_row:                       # @get_text_rgb_row
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 48(a0)
	beqz	a0, .LBB5_3
# %bb.1:
	ld	a2, 32(a1)
	ld	s1, 24(a1)
	ld	s2, 72(a1)
	ld	s3, 0(a2)
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a1, a0, 32
	srli	a0, a0, 31
	add	a0, a0, a1
	add	a0, a0, s3
	addi	s4, a0, 3
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	mv	a1, s1
	call	read_pbm_integer
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, s2, a0
	lbu	a0, 0(a0)
	sb	a0, 0(s3)
	mv	a0, s0
	mv	a1, s1
	call	read_pbm_integer
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, s2, a0
	lbu	a0, 0(a0)
	sb	a0, 1(s3)
	mv	a0, s0
	mv	a1, s1
	call	read_pbm_integer
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, s2, a0
	lbu	a0, 0(a0)
	addi	a1, s3, 3
	sb	a0, 2(s3)
	mv	s3, a1
	bne	a1, s4, .LBB5_2
.LBB5_3:
	li	a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	get_text_rgb_row, .Lfunc_end5-get_text_rgb_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_word_gray_row
	.type	get_word_gray_row,@function
get_word_gray_row:                      # @get_word_gray_row
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	s2, 72(a1)
	ld	a4, 48(a1)
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	mv	s1, a0
	li	a1, 1
	mv	a0, a4
	call	fread
	ld	a1, 64(s0)
	beq	a0, a1, .LBB6_2
# %bb.1:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB6_2:
	lw	a2, 48(s1)
	beqz	a2, .LBB6_5
# %bb.3:
	ld	a1, 32(s0)
	ld	a0, 48(s0)
	ld	a1, 0(a1)
	addi	a2, a2, -1
	slli	a2, a2, 32
	srli	a2, a2, 31
	add	a2, a2, a0
	addi	a2, a2, 2
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 1(a0)
	lbu	a4, 0(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a3, s2, a3
	lbu	a3, 0(a3)
	addi	a4, a1, 1
	addi	a0, a0, 2
	sb	a3, 0(a1)
	mv	a1, a4
	bne	a0, a2, .LBB6_4
.LBB6_5:
	li	a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end6:
	.size	get_word_gray_row, .Lfunc_end6-get_word_gray_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_raw_row
	.type	get_raw_row,@function
get_raw_row:                            # @get_raw_row
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a1
	ld	a4, 48(a1)
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	mv	s0, a0
	li	a1, 1
	mv	a0, a4
	call	fread
	ld	a1, 64(s1)
	beq	a0, a1, .LBB7_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB7_2:
	li	a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	get_raw_row, .Lfunc_end7-get_raw_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_scaled_gray_row
	.type	get_scaled_gray_row,@function
get_scaled_gray_row:                    # @get_scaled_gray_row
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	s2, 72(a1)
	ld	a4, 48(a1)
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	mv	s1, a0
	li	a1, 1
	mv	a0, a4
	call	fread
	ld	a1, 64(s0)
	beq	a0, a1, .LBB8_2
# %bb.1:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB8_2:
	lw	a2, 48(s1)
	beqz	a2, .LBB8_5
# %bb.3:
	ld	a0, 32(s0)
	ld	a1, 48(s0)
	ld	a0, 0(a0)
	addi	a2, a2, -1
	slli	a2, a2, 32
	srli	a2, a2, 32
	add	a2, a2, a1
	addi	a2, a2, 1
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a1)
	add	a3, s2, a3
	lbu	a3, 0(a3)
	addi	a4, a1, 1
	addi	a1, a0, 1
	sb	a3, 0(a0)
	mv	a0, a1
	mv	a1, a4
	bne	a4, a2, .LBB8_4
.LBB8_5:
	li	a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end8:
	.size	get_scaled_gray_row, .Lfunc_end8-get_scaled_gray_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_word_rgb_row
	.type	get_word_rgb_row,@function
get_word_rgb_row:                       # @get_word_rgb_row
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	s2, 72(a1)
	ld	a4, 48(a1)
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	mv	s1, a0
	li	a1, 1
	mv	a0, a4
	call	fread
	ld	a1, 64(s0)
	beq	a0, a1, .LBB9_2
# %bb.1:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB9_2:
	lw	a2, 48(s1)
	beqz	a2, .LBB9_5
# %bb.3:
	ld	a1, 32(s0)
	ld	a0, 48(s0)
	ld	a1, 0(a1)
	addi	a2, a2, -1
	li	a3, 3
	slli	a3, a3, 33
	slli	a2, a2, 32
	mulhu	a2, a2, a3
	add	a2, a2, a0
	addi	a2, a2, 6
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 1(a0)
	lbu	a4, 0(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sb	a3, 0(a1)
	lbu	a3, 3(a0)
	lbu	a4, 2(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sb	a3, 1(a1)
	lbu	a3, 5(a0)
	lbu	a4, 4(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a3, s2, a3
	lbu	a3, 0(a3)
	addi	a4, a1, 3
	addi	a0, a0, 6
	sb	a3, 2(a1)
	mv	a1, a4
	bne	a0, a2, .LBB9_4
.LBB9_5:
	li	a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	get_word_rgb_row, .Lfunc_end9-get_word_rgb_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_scaled_rgb_row
	.type	get_scaled_rgb_row,@function
get_scaled_rgb_row:                     # @get_scaled_rgb_row
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	s2, 72(a1)
	ld	a4, 48(a1)
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	mv	s1, a0
	li	a1, 1
	mv	a0, a4
	call	fread
	ld	a1, 64(s0)
	beq	a0, a1, .LBB10_2
# %bb.1:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB10_2:
	lw	a2, 48(s1)
	beqz	a2, .LBB10_5
# %bb.3:
	ld	a1, 32(s0)
	ld	a0, 48(s0)
	ld	a1, 0(a1)
	addi	a2, a2, -1
	slli	a2, a2, 32
	srli	a3, a2, 32
	srli	a2, a2, 31
	add	a2, a2, a3
	add	a2, a2, a0
	addi	a2, a2, 3
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a0)
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sb	a3, 0(a1)
	lbu	a3, 1(a0)
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sb	a3, 1(a1)
	lbu	a3, 2(a0)
	add	a3, s2, a3
	lbu	a3, 0(a3)
	addi	a4, a1, 3
	addi	a0, a0, 3
	sb	a3, 2(a1)
	mv	a1, a4
	bne	a0, a2, .LBB10_4
.LBB10_5:
	li	a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end10:
	.size	get_scaled_rgb_row, .Lfunc_end10-get_scaled_rgb_row
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
