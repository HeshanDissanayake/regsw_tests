	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdjpgcom.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
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
	ld	a2, 0(a1)
	mv	s2, a0
	lui	a0, %hi(progname)
	sd	a2, %lo(progname)(a0)
	beqz	a2, .LBB0_2
# %bb.1:
	lbu	a3, 0(a2)
	bnez	a3, .LBB0_3
.LBB0_2:
	lui	a2, %hi(.L.str)
	addi	a2, a2, %lo(.L.str)
	sd	a2, %lo(progname)(a0)
.LBB0_3:
	li	a0, 1
	bge	a0, s2, .LBB0_38
# %bb.4:
	ld	s5, 8(a1)
	lbu	a0, 0(s5)
	li	s4, 45
	addiw	a4, s2, -1
	bne	a0, s4, .LBB0_40
# %bb.5:                                # %.preheader
	sd	a4, 8(sp)                       # 8-byte Folded Spill
	sd	a2, 0(sp)                       # 8-byte Folded Spill
	li	s6, 0
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	addi	s8, a1, 16
	li	s7, 1
	li	s9, 118
	li	s10, 2
	li	s11, 101
	li	s3, 114
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lbu	s0, 1(s5)
	beqz	s0, .LBB0_44
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_b_loc
	ld	s1, 0(a0)
	slli	a0, s0, 1
	add	a0, s1, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	bne	s0, s9, .LBB0_44
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	lbu	s0, 2(s5)
	beqz	s0, .LBB0_35
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a0, s0, 1
	add	a0, s1, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	bne	s0, s11, .LBB0_44
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	lbu	s0, 3(s5)
	beqz	s0, .LBB0_35
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a0, s0, 1
	add	a0, s1, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=1
	bne	s0, s3, .LBB0_44
# %bb.18:                               #   in Loop: Header=BB0_6 Depth=1
	lbu	s0, 4(s5)
	beqz	s0, .LBB0_35
# %bb.19:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a0, s0, 1
	add	a0, s1, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_21:                               #   in Loop: Header=BB0_6 Depth=1
	li	a0, 98
	bne	s0, a0, .LBB0_44
# %bb.22:                               #   in Loop: Header=BB0_6 Depth=1
	lbu	s0, 5(s5)
	beqz	s0, .LBB0_35
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a0, s0, 1
	add	a0, s1, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	li	a0, 111
	bne	s0, a0, .LBB0_44
# %bb.26:                               #   in Loop: Header=BB0_6 Depth=1
	lbu	s0, 6(s5)
	beqz	s0, .LBB0_35
# %bb.27:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a0, s0, 1
	add	a0, s1, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_29:                               #   in Loop: Header=BB0_6 Depth=1
	li	a0, 115
	bne	s0, a0, .LBB0_44
# %bb.30:                               #   in Loop: Header=BB0_6 Depth=1
	lbu	s0, 7(s5)
	beqz	s0, .LBB0_35
# %bb.31:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a0, s0, 1
	add	a0, s1, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_33:                               #   in Loop: Header=BB0_6 Depth=1
	bne	s0, s11, .LBB0_44
# %bb.34:                               #   in Loop: Header=BB0_6 Depth=1
	lbu	a0, 8(s5)
	bnez	a0, .LBB0_44
.LBB0_35:                               #   in Loop: Header=BB0_6 Depth=1
	addw	a0, s2, s6
	beq	a0, s10, .LBB0_46
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=1
	ld	s5, 0(s8)
	lbu	a0, 0(s5)
	addi	s7, s7, 1
	addi	s6, s6, -1
	addi	s8, s8, 8
	beq	a0, s4, .LBB0_6
# %bb.37:
	sltu	a0, s7, s2
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	negw	s1, s6
	li	a3, 1
	subw	s2, a3, s6
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 0(sp)                       # 8-byte Folded Reload
	blt	s2, a4, .LBB0_39
	j	.LBB0_41
.LBB0_38:
	li	s1, 0
	li	a0, 0
	addiw	a4, s2, -1
	li	s2, 1
	bge	s2, a4, .LBB0_41
.LBB0_39:
	lui	s0, %hi(stderr)
	ld	a0, %lo(stderr)(s0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fprintf
	j	.LBB0_45
.LBB0_40:
	li	s2, 1
	li	a0, 1
	li	s1, 0
	blt	s2, a4, .LBB0_39
.LBB0_41:
	beqz	a0, .LBB0_47
.LBB0_42:
	slli	s0, s2, 3
	add	s0, a1, s0
	ld	a0, 0(s0)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fopen
	lui	a1, %hi(infile)
	sd	a0, %lo(infile)(a1)
	bnez	a0, .LBB0_48
# %bb.43:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	ld	a3, 0(s0)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_44:
	lui	s0, %hi(stderr)
.LBB0_45:
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 55
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fprintf
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	li	a1, 37
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 52
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_46:
	addi	s7, s7, 1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	bltu	s7, s2, .LBB0_42
.LBB0_47:
	lui	a0, %hi(stdin)
	ld	a0, %lo(stdin)(a0)
	lui	a1, %hi(infile)
	sd	a0, %lo(infile)(a1)
.LBB0_48:
	mv	a0, s1
	call	scan_JPEG_header
	li	a0, 0
	call	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function scan_JPEG_header
	.type	scan_JPEG_header,@function
scan_JPEG_header:                       # @scan_JPEG_header
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
	lui	s1, %hi(infile)
	ld	a1, %lo(infile)(s1)
	mv	s0, a0
	mv	a0, a1
	call	getc
	ld	a1, %lo(infile)(s1)
	mv	s1, a0
	mv	a0, a1
	call	getc
	li	a1, 255
	bne	s1, a1, .LBB1_55
# %bb.1:
	li	a1, 216
	bne	a0, a1, .LBB1_55
# %bb.2:
	lui	a0, %hi(infile)
	ld	a0, %lo(infile)(a0)
	call	getc
	li	a1, -1
	beq	a0, a1, .LBB1_52
# %bb.3:
	beqz	s0, .LBB1_33
# %bb.4:                                # %.preheader11
	li	s3, 0
	li	s2, 255
	lui	s0, %hi(infile)
	li	s1, -1
	j	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	ld	a0, %lo(infile)(s0)
	addiw	s3, s3, 1
	call	getc
	beq	a0, s1, .LBB1_52
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_24 Depth 2
	bne	a0, s2, .LBB1_5
.LBB1_7:                                #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s2, .LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	beq	a0, s1, .LBB1_52
# %bb.9:                                #   in Loop: Header=BB1_6 Depth=1
	bnez	s3, .LBB1_31
# %bb.10:                               #   in Loop: Header=BB1_6 Depth=1
	addi	a1, a0, -192
	li	a2, 62
	bltu	a2, a1, .LBB1_32
.LBB1_11:                               #   in Loop: Header=BB1_6 Depth=1
	slli	a1, a1, 2
	lui	a2, %hi(.LJTI1_0)
	addi	a2, a2, %lo(.LJTI1_0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	jr	a1
.LBB1_12:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s3, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.13:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s4, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.14:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s7, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.15:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s6, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.16:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s8, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.17:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s9, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.18:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s10, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.19:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s11, a0
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.20:                               #   in Loop: Header=BB1_6 Depth=1
	mv	s5, a0
	addiw	a0, s3, -192
	lui	s3, %hi(.L.str.28)
	addi	s3, s3, %lo(.L.str.28)
	li	a1, 15
	bltu	a1, a0, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_6 Depth=1
	slli	a0, a0, 3
	lui	a1, %hi(.Lswitch.table.scan_JPEG_header)
	addi	a1, a1, %lo(.Lswitch.table.scan_JPEG_header)
	add	a0, a1, a0
	ld	s3, 0(a0)
.LBB1_22:                               #   in Loop: Header=BB1_6 Depth=1
	slli	s4, s4, 8
	addw	s4, s7, s4
	slli	s8, s8, 8
	addw	a2, s9, s8
	slli	s10, s10, 8
	addw	a1, s11, s10
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	mv	a3, s5
	mv	a4, s6
	call	printf
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	mv	a1, s3
	call	printf
	slli	a0, s5, 1
	add	a0, a0, s5
	addiw	a0, a0, 8
	bne	s4, a0, .LBB1_53
# %bb.23:                               #   in Loop: Header=BB1_6 Depth=1
	blez	s5, .LBB1_28
.LBB1_24:                               #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=2
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=2
	ld	a0, %lo(infile)(s0)
	call	getc
	beq	a0, s1, .LBB1_52
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=2
	addiw	s5, s5, -1
	bnez	s5, .LBB1_24
.LBB1_28:                               #   in Loop: Header=BB1_6 Depth=1
	ld	a0, %lo(infile)(s0)
	call	getc
	li	s3, 0
	bne	a0, s1, .LBB1_6
	j	.LBB1_52
.LBB1_29:                               #   in Loop: Header=BB1_6 Depth=1
	call	process_COM
	j	.LBB1_28
.LBB1_30:                               #   in Loop: Header=BB1_6 Depth=1
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	call	process_COM
	j	.LBB1_28
.LBB1_31:                               #   in Loop: Header=BB1_6 Depth=1
	lui	a1, %hi(stderr)
	ld	a3, %lo(stderr)(a1)
	li	a1, 41
	li	a2, 1
	mv	s3, a0
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	call	fwrite
	mv	a0, s3
	addi	a1, s3, -192
	li	a2, 62
	bgeu	a2, a1, .LBB1_11
.LBB1_32:                               #   in Loop: Header=BB1_6 Depth=1
	call	skip_variable
	j	.LBB1_28
.LBB1_33:                               # %.preheader3
	li	s1, 0
	li	s2, 255
	lui	s3, %hi(infile)
	li	s4, -1
	li	s5, 62
	lui	s6, %hi(.LJTI1_1)
	addi	s6, s6, %lo(.LJTI1_1)
	li	s7, 2
	lui	s8, %hi(stderr)
	lui	s0, %hi(.L.str.13)
	addi	s0, s0, %lo(.L.str.13)
	j	.LBB1_35
.LBB1_34:                               #   in Loop: Header=BB1_35 Depth=1
	ld	a0, %lo(infile)(s3)
	addiw	s1, s1, 1
	call	getc
	beq	a0, s4, .LBB1_52
.LBB1_35:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_45 Depth 2
	bne	a0, s2, .LBB1_34
.LBB1_36:                               #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(infile)(s3)
	call	getc
	beq	a0, s2, .LBB1_36
# %bb.37:                               #   in Loop: Header=BB1_35 Depth=1
	beq	a0, s4, .LBB1_52
# %bb.38:                               #   in Loop: Header=BB1_35 Depth=1
	bnez	s1, .LBB1_49
# %bb.39:                               #   in Loop: Header=BB1_35 Depth=1
	addi	a0, a0, -192
	bltu	s5, a0, .LBB1_50
.LBB1_40:                               #   in Loop: Header=BB1_35 Depth=1
	slli	a0, a0, 2
	add	a0, a0, s6
	lw	a0, 0(a0)
	jr	a0
.LBB1_41:                               #   in Loop: Header=BB1_35 Depth=1
	ld	a0, %lo(infile)(s3)
	call	getc
	beq	a0, s4, .LBB1_52
# %bb.42:                               #   in Loop: Header=BB1_35 Depth=1
	mv	s1, a0
	ld	a0, %lo(infile)(s3)
	call	getc
	beq	a0, s4, .LBB1_52
# %bb.43:                               #   in Loop: Header=BB1_35 Depth=1
	slli	s1, s1, 8
	addw	s1, a0, s1
	bltu	s1, s7, .LBB1_54
# %bb.44:                               #   in Loop: Header=BB1_35 Depth=1
	addiw	s1, s1, -2
	beqz	s1, .LBB1_47
.LBB1_45:                               #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(infile)(s3)
	call	getc
	beq	a0, s4, .LBB1_52
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=2
	addiw	s1, s1, -1
	bnez	s1, .LBB1_45
.LBB1_47:                               #   in Loop: Header=BB1_35 Depth=1
	ld	a0, %lo(infile)(s3)
	call	getc
	li	s1, 0
	bne	a0, s4, .LBB1_35
	j	.LBB1_52
.LBB1_48:                               #   in Loop: Header=BB1_35 Depth=1
	call	process_COM
	j	.LBB1_47
.LBB1_49:                               #   in Loop: Header=BB1_35 Depth=1
	ld	a3, %lo(stderr)(s8)
	li	a1, 41
	li	a2, 1
	mv	s1, a0
	mv	a0, s0
	call	fwrite
	addi	a0, s1, -192
	bgeu	s5, a0, .LBB1_40
.LBB1_50:                               #   in Loop: Header=BB1_35 Depth=1
	call	skip_variable
	j	.LBB1_47
.LBB1_51:
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
.LBB1_52:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
	call	fprintf
	li	a0, 1
	call	exit
.LBB1_53:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.31)
	addi	a2, a2, %lo(.L.str.31)
	call	fprintf
	li	a0, 1
	call	exit
.LBB1_54:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.32)
	addi	a2, a2, %lo(.L.str.32)
	call	fprintf
	li	a0, 1
	call	exit
.LBB1_55:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.12)
	addi	a2, a2, %lo(.L.str.12)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end1:
	.size	scan_JPEG_header, .Lfunc_end1-scan_JPEG_header
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_32
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_32
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_32
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_12
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_51
	.word	.LBB1_51
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_30
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_32
	.word	.LBB1_29
.LJTI1_1:
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_50
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_50
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_50
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_41
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_51
	.word	.LBB1_51
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_50
	.word	.LBB1_48
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function skip_variable
	.type	skip_variable,@function
skip_variable:                          # @skip_variable
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	call	read_2_bytes
	li	a1, 1
	bgeu	a1, a0, .LBB2_7
# %bb.1:
	addiw	s0, a0, -2
	beqz	s0, .LBB2_5
# %bb.2:
	lui	s1, %hi(infile)
	li	s2, -1
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(infile)(s1)
	call	getc
	beq	a0, s2, .LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	addiw	s0, s0, -1
	bnez	s0, .LBB2_3
.LBB2_5:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB2_6:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
	call	fprintf
	li	a0, 1
	call	exit
.LBB2_7:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.32)
	addi	a2, a2, %lo(.L.str.32)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end2:
	.size	skip_variable, .Lfunc_end2-skip_variable
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function process_COM
	.type	process_COM,@function
process_COM:                            # @process_COM
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
	call	read_2_bytes
	li	a1, 1
	bgeu	a1, a0, .LBB3_17
# %bb.1:
	addiw	s3, a0, -2
	beqz	s3, .LBB3_15
# %bb.2:                                # %.preheader
	li	s0, 0
	lui	s4, %hi(infile)
	li	s5, 12
	li	s6, 10
	li	s7, 13
	li	s8, -1
	lui	s1, %hi(.L.str.35)
	addi	s1, s1, %lo(.L.str.35)
	lui	s9, %hi(stdout)
	li	s10, 92
	lui	s2, %hi(.L.str.34)
	addi	s2, s2, %lo(.L.str.34)
	j	.LBB3_5
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	li	a0, 10
	call	putchar
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	addiw	s3, s3, -1
	beqz	s3, .LBB3_15
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(infile)(s4)
	mv	s11, s0
	call	getc
	mv	s0, a0
	bge	s5, a0, .LBB3_9
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	beq	s0, s7, .LBB3_3
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	bne	s0, s10, .LBB3_12
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	mv	a0, s2
	call	printf
	j	.LBB3_4
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	bne	s0, s6, .LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	bne	s11, s7, .LBB3_3
	j	.LBB3_4
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	beq	s0, s8, .LBB3_16
.LBB3_12:                               #   in Loop: Header=BB3_5 Depth=1
	call	__ctype_b_loc
	ld	a0, 0(a0)
	slli	a1, s0, 1
	add	a0, a0, a1
	lhu	a0, 0(a0)
	slli	a0, a0, 49
	bltz	a0, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_5 Depth=1
	mv	a0, s1
	mv	a1, s0
	call	printf
	j	.LBB3_4
.LBB3_14:                               #   in Loop: Header=BB3_5 Depth=1
	ld	a1, %lo(stdout)(s9)
	mv	a0, s0
	call	putc
	j	.LBB3_4
.LBB3_15:
	li	a0, 10
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
	tail	putchar
.LBB3_16:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
	call	fprintf
	li	a0, 1
	call	exit
.LBB3_17:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.32)
	addi	a2, a2, %lo(.L.str.32)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end3:
	.size	process_COM, .Lfunc_end3-process_COM
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_2_bytes
	.type	read_2_bytes,@function
read_2_bytes:                           # @read_2_bytes
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(infile)
	ld	a0, %lo(infile)(s1)
	call	getc
	li	s2, -1
	beq	a0, s2, .LBB4_3
# %bb.1:
	mv	s0, a0
	ld	a0, %lo(infile)(s1)
	call	getc
	beq	a0, s2, .LBB4_3
# %bb.2:
	slli	s0, s0, 8
	addw	a0, a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB4_3:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end4:
	.size	read_2_bytes, .Lfunc_end4-read_2_bytes
                                        # -- End function
	.option	pop
	.type	progname,@object                # @progname
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
progname:
	.quad	0
	.size	progname, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rdjpgcom"
	.size	.L.str, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s: only one input file\n"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.type	infile,@object                  # @infile
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
infile:
	.quad	0
	.size	infile, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"%s: can't open %s\n"
	.size	.L.str.4, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"rdjpgcom displays any textual comments in a JPEG file.\n"
	.size	.L.str.5, 56

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Usage: %s [switches] [inputfile]\n"
	.size	.L.str.6, 34

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Switches (names may be abbreviated):\n"
	.size	.L.str.7, 38

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"  -verbose    Also display dimensions of JPEG image\n"
	.size	.L.str.8, 53

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s\n"
	.size	.L.str.9, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Not a JPEG file"
	.size	.L.str.12, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Warning: garbage data found in JPEG file\n"
	.size	.L.str.13, 42

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Premature EOF in JPEG file"
	.size	.L.str.14, 27

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Baseline"
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Extended sequential"
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Progressive"
	.size	.L.str.17, 12

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Lossless"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Differential sequential"
	.size	.L.str.19, 24

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Differential progressive"
	.size	.L.str.20, 25

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Differential lossless"
	.size	.L.str.21, 22

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Extended sequential, arithmetic coding"
	.size	.L.str.22, 39

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Progressive, arithmetic coding"
	.size	.L.str.23, 31

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Lossless, arithmetic coding"
	.size	.L.str.24, 28

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Differential sequential, arithmetic coding"
	.size	.L.str.25, 43

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Differential progressive, arithmetic coding"
	.size	.L.str.26, 44

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Differential lossless, arithmetic coding"
	.size	.L.str.27, 41

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Unknown"
	.size	.L.str.28, 8

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"JPEG image is %uw * %uh, %d color components, %d bits per sample\n"
	.size	.L.str.29, 66

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"JPEG process: %s\n"
	.size	.L.str.30, 18

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Bogus SOF marker length"
	.size	.L.str.31, 24

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Erroneous JPEG marker length"
	.size	.L.str.32, 29

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\\\\"
	.size	.L.str.34, 3

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"\\%03o"
	.size	.L.str.35, 6

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"APP12 contains:"
	.size	.Lstr, 16

	.type	.Lswitch.table.scan_JPEG_header,@object # @switch.table.scan_JPEG_header
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.scan_JPEG_header:
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.28
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.28
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.28
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.size	.Lswitch.table.scan_JPEG_header, 128

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
