	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdswitch.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	read_quant_tables               # -- Begin function read_quant_tables
	.p2align	2
	.type	read_quant_tables,@function
read_quant_tables:                      # @read_quant_tables
# %bb.0:
	addi	sp, sp, -400
	sd	ra, 392(sp)                     # 8-byte Folded Spill
	sd	s0, 384(sp)                     # 8-byte Folded Spill
	sd	s1, 376(sp)                     # 8-byte Folded Spill
	sd	s2, 368(sp)                     # 8-byte Folded Spill
	sd	s3, 360(sp)                     # 8-byte Folded Spill
	sd	s4, 352(sp)                     # 8-byte Folded Spill
	sd	s5, 344(sp)                     # 8-byte Folded Spill
	sd	s6, 336(sp)                     # 8-byte Folded Spill
	sd	s7, 328(sp)                     # 8-byte Folded Spill
	sd	s8, 320(sp)                     # 8-byte Folded Spill
	sd	s9, 312(sp)                     # 8-byte Folded Spill
	sd	s10, 304(sp)                    # 8-byte Folded Spill
	sd	s11, 296(sp)                    # 8-byte Folded Spill
	mv	s2, a3
	mv	s3, a2
	mv	s0, a1
	mv	s4, a0
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, s0
	call	fopen
	beqz	a0, .LBB0_25
# %bb.1:
	mv	s1, a0
	addi	a1, sp, 280
	addi	a2, sp, 292
	call	read_text_integer
	beqz	a0, .LBB0_19
# %bb.2:                                # %.preheader5
	li	s5, 0
	li	a1, 4
	li	s8, 35
	li	s9, 10
	li	s10, -1
	addi	s11, sp, 24
	li	s7, 64
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #       Child Loop BB0_15 Depth 3
	beq	s5, a1, .LBB0_27
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, 280(sp)
	sw	a0, 24(sp)
	li	s2, 1
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=2
	slli	a1, s2, 2
	add	a1, s11, a1
	addi	s2, s2, 1
	sw	s3, 0(a1)
	beq	s2, s7, .LBB0_18
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #       Child Loop BB0_15 Depth 3
	mv	a0, s1
	call	getc
	bne	a0, s8, .LBB0_9
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s1
	call	getc
	beq	a0, s9, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=3
	bne	a0, s10, .LBB0_7
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=2
	beq	a0, s10, .LBB0_21
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=2
	mv	s3, a0
	call	__ctype_b_loc
	mv	s6, a0
	ld	a1, 0(a0)
	slli	a2, s3, 1
	add	a1, a1, a2
	lhu	a1, 0(a1)
	slli	a2, a1, 50
	bltz	a2, .LBB0_6
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=2
	slli	a1, a1, 52
	bgez	a1, .LBB0_21
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=2
	addiw	s3, s3, -48
	mv	a0, s1
	call	getc
	bne	a0, s8, .LBB0_15
.LBB0_13:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s1
	call	getc
	beq	a0, s9, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=3
	bne	a0, s10, .LBB0_13
.LBB0_15:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	a0, s10, .LBB0_5
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	ld	a1, 0(s6)
	slli	a2, a0, 1
	add	a1, a1, a2
	lhu	a1, 0(a1)
	slli	a1, a1, 52
	bgez	a1, .LBB0_5
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=3
	mul	s3, s3, s9
	addiw	a0, a0, -48
	add	s3, s3, a0
	mv	a0, s1
	call	getc
	beq	a0, s8, .LBB0_13
	j	.LBB0_15
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	sd	s3, 280(sp)
	sw	a0, 292(sp)
	addi	a2, sp, 24
	mv	a0, s4
	mv	a1, s5
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	call	jpeg_add_quant_table
	addiw	s5, s5, 1
	addi	a1, sp, 280
	addi	a2, sp, 292
	mv	a0, s1
	call	read_text_integer
	li	a1, 4
	bnez	a0, .LBB0_3
.LBB0_19:
	lw	a0, 292(sp)
	li	a1, -1
	bne	a0, a1, .LBB0_26
# %bb.20:
	mv	a0, s1
	call	fclose
	li	a0, 1
	j	.LBB0_24
.LBB0_21:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
.LBB0_22:
	mv	a2, s0
	call	fprintf
	mv	a0, s1
	call	fclose
.LBB0_23:
	li	a0, 0
.LBB0_24:
	ld	ra, 392(sp)                     # 8-byte Folded Reload
	ld	s0, 384(sp)                     # 8-byte Folded Reload
	ld	s1, 376(sp)                     # 8-byte Folded Reload
	ld	s2, 368(sp)                     # 8-byte Folded Reload
	ld	s3, 360(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	ld	s5, 344(sp)                     # 8-byte Folded Reload
	ld	s6, 336(sp)                     # 8-byte Folded Reload
	ld	s7, 328(sp)                     # 8-byte Folded Reload
	ld	s8, 320(sp)                     # 8-byte Folded Reload
	ld	s9, 312(sp)                     # 8-byte Folded Reload
	ld	s10, 304(sp)                    # 8-byte Folded Reload
	ld	s11, 296(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 400
	ret
.LBB0_25:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a2, s0
	call	fprintf
	j	.LBB0_23
.LBB0_26:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	j	.LBB0_22
.LBB0_27:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	j	.LBB0_22
.Lfunc_end0:
	.size	read_quant_tables, .Lfunc_end0-read_quant_tables
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_text_integer
	.type	read_text_integer,@function
read_text_integer:                      # @read_text_integer
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
	mv	s0, a2
	mv	s1, a1
	mv	s2, a0
	li	s3, 35
	li	s4, 10
	li	s5, -1
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	mv	a0, s2
	call	getc
	bne	a0, s3, .LBB1_4
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s2
	call	getc
	beq	a0, s4, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=2
	bne	a0, s5, .LBB1_2
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	mv	a1, a0
	li	a0, -1
	beq	a1, a0, .LBB1_8
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	mv	s6, a1
	call	__ctype_b_loc
	ld	a1, 0(a0)
	slli	a3, s6, 1
	add	a1, a1, a3
	lhu	a1, 0(a1)
	slli	a3, a1, 50
	bltz	a3, .LBB1_1
# %bb.6:
	mv	a2, s6
	slli	a1, a1, 52
	bltz	a1, .LBB1_9
# %bb.7:
	li	a1, 0
	mv	a0, a2
	j	.LBB1_16
.LBB1_8:
	li	a1, 0
	j	.LBB1_16
.LBB1_9:
	mv	s3, a0
	addiw	s4, a2, -48
	li	s5, 35
	li	s6, 10
	li	s7, -1
	mv	a0, s2
	call	getc
	bne	a0, s5, .LBB1_12
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s2
	call	getc
	beq	a0, s6, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	bne	a0, s7, .LBB1_10
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	beq	a0, s7, .LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	ld	a1, 0(s3)
	slli	a2, a0, 1
	add	a1, a1, a2
	lhu	a1, 0(a1)
	slli	a1, a1, 52
	bgez	a1, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=1
	mul	s4, s4, s6
	addiw	a0, a0, -48
	add	s4, s4, a0
	mv	a0, s2
	call	getc
	beq	a0, s5, .LBB1_10
	j	.LBB1_12
.LBB1_15:
	sd	s4, 0(s1)
	li	a1, 1
.LBB1_16:
	sw	a0, 0(s0)
	mv	a0, a1
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
	.size	read_text_integer, .Lfunc_end1-read_text_integer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	read_scan_script                # -- Begin function read_scan_script
	.p2align	2
	.type	read_scan_script,@function
read_scan_script:                       # @read_scan_script
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	sd	s6, 1968(sp)                    # 8-byte Folded Spill
	sd	s7, 1960(sp)                    # 8-byte Folded Spill
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	addi	sp, sp, -1712
	mv	s1, a1
	mv	s2, a0
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, s1
	call	fopen
	beqz	a0, .LBB2_51
# %bb.1:
	mv	s0, a0
	addi	s9, sp, 2047
	addi	s9, s9, 1577
	addi	a1, sp, 2047
	addi	a1, a1, 1577
	addi	a2, sp, 2047
	addi	a2, a2, 1589
	call	read_scan_integer
	beqz	a0, .LBB2_48
# %bb.2:                                # %.preheader13
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	li	s5, 0
	addi	s6, sp, 24
	li	s7, 1
	slli	s7, s7, 11
	li	a1, 100
	li	s11, 35
	li	s2, 10
	li	s8, -1
	j	.LBB2_4
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addi	s6, s6, 36
	addiw	s5, s5, 1
	addi	a1, sp, 2047
	addi	a1, a1, 1577
	addi	a2, sp, 2047
	addi	a2, a2, 1589
	mv	a0, s0
	call	read_scan_integer
	li	a1, 100
	beqz	a0, .LBB2_52
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_11 Depth 4
                                        #       Child Loop BB2_17 Depth 3
                                        #       Child Loop BB2_19 Depth 3
                                        #       Child Loop BB2_23 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	beq	s5, a1, .LBB2_56
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	ld	s4, 0(s9)
	lw	a1, 12(s9)
	sw	s4, 4(s6)
	li	s1, 1
	li	a0, 32
	bne	a1, a0, .LBB2_34
# %bb.6:                                # %.preheader11
                                        #   in Loop: Header=BB2_4 Depth=1
	addi	s10, s6, 4
	li	s1, 1
	j	.LBB2_9
.LBB2_7:                                #   in Loop: Header=BB2_9 Depth=2
	mv	a1, s0
	call	ungetc
	li	a1, 32
	beq	a0, s8, .LBB2_45
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=2
	slli	a0, s1, 2
	add	a0, s10, a0
	sw	s4, 0(a0)
	addi	s1, s1, 1
	li	a0, 32
	bne	a1, a0, .LBB2_34
.LBB2_9:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_11 Depth 4
                                        #       Child Loop BB2_17 Depth 3
                                        #       Child Loop BB2_19 Depth 3
                                        #       Child Loop BB2_23 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	li	a0, 4
	beq	s1, a0, .LBB2_55
.LBB2_10:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_11 Depth 4
	mv	a0, s0
	call	getc
	bne	a0, s11, .LBB2_13
.LBB2_11:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a0, s0
	call	getc
	beq	a0, s2, .LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=4
	bne	a0, s8, .LBB2_11
.LBB2_13:                               #   in Loop: Header=BB2_10 Depth=3
	beq	a0, s8, .LBB2_45
# %bb.14:                               #   in Loop: Header=BB2_10 Depth=3
	mv	s4, a0
	call	__ctype_b_loc
	mv	s3, a0
	ld	a1, 0(a0)
	slli	a2, s4, 1
	add	a1, a1, a2
	lhu	a1, 0(a1)
	slli	a2, a1, 50
	bltz	a2, .LBB2_10
# %bb.15:                               #   in Loop: Header=BB2_9 Depth=2
	slli	a1, a1, 52
	bgez	a1, .LBB2_45
# %bb.16:                               #   in Loop: Header=BB2_9 Depth=2
	addiw	s4, s4, -48
	mv	a0, s0
	call	getc
	bne	a0, s11, .LBB2_19
.LBB2_17:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s0
	call	getc
	beq	a0, s2, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=3
	bne	a0, s8, .LBB2_17
.LBB2_19:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a2, a0
	li	a0, -1
	beq	a2, a0, .LBB2_27
# %bb.20:                               #   in Loop: Header=BB2_19 Depth=3
	mv	a1, a2
	ld	a2, 0(s3)
	mv	a0, a1
	slli	a1, a1, 1
	add	a1, a2, a1
	lhu	a1, 0(a1)
	and	a1, a1, s7
	beqz	a1, .LBB2_23
# %bb.21:                               #   in Loop: Header=BB2_19 Depth=3
	mul	s4, s4, s2
	addiw	a0, a0, -48
	add	s4, s4, a0
	mv	a0, s0
	call	getc
	beq	a0, s11, .LBB2_17
	j	.LBB2_19
.LBB2_22:                               #   in Loop: Header=BB2_23 Depth=3
	li	a1, -1
	beq	a0, a1, .LBB2_29
.LBB2_23:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_25 Depth 4
	ld	a1, 0(s3)
	slli	a2, a0, 1
	add	a1, a1, a2
	lhu	s9, 0(a1)
	slli	a1, s9, 50
	bgez	a1, .LBB2_28
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=3
	mv	a0, s0
	call	getc
	bne	a0, s11, .LBB2_22
.LBB2_25:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a0, s0
	call	getc
	beq	a0, s2, .LBB2_22
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=4
	bne	a0, s8, .LBB2_25
	j	.LBB2_22
.LBB2_27:                               #   in Loop: Header=BB2_9 Depth=2
	li	a1, 0
	j	.LBB2_31
.LBB2_28:                               #   in Loop: Header=BB2_9 Depth=2
	li	a1, 1
	j	.LBB2_30
.LBB2_29:                               #   in Loop: Header=BB2_9 Depth=2
	lui	a0, 2
	and	a0, s9, a0
	seqz	a1, a0
	li	a0, -1
.LBB2_30:                               #   in Loop: Header=BB2_9 Depth=2
	addi	s9, sp, 2047
	addi	s9, s9, 1577
.LBB2_31:                               #   in Loop: Header=BB2_9 Depth=2
	ld	a2, 0(s3)
	slli	a3, a0, 1
	add	a2, a2, a3
	lhu	a2, 0(a2)
	and	a2, a2, s7
	bnez	a2, .LBB2_7
# %bb.32:                               #   in Loop: Header=BB2_9 Depth=2
	addiw	a2, a0, -60
	sltiu	a2, a2, -2
	and	a2, a1, a2
	li	a1, 32
	bnez	a2, .LBB2_8
# %bb.33:                               #   in Loop: Header=BB2_9 Depth=2
	mv	a1, a0
	j	.LBB2_8
.LBB2_34:                               #   in Loop: Header=BB2_4 Depth=1
	sw	a1, 12(s9)
	sd	s4, 0(s9)
	sw	s1, 0(s6)
	li	a0, 58
	bne	a1, a0, .LBB2_43
# %bb.35:                               #   in Loop: Header=BB2_4 Depth=1
	addi	a1, sp, 2047
	addi	a1, a1, 1577
	addi	a2, sp, 2047
	addi	a2, a2, 1589
	mv	a0, s0
	call	read_scan_integer
	beqz	a0, .LBB2_45
# %bb.36:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 12(s9)
	li	a1, 32
	bne	a0, a1, .LBB2_45
# %bb.37:                               #   in Loop: Header=BB2_4 Depth=1
	ld	a0, 0(s9)
	sw	a0, 20(s6)
	addi	a1, sp, 2047
	addi	a1, a1, 1577
	addi	a2, sp, 2047
	addi	a2, a2, 1589
	mv	a0, s0
	call	read_scan_integer
	beqz	a0, .LBB2_45
# %bb.38:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 12(s9)
	li	a1, 32
	bne	a0, a1, .LBB2_45
# %bb.39:                               #   in Loop: Header=BB2_4 Depth=1
	ld	a0, 0(s9)
	sw	a0, 24(s6)
	addi	a1, sp, 2047
	addi	a1, a1, 1577
	addi	a2, sp, 2047
	addi	a2, a2, 1589
	mv	a0, s0
	call	read_scan_integer
	beqz	a0, .LBB2_45
# %bb.40:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 12(s9)
	li	a1, 32
	bne	a0, a1, .LBB2_45
# %bb.41:                               #   in Loop: Header=BB2_4 Depth=1
	ld	a0, 0(s9)
	sw	a0, 28(s6)
	addi	a1, sp, 2047
	addi	a1, a1, 1577
	addi	a2, sp, 2047
	addi	a2, a2, 1589
	mv	a0, s0
	call	read_scan_integer
	beqz	a0, .LBB2_45
# %bb.42:                               #   in Loop: Header=BB2_4 Depth=1
	ld	a0, 0(s9)
	lw	a1, 12(s9)
	sw	a0, 32(s6)
	bne	a1, s8, .LBB2_44
	j	.LBB2_3
.LBB2_43:                               #   in Loop: Header=BB2_4 Depth=1
	sw	zero, 20(s6)
	li	a0, 63
	sw	a0, 24(s6)
	sw	zero, 28(s6)
	sw	zero, 32(s6)
	beq	a1, s8, .LBB2_3
.LBB2_44:                               #   in Loop: Header=BB2_4 Depth=1
	li	a0, 59
	beq	a1, a0, .LBB2_3
.LBB2_45:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
.LBB2_46:
	ld	a2, 16(sp)                      # 8-byte Folded Reload
.LBB2_47:
	call	fprintf
	mv	a0, s0
	call	fclose
	li	a0, 0
	j	.LBB2_50
.LBB2_48:
	lw	a0, 12(s9)
	li	a1, -1
	bne	a0, a1, .LBB2_54
.LBB2_49:
	mv	a0, s0
	call	fclose
	li	a0, 1
.LBB2_50:
	addi	sp, sp, 1712
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.LBB2_51:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	mv	a2, s1
	call	fprintf
	li	a0, 0
	j	.LBB2_50
.LBB2_52:
	lw	a0, 12(s9)
	li	a1, -1
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	bne	a0, a1, .LBB2_54
# %bb.53:
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	ld	a0, 8(s2)
	ld	a3, 0(a0)
	li	a0, 36
	mul	s1, s5, a0
	li	a1, 1
	mv	a0, s2
	mv	a2, s1
	jalr	a3
	mv	s3, a0
	addi	a1, sp, 24
	mv	a2, s1
	call	memcpy
	sd	s3, 248(s2)
	sw	s5, 240(s2)
	j	.LBB2_49
.LBB2_54:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a2, s1
	j	.LBB2_47
.LBB2_55:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	j	.LBB2_46
.LBB2_56:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	j	.LBB2_46
.Lfunc_end2:
	.size	read_scan_script, .Lfunc_end2-read_scan_script
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_scan_integer
	.type	read_scan_integer,@function
read_scan_integer:                      # @read_scan_integer
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
	mv	s0, a2
	mv	s1, a0
	call	read_text_integer
	beqz	a0, .LBB3_16
# %bb.1:
	lw	s4, 0(s0)
	li	s3, -1
	call	__ctype_b_loc
	mv	s2, a0
	beq	s4, s3, .LBB3_8
# %bb.2:                                # %.preheader1
	mv	a0, s4
	lui	s4, 2
	li	s5, 35
	li	s6, 10
	li	s7, -1
	li	s3, -1
	j	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	beq	a0, s3, .LBB3_10
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	ld	a1, 0(s2)
	slli	a2, a0, 1
	add	a1, a1, a2
	lhu	s8, 0(a1)
	slli	a1, s8, 50
	bgez	a1, .LBB3_9
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	mv	a0, s1
	call	getc
	bne	a0, s5, .LBB3_3
.LBB3_6:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	beq	a0, s6, .LBB3_3
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	bne	a0, s7, .LBB3_6
	j	.LBB3_3
.LBB3_8:
	li	a1, 0
	j	.LBB3_11
.LBB3_9:
	li	a1, 1
	mv	s3, a0
	j	.LBB3_11
.LBB3_10:
	and	a0, s8, s4
	seqz	a1, a0
.LBB3_11:
	ld	a0, 0(s2)
	slli	a2, s3, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	slli	a0, a0, 52
	bltz	a0, .LBB3_14
# %bb.12:
	addiw	a0, s3, -60
	sltiu	a0, a0, -2
	and	a0, a1, a0
	li	a1, 32
	bnez	a0, .LBB3_15
# %bb.13:
	mv	a1, s3
	j	.LBB3_15
.LBB3_14:
	mv	a0, s3
	mv	a1, s1
	call	ungetc
	li	a2, -1
	li	a1, 32
	beq	a0, a2, .LBB3_17
.LBB3_15:
	sw	a1, 0(s0)
	li	a0, 1
.LBB3_16:
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
.LBB3_17:
	li	a0, 0
	j	.LBB3_16
.Lfunc_end3:
	.size	read_scan_integer, .Lfunc_end3-read_scan_integer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	set_quant_slots                 # -- Begin function set_quant_slots
	.p2align	2
	.type	set_quant_slots,@function
set_quant_slots:                        # @set_quant_slots
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
	mv	s1, a0
	li	s3, 0
	sw	zero, 4(sp)
	li	s4, 96
	li	s5, 10
	li	s6, 44
	lui	s2, %hi(.L.str.9)
	addi	s2, s2, %lo(.L.str.9)
	li	s7, 4
	j	.LBB4_3
.LBB4_1:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 88(s1)
	lw	a1, 4(sp)
	mul	a2, s3, s4
	add	a0, a0, a2
	sw	a1, 16(a0)
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	addi	s3, s3, 1
	beq	s3, s5, .LBB4_10
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	lbu	a0, 0(s0)
	beqz	a0, .LBB4_1
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	sb	s6, 3(sp)
	addi	a2, sp, 4
	addi	a3, sp, 3
	mv	a0, s0
	mv	a1, s2
	call	__isoc99_sscanf
	mv	a1, a0
	li	a0, 0
	blez	a1, .LBB4_11
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	lbu	a1, 3(sp)
	bne	a1, s6, .LBB4_11
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	lw	a0, 4(sp)
	bgeu	a0, s7, .LBB4_12
# %bb.7:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 88(s1)
	mul	a2, s3, s4
	add	a1, a1, a2
	sw	a0, 16(a1)
.LBB4_8:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, 0(s0)
	beqz	a0, .LBB4_2
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=2
	addi	s0, s0, 1
	bne	a0, s6, .LBB4_8
	j	.LBB4_2
.LBB4_10:
	li	a0, 1
.LBB4_11:
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
.LBB4_12:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	li	a2, 3
	call	fprintf
	li	a0, 0
	j	.LBB4_11
.Lfunc_end4:
	.size	set_quant_slots, .Lfunc_end4-set_quant_slots
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	set_sample_factors              # -- Begin function set_sample_factors
	.p2align	2
	.type	set_sample_factors,@function
set_sample_factors:                     # @set_sample_factors
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
	mv	s0, a1
	mv	s1, a0
	li	s3, 0
	li	s4, 96
	li	a0, 1
	slli	a0, a0, 32
	addi	s5, a0, 1
	li	s6, 10
	li	s7, 44
	lui	s2, %hi(.L.str.11)
	addi	s2, s2, %lo(.L.str.11)
	li	s8, 3
	li	s9, 88
	li	s10, -4
	li	s11, -5
	j	.LBB5_3
.LBB5_1:                                #   in Loop: Header=BB5_3 Depth=1
	ld	a0, 88(s1)
	mul	a1, s3, s4
	add	a0, a0, a1
	sd	s5, 8(a0)
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	addi	s3, s3, 1
	beq	s3, s6, .LBB5_12
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	lbu	a0, 0(s0)
	beqz	a0, .LBB5_1
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	sb	s7, 14(sp)
	addi	a2, sp, 20
	addi	a3, sp, 15
	addi	a4, sp, 16
	addi	a5, sp, 14
	mv	a0, s0
	mv	a1, s2
	call	__isoc99_sscanf
	blt	a0, s8, .LBB5_14
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	lbu	a0, 15(sp)
	andi	a1, a0, 223
	li	a0, 0
	bne	a1, s9, .LBB5_15
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	lbu	a1, 14(sp)
	bne	a1, s7, .LBB5_15
# %bb.7:                                #   in Loop: Header=BB5_3 Depth=1
	lw	a0, 20(sp)
	addiw	a1, a0, -5
	bltu	a1, s10, .LBB5_13
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	lw	a1, 16(sp)
	addiw	a1, a1, -5
	bgeu	s11, a1, .LBB5_13
# %bb.9:                                #   in Loop: Header=BB5_3 Depth=1
	ld	a1, 88(s1)
	mul	a2, s3, s4
	add	a1, a1, a2
	sw	a0, 8(a1)
	lw	a0, 16(sp)
	sw	a0, 12(a1)
.LBB5_10:                               #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, 0(s0)
	beqz	a0, .LBB5_2
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=2
	addi	s0, s0, 1
	bne	a0, s7, .LBB5_10
	j	.LBB5_2
.LBB5_12:
	li	a0, 1
	j	.LBB5_15
.LBB5_13:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	li	a1, 35
	li	a2, 1
	call	fwrite
.LBB5_14:
	li	a0, 0
.LBB5_15:
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
.Lfunc_end5:
	.size	set_sample_factors, .Lfunc_end5-set_sample_factors
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Can't open table file %s\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Too many tables in file %s\n"
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Invalid table data in file %s\n"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Non-numeric data in file %s\n"
	.size	.L.str.4, 29

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Can't open scan definition file %s\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Too many scans defined in file %s\n"
	.size	.L.str.6, 35

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Too many components in one scan in file %s\n"
	.size	.L.str.7, 44

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Invalid scan entry format in file %s\n"
	.size	.L.str.8, 38

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%d%c"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"JPEG quantization tables are numbered 0..%d\n"
	.size	.L.str.10, 45

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%d%c%d%c"
	.size	.L.str.11, 9

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"JPEG sampling factors must be 1..4\n"
	.size	.L.str.12, 36

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
