	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"tmndec.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_hits                  # -- Begin function get_regsw_hits
	.p2align	2
	.type	get_regsw_hits,@function
get_regsw_hits:                         # @get_regsw_hits
# %bb.0:
	#APP
	csrr	a0, 2059
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end0:
	.size	get_regsw_hits, .Lfunc_end0-get_regsw_hits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_misses                # -- Begin function get_regsw_misses
	.p2align	2
	.type	get_regsw_misses,@function
get_regsw_misses:                       # @get_regsw_misses
# %bb.0:
	#APP
	csrr	a0, 2060
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end1:
	.size	get_regsw_misses, .Lfunc_end1-get_regsw_misses
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_regsw_cache               # -- Begin function clear_regsw_cache
	.p2align	2
	.type	clear_regsw_cache,@function
clear_regsw_cache:                      # @clear_regsw_cache
# %bb.0:
	#APP
	csrr	a0, 2061
	#NO_APP
	ret
.Lfunc_end2:
	.size	clear_regsw_cache, .Lfunc_end2-clear_regsw_cache
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_cycles                      # -- Begin function get_cycles
	.p2align	2
	.type	get_cycles,@function
get_cycles:                             # @get_cycles
# %bb.0:
	#APP
	csrr	a0, 2068
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end3:
	.size	get_cycles, .Lfunc_end3-get_cycles
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_li                          # -- Begin function get_li
	.p2align	2
	.type	get_li,@function
get_li:                                 # @get_li
# %bb.0:
	#APP
	csrr	a0, 2063
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end4:
	.size	get_li, .Lfunc_end4-get_li
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_ld                          # -- Begin function get_ld
	.p2align	2
	.type	get_ld,@function
get_ld:                                 # @get_ld
# %bb.0:
	#APP
	csrr	a0, 2065
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end5:
	.size	get_ld, .Lfunc_end5-get_ld
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_lw                          # -- Begin function get_lw
	.p2align	2
	.type	get_lw,@function
get_lw:                                 # @get_lw
# %bb.0:
	#APP
	csrr	a0, 2064
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end6:
	.size	get_lw, .Lfunc_end6-get_lw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sd                          # -- Begin function get_sd
	.p2align	2
	.type	get_sd,@function
get_sd:                                 # @get_sd
# %bb.0:
	#APP
	csrr	a0, 2067
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end7:
	.size	get_sd, .Lfunc_end7-get_sd
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sw                          # -- Begin function get_sw
	.p2align	2
	.type	get_sw,@function
get_sw:                                 # @get_sw
# %bb.0:
	#APP
	csrr	a0, 2066
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end8:
	.size	get_sw, .Lfunc_end8-get_sw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	crash_handler                   # -- Begin function crash_handler
	.p2align	2
	.type	crash_handler,@function
crash_handler:                          # @crash_handler
# %bb.0:
	li	a0, 1
	call	exit
.Lfunc_end9:
	.size	crash_handler, .Lfunc_end9-crash_handler
                                        # -- End function
	.option	pop
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
	mv	s0, a1
	mv	s3, a0
	lui	a1, %hi(crash_handler)
	addi	a1, a1, %lo(crash_handler)
	li	a0, 11
	call	signal
	#APP
	csrr	a0, 2061
	#NO_APP
	li	a1, 2
	#APP
	csrr	a0, 2068
	#NO_APP
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	blt	s3, a1, .LBB10_30
# %bb.1:                                # %.preheader7
	li	s5, 1
	slli	s6, s5, 11
	li	s8, 12
	lui	s10, %hi(.LJTI10_0)
	addi	s10, s10, %lo(.LJTI10_0)
	lui	s2, %hi(.L.str.4)
	addi	s2, s2, %lo(.L.str.4)
	lui	s11, %hi(verbose)
	lui	s9, %hi(expand)
	j	.LBB10_3
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	addiw	s3, s1, -1
	li	a0, 2
	bge	a0, s1, .LBB10_29
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
                                        #       Child Loop BB10_22 Depth 3
                                        #       Child Loop BB10_13 Depth 3
	ld	s7, 8(s0)
	lbu	a0, 0(s7)
	mv	s1, s3
	li	a1, 45
	bne	a0, a1, .LBB10_28
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	lbu	s4, 1(s7)
	addi	s0, s0, 8
	beqz	s4, .LBB10_2
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	call	__ctype_toupper_loc
	mv	s3, a0
	j	.LBB10_8
.LBB10_6:                               #   in Loop: Header=BB10_8 Depth=2
	lui	a0, %hi(loopflag)
	sb	s5, %lo(loopflag)(a0)
.LBB10_7:                               #   in Loop: Header=BB10_8 Depth=2
	ld	a0, 0(s0)
	addi	s7, a0, 1
	sd	s7, 0(s0)
	lbu	s4, 2(a0)
	beqz	s4, .LBB10_2
.LBB10_8:                               #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_22 Depth 3
                                        #       Child Loop BB10_13 Depth 3
	ld	a0, 0(s3)
	slli	a1, s4, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a0, a0, -76
	bltu	s8, a0, .LBB10_27
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=2
	slli	a0, a0, 2
	add	a0, a0, s10
	lw	a0, 0(a0)
	jr	a0
.LBB10_10:                              #   in Loop: Header=BB10_8 Depth=2
	addi	a0, s7, 2
	addi	a2, sp, 20
	mv	a1, s2
	call	__isoc99_sscanf
	bne	a0, s5, .LBB10_24
# %bb.11:                               #   in Loop: Header=BB10_8 Depth=2
	call	__ctype_b_loc
	ld	a1, 0(s0)
	lbu	a2, 2(a1)
	ld	a3, 0(a0)
	slli	a2, a2, 1
	add	a2, a3, a2
	lhu	a2, 0(a2)
	and	a2, a2, s6
	beqz	a2, .LBB10_14
# %bb.12:                               # %.preheader4
                                        #   in Loop: Header=BB10_8 Depth=2
	addi	a1, a1, 1
.LBB10_13:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	a1, 0(s0)
	lbu	a2, 2(a1)
	ld	a3, 0(a0)
	slli	a2, a2, 1
	add	a2, a3, a2
	lhu	a2, 0(a2)
	and	a2, a2, s6
	addi	a1, a1, 1
	bnez	a2, .LBB10_13
.LBB10_14:                              #   in Loop: Header=BB10_8 Depth=2
	lw	a0, 20(sp)
	j	.LBB10_25
.LBB10_15:                              #   in Loop: Header=BB10_8 Depth=2
	lui	a0, %hi(trace)
	sw	s5, %lo(trace)(a0)
	j	.LBB10_7
.LBB10_16:                              #   in Loop: Header=BB10_8 Depth=2
	lui	a0, %hi(refidct)
	sw	s5, %lo(refidct)(a0)
	j	.LBB10_7
.LBB10_17:                              #   in Loop: Header=BB10_8 Depth=2
	sw	s5, %lo(expand)(s9)
	j	.LBB10_7
.LBB10_18:                              #   in Loop: Header=BB10_8 Depth=2
	lui	a0, %hi(quiet)
	sw	s5, %lo(quiet)(a0)
	j	.LBB10_7
.LBB10_19:                              #   in Loop: Header=BB10_8 Depth=2
	addi	a0, s7, 2
	addi	a2, sp, 16
	mv	a1, s2
	call	__isoc99_sscanf
	bne	a0, s5, .LBB10_26
# %bb.20:                               #   in Loop: Header=BB10_8 Depth=2
	call	__ctype_b_loc
	ld	a1, 0(s0)
	lbu	a2, 2(a1)
	ld	a3, 0(a0)
	slli	a2, a2, 1
	add	a2, a3, a2
	lhu	a2, 0(a2)
	and	a2, a2, s6
	beqz	a2, .LBB10_23
# %bb.21:                               # %.preheader2
                                        #   in Loop: Header=BB10_8 Depth=2
	addi	a1, a1, 1
.LBB10_22:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	a1, 0(s0)
	lbu	a2, 2(a1)
	ld	a3, 0(a0)
	slli	a2, a2, 1
	add	a2, a3, a2
	lhu	a2, 0(a2)
	and	a2, a2, s6
	addi	a1, a1, 1
	bnez	a2, .LBB10_22
.LBB10_23:                              #   in Loop: Header=BB10_8 Depth=2
	lw	a0, 16(sp)
	sw	a0, %lo(verbose)(s11)
	j	.LBB10_7
.LBB10_24:                              #   in Loop: Header=BB10_8 Depth=2
	li	a0, 0
.LBB10_25:                              #   in Loop: Header=BB10_8 Depth=2
	lui	a1, %hi(outtype)
	sw	a0, %lo(outtype)(a1)
	j	.LBB10_7
.LBB10_26:                              #   in Loop: Header=BB10_8 Depth=2
	sw	zero, %lo(verbose)(s11)
	j	.LBB10_7
.LBB10_27:                              #   in Loop: Header=BB10_8 Depth=2
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	andi	a2, s4, 255
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	fprintf
	j	.LBB10_7
.LBB10_28:
	mv	s3, s1
	j	.LBB10_30
.LBB10_29:
	li	s3, 1
.LBB10_30:
	lui	a0, %hi(outtype)
	lw	a0, %lo(outtype)(a0)
	andi	a0, a0, -3
	li	a1, 4
	beq	a0, a1, .LBB10_32
# %bb.31:
	lui	a0, %hi(loopflag)
	sb	zero, %lo(loopflag)(a0)
.LBB10_32:
	addiw	a0, s3, -3
	li	a1, 2
	bgeu	a0, a1, .LBB10_74
# %bb.33:
	slli	s3, s3, 3
	add	s3, s0, s3
	ld	a0, -8(s3)
	lui	a1, %hi(outputname)
	sd	a0, %lo(outputname)(a1)
	lui	s1, %hi(base)
	ld	a0, 8(s0)
	addi	a1, s1, %lo(base)
	lui	a2, %hi(ld)
	sd	a1, %lo(ld)(a2)
	li	a1, 0
	call	open
	sw	a0, %lo(base)(s1)
	bltz	a0, .LBB10_75
# %bb.34:                               # %.preheader1
	li	s0, 1
	lui	s9, %hi(clp)
	li	s10, 640
	li	s4, 5
	lui	s6, %hi(bframe)
	addi	s6, s6, %lo(bframe)
	lui	s5, %hi(edgeframeorig)
	addi	s5, s5, %lo(edgeframeorig)
	lui	s7, %hi(edgeframe)
	addi	s7, s7, %lo(edgeframe)
	beqz	a0, .LBB10_36
.LBB10_35:
	li	a1, 0
	li	a2, 0
	call	lseek
.LBB10_36:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_40 Depth 2
                                        #       Child Loop BB10_44 Depth 3
	call	initbits
	sw	zero, 12(sp)
	lui	a0, %hi(temp_ref)
	sw	zero, %lo(temp_ref)(a0)
	call	getheader
	beqz	a0, .LBB10_68
# %bb.37:                               # %.preheader
                                        #   in Loop: Header=BB10_36 Depth=1
	mv	a1, s0
	j	.LBB10_40
.LBB10_38:                              #   in Loop: Header=BB10_40 Depth=2
	call	init_idct
.LBB10_39:                              #   in Loop: Header=BB10_40 Depth=2
	addi	a0, sp, 12
	call	getpicture
	lw	a0, 12(sp)
	addi	a0, a0, 1
	sw	a0, 12(sp)
	call	getheader
	li	a1, 0
	li	s0, 0
	beqz	a0, .LBB10_68
.LBB10_40:                              #   Parent Loop BB10_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_44 Depth 3
	beqz	a1, .LBB10_39
# %bb.41:                               #   in Loop: Header=BB10_40 Depth=2
	li	a0, 1024
	call	malloc
	sd	a0, %lo(clp)(s9)
	beqz	a0, .LBB10_71
# %bb.42:                               #   in Loop: Header=BB10_40 Depth=2
	addi	a0, a0, 384
	sd	a0, %lo(clp)(s9)
	li	a0, -384
	li	a1, -384
	j	.LBB10_44
.LBB10_43:                              #   in Loop: Header=BB10_44 Depth=3
	ld	a3, %lo(clp)(s9)
	sgtz	a4, a2
	negw	a4, a4
	and	a2, a4, a2
	add	a3, a3, a1
	sb	a2, 0(a3)
	addi	a1, a1, 1
	addiw	a0, a0, 1
	beq	a1, s10, .LBB10_46
.LBB10_44:                              #   Parent Loop BB10_36 Depth=1
                                        #     Parent Loop BB10_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a3, 255
	mv	a2, a0
	blt	a0, a3, .LBB10_43
# %bb.45:                               #   in Loop: Header=BB10_44 Depth=3
	li	a2, 255
	j	.LBB10_43
.LBB10_46:                              #   in Loop: Header=BB10_40 Depth=2
	lui	a0, %hi(source_format)
	lw	a0, %lo(source_format)(a0)
	addiw	a0, a0, -1
	lui	a1, %hi(matrix_coefficients)
	sw	s4, %lo(matrix_coefficients)(a1)
	bgeu	a0, s4, .LBB10_72
# %bb.47:                               #   in Loop: Header=BB10_40 Depth=2
	slli	a0, a0, 2
	lui	a1, %hi(.Lswitch.table.main)
	addi	a1, a1, %lo(.Lswitch.table.main)
	add	a1, a1, a0
	lwu	s8, 0(a1)
	lui	a1, %hi(.Lswitch.table.main.16)
	addi	a1, a1, %lo(.Lswitch.table.main.16)
	add	a0, a1, a0
	lwu	s0, 0(a0)
	lui	a0, %hi(horizontal_size)
	sw	s8, %lo(horizontal_size)(a0)
	lui	a0, %hi(vertical_size)
	sw	s0, %lo(vertical_size)(a0)
	srli	a0, s8, 4
	lui	a1, %hi(mb_width)
	sw	a0, %lo(mb_width)(a1)
	srli	a0, s0, 4
	lui	a1, %hi(mb_height)
	sw	a0, %lo(mb_height)(a1)
	lui	a0, %hi(coded_picture_width)
	sw	s8, %lo(coded_picture_width)(a0)
	lui	a0, %hi(coded_picture_height)
	sw	s0, %lo(coded_picture_height)(a0)
	srli	s3, s8, 1
	lui	a0, %hi(chrom_width)
	sw	s3, %lo(chrom_width)(a0)
	srli	s11, s0, 1
	lui	a0, %hi(chrom_height)
	sw	s11, %lo(chrom_height)(a0)
	lui	a0, %hi(blk_cnt)
	li	a1, 6
	sw	a1, %lo(blk_cnt)(a0)
	mulw	s1, s0, s8
	mv	a0, s1
	call	malloc
	lui	a1, %hi(refframe)
	sd	a0, %lo(refframe)(a1)
	beqz	a0, .LBB10_71
# %bb.48:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s1
	call	malloc
	lui	a1, %hi(oldrefframe)
	sd	a0, %lo(oldrefframe)(a1)
	beqz	a0, .LBB10_71
# %bb.49:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s1
	call	malloc
	lui	a1, %hi(bframe)
	sd	a0, %lo(bframe)(a1)
	beqz	a0, .LBB10_71
# %bb.50:                               #   in Loop: Header=BB10_40 Depth=2
	mulw	s2, s11, s3
	mv	a0, s2
	call	malloc
	lui	a1, %hi(refframe)
	addi	a1, a1, %lo(refframe)
	sd	a0, 8(a1)
	beqz	a0, .LBB10_71
# %bb.51:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s2
	call	malloc
	lui	a1, %hi(oldrefframe)
	addi	a1, a1, %lo(oldrefframe)
	sd	a0, 8(a1)
	beqz	a0, .LBB10_71
# %bb.52:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s2
	call	malloc
	sd	a0, 8(s6)
	beqz	a0, .LBB10_71
# %bb.53:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s2
	call	malloc
	lui	a1, %hi(refframe)
	addi	a1, a1, %lo(refframe)
	sd	a0, 16(a1)
	beqz	a0, .LBB10_71
# %bb.54:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s2
	call	malloc
	lui	a1, %hi(oldrefframe)
	addi	a1, a1, %lo(oldrefframe)
	sd	a0, 16(a1)
	beqz	a0, .LBB10_71
# %bb.55:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s2
	call	malloc
	sd	a0, 16(s6)
	beqz	a0, .LBB10_71
# %bb.56:                               #   in Loop: Header=BB10_40 Depth=2
	addi	a0, s0, 64
	addi	a1, s8, 64
	mulw	a0, a0, a1
	call	malloc
	lui	a1, %hi(edgeframeorig)
	sd	a0, %lo(edgeframeorig)(a1)
	beqz	a0, .LBB10_71
# %bb.57:                               #   in Loop: Header=BB10_40 Depth=2
	addi	a1, s3, 32
	addi	a2, s11, 32
	mulw	s3, a2, a1
	slliw	a1, s8, 5
	add	a0, a0, a1
	addi	a0, a0, 2047
	addi	a0, a0, 33
	lui	a1, %hi(edgeframe)
	sd	a0, %lo(edgeframe)(a1)
	mv	a0, s3
	call	malloc
	sd	a0, 8(s5)
	beqz	a0, .LBB10_71
# %bb.58:                               #   in Loop: Header=BB10_40 Depth=2
	slli	s8, s8, 3
	addiw	s0, s8, 512
	add	a0, a0, s0
	addi	a0, a0, 16
	sd	a0, 8(s7)
	mv	a0, s3
	call	malloc
	sd	a0, 16(s5)
	beqz	a0, .LBB10_71
# %bb.59:                               #   in Loop: Header=BB10_40 Depth=2
	lui	a1, %hi(expand)
	lw	a1, %lo(expand)(a1)
	add	a0, a0, s0
	addi	a0, a0, 16
	sd	a0, 16(s7)
	beqz	a1, .LBB10_63
# %bb.60:                               #   in Loop: Header=BB10_40 Depth=2
	slliw	a0, s1, 2
	call	malloc
	lui	a1, %hi(exnewframe)
	sd	a0, %lo(exnewframe)(a1)
	beqz	a0, .LBB10_71
# %bb.61:                               #   in Loop: Header=BB10_40 Depth=2
	slliw	s1, s2, 2
	mv	a0, s1
	call	malloc
	lui	a1, %hi(exnewframe)
	addi	a1, a1, %lo(exnewframe)
	sd	a0, 8(a1)
	beqz	a0, .LBB10_71
# %bb.62:                               #   in Loop: Header=BB10_40 Depth=2
	mv	a0, s1
	call	malloc
	lui	a1, %hi(exnewframe)
	addi	a1, a1, %lo(exnewframe)
	sd	a0, 16(a1)
	beqz	a0, .LBB10_71
.LBB10_63:                              #   in Loop: Header=BB10_40 Depth=2
	lui	a0, %hi(outtype)
	lw	a0, %lo(outtype)(a0)
	bne	a0, s4, .LBB10_66
# %bb.64:                               #   in Loop: Header=BB10_40 Depth=2
	lui	a0, %hi(outputname)
	ld	a0, %lo(outputname)(a0)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	fopen
	beqz	a0, .LBB10_73
# %bb.65:                               #   in Loop: Header=BB10_40 Depth=2
	call	fclose
.LBB10_66:                              #   in Loop: Header=BB10_40 Depth=2
	lui	a0, %hi(refidct)
	lw	a0, %lo(refidct)(a0)
	beqz	a0, .LBB10_38
# %bb.67:                               #   in Loop: Header=BB10_40 Depth=2
	call	init_idctref
	j	.LBB10_39
.LBB10_68:                              #   in Loop: Header=BB10_36 Depth=1
	lui	a0, %hi(loopflag)
	lbu	a0, %lo(loopflag)(a0)
	beqz	a0, .LBB10_70
# %bb.69:                               #   in Loop: Header=BB10_36 Depth=1
	lui	a0, %hi(base)
	lw	a0, %lo(base)(a0)
	bnez	a0, .LBB10_35
	j	.LBB10_36
.LBB10_70:
	lui	a0, %hi(base)
	lw	a0, %lo(base)(a0)
	lw	s0, 0(sp)                       # 8-byte Folded Reload
	call	close
	#APP
	csrr	a0, 2068
	#NO_APP
	sext.w	a0, a0
	#APP
	csrr	s1, 2059
	#NO_APP
	#APP
	csrr	a3, 2060
	#NO_APP
	sub	s0, a0, s0
	sext.w	s1, s1
	sext.w	a3, a3
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	mv	a1, s0
	mv	a2, s1
	call	printf
	sub	a1, s0, s1
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	printf
	#APP
	csrr	a1, 2064
	#NO_APP
	sext.w	a1, a1
	#APP
	csrr	a3, 2063
	#NO_APP
	sext.w	a3, a3
	#APP
	csrr	a2, 2065
	#NO_APP
	sext.w	a2, a2
	#APP
	csrr	a4, 2066
	#NO_APP
	sext.w	a4, a4
	#APP
	csrr	a5, 2067
	#NO_APP
	sext.w	a5, a5
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
	li	a0, 0
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
.LBB10_71:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 14
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB10_72:
	lui	a0, %hi(.Lstr.15)
	addi	a0, a0, %lo(.Lstr.15)
	call	puts
	li	a0, -1
	call	exit
.LBB10_73:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 26
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB10_74:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	lui	a1, %hi(version)
	addi	a1, a1, %lo(version)
	call	printf
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	call	printf
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	lui	a0, %hi(.Lstr.14)
	addi	a0, a0, %lo(.Lstr.14)
	call	puts
	li	a0, 0
	call	exit
.LBB10_75:
	ld	a2, 8(s0)
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, s0
	call	sprintf
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	mv	a1, s0
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_6
	.word	.LBB10_27
	.word	.LBB10_27
	.word	.LBB10_10
	.word	.LBB10_27
	.word	.LBB10_18
	.word	.LBB10_16
	.word	.LBB10_27
	.word	.LBB10_15
	.word	.LBB10_27
	.word	.LBB10_19
	.word	.LBB10_27
	.word	.LBB10_17
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	error                           # -- Begin function error
	.p2align	2
	.type	error,@function
error:                                  # @error
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(stderr)
	ld	a1, %lo(stderr)(a1)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end11:
	.size	error, .Lfunc_end11-error
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	printbits                       # -- Begin function printbits
	.p2align	2
	.type	printbits,@function
printbits:                              # @printbits
# %bb.0:
	blez	a2, .LBB12_4
# %bb.1:                                # %.preheader
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	addi	s2, a1, -1
	subw	s3, s2, a2
	lui	s1, %hi(.L.str.4)
	addi	s1, s1, %lo(.L.str.4)
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	srlw	a1, s0, s2
	andi	a1, a1, 1
	mv	a0, s1
	call	printf
	addiw	s2, s2, -1
	bne	s2, s3, .LBB12_2
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB12_4:
	ret
.Lfunc_end12:
	.size	printbits, .Lfunc_end12-printbits
                                        # -- End function
	.option	pop
	.type	version,@object                 # @version
	.data
	.globl	version
version:
	.asciz	"tmndecode v1.7\n(C) 1995, 1996 Telenor R&D\n"
	.size	version, 43

	.type	zig_zag_scan,@object            # @zig_zag_scan
	.globl	zig_zag_scan
zig_zag_scan:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>?"
	.size	zig_zag_scan, 64

	.type	convmat,@object                 # @convmat
	.globl	convmat
	.p2align	2, 0x0
convmat:
	.word	117504                          # 0x1cb00
	.word	138453                          # 0x21cd5
	.word	13954                           # 0x3682
	.word	34903                           # 0x8857
	.word	117504                          # 0x1cb00
	.word	138453                          # 0x21cd5
	.word	13954                           # 0x3682
	.word	34903                           # 0x8857
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	104448                          # 0x19800
	.word	132798                          # 0x206be
	.word	24759                           # 0x60b7
	.word	53109                           # 0xcf75
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	117579                          # 0x1cb4b
	.word	136230                          # 0x21426
	.word	16907                           # 0x420b
	.word	35559                           # 0x8ae7
	.size	convmat, 128

	.type	bscan_tab,@object               # @bscan_tab
	.globl	bscan_tab
	.p2align	2, 0x0
bscan_tab:
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	8                               # 0x8
	.size	bscan_tab, 16

	.type	bquant_tab,@object              # @bquant_tab
	.globl	bquant_tab
	.p2align	2, 0x0
bquant_tab:
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.size	bquant_tab, 16

	.type	OM,@object                      # @OM
	.globl	OM
	.p2align	2, 0x0
OM:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	OM, 1280

	.type	roundtab,@object                # @roundtab
	.globl	roundtab
	.p2align	2, 0x0
roundtab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	roundtab, 64

	.type	outputname,@object              # @outputname
	.section	.sbss,"aw",@nobits
	.globl	outputname
	.p2align	3, 0x0
outputname:
	.quad	0
	.size	outputname, 8

	.type	base,@object                    # @base
	.bss
	.globl	base
	.p2align	3, 0x0
base:
	.zero	3624
	.size	base, 3624

	.type	ld,@object                      # @ld
	.section	.sbss,"aw",@nobits
	.globl	ld
	.p2align	3, 0x0
ld:
	.quad	0
	.size	ld, 8

	.type	errortext,@object               # @errortext
	.bss
	.globl	errortext
errortext:
	.zero	256
	.size	errortext, 256

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Input file %s not found\n"
	.size	.L.str, 25

	.type	temp_ref,@object                # @temp_ref
	.section	.sbss,"aw",@nobits
	.globl	temp_ref
	.p2align	2, 0x0
temp_ref:
	.word	0                               # 0x0
	.size	temp_ref, 4

	.type	prev_temp_ref,@object           # @prev_temp_ref
	.globl	prev_temp_ref
	.p2align	2, 0x0
prev_temp_ref:
	.word	0                               # 0x0
	.size	prev_temp_ref, 4

	.type	loopflag,@object                # @loopflag
	.p2align	2, 0x0
loopflag:
	.byte	0                               # 0x0
	.size	loopflag, 1

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"cycles: %lu | regsw hits:%d regsw misses:%d \n"
	.size	.L.str.1, 46

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Corrected Cycles: %lu\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"lw, %lu\n ld, %lu\n li, %lu\n sw, %lu\n sd, %lu\n "
	.size	.L.str.3, 46

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d"
	.size	.L.str.4, 3

	.type	quiet,@object                   # @quiet
	.section	.sbss,"aw",@nobits
	.globl	quiet
	.p2align	2, 0x0
quiet:
	.word	0                               # 0x0
	.size	quiet, 4

	.type	trace,@object                   # @trace
	.globl	trace
	.p2align	2, 0x0
trace:
	.word	0                               # 0x0
	.size	trace, 4

	.type	refframe,@object                # @refframe
	.bss
	.globl	refframe
	.p2align	3, 0x0
refframe:
	.zero	24
	.size	refframe, 24

	.type	oldrefframe,@object             # @oldrefframe
	.globl	oldrefframe
	.p2align	3, 0x0
oldrefframe:
	.zero	24
	.size	oldrefframe, 24

	.type	bframe,@object                  # @bframe
	.globl	bframe
	.p2align	3, 0x0
bframe:
	.zero	24
	.size	bframe, 24

	.type	newframe,@object                # @newframe
	.globl	newframe
	.p2align	3, 0x0
newframe:
	.zero	24
	.size	newframe, 24

	.type	edgeframe,@object               # @edgeframe
	.globl	edgeframe
	.p2align	3, 0x0
edgeframe:
	.zero	24
	.size	edgeframe, 24

	.type	edgeframeorig,@object           # @edgeframeorig
	.globl	edgeframeorig
	.p2align	3, 0x0
edgeframeorig:
	.zero	24
	.size	edgeframeorig, 24

	.type	exnewframe,@object              # @exnewframe
	.globl	exnewframe
	.p2align	3, 0x0
exnewframe:
	.zero	24
	.size	exnewframe, 24

	.type	MV,@object                      # @MV
	.globl	MV
	.p2align	2, 0x0
MV:
	.zero	262800
	.size	MV, 262800

	.type	modemap,@object                 # @modemap
	.globl	modemap
	.p2align	2, 0x0
modemap:
	.zero	26280
	.size	modemap, 26280

	.type	clp,@object                     # @clp
	.section	.sbss,"aw",@nobits
	.globl	clp
	.p2align	3, 0x0
clp:
	.quad	0
	.size	clp, 8

	.type	horizontal_size,@object         # @horizontal_size
	.globl	horizontal_size
	.p2align	2, 0x0
horizontal_size:
	.word	0                               # 0x0
	.size	horizontal_size, 4

	.type	vertical_size,@object           # @vertical_size
	.globl	vertical_size
	.p2align	2, 0x0
vertical_size:
	.word	0                               # 0x0
	.size	vertical_size, 4

	.type	mb_width,@object                # @mb_width
	.globl	mb_width
	.p2align	2, 0x0
mb_width:
	.word	0                               # 0x0
	.size	mb_width, 4

	.type	mb_height,@object               # @mb_height
	.globl	mb_height
	.p2align	2, 0x0
mb_height:
	.word	0                               # 0x0
	.size	mb_height, 4

	.type	coded_picture_width,@object     # @coded_picture_width
	.globl	coded_picture_width
	.p2align	2, 0x0
coded_picture_width:
	.word	0                               # 0x0
	.size	coded_picture_width, 4

	.type	coded_picture_height,@object    # @coded_picture_height
	.globl	coded_picture_height
	.p2align	2, 0x0
coded_picture_height:
	.word	0                               # 0x0
	.size	coded_picture_height, 4

	.type	chrom_width,@object             # @chrom_width
	.globl	chrom_width
	.p2align	2, 0x0
chrom_width:
	.word	0                               # 0x0
	.size	chrom_width, 4

	.type	chrom_height,@object            # @chrom_height
	.globl	chrom_height
	.p2align	2, 0x0
chrom_height:
	.word	0                               # 0x0
	.size	chrom_height, 4

	.type	blk_cnt,@object                 # @blk_cnt
	.globl	blk_cnt
	.p2align	2, 0x0
blk_cnt:
	.word	0                               # 0x0
	.size	blk_cnt, 4

	.type	pict_type,@object               # @pict_type
	.globl	pict_type
	.p2align	2, 0x0
pict_type:
	.word	0                               # 0x0
	.size	pict_type, 4

	.type	newgob,@object                  # @newgob
	.globl	newgob
	.p2align	2, 0x0
newgob:
	.word	0                               # 0x0
	.size	newgob, 4

	.type	mv_outside_frame,@object        # @mv_outside_frame
	.globl	mv_outside_frame
	.p2align	2, 0x0
mv_outside_frame:
	.word	0                               # 0x0
	.size	mv_outside_frame, 4

	.type	syntax_arith_coding,@object     # @syntax_arith_coding
	.globl	syntax_arith_coding
	.p2align	2, 0x0
syntax_arith_coding:
	.word	0                               # 0x0
	.size	syntax_arith_coding, 4

	.type	adv_pred_mode,@object           # @adv_pred_mode
	.globl	adv_pred_mode
	.p2align	2, 0x0
adv_pred_mode:
	.word	0                               # 0x0
	.size	adv_pred_mode, 4

	.type	pb_frame,@object                # @pb_frame
	.globl	pb_frame
	.p2align	2, 0x0
pb_frame:
	.word	0                               # 0x0
	.size	pb_frame, 4

	.type	long_vectors,@object            # @long_vectors
	.globl	long_vectors
	.p2align	2, 0x0
long_vectors:
	.word	0                               # 0x0
	.size	long_vectors, 4

	.type	fault,@object                   # @fault
	.globl	fault
	.p2align	2, 0x0
fault:
	.word	0                               # 0x0
	.size	fault, 4

	.type	expand,@object                  # @expand
	.globl	expand
	.p2align	2, 0x0
expand:
	.word	0                               # 0x0
	.size	expand, 4

	.type	verbose,@object                 # @verbose
	.globl	verbose
	.p2align	2, 0x0
verbose:
	.word	0                               # 0x0
	.size	verbose, 4

	.type	refidct,@object                 # @refidct
	.globl	refidct
	.p2align	2, 0x0
refidct:
	.word	0                               # 0x0
	.size	refidct, 4

	.type	matrix_coefficients,@object     # @matrix_coefficients
	.globl	matrix_coefficients
	.p2align	2, 0x0
matrix_coefficients:
	.word	0                               # 0x0
	.size	matrix_coefficients, 4

	.type	quant,@object                   # @quant
	.globl	quant
	.p2align	2, 0x0
quant:
	.word	0                               # 0x0
	.size	quant, 4

	.type	source_format,@object           # @source_format
	.globl	source_format
	.p2align	2, 0x0
source_format:
	.word	0                               # 0x0
	.size	source_format, 4

	.type	trd,@object                     # @trd
	.globl	trd
	.p2align	2, 0x0
trd:
	.word	0                               # 0x0
	.size	trd, 4

	.type	trb,@object                     # @trb
	.globl	trb
	.p2align	2, 0x0
trb:
	.word	0                               # 0x0
	.size	trb, 4

	.type	bscan,@object                   # @bscan
	.globl	bscan
	.p2align	2, 0x0
bscan:
	.word	0                               # 0x0
	.size	bscan, 4

	.type	bquant,@object                  # @bquant
	.globl	bquant
	.p2align	2, 0x0
bquant:
	.word	0                               # 0x0
	.size	bquant, 4

	.type	outtype,@object                 # @outtype
	.globl	outtype
	.p2align	2, 0x0
outtype:
	.word	0                               # 0x0
	.size	outtype, 4

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"malloc failed\n"
	.size	.L.str.5, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"wb"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"couldn't clear outputfile\n"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"undefined option -%c ignored\n"
	.size	.L.str.9, 30

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\n%s\n"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Usage:   tmndecode {options} bitstream {outputfilename%%d}\nOptions: -vn  verbose output (n: level)\n         -on  output format \n              n=0 : YUV\n              n=1 : SIF\n              n=2 : TGA\n              n=3 : PPM\n"
	.size	.L.str.11, 225

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"              n=5 : YUV concatenated"
	.size	.Lstr, 37

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"              You have to choose one output format!\n         -q   disable warnings to stderr\n         -r   use double precision reference IDCT\n         -t   enable low level tracing"
	.size	.Lstr.14, 182

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"ERROR: Illegal input format"
	.size	.Lstr.15, 28

	.type	.Lswitch.table.main,@object     # @switch.table.main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.main:
	.word	128                             # 0x80
	.word	176                             # 0xb0
	.word	352                             # 0x160
	.word	704                             # 0x2c0
	.word	1408                            # 0x580
	.size	.Lswitch.table.main, 20

	.type	.Lswitch.table.main.16,@object  # @switch.table.main.16
	.p2align	2, 0x0
.Lswitch.table.main.16:
	.word	96                              # 0x60
	.word	144                             # 0x90
	.word	288                             # 0x120
	.word	576                             # 0x240
	.word	1152                            # 0x480
	.size	.Lswitch.table.main.16, 20

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
