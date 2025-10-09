	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"gethdr.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getheader                       # -- Begin function getheader
	.p2align	2
	.type	getheader,@function
getheader:                              # @getheader
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	li	a0, 17
	call	showbits
	li	s0, 1
	beq	a0, s0, .LBB0_2
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	li	a0, 1
	call	flushbits
	li	a0, 17
	call	showbits
	bne	a0, s0, .LBB0_1
.LBB0_2:
	li	a0, 17
	call	getbits
	li	a0, 5
	call	getbits
	li	a1, 31
	beq	a0, a1, .LBB0_21
# %bb.3:
	mv	s0, a0
	bnez	a0, .LBB0_30
# %bb.4:
	lui	s1, %hi(temp_ref)
	lw	a0, %lo(temp_ref)(s1)
	lui	s2, %hi(prev_temp_ref)
	sw	a0, %lo(prev_temp_ref)(s2)
	li	a0, 8
	call	getbits
	lw	a1, %lo(prev_temp_ref)(s2)
	sw	a0, %lo(temp_ref)(s1)
	subw	a0, a0, a1
	srliw	a1, a0, 31
	slli	a1, a1, 8
	add	a0, a1, a0
	lui	a1, %hi(trd)
	sw	a0, %lo(trd)(a1)
	li	a0, 1
	call	getbits
	lui	s1, %hi(quiet)
	lw	a1, %lo(quiet)(s1)
	or	a0, a0, a1
	bnez	a0, .LBB0_6
# %bb.5:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
.LBB0_6:
	li	a0, 1
	call	getbits
	beqz	a0, .LBB0_9
# %bb.7:
	lw	a0, %lo(quiet)(s1)
	bnez	a0, .LBB0_9
# %bb.8:
	lui	a0, %hi(.Lstr.8)
	addi	a0, a0, %lo(.Lstr.8)
	call	puts
.LBB0_9:
	li	a0, 1
	call	getbits
	bnez	a0, .LBB0_32
# %bb.10:
	li	a0, 1
	call	getbits
	lui	s2, %hi(quiet)
	beqz	a0, .LBB0_13
# %bb.11:
	lw	a0, %lo(quiet)(s2)
	bnez	a0, .LBB0_13
# %bb.12:
	lui	a0, %hi(.Lstr.9)
	addi	a0, a0, %lo(.Lstr.9)
	call	puts
.LBB0_13:
	li	a0, 1
	li	s1, 1
	call	getbits
	beqz	a0, .LBB0_16
# %bb.14:
	lw	a0, %lo(quiet)(s2)
	bnez	a0, .LBB0_16
# %bb.15:
	lui	a0, %hi(.Lstr.10)
	addi	a0, a0, %lo(.Lstr.10)
	call	puts
.LBB0_16:
	li	a0, 3
	call	getbits
	lui	a1, %hi(source_format)
	sw	a0, %lo(source_format)(a1)
	li	a0, 1
	call	getbits
	lui	a1, %hi(pict_type)
	sw	a0, %lo(pict_type)(a1)
	li	a0, 1
	call	getbits
	lui	s2, %hi(mv_outside_frame)
	sw	a0, %lo(mv_outside_frame)(s2)
	snez	a0, a0
	lui	a1, %hi(long_vectors)
	sw	a0, %lo(long_vectors)(a1)
	li	a0, 1
	call	getbits
	lui	a1, %hi(syntax_arith_coding)
	sw	a0, %lo(syntax_arith_coding)(a1)
	li	a0, 1
	call	getbits
	lui	a1, %hi(adv_pred_mode)
	sw	a0, %lo(adv_pred_mode)(a1)
	bnez	a0, .LBB0_18
# %bb.17:
	lw	s1, %lo(mv_outside_frame)(s2)
.LBB0_18:
	sw	s1, %lo(mv_outside_frame)(s2)
	li	a0, 1
	call	getbits
	lui	s1, %hi(pb_frame)
	sw	a0, %lo(pb_frame)(s1)
	li	a0, 5
	call	getbits
	lui	a1, %hi(quant)
	sw	a0, %lo(quant)(a1)
	li	a0, 1
	call	getbits
	bnez	a0, .LBB0_34
# %bb.19:
	lw	a0, %lo(pb_frame)(s1)
	beqz	a0, .LBB0_22
# %bb.20:
	li	a0, 3
	call	getbits
	lui	a1, %hi(trb)
	sw	a0, %lo(trb)(a1)
	li	a0, 2
	call	getbits
	lui	a1, %hi(bquant)
	sw	a0, %lo(bquant)(a1)
	j	.LBB0_24
.LBB0_21:
	li	a0, 0
	j	.LBB0_31
.LBB0_22:
	lui	a0, %hi(trb)
	sw	zero, %lo(trb)(a0)
	j	.LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=1
	li	a0, 8
	call	getbits
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	li	a0, 1
	call	getbits
	bnez	a0, .LBB0_23
# %bb.25:
	lui	a0, %hi(verbose)
	lw	a0, %lo(verbose)(a0)
	li	a1, 2
	blt	a0, a1, .LBB0_28
# %bb.26:
	lui	a0, %hi(temp_ref)
	lw	a1, %lo(temp_ref)(a0)
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	printf
	lui	a0, %hi(pb_frame)
	lw	a0, %lo(pb_frame)(a0)
	beqz	a0, .LBB0_28
# %bb.27:
	lui	a0, %hi(trb)
	lw	a1, %lo(trb)(a0)
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	printf
.LBB0_28:
	lui	a0, %hi(syntax_arith_coding)
	lw	a0, %lo(syntax_arith_coding)(a0)
	beqz	a0, .LBB0_30
# %bb.29:
	call	decoder_reset
.LBB0_30:
	addiw	a0, s0, 1
.LBB0_31:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB0_32:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_37
# %bb.33:
	lui	a0, %hi(.Lstr.12)
	addi	a0, a0, %lo(.Lstr.12)
	j	.LBB0_36
.LBB0_34:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_37
# %bb.35:
	lui	a0, %hi(.Lstr.11)
	addi	a0, a0, %lo(.Lstr.11)
.LBB0_36:
	call	puts
.LBB0_37:
	li	a0, -1
	call	exit
.Lfunc_end0:
	.size	getheader, .Lfunc_end0-getheader
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	startcode                       # -- Begin function startcode
	.p2align	2
	.type	startcode,@function
startcode:                              # @startcode
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 17
	call	showbits
	li	s0, 1
	beq	a0, s0, .LBB1_2
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	li	a0, 1
	call	flushbits
	li	a0, 17
	call	showbits
	bne	a0, s0, .LBB1_1
.LBB1_2:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	startcode, .Lfunc_end1-startcode
                                        # -- End function
	.option	pop
	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"  temp_ref=%d\n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"  trb=%d\n"
	.size	.L.str.7, 10

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"warning: spare in picture header should be \"1\""
	.size	.Lstr, 47

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"warning: H.261 distinction bit should be \"0\""
	.size	.Lstr.8, 45

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"warning: document camera indicator not supported in this version"
	.size	.Lstr.9, 65

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"warning: frozen picture not supported in this version"
	.size	.Lstr.10, 54

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"error: CPM not supported in this version"
	.size	.Lstr.11, 41

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"error: split-screen not supported in this version"
	.size	.Lstr.12, 50

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
