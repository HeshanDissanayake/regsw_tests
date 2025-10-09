	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"macroblock.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	set_MB_parameters               # -- Begin function set_MB_parameters
	.p2align	2
	.type	set_MB_parameters,@function
set_MB_parameters:                      # @set_MB_parameters
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a2, %lo(img)(s1)
	mv	s0, a0
	sw	a0, 12(a2)
	addi	a1, a2, 136
	addi	a2, a2, 140
	call	get_mb_block_pos
	ld	a0, %lo(img)(s1)
	lui	a1, 22
	addiw	a1, a1, 108
	add	a1, a0, a1
	lui	a2, 8
	lw	a3, 136(a0)
	addiw	a4, a2, -1192
	lw	a5, 140(a0)
	add	a4, a0, a4
	slli	a2, a3, 2
	sw	a2, 144(a0)
	slli	a2, a5, 2
	sw	a2, 148(a0)
	slli	a2, a3, 4
	lw	a6, 0(a1)
	sw	a2, 152(a0)
	slli	a3, a5, 4
	sw	a3, 156(a0)
	sw	a2, 168(a0)
	beqz	a6, .LBB0_5
# %bb.1:
	ld	a4, 0(a4)
	li	a6, 528
	mul	a7, s0, a6
	add	a7, a4, a7
	lw	a7, 424(a7)
	beqz	a7, .LBB0_6
# %bb.2:
	andi	a6, s0, 1
	beqz	a6, .LBB0_10
# %bb.3:
	lui	a7, %hi(imgY_org_bot)
	addi	a7, a7, %lo(imgY_org_bot)
	ld	a7, 0(a7)
	lui	t0, %hi(imgY_org)
	sd	a7, %lo(imgY_org)(t0)
	bnez	a6, .LBB0_11
.LBB0_4:
	lui	a7, %hi(imgUV_org_top)
	addi	a7, a7, %lo(imgUV_org_top)
	j	.LBB0_12
.LBB0_5:
	ld	a4, 0(a4)
	sw	a3, 172(a0)
	li	a5, 528
	mul	a5, s0, a5
	j	.LBB0_7
.LBB0_6:
	lui	a5, %hi(imgY_org_frm)
	ld	a5, %lo(imgY_org_frm)(a5)
	lui	a7, %hi(imgUV_org_frm)
	ld	a7, %lo(imgUV_org_frm)(a7)
	lui	t0, %hi(imgY_org)
	sd	a5, %lo(imgY_org)(t0)
	lui	a5, %hi(imgUV_org)
	sd	a7, %lo(imgUV_org)(a5)
	sw	a3, 172(a0)
	mul	a5, s0, a6
.LBB0_7:
	add	a4, a4, a5
	sw	zero, 428(a4)
	mv	a5, a3
	lw	a4, 328(a1)
	beqz	a4, .LBB0_9
.LBB0_8:
	lw	a4, 336(a1)
	lw	a1, 340(a1)
	mul	a2, a4, a2
	sraiw	a2, a2, 4
	sw	a2, 160(a0)
	mul	a3, a1, a3
	sraiw	a3, a3, 4
	sw	a3, 164(a0)
	sw	a2, 176(a0)
	mul	a1, a5, a1
	sraiw	a1, a1, 4
	sw	a1, 180(a0)
.LBB0_9:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB0_10:
	lui	a7, %hi(imgY_org_top)
	addi	a7, a7, %lo(imgY_org_top)
	ld	a7, 0(a7)
	lui	t0, %hi(imgY_org)
	sd	a7, %lo(imgY_org)(t0)
	beqz	a6, .LBB0_4
.LBB0_11:
	lui	a7, %hi(imgUV_org_bot)
	addi	a7, a7, %lo(imgUV_org_bot)
.LBB0_12:
	ld	a7, 0(a7)
	lui	t0, %hi(imgUV_org)
	sd	a7, %lo(imgUV_org)(t0)
	slli	a5, a5, 3
	andi	a5, a5, -16
	sw	a5, 172(a0)
	li	a7, 2
	beqz	a6, .LBB0_14
# %bb.13:
	li	a7, 4
.LBB0_14:
	li	a6, 528
	mul	a6, s0, a6
	add	a4, a4, a6
	sw	a7, 428(a4)
	lw	a4, 328(a1)
	bnez	a4, .LBB0_8
	j	.LBB0_9
.Lfunc_end0:
	.size	set_MB_parameters, .Lfunc_end0-set_MB_parameters
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clip1a                          # -- Begin function clip1a
	.p2align	2
	.type	clip1a,@function
clip1a:                                 # @clip1a
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 420(a1)
	blt	a1, a0, .LBB1_2
# %bb.1:
	sgtz	a1, a0
	neg	a1, a1
	and	a1, a1, a0
.LBB1_2:
	mv	a0, a1
	ret
.Lfunc_end1:
	.size	clip1a, .Lfunc_end1-clip1a
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clip1a_chr                      # -- Begin function clip1a_chr
	.p2align	2
	.type	clip1a_chr,@function
clip1a_chr:                             # @clip1a_chr
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 424(a1)
	blt	a1, a0, .LBB2_2
# %bb.1:
	sgtz	a1, a0
	neg	a1, a1
	and	a1, a1, a0
.LBB2_2:
	mv	a0, a1
	ret
.Lfunc_end2:
	.size	clip1a_chr, .Lfunc_end2-clip1a_chr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	proceed2nextMacroblock          # -- Begin function proceed2nextMacroblock
	.p2align	2
	.type	proceed2nextMacroblock,@function
proceed2nextMacroblock:                 # @proceed2nextMacroblock
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	a1, 22
	addiw	a1, a1, 372
	lui	a2, 8
	add	a2, a0, a2
	lw	a3, 12(a0)
	ld	s0, -1192(a2)
	add	a1, a0, a1
	li	a2, 528
	mul	a2, a3, a2
	add	s0, s0, a2
	lw	a2, 0(a1)
	lw	a3, 76(a1)
	lw	a4, 72(a1)
	lw	a5, 4(a1)
	lw	a1, 24(s0)
	slli	a2, a2, 8
	mul	a3, a3, a4
	mul	a3, a3, a5
	slli	a3, a3, 1
	add	a2, a3, a2
	addiw	a2, a2, 128
	bge	a2, a1, .LBB3_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	ld	a0, %lo(img)(s1)
.LBB3_2:
	lui	a1, %hi(stats)
	lw	a2, 24(a0)
	ld	a1, %lo(stats)(a1)
	lw	a3, 28(s0)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a4, 1356(a2)
	add	a3, a4, a3
	sw	a3, 1356(a2)
	lw	a2, 24(a0)
	lw	a3, 40(s0)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a4, 1416(a2)
	add	a3, a4, a3
	sw	a3, 1416(a2)
	lw	a2, 24(a0)
	lw	a3, 36(s0)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a4, 1396(a2)
	add	a3, a4, a3
	sw	a3, 1396(a2)
	lw	a2, 24(a0)
	lw	a3, 44(s0)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a4, 1436(a2)
	add	a3, a4, a3
	sw	a3, 1436(a2)
	lw	a2, 24(a0)
	lw	a3, 48(s0)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a4, 1456(a2)
	add	a3, a4, a3
	sw	a3, 1456(a2)
	lw	a2, 72(s0)
	li	a3, 14
	bltu	a3, a2, .LBB3_8
# %bb.3:
	lui	a3, 6
	addiw	a3, a3, 1536
	srl	a2, a3, a2
	andi	a2, a2, 1
	beqz	a2, .LBB3_8
# %bb.4:
	lw	a2, 416(s0)
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a3, 672(a2)
	addi	a3, a3, 1
	sw	a3, 672(a2)
	lbu	a2, 364(s0)
	andi	a2, a2, 15
	beqz	a2, .LBB3_8
# %bb.5:
	lw	a5, 468(s0)
	lw	a3, 24(a0)
	lw	a2, 72(s0)
	li	a4, 372
	beqz	a5, .LBB3_7
# %bb.6:
	li	a4, 72
.LBB3_7:
	add	a4, a1, a4
	li	a5, 60
	mul	a3, a3, a5
	add	a3, a4, a3
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a3, 0(a2)
	addi	a3, a3, 1
	sw	a3, 0(a2)
.LBB3_8:
	lw	a3, 24(a0)
	addi	a2, a1, 736
	lw	a4, 72(s0)
	li	a5, 60
	mul	a3, a3, a5
	add	a3, a2, a3
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a4, 0(a3)
	addi	a4, a4, 1
	sw	a4, 0(a3)
	lw	a3, 24(a0)
	lw	a4, 72(s0)
	mul	a3, a3, a5
	lw	a5, 32(s0)
	add	a3, a1, a3
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a4, 1036(a3)
	add	a4, a4, a5
	sw	a4, 1036(a3)
	lw	a3, 24(a0)
	li	a4, 2
	beq	a3, a4, .LBB3_54
# %bb.9:
	lw	a4, 72(s0)
	li	a5, 8
	bne	a4, a5, .LBB3_12
# %bb.10:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	lw	a4, 376(s0)
	lw	a5, 24(a0)
	addi	a6, a1, 32
	blez	a4, .LBB3_17
# %bb.11:
	li	a7, 60
	mul	a5, a5, a7
	add	a5, a2, a5
	j	.LBB3_18
.LBB3_12:
	li	a2, 3
	bltu	a2, a4, .LBB3_51
# %bb.13:
	lbu	a2, 364(s0)
	andi	a2, a2, 15
	beqz	a2, .LBB3_51
# %bb.14:
	lw	a5, 468(s0)
	li	a2, 372
	beqz	a5, .LBB3_16
# %bb.15:
	li	a2, 72
.LBB3_16:
	add	a2, a1, a2
	li	a5, 60
	mul	a3, a3, a5
	add	a2, a2, a3
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a3, 0(a2)
	addi	a3, a3, 1
	sw	a3, 0(a2)
	j	.LBB3_51
.LBB3_17:
	lw	a4, 468(s0)
	slli	a5, a5, 3
	add	a5, a6, a5
.LBB3_18:
	slli	a4, a4, 2
	add	a4, a5, a4
	lw	a5, 0(a4)
	addi	a5, a5, 1
	sw	a5, 0(a4)
	lw	a7, 376(s0)
	addi	a5, a3, 2047
	addi	a4, a1, 372
	li	t0, 4
	addi	a3, a1, 72
	bne	a7, t0, .LBB3_24
# %bb.19:
	lw	a7, 468(s0)
	beqz	a7, .LBB3_21
# %bb.20:
	lbu	a7, 364(s0)
	andi	t0, a7, 15
	mv	a7, a3
	bnez	t0, .LBB3_23
.LBB3_21:
	lw	t0, 1845(a5)
	li	t1, 2
	mv	a7, a3
	beq	t0, t1, .LBB3_23
# %bb.22:
	mv	a7, a4
.LBB3_23:
	lw	t0, 24(a0)
	li	t1, 60
	mul	t0, t0, t1
	add	a7, a7, t0
	lw	t0, 16(a7)
	addi	t0, t0, 1
	sw	t0, 16(a7)
.LBB3_24:
	lw	a7, 380(s0)
	lw	t0, 24(a0)
	blez	a7, .LBB3_26
# %bb.25:
	li	t1, 60
	mul	t0, t0, t1
	add	t0, a2, t0
	j	.LBB3_27
.LBB3_26:
	lw	a7, 468(s0)
	slli	t0, t0, 3
	add	t0, a6, t0
.LBB3_27:
	slli	a7, a7, 2
	add	a7, t0, a7
	lw	t0, 0(a7)
	addi	t0, t0, 1
	sw	t0, 0(a7)
	lw	a7, 380(s0)
	li	t0, 4
	bne	a7, t0, .LBB3_33
# %bb.28:
	lw	a7, 468(s0)
	beqz	a7, .LBB3_30
# %bb.29:
	lbu	a7, 364(s0)
	andi	t0, a7, 15
	mv	a7, a3
	bnez	t0, .LBB3_32
.LBB3_30:
	lw	t0, 1845(a5)
	li	t1, 2
	mv	a7, a3
	beq	t0, t1, .LBB3_32
# %bb.31:
	mv	a7, a4
.LBB3_32:
	lw	t0, 24(a0)
	li	t1, 60
	mul	t0, t0, t1
	add	a7, a7, t0
	lw	t0, 16(a7)
	addi	t0, t0, 1
	sw	t0, 16(a7)
.LBB3_33:
	lw	a7, 384(s0)
	lw	t0, 24(a0)
	blez	a7, .LBB3_35
# %bb.34:
	li	t1, 60
	mul	t0, t0, t1
	add	t0, a2, t0
	j	.LBB3_36
.LBB3_35:
	lw	a7, 468(s0)
	slli	t0, t0, 3
	add	t0, a6, t0
.LBB3_36:
	slli	a7, a7, 2
	add	a7, t0, a7
	lw	t0, 0(a7)
	addi	t0, t0, 1
	sw	t0, 0(a7)
	lw	a7, 384(s0)
	li	t0, 4
	bne	a7, t0, .LBB3_42
# %bb.37:
	lw	a7, 468(s0)
	beqz	a7, .LBB3_39
# %bb.38:
	lbu	a7, 364(s0)
	andi	t0, a7, 15
	mv	a7, a3
	bnez	t0, .LBB3_41
.LBB3_39:
	lw	t0, 1845(a5)
	li	t1, 2
	mv	a7, a3
	beq	t0, t1, .LBB3_41
# %bb.40:
	mv	a7, a4
.LBB3_41:
	lw	t0, 24(a0)
	li	t1, 60
	mul	t0, t0, t1
	add	a7, a7, t0
	lw	t0, 16(a7)
	addi	t0, t0, 1
	sw	t0, 16(a7)
.LBB3_42:
	lw	a7, 388(s0)
	lw	t0, 24(a0)
	blez	a7, .LBB3_44
# %bb.43:
	li	a6, 60
	mul	a6, t0, a6
	add	a2, a2, a6
	slli	a7, a7, 2
	add	a2, a2, a7
	j	.LBB3_45
.LBB3_44:
	lw	a2, 468(s0)
	slli	t0, t0, 3
	add	a6, a6, t0
	slli	a2, a2, 2
	add	a2, a6, a2
.LBB3_45:
	lw	a6, 0(a2)
	addi	a6, a6, 1
	sw	a6, 0(a2)
	lw	a2, 388(s0)
	li	a6, 4
	bne	a2, a6, .LBB3_51
# %bb.46:
	lw	a2, 468(s0)
	beqz	a2, .LBB3_48
# %bb.47:
	lbu	a2, 364(s0)
	andi	a2, a2, 15
	bnez	a2, .LBB3_50
.LBB3_48:
	lw	a2, 1845(a5)
	li	a5, 2
	beq	a2, a5, .LBB3_50
# %bb.49:
	mv	a3, a4
.LBB3_50:
	lw	a2, 24(a0)
	li	a4, 60
	mul	a2, a2, a4
	add	a2, a3, a2
	lw	a3, 16(a2)
	addi	a3, a3, 1
	sw	a3, 16(a2)
.LBB3_51:
	lw	a0, 24(a0)
	li	a2, 3
	beq	a0, a2, .LBB3_53
# %bb.52:
	bnez	a0, .LBB3_54
.LBB3_53:
	lw	a0, 0(a1)
	lw	a2, 12(s0)
	lw	a3, 4(a1)
	addi	a0, a0, 1
	sw	a0, 0(a1)
	add	a2, a3, a2
	sw	a2, 4(a1)
.LBB3_54:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	proceed2nextMacroblock, .Lfunc_end3-proceed2nextMacroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	start_macroblock                # -- Begin function start_macroblock
	.p2align	2
	.type	start_macroblock,@function
start_macroblock:                       # @start_macroblock
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
	lui	s0, %hi(input)
	ld	a2, %lo(input)(s0)
	lui	s5, %hi(img)
	ld	a3, %lo(img)(s5)
	mv	s1, a0
	lw	s8, 212(a2)
	lui	s4, 22
	add	a0, a3, s4
	lui	a2, 8
	addiw	s6, a2, -1200
	add	a3, a3, s6
	ld	s2, 8(a3)
	li	a2, 528
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	mul	a2, s1, a2
	add	s2, s2, a2
	lui	a2, 2
	add	a2, a4, a2
	ld	a2, -1720(a2)
	ld	s7, 0(a3)
	lw	s3, 380(a0)
	sw	a1, 424(s2)
	add	a2, a2, s1
	sb	a1, 0(a2)
	mv	a0, s1
	call	set_MB_parameters
	ld	a0, %lo(img)(s5)
	lw	a0, 12(a0)
	call	FmoGetPreviousMBNr
	ld	a1, %lo(input)(s0)
	andi	a2, s8, -2
	li	a3, 2
	mv	s0, a0
	bne	a2, a3, .LBB4_4
# %bb.1:
	andi	s1, s1, 1
	beqz	s1, .LBB4_3
# %bb.2:
	addi	a0, a1, 2047
	lw	a0, 1509(a0)
	bnez	a0, .LBB4_4
.LBB4_3:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 120(a0)
	beqz	a0, .LBB4_40
.LBB4_4:
	ld	a2, %lo(img)(s5)
	addi	a1, a1, 2047
	lw	a3, 20(a2)
	lw	a0, 44(a2)
	lw	a4, 1861(a1)
	add	s6, a2, s6
	sw	a3, 4(s2)
	sw	a0, 16(s2)
	beqz	a4, .LBB4_8
# %bb.5:
	addiw	a0, s4, 312
	add	a0, a2, a0
	bltz	s0, .LBB4_11
# %bb.6:
	ld	a4, 8(s6)
	li	a5, 528
	mul	a5, s0, a5
	add	a4, a4, a5
	lw	a5, 12(a4)
	lw	a6, 4(a4)
	sw	a5, 488(s2)
	bne	a6, a3, .LBB4_12
# %bb.7:
	lw	a3, 8(a4)
	lw	a4, 1873(a1)
	lw	a5, 8(a0)
	sw	a3, 492(s2)
	bne	a4, a5, .LBB4_13
	j	.LBB4_14
.LBB4_8:
	ld	a0, 0(s6)
	bltz	s0, .LBB4_20
# %bb.9:
	ld	a2, 8(s6)
	li	a1, 528
	mul	a1, s0, a1
	add	a2, a2, a1
	lw	a1, 12(a2)
	lw	a4, 4(a2)
	sw	a1, 488(s2)
	bne	a4, a3, .LBB4_21
# %bb.10:
	lw	a2, 8(a2)
	j	.LBB4_22
.LBB4_11:
	lw	a4, 4(s7)
	sw	a4, 488(s2)
	lw	a4, 1873(a1)
	lw	a5, 8(a0)
	sw	zero, 492(s2)
	bne	a4, a5, .LBB4_13
	j	.LBB4_14
.LBB4_12:
	lw	a4, 1873(a1)
	lw	a5, 8(a0)
	sw	zero, 492(s2)
	beq	a4, a5, .LBB4_14
.LBB4_13:
	lw	a3, 24(a2)
	addi	a4, a3, -1
	li	a5, 2
	bgeu	a4, a5, .LBB4_15
.LBB4_14:
	lw	a0, 40(a2)
	sw	zero, 8(s2)
	sw	a0, 12(s2)
	j	.LBB4_23
.LBB4_15:
	bnez	a3, .LBB4_23
# %bb.16:
	lw	a3, 24(a0)
	beqz	a3, .LBB4_45
# %bb.17:
	lw	a3, 28(a0)
	beqz	a3, .LBB4_48
.LBB4_18:
	lw	a3, 40(a2)
	sw	zero, 8(s2)
.LBB4_19:
	sw	a3, 12(s2)
	j	.LBB4_62
.LBB4_20:
	lw	a1, 4(a0)
	li	a2, 0
	sw	a1, 488(s2)
	j	.LBB4_22
.LBB4_21:
	li	a2, 0
.LBB4_22:
	lw	a0, 4(a0)
	sw	a2, 492(s2)
	sw	a0, 12(s2)
	subw	a0, a0, a1
	sw	a0, 8(s2)
	lui	a1, %hi(DELTA_QP2)
	sw	a0, %lo(DELTA_QP2)(a1)
	lui	a1, %hi(DELTA_QP)
	sw	a0, %lo(DELTA_QP)(a1)
	lw	a0, 12(s2)
	lui	a1, %hi(QP2)
	sw	a0, %lo(QP2)(a1)
	lui	a1, %hi(QP)
	sw	a0, %lo(QP)(a1)
.LBB4_23:
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a0, 220(a0)
	sw	zero, 0(s2)
	beqz	a0, .LBB4_25
# %bb.24:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, -720
	add	a2, a0, a1
	lw	a0, 0(a2)
	lw	a1, 4(a2)
	lw	a2, 8(a2)
	j	.LBB4_26
.LBB4_25:
	li	a1, 0
	li	a2, 0
.LBB4_26:
	sw	a0, 508(s2)
	sw	a1, 512(s2)
	sw	a2, 516(s2)
	call	CheckAvailabilityOfNeighbors
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	li	a1, 1
	bne	a0, a1, .LBB4_28
# %bb.27:
	call	CheckAvailabilityOfNeighborsCABAC
.LBB4_28:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lw	a3, 148(a2)
	lui	a1, %hi(enc_picture)
	ld	a6, %lo(enc_picture)(a1)
	lw	a7, 144(a2)
	addi	a2, a3, -1
	slli	a3, a3, 3
	lui	a4, 2
	li	a5, -1
.LBB4_29:                               # =>This Inner Loop Header: Depth=1
	add	a6, a6, a4
	ld	a6, -1712(a6)
	ld	a6, 0(a6)
	add	a6, a6, a3
	ld	a6, 0(a6)
	add	a6, a6, a7
	sb	a5, 3(a6)
	sb	a5, 2(a6)
	sb	a5, 1(a6)
	sb	a5, 0(a6)
	ld	a6, %lo(enc_picture)(a1)
	add	a6, a6, a4
	ld	a6, -1688(a6)
	ld	a6, 0(a6)
	ld	a7, %lo(img)(a0)
	add	a6, a6, a3
	lw	a7, 144(a7)
	ld	a6, 0(a6)
	slli	a7, a7, 3
	add	a6, a6, a7
	ld	a6, 0(a6)
	sh	zero, 14(a6)
	sh	zero, 12(a6)
	sh	zero, 10(a6)
	sh	zero, 8(a6)
	sh	zero, 6(a6)
	sh	zero, 4(a6)
	sh	zero, 2(a6)
	sh	zero, 0(a6)
	ld	a6, %lo(enc_picture)(a1)
	add	a7, a6, a4
	ld	a7, -1704(a7)
	ld	t0, %lo(img)(a0)
	ld	t1, 0(a7)
	lw	a7, 144(t0)
	add	t1, t1, a3
	ld	t1, 0(t1)
	slli	t2, a7, 3
	add	t1, t1, t2
	sd	a5, 24(t1)
	sd	a5, 16(t1)
	sd	a5, 8(t1)
	sd	a5, 0(t1)
	lw	t0, 148(t0)
	addiw	t0, t0, 3
	addi	a2, a2, 1
	addi	a3, a3, 8
	blt	a2, t0, .LBB4_29
# %bb.30:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lw	a3, 148(a2)
	lui	a1, %hi(enc_picture)
	ld	a6, %lo(enc_picture)(a1)
	lw	a7, 144(a2)
	addi	a2, a3, -1
	slli	a3, a3, 3
	lui	a4, 2
	li	a5, -1
.LBB4_31:                               # =>This Inner Loop Header: Depth=1
	add	a6, a6, a4
	ld	a6, -1712(a6)
	ld	a6, 8(a6)
	add	a6, a6, a3
	ld	a6, 0(a6)
	add	a6, a6, a7
	sb	a5, 3(a6)
	sb	a5, 2(a6)
	sb	a5, 1(a6)
	sb	a5, 0(a6)
	ld	a6, %lo(enc_picture)(a1)
	add	a6, a6, a4
	ld	a6, -1688(a6)
	ld	a6, 8(a6)
	ld	a7, %lo(img)(a0)
	add	a6, a6, a3
	lw	a7, 144(a7)
	ld	a6, 0(a6)
	slli	a7, a7, 3
	add	a6, a6, a7
	ld	a6, 0(a6)
	sh	zero, 14(a6)
	sh	zero, 12(a6)
	sh	zero, 10(a6)
	sh	zero, 8(a6)
	sh	zero, 6(a6)
	sh	zero, 4(a6)
	sh	zero, 2(a6)
	sh	zero, 0(a6)
	ld	a6, %lo(enc_picture)(a1)
	add	a7, a6, a4
	ld	a7, -1704(a7)
	ld	t0, %lo(img)(a0)
	ld	t1, 8(a7)
	lw	a7, 144(t0)
	add	t1, t1, a3
	ld	t1, 0(t1)
	slli	t2, a7, 3
	add	t1, t1, t2
	sd	a5, 24(t1)
	sd	a5, 16(t1)
	sd	a5, 8(t1)
	sd	a5, 0(t1)
	lw	t0, 148(t0)
	addiw	t0, t0, 3
	addi	a2, a2, 1
	addi	a3, a3, 8
	blt	a2, t0, .LBB4_31
# %bb.32:
	addi	a0, s2, 72
	sd	zero, 368(s2)
	sw	zero, 364(s2)
	sd	zero, 408(s2)
	sw	zero, 416(s2)
	li	a2, 260
	li	a1, 0
	call	memset
	lui	a0, 8224
	addi	a0, a0, 514
	sw	a0, 332(s2)
	sw	a0, 336(s2)
	sw	a0, 340(s2)
	sw	a0, 344(s2)
	sw	a0, 348(s2)
	sw	a0, 352(s2)
	sw	a0, 356(s2)
	sw	a0, 360(s2)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 220(a0)
	beqz	a1, .LBB4_34
# %bb.33:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a2, a1, a2
	lw	a1, 12(a1)
	ld	a2, -920(a2)
	slli	a1, a1, 2
	add	a1, a2, a1
	li	a2, 1
	sw	a2, 0(a1)
.LBB4_34:
	bltz	s0, .LBB4_36
# %bb.35:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a1, a1, a2
	ld	a1, -1192(a1)
	lw	a2, 4(s2)
	li	a3, 528
	mul	a3, s0, a3
	add	a1, a1, a3
	lw	a1, 4(a1)
	bne	a2, a1, .LBB4_37
.LBB4_36:
	sw	zero, 20(s2)
.LBB4_37:
	addi	a0, a0, 2047
	sw	zero, 48(s2)
	sw	zero, 44(s2)
	sw	zero, 40(s2)
	sw	zero, 36(s2)
	sw	zero, 32(s2)
	sw	zero, 28(s2)
	lw	a0, 1917(a0)
	beqz	a0, .LBB4_39
# %bb.38:
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
.LBB4_39:
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
	tail	ResetFastFullIntegerSearch
.LBB4_40:
	lw	a2, 16(s7)
	blez	a2, .LBB4_4
# %bb.41:
	ld	a0, 24(s7)
	addi	a0, a0, 52
	li	a3, 112
	mul	a2, a2, a3
	add	a2, a0, a2
	li	a3, 1
	lui	a4, %hi(input)
	j	.LBB4_43
.LBB4_42:                               #   in Loop: Header=BB4_43 Depth=1
	addi	a0, a0, 112
	beq	a0, a2, .LBB4_4
.LBB4_43:                               # =>This Inner Loop Header: Depth=1
	ld	a5, -52(a0)
	lw	a6, 4(a5)
	lw	a7, 0(a5)
	lbu	t0, 8(a5)
	addi	t1, a1, 2047
	lw	t1, 937(t1)
	sw	a6, 16(a5)
	sw	a7, 12(a5)
	sb	t0, 20(a5)
	bne	t1, a3, .LBB4_42
# %bb.44:                               #   in Loop: Header=BB4_43 Depth=1
	ld	a1, -44(a0)
	ld	a5, -36(a0)
	sd	a1, 4(a0)
	sd	a5, 12(a0)
	ld	a1, -20(a0)
	ld	a5, -12(a0)
	ld	a6, -4(a0)
	lw	a7, -28(a0)
	sd	a1, 28(a0)
	sd	a5, 36(a0)
	sd	a6, 44(a0)
	ld	a1, %lo(input)(a4)
	sw	a7, 20(a0)
	j	.LBB4_42
.LBB4_45:
	lw	a3, 424(s2)
	beqz	a3, .LBB4_50
# %bb.46:
	lw	a3, 28(a0)
	beqz	a3, .LBB4_55
# %bb.47:
	lw	a3, 40(a2)
	sw	a3, 12(s2)
	sw	zero, 8(s2)
	j	.LBB4_62
.LBB4_48:
	lw	a3, 32(a0)
	beqz	a3, .LBB4_56
# %bb.49:
	lui	a3, %hi(DELTA_QP)
	lw	a3, %lo(DELTA_QP)(a3)
	sw	a3, 8(s2)
	lui	a3, %hi(QP)
	lw	a3, %lo(QP)(a3)
	j	.LBB4_57
.LBB4_50:
	bltz	s0, .LBB4_58
# %bb.51:
	lw	a3, 1509(a1)
	beqz	a3, .LBB4_53
# %bb.52:
	lw	a3, 28(a0)
	bnez	a3, .LBB4_18
.LBB4_53:
	ld	a3, 8(s6)
	li	a4, 528
	mul	a5, s0, a4
	add	a5, a3, a5
	lw	a6, 496(a5)
	li	a7, 1
	bne	a6, a7, .LBB4_59
# %bb.54:
	lw	a4, 40(a2)
	li	a3, 0
	sw	a4, 12(s2)
	j	.LBB4_60
.LBB4_55:
	lui	a3, %hi(DELTA_QP2)
	lw	a3, %lo(DELTA_QP2)(a3)
	sw	a3, 8(s2)
	lui	a3, %hi(QP2)
	lw	a3, %lo(QP2)(a3)
	sw	a3, 40(a2)
	j	.LBB4_19
.LBB4_56:
	lui	a3, %hi(DELTA_QP2)
	lw	a3, %lo(DELTA_QP2)(a3)
	sw	a3, 8(s2)
	lui	a3, %hi(QP2)
	lw	a3, %lo(QP2)(a3)
.LBB4_57:
	sw	a3, 12(s2)
	sw	a3, 40(a2)
	j	.LBB4_62
.LBB4_58:
	lw	a3, 40(a2)
	sw	zero, 8(s2)
	sw	a3, 12(s2)
	lui	a3, %hi(DELTA_QP2)
	sw	zero, %lo(DELTA_QP2)(a3)
	lui	a3, %hi(DELTA_QP)
	sw	zero, %lo(DELTA_QP)(a3)
	j	.LBB4_61
.LBB4_59:
	lw	a5, 488(a5)
	sw	a5, 12(s2)
	mul	a4, s0, a4
	add	a3, a3, a4
	lw	a3, 12(a3)
	subw	a3, a5, a3
	sw	a5, 40(a2)
.LBB4_60:
	sw	a3, 8(s2)
	lui	a4, %hi(DELTA_QP2)
	sw	a3, %lo(DELTA_QP2)(a4)
	lui	a4, %hi(DELTA_QP)
	sw	a3, %lo(DELTA_QP)(a4)
.LBB4_61:
	lw	a3, 12(s2)
	lui	a4, %hi(QP2)
	sw	a3, %lo(QP2)(a4)
	lui	a4, %hi(QP)
	sw	a3, %lo(QP)(a4)
.LBB4_62:
	lw	a3, 1509(a1)
	beqz	a3, .LBB4_65
# %bb.63:
	lw	a4, 28(a0)
	beqz	a4, .LBB4_65
# %bb.64:
	lw	a0, 40(a2)
	sw	a0, 488(s2)
	j	.LBB4_23
.LBB4_65:
	lw	a2, 424(s2)
	beqz	a2, .LBB4_67
# %bb.66:
	lw	a0, 504(s2)
	lui	a1, %hi(predict_error)
	sw	a0, %lo(predict_error)(a1)
	j	.LBB4_23
.LBB4_67:
	lw	a2, 16(a0)
	srliw	a4, s3, 31
	add	a4, s3, a4
	sraiw	s1, a4, 1
	blez	a2, .LBB4_71
# %bb.68:
	lw	a4, 20(a0)
	remw	a2, a2, a4
	bnez	a2, .LBB4_71
# %bb.69:
	lui	a2, %hi(active_sps)
	ld	a2, %lo(active_sps)(a2)
	lw	a2, 1148(a2)
	beqz	a2, .LBB4_85
.LBB4_70:
	call	updateRCModel
	lui	s3, %hi(img)
	ld	a0, %lo(img)(s3)
	lui	s4, 22
	add	a0, a0, s4
	lw	a0, 308(a0)
	call	updateQuantizationParameter
	ld	a1, %lo(img)(s3)
	add	a1, a1, s4
	sw	a0, 304(a1)
.LBB4_71:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a2, 12(a0)
	addi	a1, s1, 25
	beqz	a2, .LBB4_73
# %bb.72:
	lui	a2, 22
	add	a2, a0, a2
	lw	a2, 304(a2)
	j	.LBB4_74
.LBB4_73:
	lw	a2, 40(a0)
	lui	a3, 22
	add	a3, a0, a3
	sw	a2, 304(a3)
.LBB4_74:
	lw	a3, 12(s2)
	addw	a4, a3, a1
	sw	a2, 500(s2)
	blt	a4, a2, .LBB4_76
# %bb.75:
	subw	a4, a3, s1
	addiw	a4, a4, -26
	bge	a2, a4, .LBB4_77
.LBB4_76:
	sw	a4, 500(s2)
	mv	a2, a4
.LBB4_77:
	lw	a4, 8(s2)
	subw	a4, a4, a3
	addw	a2, a4, a2
	lui	a4, %hi(dq)
	li	a3, -26
	sub	a3, a3, s1
	sw	a2, %lo(dq)(a4)
	bge	a2, a3, .LBB4_79
# %bb.78:
	sw	a3, %lo(dq)(a4)
	lw	a1, 8(s2)
	lw	a2, 40(a0)
	subw	a1, a3, a1
	lui	a4, %hi(predict_error)
	sw	a1, %lo(predict_error)(a4)
	add	a2, a2, a1
	sw	a2, 40(a0)
	sw	a3, 8(s2)
	j	.LBB4_82
.LBB4_79:
	bge	a1, a2, .LBB4_81
# %bb.80:
	lui	a2, %hi(dq)
	sw	a1, %lo(dq)(a2)
	lw	a2, 8(s2)
	lw	a3, 40(a0)
	subw	a2, a1, a2
	lui	a4, %hi(predict_error)
	sw	a2, %lo(predict_error)(a4)
	add	a2, a3, a2
	sw	a2, 40(a0)
	sw	a1, 8(s2)
	j	.LBB4_82
.LBB4_81:
	lw	a1, 500(s2)
	lw	a3, 12(s2)
	sw	a2, 8(s2)
	subw	a1, a1, a3
	lui	a2, %hi(predict_error)
	sw	a1, %lo(predict_error)(a2)
	lw	a2, 500(s2)
	sw	a2, 40(a0)
.LBB4_82:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1509(a0)
	sw	a2, 12(s2)
	beqz	a0, .LBB4_84
# %bb.83:
	lw	a0, 8(s2)
	lui	a1, %hi(DELTA_QP2)
	sw	a0, %lo(DELTA_QP2)(a1)
	lui	a2, %hi(DELTA_QP)
	sw	a0, %lo(DELTA_QP)(a2)
	lw	a0, 12(s2)
	lui	a2, %hi(QP2)
	sw	a0, %lo(QP2)(a2)
	lui	a2, %hi(QP)
	sw	a0, %lo(QP)(a2)
	lw	a0, 8(s2)
	sw	a0, %lo(DELTA_QP2)(a1)
.LBB4_84:
	lui	a0, %hi(predict_error)
	lw	a0, %lo(predict_error)(a0)
	sw	a0, 504(s2)
	j	.LBB4_23
.LBB4_85:
	lw	a1, 1505(a1)
	li	a2, 1
	beq	a1, a2, .LBB4_87
# %bb.86:
	li	a2, 2
	bne	a1, a2, .LBB4_89
.LBB4_87:
	bnez	a3, .LBB4_90
# %bb.88:
	lw	a0, 12(a0)
	bnez	a0, .LBB4_71
	j	.LBB4_70
.LBB4_89:
	beqz	a3, .LBB4_71
.LBB4_90:
	lw	a1, 12(a0)
	bnez	a1, .LBB4_71
# %bb.91:
	lw	a1, 0(a0)
	li	a2, 1
	beq	a1, a2, .LBB4_70
# %bb.92:
	lw	a0, 0(a0)
	bnez	a0, .LBB4_71
	j	.LBB4_70
.Lfunc_end4:
	.size	start_macroblock, .Lfunc_end4-start_macroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	terminate_macroblock            # -- Begin function terminate_macroblock
	.p2align	2
	.type	terminate_macroblock,@function
terminate_macroblock:                   # @terminate_macroblock
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
	lui	a2, %hi(img)
	ld	s9, %lo(img)(a2)
	lui	a3, 8
	addiw	a2, a3, -1200
	add	a4, s9, a2
	ld	s4, 8(a4)
	lw	a2, 12(s9)
	li	a5, 528
	lui	s1, %hi(input)
	ld	a6, %lo(input)(s1)
	mul	a5, a2, a5
	add	s4, s4, a5
	lw	a5, 0(s4)
	addi	a7, a6, 2047
	lw	a7, 945(a7)
	mv	s2, a1
	mv	s0, a0
	li	a0, 48
	mul	a0, a5, a0
	slli	a7, a7, 3
	lui	a1, %hi(assignSE2partition)
	addi	a1, a1, %lo(assignSE2partition)
	add	a1, a1, a7
	ld	s5, 0(a4)
	ld	s6, 0(a1)
	lw	s11, 212(a6)
	add	s9, s9, a0
	addiw	s10, a3, -1184
	li	s3, 1
	beqz	a2, .LBB5_3
# %bb.1:
	mv	a0, a2
	call	FmoGetPreviousMBNr
	bltz	a0, .LBB5_3
# %bb.2:
	lui	s7, %hi(img)
	ld	a0, %lo(img)(s7)
	lui	a1, 8
	add	a1, a0, a1
	ld	s8, -1192(a1)
	lw	a0, 12(a0)
	call	FmoGetPreviousMBNr
	li	a1, 528
	ld	a2, %lo(img)(s7)
	mul	a0, a0, a1
	add	a0, s8, a0
	lw	a0, 4(a0)
	lw	a1, 20(a2)
	xor	a0, a0, a1
	seqz	s8, a0
	snez	a0, a0
	j	.LBB5_4
.LBB5_3:
	li	s8, 0
	li	a0, 1
.LBB5_4:
	ld	a1, %lo(input)(s1)
	sw	zero, 0(s2)
	lw	a3, 212(a1)
	add	s1, s9, s10
	blt	s3, a3, .LBB5_8
# %bb.5:
	beqz	a3, .LBB5_17
# %bb.6:
	li	a0, 1
	bne	a3, a0, .LBB5_16
# %bb.7:
	lw	a0, 20(s5)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	addi	a0, a0, 1
	sw	a0, 20(s5)
	sw	zero, 0(s2)
	lw	s3, 12(a1)
	mv	a0, s3
	call	FmoMB2SliceGroup
	call	FmoGetLastCodedMBOfSliceGroup
	xor	a0, s3, a0
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	seqz	a0, a0
	sw	a0, 0(s0)
	lw	a2, 20(s5)
	lw	a1, 216(a1)
	slt	a1, a2, a1
	xori	a1, a1, 1
	or	a0, a0, a1
	sw	a0, 0(s0)
	j	.LBB5_58
.LBB5_8:
	li	a1, 2
	beq	a3, a1, .LBB5_20
# %bb.9:
	li	a1, 3
	bne	a3, a1, .LBB5_16
# %bb.10:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 12(a1)
	slti	a1, a1, 1
	or	a0, a0, a1
	bnez	a0, .LBB5_13
# %bb.11:
	ld	a1, 120(s5)
	jalr	a1
	beqz	a0, .LBB5_13
# %bb.12:
	li	a0, 1
	sw	a0, 0(s2)
	sw	a0, 0(s0)
.LBB5_13:
	lw	a1, 0(s2)
	bnez	a1, .LBB5_59
# %bb.14:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	s3, 12(a0)
	mv	a0, s3
	call	FmoMB2SliceGroup
	call	FmoGetLastCodedMBOfSliceGroup
	bne	s3, a0, .LBB5_58
# %bb.15:
	li	a0, 1
	sw	a0, 0(s0)
	j	.LBB5_58
.LBB5_16:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a2, %hi(.L.str.1)
	addi	a2, a2, %lo(.L.str.1)
	li	a1, 300
	mv	a0, s3
	call	snprintf
	li	a1, 600
	mv	a0, s3
	call	error
	j	.LBB5_58
.LBB5_17:
	lw	a0, 20(s5)
	addi	a0, a0, 1
	sw	a0, 20(s5)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sw	zero, 0(s2)
	lw	a1, 20(s5)
	lui	a2, 22
	add	a2, a0, a2
	lw	a2, 192(a2)
	bne	a1, a2, .LBB5_19
# %bb.18:
	li	a1, 1
	sw	a1, 0(s0)
.LBB5_19:
	lw	s3, 12(a0)
	mv	a0, s3
	call	FmoMB2SliceGroup
	call	FmoGetLastCodedMBOfSliceGroup
	lw	a1, 0(s0)
	xor	a0, s3, a0
	seqz	a0, a0
	or	a0, a1, a0
	sw	a0, 0(s0)
	j	.LBB5_58
.LBB5_20:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 120(a0)
	beqz	a0, .LBB5_22
# %bb.21:
	sw	a0, 4(s1)
	sw	zero, 8(s1)
	li	a0, 2
	sw	a0, 0(s1)
	lw	a0, 8(s6)
	ld	s3, 24(s5)
	li	a1, 112
	mul	a0, a0, a1
	add	s3, s3, a0
	ld	a2, 104(s3)
	lui	a0, %hi(ue_linfo)
	addi	a0, a0, %lo(ue_linfo)
	sd	a0, 32(s1)
	mv	a0, s1
	mv	a1, s3
	jalr	a2
	ld	a0, 0(s3)
	ld	a1, 0(a0)
	lw	s9, 12(s1)
	sd	a1, 24(a0)
	lbu	a1, 8(a0)
	lw	a2, 16(a0)
	lw	a3, 12(a0)
	lbu	a4, 20(a0)
	sb	a1, 21(a0)
	sw	a2, 4(a0)
	sw	a3, 0(a0)
	sb	a4, 8(a0)
	lui	a0, %hi(terminate_macroblock.skip)
	li	a1, 1
	sb	a1, %lo(terminate_macroblock.skip)(a0)
	bnez	s8, .LBB5_23
	j	.LBB5_37
.LBB5_22:
	li	s9, 0
	beqz	s8, .LBB5_37
.LBB5_23:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(input)
	ld	a3, %lo(input)(a1)
	lui	a1, 8
	add	a2, a0, a1
	addi	a1, a3, 2047
	lw	a1, 937(a1)
	ld	s3, -1200(a2)
	li	a2, 1
	beq	a1, a2, .LBB5_29
# %bb.24:
	bnez	a1, .LBB5_35
# %bb.25:
	lw	a1, 16(s3)
	blez	a1, .LBB5_35
# %bb.26:
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	ld	a2, 24(s3)
	lw	a3, 216(a3)
.LBB5_27:                               # =>This Inner Loop Header: Depth=1
	ld	a4, 0(a2)
	lw	a5, 4(a4)
	lw	a4, 0(a4)
	slti	a6, a5, 8
	add	a4, a4, a6
	slt	a5, a5, s9
	addw	a4, a4, a5
	blt	a3, a4, .LBB5_41
# %bb.28:                               #   in Loop: Header=BB5_27 Depth=1
	addi	a1, a1, -1
	addi	a2, a2, 112
	bnez	a1, .LBB5_27
	j	.LBB5_34
.LBB5_29:
	lw	a1, 16(s3)
	blez	a1, .LBB5_35
# %bb.30:                               # %.preheader6
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	li	s10, 0
	li	s11, 8
	lui	s7, %hi(input)
.LBB5_31:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s3)
	add	a0, a0, s11
	call	arienco_bits_written
	ld	a1, %lo(input)(s7)
	lw	a1, 216(a1)
	slliw	a1, a1, 3
	blt	a1, a0, .LBB5_41
# %bb.32:                               #   in Loop: Header=BB5_31 Depth=1
	lw	a0, 16(s3)
	addi	s10, s10, 1
	addi	s11, s11, 112
	blt	s10, a0, .LBB5_31
# %bb.33:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB5_34:
	ld	s11, 0(sp)                      # 8-byte Folded Reload
.LBB5_35:
	lw	a0, 120(a0)
	bnez	a0, .LBB5_37
# %bb.36:
	lui	a0, %hi(terminate_macroblock.skip)
	sb	zero, %lo(terminate_macroblock.skip)(a0)
.LBB5_37:
	lw	a0, 0(s2)
	bnez	a0, .LBB5_42
.LBB5_38:
	lui	s7, %hi(img)
	ld	a0, %lo(img)(s7)
	lw	s3, 12(a0)
	mv	a0, s3
	call	FmoMB2SliceGroup
	call	FmoGetLastCodedMBOfSliceGroup
	bne	s3, a0, .LBB5_42
# %bb.39:
	ld	a0, %lo(img)(s7)
	li	a1, 1
	sw	a1, 0(s0)
	lw	a0, 120(a0)
	bnez	a0, .LBB5_42
# %bb.40:
	lui	a0, %hi(terminate_macroblock.skip)
	sb	zero, %lo(terminate_macroblock.skip)(a0)
	j	.LBB5_42
.LBB5_41:
	li	a0, 1
	sw	a0, 0(s2)
	sw	a0, 0(s0)
	ld	s11, 0(sp)                      # 8-byte Folded Reload
	lw	a0, 0(s2)
	beqz	a0, .LBB5_38
.LBB5_42:
	bnez	s8, .LBB5_56
# %bb.43:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(input)
	ld	a3, %lo(input)(a1)
	lui	a1, 8
	add	a2, a0, a1
	addi	a1, a3, 2047
	lw	a1, 937(a1)
	ld	s3, -1200(a2)
	li	a2, 1
	beq	a1, a2, .LBB5_49
# %bb.44:
	bnez	a1, .LBB5_56
# %bb.45:
	lw	a1, 16(s3)
	blez	a1, .LBB5_56
# %bb.46:
	ld	a2, 24(s3)
	lw	a3, 216(a3)
.LBB5_47:                               # =>This Inner Loop Header: Depth=1
	ld	a4, 0(a2)
	lw	a5, 4(a4)
	lw	a4, 0(a4)
	slti	a6, a5, 8
	add	a4, a4, a6
	slt	a5, a5, s9
	addw	a4, a4, a5
	blt	a3, a4, .LBB5_54
# %bb.48:                               #   in Loop: Header=BB5_47 Depth=1
	addi	a1, a1, -1
	addi	a2, a2, 112
	bnez	a1, .LBB5_47
	j	.LBB5_56
.LBB5_49:
	lw	a0, 16(s3)
	blez	a0, .LBB5_56
# %bb.50:                               # %.preheader
	li	s8, 0
	li	s9, 8
	lui	s7, %hi(input)
.LBB5_51:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s3)
	add	a0, a0, s9
	call	arienco_bits_written
	ld	a1, %lo(input)(s7)
	lw	a1, 216(a1)
	slliw	a1, a1, 3
	blt	a1, a0, .LBB5_53
# %bb.52:                               #   in Loop: Header=BB5_51 Depth=1
	lw	a0, 16(s3)
	addi	s8, s8, 1
	addi	s9, s9, 112
	blt	s8, a0, .LBB5_51
	j	.LBB5_56
.LBB5_53:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB5_54:
	li	a1, 1
	sw	a1, 0(s0)
	lw	a0, 120(a0)
	bnez	a0, .LBB5_56
# %bb.55:
	lui	a0, %hi(terminate_macroblock.skip)
	sb	zero, %lo(terminate_macroblock.skip)(a0)
.LBB5_56:
	lw	a1, 0(s2)
	bnez	a1, .LBB5_59
# %bb.57:
	lw	a0, 20(s5)
	addi	a0, a0, 1
	sw	a0, 20(s5)
.LBB5_58:
	lw	a1, 0(s2)
.LBB5_59:
	li	a0, 1
	bne	a1, a0, .LBB5_65
# %bb.60:
	lw	a3, 16(s5)
	blez	a3, .LBB5_65
# %bb.61:
	ld	a2, 24(s5)
	lui	a1, %hi(input)
	ld	a5, %lo(input)(a1)
	addi	a2, a2, 52
	li	a4, 112
	mul	a3, a3, a4
	add	a3, a2, a3
	li	a4, 1
	j	.LBB5_63
.LBB5_62:                               #   in Loop: Header=BB5_63 Depth=1
	addi	a2, a2, 112
	beq	a2, a3, .LBB5_65
.LBB5_63:                               # =>This Inner Loop Header: Depth=1
	ld	a6, -52(a2)
	lw	a7, 16(a6)
	lw	t0, 12(a6)
	lbu	t1, 20(a6)
	addi	t2, a5, 2047
	lw	t2, 937(t2)
	sw	a7, 4(a6)
	sw	t0, 0(a6)
	sb	t1, 8(a6)
	bne	t2, a4, .LBB5_62
# %bb.64:                               #   in Loop: Header=BB5_63 Depth=1
	ld	a5, 4(a2)
	ld	a6, 12(a2)
	sd	a5, -44(a2)
	sd	a6, -36(a2)
	ld	a5, 28(a2)
	ld	a6, 36(a2)
	ld	a7, 44(a2)
	lw	t0, 20(a2)
	sd	a5, -20(a2)
	sd	a6, -12(a2)
	sd	a7, -4(a2)
	ld	a5, %lo(input)(a1)
	sw	t0, -28(a2)
	j	.LBB5_62
.LBB5_65:
	lw	a1, 0(s0)
	bne	a1, a0, .LBB5_73
# %bb.66:
	lui	a0, %hi(terminate_macroblock.skip)
	lbu	a0, %lo(terminate_macroblock.skip)(a0)
	andi	a0, a0, 1
	beqz	a0, .LBB5_73
# %bb.67:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 120(a0)
	beqz	a1, .LBB5_71
# %bb.68:
	lw	a2, 0(s2)
	li	a3, 1
	bne	a2, a3, .LBB5_71
# %bb.69:
	addiw	a1, a1, -1
	sw	a1, 120(a0)
	beqz	a1, .LBB5_72
# %bb.70:
	sw	a1, 4(s1)
	sw	zero, 8(s1)
	li	a0, 2
	sw	a0, 0(s1)
	lw	a0, 8(s6)
	ld	a1, 24(s5)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	lui	a0, %hi(ue_linfo)
	addi	a0, a0, %lo(ue_linfo)
	sd	a0, 32(s1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 28(s4)
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	add	a0, a1, a0
	sw	a0, 28(s4)
	sw	zero, 120(a2)
	j	.LBB5_72
.LBB5_71:
	lw	a1, 8(s6)
	ld	a2, 24(s5)
	li	a3, 112
	mul	a1, a1, a3
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, 24(a1)
	lbu	a3, 21(a1)
	sd	a2, 0(a1)
	sb	a3, 8(a1)
	sw	zero, 120(a0)
	lui	a0, %hi(terminate_macroblock.skip)
	sb	zero, %lo(terminate_macroblock.skip)(a0)
.LBB5_72:
	lw	a1, 0(s0)
.LBB5_73:
	li	a0, 1
	bne	a1, a0, .LBB5_77
# %bb.74:
	andi	a0, s11, -2
	li	a1, 2
	beq	a0, a1, .LBB5_77
# %bb.75:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 120(a0)
	beqz	a0, .LBB5_77
# %bb.76:
	sw	a0, 4(s1)
	sw	zero, 8(s1)
	li	a0, 2
	sw	a0, 0(s1)
	lw	a0, 8(s6)
	ld	a1, 24(s5)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	lui	a0, %hi(ue_linfo)
	addi	a0, a0, %lo(ue_linfo)
	sd	a0, 32(s1)
	mv	a0, s1
	jalr	a2
	lw	a0, 0(s4)
	addi	a0, a0, 1
	lw	a1, 12(s1)
	lw	a2, 28(s4)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	sw	a0, 0(s4)
	add	a1, a2, a1
	sw	a1, 28(s4)
	sw	zero, 120(a3)
.LBB5_77:
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
.Lfunc_end5:
	.size	terminate_macroblock, .Lfunc_end5-terminate_macroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	slice_too_big                   # -- Begin function slice_too_big
	.p2align	2
	.type	slice_too_big,@function
slice_too_big:                          # @slice_too_big
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, %hi(input)
	ld	a3, %lo(input)(a2)
	lui	a2, 8
	add	a2, a1, a2
	addi	a1, a3, 2047
	lw	a1, 937(a1)
	ld	s0, -1200(a2)
	li	a2, 1
	beq	a1, a2, .LBB6_6
# %bb.1:
	bnez	a1, .LBB6_10
# %bb.2:
	lw	a1, 16(s0)
	blez	a1, .LBB6_10
# %bb.3:
	ld	a2, 24(s0)
	lw	a3, 216(a3)
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	ld	a4, 0(a2)
	lw	a5, 4(a4)
	lw	a4, 0(a4)
	slti	a6, a5, 8
	add	a4, a4, a6
	slt	a5, a5, a0
	addw	a4, a4, a5
	blt	a3, a4, .LBB6_11
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	addi	a1, a1, -1
	addi	a2, a2, 112
	bnez	a1, .LBB6_4
	j	.LBB6_10
.LBB6_6:
	lw	a0, 16(s0)
	blez	a0, .LBB6_10
# %bb.7:                                # %.preheader
	li	s1, 0
	li	s2, 8
	lui	s3, %hi(input)
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s0)
	add	a0, a0, s2
	call	arienco_bits_written
	ld	a1, %lo(input)(s3)
	lw	a1, 216(a1)
	slliw	a1, a1, 3
	blt	a1, a0, .LBB6_11
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	lw	a0, 16(s0)
	addi	s1, s1, 1
	addi	s2, s2, 112
	blt	s1, a0, .LBB6_8
.LBB6_10:
	li	a0, 0
	j	.LBB6_12
.LBB6_11:
	li	a0, 1
.LBB6_12:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end6:
	.size	slice_too_big, .Lfunc_end6-slice_too_big
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	OneComponentLumaPrediction4x4   # -- Begin function OneComponentLumaPrediction4x4
	.p2align	2
	.type	OneComponentLumaPrediction4x4,@function
OneComponentLumaPrediction4x4:          # @OneComponentLumaPrediction4x4
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
	mv	a6, a1
	mv	s0, a0
	slli	a4, a4, 3
	add	a4, a5, a4
	ld	a0, 0(a4)
	lui	a1, 2
	addiw	a1, a1, -1800
	lh	a4, 2(a3)
	add	a0, a0, a1
	ld	s1, 56(a0)
	slli	a2, a2, 2
	addw	s5, a2, a4
	lh	a2, 0(a3)
	addiw	a1, s5, 16
	slli	a6, a6, 2
	lw	s4, 0(a0)
	addw	a2, a6, a2
	lw	s3, 4(a0)
	addiw	s2, a2, 16
	slli	s4, s4, 2
	li	a0, -15
	slli	s3, s3, 2
	blt	a2, a0, .LBB7_5
# %bb.1:
	addiw	a0, s4, 11
	bge	s2, a0, .LBB7_5
# %bb.2:
	li	a0, -15
	blt	s5, a0, .LBB7_5
# %bb.3:
	addiw	a0, s3, 11
	bge	a1, a0, .LBB7_5
# %bb.4:
	lui	a5, %hi(FastLine4X)
	addi	a5, a5, %lo(FastLine4X)
	j	.LBB7_6
.LBB7_5:
	lui	a5, %hi(UMVLine4X)
	addi	a5, a5, %lo(UMVLine4X)
.LBB7_6:
	addiw	s3, s3, 28
	addiw	s4, s4, 28
	lui	s6, %hi(get_line)
	sd	a5, %lo(get_line)(s6)
	mv	a0, s1
	mv	a2, s2
	mv	a3, s3
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(a0)
	lhu	a2, 8(a0)
	sw	a1, 0(s0)
	lhu	a1, 16(a0)
	lhu	a0, 24(a0)
	sw	a2, 4(s0)
	ld	a5, %lo(get_line)(s6)
	sw	a1, 8(s0)
	sw	a0, 12(s0)
	addiw	a1, s5, 20
	mv	a0, s1
	mv	a2, s2
	mv	a3, s3
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(a0)
	lhu	a2, 8(a0)
	sw	a1, 16(s0)
	lhu	a1, 16(a0)
	lhu	a0, 24(a0)
	sw	a2, 20(s0)
	ld	a5, %lo(get_line)(s6)
	sw	a1, 24(s0)
	sw	a0, 28(s0)
	addiw	a1, s5, 24
	mv	a0, s1
	mv	a2, s2
	mv	a3, s3
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(a0)
	lhu	a2, 8(a0)
	sw	a1, 32(s0)
	lhu	a1, 16(a0)
	lhu	a0, 24(a0)
	sw	a2, 36(s0)
	ld	a5, %lo(get_line)(s6)
	sw	a1, 40(s0)
	sw	a0, 44(s0)
	addiw	a1, s5, 28
	mv	a0, s1
	mv	a2, s2
	mv	a3, s3
	mv	a4, s4
	jalr	a5
	lhu	a1, 0(a0)
	lhu	a2, 8(a0)
	lhu	a3, 16(a0)
	lhu	a0, 24(a0)
	sw	a1, 48(s0)
	sw	a2, 52(s0)
	sw	a3, 56(s0)
	sw	a0, 60(s0)
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
.Lfunc_end7:
	.size	OneComponentLumaPrediction4x4, .Lfunc_end7-OneComponentLumaPrediction4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	copyblock4x4                    # -- Begin function copyblock4x4
	.p2align	2
	.type	copyblock4x4,@function
copyblock4x4:                           # @copyblock4x4
# %bb.0:
	lw	a2, 0(a1)
	sw	a2, 0(a0)
	lw	a2, 16(a1)
	sw	a2, 4(a0)
	lw	a2, 32(a1)
	sw	a2, 8(a0)
	lw	a2, 48(a1)
	sw	a2, 12(a0)
	lw	a2, 4(a1)
	sw	a2, 16(a0)
	lw	a2, 20(a1)
	sw	a2, 20(a0)
	lw	a2, 36(a1)
	sw	a2, 24(a0)
	lw	a2, 52(a1)
	sw	a2, 28(a0)
	lw	a2, 8(a1)
	sw	a2, 32(a0)
	lw	a2, 24(a1)
	sw	a2, 36(a0)
	lw	a2, 40(a1)
	sw	a2, 40(a0)
	lw	a2, 56(a1)
	sw	a2, 44(a0)
	lw	a2, 12(a1)
	sw	a2, 48(a0)
	lw	a2, 28(a1)
	sw	a2, 52(a0)
	lw	a2, 44(a1)
	sw	a2, 56(a0)
	lw	a1, 60(a1)
	sw	a1, 60(a0)
	ret
.Lfunc_end8:
	.size	copyblock4x4, .Lfunc_end8-copyblock4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	LumaPrediction4x4               # -- Begin function LumaPrediction4x4
	.p2align	2
	.type	LumaPrediction4x4,@function
LumaPrediction4x4:                      # @LumaPrediction4x4
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
	lui	a7, %hi(img)
	ld	a7, %lo(img)(a7)
	lui	t1, 8
	lui	t0, %hi(active_pps)
	ld	t0, %lo(active_pps)(t0)
	add	t1, a7, t1
	ld	s9, -1192(t1)
	lw	t1, 12(a7)
	lw	t2, 192(t0)
	mv	s2, a6
	mv	s4, a5
	mv	s5, a4
	mv	s3, a2
	mv	s0, a1
	mv	s1, a0
	li	a0, 528
	mul	a0, t1, a0
	add	s9, s9, a0
	beqz	t2, .LBB9_3
# %bb.1:
	lw	a0, 24(a7)
	li	s8, 1
	beqz	a0, .LBB9_6
# %bb.2:
	li	a1, 3
	beq	a0, a1, .LBB9_6
.LBB9_3:
	lw	a0, 196(t0)
	beqz	a0, .LBB9_5
# %bb.4:
	lw	a0, 24(a7)
	addi	a0, a0, -1
	seqz	s8, a0
	j	.LBB9_6
.LBB9_5:
	li	s8, 0
.LBB9_6:
	lhu	a1, 476(s9)
	snez	a0, a1
	or	a2, s2, s4
	xori	a4, a3, 1
	or	a2, a2, a4
	xori	a4, s3, 2
	xori	a5, s5, 1
	or	a4, a5, a4
	or	a2, a2, a4
	seqz	a2, a2
	and	a0, a2, a0
	li	a2, 1
	lui	a6, 22
	beq	a1, a2, .LBB9_8
# %bb.7:
	addiw	a1, a6, -760
	j	.LBB9_9
.LBB9_8:
	addiw	a1, a6, -768
.LBB9_9:
	lw	a4, 168(a7)
	lw	a5, 172(a7)
	srai	a2, s1, 2
	srai	t0, s0, 2
	bnez	a0, .LBB9_11
# %bb.10:
	addiw	a1, a6, -776
.LBB9_11:
	add	a1, a7, a1
	ld	a0, 0(a1)
	slli	t0, t0, 3
	add	a0, a0, t0
	ld	a0, 0(a0)
	addw	s6, a4, s1
	addw	s7, a5, s0
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	s11, 0(a0)
	ori	a0, s3, 2
	li	a1, 2
	lui	s10, %hi(listX)
	addi	s10, s10, %lo(listX)
	bne	a0, a1, .LBB9_13
# %bb.12:
	ld	a0, 0(s11)
	slli	a1, s4, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 428(s9)
	slli	a3, a3, 3
	add	a0, a0, a3
	ld	a3, 0(a0)
	slli	a1, a1, 3
	add	a1, s10, a1
	ld	a5, 0(a1)
	lui	a0, %hi(LumaPrediction4x4.fw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4.fw_pred)
	mv	a1, s6
	mv	a2, s7
	mv	a4, s4
	call	OneComponentLumaPrediction4x4
.LBB9_13:
	addiw	a0, s3, -1
	li	a1, 1
	bltu	a1, a0, .LBB9_15
# %bb.14:
	ld	a0, 8(s11)
	slli	a1, s2, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 428(s9)
	slli	s5, s5, 3
	add	a0, a0, s5
	ld	a3, 0(a0)
	slli	a1, a1, 3
	add	a1, a1, s10
	ld	a5, 8(a1)
	lui	a0, %hi(LumaPrediction4x4.bw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4.bw_pred)
	mv	a1, s6
	mv	a2, s7
	mv	a4, s2
	call	OneComponentLumaPrediction4x4
.LBB9_15:
	addiw	a0, s1, 4
	addiw	a1, s0, 4
	beqz	s8, .LBB9_31
# %bb.16:
	lui	a2, 3
	li	a3, 2
	addiw	a2, a2, 316
	bne	s3, a3, .LBB9_34
# %bb.17:
	lui	a3, %hi(wbp_weight)
	ld	a3, %lo(wbp_weight)(a3)
	ld	a4, 0(a3)
	slli	s4, s4, 3
	ld	a3, 8(a3)
	add	a4, a4, s4
	ld	a4, 0(a4)
	slli	s2, s2, 3
	add	a3, a3, s4
	ld	a5, 0(a3)
	lui	a3, %hi(wp_offset)
	ld	a6, %lo(wp_offset)(a3)
	add	a4, a4, s2
	ld	a3, 0(a4)
	add	a5, a5, s2
	ld	a7, 0(a6)
	ld	a4, 0(a5)
	ld	a5, 8(a6)
	lui	a6, %hi(wp_luma_round)
	add	a7, a7, s4
	ld	a7, 0(a7)
	add	a5, a5, s2
	ld	t0, 0(a5)
	lw	a5, %lo(wp_luma_round)(a6)
	lui	a6, %hi(luma_log_weight_denom)
	lw	a7, 0(a7)
	lw	t0, 0(t0)
	lw	a6, %lo(luma_log_weight_denom)(a6)
	lui	t1, %hi(img)
	ld	t1, %lo(img)(t1)
	add	a7, a7, t0
	addi	a7, a7, 1
	lui	t0, 22
	add	t0, t1, t0
	slli	t3, s0, 5
	slli	t2, s1, 1
	add	t3, t3, t2
	addi	s0, s0, 1
	add	t3, t3, a2
	blt	a1, s0, .LBB9_19
# %bb.18:
	mv	s0, a1
.LBB9_19:
	lw	a1, 0(a3)
	lw	a3, 0(a4)
	slli	a4, a5, 1
	addi	a5, a6, 1
	sraiw	a6, a7, 1
	lw	a7, 420(t0)
	addi	s1, s1, 1
	add	t0, t1, t3
	slli	s0, s0, 5
	add	t2, s0, t2
	add	a2, t2, a2
	add	a2, t1, a2
	lui	t1, %hi(LumaPrediction4x4.fw_pred)
	addi	t1, t1, %lo(LumaPrediction4x4.fw_pred)
	lui	t2, %hi(LumaPrediction4x4.bw_pred)
	addi	t2, t2, %lo(LumaPrediction4x4.bw_pred)
	j	.LBB9_21
.LBB9_20:                               #   in Loop: Header=BB9_21 Depth=1
	addi	t1, t1, 16
	addi	t2, t2, 16
	sh	t3, 2(t0)
	addi	t0, t0, 32
	beq	t0, a2, .LBB9_84
.LBB9_21:                               # =>This Inner Loop Header: Depth=1
	lw	t3, 0(t1)
	lw	t4, 0(t2)
	mul	t3, t3, a1
	mul	t4, t4, a3
	add	t3, t4, t3
	add	t3, t3, a4
	sraw	t3, t3, a5
	addw	t3, a6, t3
	mv	t4, a7
	blt	a7, t3, .LBB9_23
# %bb.22:                               #   in Loop: Header=BB9_21 Depth=1
	sgtz	t4, t3
	neg	t4, t4
	and	t4, t4, t3
.LBB9_23:                               #   in Loop: Header=BB9_21 Depth=1
	sh	t4, -4(t0)
	bge	s1, a0, .LBB9_30
# %bb.24:                               #   in Loop: Header=BB9_21 Depth=1
	lw	t3, 4(t1)
	lw	t4, 4(t2)
	mul	t3, t3, a1
	mul	t4, t4, a3
	add	t3, t4, t3
	add	t3, t3, a4
	sraw	t3, t3, a5
	addw	t4, a6, t3
	mv	t3, a7
	blt	a7, t4, .LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_21 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
.LBB9_26:                               #   in Loop: Header=BB9_21 Depth=1
	lw	t4, 8(t1)
	lw	t5, 8(t2)
	mul	t4, t4, a1
	mul	t5, t5, a3
	add	t4, t5, t4
	add	t4, t4, a4
	sraw	t4, t4, a5
	addw	t4, a6, t4
	sh	t3, -2(t0)
	mv	t3, a7
	blt	a7, t4, .LBB9_28
# %bb.27:                               #   in Loop: Header=BB9_21 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
.LBB9_28:                               #   in Loop: Header=BB9_21 Depth=1
	lw	t4, 12(t1)
	lw	t5, 12(t2)
	mul	t4, t4, a1
	mul	t5, t5, a3
	add	t4, t5, t4
	add	t4, t4, a4
	sraw	t4, t4, a5
	addw	t4, a6, t4
	sh	t3, 0(t0)
	mv	t3, a7
	blt	a7, t4, .LBB9_20
# %bb.29:                               #   in Loop: Header=BB9_21 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
	j	.LBB9_20
.LBB9_30:                               #   in Loop: Header=BB9_21 Depth=1
	addi	t1, t1, 4
	addi	t2, t2, 4
	addi	t0, t0, 32
	bne	t0, a2, .LBB9_21
	j	.LBB9_84
.LBB9_31:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 3
	addiw	a3, a3, 312
	li	a4, 2
	add	a2, a2, a3
	bne	s3, a4, .LBB9_49
# %bb.32:
	lui	a7, %hi(LumaPrediction4x4.fw_pred)
	lw	a3, %lo(LumaPrediction4x4.fw_pred)(a7)
	lui	t0, %hi(LumaPrediction4x4.bw_pred)
	lw	a4, %lo(LumaPrediction4x4.bw_pred)(t0)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	slli	a6, s0, 5
	add	a6, a2, a6
	slli	a4, s1, 1
	add	a5, a6, a4
	sh	a3, 0(a5)
	addi	s1, s1, 1
	slli	a3, s1, 1
	bge	s1, a0, .LBB9_52
# %bb.33:
	lui	a7, %hi(LumaPrediction4x4.fw_pred)
	addi	a7, a7, %lo(LumaPrediction4x4.fw_pred)
	lw	t0, 4(a7)
	lui	t1, %hi(LumaPrediction4x4.bw_pred)
	addi	t1, t1, %lo(LumaPrediction4x4.bw_pred)
	lw	t2, 4(t1)
	add	t0, t0, t2
	addi	t0, t0, 1
	lw	t2, 8(a7)
	lw	t3, 8(t1)
	srli	t0, t0, 1
	add	a6, a6, a3
	sh	t0, 0(a6)
	add	t2, t2, t3
	lw	a6, 12(a7)
	lw	t0, 12(t1)
	addi	t2, t2, 1
	srli	t2, t2, 1
	sh	t2, 4(a5)
	add	a6, a6, t0
	addi	a6, a6, 1
	srli	a6, a6, 1
	sh	a6, 6(a5)
	addi	a5, t1, 16
	addi	a6, a7, 16
	addi	a7, s0, 1
	blt	a7, a1, .LBB9_53
	j	.LBB9_84
.LBB9_34:
	lui	a3, %hi(wp_weight)
	ld	a3, %lo(wp_weight)(a3)
	beqz	s3, .LBB9_55
# %bb.35:
	ld	a3, 8(a3)
	slli	s2, s2, 3
	lui	a4, %hi(wp_offset)
	ld	a5, %lo(wp_offset)(a4)
	add	a3, a3, s2
	ld	a3, 0(a3)
	lui	a4, %hi(wp_luma_round)
	ld	a6, 8(a5)
	lui	a5, %hi(luma_log_weight_denom)
	lui	a7, %hi(img)
	ld	t0, %lo(img)(a7)
	add	a6, a6, s2
	ld	a6, 0(a6)
	lui	a7, 22
	add	a7, t0, a7
	slli	t2, s0, 5
	slli	t1, s1, 1
	add	t2, t2, t1
	addi	s0, s0, 1
	add	t2, t2, a2
	blt	a1, s0, .LBB9_37
# %bb.36:
	mv	s0, a1
.LBB9_37:
	lw	a1, 0(a3)
	lw	a3, %lo(wp_luma_round)(a4)
	lw	a4, %lo(luma_log_weight_denom)(a5)
	lw	a5, 0(a6)
	lw	a6, 420(a7)
	addi	s1, s1, 1
	add	a7, t0, t2
	slli	s0, s0, 5
	add	t1, s0, t1
	add	a2, t1, a2
	add	a2, t0, a2
	lui	t0, %hi(LumaPrediction4x4.bw_pred)
	addi	t0, t0, %lo(LumaPrediction4x4.bw_pred)
	j	.LBB9_39
.LBB9_38:                               #   in Loop: Header=BB9_39 Depth=1
	addi	t0, t0, 16
	sh	t1, 2(a7)
	addi	a7, a7, 32
	beq	a7, a2, .LBB9_84
.LBB9_39:                               # =>This Inner Loop Header: Depth=1
	lw	t1, 0(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t1, a5, t1
	mv	t2, a6
	blt	a6, t1, .LBB9_41
# %bb.40:                               #   in Loop: Header=BB9_39 Depth=1
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
.LBB9_41:                               #   in Loop: Header=BB9_39 Depth=1
	sh	t2, -4(a7)
	bge	s1, a0, .LBB9_48
# %bb.42:                               #   in Loop: Header=BB9_39 Depth=1
	lw	t1, 4(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t2, a5, t1
	mv	t1, a6
	blt	a6, t2, .LBB9_44
# %bb.43:                               #   in Loop: Header=BB9_39 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB9_44:                               #   in Loop: Header=BB9_39 Depth=1
	lw	t2, 8(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, -2(a7)
	mv	t1, a6
	blt	a6, t2, .LBB9_46
# %bb.45:                               #   in Loop: Header=BB9_39 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB9_46:                               #   in Loop: Header=BB9_39 Depth=1
	lw	t2, 12(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, 0(a7)
	mv	t1, a6
	blt	a6, t2, .LBB9_38
# %bb.47:                               #   in Loop: Header=BB9_39 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
	j	.LBB9_38
.LBB9_48:                               #   in Loop: Header=BB9_39 Depth=1
	addi	t0, t0, 4
	addi	a7, a7, 32
	bne	a7, a2, .LBB9_39
	j	.LBB9_84
.LBB9_49:
	slli	a4, s0, 5
	add	a4, a2, a4
	slli	a3, s1, 1
	add	a5, a4, a3
	addi	a6, s1, 1
	beqz	s3, .LBB9_69
# %bb.50:
	lui	a7, %hi(LumaPrediction4x4.bw_pred)
	lh	a7, %lo(LumaPrediction4x4.bw_pred)(a7)
	sh	a7, 0(a5)
	bge	a6, a0, .LBB9_73
# %bb.51:
	lui	a0, %hi(LumaPrediction4x4.bw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4.bw_pred)
	j	.LBB9_71
.LBB9_52:
	addi	a6, a7, %lo(LumaPrediction4x4.fw_pred)
	addi	a5, t0, %lo(LumaPrediction4x4.bw_pred)
	addi	a5, a5, 4
	addi	a6, a6, 4
	addi	a7, s0, 1
	bge	a7, a1, .LBB9_84
.LBB9_53:
	lw	a1, 0(a6)
	lw	t0, 0(a5)
	add	a1, a1, t0
	addi	a1, a1, 1
	srli	t0, a1, 1
	slli	a1, a7, 5
	add	a1, a2, a1
	add	a7, a1, a4
	sh	t0, 0(a7)
	bge	s1, a0, .LBB9_75
# %bb.54:
	lw	t0, 4(a6)
	lw	t1, 4(a5)
	add	t0, t0, t1
	addi	t0, t0, 1
	lw	t1, 8(a6)
	lw	t2, 8(a5)
	srli	t0, t0, 1
	add	a1, a1, a3
	sh	t0, 0(a1)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	a1, t1, 1
	lw	t0, 12(a6)
	lw	t1, 12(a5)
	sh	a1, 4(a7)
	addi	a1, a6, 16
	addi	a5, a5, 16
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	a6, t0, 1
	sh	a6, 6(a7)
	j	.LBB9_76
.LBB9_55:
	ld	a3, 0(a3)
	slli	s4, s4, 3
	lui	a4, %hi(wp_offset)
	ld	a5, %lo(wp_offset)(a4)
	add	a3, a3, s4
	ld	a3, 0(a3)
	lui	a4, %hi(wp_luma_round)
	ld	a6, 0(a5)
	lui	a5, %hi(luma_log_weight_denom)
	lui	a7, %hi(img)
	ld	t0, %lo(img)(a7)
	add	a6, a6, s4
	ld	a6, 0(a6)
	lui	a7, 22
	add	a7, t0, a7
	slli	t2, s0, 5
	slli	t1, s1, 1
	add	t2, t2, t1
	addi	s0, s0, 1
	add	t2, t2, a2
	blt	a1, s0, .LBB9_57
# %bb.56:
	mv	s0, a1
.LBB9_57:
	lw	a1, 0(a3)
	lw	a3, %lo(wp_luma_round)(a4)
	lw	a4, %lo(luma_log_weight_denom)(a5)
	lw	a5, 0(a6)
	lw	a6, 420(a7)
	addi	s1, s1, 1
	add	a7, t0, t2
	slli	s0, s0, 5
	add	t1, s0, t1
	add	a2, t1, a2
	add	a2, t0, a2
	lui	t0, %hi(LumaPrediction4x4.fw_pred)
	addi	t0, t0, %lo(LumaPrediction4x4.fw_pred)
	j	.LBB9_59
.LBB9_58:                               #   in Loop: Header=BB9_59 Depth=1
	addi	t0, t0, 16
	sh	t1, 2(a7)
	addi	a7, a7, 32
	beq	a7, a2, .LBB9_84
.LBB9_59:                               # =>This Inner Loop Header: Depth=1
	lw	t1, 0(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t1, a5, t1
	mv	t2, a6
	blt	a6, t1, .LBB9_61
# %bb.60:                               #   in Loop: Header=BB9_59 Depth=1
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
.LBB9_61:                               #   in Loop: Header=BB9_59 Depth=1
	sh	t2, -4(a7)
	bge	s1, a0, .LBB9_68
# %bb.62:                               #   in Loop: Header=BB9_59 Depth=1
	lw	t1, 4(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t2, a5, t1
	mv	t1, a6
	blt	a6, t2, .LBB9_64
# %bb.63:                               #   in Loop: Header=BB9_59 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB9_64:                               #   in Loop: Header=BB9_59 Depth=1
	lw	t2, 8(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, -2(a7)
	mv	t1, a6
	blt	a6, t2, .LBB9_66
# %bb.65:                               #   in Loop: Header=BB9_59 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB9_66:                               #   in Loop: Header=BB9_59 Depth=1
	lw	t2, 12(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, 0(a7)
	mv	t1, a6
	blt	a6, t2, .LBB9_58
# %bb.67:                               #   in Loop: Header=BB9_59 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
	j	.LBB9_58
.LBB9_68:                               #   in Loop: Header=BB9_59 Depth=1
	addi	t0, t0, 4
	addi	a7, a7, 32
	bne	a7, a2, .LBB9_59
	j	.LBB9_84
.LBB9_69:
	lui	a7, %hi(LumaPrediction4x4.fw_pred)
	lh	a7, %lo(LumaPrediction4x4.fw_pred)(a7)
	sh	a7, 0(a5)
	bge	a6, a0, .LBB9_81
# %bb.70:
	lui	a0, %hi(LumaPrediction4x4.fw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4.fw_pred)
.LBB9_71:
	lh	a7, 4(a0)
	slli	a6, a6, 1
	lh	t0, 8(a0)
	add	t1, a4, a6
	lh	t2, 12(a0)
	sh	a7, 0(t1)
	sh	t0, 4(a5)
	addi	s0, s0, 1
	sh	t2, 6(a5)
	bge	s0, a1, .LBB9_84
# %bb.72:
	lh	a1, 16(a0)
	slli	s0, s0, 5
	add	a2, a2, s0
	lh	a5, 20(a0)
	add	a7, a2, a3
	sh	a1, 0(a7)
	add	a1, a2, a6
	sh	a5, 0(a1)
	lh	a1, 24(a0)
	addi	a5, a3, 4
	add	a7, a2, a5
	lh	t0, 28(a0)
	sh	a1, 0(a7)
	addi	a1, a3, 6
	add	a2, a2, a1
	sh	t0, 0(a2)
	lh	a2, 32(a0)
	addi	a7, a4, 64
	add	t0, a7, a3
	lh	t1, 36(a0)
	sh	a2, 0(t0)
	add	a2, a7, a6
	lh	t0, 40(a0)
	sh	t1, 0(a2)
	lh	a2, 44(a0)
	add	t1, a7, a5
	sh	t0, 0(t1)
	add	a7, a7, a1
	sh	a2, 0(a7)
	lh	a2, 48(a0)
	addi	a4, a4, 96
	add	a3, a4, a3
	lh	a7, 52(a0)
	sh	a2, 0(a3)
	add	a6, a4, a6
	lh	a2, 56(a0)
	sh	a7, 0(a6)
	lh	a0, 60(a0)
	add	a5, a4, a5
	sh	a2, 0(a5)
	add	a1, a4, a1
	sh	a0, 0(a1)
	j	.LBB9_84
.LBB9_73:
	addi	s0, s0, 1
	bge	s0, a1, .LBB9_84
# %bb.74:
	lui	a0, %hi(LumaPrediction4x4.bw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4.bw_pred)
	j	.LBB9_83
.LBB9_75:
	addi	a1, a6, 4
	addi	a5, a5, 4
.LBB9_76:
	lw	a6, 0(a1)
	lw	a7, 0(a5)
	addi	t0, s0, 2
	add	a6, a6, a7
	addi	a6, a6, 1
	srli	t1, a6, 1
	slli	a7, t0, 5
	add	a7, a2, a7
	add	a6, a7, a4
	sh	t1, 0(a6)
	bge	s1, a0, .LBB9_78
# %bb.77:
	lw	t0, 4(a1)
	lw	t1, 4(a5)
	add	t0, t0, t1
	addi	t0, t0, 1
	lw	t1, 8(a1)
	lw	t2, 8(a5)
	srli	t0, t0, 1
	add	a7, a7, a3
	sh	t0, 0(a7)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	a7, t1, 1
	lw	t0, 12(a1)
	lw	t1, 12(a5)
	sh	a7, 4(a6)
	addi	a1, a1, 16
	addi	a5, a5, 16
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	a7, t0, 1
	sh	a7, 6(a6)
	j	.LBB9_79
.LBB9_78:
	addi	a1, a1, 4
	addi	a5, a5, 4
.LBB9_79:
	lw	a6, 0(a1)
	lw	a7, 0(a5)
	addi	s0, s0, 3
	add	a6, a6, a7
	addi	a6, a6, 1
	srli	a6, a6, 1
	slli	s0, s0, 5
	add	a2, a2, s0
	add	a4, a2, a4
	sh	a6, 0(a4)
	bge	s1, a0, .LBB9_84
# %bb.80:
	lw	a0, 4(a1)
	lw	a6, 4(a5)
	add	a0, a0, a6
	add	a2, a2, a3
	lw	a3, 8(a1)
	lw	a6, 8(a5)
	addi	a0, a0, 1
	srli	a0, a0, 1
	sh	a0, 0(a2)
	add	a3, a3, a6
	lw	a0, 12(a1)
	lw	a1, 12(a5)
	addi	a3, a3, 1
	srli	a3, a3, 1
	sh	a3, 4(a4)
	add	a0, a0, a1
	addi	a0, a0, 1
	srli	a0, a0, 1
	sh	a0, 6(a4)
	j	.LBB9_84
.LBB9_81:
	addi	s0, s0, 1
	bge	s0, a1, .LBB9_84
# %bb.82:
	lui	a0, %hi(LumaPrediction4x4.fw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4.fw_pred)
.LBB9_83:
	lh	a1, 4(a0)
	slli	s0, s0, 5
	add	a3, s0, a3
	lh	a4, 8(a0)
	lh	a0, 12(a0)
	add	a2, a2, a3
	sh	a1, 0(a2)
	sh	a4, 64(a5)
	sh	a0, 96(a5)
.LBB9_84:
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
.Lfunc_end9:
	.size	LumaPrediction4x4, .Lfunc_end9-LumaPrediction4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	LumaPrediction4x4Bi             # -- Begin function LumaPrediction4x4Bi
	.p2align	2
	.type	LumaPrediction4x4Bi,@function
LumaPrediction4x4Bi:                    # @LumaPrediction4x4Bi
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
	lui	t0, %hi(img)
	lui	t1, %hi(active_pps)
	ld	t1, %lo(active_pps)(t1)
	ld	t0, %lo(img)(t0)
	mv	s2, a6
	mv	s4, a5
	mv	s5, a4
	mv	s3, a2
	mv	s1, a1
	mv	s0, a0
	lw	a4, 192(t1)
	lw	a0, 12(t0)
	lui	a1, 8
	add	a1, t0, a1
	li	a2, 528
	beqz	a4, .LBB10_3
# %bb.1:
	lw	a4, 24(t0)
	li	s8, 1
	beqz	a4, .LBB10_6
# %bb.2:
	li	a5, 3
	beq	a4, a5, .LBB10_6
.LBB10_3:
	lw	a4, 196(t1)
	beqz	a4, .LBB10_5
# %bb.4:
	lw	a4, 24(t0)
	addi	a4, a4, -1
	seqz	s8, a4
	j	.LBB10_6
.LBB10_5:
	li	s8, 0
.LBB10_6:
	lw	a5, 168(t0)
	lw	a4, 172(t0)
	ld	s9, -1192(a1)
	mul	a1, a0, a2
	srai	a0, s0, 2
	srai	a2, s1, 2
	lui	a6, 22
	beqz	a7, .LBB10_8
# %bb.7:
	addiw	a6, a6, -768
	j	.LBB10_9
.LBB10_8:
	addiw	a6, a6, -760
.LBB10_9:
	add	a6, t0, a6
	ld	a6, 0(a6)
	addw	s6, a5, s0
	slli	a2, a2, 3
	add	a2, a6, a2
	ld	a2, 0(a2)
	addw	s7, a4, s1
	add	s9, s9, a1
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	s11, 0(a0)
	ori	a0, s3, 2
	li	a1, 2
	lui	s10, %hi(listX)
	addi	s10, s10, %lo(listX)
	bne	a0, a1, .LBB10_11
# %bb.10:
	ld	a0, 0(s11)
	slli	a1, s4, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 428(s9)
	slli	a3, a3, 3
	add	a0, a0, a3
	ld	a3, 0(a0)
	slli	a1, a1, 3
	add	a1, s10, a1
	ld	a5, 0(a1)
	lui	a0, %hi(LumaPrediction4x4Bi.fw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4Bi.fw_pred)
	mv	a1, s6
	mv	a2, s7
	mv	a4, s4
	call	OneComponentLumaPrediction4x4
.LBB10_11:
	addiw	a0, s3, -1
	li	a1, 1
	bltu	a1, a0, .LBB10_13
# %bb.12:
	ld	a0, 8(s11)
	slli	a1, s2, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 428(s9)
	slli	s5, s5, 3
	add	a0, a0, s5
	ld	a3, 0(a0)
	slli	a1, a1, 3
	add	a1, a1, s10
	ld	a5, 8(a1)
	lui	a0, %hi(LumaPrediction4x4Bi.bw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4Bi.bw_pred)
	mv	a1, s6
	mv	a2, s7
	mv	a4, s2
	call	OneComponentLumaPrediction4x4
.LBB10_13:
	addiw	a0, s0, 4
	addiw	a2, s1, 4
	beqz	s8, .LBB10_29
# %bb.14:
	lui	a1, 3
	li	a3, 2
	addiw	a1, a1, 316
	bne	s3, a3, .LBB10_36
# %bb.15:
	lui	a3, %hi(wbp_weight)
	ld	a3, %lo(wbp_weight)(a3)
	ld	a4, 0(a3)
	slli	s4, s4, 3
	ld	a3, 8(a3)
	add	a4, a4, s4
	ld	a4, 0(a4)
	slli	s2, s2, 3
	add	a3, a3, s4
	ld	a5, 0(a3)
	lui	a3, %hi(wp_offset)
	ld	a6, %lo(wp_offset)(a3)
	add	a4, a4, s2
	ld	a3, 0(a4)
	add	a5, a5, s2
	ld	a7, 0(a6)
	ld	a4, 0(a5)
	ld	a5, 8(a6)
	lui	a6, %hi(wp_luma_round)
	add	a7, a7, s4
	ld	a7, 0(a7)
	add	a5, a5, s2
	ld	t0, 0(a5)
	lw	a5, %lo(wp_luma_round)(a6)
	lui	a6, %hi(luma_log_weight_denom)
	lw	a7, 0(a7)
	lw	t0, 0(t0)
	lw	a6, %lo(luma_log_weight_denom)(a6)
	lui	t1, %hi(img)
	ld	t1, %lo(img)(t1)
	add	a7, a7, t0
	addi	a7, a7, 1
	lui	t0, 22
	add	t0, t1, t0
	slli	t3, s1, 5
	slli	t2, s0, 1
	add	t3, t3, t2
	addi	s1, s1, 1
	add	t3, t3, a1
	blt	a2, s1, .LBB10_17
# %bb.16:
	mv	s1, a2
.LBB10_17:
	lw	a2, 0(a3)
	lw	a3, 0(a4)
	slli	a4, a5, 1
	addi	a5, a6, 1
	sraiw	a6, a7, 1
	lw	a7, 420(t0)
	addi	s0, s0, 1
	add	t0, t1, t3
	slli	s1, s1, 5
	add	t2, s1, t2
	add	a1, t2, a1
	add	a1, t1, a1
	lui	t1, %hi(LumaPrediction4x4Bi.bw_pred)
	addi	t1, t1, %lo(LumaPrediction4x4Bi.bw_pred)
	lui	t2, %hi(LumaPrediction4x4Bi.fw_pred)
	addi	t2, t2, %lo(LumaPrediction4x4Bi.fw_pred)
	j	.LBB10_19
.LBB10_18:                              #   in Loop: Header=BB10_19 Depth=1
	addi	t2, t2, 16
	addi	t1, t1, 16
	sh	t3, 2(t0)
	addi	t0, t0, 32
	beq	t0, a1, .LBB10_78
.LBB10_19:                              # =>This Inner Loop Header: Depth=1
	lw	t3, 0(t2)
	lw	t4, 0(t1)
	mul	t3, t3, a2
	mul	t4, t4, a3
	add	t3, t4, t3
	add	t3, t3, a4
	sraw	t3, t3, a5
	addw	t3, a6, t3
	mv	t4, a7
	blt	a7, t3, .LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_19 Depth=1
	sgtz	t4, t3
	neg	t4, t4
	and	t4, t4, t3
.LBB10_21:                              #   in Loop: Header=BB10_19 Depth=1
	sh	t4, -4(t0)
	bge	s0, a0, .LBB10_28
# %bb.22:                               #   in Loop: Header=BB10_19 Depth=1
	lw	t3, 4(t2)
	lw	t4, 4(t1)
	mul	t3, t3, a2
	mul	t4, t4, a3
	add	t3, t4, t3
	add	t3, t3, a4
	sraw	t3, t3, a5
	addw	t4, a6, t3
	mv	t3, a7
	blt	a7, t4, .LBB10_24
# %bb.23:                               #   in Loop: Header=BB10_19 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
.LBB10_24:                              #   in Loop: Header=BB10_19 Depth=1
	lw	t4, 8(t2)
	lw	t5, 8(t1)
	mul	t4, t4, a2
	mul	t5, t5, a3
	add	t4, t5, t4
	add	t4, t4, a4
	sraw	t4, t4, a5
	addw	t4, a6, t4
	sh	t3, -2(t0)
	mv	t3, a7
	blt	a7, t4, .LBB10_26
# %bb.25:                               #   in Loop: Header=BB10_19 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
.LBB10_26:                              #   in Loop: Header=BB10_19 Depth=1
	lw	t4, 12(t2)
	lw	t5, 12(t1)
	mul	t4, t4, a2
	mul	t5, t5, a3
	add	t4, t5, t4
	add	t4, t4, a4
	sraw	t4, t4, a5
	addw	t4, a6, t4
	sh	t3, 0(t0)
	mv	t3, a7
	blt	a7, t4, .LBB10_18
# %bb.27:                               #   in Loop: Header=BB10_19 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
	j	.LBB10_18
.LBB10_28:                              #   in Loop: Header=BB10_19 Depth=1
	addi	t2, t2, 4
	addi	t1, t1, 4
	addi	t0, t0, 32
	bne	t0, a1, .LBB10_19
	j	.LBB10_78
.LBB10_29:
	lui	a1, %hi(img)
	ld	a3, %lo(img)(a1)
	li	a4, 2
	lui	a1, 3
	bne	s3, a4, .LBB10_51
# %bb.30:
	slli	a5, s1, 5
	slli	a4, s0, 1
	add	a5, a5, a4
	add	a5, a5, a3
	addi	s1, s1, 1
	addiw	a6, a1, 316
	blt	a2, s1, .LBB10_32
# %bb.31:
	mv	s1, a2
.LBB10_32:
	addi	s0, s0, 1
	add	a1, a5, a6
	slli	s1, s1, 5
	add	a4, s1, a4
	add	a2, a4, a6
	add	a2, a2, a3
	lui	a3, %hi(LumaPrediction4x4Bi.bw_pred)
	addi	a3, a3, %lo(LumaPrediction4x4Bi.bw_pred)
	lui	a4, %hi(LumaPrediction4x4Bi.fw_pred)
	addi	a4, a4, %lo(LumaPrediction4x4Bi.fw_pred)
	j	.LBB10_34
.LBB10_33:                              #   in Loop: Header=BB10_34 Depth=1
	lw	a5, 4(a4)
	lw	a6, 4(a3)
	add	a5, a5, a6
	addi	a5, a5, 1
	srliw	a6, a5, 31
	lw	a7, 8(a4)
	lw	t0, 8(a3)
	add	a5, a5, a6
	srli	a5, a5, 1
	sh	a5, -2(a1)
	add	a7, a7, t0
	addi	a7, a7, 1
	srliw	a5, a7, 31
	add	a5, a7, a5
	srli	a5, a5, 1
	lw	a6, 12(a4)
	lw	a7, 12(a3)
	sh	a5, 0(a1)
	addi	a4, a4, 16
	addi	a3, a3, 16
	add	a6, a6, a7
	addi	a6, a6, 1
	srliw	a5, a6, 31
	add	a5, a6, a5
	srli	a5, a5, 1
	sh	a5, 2(a1)
	addi	a1, a1, 32
	beq	a1, a2, .LBB10_78
.LBB10_34:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	lw	a6, 0(a3)
	add	a5, a5, a6
	addi	a5, a5, 1
	srliw	a6, a5, 31
	add	a5, a5, a6
	srli	a5, a5, 1
	sh	a5, -4(a1)
	blt	s0, a0, .LBB10_33
# %bb.35:                               #   in Loop: Header=BB10_34 Depth=1
	addi	a4, a4, 4
	addi	a3, a3, 4
	addi	a1, a1, 32
	bne	a1, a2, .LBB10_34
	j	.LBB10_78
.LBB10_36:
	lui	a3, %hi(wp_weight)
	ld	a3, %lo(wp_weight)(a3)
	beqz	s3, .LBB10_54
# %bb.37:
	ld	a3, 8(a3)
	slli	s2, s2, 3
	lui	a4, %hi(wp_offset)
	ld	a5, %lo(wp_offset)(a4)
	add	a3, a3, s2
	ld	a3, 0(a3)
	lui	a4, %hi(wp_luma_round)
	ld	a6, 8(a5)
	lui	a5, %hi(luma_log_weight_denom)
	lui	a7, %hi(img)
	ld	t0, %lo(img)(a7)
	add	a6, a6, s2
	ld	a6, 0(a6)
	lui	a7, 22
	add	a7, t0, a7
	slli	t2, s1, 5
	slli	t1, s0, 1
	add	t2, t2, t1
	addi	s1, s1, 1
	add	t2, t2, a1
	blt	a2, s1, .LBB10_39
# %bb.38:
	mv	s1, a2
.LBB10_39:
	lw	a2, 0(a3)
	lw	a3, %lo(wp_luma_round)(a4)
	lw	a4, %lo(luma_log_weight_denom)(a5)
	lw	a5, 0(a6)
	lw	a6, 420(a7)
	addi	s0, s0, 1
	add	a7, t0, t2
	slli	s1, s1, 5
	add	t1, s1, t1
	add	a1, t1, a1
	add	a1, t0, a1
	lui	t0, %hi(LumaPrediction4x4Bi.bw_pred)
	addi	t0, t0, %lo(LumaPrediction4x4Bi.bw_pred)
	j	.LBB10_41
.LBB10_40:                              #   in Loop: Header=BB10_41 Depth=1
	addi	t0, t0, 16
	sh	t1, 2(a7)
	addi	a7, a7, 32
	beq	a7, a1, .LBB10_78
.LBB10_41:                              # =>This Inner Loop Header: Depth=1
	lw	t1, 0(t0)
	mul	t1, t1, a2
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t1, a5, t1
	mv	t2, a6
	blt	a6, t1, .LBB10_43
# %bb.42:                               #   in Loop: Header=BB10_41 Depth=1
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
.LBB10_43:                              #   in Loop: Header=BB10_41 Depth=1
	sh	t2, -4(a7)
	bge	s0, a0, .LBB10_50
# %bb.44:                               #   in Loop: Header=BB10_41 Depth=1
	lw	t1, 4(t0)
	mul	t1, t1, a2
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t2, a5, t1
	mv	t1, a6
	blt	a6, t2, .LBB10_46
# %bb.45:                               #   in Loop: Header=BB10_41 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB10_46:                              #   in Loop: Header=BB10_41 Depth=1
	lw	t2, 8(t0)
	mul	t2, t2, a2
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, -2(a7)
	mv	t1, a6
	blt	a6, t2, .LBB10_48
# %bb.47:                               #   in Loop: Header=BB10_41 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB10_48:                              #   in Loop: Header=BB10_41 Depth=1
	lw	t2, 12(t0)
	mul	t2, t2, a2
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, 0(a7)
	mv	t1, a6
	blt	a6, t2, .LBB10_40
# %bb.49:                               #   in Loop: Header=BB10_41 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
	j	.LBB10_40
.LBB10_50:                              #   in Loop: Header=BB10_41 Depth=1
	addi	t0, t0, 4
	addi	a7, a7, 32
	bne	a7, a1, .LBB10_41
	j	.LBB10_78
.LBB10_51:
	addiw	a1, a1, 312
	add	a1, a3, a1
	slli	a4, s1, 5
	add	a4, a1, a4
	slli	a3, s0, 1
	add	a5, a4, a3
	addi	a6, s0, 1
	beqz	s3, .LBB10_68
# %bb.52:
	lui	a7, %hi(LumaPrediction4x4Bi.bw_pred)
	lh	a7, %lo(LumaPrediction4x4Bi.bw_pred)(a7)
	sh	a7, 0(a5)
	bge	a6, a0, .LBB10_72
# %bb.53:
	lui	a0, %hi(LumaPrediction4x4Bi.bw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4Bi.bw_pred)
	j	.LBB10_70
.LBB10_54:
	ld	a3, 0(a3)
	slli	s4, s4, 3
	lui	a4, %hi(wp_offset)
	ld	a5, %lo(wp_offset)(a4)
	add	a3, a3, s4
	ld	a3, 0(a3)
	lui	a4, %hi(wp_luma_round)
	ld	a6, 0(a5)
	lui	a5, %hi(luma_log_weight_denom)
	lui	a7, %hi(img)
	ld	t0, %lo(img)(a7)
	add	a6, a6, s4
	ld	a6, 0(a6)
	lui	a7, 22
	add	a7, t0, a7
	slli	t2, s1, 5
	slli	t1, s0, 1
	add	t2, t2, t1
	addi	s1, s1, 1
	add	t2, t2, a1
	blt	a2, s1, .LBB10_56
# %bb.55:
	mv	s1, a2
.LBB10_56:
	lw	a2, 0(a3)
	lw	a3, %lo(wp_luma_round)(a4)
	lw	a4, %lo(luma_log_weight_denom)(a5)
	lw	a5, 0(a6)
	lw	a6, 420(a7)
	addi	s0, s0, 1
	add	a7, t0, t2
	slli	s1, s1, 5
	add	t1, s1, t1
	add	a1, t1, a1
	add	a1, t0, a1
	lui	t0, %hi(LumaPrediction4x4Bi.fw_pred)
	addi	t0, t0, %lo(LumaPrediction4x4Bi.fw_pred)
	j	.LBB10_58
.LBB10_57:                              #   in Loop: Header=BB10_58 Depth=1
	addi	t0, t0, 16
	sh	t1, 2(a7)
	addi	a7, a7, 32
	beq	a7, a1, .LBB10_78
.LBB10_58:                              # =>This Inner Loop Header: Depth=1
	lw	t1, 0(t0)
	mul	t1, t1, a2
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t1, a5, t1
	mv	t2, a6
	blt	a6, t1, .LBB10_60
# %bb.59:                               #   in Loop: Header=BB10_58 Depth=1
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
.LBB10_60:                              #   in Loop: Header=BB10_58 Depth=1
	sh	t2, -4(a7)
	bge	s0, a0, .LBB10_67
# %bb.61:                               #   in Loop: Header=BB10_58 Depth=1
	lw	t1, 4(t0)
	mul	t1, t1, a2
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t2, a5, t1
	mv	t1, a6
	blt	a6, t2, .LBB10_63
# %bb.62:                               #   in Loop: Header=BB10_58 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB10_63:                              #   in Loop: Header=BB10_58 Depth=1
	lw	t2, 8(t0)
	mul	t2, t2, a2
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, -2(a7)
	mv	t1, a6
	blt	a6, t2, .LBB10_65
# %bb.64:                               #   in Loop: Header=BB10_58 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB10_65:                              #   in Loop: Header=BB10_58 Depth=1
	lw	t2, 12(t0)
	mul	t2, t2, a2
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, 0(a7)
	mv	t1, a6
	blt	a6, t2, .LBB10_57
# %bb.66:                               #   in Loop: Header=BB10_58 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
	j	.LBB10_57
.LBB10_67:                              #   in Loop: Header=BB10_58 Depth=1
	addi	t0, t0, 4
	addi	a7, a7, 32
	bne	a7, a1, .LBB10_58
	j	.LBB10_78
.LBB10_68:
	lui	a7, %hi(LumaPrediction4x4Bi.fw_pred)
	lh	a7, %lo(LumaPrediction4x4Bi.fw_pred)(a7)
	sh	a7, 0(a5)
	bge	a6, a0, .LBB10_74
# %bb.69:
	lui	a0, %hi(LumaPrediction4x4Bi.fw_pred)
	addi	a0, a0, %lo(LumaPrediction4x4Bi.fw_pred)
.LBB10_70:
	lh	a7, 4(a0)
	slli	a6, a6, 1
	lh	t0, 8(a0)
	add	t1, a4, a6
	lh	t2, 12(a0)
	sh	a7, 0(t1)
	sh	t0, 4(a5)
	addi	a7, s1, 1
	sh	t2, 6(a5)
	bge	a7, a2, .LBB10_78
# %bb.71:
	lh	a2, 16(a0)
	slli	a7, a7, 5
	add	a7, a1, a7
	add	a5, a7, a3
	lh	t0, 20(a0)
	sh	a2, 0(a5)
	add	a2, a7, a6
	lh	a5, 24(a0)
	sh	t0, 0(a2)
	addi	a2, a3, 4
	add	t0, a7, a2
	sh	a5, 0(t0)
	lh	a5, 28(a0)
	addi	s0, s0, 3
	slli	t0, s0, 1
	add	a7, a7, t0
	sh	a5, 0(a7)
	lh	a5, 32(a0)
	addi	a4, a4, 64
	add	a7, a4, a3
	lh	t1, 36(a0)
	sh	a5, 0(a7)
	add	a5, a4, a6
	lh	a7, 40(a0)
	sh	t1, 0(a5)
	lh	a5, 44(a0)
	add	t1, a4, a2
	sh	a7, 0(t1)
	add	a4, a4, t0
	sh	a5, 0(a4)
	addi	s1, s1, 3
	lh	a4, 48(a0)
	slli	a5, s1, 5
	add	a5, a1, a5
	add	a3, a5, a3
	lh	a7, 52(a0)
	sh	a4, 0(a3)
	lh	a3, 56(a0)
	add	a6, a5, a6
	sh	a7, 0(a6)
	add	a2, a5, a2
	sh	a3, 0(a2)
	addi	a0, a0, 60
	j	.LBB10_77
.LBB10_72:
	addi	a0, s1, 1
	bge	a0, a2, .LBB10_78
# %bb.73:
	lui	a2, %hi(LumaPrediction4x4Bi.bw_pred)
	addi	a2, a2, %lo(LumaPrediction4x4Bi.bw_pred)
	j	.LBB10_76
.LBB10_74:
	addi	a0, s1, 1
	bge	a0, a2, .LBB10_78
# %bb.75:
	lui	a2, %hi(LumaPrediction4x4Bi.fw_pred)
	addi	a2, a2, %lo(LumaPrediction4x4Bi.fw_pred)
.LBB10_76:
	lh	a4, 4(a2)
	slli	a0, a0, 5
	lh	a6, 8(a2)
	add	a0, a0, a3
	add	a0, a1, a0
	sh	a4, 0(a0)
	sh	a6, 64(a5)
	addi	a0, a2, 12
	addi	s1, s1, 3
.LBB10_77:
	lh	a0, 0(a0)
	slli	s1, s1, 5
	slli	s0, s0, 1
	add	s0, s1, s0
	add	a1, a1, s0
	sh	a0, 0(a1)
.LBB10_78:
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
.Lfunc_end10:
	.size	LumaPrediction4x4Bi, .Lfunc_end10-LumaPrediction4x4Bi
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	LumaResidualCoding8x8           # -- Begin function LumaResidualCoding8x8
	.p2align	2
	.type	LumaResidualCoding8x8,@function
LumaResidualCoding8x8:                  # @LumaResidualCoding8x8
# %bb.0:
	addi	sp, sp, -640
	sd	ra, 632(sp)                     # 8-byte Folded Spill
	sd	s0, 624(sp)                     # 8-byte Folded Spill
	sd	s1, 616(sp)                     # 8-byte Folded Spill
	sd	s2, 608(sp)                     # 8-byte Folded Spill
	sd	s3, 600(sp)                     # 8-byte Folded Spill
	sd	s4, 592(sp)                     # 8-byte Folded Spill
	sd	s5, 584(sp)                     # 8-byte Folded Spill
	sd	s6, 576(sp)                     # 8-byte Folded Spill
	sd	s7, 568(sp)                     # 8-byte Folded Spill
	sd	s8, 560(sp)                     # 8-byte Folded Spill
	sd	s9, 552(sp)                     # 8-byte Folded Spill
	sd	s10, 544(sp)                    # 8-byte Folded Spill
	sd	s11, 536(sp)                    # 8-byte Folded Spill
	sd	a7, 360(sp)                     # 8-byte Folded Spill
	mv	t2, a6
	mv	s4, a5
	mv	s6, a4
	mv	a7, a3
	mv	a6, a2
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	sd	zero, 176(sp)                   # 8-byte Folded Spill
	sw	zero, 532(sp)
	slliw	a3, a2, 2
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	andi	a3, a3, -8
	andi	a5, a2, 1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	slli	a4, a5, 3
	or	a1, s4, s6
	li	a2, 1
	bnez	a1, .LBB11_2
# %bb.1:
	lw	a1, 24(a0)
	addi	a1, a1, -1
	snez	a1, a1
	sd	a1, 176(sp)                     # 8-byte Folded Spill
.LBB11_2:
	sd	zero, 104(sp)                   # 8-byte Folded Spill
	lui	a1, 8
	add	a1, a0, a1
	lw	a0, 12(a0)
	ld	a1, -1192(a1)
	sllw	a2, a2, a6
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	li	a2, 528
	mul	a0, a0, a2
	add	a0, a1, a0
	lw	s3, 468(a0)
	addiw	a0, a3, 8
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	addi	a4, a4, 8
	sd	a4, 192(sp)                     # 8-byte Folded Spill
	sd	a6, 0(sp)                       # 8-byte Folded Spill
	slli	a0, a6, 3
	andi	a0, a0, 8
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	slli	a1, a3, 6
	sd	a5, 48(sp)                      # 8-byte Folded Spill
	slli	a0, a5, 5
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	or	a0, a1, a0
	lui	a1, %hi(mprRGB)
	addi	a1, a1, %lo(mprRGB)
	add	s0, a1, a0
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	addi	a0, a0, 8
	lui	a1, %hi(resTrans_R)
	addi	a1, a1, %lo(resTrans_R)
	add	s1, a1, a0
	lui	a1, %hi(resTrans_G)
	addi	a1, a1, %lo(resTrans_G)
	add	s2, a1, a0
	lui	a1, %hi(resTrans_B)
	addi	a1, a1, %lo(resTrans_B)
	add	a1, a1, a0
	lui	a0, 3
	addiw	s5, a0, 836
	addiw	s7, a0, 832
	addiw	s8, a0, 828
	addiw	t3, a0, 824
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	mv	s10, a3
	li	a3, 0
	sd	t2, 448(sp)                     # 8-byte Folded Spill
	sd	s4, 352(sp)                     # 8-byte Folded Spill
	sd	s6, 344(sp)                     # 8-byte Folded Spill
	sd	a7, 440(sp)                     # 8-byte Folded Spill
	j	.LBB11_4
.LBB11_3:                               #   in Loop: Header=BB11_4 Depth=1
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	addi	a3, a3, 4
	addi	s10, s10, 4
	addi	s5, s5, 256
	addi	s7, s7, 256
	addi	s8, s8, 256
	addi	t3, t3, 256
	addi	s0, s0, 256
	addi	s1, s1, 256
	addi	s2, s2, 256
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 256
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	blt	s10, a0, .LBB11_4
	j	.LBB11_47
.LBB11_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
                                        #       Child Loop BB11_17 Depth 3
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 172(a0)
	sd	zero, 368(sp)                   # 8-byte Folded Spill
	add	a0, s10, a0
	addi	a6, s10, 1
	addi	t0, s10, 2
	addi	t1, s10, 3
	mv	a4, a1
	addi	a1, a3, 1
	addi	a2, a3, 2
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	addi	a3, a3, 3
	slli	a0, a0, 3
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	sd	a6, 296(sp)                     # 8-byte Folded Spill
	slli	a6, a6, 5
	sd	a6, 336(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 6
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	sd	t0, 288(sp)                     # 8-byte Folded Spill
	slli	t0, t0, 5
	sd	t0, 424(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 6
	sd	a2, 120(sp)                     # 8-byte Folded Spill
	sd	t1, 280(sp)                     # 8-byte Folded Spill
	slli	t1, t1, 5
	sd	t1, 416(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 6
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	sd	a4, 520(sp)                     # 8-byte Folded Spill
	sd	s2, 512(sp)                     # 8-byte Folded Spill
	sd	s1, 504(sp)                     # 8-byte Folded Spill
	sd	s0, 496(sp)                     # 8-byte Folded Spill
	sd	t3, 400(sp)                     # 8-byte Folded Spill
	sd	s8, 392(sp)                     # 8-byte Folded Spill
	sd	s7, 384(sp)                     # 8-byte Folded Spill
	sd	s5, 376(sp)                     # 8-byte Folded Spill
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	sd	s10, 256(sp)                    # 8-byte Folded Spill
	sd	s0, 248(sp)                     # 8-byte Folded Spill
	sd	s1, 240(sp)                     # 8-byte Folded Spill
	sd	s2, 232(sp)                     # 8-byte Folded Spill
	sd	s5, 224(sp)                     # 8-byte Folded Spill
	sd	s7, 216(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	sd	t3, 304(sp)                     # 8-byte Folded Spill
	j	.LBB11_9
.LBB11_5:                               #   in Loop: Header=BB11_9 Depth=2
	lui	a0, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a0)
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	add	a5, a5, a0
	ld	t3, 0(a5)
	ld	a4, 456(sp)                     # 8-byte Folded Reload
	add	a4, t4, a4
	add	a0, t3, a1
	lhu	a0, 0(a0)
	ld	t5, 480(sp)                     # 8-byte Folded Reload
	add	t5, a4, t5
	add	a2, t5, s1
	lhu	a2, 0(a2)
	sub	t0, a0, a2
	beqz	s3, .LBB11_33
# %bb.6:                                #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 6
	ld	s11, 488(sp)                    # 8-byte Folded Reload
	add	a0, s11, a0
	addi	a2, a1, 2
	add	a3, t3, a2
	lhu	a7, 0(a3)
	addi	a6, s1, 2
	add	a3, t5, a6
	lhu	t1, 0(a3)
	ld	a3, 368(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 2
	add	t2, a0, a3
	sw	t0, 0(t2)
	subw	a7, a7, t1
	addi	t0, a1, 4
	add	t1, t3, t0
	lhu	t2, 0(t1)
	addi	t1, s1, 4
	add	t4, t5, t1
	lhu	t6, 0(t4)
	addi	t4, a3, 4
	add	s0, a0, t4
	sw	a7, 0(s0)
	subw	t6, t2, t6
	addi	a7, a3, 8
	addi	t2, a1, 6
	add	t3, t3, t2
	lhu	s0, 0(t3)
	addi	t3, s1, 6
	add	t5, t5, t3
	lhu	t5, 0(t5)
	ld	s4, 8(a5)
	add	s5, a0, a7
	sw	t6, 0(s5)
	subw	s0, s0, t5
	add	t5, s4, a1
	lhu	t6, 0(t5)
	ld	s5, 336(sp)                     # 8-byte Folded Reload
	add	s5, a4, s5
	add	t5, s5, s1
	lhu	s6, 0(t5)
	addi	t5, a3, 12
	add	a0, a0, t5
	sw	s0, 0(a0)
	subw	a0, t6, s6
	ld	t6, 128(sp)                     # 8-byte Folded Reload
	add	t6, s11, t6
	add	s0, t6, a3
	sw	a0, 0(s0)
	add	a0, s4, a2
	lhu	a0, 0(a0)
	add	s0, s5, a6
	lhu	s0, 0(s0)
	add	s6, s4, t0
	lhu	s6, 0(s6)
	add	s7, s5, t1
	lhu	s7, 0(s7)
	subw	a0, a0, s0
	add	s0, t6, t4
	sw	a0, 0(s0)
	subw	a0, s6, s7
	add	s0, t6, a7
	sw	a0, 0(s0)
	add	s4, s4, t2
	ld	a0, 16(a5)
	lhu	s0, 0(s4)
	add	s5, s5, t3
	lhu	s4, 0(s5)
	add	s5, a0, a1
	lhu	s5, 0(s5)
	ld	s6, 424(sp)                     # 8-byte Folded Reload
	add	s6, a4, s6
	add	s7, s6, s1
	lhu	s7, 0(s7)
	subw	s0, s0, s4
	add	t6, t6, t5
	sw	s0, 0(t6)
	subw	t6, s5, s7
	ld	s0, 120(sp)                     # 8-byte Folded Reload
	add	s0, s11, s0
	add	s4, s0, a3
	sw	t6, 0(s4)
	add	t6, a0, a2
	lhu	t6, 0(t6)
	add	s4, s6, a6
	lhu	s4, 0(s4)
	add	s5, a0, t0
	lhu	s5, 0(s5)
	add	s7, s6, t1
	lhu	s7, 0(s7)
	subw	t6, t6, s4
	add	s4, s0, t4
	sw	t6, 0(s4)
	subw	t6, s5, s7
	add	s4, s0, a7
	sw	t6, 0(s4)
	add	a0, a0, t2
	ld	a5, 24(a5)
	lhu	a0, 0(a0)
	add	s6, s6, t3
	lhu	t6, 0(s6)
	ld	s6, 344(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	add	a1, a5, a1
	lhu	a1, 0(a1)
	ld	s2, 416(sp)                     # 8-byte Folded Reload
	add	a4, a4, s2
	add	s1, a4, s1
	lhu	s1, 0(s1)
	subw	a0, a0, t6
	add	s0, s0, t5
	sw	a0, 0(s0)
	subw	a1, a1, s1
	add	a2, a5, a2
	lhu	a0, 0(a2)
	add	a6, a4, a6
	lhu	a2, 0(a6)
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	add	s8, s11, s8
	add	a3, s8, a3
	sw	a1, 0(a3)
	subw	a0, a0, a2
	add	t4, s8, t4
	sw	a0, 0(t4)
	add	t0, a5, t0
	lhu	a0, 0(t0)
	add	t1, a4, t1
	lhu	a1, 0(t1)
	add	a5, a5, t2
	lhu	a2, 0(a5)
	add	a4, a4, t3
	lhu	a3, 0(a4)
	subw	a0, a0, a1
	add	a7, s8, a7
	sw	a0, 0(a7)
	subw	a2, a2, a3
	add	t5, s8, t5
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	sw	a2, 0(t5)
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	s2, 232(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	s7, 216(sp)                     # 8-byte Folded Reload
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
.LBB11_7:                               #   in Loop: Header=BB11_9 Depth=2
	ld	a2, 464(sp)                     # 8-byte Folded Reload
.LBB11_8:                               #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 368(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 4
	sd	a0, 368(sp)                     # 8-byte Folded Spill
	addi	a2, a2, 4
	ld	a0, 376(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 376(sp)                     # 8-byte Folded Spill
	ld	a0, 384(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 384(sp)                     # 8-byte Folded Spill
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 392(sp)                     # 8-byte Folded Spill
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 400(sp)                     # 8-byte Folded Spill
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 496(sp)                     # 8-byte Folded Spill
	ld	a0, 504(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 504(sp)                     # 8-byte Folded Spill
	ld	a0, 512(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 512(sp)                     # 8-byte Folded Spill
	ld	a0, 520(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 520(sp)                     # 8-byte Folded Spill
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	bgeu	a2, a0, .LBB11_3
.LBB11_9:                               #   Parent Loop BB11_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_17 Depth 3
	mv	a4, s6
	mv	a5, s4
	lui	s11, %hi(img)
	ld	a0, %lo(img)(s11)
	lw	a3, 168(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 460(a0)
	sext.w	s9, a2
	lui	a1, 3
	addiw	s8, a1, 312
	slli	s5, s10, 5
	slli	s1, a2, 1
	slli	s2, s10, 6
	slli	s7, a2, 2
	addi	s4, a2, 1
	addi	s6, a2, 2
	addi	s0, a2, 3
	sd	a2, 464(sp)                     # 8-byte Folded Spill
	sd	s9, 432(sp)                     # 8-byte Folded Spill
	sd	s7, 472(sp)                     # 8-byte Folded Spill
	sd	s2, 408(sp)                     # 8-byte Folded Spill
	sd	s5, 480(sp)                     # 8-byte Folded Spill
	sd	s8, 456(sp)                     # 8-byte Folded Spill
	sd	s0, 328(sp)                     # 8-byte Folded Spill
	sd	s6, 320(sp)                     # 8-byte Folded Spill
	sd	s4, 312(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB11_11
# %bb.10:                               #   in Loop: Header=BB11_9 Depth=2
	sext.w	s10, s10
	sd	s10, 272(sp)                    # 8-byte Folded Spill
	li	a0, 0
	mv	a1, s9
	mv	a2, s10
	sd	a3, 488(sp)                     # 8-byte Folded Spill
	mv	a3, a7
	mv	a6, t2
	ld	a7, 360(sp)                     # 8-byte Folded Reload
	call	ChromaPrediction4x4
	ld	a0, %lo(img)(s11)
	add	a0, a0, s8
	add	a2, a0, s5
	add	a1, a2, s1
	lhu	a3, 0(a1)
	lui	s8, %hi(mprRGB)
	addi	s8, s8, %lo(mprRGB)
	addi	a1, s8, 1024
	add	a4, a1, s2
	add	a5, a4, s7
	slli	s7, s4, 1
	add	a6, a2, s7
	lhu	a6, 0(a6)
	sw	a3, 0(a5)
	slli	s4, s4, 2
	add	a3, a4, s4
	sw	a6, 0(a3)
	slli	s2, s6, 1
	add	a3, a2, s2
	lhu	a3, 0(a3)
	slli	s11, s6, 2
	add	a5, a4, s11
	slli	s8, s0, 1
	add	a2, a2, s8
	lhu	a2, 0(a2)
	sw	a3, 0(a5)
	slli	s5, s0, 2
	add	a4, a4, s5
	sw	a2, 0(a4)
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	add	a2, a0, s0
	add	a3, a2, s1
	lhu	a3, 0(a3)
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 6
	sd	a4, 264(sp)                     # 8-byte Folded Spill
	add	a4, a1, a4
	add	a5, a2, s7
	lhu	a5, 0(a5)
	ld	a6, 472(sp)                     # 8-byte Folded Reload
	add	a6, a4, a6
	sw	a3, 0(a6)
	add	a3, a4, s4
	sw	a5, 0(a3)
	add	a3, a2, s2
	lhu	a3, 0(a3)
	add	a2, a2, s8
	lhu	a2, 0(a2)
	add	a5, a4, s11
	sw	a3, 0(a5)
	add	a4, a4, s5
	sw	a2, 0(a4)
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	add	a3, a2, s1
	lhu	a3, 0(a3)
	ld	s9, 288(sp)                     # 8-byte Folded Reload
	slli	s9, s9, 6
	add	a4, a1, s9
	add	a5, a2, s7
	lhu	a5, 0(a5)
	ld	a6, 472(sp)                     # 8-byte Folded Reload
	add	a6, a4, a6
	sw	a3, 0(a6)
	add	a3, a4, s4
	sw	a5, 0(a3)
	add	a3, a2, s2
	lhu	a3, 0(a3)
	add	a2, a2, s8
	lhu	a2, 0(a2)
	add	a5, a4, s11
	sw	a3, 0(a5)
	add	a4, a4, s5
	sw	a2, 0(a4)
	ld	a2, 416(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	add	a2, a0, s1
	lhu	a2, 0(a2)
	ld	s10, 280(sp)                    # 8-byte Folded Reload
	slli	s6, s10, 6
	add	a1, a1, s6
	add	a3, a0, s7
	lhu	a3, 0(a3)
	ld	a4, 472(sp)                     # 8-byte Folded Reload
	add	a4, a1, a4
	sw	a2, 0(a4)
	add	a2, a1, s4
	sw	a3, 0(a2)
	add	a2, a0, s2
	lhu	a2, 0(a2)
	add	a0, a0, s8
	lhu	a0, 0(a0)
	add	a3, a1, s11
	sw	a2, 0(a3)
	add	a1, a1, s5
	sw	a0, 0(a1)
	li	a0, 1
	ld	a1, 432(sp)                     # 8-byte Folded Reload
	ld	s10, 272(sp)                    # 8-byte Folded Reload
	mv	a2, s10
	ld	a3, 440(sp)                     # 8-byte Folded Reload
	ld	a4, 344(sp)                     # 8-byte Folded Reload
	ld	a5, 352(sp)                     # 8-byte Folded Reload
	ld	a6, 448(sp)                     # 8-byte Folded Reload
	ld	a7, 360(sp)                     # 8-byte Folded Reload
	call	ChromaPrediction4x4
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a2, 480(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	add	a1, a2, s1
	lhu	a3, 0(a1)
	lui	a1, %hi(mprRGB)
	addi	a1, a1, %lo(mprRGB)
	addi	a1, a1, 2047
	addi	a1, a1, 1
	ld	a4, 408(sp)                     # 8-byte Folded Reload
	add	a4, a1, a4
	add	a5, a2, s7
	lhu	a5, 0(a5)
	ld	a6, 472(sp)                     # 8-byte Folded Reload
	add	a6, a4, a6
	sw	a3, 0(a6)
	add	a3, a4, s4
	sw	a5, 0(a3)
	add	a3, a2, s2
	lhu	a3, 0(a3)
	add	a2, a2, s8
	lhu	a2, 0(a2)
	add	a5, a4, s11
	sw	a3, 0(a5)
	add	a4, a4, s5
	sw	a2, 0(a4)
	add	a2, a0, s0
	add	a3, a2, s1
	lhu	a3, 0(a3)
	ld	a4, 264(sp)                     # 8-byte Folded Reload
	add	a4, a1, a4
	add	a5, a2, s7
	lhu	a5, 0(a5)
	ld	a6, 472(sp)                     # 8-byte Folded Reload
	add	a6, a4, a6
	sw	a3, 0(a6)
	add	a3, a4, s4
	sw	a5, 0(a3)
	add	a3, a2, s2
	lhu	a3, 0(a3)
	add	a2, a2, s8
	lhu	a2, 0(a2)
	add	a5, a4, s11
	sw	a3, 0(a5)
	add	a4, a4, s5
	sw	a2, 0(a4)
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	add	a3, a2, s1
	lhu	a3, 0(a3)
	add	s9, a1, s9
	add	a4, a2, s7
	lhu	a4, 0(a4)
	ld	a5, 472(sp)                     # 8-byte Folded Reload
	add	a5, s9, a5
	sw	a3, 0(a5)
	add	a3, s9, s4
	sw	a4, 0(a3)
	add	a3, a2, s2
	lhu	a3, 0(a3)
	add	a2, a2, s8
	lhu	a2, 0(a2)
	add	a4, s9, s11
	sw	a3, 0(a4)
	add	s9, s9, s5
	sw	a2, 0(s9)
	lui	s0, %hi(img)
	ld	a2, 416(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	add	a2, a0, s1
	lhu	a2, 0(a2)
	add	a1, a1, s6
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	add	s7, a0, s7
	lhu	a3, 0(s7)
	ld	s7, 472(sp)                     # 8-byte Folded Reload
	add	a4, a1, s7
	sw	a2, 0(a4)
	add	s4, a1, s4
	sw	a3, 0(s4)
	ld	a3, 488(sp)                     # 8-byte Folded Reload
	add	s6, a0, s2
	lhu	a2, 0(s6)
	ld	s6, 344(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	add	a0, a0, s8
	mv	s8, s10
	mv	s10, a5
	ld	s9, 432(sp)                     # 8-byte Folded Reload
	lhu	a0, 0(a0)
	add	s11, a1, s11
	sw	a2, 0(s11)
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	add	a1, a1, s5
	sw	a0, 0(a1)
	j	.LBB11_12
.LBB11_11:                              #   in Loop: Header=BB11_9 Depth=2
	mv	s8, s10
	lui	s0, %hi(img)
	mv	s4, a5
	mv	s6, a4
.LBB11_12:                              #   in Loop: Header=BB11_9 Depth=2
	add	s5, a2, a3
	srli	a0, a2, 2
	add	s2, a0, s10
	sext.w	s8, s8
	mv	a0, s9
	mv	a1, s8
	mv	a2, a7
	mv	a3, s6
	mv	a4, s4
	mv	a5, t2
	ld	a6, 360(sp)                     # 8-byte Folded Reload
	call	LumaPrediction4x4
	ld	t4, %lo(img)(s0)
	lui	a0, 22
	addiw	a0, a0, 96
	add	t6, t4, a0
	lw	a0, 364(t6)
	lui	a1, 3
	addiw	a1, a1, 824
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	add	a1, t4, a1
	sd	a1, 488(sp)                     # 8-byte Folded Spill
	slli	a1, s5, 1
	beqz	a0, .LBB11_5
# %bb.13:                               #   in Loop: Header=BB11_9 Depth=2
	ld	a3, 456(sp)                     # 8-byte Folded Reload
	add	a3, t4, a3
	ld	a0, 480(sp)                     # 8-byte Folded Reload
	add	a0, a3, a0
	add	a2, a0, s1
	lhu	a2, 0(a2)
	lui	t2, %hi(mprRGB)
	addi	t2, t2, %lo(mprRGB)
	ld	a7, 408(sp)                     # 8-byte Folded Reload
	add	a7, t2, a7
	add	a5, a7, s7
	ld	t3, 312(sp)                     # 8-byte Folded Reload
	slli	a4, t3, 1
	add	a6, a0, a4
	lhu	a6, 0(a6)
	sw	a2, 0(a5)
	slli	t3, t3, 2
	add	a2, a7, t3
	sw	a6, 0(a2)
	ld	t5, 320(sp)                     # 8-byte Folded Reload
	slli	a5, t5, 1
	add	a2, a0, a5
	lhu	a2, 0(a2)
	slli	t5, t5, 2
	add	t0, a7, t5
	ld	ra, 328(sp)                     # 8-byte Folded Reload
	slli	a6, ra, 1
	add	a0, a0, a6
	lhu	a0, 0(a0)
	sw	a2, 0(t0)
	slli	ra, ra, 2
	add	a7, a7, ra
	sw	a0, 0(a7)
	ld	a0, 336(sp)                     # 8-byte Folded Reload
	add	a0, a3, a0
	add	a2, a0, s1
	lhu	a2, 0(a2)
	ld	a7, 296(sp)                     # 8-byte Folded Reload
	slli	a7, a7, 6
	sd	a7, 312(sp)                     # 8-byte Folded Spill
	add	a7, t2, a7
	add	t0, a0, a4
	lhu	t0, 0(t0)
	add	t1, a7, s7
	sw	a2, 0(t1)
	add	a2, a7, t3
	sw	t0, 0(a2)
	add	a2, a0, a5
	lhu	a2, 0(a2)
	add	a0, a0, a6
	lhu	a0, 0(a0)
	add	t0, a7, t5
	sw	a2, 0(t0)
	add	a7, a7, ra
	sw	a0, 0(a7)
	ld	a0, 424(sp)                     # 8-byte Folded Reload
	add	a0, a3, a0
	add	a2, a0, s1
	lhu	a2, 0(a2)
	ld	a7, 288(sp)                     # 8-byte Folded Reload
	slli	a7, a7, 6
	sd	a7, 264(sp)                     # 8-byte Folded Spill
	add	a7, t2, a7
	add	t0, a0, a4
	lhu	t0, 0(t0)
	add	t1, a7, s7
	sw	a2, 0(t1)
	add	a2, a7, t3
	sw	t0, 0(a2)
	add	a2, a0, a5
	lhu	a2, 0(a2)
	add	a0, a0, a6
	lhu	a0, 0(a0)
	add	t0, a7, t5
	sw	a2, 0(t0)
	add	a7, a7, ra
	sw	a0, 0(a7)
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	add	a3, a3, a0
	add	a0, a3, s1
	lhu	a0, 0(a0)
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	slli	t0, a2, 6
	add	a2, t2, t0
	add	a4, a3, a4
	lhu	a4, 0(a4)
	add	a7, a2, s7
	sw	a0, 0(a7)
	add	a0, a2, t3
	sw	a4, 0(a0)
	add	a5, a3, a5
	lhu	a0, 0(a5)
	add	a3, a3, a6
	lhu	a3, 0(a3)
	add	a4, a2, t5
	sw	a0, 0(a4)
	sd	ra, 320(sp)                     # 8-byte Folded Spill
	add	a2, a2, ra
	sw	a3, 0(a2)
	lw	a0, 364(t6)
	beqz	a0, .LBB11_5
# %bb.14:                               #   in Loop: Header=BB11_9 Depth=2
	sd	t0, 144(sp)                     # 8-byte Folded Spill
	sd	t5, 152(sp)                     # 8-byte Folded Spill
	sd	t3, 160(sp)                     # 8-byte Folded Spill
	sd	t6, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 456(sp)                     # 8-byte Folded Spill
	sd	s2, 328(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(imgUV_org)
	ld	a0, %lo(imgUV_org)(a0)
	li	a4, 0
	mv	a3, t4
	ld	t4, 0(a0)
	lui	a2, %hi(imgY_org)
	ld	t5, %lo(imgY_org)(a2)
	ld	t6, 8(a0)
	addi	s1, s5, 1
	addi	a0, s5, 2
	addi	s6, s5, 3
	lui	a2, 3
	addiw	a5, a2, 836
	add	a5, a3, a5
	sd	a5, 480(sp)                     # 8-byte Folded Spill
	addiw	a6, a2, 832
	add	a6, a3, a6
	addiw	a7, a2, 828
	add	a7, a3, a7
	ld	t0, 376(sp)                     # 8-byte Folded Reload
	add	t0, a3, t0
	ld	t1, 384(sp)                     # 8-byte Folded Reload
	add	t1, a3, t1
	ld	t2, 392(sp)                     # 8-byte Folded Reload
	add	t2, a3, t2
	ld	t3, 400(sp)                     # 8-byte Folded Reload
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	add	t3, a3, t3
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	add	t4, t4, a2
	add	t5, t5, a2
	add	t6, t6, a2
	slli	s8, s1, 1
	slli	s5, a0, 1
	slli	s6, s6, 1
	j	.LBB11_17
.LBB11_15:                              #   in Loop: Header=BB11_17 Depth=3
	add	a0, t0, a4
.LBB11_16:                              #   in Loop: Header=BB11_17 Depth=3
	sw	a2, 0(a0)
	addi	a4, a4, 64
	addi	t4, t4, 8
	addi	t5, t5, 8
	addi	t6, t6, 8
	li	a0, 256
	beq	a4, a0, .LBB11_28
.LBB11_17:                              #   Parent Loop BB11_4 Depth=1
                                        #     Parent Loop BB11_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	ra, 0(t4)
	add	a0, ra, a1
	lhu	a0, 0(a0)
	ld	s7, 496(sp)                     # 8-byte Folded Reload
	add	s7, s7, a4
	lw	a2, 1024(s7)
	ld	a3, 0(t6)
	ld	s11, 0(t5)
	subw	a0, a0, a2
	add	a2, a3, a1
	lhu	a2, 0(a2)
	addi	s0, s7, 2047
	lw	s4, 1(s0)
	add	s9, s11, a1
	lhu	s9, 0(s9)
	lw	s2, 0(s7)
	subw	a2, a2, s4
	subw	a2, a2, a0
	ld	s10, 504(sp)                    # 8-byte Folded Reload
	add	s10, s10, a4
	sw	a2, -8(s10)
	sraiw	a2, a2, 1
	add	a0, a2, a0
	subw	a2, s9, s2
	subw	a2, a2, a0
	ld	s4, 520(sp)                     # 8-byte Folded Reload
	add	s4, s4, a4
	sw	a2, -8(s4)
	sraiw	a2, a2, 1
	add	a2, a2, a0
	ld	s9, 512(sp)                     # 8-byte Folded Reload
	add	s9, s9, a4
	sw	a2, -8(s9)
	beqz	s3, .LBB11_19
# %bb.18:                               #   in Loop: Header=BB11_17 Depth=3
	add	a0, t3, a4
	j	.LBB11_20
.LBB11_19:                              #   in Loop: Header=BB11_17 Depth=3
	ld	a0, 488(sp)                     # 8-byte Folded Reload
	add	a0, a0, a4
.LBB11_20:                              #   in Loop: Header=BB11_17 Depth=3
	sw	a2, 0(a0)
	add	a0, ra, s8
	lhu	a0, 0(a0)
	lw	a2, 1028(s7)
	subw	a0, a0, a2
	add	a2, a3, s8
	lhu	a2, 0(a2)
	lw	s2, 5(s0)
	add	s1, s11, s8
	lhu	s1, 0(s1)
	lw	a5, 4(s7)
	subw	a2, a2, s2
	subw	a2, a2, a0
	sw	a2, -4(s10)
	sraiw	a2, a2, 1
	add	a0, a2, a0
	subw	s1, s1, a5
	subw	s1, s1, a0
	sw	s1, -4(s4)
	sraiw	a2, s1, 1
	add	a2, a2, a0
	sw	a2, -4(s9)
	beqz	s3, .LBB11_22
# %bb.21:                               #   in Loop: Header=BB11_17 Depth=3
	add	a0, t2, a4
	j	.LBB11_23
.LBB11_22:                              #   in Loop: Header=BB11_17 Depth=3
	add	a0, a7, a4
.LBB11_23:                              #   in Loop: Header=BB11_17 Depth=3
	sw	a2, 0(a0)
	add	a0, ra, s5
	lhu	a0, 0(a0)
	lw	a2, 1032(s7)
	subw	a0, a0, a2
	add	a2, a3, s5
	lhu	a2, 0(a2)
	lw	a5, 9(s0)
	add	s1, s11, s5
	lhu	s1, 0(s1)
	lw	s2, 8(s7)
	subw	a2, a2, a5
	subw	a2, a2, a0
	sw	a2, 0(s10)
	sraiw	a2, a2, 1
	add	a0, a2, a0
	subw	a2, s1, s2
	subw	a2, a2, a0
	sw	a2, 0(s4)
	sraiw	a2, a2, 1
	add	a2, a2, a0
	sw	a2, 0(s9)
	beqz	s3, .LBB11_25
# %bb.24:                               #   in Loop: Header=BB11_17 Depth=3
	add	a0, t1, a4
	j	.LBB11_26
.LBB11_25:                              #   in Loop: Header=BB11_17 Depth=3
	add	a0, a6, a4
.LBB11_26:                              #   in Loop: Header=BB11_17 Depth=3
	sw	a2, 0(a0)
	add	ra, ra, s6
	lhu	a0, 0(ra)
	lw	a2, 1036(s7)
	subw	a0, a0, a2
	add	a3, a3, s6
	lhu	a2, 0(a3)
	lw	a3, 13(s0)
	add	s11, s11, s6
	lhu	a5, 0(s11)
	lw	s0, 12(s7)
	subw	a2, a2, a3
	subw	a2, a2, a0
	sw	a2, 4(s10)
	sraiw	a2, a2, 1
	add	a0, a2, a0
	subw	a5, a5, s0
	subw	a5, a5, a0
	sw	a5, 4(s4)
	sraiw	a2, a5, 1
	add	a2, a2, a0
	sw	a2, 4(s9)
	bnez	s3, .LBB11_15
# %bb.27:                               #   in Loop: Header=BB11_17 Depth=3
	ld	a0, 480(sp)                     # 8-byte Folded Reload
	add	a0, a0, a4
	j	.LBB11_16
.LBB11_28:                              #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	addi	a0, a0, -1
	seqz	a0, a0
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	or	a0, a0, a1
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	s7, 216(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB11_39
# %bb.29:                               #   in Loop: Header=BB11_9 Depth=2
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	ld	s6, 344(sp)                     # 8-byte Folded Reload
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	s2, 232(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	ld	s10, 256(sp)                    # 8-byte Folded Reload
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	bnez	s3, .LBB11_8
# %bb.30:                               #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	lw	a0, 24(a0)
	li	a1, 3
	bne	a0, a1, .LBB11_40
# %bb.31:                               #   in Loop: Header=BB11_9 Depth=2
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	addi	a2, sp, 532
	or	a0, a0, a1
	beqz	a0, .LBB11_42
# %bb.32:                               #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	call	dct_luma_sp2
	j	.LBB11_43
.LBB11_33:                              #   in Loop: Header=BB11_9 Depth=2
	mv	ra, t4
	sd	s8, 456(sp)                     # 8-byte Folded Spill
	sd	s2, 328(sp)                     # 8-byte Folded Spill
	addi	a3, a1, 2
	add	a0, t3, a3
	lhu	a0, 0(a0)
	addi	a7, s1, 2
	add	a2, t5, a7
	lhu	a2, 0(a2)
	ld	s2, 488(sp)                     # 8-byte Folded Reload
	sw	t0, 0(s2)
	subw	a0, a0, a2
	sw	a0, 4(s2)
	addi	a6, a1, 4
	add	a0, t3, a6
	lhu	a0, 0(a0)
	addi	t0, s1, 4
	add	a2, t5, t0
	lhu	a2, 0(a2)
	addi	t1, a1, 6
	add	t3, t3, t1
	lhu	t3, 0(t3)
	addi	t2, s1, 6
	add	t5, t5, t2
	lhu	t4, 0(t5)
	ld	t5, 8(a5)
	subw	a0, a0, a2
	sw	a0, 8(s2)
	subw	t3, t3, t4
	add	a0, t5, a1
	lhu	a0, 0(a0)
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	add	t4, a2, s1
	lhu	t4, 0(t4)
	mv	s5, t6
	add	t6, t5, a3
	lhu	t6, 0(t6)
	add	s0, a2, a7
	lhu	s0, 0(s0)
	sw	t3, 12(s2)
	subw	a0, a0, t4
	sw	a0, 64(s2)
	subw	t6, t6, s0
	sw	t6, 68(s2)
	add	a0, t5, a6
	lhu	a0, 0(a0)
	add	t3, a2, t0
	lhu	t3, 0(t3)
	add	t5, t5, t1
	lhu	t4, 0(t5)
	add	a2, a2, t2
	lhu	a2, 0(a2)
	ld	t5, 16(a5)
	subw	a0, a0, t3
	sw	a0, 72(s2)
	subw	t4, t4, a2
	add	a0, t5, a1
	lhu	a0, 0(a0)
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	add	t3, a2, s1
	lhu	t3, 0(t3)
	add	t6, t5, a3
	lhu	t6, 0(t6)
	add	s0, a2, a7
	lhu	s0, 0(s0)
	sw	t4, 76(s2)
	subw	a0, a0, t3
	sw	a0, 128(s2)
	subw	t6, t6, s0
	sw	t6, 132(s2)
	mv	t6, s5
	add	a0, t5, a6
	lhu	a0, 0(a0)
	add	t3, a2, t0
	lhu	t3, 0(t3)
	add	t5, t5, t1
	lhu	t4, 0(t5)
	add	a2, a2, t2
	lhu	a2, 0(a2)
	ld	a5, 24(a5)
	subw	a0, a0, t3
	sw	a0, 136(s2)
	subw	t4, t4, a2
	add	a1, a5, a1
	lhu	a0, 0(a1)
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	add	s1, a4, s1
	lhu	a1, 0(s1)
	add	a3, a5, a3
	lhu	a2, 0(a3)
	add	a7, a4, a7
	lhu	a3, 0(a7)
	sw	t4, 140(s2)
	subw	a0, a0, a1
	sw	a0, 192(s2)
	subw	a2, a2, a3
	sw	a2, 196(s2)
	add	a6, a5, a6
	lhu	a0, 0(a6)
	add	t0, a4, t0
	lhu	a1, 0(t0)
	add	a5, a5, t1
	lhu	a2, 0(a5)
	add	a4, a4, t2
	lhu	a3, 0(a4)
	lw	a4, 0(s5)
	subw	a0, a0, a1
	sw	a0, 200(s2)
	subw	a2, a2, a3
	addi	a4, a4, -1
	seqz	a0, a4
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	or	a0, a0, a1
	sw	a2, 204(s2)
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	s2, 232(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	s7, 216(sp)                     # 8-byte Folded Reload
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_36
# %bb.34:                               #   in Loop: Header=BB11_9 Depth=2
	lw	a0, 284(t6)
	lw	a1, 40(ra)
	negw	a0, a0
	bne	a1, a0, .LBB11_8
# %bb.35:                               #   in Loop: Header=BB11_9 Depth=2
	lw	a0, 344(t6)
	li	a1, 1
	bne	a0, a1, .LBB11_8
.LBB11_36:                              #   in Loop: Header=BB11_9 Depth=2
	lw	a0, 24(ra)
	li	a1, 3
	bne	a0, a1, .LBB11_41
# %bb.37:                               #   in Loop: Header=BB11_9 Depth=2
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	addi	a2, sp, 532
	or	a0, a0, a1
	beqz	a0, .LBB11_45
# %bb.38:                               #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	call	dct_luma_sp2
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB11_44
	j	.LBB11_46
.LBB11_39:                              #   in Loop: Header=BB11_9 Depth=2
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	ld	s6, 344(sp)                     # 8-byte Folded Reload
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	s2, 232(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	ld	s10, 256(sp)                    # 8-byte Folded Reload
	j	.LBB11_7
.LBB11_40:                              #   in Loop: Header=BB11_9 Depth=2
	addi	a2, sp, 532
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	li	a3, 0
	call	dct_luma
	j	.LBB11_43
.LBB11_41:                              #   in Loop: Header=BB11_9 Depth=2
	addi	a2, sp, 532
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	li	a3, 0
	call	dct_luma
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB11_44
	j	.LBB11_46
.LBB11_42:                              #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	call	dct_luma_sp
.LBB11_43:                              #   in Loop: Header=BB11_9 Depth=2
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	ld	a5, 272(sp)                     # 8-byte Folded Reload
	add	a5, a1, a5
	lw	a1, 0(a5)
	lui	a4, %hi(rec_resG)
	addi	a4, a4, %lo(rec_resG)
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	ld	a6, 472(sp)                     # 8-byte Folded Reload
	add	a3, a2, a6
	sw	a1, 0(a3)
	lw	a1, 4(a5)
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	add	a3, a2, a7
	sw	a1, 0(a3)
	lw	a1, 8(a5)
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	add	a3, a2, t0
	sw	a1, 0(a3)
	lw	a1, 12(a5)
	ld	t1, 320(sp)                     # 8-byte Folded Reload
	add	a2, a2, t1
	sw	a1, 0(a2)
	lw	a1, 64(a5)
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	add	a3, a2, a6
	sw	a1, 0(a3)
	lw	a1, 68(a5)
	add	a3, a2, a7
	sw	a1, 0(a3)
	lw	a1, 72(a5)
	add	a3, a2, t0
	sw	a1, 0(a3)
	lw	a1, 76(a5)
	add	a2, a2, t1
	sw	a1, 0(a2)
	lw	a1, 128(a5)
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	add	a3, a2, a6
	sw	a1, 0(a3)
	lw	a1, 132(a5)
	add	a3, a2, a7
	sw	a1, 0(a3)
	lw	a1, 136(a5)
	add	a3, a2, t0
	sw	a1, 0(a3)
	lw	a1, 140(a5)
	add	a2, a2, t1
	sw	a1, 0(a2)
	lw	a1, 192(a5)
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	add	a3, a2, a6
	sw	a1, 0(a3)
	lw	a1, 196(a5)
	add	a3, a2, a7
	sw	a1, 0(a3)
	lw	a1, 200(a5)
	add	a3, a2, t0
	sw	a1, 0(a3)
	lw	a1, 204(a5)
	add	a2, a2, t1
	sw	a1, 0(a2)
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_46
.LBB11_44:                              #   in Loop: Header=BB11_9 Depth=2
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a3)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a4)
	li	a2, 1
	ld	a6, 328(sp)                     # 8-byte Folded Reload
	sllw	a2, a2, a6
	or	a0, a0, a2
	sd	a0, 0(a3)
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	or	a0, a1, a0
	sw	a0, 0(a4)
	j	.LBB11_7
.LBB11_45:                              #   in Loop: Header=BB11_9 Depth=2
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	call	dct_luma_sp
	ld	a7, 440(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB11_44
.LBB11_46:                              #   in Loop: Header=BB11_9 Depth=2
	sd	zero, 104(sp)                   # 8-byte Folded Spill
	j	.LBB11_7
.LBB11_47:
	beqz	s3, .LBB11_55
# %bb.48:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 96(a0)
	addi	a0, a0, -1
	seqz	a0, a0
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	bnez	a0, .LBB11_55
# %bb.49:
	lw	a0, 24(a1)
	li	a2, 3
	beq	a0, a2, .LBB11_51
# %bb.50:
	addi	a1, sp, 532
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	li	a2, 0
	call	dct_luma8x8
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sd	a0, 104(sp)                     # 8-byte Folded Spill
.LBB11_51:
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 460(a0)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB11_53
# %bb.52:
	lui	a0, 3
	addiw	a0, a0, 824
	add	a0, a1, a0
	lw	a3, 0(a0)
	lui	a1, %hi(rec_resG)
	addi	a1, a1, %lo(rec_resG)
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, a4
	slli	a2, a2, 2
	add	a4, a1, a2
	sw	a3, 0(a4)
	lw	a4, 4(a0)
	addi	a3, a2, 4
	add	a5, a1, a3
	sw	a4, 0(a5)
	lw	a5, 8(a0)
	addi	a4, a2, 8
	add	a6, a1, a4
	sw	a5, 0(a6)
	lw	a6, 12(a0)
	addi	a5, a2, 12
	add	a7, a1, a5
	sw	a6, 0(a7)
	lw	a7, 16(a0)
	addi	a6, a2, 16
	add	t0, a1, a6
	sw	a7, 0(t0)
	lw	t0, 20(a0)
	addi	a7, a2, 20
	add	t1, a1, a7
	sw	t0, 0(t1)
	lw	t1, 24(a0)
	addi	t0, a2, 24
	add	t2, a1, t0
	sw	t1, 0(t2)
	lw	t2, 28(a0)
	ori	t1, a2, 28
	add	t3, a1, t1
	sw	t2, 0(t3)
	lw	t2, 64(a0)
	addi	t3, a1, 64
	add	t4, t3, a2
	sw	t2, 0(t4)
	lw	t2, 68(a0)
	add	t4, t3, a3
	sw	t2, 0(t4)
	lw	t2, 72(a0)
	add	t4, t3, a4
	sw	t2, 0(t4)
	lw	t2, 76(a0)
	add	t4, t3, a5
	sw	t2, 0(t4)
	lw	t2, 80(a0)
	add	t4, t3, a6
	sw	t2, 0(t4)
	lw	t2, 84(a0)
	add	t4, t3, a7
	sw	t2, 0(t4)
	lw	t2, 88(a0)
	add	t4, t3, t0
	sw	t2, 0(t4)
	lw	t2, 92(a0)
	add	t3, t3, t1
	sw	t2, 0(t3)
	lw	t2, 128(a0)
	addi	t3, a1, 128
	add	t4, t3, a2
	sw	t2, 0(t4)
	lw	t2, 132(a0)
	add	t4, t3, a3
	sw	t2, 0(t4)
	lw	t2, 136(a0)
	add	t4, t3, a4
	sw	t2, 0(t4)
	lw	t2, 140(a0)
	add	t4, t3, a5
	sw	t2, 0(t4)
	lw	t2, 144(a0)
	add	t4, t3, a6
	sw	t2, 0(t4)
	lw	t2, 148(a0)
	add	t4, t3, a7
	sw	t2, 0(t4)
	lw	t2, 152(a0)
	add	t4, t3, t0
	sw	t2, 0(t4)
	lw	t2, 156(a0)
	add	t3, t3, t1
	sw	t2, 0(t3)
	lw	t2, 192(a0)
	addi	t3, a1, 192
	add	t4, t3, a2
	sw	t2, 0(t4)
	lw	t2, 196(a0)
	add	t4, t3, a3
	sw	t2, 0(t4)
	lw	t2, 200(a0)
	add	t4, t3, a4
	sw	t2, 0(t4)
	lw	t2, 204(a0)
	add	t4, t3, a5
	sw	t2, 0(t4)
	lw	t2, 208(a0)
	add	t4, t3, a6
	sw	t2, 0(t4)
	lw	t2, 212(a0)
	add	t4, t3, a7
	sw	t2, 0(t4)
	lw	t2, 216(a0)
	add	t4, t3, t0
	sw	t2, 0(t4)
	lw	t2, 220(a0)
	add	t3, t3, t1
	sw	t2, 0(t3)
	lw	t2, 256(a0)
	addi	t3, a1, 256
	add	t4, t3, a2
	sw	t2, 0(t4)
	lw	t2, 260(a0)
	add	t4, t3, a3
	sw	t2, 0(t4)
	lw	t2, 264(a0)
	add	t4, t3, a4
	sw	t2, 0(t4)
	lw	t2, 268(a0)
	add	t4, t3, a5
	sw	t2, 0(t4)
	lw	t2, 272(a0)
	add	t4, t3, a6
	sw	t2, 0(t4)
	lw	t2, 276(a0)
	add	t4, t3, a7
	sw	t2, 0(t4)
	lw	t2, 280(a0)
	add	t4, t3, t0
	sw	t2, 0(t4)
	lw	t2, 284(a0)
	add	t3, t3, t1
	sw	t2, 0(t3)
	lw	t2, 320(a0)
	addi	t3, a1, 320
	add	t4, t3, a2
	sw	t2, 0(t4)
	lw	t2, 324(a0)
	add	t4, t3, a3
	sw	t2, 0(t4)
	lw	t2, 328(a0)
	add	t4, t3, a4
	sw	t2, 0(t4)
	lw	t2, 332(a0)
	add	t4, t3, a5
	sw	t2, 0(t4)
	lw	t2, 336(a0)
	add	t4, t3, a6
	sw	t2, 0(t4)
	lw	t2, 340(a0)
	add	t4, t3, a7
	sw	t2, 0(t4)
	lw	t2, 344(a0)
	add	t4, t3, t0
	sw	t2, 0(t4)
	lw	t2, 348(a0)
	add	t3, t3, t1
	sw	t2, 0(t3)
	lw	t2, 384(a0)
	addi	t3, a1, 384
	add	t4, t3, a2
	sw	t2, 0(t4)
	lw	t2, 388(a0)
	add	t4, t3, a3
	sw	t2, 0(t4)
	lw	t2, 392(a0)
	add	t4, t3, a4
	sw	t2, 0(t4)
	lw	t2, 396(a0)
	add	t4, t3, a5
	sw	t2, 0(t4)
	lw	t2, 400(a0)
	add	t4, t3, a6
	sw	t2, 0(t4)
	lw	t2, 404(a0)
	add	t4, t3, a7
	sw	t2, 0(t4)
	lw	t2, 408(a0)
	add	t4, t3, t0
	sw	t2, 0(t4)
	lw	t2, 412(a0)
	add	t3, t3, t1
	sw	t2, 0(t3)
	lw	t2, 448(a0)
	addi	a1, a1, 448
	add	a2, a1, a2
	sw	t2, 0(a2)
	lw	a2, 452(a0)
	add	a3, a1, a3
	sw	a2, 0(a3)
	lw	a2, 456(a0)
	add	a4, a1, a4
	sw	a2, 0(a4)
	lw	a2, 460(a0)
	add	a5, a1, a5
	sw	a2, 0(a5)
	lw	a2, 464(a0)
	add	a6, a1, a6
	sw	a2, 0(a6)
	lw	a2, 468(a0)
	add	a7, a1, a7
	sw	a2, 0(a7)
	lw	a2, 472(a0)
	add	t0, a1, t0
	sw	a2, 0(t0)
	lw	a0, 476(a0)
	add	a1, a1, t1
	sw	a0, 0(a1)
.LBB11_53:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_55
# %bb.54:
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	subw	a0, a1, a0
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a4)
	li	a2, 51
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	lw	a3, 0(a5)
	sllw	a0, a2, a0
	or	a0, a1, a0
	sd	a0, 0(a4)
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	or	a0, a3, a0
	sw	a0, 0(a5)
.LBB11_55:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, 22
	addiw	a2, a0, 96
	add	a2, a1, a2
	lw	a0, 0(a2)
	addi	a3, a0, -1
	lw	a0, 532(sp)
	seqz	a3, a3
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	or	a3, a3, a4
	bnez	a3, .LBB11_75
# %bb.56:
	li	a3, 4
	blt	a3, a0, .LBB11_75
# %bb.57:
	lw	a3, 284(a2)
	lw	a4, 40(a1)
	negw	a3, a3
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	bne	a4, a3, .LBB11_59
# %bb.58:
	lw	a3, 344(a2)
	bnez	a3, .LBB11_75
.LBB11_59:
	lw	a3, 24(a1)
	li	a4, 3
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	bne	a3, a4, .LBB11_62
# %bb.60:
	lui	a3, %hi(si_frame_indicator)
	lw	a4, %lo(si_frame_indicator)(a3)
	li	a3, 1
	beq	a4, a3, .LBB11_75
# %bb.61:
	lui	a4, %hi(sp2_frame_indicator)
	lw	a4, %lo(sp2_frame_indicator)(a4)
	beq	a4, a3, .LBB11_75
.LBB11_62:
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a4)
	li	a3, 63
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	subw	a3, a3, a5
	sw	zero, 532(sp)
	and	a0, a0, a3
	sw	a0, 0(a4)
	slli	a0, a6, 1
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	subw	a0, a3, a0
	li	a3, 51
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	ld	a4, 0(a5)
	lw	a2, 364(a2)
	sllw	a0, a3, a0
	not	a0, a0
	and	a0, a4, a0
	sd	a0, 0(a5)
	beqz	a2, .LBB11_67
# %bb.63:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 1
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	lui	a2, %hi(rec_resG)
	addi	a2, a2, %lo(rec_resG)
	add	a3, a3, a2
	addi	a2, a3, 256
	addi	a3, a3, 288
	j	.LBB11_65
.LBB11_64:                              #   in Loop: Header=BB11_65 Depth=1
	addi	a2, a2, 4
	beq	a2, a3, .LBB11_72
.LBB11_65:                              # =>This Inner Loop Header: Depth=1
	sw	zero, -256(a2)
	bge	a0, a7, .LBB11_64
# %bb.66:                               #   in Loop: Header=BB11_65 Depth=1
	sw	zero, -192(a2)
	sw	zero, -128(a2)
	sw	zero, -64(a2)
	sw	zero, 0(a2)
	sw	zero, 64(a2)
	sw	zero, 128(a2)
	sw	zero, 192(a2)
	j	.LBB11_64
.LBB11_67:
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	slli	a0, a4, 5
	slli	a2, a6, 4
	or	a0, a0, a2
	lui	a1, 3
	addi	a4, a4, 1
	addiw	a3, a1, 312
	blt	a7, a4, .LBB11_69
# %bb.68:
	mv	a4, a7
.LBB11_69:
	add	a0, a0, a3
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 3
	slli	a4, a4, 5
	or	a2, a4, a2
	add	a2, a2, a3
	lui	a3, %hi(enc_picture)
	lui	a4, 2
	lui	a5, %hi(img)
.LBB11_70:                              # =>This Inner Loop Header: Depth=1
	ld	a6, %lo(enc_picture)(a3)
	ld	a7, %lo(img)(a5)
	add	a6, a6, a4
	lw	t0, 156(a7)
	ld	a6, -1768(a6)
	slli	t0, t0, 3
	add	a6, a6, t0
	add	a6, a6, a1
	lw	t0, 152(a7)
	ld	a6, 0(a6)
	add	a7, a7, a0
	lh	t1, 14(a7)
	addw	t0, t0, s1
	slli	t0, t0, 1
	add	a6, a6, t0
	sh	t1, 14(a6)
	lh	t0, 12(a7)
	sh	t0, 12(a6)
	lh	t0, 10(a7)
	sh	t0, 10(a6)
	lh	t0, 8(a7)
	sh	t0, 8(a6)
	lh	t0, 6(a7)
	sh	t0, 6(a6)
	lh	t0, 4(a7)
	sh	t0, 4(a6)
	lh	t0, 2(a7)
	sh	t0, 2(a6)
	lh	a7, 0(a7)
	sh	a7, 0(a6)
	addi	a0, a0, 32
	addi	a1, a1, 8
	bne	a0, a2, .LBB11_70
# %bb.71:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
.LBB11_72:
	lw	a0, 24(a1)
	li	a2, 3
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	bne	a0, a2, .LBB11_74
# %bb.73:
	mv	a0, s1
	mv	a1, s2
	call	copyblock_sp
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ori	s0, a0, 4
	mv	a0, s1
	mv	a1, s0
	call	copyblock_sp
	ori	s1, s1, 4
	mv	a0, s1
	mv	a1, s2
	call	copyblock_sp
	mv	a0, s1
	mv	a1, s0
	call	copyblock_sp
	lw	a0, 532(sp)
	j	.LBB11_75
.LBB11_74:
	li	a0, 0
.LBB11_75:
	ld	ra, 632(sp)                     # 8-byte Folded Reload
	ld	s0, 624(sp)                     # 8-byte Folded Reload
	ld	s1, 616(sp)                     # 8-byte Folded Reload
	ld	s2, 608(sp)                     # 8-byte Folded Reload
	ld	s3, 600(sp)                     # 8-byte Folded Reload
	ld	s4, 592(sp)                     # 8-byte Folded Reload
	ld	s5, 584(sp)                     # 8-byte Folded Reload
	ld	s6, 576(sp)                     # 8-byte Folded Reload
	ld	s7, 568(sp)                     # 8-byte Folded Reload
	ld	s8, 560(sp)                     # 8-byte Folded Reload
	ld	s9, 552(sp)                     # 8-byte Folded Reload
	ld	s10, 544(sp)                    # 8-byte Folded Reload
	ld	s11, 536(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 640
	ret
.Lfunc_end11:
	.size	LumaResidualCoding8x8, .Lfunc_end11-LumaResidualCoding8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ChromaPrediction4x4             # -- Begin function ChromaPrediction4x4
	.p2align	2
	.type	ChromaPrediction4x4,@function
ChromaPrediction4x4:                    # @ChromaPrediction4x4
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
	lui	t0, %hi(active_pps)
	ld	t1, %lo(active_pps)(t0)
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	mv	s3, a7
	mv	s4, a6
	mv	s6, a5
	mv	a6, a4
	mv	s5, a3
	mv	s0, a2
	mv	s1, a1
	mv	s2, a0
	lw	a2, 192(t1)
	lui	a0, 22
	add	a0, t0, a0
	lui	a1, 8
	add	a1, t0, a1
	beqz	a2, .LBB12_3
# %bb.1:
	lw	a2, 24(t0)
	li	s8, 1
	beqz	a2, .LBB12_6
# %bb.2:
	li	a3, 3
	beq	a2, a3, .LBB12_6
.LBB12_3:
	lw	a2, 196(t1)
	beqz	a2, .LBB12_5
# %bb.4:
	lw	a2, 24(t0)
	addi	a2, a2, -1
	seqz	s8, a2
	j	.LBB12_6
.LBB12_5:
	li	s8, 0
.LBB12_6:
	ld	a1, -1192(a1)
	lw	a2, 12(t0)
	ld	s7, -776(a0)
	li	a0, 2
	bne	s5, a0, .LBB12_13
# %bb.7:
	li	a0, 1
	bne	s6, a0, .LBB12_13
# %bb.8:
	bne	a6, a0, .LBB12_13
# %bb.9:
	or	a0, s3, s4
	bnez	a0, .LBB12_13
# %bb.10:
	li	a0, 528
	mul	a0, a2, a0
	add	a0, a1, a0
	lhu	a0, 476(a0)
	beqz	a0, .LBB12_13
# %bb.11:
	li	a2, 1
	lui	a1, 22
	beq	a0, a2, .LBB12_36
# %bb.12:
	addiw	a0, a1, -760
	j	.LBB12_37
.LBB12_13:
	li	a0, -1
	beq	s5, a0, .LBB12_57
# %bb.14:
	ori	a0, s5, 2
	li	a1, 2
	seqz	s9, s5
	beq	a0, a1, .LBB12_38
# %bb.15:
	addiw	a0, s5, -1
	li	a1, 1
	bltu	a1, a0, .LBB12_17
.LBB12_16:
	lui	a0, %hi(ChromaPrediction4x4.bw_pred)
	addi	a0, a0, %lo(ChromaPrediction4x4.bw_pred)
	li	a4, 1
	mv	a1, s1
	mv	a2, s0
	mv	a3, s7
	mv	a5, s3
	mv	a6, s6
	mv	a7, s2
	call	OneComponentChromaPrediction4x4
.LBB12_17:
	addiw	a0, s1, 4
	addiw	a1, s0, 4
	beqz	s8, .LBB12_33
# %bb.18:
	lui	a2, 3
	li	a3, 2
	addiw	a2, a2, 316
	bne	s5, a3, .LBB12_39
# %bb.19:
	lui	a3, %hi(wbp_weight)
	ld	a3, %lo(wbp_weight)(a3)
	ld	a4, 0(a3)
	slli	s4, s4, 3
	ld	a3, 8(a3)
	add	a4, a4, s4
	ld	a4, 0(a4)
	slli	s3, s3, 3
	add	a3, a3, s4
	ld	a3, 0(a3)
	add	a4, a4, s3
	ld	a4, 0(a4)
	slli	s2, s2, 2
	add	a3, a3, s3
	ld	a5, 0(a3)
	lui	a3, %hi(wp_offset)
	ld	a6, %lo(wp_offset)(a3)
	addi	s2, s2, 4
	add	a3, a4, s2
	add	a4, a5, s2
	ld	a7, 0(a6)
	lui	a5, %hi(wp_chroma_round)
	ld	a6, 8(a6)
	lw	a5, %lo(wp_chroma_round)(a5)
	add	a7, a7, s4
	ld	a7, 0(a7)
	add	a6, a6, s3
	ld	a6, 0(a6)
	lui	t0, %hi(chroma_log_weight_denom)
	add	a7, a7, s2
	lw	a7, 0(a7)
	add	a6, a6, s2
	lw	t2, 0(a6)
	lw	a6, %lo(chroma_log_weight_denom)(t0)
	lui	t0, %hi(img)
	ld	t1, %lo(img)(t0)
	add	a7, a7, t2
	addi	a7, a7, 1
	lui	t0, 22
	add	t0, t1, t0
	slli	t3, s0, 5
	slli	t2, s1, 1
	add	t3, t3, t2
	addi	s0, s0, 1
	add	t3, t3, a2
	blt	a1, s0, .LBB12_21
# %bb.20:
	mv	s0, a1
.LBB12_21:
	lw	a1, 0(a3)
	lw	a3, 0(a4)
	slli	a4, a5, 1
	addi	a5, a6, 1
	sraiw	a6, a7, 1
	lw	a7, 424(t0)
	addi	s1, s1, 1
	add	t0, t1, t3
	slli	s0, s0, 5
	add	t2, s0, t2
	add	a2, t2, a2
	add	a2, t1, a2
	lui	t1, %hi(ChromaPrediction4x4.fw_pred)
	addi	t1, t1, %lo(ChromaPrediction4x4.fw_pred)
	lui	t2, %hi(ChromaPrediction4x4.bw_pred)
	addi	t2, t2, %lo(ChromaPrediction4x4.bw_pred)
	j	.LBB12_23
.LBB12_22:                              #   in Loop: Header=BB12_23 Depth=1
	addi	t1, t1, 16
	addi	t2, t2, 16
	sh	t3, 2(t0)
	addi	t0, t0, 32
	beq	t0, a2, .LBB12_90
.LBB12_23:                              # =>This Inner Loop Header: Depth=1
	lw	t3, 0(t1)
	lw	t4, 0(t2)
	mul	t3, t3, a1
	mul	t4, t4, a3
	add	t3, t4, t3
	add	t3, t3, a4
	sraw	t3, t3, a5
	addw	t3, a6, t3
	mv	t4, a7
	blt	a7, t3, .LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_23 Depth=1
	sgtz	t4, t3
	neg	t4, t4
	and	t4, t4, t3
.LBB12_25:                              #   in Loop: Header=BB12_23 Depth=1
	sh	t4, -4(t0)
	bge	s1, a0, .LBB12_32
# %bb.26:                               #   in Loop: Header=BB12_23 Depth=1
	lw	t3, 4(t1)
	lw	t4, 4(t2)
	mul	t3, t3, a1
	mul	t4, t4, a3
	add	t3, t4, t3
	add	t3, t3, a4
	sraw	t3, t3, a5
	addw	t4, a6, t3
	mv	t3, a7
	blt	a7, t4, .LBB12_28
# %bb.27:                               #   in Loop: Header=BB12_23 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
.LBB12_28:                              #   in Loop: Header=BB12_23 Depth=1
	lw	t4, 8(t1)
	lw	t5, 8(t2)
	mul	t4, t4, a1
	mul	t5, t5, a3
	add	t4, t5, t4
	add	t4, t4, a4
	sraw	t4, t4, a5
	addw	t4, a6, t4
	sh	t3, -2(t0)
	mv	t3, a7
	blt	a7, t4, .LBB12_30
# %bb.29:                               #   in Loop: Header=BB12_23 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
.LBB12_30:                              #   in Loop: Header=BB12_23 Depth=1
	lw	t4, 12(t1)
	lw	t5, 12(t2)
	mul	t4, t4, a1
	mul	t5, t5, a3
	add	t4, t5, t4
	add	t4, t4, a4
	sraw	t4, t4, a5
	addw	t4, a6, t4
	sh	t3, 0(t0)
	mv	t3, a7
	blt	a7, t4, .LBB12_22
# %bb.31:                               #   in Loop: Header=BB12_23 Depth=1
	sgtz	t3, t4
	neg	t3, t3
	and	t3, t3, t4
	j	.LBB12_22
.LBB12_32:                              #   in Loop: Header=BB12_23 Depth=1
	addi	t1, t1, 4
	addi	t2, t2, 4
	addi	t0, t0, 32
	bne	t0, a2, .LBB12_23
	j	.LBB12_90
.LBB12_33:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 3
	addiw	a3, a3, 312
	li	a4, 2
	add	a2, a2, a3
	bne	s5, a4, .LBB12_54
# %bb.34:
	lui	a7, %hi(ChromaPrediction4x4.fw_pred)
	lw	a3, %lo(ChromaPrediction4x4.fw_pred)(a7)
	lui	t0, %hi(ChromaPrediction4x4.bw_pred)
	lw	a4, %lo(ChromaPrediction4x4.bw_pred)(t0)
	add	a3, a3, a4
	addi	a3, a3, 1
	srli	a3, a3, 1
	slli	a6, s0, 5
	add	a6, a2, a6
	slli	a4, s1, 1
	add	a5, a6, a4
	sh	a3, 0(a5)
	addi	s1, s1, 1
	slli	a3, s1, 1
	bge	s1, a0, .LBB12_58
# %bb.35:
	lui	a7, %hi(ChromaPrediction4x4.fw_pred)
	addi	a7, a7, %lo(ChromaPrediction4x4.fw_pred)
	lw	t0, 4(a7)
	lui	t1, %hi(ChromaPrediction4x4.bw_pred)
	addi	t1, t1, %lo(ChromaPrediction4x4.bw_pred)
	lw	t2, 4(t1)
	add	t0, t0, t2
	addi	t0, t0, 1
	lw	t2, 8(a7)
	lw	t3, 8(t1)
	srli	t0, t0, 1
	add	a6, a6, a3
	sh	t0, 0(a6)
	add	t2, t2, t3
	lw	a6, 12(a7)
	lw	t0, 12(t1)
	addi	t2, t2, 1
	srli	t2, t2, 1
	sh	t2, 4(a5)
	add	a6, a6, t0
	addi	a6, a6, 1
	srli	a6, a6, 1
	sh	a6, 6(a5)
	addi	a5, t1, 16
	addi	a6, a7, 16
	addi	a7, s0, 1
	blt	a7, a1, .LBB12_59
	j	.LBB12_90
.LBB12_36:
	addiw	a0, a1, -768
.LBB12_37:
	add	a0, t0, a0
	ld	s7, 0(a0)
	li	s9, 0
.LBB12_38:
	lui	a0, %hi(ChromaPrediction4x4.fw_pred)
	addi	a0, a0, %lo(ChromaPrediction4x4.fw_pred)
	mv	a1, s1
	mv	a2, s0
	mv	a3, s7
	li	a4, 0
	mv	a5, s4
	mv	a7, s2
	call	OneComponentChromaPrediction4x4
	addiw	a0, s5, -1
	li	a1, 1
	bgeu	a1, a0, .LBB12_16
	j	.LBB12_17
.LBB12_39:
	lui	a3, %hi(wp_weight)
	ld	a3, %lo(wp_weight)(a3)
	beqz	s9, .LBB12_61
# %bb.40:
	ld	a3, 0(a3)
	slli	s4, s4, 3
	lui	a4, %hi(wp_offset)
	ld	a4, %lo(wp_offset)(a4)
	add	a3, a3, s4
	ld	a3, 0(a3)
	slli	s2, s2, 2
	ld	a5, 0(a4)
	addi	a6, s2, 4
	add	a3, a3, a6
	lui	a4, %hi(wp_chroma_round)
	add	a5, a5, s4
	ld	a7, 0(a5)
	lui	a5, %hi(img)
	ld	t0, %lo(img)(a5)
	lui	a5, %hi(chroma_log_weight_denom)
	add	a6, a7, a6
	lui	a7, 22
	add	a7, t0, a7
	slli	t2, s0, 5
	slli	t1, s1, 1
	add	t2, t2, t1
	addi	s0, s0, 1
	add	t2, t2, a2
	blt	a1, s0, .LBB12_42
# %bb.41:
	mv	s0, a1
.LBB12_42:
	lw	a1, 0(a3)
	lw	a3, %lo(wp_chroma_round)(a4)
	lw	a4, %lo(chroma_log_weight_denom)(a5)
	lw	a5, 0(a6)
	lw	a6, 424(a7)
	addi	s1, s1, 1
	add	a7, t0, t2
	slli	s0, s0, 5
	add	t1, s0, t1
	add	a2, t1, a2
	add	a2, t0, a2
	lui	t0, %hi(ChromaPrediction4x4.fw_pred)
	addi	t0, t0, %lo(ChromaPrediction4x4.fw_pred)
	j	.LBB12_44
.LBB12_43:                              #   in Loop: Header=BB12_44 Depth=1
	addi	t0, t0, 16
	sh	t1, 2(a7)
	addi	a7, a7, 32
	beq	a7, a2, .LBB12_90
.LBB12_44:                              # =>This Inner Loop Header: Depth=1
	lw	t1, 0(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t1, a5, t1
	mv	t2, a6
	blt	a6, t1, .LBB12_46
# %bb.45:                               #   in Loop: Header=BB12_44 Depth=1
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
.LBB12_46:                              #   in Loop: Header=BB12_44 Depth=1
	sh	t2, -4(a7)
	bge	s1, a0, .LBB12_53
# %bb.47:                               #   in Loop: Header=BB12_44 Depth=1
	lw	t1, 4(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t2, a5, t1
	mv	t1, a6
	blt	a6, t2, .LBB12_49
# %bb.48:                               #   in Loop: Header=BB12_44 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB12_49:                              #   in Loop: Header=BB12_44 Depth=1
	lw	t2, 8(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, -2(a7)
	mv	t1, a6
	blt	a6, t2, .LBB12_51
# %bb.50:                               #   in Loop: Header=BB12_44 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB12_51:                              #   in Loop: Header=BB12_44 Depth=1
	lw	t2, 12(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, 0(a7)
	mv	t1, a6
	blt	a6, t2, .LBB12_43
# %bb.52:                               #   in Loop: Header=BB12_44 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
	j	.LBB12_43
.LBB12_53:                              #   in Loop: Header=BB12_44 Depth=1
	addi	t0, t0, 4
	addi	a7, a7, 32
	bne	a7, a2, .LBB12_44
	j	.LBB12_90
.LBB12_54:
	slli	a4, s0, 5
	add	a4, a2, a4
	slli	a3, s1, 1
	add	a5, a4, a3
	addi	a6, s1, 1
	beqz	s9, .LBB12_75
# %bb.55:
	lui	a7, %hi(ChromaPrediction4x4.fw_pred)
	lh	a7, %lo(ChromaPrediction4x4.fw_pred)(a7)
	sh	a7, 0(a5)
	bge	a6, a0, .LBB12_79
# %bb.56:
	lui	a0, %hi(ChromaPrediction4x4.fw_pred)
	addi	a0, a0, %lo(ChromaPrediction4x4.fw_pred)
	j	.LBB12_77
.LBB12_57:
	li	a0, 528
	mul	a0, a2, a0
	add	a0, a1, a0
	lw	a0, 416(a0)
	slli	s0, s0, 5
	slli	s1, s1, 1
	add	a2, s0, s1
	lui	a1, 3
	addiw	a1, a1, 312
	add	a2, a2, a1
	add	a3, t0, a2
	slli	s2, s2, 11
	add	t0, t0, s2
	slli	a0, a0, 9
	add	t0, t0, s0
	add	t0, t0, s1
	lui	a2, 2
	addiw	a2, a2, 312
	add	t0, t0, a2
	add	t0, t0, a0
	lhu	a4, 6(t0)
	lhu	a5, 4(t0)
	lhu	a6, 2(t0)
	lhu	a7, 0(t0)
	sh	a4, 6(a3)
	sh	a5, 4(a3)
	sh	a6, 2(a3)
	sh	a7, 0(a3)
	lui	a3, %hi(img)
	ld	a4, %lo(img)(a3)
	addi	a5, s0, 32
	add	a6, a5, s1
	add	a6, a6, a1
	add	a6, a4, a6
	add	a4, a4, s2
	add	a4, a4, a5
	add	a4, a4, s1
	add	a4, a4, a2
	add	a4, a4, a0
	lhu	a5, 6(a4)
	lhu	a7, 4(a4)
	lhu	t0, 2(a4)
	lhu	a4, 0(a4)
	sh	a5, 6(a6)
	sh	a7, 4(a6)
	sh	t0, 2(a6)
	sh	a4, 0(a6)
	ld	a4, %lo(img)(a3)
	addi	a5, s0, 64
	add	a6, a5, s1
	add	a6, a6, a1
	add	a6, a4, a6
	add	a4, a4, s2
	add	a4, a4, a5
	add	a4, a4, s1
	add	a4, a4, a2
	add	a4, a4, a0
	lhu	a5, 6(a4)
	lhu	a7, 4(a4)
	lhu	t0, 2(a4)
	lhu	a4, 0(a4)
	sh	a5, 6(a6)
	sh	a7, 4(a6)
	sh	t0, 2(a6)
	sh	a4, 0(a6)
	ld	a3, %lo(img)(a3)
	addi	a4, s0, 96
	add	a5, a4, s1
	add	a1, a5, a1
	add	a1, a3, a1
	add	a3, a3, s2
	add	a3, a3, a4
	add	a3, a3, s1
	add	a2, a3, a2
	add	a0, a2, a0
	lhu	a2, 6(a0)
	lhu	a3, 4(a0)
	lhu	a4, 2(a0)
	lhu	a0, 0(a0)
	sh	a2, 6(a1)
	sh	a3, 4(a1)
	sh	a4, 2(a1)
	sh	a0, 0(a1)
	j	.LBB12_90
.LBB12_58:
	addi	a6, a7, %lo(ChromaPrediction4x4.fw_pred)
	addi	a5, t0, %lo(ChromaPrediction4x4.bw_pred)
	addi	a5, a5, 4
	addi	a6, a6, 4
	addi	a7, s0, 1
	bge	a7, a1, .LBB12_90
.LBB12_59:
	lw	a1, 0(a6)
	lw	t0, 0(a5)
	add	a1, a1, t0
	addi	a1, a1, 1
	srli	t0, a1, 1
	slli	a1, a7, 5
	add	a1, a2, a1
	add	a7, a1, a4
	sh	t0, 0(a7)
	bge	s1, a0, .LBB12_81
# %bb.60:
	lw	t0, 4(a6)
	lw	t1, 4(a5)
	add	t0, t0, t1
	addi	t0, t0, 1
	lw	t1, 8(a6)
	lw	t2, 8(a5)
	srli	t0, t0, 1
	add	a1, a1, a3
	sh	t0, 0(a1)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	a1, t1, 1
	lw	t0, 12(a6)
	lw	t1, 12(a5)
	sh	a1, 4(a7)
	addi	a1, a6, 16
	addi	a5, a5, 16
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	a6, t0, 1
	sh	a6, 6(a7)
	j	.LBB12_82
.LBB12_61:
	ld	a3, 8(a3)
	slli	s3, s3, 3
	lui	a4, %hi(wp_offset)
	ld	a4, %lo(wp_offset)(a4)
	add	a3, a3, s3
	ld	a3, 0(a3)
	slli	s2, s2, 2
	ld	a5, 8(a4)
	addi	a6, s2, 4
	add	a3, a3, a6
	lui	a4, %hi(wp_chroma_round)
	add	a5, a5, s3
	ld	a7, 0(a5)
	lui	a5, %hi(img)
	ld	t0, %lo(img)(a5)
	lui	a5, %hi(chroma_log_weight_denom)
	add	a6, a7, a6
	lui	a7, 22
	add	a7, t0, a7
	slli	t2, s0, 5
	slli	t1, s1, 1
	add	t2, t2, t1
	addi	s0, s0, 1
	add	t2, t2, a2
	blt	a1, s0, .LBB12_63
# %bb.62:
	mv	s0, a1
.LBB12_63:
	lw	a1, 0(a3)
	lw	a3, %lo(wp_chroma_round)(a4)
	lw	a4, %lo(chroma_log_weight_denom)(a5)
	lw	a5, 0(a6)
	lw	a6, 424(a7)
	addi	s1, s1, 1
	add	a7, t0, t2
	slli	s0, s0, 5
	add	t1, s0, t1
	add	a2, t1, a2
	add	a2, t0, a2
	lui	t0, %hi(ChromaPrediction4x4.bw_pred)
	addi	t0, t0, %lo(ChromaPrediction4x4.bw_pred)
	j	.LBB12_65
.LBB12_64:                              #   in Loop: Header=BB12_65 Depth=1
	addi	t0, t0, 16
	sh	t1, 2(a7)
	addi	a7, a7, 32
	beq	a7, a2, .LBB12_90
.LBB12_65:                              # =>This Inner Loop Header: Depth=1
	lw	t1, 0(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t1, a5, t1
	mv	t2, a6
	blt	a6, t1, .LBB12_67
# %bb.66:                               #   in Loop: Header=BB12_65 Depth=1
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
.LBB12_67:                              #   in Loop: Header=BB12_65 Depth=1
	sh	t2, -4(a7)
	bge	s1, a0, .LBB12_74
# %bb.68:                               #   in Loop: Header=BB12_65 Depth=1
	lw	t1, 4(t0)
	mul	t1, t1, a1
	add	t1, t1, a3
	sraw	t1, t1, a4
	addw	t2, a5, t1
	mv	t1, a6
	blt	a6, t2, .LBB12_70
# %bb.69:                               #   in Loop: Header=BB12_65 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB12_70:                              #   in Loop: Header=BB12_65 Depth=1
	lw	t2, 8(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, -2(a7)
	mv	t1, a6
	blt	a6, t2, .LBB12_72
# %bb.71:                               #   in Loop: Header=BB12_65 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
.LBB12_72:                              #   in Loop: Header=BB12_65 Depth=1
	lw	t2, 12(t0)
	mul	t2, t2, a1
	add	t2, t2, a3
	sraw	t2, t2, a4
	addw	t2, a5, t2
	sh	t1, 0(a7)
	mv	t1, a6
	blt	a6, t2, .LBB12_64
# %bb.73:                               #   in Loop: Header=BB12_65 Depth=1
	sgtz	t1, t2
	neg	t1, t1
	and	t1, t1, t2
	j	.LBB12_64
.LBB12_74:                              #   in Loop: Header=BB12_65 Depth=1
	addi	t0, t0, 4
	addi	a7, a7, 32
	bne	a7, a2, .LBB12_65
	j	.LBB12_90
.LBB12_75:
	lui	a7, %hi(ChromaPrediction4x4.bw_pred)
	lh	a7, %lo(ChromaPrediction4x4.bw_pred)(a7)
	sh	a7, 0(a5)
	bge	a6, a0, .LBB12_84
# %bb.76:
	lui	a0, %hi(ChromaPrediction4x4.bw_pred)
	addi	a0, a0, %lo(ChromaPrediction4x4.bw_pred)
.LBB12_77:
	lh	a7, 4(a0)
	slli	a6, a6, 1
	lh	t0, 8(a0)
	add	t1, a4, a6
	lh	t2, 12(a0)
	sh	a7, 0(t1)
	sh	t0, 4(a5)
	addi	s0, s0, 1
	sh	t2, 6(a5)
	bge	s0, a1, .LBB12_90
# %bb.78:
	lh	a1, 16(a0)
	slli	s0, s0, 5
	add	a2, a2, s0
	lh	a5, 20(a0)
	add	a7, a2, a3
	sh	a1, 0(a7)
	add	a1, a2, a6
	sh	a5, 0(a1)
	lh	a1, 24(a0)
	addi	a5, a3, 4
	add	a7, a2, a5
	lh	t0, 28(a0)
	sh	a1, 0(a7)
	addi	a1, a3, 6
	add	a2, a2, a1
	sh	t0, 0(a2)
	lh	a2, 32(a0)
	addi	a7, a4, 64
	add	t0, a7, a3
	lh	t1, 36(a0)
	sh	a2, 0(t0)
	add	a2, a7, a6
	lh	t0, 40(a0)
	sh	t1, 0(a2)
	lh	a2, 44(a0)
	add	t1, a7, a5
	sh	t0, 0(t1)
	add	a7, a7, a1
	sh	a2, 0(a7)
	lh	a2, 48(a0)
	addi	a4, a4, 96
	add	a3, a4, a3
	lh	a7, 52(a0)
	sh	a2, 0(a3)
	add	a6, a4, a6
	lh	a2, 56(a0)
	sh	a7, 0(a6)
	lh	a0, 60(a0)
	add	a5, a4, a5
	sh	a2, 0(a5)
	add	a1, a4, a1
	sh	a0, 0(a1)
	j	.LBB12_90
.LBB12_79:
	addi	s0, s0, 1
	bge	s0, a1, .LBB12_90
# %bb.80:
	lui	a0, %hi(ChromaPrediction4x4.fw_pred)
	addi	a0, a0, %lo(ChromaPrediction4x4.fw_pred)
	j	.LBB12_86
.LBB12_81:
	addi	a1, a6, 4
	addi	a5, a5, 4
.LBB12_82:
	lw	a6, 0(a1)
	lw	a7, 0(a5)
	addi	t0, s0, 2
	add	a6, a6, a7
	addi	a6, a6, 1
	srli	t1, a6, 1
	slli	a7, t0, 5
	add	a7, a2, a7
	add	a6, a7, a4
	sh	t1, 0(a6)
	bge	s1, a0, .LBB12_87
# %bb.83:
	lw	t0, 4(a1)
	lw	t1, 4(a5)
	add	t0, t0, t1
	addi	t0, t0, 1
	lw	t1, 8(a1)
	lw	t2, 8(a5)
	srli	t0, t0, 1
	add	a7, a7, a3
	sh	t0, 0(a7)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	a7, t1, 1
	lw	t0, 12(a1)
	lw	t1, 12(a5)
	sh	a7, 4(a6)
	addi	a1, a1, 16
	addi	a5, a5, 16
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	a7, t0, 1
	sh	a7, 6(a6)
	j	.LBB12_88
.LBB12_84:
	addi	s0, s0, 1
	bge	s0, a1, .LBB12_90
# %bb.85:
	lui	a0, %hi(ChromaPrediction4x4.bw_pred)
	addi	a0, a0, %lo(ChromaPrediction4x4.bw_pred)
.LBB12_86:
	lh	a1, 4(a0)
	slli	s0, s0, 5
	add	a3, s0, a3
	lh	a4, 8(a0)
	lh	a0, 12(a0)
	add	a2, a2, a3
	sh	a1, 0(a2)
	sh	a4, 64(a5)
	sh	a0, 96(a5)
	j	.LBB12_90
.LBB12_87:
	addi	a1, a1, 4
	addi	a5, a5, 4
.LBB12_88:
	lw	a6, 0(a1)
	lw	a7, 0(a5)
	addi	s0, s0, 3
	add	a6, a6, a7
	addi	a6, a6, 1
	srli	a6, a6, 1
	slli	s0, s0, 5
	add	a2, a2, s0
	add	a4, a2, a4
	sh	a6, 0(a4)
	bge	s1, a0, .LBB12_90
# %bb.89:
	lw	a0, 4(a1)
	lw	a6, 4(a5)
	add	a0, a0, a6
	add	a2, a2, a3
	lw	a3, 8(a1)
	lw	a6, 8(a5)
	addi	a0, a0, 1
	srli	a0, a0, 1
	sh	a0, 0(a2)
	add	a3, a3, a6
	lw	a0, 12(a1)
	lw	a1, 12(a5)
	addi	a3, a3, 1
	srli	a3, a3, 1
	sh	a3, 4(a4)
	add	a0, a0, a1
	addi	a0, a0, 1
	srli	a0, a0, 1
	sh	a0, 6(a4)
.LBB12_90:
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
.Lfunc_end12:
	.size	ChromaPrediction4x4, .Lfunc_end12-ChromaPrediction4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetModesAndRefframe             # -- Begin function SetModesAndRefframe
	.p2align	2
	.type	SetModesAndRefframe,@function
SetModesAndRefframe:                    # @SetModesAndRefframe
# %bb.0:
	lui	a6, %hi(img)
	ld	a7, %lo(img)(a6)
	lui	a6, 8
	add	a6, a7, a6
	lw	t0, 12(a7)
	ld	a6, -1192(a6)
	li	t1, 528
	mul	t0, t0, t1
	add	a6, a6, t0
	andi	t0, a0, -2
	li	t2, -1
	sh	t2, 0(a5)
	sw	t2, 0(a3)
	sw	t2, 0(a2)
	slli	t1, a0, 2
	add	a6, a6, t1
	lw	t1, 392(a6)
	sh	t2, 0(a4)
	lw	t2, 24(a7)
	slli	a0, a0, 1
	sh	t1, 0(a1)
	li	a1, 1
	andi	a0, a0, 2
	bne	t2, a1, .LBB13_5
# %bb.1:
	beq	t1, a1, .LBB13_6
# %bb.2:
	beqz	t1, .LBB13_5
# %bb.3:
	li	a1, -1
	bne	t1, a1, .LBB13_7
# %bb.4:
	sh	a1, 0(a4)
	sh	a1, 0(a5)
	sw	zero, 0(a2)
	sw	zero, 0(a3)
	ret
.LBB13_5:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	t1, 2
	add	a1, a1, t1
	ld	a1, -1712(a1)
	lw	t1, 148(a7)
	ld	a1, 0(a1)
	addw	t0, t1, t0
	slli	t0, t0, 3
	add	a1, a1, t0
	lw	a7, 144(a7)
	ld	a1, 0(a1)
	addw	a0, a7, a0
	add	a0, a1, a0
	lbu	a1, 0(a0)
	lw	a6, 376(a6)
	sh	a1, 0(a4)
	sh	zero, 0(a5)
	sw	a6, 0(a2)
	sw	zero, 0(a3)
	ret
.LBB13_6:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	t1, 2
	add	a1, a1, t1
	ld	a1, -1712(a1)
	lw	t1, 148(a7)
	ld	a1, 8(a1)
	addw	t0, t1, t0
	slli	t0, t0, 3
	add	a1, a1, t0
	lw	a7, 144(a7)
	ld	a1, 0(a1)
	sh	zero, 0(a4)
	addw	a0, a7, a0
	add	a0, a1, a0
	lbu	a1, 0(a0)
	sw	zero, 0(a2)
	lw	a0, 376(a6)
	sh	a1, 0(a5)
	sw	a0, 0(a3)
	ret
.LBB13_7:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	t1, 2
	add	a1, a1, t1
	ld	a1, -1712(a1)
	lw	t1, 148(a7)
	ld	t2, 0(a1)
	addw	t0, t1, t0
	slli	t0, t0, 3
	add	t2, t2, t0
	lw	a7, 144(a7)
	ld	t1, 0(t2)
	ld	a1, 8(a1)
	addw	a0, a7, a0
	add	t1, t1, a0
	lbu	a7, 0(t1)
	add	a1, a1, t0
	ld	a1, 0(a1)
	sh	a7, 0(a4)
	add	a0, a1, a0
	lbu	a1, 0(a0)
	lw	a0, 376(a6)
	sh	a1, 0(a5)
	sw	a0, 0(a2)
	sw	a0, 0(a3)
	ret
.Lfunc_end13:
	.size	SetModesAndRefframe, .Lfunc_end13-SetModesAndRefframe
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	LumaResidualCoding              # -- Begin function LumaResidualCoding
	.p2align	2
	.type	LumaResidualCoding,@function
LumaResidualCoding:                     # @LumaResidualCoding
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	lui	s3, %hi(img)
	ld	a0, %lo(img)(s3)
	lui	a1, 8
	add	a1, a0, a1
	lw	a0, 12(a0)
	ld	a1, -1192(a1)
	li	a2, 528
	mul	a0, a0, a2
	add	a0, a1, a0
	addi	s0, a0, 364
	sw	zero, 364(a0)
	addi	s1, a0, 368
	sd	zero, 368(a0)
	addi	a1, sp, 14
	addi	a2, sp, 20
	addi	a3, sp, 16
	addi	a4, sp, 12
	addi	a5, sp, 10
	li	a0, 0
	call	SetModesAndRefframe
	lh	a3, 14(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lh	a6, 12(sp)
	lh	a7, 10(sp)
	mv	a0, s0
	mv	a1, s1
	li	a2, 0
	call	LumaResidualCoding8x8
	mv	s2, a0
	li	a0, 1
	addi	a1, sp, 14
	addi	a2, sp, 20
	addi	a3, sp, 16
	addi	a4, sp, 12
	addi	a5, sp, 10
	call	SetModesAndRefframe
	lh	a3, 14(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lh	a6, 12(sp)
	lh	a7, 10(sp)
	li	a2, 1
	mv	a0, s0
	mv	a1, s1
	call	LumaResidualCoding8x8
	add	s4, a0, s2
	li	a0, 2
	addi	a1, sp, 14
	addi	a2, sp, 20
	addi	a3, sp, 16
	addi	a4, sp, 12
	addi	a5, sp, 10
	call	SetModesAndRefframe
	lh	a3, 14(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lh	a6, 12(sp)
	lh	a7, 10(sp)
	li	a2, 2
	mv	a0, s0
	mv	a1, s1
	call	LumaResidualCoding8x8
	mv	s2, a0
	li	a0, 3
	addi	a1, sp, 14
	addi	a2, sp, 20
	addi	a3, sp, 16
	addi	a4, sp, 12
	addi	a5, sp, 10
	call	SetModesAndRefframe
	lh	a3, 14(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lh	a6, 12(sp)
	lh	a7, 10(sp)
	li	a2, 3
	mv	a0, s0
	mv	a1, s1
	call	LumaResidualCoding8x8
	add	a0, a0, s2
	addw	a0, a0, s4
	li	a1, 5
	blt	a1, a0, .LBB14_12
# %bb.1:
	ld	s2, %lo(img)(s3)
	lui	a0, 22
	addiw	a0, a0, 380
	add	a0, s2, a0
	lw	a1, 0(a0)
	lw	a2, 40(s2)
	negw	a1, a1
	bne	a2, a1, .LBB14_3
# %bb.2:
	lw	a1, 60(a0)
	bnez	a1, .LBB14_12
.LBB14_3:
	lw	a1, 24(s2)
	li	a2, 3
	bne	a1, a2, .LBB14_6
# %bb.4:
	lui	a1, %hi(si_frame_indicator)
	lw	a2, %lo(si_frame_indicator)(a1)
	li	a1, 1
	beq	a2, a1, .LBB14_12
# %bb.5:
	lui	a2, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a2)
	beq	a2, a1, .LBB14_12
.LBB14_6:
	lwu	a1, 0(s0)
	lui	a2, 4096
	addi	a2, a2, -16
	lbu	a3, 2(s1)
	lw	a0, 80(a0)
	and	a1, a1, a2
	sw	a1, 0(s0)
	slli	a3, a3, 16
	sd	a3, 0(s1)
	beqz	a0, .LBB14_9
# %bb.7:
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	li	a1, 0
	call	memset
	lw	a0, 24(s2)
	li	a1, 3
	bne	a0, a1, .LBB14_12
.LBB14_8:
	li	a0, 0
	li	a1, 0
	call	copyblock_sp
	li	a1, 4
	li	a0, 0
	call	copyblock_sp
	li	a0, 4
	li	a1, 0
	call	copyblock_sp
	li	a0, 4
	li	a1, 4
	call	copyblock_sp
	li	a0, 8
	li	a1, 0
	call	copyblock_sp
	li	a0, 8
	li	a1, 4
	call	copyblock_sp
	li	a0, 12
	li	a1, 0
	call	copyblock_sp
	li	a0, 12
	li	a1, 4
	call	copyblock_sp
	li	a1, 8
	li	a0, 0
	call	copyblock_sp
	li	a1, 12
	li	a0, 0
	call	copyblock_sp
	li	a0, 4
	li	a1, 8
	call	copyblock_sp
	li	a0, 4
	li	a1, 12
	call	copyblock_sp
	li	a0, 8
	li	a1, 8
	call	copyblock_sp
	li	a0, 8
	li	a1, 12
	call	copyblock_sp
	li	a0, 12
	li	a1, 8
	call	copyblock_sp
	li	a0, 12
	li	a1, 12
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	tail	copyblock_sp
.LBB14_9:                               # %.preheader
	li	s0, 0
	lui	a0, 3
	addiw	s1, a0, 312
	lui	s2, %hi(enc_picture)
	lui	s3, 2
	lui	s4, %hi(img)
	li	s5, 16
.LBB14_10:                              # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(img)(s4)
	ld	a0, %lo(enc_picture)(s2)
	lw	a2, 156(a1)
	add	a0, a0, s3
	ld	a0, -1768(a0)
	add	a2, s0, a2
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a2, 152(a1)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	add	a1, a1, s1
	li	a2, 32
	call	memcpy
	addi	s0, s0, 1
	addi	s1, s1, 32
	bne	s0, s5, .LBB14_10
# %bb.11:
	lui	a0, %hi(img)
	ld	s2, %lo(img)(a0)
	lw	a0, 24(s2)
	li	a1, 3
	beq	a0, a1, .LBB14_8
.LBB14_12:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end14:
	.size	LumaResidualCoding, .Lfunc_end14-LumaResidualCoding
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	TransformDecision               # -- Begin function TransformDecision
	.p2align	2
	.type	TransformDecision,@function
TransformDecision:                      # @TransformDecision
# %bb.0:
	addi	sp, sp, -496
	sd	ra, 488(sp)                     # 8-byte Folded Spill
	sd	s0, 480(sp)                     # 8-byte Folded Spill
	sd	s1, 472(sp)                     # 8-byte Folded Spill
	sd	s2, 464(sp)                     # 8-byte Folded Spill
	sd	s3, 456(sp)                     # 8-byte Folded Spill
	sd	s4, 448(sp)                     # 8-byte Folded Spill
	sd	s5, 440(sp)                     # 8-byte Folded Spill
	sd	s6, 432(sp)                     # 8-byte Folded Spill
	sd	s7, 424(sp)                     # 8-byte Folded Spill
	sd	s8, 416(sp)                     # 8-byte Folded Spill
	sd	s9, 408(sp)                     # 8-byte Folded Spill
	sd	s10, 400(sp)                    # 8-byte Folded Spill
	sd	s11, 392(sp)                    # 8-byte Folded Spill
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	addiw	a2, a0, 1
	seqz	a1, a2
	addi	a1, a1, -1
	and	s2, a1, a0
	bnez	a2, .LBB15_2
# %bb.1:
	li	a2, 4
.LBB15_2:
	bge	s2, a2, .LBB15_9
# %bb.3:
	li	s10, 0
	li	a4, 0
	slli	a1, s2, 3
	slliw	a3, s2, 2
	lui	a0, 3
	addiw	a0, a0, 414
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	s3, %hi(img)
	sd	a2, 24(sp)                      # 8-byte Folded Spill
.LBB15_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
                                        #       Child Loop BB15_6 Depth 3
	sd	a4, 48(sp)                      # 8-byte Folded Spill
	andi	a0, a1, 8
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	andi	s1, a3, -8
	slli	a0, s1, 5
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	slli	a1, a1, 1
	andi	a1, a1, 16
	or	a0, a0, a1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	s4, a0, a1
	sext.w	a0, s2
	addi	a1, sp, 382
	addi	a2, sp, 388
	addi	a3, sp, 384
	addi	a4, sp, 380
	addi	a5, sp, 378
	call	SetModesAndRefframe
	li	s9, 0
	slliw	a0, s2, 2
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	slli	a1, s2, 3
	lh	a2, 382(sp)
	lw	s5, 388(sp)
	lw	s8, 384(sp)
	lh	s11, 380(sp)
	lh	s6, 378(sp)
	andi	a1, a1, 8
	addi	s0, a1, 8
	ori	a0, a0, 4
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	sd	a2, 96(sp)                      # 8-byte Folded Spill
.LBB15_5:                               #   Parent Loop BB15_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_6 Depth 3
	ld	a0, %lo(img)(s3)
	lw	a0, 172(a0)
	add	a0, s1, a0
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sext.w	s1, s1
	sd	s1, 112(sp)                     # 8-byte Folded Spill
	slli	a0, a0, 3
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 88(sp)                      # 8-byte Folded Spill
	mv	s1, s4
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	mv	s7, s3
.LBB15_6:                               #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lui	s4, %hi(img)
	ld	a0, %lo(img)(s4)
	lw	a0, 168(a0)
	add	s2, s3, a0
	mv	a0, s7
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	mv	a3, s5
	mv	a4, s8
	mv	a5, s11
	mv	a6, s6
	call	LumaPrediction4x4
	lui	a0, %hi(imgY_org)
	ld	a6, %lo(imgY_org)(a0)
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	add	a6, a6, a0
	ld	a7, 0(a6)
	ld	a1, %lo(img)(s4)
	slli	a4, s2, 1
	add	a0, a7, a4
	lhu	a0, 0(a0)
	add	a1, a1, s1
	lhu	a2, -102(a1)
	subw	a5, a0, a2
	slli	a0, s9, 2
	addi	t6, sp, 120
	add	a0, t6, a0
	addi	a3, a4, 2
	add	a2, a7, a3
	lhu	t0, 0(a2)
	lhu	t1, -100(a1)
	addi	a2, a4, 4
	add	t2, a7, a2
	lhu	t2, 0(t2)
	lhu	t3, -98(a1)
	sw	a5, 0(a0)
	subw	a5, t0, t1
	sw	a5, 4(a0)
	subw	t0, t2, t3
	addi	a5, a4, 6
	ld	t1, 8(a6)
	add	a7, a7, a5
	lhu	a7, 0(a7)
	lhu	t2, -96(a1)
	add	t3, t1, a4
	lhu	t3, 0(t3)
	lhu	t4, -70(a1)
	sw	t0, 8(a0)
	subw	a7, a7, t2
	sw	a7, 12(a0)
	subw	t3, t3, t4
	addiw	a7, s9, 4
	slli	a7, a7, 2
	add	a7, t6, a7
	add	t0, t1, a3
	lhu	t0, 0(t0)
	lhu	t2, -68(a1)
	add	t4, t1, a2
	lhu	t4, 0(t4)
	lhu	t5, -66(a1)
	sw	t3, 0(a7)
	subw	t0, t0, t2
	sw	t0, 4(a7)
	subw	t4, t4, t5
	ld	t0, 16(a6)
	add	t1, t1, a5
	lhu	t1, 0(t1)
	lhu	t2, -64(a1)
	add	t3, t0, a4
	lhu	t3, 0(t3)
	lhu	t5, -38(a1)
	sw	t4, 8(a7)
	subw	t1, t1, t2
	sw	t1, 12(a7)
	subw	t3, t3, t5
	addiw	a7, s9, 8
	slli	a7, a7, 2
	add	a7, t6, a7
	add	t1, t0, a3
	lhu	t1, 0(t1)
	lhu	t2, -36(a1)
	add	t4, t0, a2
	lhu	t4, 0(t4)
	lhu	t5, -34(a1)
	sw	t3, 0(a7)
	subw	t1, t1, t2
	sw	t1, 4(a7)
	subw	t4, t4, t5
	ld	a6, 24(a6)
	add	t0, t0, a5
	lhu	t0, 0(t0)
	lhu	t1, -32(a1)
	add	a4, a6, a4
	lhu	a4, 0(a4)
	lhu	t2, -6(a1)
	sw	t4, 8(a7)
	subw	t0, t0, t1
	sw	t0, 12(a7)
	subw	a4, a4, t2
	addiw	s9, s9, 12
	add	a3, a6, a3
	lhu	a3, 0(a3)
	lhu	a7, -4(a1)
	slli	t0, s9, 2
	add	t0, t6, t0
	sw	a4, 0(t0)
	subw	a3, a3, a7
	sw	a3, 4(t0)
	add	a2, a6, a2
	lhu	a2, 0(a2)
	lhu	a3, -2(a1)
	add	a5, a6, a5
	lhu	a4, 0(a5)
	lhu	a1, 0(a1)
	subw	a2, a2, a3
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	sw	a2, 8(t0)
	subw	a4, a4, a1
	sw	a4, 12(t0)
	lw	a1, 24(a3)
	addiw	s9, s9, 4
	call	SATD
	addw	s10, a0, s10
	addi	s3, s3, 4
	addiw	s7, s7, 4
	addi	s1, s1, 8
	bltu	s3, s0, .LBB15_6
# %bb.7:                                #   in Loop: Header=BB15_5 Depth=2
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	addi	s1, a1, 4
	ld	s4, 88(sp)                      # 8-byte Folded Reload
	addi	s4, s4, 128
	lui	s3, %hi(img)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	blt	a1, a0, .LBB15_5
# %bb.8:                                #   in Loop: Header=BB15_4 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 120
	call	SATD8X8
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	addw	a4, a0, a4
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	addiw	s2, s2, 1
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 8
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	addiw	a3, a3, 4
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	bne	s2, a2, .LBB15_4
	j	.LBB15_10
.LBB15_9:
	li	a4, 0
	li	s10, 0
.LBB15_10:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1845(a0)
	li	a2, 2
	li	a0, 1
	beq	a1, a2, .LBB15_13
# %bb.11:
	blt	a4, s10, .LBB15_13
# %bb.12:
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	lw	a1, 0(a3)
	li	a0, 0
	subw	a2, s10, a4
	add	a1, a2, a1
	sw	a1, 0(a3)
.LBB15_13:
	ld	ra, 488(sp)                     # 8-byte Folded Reload
	ld	s0, 480(sp)                     # 8-byte Folded Reload
	ld	s1, 472(sp)                     # 8-byte Folded Reload
	ld	s2, 464(sp)                     # 8-byte Folded Reload
	ld	s3, 456(sp)                     # 8-byte Folded Reload
	ld	s4, 448(sp)                     # 8-byte Folded Reload
	ld	s5, 440(sp)                     # 8-byte Folded Reload
	ld	s6, 432(sp)                     # 8-byte Folded Reload
	ld	s7, 424(sp)                     # 8-byte Folded Reload
	ld	s8, 416(sp)                     # 8-byte Folded Reload
	ld	s9, 408(sp)                     # 8-byte Folded Reload
	ld	s10, 400(sp)                    # 8-byte Folded Reload
	ld	s11, 392(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 496
	ret
.Lfunc_end15:
	.size	TransformDecision, .Lfunc_end15-TransformDecision
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	OneComponentChromaPrediction4x4 # -- Begin function OneComponentChromaPrediction4x4
	.p2align	2
	.type	OneComponentChromaPrediction4x4,@function
OneComponentChromaPrediction4x4:        # @OneComponentChromaPrediction4x4
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
	lui	t0, %hi(img)
	ld	s1, %lo(img)(t0)
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	mv	s8, a1
	lui	a1, 22
	addiw	a1, a1, 444
	add	a1, s1, a1
	lui	a3, 8
	lw	t0, 0(a1)
	add	a3, s1, a3
	lw	a1, 4(a1)
	li	t3, 64
	divw	t1, t3, t0
	addi	t2, t1, -1
	divw	t3, t3, a1
	lw	t5, 12(s1)
	ld	a3, -1192(a3)
	addi	t4, t3, -1
	li	t6, 528
	mul	t5, t5, t6
	add	a3, a3, t5
	lw	a3, 428(a3)
	lw	t5, 64(s1)
	mul	t6, t3, t1
	sd	t6, 80(sp)                      # 8-byte Folded Spill
	sraiw	t6, t6, 1
	sd	t6, 72(sp)                      # 8-byte Folded Spill
	snez	t6, a3
	sraw	s0, t5, t6
	addw	a3, a3, a4
	slli	a3, a3, 3
	lui	t5, %hi(listX)
	addi	t5, t5, %lo(listX)
	add	a3, t5, a3
	ld	a3, 0(a3)
	addiw	t5, s0, -1
	sd	t5, 64(sp)                      # 8-byte Folded Spill
	mv	t5, s1
	lw	s2, 56(s1)
	slli	a5, a5, 3
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	add	a3, a3, a5
	ld	a3, 0(a3)
	addiw	a5, s2, -1
	lui	t6, 2
	addiw	t6, t6, -1784
	add	a3, a3, t6
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	ld	a3, 56(a3)
	srai	a1, a1, 2
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	srai	s6, t0, 2
	slli	a7, a7, 3
	add	a3, a3, a7
	ld	a7, 0(a3)
	lui	a1, %hi(active_sps)
	ld	s7, %lo(active_sps)(a1)
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	addiw	s8, s8, 3
	addiw	a1, a2, 3
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	slli	a4, a4, 3
	slli	a6, a6, 3
	j	.LBB16_2
.LBB16_1:                               #   in Loop: Header=BB16_2 Depth=1
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	addiw	a2, a3, 1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	bge	a3, a1, .LBB16_14
.LBB16_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
	mv	t0, a2
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	divw	a1, a2, a1
	lw	a3, 180(t5)
	slli	a1, a1, 3
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a2, 0(a1)
	sd	t0, 40(sp)                      # 8-byte Folded Spill
	add	a3, a3, t0
	mul	ra, a3, t3
	mv	s5, a0
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	j	.LBB16_4
.LBB16_3:                               #   in Loop: Header=BB16_4 Depth=2
	slti	s9, s9, 0
	addi	s9, s9, -1
	and	s3, s9, s3
	slti	s4, s4, 0
	addi	s4, s4, -1
	and	s1, s4, s1
	slti	t0, t0, 0
	addi	t0, t0, -1
	and	t0, t0, s11
	slti	t6, t6, 0
	addi	t6, t6, -1
	and	t6, t6, s10
	and	a1, a1, t2
	subw	s4, t1, a1
	slli	s1, s1, 3
	add	s1, a7, s1
	ld	s1, 0(s1)
	and	a0, a0, t4
	subw	s9, t3, a0
	slli	s3, s3, 1
	add	s10, s1, s3
	lhu	s10, 0(s10)
	slli	t6, t6, 3
	add	t6, a7, t6
	ld	t6, 0(t6)
	slli	t0, t0, 1
	add	s1, s1, t0
	lhu	s1, 0(s1)
	add	s3, t6, s3
	lhu	s3, 0(s3)
	add	t0, t6, t0
	lhu	t0, 0(t0)
	mul	t6, s4, s10
	mul	s1, a1, s1
	mul	s3, s4, s3
	mul	a1, a1, t0
	add	a1, a1, s3
	mul	a0, a1, a0
	add	t6, s1, t6
	mul	a1, t6, s9
	ld	t0, 72(sp)                      # 8-byte Folded Reload
	add	a1, a1, t0
	add	a0, a1, a0
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	divw	a1, a0, a1
	addi	a0, s5, 4
	sw	a1, 0(s5)
	addiw	a1, a3, 1
	mv	s5, a0
	bge	a3, s8, .LBB16_1
.LBB16_4:                               #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a3, a1
	divw	a0, a1, s6
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	add	a0, a0, a4
	ld	a0, 0(a0)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, a6
	ld	a1, 0(a0)
	lh	a0, 2(a1)
	lw	t0, 32(s7)
	add	a0, ra, a0
	li	t6, 1
	bne	t0, t6, .LBB16_6
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=2
	ld	t0, 48(sp)                      # 8-byte Folded Reload
	lw	t0, 0(t0)
	add	a0, t0, a0
.LBB16_6:                               #   in Loop: Header=BB16_4 Depth=2
	lw	t0, 176(t5)
	lh	a1, 0(a1)
	add	t0, a3, t0
	mul	t0, t0, t1
	add	a1, t0, a1
	divw	s9, a1, t1
	mv	s3, s9
	bge	s9, s2, .LBB16_10
# %bb.7:                                #   in Loop: Header=BB16_4 Depth=2
	divw	s4, a0, t3
	mv	s1, s4
	bge	s4, s0, .LBB16_11
.LBB16_8:                               #   in Loop: Header=BB16_4 Depth=2
	add	t0, a1, t2
	divw	t0, t0, t1
	mv	s11, t0
	bge	t0, s2, .LBB16_12
.LBB16_9:                               #   in Loop: Header=BB16_4 Depth=2
	add	t6, a0, t4
	divw	t6, t6, t3
	mv	s10, t6
	blt	t6, s0, .LBB16_3
	j	.LBB16_13
.LBB16_10:                              #   in Loop: Header=BB16_4 Depth=2
	mv	s3, a5
	divw	s4, a0, t3
	mv	s1, s4
	blt	s4, s0, .LBB16_8
.LBB16_11:                              #   in Loop: Header=BB16_4 Depth=2
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	add	t0, a1, t2
	divw	t0, t0, t1
	mv	s11, t0
	blt	t0, s2, .LBB16_9
.LBB16_12:                              #   in Loop: Header=BB16_4 Depth=2
	mv	s11, a5
	add	t6, a0, t4
	divw	t6, t6, t3
	mv	s10, t6
	blt	t6, s0, .LBB16_3
.LBB16_13:                              #   in Loop: Header=BB16_4 Depth=2
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	j	.LBB16_3
.LBB16_14:
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
.Lfunc_end16:
	.size	OneComponentChromaPrediction4x4, .Lfunc_end16-OneComponentChromaPrediction4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	IntraChromaPrediction4x4        # -- Begin function IntraChromaPrediction4x4
	.p2align	2
	.type	IntraChromaPrediction4x4,@function
IntraChromaPrediction4x4:               # @IntraChromaPrediction4x4
# %bb.0:
	lui	a3, %hi(img)
	ld	a6, %lo(img)(a3)
	lui	a4, 8
	add	a4, a6, a4
	lw	a5, 12(a6)
	ld	a4, -1192(a4)
	li	a7, 528
	mul	a5, a5, a7
	add	a4, a4, a5
	lw	a7, 416(a4)
	slli	a2, a2, 5
	slli	a1, a1, 1
	add	a5, a2, a1
	lui	a4, 3
	addiw	a4, a4, 312
	add	a5, a5, a4
	add	t0, a6, a5
	slli	a5, a0, 11
	add	a6, a6, a5
	slli	a0, a7, 9
	add	a6, a6, a2
	add	a7, a6, a1
	lui	a6, 2
	addiw	a6, a6, 312
	add	a7, a7, a6
	add	a7, a7, a0
	lhu	t1, 6(a7)
	lhu	t2, 4(a7)
	lhu	t3, 2(a7)
	lhu	a7, 0(a7)
	sh	t1, 6(t0)
	sh	t2, 4(t0)
	sh	t3, 2(t0)
	sh	a7, 0(t0)
	ld	a7, %lo(img)(a3)
	addi	t0, a2, 32
	add	t1, t0, a1
	add	t1, t1, a4
	add	t1, a7, t1
	add	a7, a7, a5
	add	a7, a7, t0
	add	a7, a7, a1
	add	a7, a7, a6
	add	a7, a7, a0
	lhu	t0, 6(a7)
	lhu	t2, 4(a7)
	lhu	t3, 2(a7)
	lhu	a7, 0(a7)
	sh	t0, 6(t1)
	sh	t2, 4(t1)
	sh	t3, 2(t1)
	sh	a7, 0(t1)
	ld	a7, %lo(img)(a3)
	addi	t0, a2, 64
	add	t1, t0, a1
	add	t1, t1, a4
	add	t1, a7, t1
	add	a7, a7, a5
	add	a7, a7, t0
	add	a7, a7, a1
	add	a7, a7, a6
	add	a7, a7, a0
	lhu	t0, 6(a7)
	lhu	t2, 4(a7)
	lhu	t3, 2(a7)
	lhu	a7, 0(a7)
	sh	t0, 6(t1)
	sh	t2, 4(t1)
	sh	t3, 2(t1)
	sh	a7, 0(t1)
	ld	a3, %lo(img)(a3)
	addi	a2, a2, 96
	add	a7, a2, a1
	add	a4, a7, a4
	add	a4, a3, a4
	add	a3, a3, a5
	add	a2, a3, a2
	add	a1, a2, a1
	add	a1, a1, a6
	add	a0, a1, a0
	lhu	a1, 6(a0)
	lhu	a2, 4(a0)
	lhu	a3, 2(a0)
	lhu	a0, 0(a0)
	sh	a1, 6(a4)
	sh	a2, 4(a4)
	sh	a3, 2(a4)
	sh	a0, 0(a4)
	ret
.Lfunc_end17:
	.size	IntraChromaPrediction4x4, .Lfunc_end17-IntraChromaPrediction4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ChromaResidualCoding            # -- Begin function ChromaResidualCoding
	.p2align	2
	.type	ChromaResidualCoding,@function
ChromaResidualCoding:                   # @ChromaResidualCoding
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
	lui	s4, %hi(img)
	ld	a2, %lo(img)(s4)
	lui	a1, 8
	add	a3, a2, a1
	lw	a4, 12(a2)
	ld	a3, -1192(a3)
	li	a5, 528
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 72(a3)
	lui	s6, 22
	addiw	a4, s6, 436
	add	a4, a2, a4
	beqz	a3, .LBB18_2
# %bb.1:
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	j	.LBB18_3
.LBB18_2:
	lw	a2, 24(a2)
	seqz	a3, a2
	addi	a2, a2, -3
	seqz	a2, a2
	or	a2, a3, a2
	sd	a2, 48(sp)                      # 8-byte Folded Spill
.LBB18_3:
	lw	a2, 0(a4)
	li	s1, 0
	addiw	a2, a2, -1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	sw	zero, 0(a0)
	slli	a0, a2, 6
	lui	a2, %hi(.L__const.ChromaResidualCoding.block8x8_idx)
	addi	a2, a2, %lo(.L__const.ChromaResidualCoding.block8x8_idx)
	add	a0, a2, a0
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	li	s8, 1
	addiw	s10, s6, 448
	addiw	a0, s6, 96
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lui	a0, 3
	addiw	a0, a0, 312
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	s11, %hi(enc_picture)
	lui	s5, 2
	addiw	a0, a1, -1192
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	j	.LBB18_7
.LBB18_4:                               #   in Loop: Header=BB18_7 Depth=1
	mv	a0, s1
	call	dct_chroma_sp
.LBB18_5:                               #   in Loop: Header=BB18_7 Depth=1
	sw	a0, 0(s0)
.LBB18_6:                               #   in Loop: Header=BB18_7 Depth=1
	li	s8, 0
	li	s1, 1
	beqz	s3, .LBB18_72
.LBB18_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_10 Depth 2
                                        #       Child Loop BB18_12 Depth 3
                                        #     Child Loop BB18_27 Depth 2
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_24 Depth 2
                                        #     Child Loop BB18_36 Depth 2
                                        #       Child Loop BB18_40 Depth 3
                                        #     Child Loop BB18_70 Depth 2
                                        #     Child Loop BB18_62 Depth 2
                                        #     Child Loop BB18_67 Depth 2
                                        #     Child Loop BB18_54 Depth 2
                                        #       Child Loop BB18_56 Depth 3
	ld	s0, %lo(img)(s4)
	add	s9, s0, s10
	lw	a0, 0(s9)
	blez	a0, .LBB18_13
# %bb.8:                                #   in Loop: Header=BB18_7 Depth=1
	li	s2, 0
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	j	.LBB18_10
.LBB18_9:                               #   in Loop: Header=BB18_10 Depth=2
	add	s9, s0, s10
	lw	a0, 0(s9)
	addiw	a1, s2, 4
	addiw	s2, s2, 4
	addi	s7, s7, 16
	bge	a1, a0, .LBB18_13
.LBB18_10:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_12 Depth 3
	add	a0, s0, s6
	lw	a0, 444(a0)
	blez	a0, .LBB18_9
# %bb.11:                               #   in Loop: Header=BB18_10 Depth=2
	li	s3, 0
	mv	s9, s7
.LBB18_12:                              #   Parent Loop BB18_7 Depth=1
                                        #     Parent Loop BB18_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 0(s9)
	addi	a1, sp, 62
	addi	a2, sp, 68
	addi	a3, sp, 64
	addi	a4, sp, 60
	addi	a5, sp, 58
	call	SetModesAndRefframe
	lh	a3, 62(sp)
	lw	a4, 68(sp)
	lw	a5, 64(sp)
	lh	a6, 60(sp)
	lh	a7, 58(sp)
	mv	a0, s1
	mv	a1, s3
	mv	a2, s2
	call	ChromaPrediction4x4
	ld	s0, %lo(img)(s4)
	add	a0, s0, s6
	lw	a0, 444(a0)
	addiw	s3, s3, 4
	addi	s9, s9, 4
	blt	s3, a0, .LBB18_12
	j	.LBB18_9
.LBB18_13:                              #   in Loop: Header=BB18_7 Depth=1
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	add	s7, s0, s7
	lw	a1, 0(s7)
	andi	s3, s8, 1
	slli	s2, s1, 3
	beqz	a1, .LBB18_19
# %bb.14:                               #   in Loop: Header=BB18_7 Depth=1
	lw	a1, 364(s7)
	beqz	a1, .LBB18_22
# %bb.15:                               #   in Loop: Header=BB18_7 Depth=1
	beqz	s3, .LBB18_25
# %bb.16:                               #   in Loop: Header=BB18_7 Depth=1
	blez	a0, .LBB18_28
# %bb.17:                               #   in Loop: Header=BB18_7 Depth=1
	li	s8, 0
	lui	s2, %hi(rec_resB)
	addi	s2, s2, %lo(rec_resB)
.LBB18_18:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 348(s7)
	slli	a2, a2, 2
	mv	a0, s2
	li	a1, 0
	call	memset
	lw	a0, 0(s9)
	addi	s8, s8, 1
	addi	s2, s2, 64
	blt	s8, a0, .LBB18_18
	j	.LBB18_28
.LBB18_19:                              #   in Loop: Header=BB18_7 Depth=1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	lui	t6, %hi(imgUV_org)
	beqz	a1, .LBB18_32
# %bb.20:                               #   in Loop: Header=BB18_7 Depth=1
	lw	a1, 24(s0)
	li	a2, 3
	bne	a1, a2, .LBB18_58
# %bb.21:                               #   in Loop: Header=BB18_7 Depth=1
	lui	a1, 3
	addiw	a0, a1, 824
	add	a0, s0, a0
	sd	zero, 24(a0)
	sd	zero, 16(a0)
	sd	zero, 8(a0)
	sd	zero, 0(a0)
	addiw	a0, a1, 888
	add	a0, s0, a0
	sd	zero, 0(a0)
	sd	zero, 8(a0)
	sd	zero, 16(a0)
	sd	zero, 24(a0)
	addiw	a0, a1, 952
	add	a0, s0, a0
	sd	zero, 0(a0)
	sd	zero, 8(a0)
	sd	zero, 16(a0)
	sd	zero, 24(a0)
	addiw	a0, a1, 1016
	add	a0, s0, a0
	sd	zero, 0(a0)
	sd	zero, 8(a0)
	sd	zero, 16(a0)
	sd	zero, 24(a0)
	addiw	a0, a1, 1080
	add	a0, s0, a0
	sd	zero, 24(a0)
	sd	zero, 16(a0)
	sd	zero, 8(a0)
	sd	zero, 0(a0)
	addiw	a0, a1, 1144
	add	a0, s0, a0
	sd	zero, 24(a0)
	sd	zero, 16(a0)
	sd	zero, 8(a0)
	sd	zero, 0(a0)
	addiw	a0, a1, 1208
	add	a0, s0, a0
	sd	zero, 24(a0)
	sd	zero, 16(a0)
	sd	zero, 8(a0)
	sd	zero, 0(a0)
	addiw	a0, a1, 1272
	add	a0, s0, a0
	sd	zero, 24(a0)
	sd	zero, 16(a0)
	sd	zero, 8(a0)
	sd	zero, 0(a0)
	j	.LBB18_29
.LBB18_22:                              #   in Loop: Header=BB18_7 Depth=1
	blez	a0, .LBB18_28
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB18_7 Depth=1
	li	s7, 0
	ld	s8, 16(sp)                      # 8-byte Folded Reload
.LBB18_24:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(enc_picture)(s11)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	lw	a1, 164(s0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, s7, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 160(s0)
	ld	a0, 0(a0)
	add	a2, s0, s6
	lw	a2, 444(a2)
	slli	a1, a1, 1
	add	a0, a0, a1
	add	a1, s0, s8
	slli	a2, a2, 1
	call	memcpy
	ld	s0, %lo(img)(s4)
	add	a0, s0, s6
	lw	a0, 448(a0)
	addi	s7, s7, 1
	addi	s8, s8, 32
	blt	s7, a0, .LBB18_24
	j	.LBB18_28
.LBB18_25:                              #   in Loop: Header=BB18_7 Depth=1
	blez	a0, .LBB18_28
# %bb.26:                               #   in Loop: Header=BB18_7 Depth=1
	li	s8, 0
	lui	s2, %hi(rec_resR)
	addi	s2, s2, %lo(rec_resR)
.LBB18_27:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 348(s7)
	slli	a2, a2, 2
	mv	a0, s2
	li	a1, 0
	call	memset
	lw	a0, 0(s9)
	addi	s8, s8, 1
	addi	s2, s2, 64
	blt	s8, a0, .LBB18_27
.LBB18_28:                              #   in Loop: Header=BB18_7 Depth=1
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB18_44
.LBB18_29:                              #   in Loop: Header=BB18_7 Depth=1
	lw	a0, 24(s0)
	li	a1, 3
	bne	a0, a1, .LBB18_6
# %bb.30:                               #   in Loop: Header=BB18_7 Depth=1
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a1)
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	lw	a1, 0(s0)
	or	a0, a0, a2
	beqz	a0, .LBB18_4
# %bb.31:                               #   in Loop: Header=BB18_7 Depth=1
	mv	a0, s1
	call	dct_chroma_sp2
	j	.LBB18_5
.LBB18_32:                              #   in Loop: Header=BB18_7 Depth=1
	blez	a0, .LBB18_44
# %bb.33:                               #   in Loop: Header=BB18_7 Depth=1
	lw	a6, 348(s7)
	li	a1, 0
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a2, s0, a2
	addi	a3, a2, 512
	lui	a4, %hi(resTrans_B)
	addi	a4, a4, %lo(resTrans_B)
	lui	a5, %hi(resTrans_R)
	addi	a5, a5, %lo(resTrans_R)
	j	.LBB18_36
.LBB18_34:                              #   in Loop: Header=BB18_36 Depth=2
	lw	a0, 0(s9)
.LBB18_35:                              #   in Loop: Header=BB18_36 Depth=2
	addi	a1, a1, 1
	addi	a5, a5, 64
	addi	a4, a4, 64
	addi	a3, a3, 64
	addi	a2, a2, 32
	bge	a1, a0, .LBB18_28
.LBB18_36:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_40 Depth 3
	blez	a6, .LBB18_35
# %bb.37:                               #   in Loop: Header=BB18_36 Depth=2
	ld	a7, %lo(imgUV_org)(t6)
	li	a0, 0
	add	a7, a7, s2
	mv	t0, a2
	mv	t1, a3
	mv	t2, a4
	mv	t3, a5
	j	.LBB18_40
.LBB18_38:                              #   in Loop: Header=BB18_40 Depth=3
	lw	a6, 180(s0)
	ld	t4, 0(a7)
	addw	a6, a6, a1
	slli	a6, a6, 3
	lw	t5, 176(s0)
	add	a6, t4, a6
	ld	a6, 0(a6)
	add	t5, a0, t5
	slli	t5, t5, 1
	add	a6, a6, t5
	lhu	a6, 0(a6)
	lhu	t4, 0(t0)
	subw	a6, a6, t4
.LBB18_39:                              #   in Loop: Header=BB18_40 Depth=3
	sw	a6, 0(t1)
	addi	a0, a0, 1
	lw	a6, 348(s7)
	addi	t3, t3, 4
	addi	t2, t2, 4
	addi	t1, t1, 4
	addi	t0, t0, 2
	bge	a0, a6, .LBB18_34
.LBB18_40:                              #   Parent Loop BB18_7 Depth=1
                                        #     Parent Loop BB18_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a6, 364(s7)
	beqz	a6, .LBB18_38
# %bb.41:                               #   in Loop: Header=BB18_40 Depth=3
	beqz	s3, .LBB18_43
# %bb.42:                               #   in Loop: Header=BB18_40 Depth=3
	lw	a6, 0(t2)
	j	.LBB18_39
.LBB18_43:                              #   in Loop: Header=BB18_40 Depth=3
	lw	a6, 0(t3)
	j	.LBB18_39
.LBB18_44:                              #   in Loop: Header=BB18_7 Depth=1
	add	a0, s0, s6
	lw	a0, 96(a0)
	bnez	a0, .LBB18_6
# %bb.45:                               #   in Loop: Header=BB18_7 Depth=1
	lw	a0, 24(s0)
	li	a1, 3
	bne	a0, a1, .LBB18_47
# %bb.46:                               #   in Loop: Header=BB18_7 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	a0, s0, a0
	lw	a1, 12(s0)
	ld	a0, 0(a0)
	li	a2, 528
	mul	a1, a1, a2
	add	a0, a0, a1
	lw	a0, 72(a0)
	li	a1, 10
	bne	a0, a1, .LBB18_63
.LBB18_47:                              #   in Loop: Header=BB18_7 Depth=1
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	lw	a1, 0(s0)
	mv	a0, s1
	call	dct_chroma
.LBB18_48:                              #   in Loop: Header=BB18_7 Depth=1
	ld	a3, %lo(img)(s4)
	sw	a0, 0(s0)
	addiw	a0, s6, 444
	add	a0, a3, a0
	lw	a1, 16(a0)
	beqz	a1, .LBB18_6
# %bb.49:                               #   in Loop: Header=BB18_7 Depth=1
	lw	a4, 4(a0)
	blez	a4, .LBB18_6
# %bb.50:                               #   in Loop: Header=BB18_7 Depth=1
	lui	a1, %hi(rec_resB)
	addi	a1, a1, %lo(rec_resB)
	bnez	s3, .LBB18_52
# %bb.51:                               #   in Loop: Header=BB18_7 Depth=1
	lui	a1, %hi(rec_resR)
	addi	a1, a1, %lo(rec_resR)
.LBB18_52:                              #   in Loop: Header=BB18_7 Depth=1
	lw	a5, 0(a0)
	li	a2, 0
	lui	a6, 3
	addiw	a6, a6, 824
	add	a3, a3, a6
	j	.LBB18_54
.LBB18_53:                              #   in Loop: Header=BB18_54 Depth=2
	addi	a2, a2, 1
	addi	a1, a1, 64
	addi	a3, a3, 64
	bge	a2, a4, .LBB18_6
.LBB18_54:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_56 Depth 3
	blez	a5, .LBB18_53
# %bb.55:                               # %.preheader
                                        #   in Loop: Header=BB18_54 Depth=2
	li	a4, 0
	mv	a6, a3
	mv	a7, a1
.LBB18_56:                              #   Parent Loop BB18_7 Depth=1
                                        #     Parent Loop BB18_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a6)
	sw	a5, 0(a7)
	lw	a5, 0(a0)
	addi	a4, a4, 1
	addi	a7, a7, 4
	addi	a6, a6, 4
	blt	a4, a5, .LBB18_56
# %bb.57:                               #   in Loop: Header=BB18_54 Depth=2
	lw	a4, 4(a0)
	j	.LBB18_53
.LBB18_58:                              #   in Loop: Header=BB18_7 Depth=1
	lw	a1, 364(s7)
	beqz	a1, .LBB18_65
# %bb.59:                               #   in Loop: Header=BB18_7 Depth=1
	beqz	s3, .LBB18_68
# %bb.60:                               #   in Loop: Header=BB18_7 Depth=1
	blez	a0, .LBB18_29
# %bb.61:                               #   in Loop: Header=BB18_7 Depth=1
	li	s8, 0
	lui	s2, %hi(rec_resB)
	addi	s2, s2, %lo(rec_resB)
.LBB18_62:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 348(s7)
	slli	a2, a2, 2
	mv	a0, s2
	li	a1, 0
	call	memset
	lw	a0, 0(s9)
	addi	s8, s8, 1
	addi	s2, s2, 64
	blt	s8, a0, .LBB18_62
	j	.LBB18_28
.LBB18_63:                              #   in Loop: Header=BB18_7 Depth=1
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a1)
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	lw	a1, 0(s0)
	or	a0, a0, a2
	beqz	a0, .LBB18_71
# %bb.64:                               #   in Loop: Header=BB18_7 Depth=1
	mv	a0, s1
	call	dct_chroma_sp2
	j	.LBB18_48
.LBB18_65:                              #   in Loop: Header=BB18_7 Depth=1
	blez	a0, .LBB18_29
# %bb.66:                               # %.preheader3
                                        #   in Loop: Header=BB18_7 Depth=1
	li	s7, 0
	lui	a0, 3
	addiw	s8, a0, 312
.LBB18_67:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(enc_picture)(s11)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	lw	a1, 164(s0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, s7, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 160(s0)
	ld	a0, 0(a0)
	add	a2, s0, s6
	lw	a2, 444(a2)
	slli	a1, a1, 1
	add	a0, a0, a1
	add	a1, s0, s8
	slli	a2, a2, 1
	call	memcpy
	ld	s0, %lo(img)(s4)
	add	a0, s0, s6
	lw	a0, 448(a0)
	addi	s7, s7, 1
	addi	s8, s8, 32
	blt	s7, a0, .LBB18_67
	j	.LBB18_28
.LBB18_68:                              #   in Loop: Header=BB18_7 Depth=1
	blez	a0, .LBB18_29
# %bb.69:                               #   in Loop: Header=BB18_7 Depth=1
	li	s8, 0
	lui	s2, %hi(rec_resR)
	addi	s2, s2, %lo(rec_resR)
.LBB18_70:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 348(s7)
	slli	a2, a2, 2
	mv	a0, s2
	li	a1, 0
	call	memset
	lw	a0, 0(s9)
	addi	s8, s8, 1
	addi	s2, s2, 64
	blt	s8, a0, .LBB18_70
	j	.LBB18_28
.LBB18_71:                              #   in Loop: Header=BB18_7 Depth=1
	mv	a0, s1
	call	dct_chroma_sp
	j	.LBB18_48
.LBB18_72:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a0)
	lui	a1, %hi(img)
	ld	a4, %lo(img)(a1)
	lui	a1, 22
	addiw	a5, a1, 420
	lui	a1, 8
	add	a1, a4, a1
	lw	a2, 12(a4)
	ld	a1, -1192(a1)
	add	a5, a4, a5
	li	a3, 528
	mul	a2, a2, a3
	add	a1, a1, a2
	lw	a2, 364(a1)
	lw	a3, 40(a5)
	slli	a0, a0, 4
	add	a0, a2, a0
	sw	a0, 364(a1)
	beqz	a3, .LBB18_83
# %bb.73:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	addiw	a1, a1, -1768
	add	a6, a0, a1
	ld	a7, 40(a6)
	li	a0, 0
	lw	a1, 4(a5)
	ld	a2, 0(a7)
	lw	a3, 156(a4)
	lw	t0, 152(a4)
	lw	a4, 0(a5)
	ld	a5, 0(a6)
	ld	a6, 8(a7)
	slli	a7, t0, 1
	lui	t0, %hi(rec_resG)
	addi	t0, t0, %lo(rec_resG)
	lui	t1, %hi(mprRGB)
	addi	t1, t1, %lo(mprRGB)
	lui	t2, %hi(rec_resR)
	addi	t2, t2, %lo(rec_resR)
	lui	t3, %hi(rec_resB)
	addi	t3, t3, %lo(rec_resB)
	li	t4, 64
	li	t5, 16
	j	.LBB18_75
.LBB18_74:                              #   in Loop: Header=BB18_75 Depth=1
	addi	a0, a0, 1
	addi	t0, t0, 64
	addi	t1, t1, 64
	addi	t2, t2, 64
	addi	t3, t3, 64
	beq	a0, t5, .LBB18_83
.LBB18_75:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_77 Depth 2
	add	t6, a0, a3
	slli	t6, t6, 3
	add	s0, a2, t6
	add	s1, a5, t6
	add	t6, a6, t6
	ld	s2, 0(t6)
	ld	s1, 0(s1)
	ld	s3, 0(s0)
	li	t6, 0
	add	s0, s2, a7
	add	s1, s1, a7
	add	s2, s3, a7
	j	.LBB18_77
.LBB18_76:                              #   in Loop: Header=BB18_77 Depth=2
	sh	s4, 0(s0)
	addi	t6, t6, 4
	addi	s0, s0, 2
	addi	s1, s1, 2
	addi	s2, s2, 2
	beq	t6, t4, .LBB18_74
.LBB18_77:                              #   Parent Loop BB18_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s3, t3, t6
	lw	s6, 0(s3)
	add	s3, t0, t6
	lw	s5, 0(s3)
	srli	s7, s6, 1
	add	s3, t2, t6
	lw	s3, 0(s3)
	add	s4, t1, t6
	lw	s8, 1024(s4)
	subw	s7, s5, s7
	srli	s5, s3, 1
	subw	s5, s7, s5
	addw	s8, s5, s8
	sgtz	s9, s8
	neg	s9, s9
	and	s9, s9, s8
	mv	s8, a1
	blt	a1, s9, .LBB18_79
# %bb.78:                               #   in Loop: Header=BB18_77 Depth=2
	mv	s8, s9
.LBB18_79:                              #   in Loop: Header=BB18_77 Depth=2
	lw	s9, 0(s4)
	add	s6, s7, s6
	addw	s6, s6, s9
	sgtz	s7, s6
	neg	s7, s7
	and	s7, s7, s6
	sh	s8, 0(s2)
	mv	s6, a4
	blt	a4, s7, .LBB18_81
# %bb.80:                               #   in Loop: Header=BB18_77 Depth=2
	mv	s6, s7
.LBB18_81:                              #   in Loop: Header=BB18_77 Depth=2
	addi	s4, s4, 2047
	lw	s4, 1(s4)
	add	s3, s5, s3
	addw	s3, s3, s4
	sgtz	s4, s3
	neg	s4, s4
	and	s3, s4, s3
	sh	s6, 0(s1)
	mv	s4, a1
	blt	a1, s3, .LBB18_76
# %bb.82:                               #   in Loop: Header=BB18_77 Depth=2
	mv	s4, s3
	j	.LBB18_76
.LBB18_83:
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
.Lfunc_end18:
	.size	ChromaResidualCoding, .Lfunc_end18-ChromaResidualCoding
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	IntraChromaPrediction           # -- Begin function IntraChromaPrediction
	.p2align	2
	.type	IntraChromaPrediction,@function
IntraChromaPrediction:                  # @IntraChromaPrediction
# %bb.0:
	addi	sp, sp, -960
	sd	ra, 952(sp)                     # 8-byte Folded Spill
	sd	s0, 944(sp)                     # 8-byte Folded Spill
	sd	s1, 936(sp)                     # 8-byte Folded Spill
	sd	s2, 928(sp)                     # 8-byte Folded Spill
	sd	s3, 920(sp)                     # 8-byte Folded Spill
	sd	s4, 912(sp)                     # 8-byte Folded Spill
	sd	s5, 904(sp)                     # 8-byte Folded Spill
	sd	s6, 896(sp)                     # 8-byte Folded Spill
	sd	s7, 888(sp)                     # 8-byte Folded Spill
	sd	s8, 880(sp)                     # 8-byte Folded Spill
	sd	s9, 872(sp)                     # 8-byte Folded Spill
	sd	s10, 864(sp)                    # 8-byte Folded Spill
	sd	s11, 856(sp)                    # 8-byte Folded Spill
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lui	a4, 22
	addiw	a4, a4, 436
	add	a4, a3, a4
	lui	a5, 8
	add	a5, a3, a5
	ld	a5, -1192(a5)
	sd	a5, 0(sp)                       # 8-byte Folded Spill
	lw	s6, 12(a3)
	lwu	a3, 8(a4)
	sd	a3, 192(sp)                     # 8-byte Folded Spill
	lw	s7, 12(a4)
	lw	s0, 0(a4)
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	bltz	s7, .LBB19_3
# %bb.1:
	li	s4, -1
	addi	s5, sp, 296
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	li	a1, -1
	mv	a0, s6
	mv	a2, s4
	li	a3, 0
	mv	a4, s5
	call	getNeighbour
	addiw	s4, s4, 1
	addi	s5, s5, 24
	bne	s4, s7, .LBB19_2
.LBB19_3:
	li	a2, -1
	addi	a4, sp, 704
	mv	a0, s6
	li	a1, 0
	li	a3, 0
	call	getNeighbour
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	ra, 704(sp)
	lw	a1, 220(a0)
	lw	a0, 296(sp)
	bnez	a1, .LBB19_4
	j	.LBB19_182
.LBB19_4:
	srai	a1, s7, 1
	beqz	ra, .LBB19_6
# %bb.5:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a2, a2, a3
	lw	a3, 708(sp)
	ld	a2, -920(a2)
	slli	a3, a3, 2
	add	a2, a2, a3
	lw	ra, 0(a2)
.LBB19_6:
	ld	t2, 192(sp)                     # 8-byte Folded Reload
	li	s10, 1
	li	s11, 1
	blez	a1, .LBB19_11
# %bb.7:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	addiw	a3, a3, -920
	add	a2, a2, a3
	addi	a3, sp, 324
	li	a4, 24
	mul	a4, a1, a4
	add	a4, a3, a4
	li	s11, 1
	j	.LBB19_9
.LBB19_8:                               #   in Loop: Header=BB19_9 Depth=1
	addi	a3, a3, 24
	and	s11, a5, s11
	beq	a3, a4, .LBB19_11
.LBB19_9:                               # =>This Inner Loop Header: Depth=1
	lw	a5, -4(a3)
	beqz	a5, .LBB19_8
# %bb.10:                               #   in Loop: Header=BB19_9 Depth=1
	lw	a5, 0(a3)
	ld	a6, 0(a2)
	slli	a5, a5, 2
	add	a5, a6, a5
	lw	a5, 0(a5)
	j	.LBB19_8
.LBB19_11:
	blez	s7, .LBB19_16
# %bb.12:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	addiw	a3, a3, -920
	add	a2, a2, a3
	li	a3, 3
	slli	a3, a3, 35
	slli	a4, a1, 32
	mulhu	a3, a4, a3
	addi	a4, sp, 296
	add	a3, a3, a4
	addi	a3, a3, 28
	li	s10, 1
	j	.LBB19_14
.LBB19_13:                              #   in Loop: Header=BB19_14 Depth=1
	and	s10, a4, s10
	addiw	a1, a1, 1
	addi	a3, a3, 24
	bge	a1, s7, .LBB19_16
.LBB19_14:                              # =>This Inner Loop Header: Depth=1
	lw	a4, -4(a3)
	beqz	a4, .LBB19_13
# %bb.15:                               #   in Loop: Header=BB19_14 Depth=1
	lw	a4, 0(a3)
	ld	a5, 0(a2)
	slli	a4, a4, 2
	add	a4, a5, a4
	lw	a4, 0(a4)
	j	.LBB19_13
.LBB19_16:
	beqz	a0, .LBB19_18
# %bb.17:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 300(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB19_18:
	beqz	s3, .LBB19_20
.LBB19_19:
	sw	ra, 0(s3)
.LBB19_20:
	beqz	s2, .LBB19_22
# %bb.21:
	snez	a1, s11
	snez	a2, s10
	and	a1, a1, a2
	sw	a1, 0(s2)
.LBB19_22:
	sext.w	a1, t2
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	beqz	s1, .LBB19_24
# %bb.23:
	sw	a0, 0(s1)
.LBB19_24:
	slli	a3, s7, 32
	lui	a2, 2
	snez	a1, ra
	snez	a4, s11
	snez	a5, s10
	and	a4, a4, a5
	sd	a4, 248(sp)                     # 8-byte Folded Spill
	ld	a4, 288(sp)                     # 8-byte Folded Reload
	srai	a5, a4, 1
	sd	a5, 168(sp)                     # 8-byte Folded Spill
	srai	a5, s7, 1
	sd	a5, 160(sp)                     # 8-byte Folded Spill
	addi	a7, a4, -8
	li	a5, 17
	sd	a5, 120(sp)                     # 8-byte Folded Spill
	li	t1, 8
	li	a5, 17
	sd	a5, 112(sp)                     # 8-byte Folded Spill
	beq	a4, t1, .LBB19_26
# %bb.25:
	li	a4, 5
	sd	a4, 112(sp)                     # 8-byte Folded Spill
.LBB19_26:
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	ld	s1, 288(sp)                     # 8-byte Folded Reload
	slli	s1, s1, 1
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	and	a4, a1, a4
	snez	a5, a0
	addi	a1, sp, 824
	slli	a6, s7, 1
	addi	a0, sp, 792
	snez	a7, a7
	srli	a3, a3, 32
	sd	a3, 184(sp)                     # 8-byte Folded Spill
	addiw	s0, s0, -1
	addiw	a2, a2, 824
	sd	a2, 176(sp)                     # 8-byte Folded Spill
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	addi	a3, a3, -1
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	addi	a2, a2, -1
	addi	t0, s7, -8
	snez	t0, t0
	beq	s7, t1, .LBB19_28
# %bb.27:
	li	t1, 5
	sd	t1, 120(sp)                     # 8-byte Folded Spill
.LBB19_28:
	li	t1, 0
	and	a4, a4, a5
	sd	a4, 200(sp)                     # 8-byte Folded Spill
	add	a4, s1, a1
	sd	a4, 144(sp)                     # 8-byte Folded Spill
	add	a6, a6, a0
	sd	a6, 136(sp)                     # 8-byte Folded Spill
	ld	a6, 288(sp)                     # 8-byte Folded Reload
	slli	a4, a6, 1
	sd	a4, 104(sp)                     # 8-byte Folded Spill
	addi	a7, a7, 5
	sd	a7, 96(sp)                      # 8-byte Folded Spill
	slli	a4, s7, 1
	sd	a4, 88(sp)                      # 8-byte Folded Spill
	addi	t0, t0, 5
	sd	t0, 80(sp)                      # 8-byte Folded Spill
	slli	a4, s0, 6
	lui	a5, %hi(IntraChromaPrediction.block_pos)
	addi	a5, a5, %lo(IntraChromaPrediction.block_pos)
	add	a4, a4, a5
	addi	a4, a4, 8
	sd	a4, 224(sp)                     # 8-byte Folded Spill
	slli	s0, s0, 5
	addi	s0, s0, 3
	lui	a4, %hi(subblk_offset_x)
	addi	a4, a4, %lo(subblk_offset_x)
	add	a4, a4, s0
	sd	a4, 216(sp)                     # 8-byte Folded Spill
	lui	a4, %hi(subblk_offset_y)
	addi	a4, a4, %lo(subblk_offset_y)
	add	a4, a4, s0
	sd	a4, 208(sp)                     # 8-byte Folded Spill
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	slli	a4, a5, 1
	add	a4, a0, a4
	sd	a4, 232(sp)                     # 8-byte Folded Spill
	slli	a4, a5, 5
	ld	a7, 176(sp)                     # 8-byte Folded Reload
	add	a4, a4, a7
	sd	a4, 152(sp)                     # 8-byte Folded Spill
	andi	a4, a6, -2
	addi	a5, a4, -4
	add	a6, a1, a5
	sd	a6, 48(sp)                      # 8-byte Folded Spill
	add	a4, a1, a4
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 32
	srli	a3, a3, 31
	add	a1, a1, a5
	sub	a1, a1, a3
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	andi	a1, s7, -2
	addi	a3, a1, -4
	add	a4, a0, a3
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	add	a1, a0, a1
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 32
	srli	a2, a2, 31
	add	a0, a0, a3
	sub	a0, a0, a2
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	li	s5, 1
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	sub	a0, s5, a0
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	sub	a0, s5, a0
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	slli	a0, t2, 1
	add	a0, a0, a7
	addi	a0, a0, 1024
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, 22
	addiw	a0, a0, 416
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	s6, 24
	addi	s0, sp, 296
	li	s8, 2
	li	s2, 3
	li	a1, 1
	sd	ra, 256(sp)                     # 8-byte Folded Spill
	j	.LBB19_30
.LBB19_29:                              #   in Loop: Header=BB19_30 Depth=1
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	t1, 1
	li	a1, 0
	ld	ra, 256(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB19_155
.LBB19_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_37 Depth 2
                                        #     Child Loop BB19_128 Depth 2
                                        #     Child Loop BB19_132 Depth 2
                                        #     Child Loop BB19_137 Depth 2
                                        #       Child Loop BB19_139 Depth 3
                                        #     Child Loop BB19_143 Depth 2
                                        #     Child Loop BB19_146 Depth 2
                                        #     Child Loop BB19_150 Depth 2
                                        #       Child Loop BB19_153 Depth 3
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 2
	add	a0, a0, a2
	ld	a2, -1728(a0)
	sd	t1, 272(sp)                     # 8-byte Folded Spill
	slli	a3, t1, 3
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a4, 12(a0)
	add	a2, a2, a3
	ld	s9, 0(a2)
	srai	a2, a4, 1
	blez	a2, .LBB19_125
# %bb.31:                               #   in Loop: Header=BB19_30 Depth=1
	lw	a0, 0(a0)
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 11
	lui	a4, 2
	addiw	a4, a4, 312
	add	a3, a3, a4
	add	a1, a1, a3
	slli	a2, a2, 4
	ld	a5, 224(sp)                     # 8-byte Folded Reload
	add	a2, a5, a2
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	j	.LBB19_37
.LBB19_32:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	ra, .LBB19_36
.LBB19_33:                              #   in Loop: Header=BB19_37 Depth=2
	ld	a7, 0(a7)
	slli	a6, a6, 1
	slli	t2, t1, 1
	add	t3, a6, t2
	add	t3, a7, t3
	lhu	t3, 0(t3)
	add	a6, t2, a6
	add	a6, a7, a6
	lhu	a7, 2(a6)
	lhu	t2, 4(a6)
	lhu	a6, 6(a6)
	add	a7, t3, a7
	add	a6, t2, a6
.LBB19_34:                              #   in Loop: Header=BB19_37 Depth=2
	add	a6, a7, a6
.LBB19_35:                              #   in Loop: Header=BB19_37 Depth=2
	addi	a6, a6, 2
	srli	t2, a6, 2
.LBB19_36:                              #   in Loop: Header=BB19_37 Depth=2
	slli	t0, t0, 5
	add	t0, a1, t0
	slli	t1, t1, 1
	add	a6, t0, t1
	sh	t2, 0(a6)
	addi	a6, t1, 2
	add	a7, t0, a6
	sh	t2, 0(a7)
	addi	a7, t1, 4
	add	t3, t0, a7
	sh	t2, 0(t3)
	addi	t3, t1, 6
	add	t4, t0, t3
	sh	t2, 0(t4)
	addi	t4, t0, 32
	add	t5, t4, t1
	sh	t2, 0(t5)
	add	t5, t4, a6
	sh	t2, 0(t5)
	add	t5, t4, a7
	sh	t2, 0(t5)
	add	t4, t4, t3
	sh	t2, 0(t4)
	addi	t4, t0, 64
	add	t5, t4, t1
	sh	t2, 0(t5)
	add	t5, t4, a6
	sh	t2, 0(t5)
	add	t5, t4, a7
	sh	t2, 0(t5)
	add	t4, t4, t3
	sh	t2, 0(t4)
	addi	t0, t0, 96
	add	t1, t0, t1
	sh	t2, 0(t1)
	add	a6, t0, a6
	sh	t2, 0(a6)
	add	a7, t0, a7
	sh	t2, 0(a7)
	add	t0, t0, t3
	sh	t2, 0(t0)
	addi	a5, a5, 16
	addi	a4, a4, 4
	addi	a3, a3, 4
	beq	a5, a2, .LBB19_125
.LBB19_37:                              #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 724(sp)
	lw	a6, 720(sp)
	lbu	t0, -3(a3)
	lw	t3, -8(a5)
	lbu	t1, -3(a4)
	slli	a7, a7, 3
	add	a7, s9, a7
	blt	s5, t3, .LBB19_42
# %bb.38:                               #   in Loop: Header=BB19_37 Depth=2
	beqz	t3, .LBB19_46
# %bb.39:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s5, .LBB19_60
# %bb.40:                               #   in Loop: Header=BB19_37 Depth=2
	bnez	ra, .LBB19_57
# %bb.41:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s11, .LBB19_49
	j	.LBB19_60
.LBB19_42:                              #   in Loop: Header=BB19_37 Depth=2
	beq	t3, s8, .LBB19_48
# %bb.43:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s2, .LBB19_60
# %bb.44:                               #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_50
# %bb.45:                               #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
	add	t2, t3, t2
	bnez	s10, .LBB19_53
	j	.LBB19_59
.LBB19_46:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_51
# %bb.47:                               #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
	add	t2, t3, t2
	bnez	s11, .LBB19_53
	j	.LBB19_59
.LBB19_48:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	s10, .LBB19_56
.LBB19_49:                              #   in Loop: Header=BB19_37 Depth=2
	mul	t2, t0, s6
	add	t2, t2, s0
	lw	t3, 44(t2)
	slli	t3, t3, 3
	lw	t4, 40(t2)
	lw	t5, 68(t2)
	add	t3, s9, t3
	ld	t3, 0(t3)
	slli	t4, t4, 1
	slli	t5, t5, 3
	add	t5, s9, t5
	lw	t6, 64(t2)
	ld	t5, 0(t5)
	lw	s3, 92(t2)
	add	t3, t3, t4
	slli	t6, t6, 1
	add	t5, t5, t6
	slli	s3, s3, 3
	lw	t4, 116(t2)
	add	s3, s9, s3
	ld	t6, 0(s3)
	lw	s3, 88(t2)
	slli	t4, t4, 3
	add	t4, s9, t4
	lw	t2, 112(t2)
	ld	t4, 0(t4)
	slli	s3, s3, 1
	add	t6, t6, s3
	slli	t2, t2, 1
	add	t2, t4, t2
	lhu	t3, 0(t3)
	lhu	t4, 0(t5)
	lhu	t5, 0(t6)
	lhu	t2, 0(t2)
	add	t3, t3, t4
	add	t2, t5, t2
	j	.LBB19_58
.LBB19_50:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s10, .LBB19_52
	j	.LBB19_60
.LBB19_51:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	s11, .LBB19_60
.LBB19_52:                              #   in Loop: Header=BB19_37 Depth=2
	li	t2, 0
.LBB19_53:                              #   in Loop: Header=BB19_37 Depth=2
	mul	t3, t0, s6
	add	t3, t3, s0
	lw	t4, 44(t3)
	slli	t4, t4, 3
	lw	t5, 40(t3)
	lw	t6, 68(t3)
	add	t4, s9, t4
	ld	t4, 0(t4)
	slli	t5, t5, 1
	slli	t6, t6, 3
	add	t6, s9, t6
	lw	s3, 64(t3)
	ld	t6, 0(t6)
	lw	s4, 92(t3)
	add	t4, t4, t5
	slli	s3, s3, 1
	add	t6, t6, s3
	slli	s4, s4, 3
	lw	t5, 116(t3)
	add	s4, s9, s4
	ld	s3, 0(s4)
	lw	s4, 88(t3)
	slli	t5, t5, 3
	add	t5, s9, t5
	lw	t3, 112(t3)
	ld	t5, 0(t5)
	slli	s4, s4, 1
	add	s3, s3, s4
	slli	t3, t3, 1
	add	t3, t5, t3
	lhu	t4, 0(t4)
	lhu	t5, 0(t6)
	lhu	t6, 0(s3)
	lhu	t3, 0(t3)
	add	t4, t4, t5
	add	t3, t6, t3
	add	t3, t4, t3
	beqz	ra, .LBB19_55
# %bb.54:                               #   in Loop: Header=BB19_37 Depth=2
	add	t2, t2, t3
	addi	t2, t2, 4
	srli	t2, t2, 3
	j	.LBB19_60
.LBB19_55:                              #   in Loop: Header=BB19_37 Depth=2
	addi	t3, t3, 2
	srli	t2, t3, 2
	j	.LBB19_60
.LBB19_56:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	ra, .LBB19_60
.LBB19_57:                              #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
.LBB19_58:                              #   in Loop: Header=BB19_37 Depth=2
	add	t2, t3, t2
.LBB19_59:                              #   in Loop: Header=BB19_37 Depth=2
	addi	t2, t2, 2
	srli	t2, t2, 2
.LBB19_60:                              #   in Loop: Header=BB19_37 Depth=2
	slli	t0, t0, 5
	add	t0, a1, t0
	slli	t1, t1, 1
	add	t3, t0, t1
	sh	t2, 0(t3)
	addi	t3, t1, 2
	add	t4, t0, t3
	sh	t2, 0(t4)
	addi	t4, t1, 4
	add	t5, t0, t4
	sh	t2, 0(t5)
	addi	t5, t1, 6
	add	t6, t0, t5
	sh	t2, 0(t6)
	addi	t6, t0, 32
	add	s3, t6, t1
	sh	t2, 0(s3)
	add	s3, t6, t3
	sh	t2, 0(s3)
	add	s3, t6, t4
	sh	t2, 0(s3)
	add	t6, t6, t5
	sh	t2, 0(t6)
	addi	t6, t0, 64
	add	s3, t6, t1
	sh	t2, 0(s3)
	add	s3, t6, t3
	sh	t2, 0(s3)
	add	s3, t6, t4
	sh	t2, 0(s3)
	add	t6, t6, t5
	sh	t2, 0(t6)
	addi	t0, t0, 96
	add	t1, t0, t1
	sh	t2, 0(t1)
	add	t3, t0, t3
	sh	t2, 0(t3)
	add	t4, t0, t4
	sh	t2, 0(t4)
	add	t0, t0, t5
	sh	t2, 0(t0)
	lbu	t0, -2(a3)
	lw	t3, -4(a5)
	lbu	t1, -2(a4)
	blt	s5, t3, .LBB19_65
# %bb.61:                               #   in Loop: Header=BB19_37 Depth=2
	beqz	t3, .LBB19_69
# %bb.62:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s5, .LBB19_83
# %bb.63:                               #   in Loop: Header=BB19_37 Depth=2
	bnez	ra, .LBB19_80
# %bb.64:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s11, .LBB19_72
	j	.LBB19_83
.LBB19_65:                              #   in Loop: Header=BB19_37 Depth=2
	beq	t3, s8, .LBB19_71
# %bb.66:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s2, .LBB19_83
# %bb.67:                               #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_73
# %bb.68:                               #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
	add	t2, t3, t2
	bnez	s10, .LBB19_76
	j	.LBB19_82
.LBB19_69:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_74
# %bb.70:                               #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
	add	t2, t3, t2
	bnez	s11, .LBB19_76
	j	.LBB19_82
.LBB19_71:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	s10, .LBB19_79
.LBB19_72:                              #   in Loop: Header=BB19_37 Depth=2
	mul	t2, t0, s6
	add	t2, t2, s0
	lw	t3, 44(t2)
	slli	t3, t3, 3
	lw	t4, 40(t2)
	lw	t5, 68(t2)
	add	t3, s9, t3
	ld	t3, 0(t3)
	slli	t4, t4, 1
	slli	t5, t5, 3
	add	t5, s9, t5
	lw	t6, 64(t2)
	ld	t5, 0(t5)
	lw	s3, 92(t2)
	add	t3, t3, t4
	slli	t6, t6, 1
	add	t5, t5, t6
	slli	s3, s3, 3
	lw	t4, 116(t2)
	add	s3, s9, s3
	ld	t6, 0(s3)
	lw	s3, 88(t2)
	slli	t4, t4, 3
	add	t4, s9, t4
	lw	t2, 112(t2)
	ld	t4, 0(t4)
	slli	s3, s3, 1
	add	t6, t6, s3
	slli	t2, t2, 1
	add	t2, t4, t2
	lhu	t3, 0(t3)
	lhu	t4, 0(t5)
	lhu	t5, 0(t6)
	lhu	t2, 0(t2)
	add	t3, t3, t4
	add	t2, t5, t2
	j	.LBB19_81
.LBB19_73:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s10, .LBB19_75
	j	.LBB19_83
.LBB19_74:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	s11, .LBB19_83
.LBB19_75:                              #   in Loop: Header=BB19_37 Depth=2
	li	t2, 0
.LBB19_76:                              #   in Loop: Header=BB19_37 Depth=2
	mul	t3, t0, s6
	add	t3, t3, s0
	lw	t4, 44(t3)
	slli	t4, t4, 3
	lw	t5, 40(t3)
	lw	t6, 68(t3)
	add	t4, s9, t4
	ld	t4, 0(t4)
	slli	t5, t5, 1
	slli	t6, t6, 3
	add	t6, s9, t6
	lw	s3, 64(t3)
	ld	t6, 0(t6)
	lw	s4, 92(t3)
	add	t4, t4, t5
	slli	s3, s3, 1
	add	t6, t6, s3
	slli	s4, s4, 3
	lw	t5, 116(t3)
	add	s4, s9, s4
	ld	s3, 0(s4)
	lw	s4, 88(t3)
	slli	t5, t5, 3
	add	t5, s9, t5
	lw	t3, 112(t3)
	ld	t5, 0(t5)
	slli	s4, s4, 1
	add	s3, s3, s4
	slli	t3, t3, 1
	add	t3, t5, t3
	lhu	t4, 0(t4)
	lhu	t5, 0(t6)
	lhu	t6, 0(s3)
	lhu	t3, 0(t3)
	add	t4, t4, t5
	add	t3, t6, t3
	add	t3, t4, t3
	beqz	ra, .LBB19_78
# %bb.77:                               #   in Loop: Header=BB19_37 Depth=2
	add	t2, t2, t3
	addi	t2, t2, 4
	srli	t2, t2, 3
	j	.LBB19_83
.LBB19_78:                              #   in Loop: Header=BB19_37 Depth=2
	addi	t3, t3, 2
	srli	t2, t3, 2
	j	.LBB19_83
.LBB19_79:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	ra, .LBB19_83
.LBB19_80:                              #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
.LBB19_81:                              #   in Loop: Header=BB19_37 Depth=2
	add	t2, t3, t2
.LBB19_82:                              #   in Loop: Header=BB19_37 Depth=2
	addi	t2, t2, 2
	srli	t2, t2, 2
.LBB19_83:                              #   in Loop: Header=BB19_37 Depth=2
	slli	t0, t0, 5
	add	t0, a1, t0
	slli	t1, t1, 1
	add	t3, t0, t1
	sh	t2, 0(t3)
	addi	t3, t1, 2
	add	t4, t0, t3
	sh	t2, 0(t4)
	addi	t4, t1, 4
	add	t5, t0, t4
	sh	t2, 0(t5)
	addi	t5, t1, 6
	add	t6, t0, t5
	sh	t2, 0(t6)
	addi	t6, t0, 32
	add	s3, t6, t1
	sh	t2, 0(s3)
	add	s3, t6, t3
	sh	t2, 0(s3)
	add	s3, t6, t4
	sh	t2, 0(s3)
	add	t6, t6, t5
	sh	t2, 0(t6)
	addi	t6, t0, 64
	add	s3, t6, t1
	sh	t2, 0(s3)
	add	s3, t6, t3
	sh	t2, 0(s3)
	add	s3, t6, t4
	sh	t2, 0(s3)
	add	t6, t6, t5
	sh	t2, 0(t6)
	addi	t0, t0, 96
	add	t1, t0, t1
	sh	t2, 0(t1)
	add	t3, t0, t3
	sh	t2, 0(t3)
	add	t4, t0, t4
	sh	t2, 0(t4)
	add	t0, t0, t5
	sh	t2, 0(t0)
	lbu	t0, -1(a3)
	lw	t3, 0(a5)
	lbu	t1, -1(a4)
	blt	s5, t3, .LBB19_88
# %bb.84:                               #   in Loop: Header=BB19_37 Depth=2
	beqz	t3, .LBB19_92
# %bb.85:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s5, .LBB19_106
# %bb.86:                               #   in Loop: Header=BB19_37 Depth=2
	bnez	ra, .LBB19_103
# %bb.87:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s11, .LBB19_95
	j	.LBB19_106
.LBB19_88:                              #   in Loop: Header=BB19_37 Depth=2
	beq	t3, s8, .LBB19_94
# %bb.89:                               #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s2, .LBB19_106
# %bb.90:                               #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_96
# %bb.91:                               #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
	add	t2, t3, t2
	bnez	s10, .LBB19_99
	j	.LBB19_105
.LBB19_92:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_97
# %bb.93:                               #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
	add	t2, t3, t2
	bnez	s11, .LBB19_99
	j	.LBB19_105
.LBB19_94:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	s10, .LBB19_102
.LBB19_95:                              #   in Loop: Header=BB19_37 Depth=2
	mul	t2, t0, s6
	add	t2, t2, s0
	lw	t3, 44(t2)
	slli	t3, t3, 3
	lw	t4, 40(t2)
	lw	t5, 68(t2)
	add	t3, s9, t3
	ld	t3, 0(t3)
	slli	t4, t4, 1
	slli	t5, t5, 3
	add	t5, s9, t5
	lw	t6, 64(t2)
	ld	t5, 0(t5)
	lw	s3, 92(t2)
	add	t3, t3, t4
	slli	t6, t6, 1
	add	t5, t5, t6
	slli	s3, s3, 3
	lw	t4, 116(t2)
	add	s3, s9, s3
	ld	t6, 0(s3)
	lw	s3, 88(t2)
	slli	t4, t4, 3
	add	t4, s9, t4
	lw	t2, 112(t2)
	ld	t4, 0(t4)
	slli	s3, s3, 1
	add	t6, t6, s3
	slli	t2, t2, 1
	add	t2, t4, t2
	lhu	t3, 0(t3)
	lhu	t4, 0(t5)
	lhu	t5, 0(t6)
	lhu	t2, 0(t2)
	add	t3, t3, t4
	add	t2, t5, t2
	j	.LBB19_104
.LBB19_96:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s10, .LBB19_98
	j	.LBB19_106
.LBB19_97:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	s11, .LBB19_106
.LBB19_98:                              #   in Loop: Header=BB19_37 Depth=2
	li	t2, 0
.LBB19_99:                              #   in Loop: Header=BB19_37 Depth=2
	mul	t3, t0, s6
	add	t3, t3, s0
	lw	t4, 44(t3)
	slli	t4, t4, 3
	lw	t5, 40(t3)
	lw	t6, 68(t3)
	add	t4, s9, t4
	ld	t4, 0(t4)
	slli	t5, t5, 1
	slli	t6, t6, 3
	add	t6, s9, t6
	lw	s3, 64(t3)
	ld	t6, 0(t6)
	lw	s4, 92(t3)
	add	t4, t4, t5
	slli	s3, s3, 1
	add	t6, t6, s3
	slli	s4, s4, 3
	lw	t5, 116(t3)
	add	s4, s9, s4
	ld	s3, 0(s4)
	lw	s4, 88(t3)
	slli	t5, t5, 3
	add	t5, s9, t5
	lw	t3, 112(t3)
	ld	t5, 0(t5)
	slli	s4, s4, 1
	add	s3, s3, s4
	slli	t3, t3, 1
	add	t3, t5, t3
	lhu	t4, 0(t4)
	lhu	t5, 0(t6)
	lhu	t6, 0(s3)
	lhu	t3, 0(t3)
	add	t4, t4, t5
	add	t3, t6, t3
	add	t3, t4, t3
	beqz	ra, .LBB19_101
# %bb.100:                              #   in Loop: Header=BB19_37 Depth=2
	add	t2, t2, t3
	addi	t2, t2, 4
	srli	t2, t2, 3
	j	.LBB19_106
.LBB19_101:                             #   in Loop: Header=BB19_37 Depth=2
	addi	t3, t3, 2
	srli	t2, t3, 2
	j	.LBB19_106
.LBB19_102:                             #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	ra, .LBB19_106
.LBB19_103:                             #   in Loop: Header=BB19_37 Depth=2
	ld	t2, 0(a7)
	slli	t3, a6, 1
	slli	t4, t1, 1
	add	t5, t3, t4
	add	t5, t2, t5
	lhu	t5, 0(t5)
	add	t3, t4, t3
	add	t2, t2, t3
	lhu	t3, 2(t2)
	lhu	t4, 4(t2)
	lhu	t2, 6(t2)
	add	t3, t5, t3
	add	t2, t4, t2
.LBB19_104:                             #   in Loop: Header=BB19_37 Depth=2
	add	t2, t3, t2
.LBB19_105:                             #   in Loop: Header=BB19_37 Depth=2
	addi	t2, t2, 2
	srli	t2, t2, 2
.LBB19_106:                             #   in Loop: Header=BB19_37 Depth=2
	slli	t0, t0, 5
	add	t0, a1, t0
	slli	t1, t1, 1
	add	t3, t0, t1
	sh	t2, 0(t3)
	addi	t3, t1, 2
	add	t4, t0, t3
	sh	t2, 0(t4)
	addi	t4, t1, 4
	add	t5, t0, t4
	sh	t2, 0(t5)
	addi	t5, t1, 6
	add	t6, t0, t5
	sh	t2, 0(t6)
	addi	t6, t0, 32
	add	s3, t6, t1
	sh	t2, 0(s3)
	add	s3, t6, t3
	sh	t2, 0(s3)
	add	s3, t6, t4
	sh	t2, 0(s3)
	add	t6, t6, t5
	sh	t2, 0(t6)
	addi	t6, t0, 64
	add	s3, t6, t1
	sh	t2, 0(s3)
	add	s3, t6, t3
	sh	t2, 0(s3)
	add	s3, t6, t4
	sh	t2, 0(s3)
	add	t6, t6, t5
	sh	t2, 0(t6)
	addi	t0, t0, 96
	add	t1, t0, t1
	sh	t2, 0(t1)
	add	t3, t0, t3
	sh	t2, 0(t3)
	add	t4, t0, t4
	sh	t2, 0(t4)
	add	t0, t0, t5
	sh	t2, 0(t0)
	lbu	t0, 0(a3)
	lw	t3, 4(a5)
	lbu	t1, 0(a4)
	blt	s5, t3, .LBB19_111
# %bb.107:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	t3, .LBB19_115
# %bb.108:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s5, .LBB19_36
# %bb.109:                              #   in Loop: Header=BB19_37 Depth=2
	bnez	ra, .LBB19_33
# %bb.110:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s11, .LBB19_118
	j	.LBB19_36
.LBB19_111:                             #   in Loop: Header=BB19_37 Depth=2
	beq	t3, s8, .LBB19_117
# %bb.112:                              #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bne	t3, s2, .LBB19_36
# %bb.113:                              #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_119
# %bb.114:                              #   in Loop: Header=BB19_37 Depth=2
	ld	a7, 0(a7)
	slli	a6, a6, 1
	slli	t2, t1, 1
	add	t3, a6, t2
	add	t3, a7, t3
	lhu	t3, 0(t3)
	add	a6, t2, a6
	add	a6, a7, a6
	lhu	a7, 2(a6)
	lhu	t2, 4(a6)
	lhu	a6, 6(a6)
	add	a7, t3, a7
	add	a6, t2, a6
	add	a6, a7, a6
	bnez	s10, .LBB19_122
	j	.LBB19_35
.LBB19_115:                             #   in Loop: Header=BB19_37 Depth=2
	beqz	ra, .LBB19_120
# %bb.116:                              #   in Loop: Header=BB19_37 Depth=2
	ld	a7, 0(a7)
	slli	a6, a6, 1
	slli	t2, t1, 1
	add	t3, a6, t2
	add	t3, a7, t3
	lhu	t3, 0(t3)
	add	a6, t2, a6
	add	a6, a7, a6
	lhu	a7, 2(a6)
	lhu	t2, 4(a6)
	lhu	a6, 6(a6)
	add	a7, t3, a7
	add	a6, t2, a6
	add	a6, a7, a6
	bnez	s11, .LBB19_122
	j	.LBB19_35
.LBB19_117:                             #   in Loop: Header=BB19_37 Depth=2
	beqz	s10, .LBB19_32
.LBB19_118:                             #   in Loop: Header=BB19_37 Depth=2
	mul	a6, t0, s6
	add	a6, a6, s0
	lw	a7, 44(a6)
	slli	a7, a7, 3
	lw	t2, 40(a6)
	lw	t3, 68(a6)
	add	a7, s9, a7
	ld	a7, 0(a7)
	slli	t2, t2, 1
	slli	t3, t3, 3
	add	t3, s9, t3
	lw	t4, 64(a6)
	ld	t3, 0(t3)
	lw	t5, 92(a6)
	add	a7, a7, t2
	slli	t4, t4, 1
	add	t3, t3, t4
	slli	t5, t5, 3
	lw	t2, 116(a6)
	add	t5, s9, t5
	ld	t4, 0(t5)
	lw	t5, 88(a6)
	slli	t2, t2, 3
	add	t2, s9, t2
	lw	a6, 112(a6)
	ld	t2, 0(t2)
	slli	t5, t5, 1
	add	t4, t4, t5
	slli	a6, a6, 1
	add	a6, t2, a6
	lhu	a7, 0(a7)
	lhu	t2, 0(t3)
	lhu	t3, 0(t4)
	lhu	a6, 0(a6)
	add	a7, a7, t2
	add	a6, t3, a6
	j	.LBB19_34
.LBB19_119:                             #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	bnez	s10, .LBB19_121
	j	.LBB19_36
.LBB19_120:                             #   in Loop: Header=BB19_37 Depth=2
	mv	t2, a0
	beqz	s11, .LBB19_36
.LBB19_121:                             #   in Loop: Header=BB19_37 Depth=2
	li	a6, 0
.LBB19_122:                             #   in Loop: Header=BB19_37 Depth=2
	mul	a7, t0, s6
	add	a7, a7, s0
	lw	t2, 44(a7)
	slli	t2, t2, 3
	lw	t3, 40(a7)
	lw	t4, 68(a7)
	add	t2, s9, t2
	ld	t2, 0(t2)
	slli	t3, t3, 1
	slli	t4, t4, 3
	add	t4, s9, t4
	lw	t5, 64(a7)
	ld	t4, 0(t4)
	lw	t6, 92(a7)
	add	t2, t2, t3
	slli	t5, t5, 1
	add	t4, t4, t5
	slli	t6, t6, 3
	lw	t3, 116(a7)
	add	t6, s9, t6
	ld	t5, 0(t6)
	lw	t6, 88(a7)
	slli	t3, t3, 3
	add	t3, s9, t3
	lw	a7, 112(a7)
	ld	t3, 0(t3)
	slli	t6, t6, 1
	add	t5, t5, t6
	slli	a7, a7, 1
	add	a7, t3, a7
	lhu	t2, 0(t2)
	lhu	t3, 0(t4)
	lhu	t4, 0(t5)
	lhu	a7, 0(a7)
	add	t2, t2, t3
	add	a7, t4, a7
	add	a7, t2, a7
	beqz	ra, .LBB19_124
# %bb.123:                              #   in Loop: Header=BB19_37 Depth=2
	add	a6, a6, a7
	addi	a6, a6, 4
	srli	t2, a6, 3
	j	.LBB19_36
.LBB19_124:                             #   in Loop: Header=BB19_37 Depth=2
	addi	a7, a7, 2
	srli	t2, a7, 2
	j	.LBB19_36
.LBB19_125:                             #   in Loop: Header=BB19_30 Depth=1
	beqz	ra, .LBB19_129
# %bb.126:                              #   in Loop: Header=BB19_30 Depth=1
	lui	s3, %hi(img)
	lw	a0, 724(sp)
	slli	a0, a0, 3
	add	a0, s9, a0
	lw	a1, 720(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 1
	add	a1, a0, a1
	addi	a0, sp, 824
	mv	a2, s1
	call	memcpy
	blez	s7, .LBB19_133
# %bb.127:                              # %.preheader14
                                        #   in Loop: Header=BB19_30 Depth=1
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 11
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	addi	s3, a0, 512
	ld	s4, 184(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(img)
.LBB19_128:                             #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s2)
	add	a0, a0, s3
	addi	a1, sp, 824
	mv	a2, s1
	call	memcpy
	addi	s4, s4, -1
	addi	s3, s3, 32
	bnez	s4, .LBB19_128
.LBB19_129:                             #   in Loop: Header=BB19_30 Depth=1
	lui	s3, %hi(img)
	ld	t6, 288(sp)                     # 8-byte Folded Reload
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	li	s2, 3
	beqz	a0, .LBB19_29
# %bb.130:                              #   in Loop: Header=BB19_30 Depth=1
	blez	s7, .LBB19_134
# %bb.131:                              # %.preheader12
                                        #   in Loop: Header=BB19_30 Depth=1
	addi	a0, sp, 792
	addi	a1, sp, 340
.LBB19_132:                             #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 0(a1)
	slli	a2, a2, 3
	add	a2, s9, a2
	lw	a3, -4(a1)
	ld	a2, 0(a2)
	slli	a3, a3, 1
	add	a2, a2, a3
	lh	a2, 0(a2)
	sh	a2, 0(a0)
	addi	a0, a0, 2
	addi	a1, a1, 24
	bne	a0, a4, .LBB19_132
	j	.LBB19_134
.LBB19_133:                             #   in Loop: Header=BB19_30 Depth=1
	ld	t6, 288(sp)                     # 8-byte Folded Reload
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	li	s2, 3
	beqz	a0, .LBB19_29
.LBB19_134:                             #   in Loop: Header=BB19_30 Depth=1
	ld	t0, 192(sp)                     # 8-byte Folded Reload
	blez	t6, .LBB19_140
# %bb.135:                              #   in Loop: Header=BB19_30 Depth=1
	li	a0, 0
	ld	a1, %lo(img)(s3)
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 11
	lui	a2, 2
	addiw	a2, a2, 824
	add	a2, a3, a2
	add	a2, a1, a2
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	j	.LBB19_137
.LBB19_136:                             #   in Loop: Header=BB19_137 Depth=2
	addi	a0, a0, 1
	addi	a2, a2, 2
	beq	a0, t0, .LBB19_140
.LBB19_137:                             #   Parent Loop BB19_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_139 Depth 3
	blez	s7, .LBB19_136
# %bb.138:                              # %.preheader4
                                        #   in Loop: Header=BB19_137 Depth=2
	slli	a4, a0, 1
	add	a4, a3, a4
	add	a4, a1, a4
	addi	a5, sp, 792
	mv	a6, a2
.LBB19_139:                             #   Parent Loop BB19_30 Depth=1
                                        #     Parent Loop BB19_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lh	a7, 0(a5)
	sh	a7, 0(a6)
	addi	a6, a6, 32
	addi	a5, a5, 2
	bne	a6, a4, .LBB19_139
	j	.LBB19_136
.LBB19_140:                             #   in Loop: Header=BB19_30 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB19_29
# %bb.141:                              #   in Loop: Header=BB19_30 Depth=1
	lw	a0, 316(sp)
	slli	a0, a0, 3
	add	a0, s9, a0
	lw	a1, 312(sp)
	ld	a2, 0(a0)
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	lhu	a0, -2(a0)
	slli	a1, a1, 1
	add	a1, a2, a1
	lhu	a3, 0(a1)
	subw	a1, a0, a3
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	mul	a1, a1, a2
	blt	a2, s8, .LBB19_144
# %bb.142:                              # %.preheader9
                                        #   in Loop: Header=BB19_30 Depth=1
	li	a2, 1
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	ld	t0, 32(sp)                      # 8-byte Folded Reload
.LBB19_143:                             #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a6, 0(a4)
	lhu	a7, 0(a5)
	subw	a6, a6, a7
	mul	a6, a6, a2
	add	a1, a6, a1
	addi	a5, a5, -2
	addi	a4, a4, 2
	addi	a2, a2, 1
	bne	a5, t0, .LBB19_143
.LBB19_144:                             #   in Loop: Header=BB19_30 Depth=1
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	lhu	a2, -2(a2)
	subw	a3, a2, a3
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	mul	a4, a3, a5
	ld	t1, 128(sp)                     # 8-byte Folded Reload
	blt	a5, s8, .LBB19_147
# %bb.145:                              # %.preheader7
                                        #   in Loop: Header=BB19_30 Depth=1
	li	a3, 1
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	ld	a6, 24(sp)                      # 8-byte Folded Reload
.LBB19_146:                             #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a7, 0(a5)
	lhu	t0, 0(a6)
	subw	a7, a7, t0
	mul	a7, a7, a3
	add	a4, a7, a4
	addi	a6, a6, -2
	addi	a5, a5, 2
	addi	a3, a3, 1
	bne	a6, t1, .LBB19_146
.LBB19_147:                             #   in Loop: Header=BB19_30 Depth=1
	blez	s7, .LBB19_29
# %bb.148:                              #   in Loop: Header=BB19_30 Depth=1
	li	a3, 0
	ld	a5, 112(sp)                     # 8-byte Folded Reload
	mul	a1, a1, a5
	ld	a5, 104(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	sraw	a1, a1, a5
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	mul	a4, a4, a5
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	add	a4, a4, a5
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	sraw	a4, a4, a5
	ld	a5, %lo(img)(s3)
	add	a0, a2, a0
	slli	a6, a0, 4
	lui	a0, 22
	addiw	a0, a0, 424
	add	a0, a5, a0
	ld	a7, 272(sp)                     # 8-byte Folded Reload
	slli	a7, a7, 11
	lui	a2, 2
	addiw	a2, a2, 1848
	add	a2, a7, a2
	add	a2, a5, a2
	ld	t0, 64(sp)                      # 8-byte Folded Reload
	mul	t0, t0, a1
	add	a6, t0, a6
	ld	t0, 72(sp)                      # 8-byte Folded Reload
	mul	t0, t0, a4
	add	a6, t0, a6
	addi	a6, a6, 16
	ld	t0, 56(sp)                      # 8-byte Folded Reload
	add	a7, t0, a7
	j	.LBB19_150
.LBB19_149:                             #   in Loop: Header=BB19_150 Depth=2
	addi	a3, a3, 1
	addi	a2, a2, 32
	add	a6, a6, a4
	beq	a3, s7, .LBB19_29
.LBB19_150:                             #   Parent Loop BB19_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_153 Depth 3
	blez	t6, .LBB19_149
# %bb.151:                              #   in Loop: Header=BB19_150 Depth=2
	lw	t0, 0(a0)
	slli	t1, a3, 5
	add	t1, a7, t1
	add	t1, a5, t1
	mv	t2, a6
	mv	t3, a2
	j	.LBB19_153
.LBB19_152:                             #   in Loop: Header=BB19_153 Depth=3
	sgtz	t5, t4
	negw	t5, t5
	and	t4, t5, t4
	sh	t4, 0(t3)
	addi	t3, t3, 2
	add	t2, t2, a1
	beq	t3, t1, .LBB19_149
.LBB19_153:                             #   Parent Loop BB19_30 Depth=1
                                        #     Parent Loop BB19_150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sraiw	t5, t2, 5
	mv	t4, t0
	blt	t0, t5, .LBB19_152
# %bb.154:                              #   in Loop: Header=BB19_153 Depth=3
	mv	t4, t5
	j	.LBB19_152
.LBB19_155:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	bnez	a0, .LBB19_184
# %bb.156:
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	blez	s7, .LBB19_159
# %bb.157:
	li	s1, 0
	addi	s2, sp, 296
.LBB19_158:                             # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	li	a3, 0
	mv	a4, s2
	call	getNeighbour
	addiw	s1, s1, 1
	addi	s2, s2, 24
	bne	s1, s7, .LBB19_158
.LBB19_159:
	li	a4, 0
	li	a5, 0
	lui	a0, 524288
	addiw	s8, a0, -1
	lui	a0, 2
	addiw	a0, a0, 414
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	lui	a6, %hi(img)
	lui	s6, %hi(input)
	li	a7, 2
	li	t0, 4
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	sd	s7, 280(sp)                     # 8-byte Folded Spill
	j	.LBB19_162
.LBB19_160:                             #   in Loop: Header=BB19_162 Depth=1
	mv	a5, a0
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	li	a7, 2
	li	t0, 4
.LBB19_161:                             #   in Loop: Header=BB19_162 Depth=1
	addi	a4, a4, 1
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 512
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	beq	a4, t0, .LBB19_183
.LBB19_162:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_174 Depth 2
                                        #       Child Loop BB19_177 Depth 3
                                        #         Child Loop BB19_179 Depth 4
	ld	a0, %lo(img)(a6)
	lw	a1, 24(a0)
	ld	a0, %lo(input)(s6)
	addi	a0, a0, 2047
	bne	a1, a7, .LBB19_166
# %bb.163:                              #   in Loop: Header=BB19_162 Depth=1
	lw	a1, 977(a0)
	beqz	a1, .LBB19_166
# %bb.164:                              #   in Loop: Header=BB19_162 Depth=1
	bne	a4, a7, .LBB19_168
# %bb.165:                              #   in Loop: Header=BB19_162 Depth=1
	beqz	a2, .LBB19_161
	j	.LBB19_168
.LBB19_166:                             #   in Loop: Header=BB19_162 Depth=1
	lw	a0, 1001(a0)
	addi	a0, a0, -1
	seqz	a0, a0
	snez	a1, a4
	and	a0, a1, a0
	bnez	a0, .LBB19_161
# %bb.167:                              #   in Loop: Header=BB19_162 Depth=1
	xori	a0, a4, 2
	or	a0, a0, a2
	snez	a0, a0
	beqz	a0, .LBB19_161
.LBB19_168:                             #   in Loop: Header=BB19_162 Depth=1
	sext.w	a0, a4
	li	a1, 3
	beq	a0, a1, .LBB19_171
# %bb.169:                              #   in Loop: Header=BB19_162 Depth=1
	li	a1, 1
	bne	a0, a1, .LBB19_172
# %bb.170:                              #   in Loop: Header=BB19_162 Depth=1
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB19_161
	j	.LBB19_172
.LBB19_171:                             #   in Loop: Header=BB19_162 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB19_161
.LBB19_172:                             #   in Loop: Header=BB19_162 Depth=1
	sd	s8, 232(sp)                     # 8-byte Folded Spill
	sd	a5, 224(sp)                     # 8-byte Folded Spill
	sd	a4, 240(sp)                     # 8-byte Folded Spill
	li	a0, 0
	li	s8, 0
	li	a2, 1
	j	.LBB19_174
.LBB19_173:                             #   in Loop: Header=BB19_174 Depth=2
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	andi	a1, a1, 1
	li	a0, 1
	li	a2, 0
	beqz	a1, .LBB19_180
.LBB19_174:                             #   Parent Loop BB19_162 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_177 Depth 3
                                        #         Child Loop BB19_179 Depth 4
	sd	a2, 272(sp)                     # 8-byte Folded Spill
	blez	s7, .LBB19_173
# %bb.175:                              # %.preheader
                                        #   in Loop: Header=BB19_174 Depth=2
	lui	a1, %hi(imgUV_org)
	ld	a1, %lo(imgUV_org)(a1)
	slli	a2, a0, 3
	add	a1, a1, a2
	ld	s11, 0(a1)
	li	s0, 0
	li	s2, 0
	slli	a0, a0, 11
	ld	s4, 264(sp)                     # 8-byte Folded Reload
	add	s4, s4, a0
	j	.LBB19_177
.LBB19_176:                             #   in Loop: Header=BB19_177 Depth=3
	addiw	s2, s2, 4
	addi	s0, s0, 4
	addi	s4, s4, 128
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	bge	s2, s7, .LBB19_173
.LBB19_177:                             #   Parent Loop BB19_162 Depth=1
                                        #     Parent Loop BB19_174 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_179 Depth 4
	blez	a3, .LBB19_176
# %bb.178:                              #   in Loop: Header=BB19_177 Depth=3
	li	s7, 0
	li	s9, 0
	li	a1, 24
	mul	s1, s0, a1
	addi	a2, sp, 296
	add	s1, a2, s1
	addi	a0, s0, 1
	mul	s10, a0, a1
	add	s10, a2, s10
	addi	a0, s0, 2
	mul	s3, a0, a1
	add	s3, a2, s3
	addi	a0, s0, 3
	mul	s5, a0, a1
	add	s5, a2, s5
.LBB19_179:                             #   Parent Loop BB19_162 Depth=1
                                        #     Parent Loop BB19_174 Depth=2
                                        #       Parent Loop BB19_177 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lw	a0, 20(s1)
	slli	a0, a0, 3
	lw	a1, 16(s1)
	add	a0, s11, a0
	ld	a0, 0(a0)
	ld	a2, %lo(img)(a6)
	slli	a1, a1, 1
	add	a1, a1, s7
	add	a1, a0, a1
	lhu	a3, 0(a1)
	add	a0, s4, s7
	add	a0, a2, a0
	lhu	a2, -102(a0)
	subw	a3, a3, a2
	lhu	a2, 2(a1)
	lhu	a4, -100(a0)
	lhu	a5, 4(a1)
	lhu	a6, -98(a0)
	sw	a3, 728(sp)
	subw	a2, a2, a4
	sw	a2, 732(sp)
	subw	a2, a5, a6
	lw	a3, 20(s10)
	sw	a2, 736(sp)
	lhu	a1, 6(a1)
	lhu	a2, -96(a0)
	slli	a3, a3, 3
	lw	a4, 16(s10)
	add	a3, s11, a3
	ld	a3, 0(a3)
	subw	a2, a1, a2
	slli	a4, a4, 1
	add	a1, a4, s7
	add	a1, a3, a1
	lhu	a3, 0(a1)
	lhu	a4, -70(a0)
	lhu	a5, 4(a1)
	lhu	a6, -66(a0)
	sw	a2, 740(sp)
	lw	a7, 20(s3)
	subw	a2, a3, a4
	subw	a3, a5, a6
	lhu	a4, 6(a1)
	slli	a7, a7, 3
	lw	a5, 16(s3)
	add	a7, s11, a7
	ld	a6, 0(a7)
	lhu	a7, -64(a0)
	slli	a5, a5, 1
	add	a5, a5, s7
	add	a5, a6, a5
	lhu	a6, 0(a5)
	lhu	t0, -38(a0)
	sw	a3, 752(sp)
	subw	a3, a4, a7
	sw	a3, 756(sp)
	subw	a3, a6, t0
	lhu	a4, 2(a5)
	lhu	a6, -36(a0)
	lhu	a7, 4(a5)
	lhu	t0, -34(a0)
	sw	a3, 760(sp)
	subw	a3, a4, a6
	sw	a3, 764(sp)
	subw	a3, a7, t0
	lw	a4, 20(s5)
	sw	a3, 768(sp)
	lhu	a3, 6(a5)
	lhu	a5, -32(a0)
	slli	a4, a4, 3
	lw	a6, 16(s5)
	add	a4, s11, a4
	ld	a4, 0(a4)
	subw	a3, a3, a5
	slli	a6, a6, 1
	add	a6, a6, s7
	add	a4, a4, a6
	lhu	a5, 0(a4)
	lhu	a6, -6(a0)
	lhu	a7, 2(a4)
	lhu	t0, -4(a0)
	sw	a3, 772(sp)
	subw	a3, a5, a6
	sw	a3, 776(sp)
	subw	a3, a7, t0
	lhu	a5, 4(a4)
	lhu	a6, -2(a0)
	lhu	a4, 6(a4)
	lhu	a7, 0(a0)
	sw	a3, 780(sp)
	subw	a3, a5, a6
	sw	a3, 784(sp)
	subw	a3, a4, a7
	ld	a4, %lo(input)(s6)
	lhu	a5, 2(a1)
	lhu	a0, -68(a0)
	sw	a3, 788(sp)
	lw	a1, 24(a4)
	sw	a2, 744(sp)
	subw	a5, a5, a0
	sw	a5, 748(sp)
	addi	a0, sp, 728
	call	SATD
	lui	a6, %hi(img)
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	addw	s8, a0, s8
	addiw	s9, s9, 4
	addi	s7, s7, 8
	blt	s9, a3, .LBB19_179
	j	.LBB19_176
.LBB19_180:                             #   in Loop: Header=BB19_162 Depth=1
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	mv	a0, a4
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	blt	s8, a1, .LBB19_160
# %bb.181:                              #   in Loop: Header=BB19_162 Depth=1
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	mv	s8, a1
	j	.LBB19_160
.LBB19_182:
	lw	s10, 320(sp)
	mv	s11, s10
	ld	t2, 192(sp)                     # 8-byte Folded Reload
	beqz	s3, .LBB19_185
	j	.LBB19_19
.LBB19_185:
	j	.LBB19_20
.LBB19_183:
	li	a0, 528
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	add	a0, a1, a0
	sw	a5, 416(a0)
.LBB19_184:
	ld	ra, 952(sp)                     # 8-byte Folded Reload
	ld	s0, 944(sp)                     # 8-byte Folded Reload
	ld	s1, 936(sp)                     # 8-byte Folded Reload
	ld	s2, 928(sp)                     # 8-byte Folded Reload
	ld	s3, 920(sp)                     # 8-byte Folded Reload
	ld	s4, 912(sp)                     # 8-byte Folded Reload
	ld	s5, 904(sp)                     # 8-byte Folded Reload
	ld	s6, 896(sp)                     # 8-byte Folded Reload
	ld	s7, 888(sp)                     # 8-byte Folded Reload
	ld	s8, 880(sp)                     # 8-byte Folded Reload
	ld	s9, 872(sp)                     # 8-byte Folded Reload
	ld	s10, 864(sp)                    # 8-byte Folded Reload
	ld	s11, 856(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 960
	ret
.Lfunc_end19:
	.size	IntraChromaPrediction, .Lfunc_end19-IntraChromaPrediction
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ZeroRef                         # -- Begin function ZeroRef
	.p2align	2
	.type	ZeroRef,@function
ZeroRef:                                # @ZeroRef
# %bb.0:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 2
	add	a0, a0, a2
	ld	a2, -1712(a0)
	lw	a0, 144(a1)
	lw	a6, 148(a1)
	ld	a1, 0(a2)
	addiw	a2, a0, 3
	addiw	a3, a6, 3
	addi	a4, a0, -1
.LBB20_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_2 Depth 2
	mv	a5, a6
	slli	a6, a6, 3
	add	a6, a1, a6
	ld	a6, 0(a6)
	add	a6, a6, a0
	mv	a7, a4
.LBB20_2:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t0, 0(a6)
	bnez	t0, .LBB20_6
# %bb.3:                                #   in Loop: Header=BB20_2 Depth=2
	addi	a7, a7, 1
	addi	a6, a6, 1
	blt	a7, a2, .LBB20_2
# %bb.4:                                #   in Loop: Header=BB20_1 Depth=1
	addi	a6, a5, 1
	blt	a5, a3, .LBB20_1
# %bb.5:
	li	a0, 1
	ret
.LBB20_6:
	li	a0, 0
	ret
.Lfunc_end20:
	.size	ZeroRef, .Lfunc_end20-ZeroRef
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MBType2Value                    # -- Begin function MBType2Value
	.p2align	2
	.type	MBType2Value,@function
MBType2Value:                           # @MBType2Value
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a3, 24(a1)
	lw	a2, 72(a0)
	li	a4, 1
	bne	a3, a4, .LBB21_6
# %bb.1:
	beqz	a2, .LBB21_9
# %bb.2:
	mv	a3, a0
	andi	a4, a2, -5
	li	a5, 9
	li	a0, 23
	beq	a4, a5, .LBB21_26
# %bb.3:
	lw	a4, 392(a3)
	lw	a3, 404(a3)
	addi	a2, a2, -1
	li	a0, 13
	bltu	a0, a2, .LBB21_25
# %bb.4:
	slli	a2, a2, 2
	lui	a0, %hi(.LJTI21_1)
	addi	a0, a0, %lo(.LJTI21_1)
	add	a0, a2, a0
	lw	a2, 0(a0)
	li	a0, 48
	jr	a2
.LBB21_5:
	slli	a4, a4, 2
	lui	a0, %hi(MBType2Value.dir1offset)
	addi	a0, a0, %lo(MBType2Value.dir1offset)
	add	a0, a0, a4
	lw	a0, 0(a0)
	ret
.LBB21_6:
	addi	a0, a2, -8
	li	a4, 6
	bltu	a4, a0, .LBB21_15
# %bb.7:
	slli	a0, a0, 2
	lui	a4, %hi(.LJTI21_0)
	addi	a4, a4, %lo(.LJTI21_0)
	add	a0, a0, a4
	lw	a4, 0(a0)
	mv	a0, a2
	jr	a4
.LBB21_8:
	addi	a3, a3, -2
	seqz	a0, a3
	addi	a0, a0, -1
	andi	a0, a0, 6
	ret
.LBB21_9:
	li	a0, 0
	ret
.LBB21_10:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB21_16
.LBB21_11:
	li	a0, 4
	ret
.LBB21_12:
	addi	a3, a3, -2
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 84(a0)
	seqz	a1, a3
	addi	a1, a1, -1
	andi	a1, a1, 6
	addw	a0, a0, a1
	ret
.LBB21_13:
	li	a1, 2
	li	a0, 25
	beq	a3, a1, .LBB21_26
# %bb.14:
	li	a0, 31
	ret
.LBB21_15:
	mv	a0, a2
	ret
.LBB21_16:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lw	a2, 144(a1)
	lw	a5, 148(a1)
	lui	a1, 2
	add	a1, a0, a1
	addiw	a4, a2, 3
	addiw	a3, a5, 3
	mv	a0, a2
	blt	a4, a2, .LBB21_18
# %bb.17:
	mv	a0, a4
.LBB21_18:
	ld	a4, -1712(a1)
	mv	a1, a5
	blt	a3, a5, .LBB21_20
# %bb.19:
	mv	a1, a3
.LBB21_20:
	ld	a3, 0(a4)
	sub	a0, a0, a2
	addi	a4, a0, 1
.LBB21_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_22 Depth 2
	mv	a6, a5
	slli	a0, a5, 3
	add	a0, a3, a0
	ld	a0, 0(a0)
	add	a0, a0, a2
	mv	a5, a4
.LBB21_22:                              #   Parent Loop BB21_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a7, 0(a0)
	bnez	a7, .LBB21_11
# %bb.23:                               #   in Loop: Header=BB21_22 Depth=2
	addi	a5, a5, -1
	addi	a0, a0, 1
	bnez	a5, .LBB21_22
# %bb.24:                               #   in Loop: Header=BB21_21 Depth=1
	addi	a5, a6, 1
	li	a0, 5
	bne	a6, a1, .LBB21_21
	j	.LBB21_26
.LBB21_25:
	li	a0, 12
	mul	a0, a4, a0
	lui	a1, %hi(MBType2Value.dir2offset)
	addi	a1, a1, %lo(MBType2Value.dir2offset)
	add	a0, a1, a0
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addiw	a0, a0, 5
.LBB21_26:
	ret
.LBB21_27:
	li	a0, 12
	mul	a0, a4, a0
	lui	a1, %hi(MBType2Value.dir2offset)
	addi	a1, a1, %lo(MBType2Value.dir2offset)
	add	a0, a1, a0
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addiw	a0, a0, 4
	ret
.LBB21_28:
	li	a0, 22
	ret
.LBB21_29:
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 84(a0)
	addiw	a0, a0, 23
	ret
.Lfunc_end21:
	.size	MBType2Value, .Lfunc_end21-MBType2Value
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI21_0:
	.word	.LBB21_10
	.word	.LBB21_8
	.word	.LBB21_12
	.word	.LBB21_26
	.word	.LBB21_26
	.word	.LBB21_8
	.word	.LBB21_13
.LJTI21_1:
	.word	.LBB21_5
	.word	.LBB21_27
	.word	.LBB21_25
	.word	.LBB21_25
	.word	.LBB21_25
	.word	.LBB21_25
	.word	.LBB21_25
	.word	.LBB21_28
	.word	.LBB21_25
	.word	.LBB21_29
	.word	.LBB21_25
	.word	.LBB21_25
	.word	.LBB21_25
	.word	.LBB21_26
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	writeIntra4x4Modes              # -- Begin function writeIntra4x4Modes
	.p2align	2
	.type	writeIntra4x4Modes,@function
writeIntra4x4Modes:                     # @writeIntra4x4Modes
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
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	addiw	a2, a2, -1200
	add	a2, a1, a2
	lw	a5, 12(a1)
	ld	a4, 8(a2)
	li	a3, 528
	mul	s2, a5, a3
	add	s2, a4, s2
	lw	t1, 376(s2)
	li	a3, 11
	beq	t1, a3, .LBB22_2
# %bb.1:
	li	a3, 13
	bne	t1, a3, .LBB22_8
.LBB22_2:
	li	a3, 0
	bgtz	a0, .LBB22_7
# %bb.3:
	li	a6, 0
	li	a7, 0
	li	t2, 0
	addi	t0, s2, 332
	addi	t1, t1, -13
	seqz	t1, t1
	addi	t1, t1, 1
	slli	t3, t1, 1
	addi	t4, sp, 8
	addi	t5, sp, 72
	li	t6, 2
	li	s0, 4
.LBB22_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_5 Depth 2
	li	s1, 0
	mv	a3, t2
	sext.w	t2, t2
	slli	s3, t2, 2
	add	s3, t4, s3
	mv	s4, a6
.LBB22_5:                               #   Parent Loop BB22_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s5, t0, s1
	lbu	s5, 0(s5)
	add	s6, t5, t2
	sb	s5, 0(s6)
	sw	s4, 0(s3)
	addi	t2, t2, 1
	add	s1, s1, t1
	addiw	a3, a3, 1
	addi	s3, s3, 4
	add	s4, s4, t1
	bltu	s1, t6, .LBB22_5
# %bb.6:                                #   in Loop: Header=BB22_4 Depth=1
	add	a7, a7, t3
	add	a6, a6, t3
	add	t0, t0, t3
	bltu	a7, s0, .LBB22_4
.LBB22_7:
	lw	a7, 380(s2)
	li	a6, 11
	bne	a7, a6, .LBB22_9
	j	.LBB22_10
.LBB22_8:
	li	a3, 0
	lw	a7, 380(s2)
	li	a6, 11
	beq	a7, a6, .LBB22_10
.LBB22_9:
	li	a6, 13
	bne	a7, a6, .LBB22_16
.LBB22_10:
	bltz	a0, .LBB22_12
# %bb.11:
	li	a6, 1
	bne	a0, a6, .LBB22_16
.LBB22_12:
	li	a6, 0
	addi	a7, a7, -13
	seqz	a7, a7
	addi	a7, a7, 1
	slli	t0, a7, 1
	li	t1, 528
	mul	t1, a5, t1
	add	t1, t1, a4
	addi	t1, t1, 336
	li	t2, 4
	addi	t3, sp, 8
	addi	t4, sp, 72
	li	t5, 2
	li	t6, 4
.LBB22_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_14 Depth 2
	li	s0, 0
	slli	s1, a3, 2
	add	s1, t3, s1
	add	s3, t4, a3
	mv	s4, t6
.LBB22_14:                              #   Parent Loop BB22_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s5, t1, s0
	lbu	s5, 0(s5)
	sb	s5, 0(s3)
	sw	s4, 0(s1)
	add	s0, s0, a7
	addiw	a3, a3, 1
	addi	s1, s1, 4
	addi	s3, s3, 1
	add	s4, s4, a7
	bltu	s0, t5, .LBB22_14
# %bb.15:                               #   in Loop: Header=BB22_13 Depth=1
	add	a6, a6, t0
	add	t6, t6, t0
	add	t1, t1, t0
	bltu	a6, t2, .LBB22_13
.LBB22_16:
	lw	a7, 384(s2)
	li	a6, 11
	beq	a7, a6, .LBB22_18
# %bb.17:
	li	a6, 13
	bne	a7, a6, .LBB22_24
.LBB22_18:
	bltz	a0, .LBB22_20
# %bb.19:
	li	a6, 2
	bne	a0, a6, .LBB22_24
.LBB22_20:
	li	a6, 0
	addi	a7, a7, -13
	seqz	a7, a7
	addi	a7, a7, 1
	slli	t0, a7, 1
	li	t1, 528
	mul	t1, a5, t1
	add	t1, t1, a4
	addi	t1, t1, 340
	li	t2, 8
	addi	t3, sp, 8
	addi	t4, sp, 72
	li	t5, 2
	li	t6, 4
.LBB22_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_22 Depth 2
	li	s0, 0
	slli	s1, a3, 2
	add	s1, t3, s1
	add	s3, t4, a3
	mv	s4, t2
.LBB22_22:                              #   Parent Loop BB22_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s5, t1, s0
	lbu	s5, 0(s5)
	sb	s5, 0(s3)
	sw	s4, 0(s1)
	add	s0, s0, a7
	addiw	a3, a3, 1
	addi	s1, s1, 4
	addi	s3, s3, 1
	add	s4, s4, a7
	bltu	s0, t5, .LBB22_22
# %bb.23:                               #   in Loop: Header=BB22_21 Depth=1
	add	a6, a6, t0
	add	t2, t2, t0
	add	t1, t1, t0
	bltu	a6, t6, .LBB22_21
.LBB22_24:
	lw	a6, 388(s2)
	li	a7, 11
	beq	a6, a7, .LBB22_26
# %bb.25:
	li	a7, 13
	bne	a6, a7, .LBB22_32
.LBB22_26:
	bltz	a0, .LBB22_28
# %bb.27:
	li	a7, 3
	bne	a0, a7, .LBB22_32
.LBB22_28:
	li	a0, 0
	addi	a6, a6, -13
	seqz	a6, a6
	addi	a6, a6, 1
	slli	a7, a6, 1
	li	t0, 528
	mul	a5, a5, t0
	add	a4, a5, a4
	addi	a4, a4, 344
	li	a5, 12
	addi	t0, sp, 8
	addi	t1, sp, 72
	li	t2, 2
	li	t3, 4
.LBB22_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_30 Depth 2
	li	t4, 0
	slli	t5, a3, 2
	add	t5, t0, t5
	add	t6, t1, a3
	mv	s0, a5
.LBB22_30:                              #   Parent Loop BB22_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s1, a4, t4
	lbu	s1, 0(s1)
	sb	s1, 0(t6)
	sw	s0, 0(t5)
	add	t4, t4, a6
	addiw	a3, a3, 1
	addi	t5, t5, 4
	addi	t6, t6, 1
	add	s0, s0, a6
	bltu	t4, t2, .LBB22_30
# %bb.31:                               #   in Loop: Header=BB22_29 Depth=1
	add	a0, a0, a7
	add	a5, a5, a7
	add	a4, a4, a7
	bltu	a0, t3, .LBB22_29
.LBB22_32:
	blez	a3, .LBB22_38
# %bb.33:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 945(a0)
	li	s0, 0
	slli	a0, a0, 3
	lui	a4, %hi(assignSE2partition)
	addi	a4, a4, %lo(assignSE2partition)
	add	a0, a4, a0
	lw	a4, 0(s2)
	ld	s3, 0(a2)
	ld	s4, 0(a0)
	lui	a0, 8
	addiw	a0, a0, -1184
	add	a0, a1, a0
	li	a1, 48
	mul	a2, a4, a1
	add	s1, a0, a2
	mul	a1, a3, a1
	add	a1, a2, a1
	add	s5, a0, a1
	addi	s6, sp, 72
	addi	s7, sp, 8
	li	s8, 1
	lui	s9, %hi(input)
	li	s10, 4
	li	s11, 112
	j	.LBB22_36
.LBB22_34:                              #   in Loop: Header=BB22_36 Depth=1
	sw	s10, 0(s1)
	lw	a0, 16(s4)
	ld	a1, 24(s3)
	mul	a0, a0, s11
	add	a1, a1, a0
	ld	a2, 104(a1)
	lui	a0, %hi(writeIntraPredMode_CABAC)
	addi	a0, a0, %lo(writeIntraPredMode_CABAC)
	sd	a0, 40(s1)
	mv	a0, s1
	jalr	a2
.LBB22_35:                              #   in Loop: Header=BB22_36 Depth=1
	lw	a0, 12(s1)
	lw	a1, 40(s2)
	add	a0, a1, a0
	sw	a0, 40(s2)
	lw	a0, 12(s1)
	lw	a1, 0(s2)
	addw	s0, a0, s0
	addi	s1, s1, 48
	addi	a1, a1, 1
	sw	a1, 0(s2)
	addi	s6, s6, 1
	addi	s7, s7, 4
	beq	s1, s5, .LBB22_39
.LBB22_36:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(input)(s9)
	lw	a1, 0(s7)
	lbu	a2, 0(s6)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	sw	s8, 420(s2)
	sw	a1, 24(s1)
	sw	a2, 4(s1)
	sw	zero, 8(s1)
	bnez	a0, .LBB22_34
# %bb.37:                               #   in Loop: Header=BB22_36 Depth=1
	sw	s10, 0(s1)
	lw	a0, 16(s4)
	ld	a1, 24(s3)
	mul	a0, a0, s11
	add	a1, a1, a0
	mv	a0, s1
	call	writeSyntaxElement_Intra4x4PredictionMode
	j	.LBB22_35
.LBB22_38:
	li	s0, 0
.LBB22_39:
	mv	a0, s0
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
.Lfunc_end22:
	.size	writeIntra4x4Modes, .Lfunc_end22-writeIntra4x4Modes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	B8Mode2Value                    # -- Begin function B8Mode2Value
	.p2align	2
	.type	B8Mode2Value,@function
B8Mode2Value:                           # @B8Mode2Value
# %bb.0:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 24(a2)
	li	a3, 1
	bne	a2, a3, .LBB23_2
# %bb.1:
	slli	a0, a0, 2
	lui	a2, %hi(B8Mode2Value.b8start)
	addi	a2, a2, %lo(B8Mode2Value.b8start)
	add	a2, a2, a0
	lui	a3, %hi(B8Mode2Value.b8inc)
	addi	a3, a3, %lo(B8Mode2Value.b8inc)
	add	a0, a3, a0
	lw	a0, 0(a0)
	lw	a2, 0(a2)
	mul	a0, a0, a1
	addw	a0, a0, a2
	ret
.LBB23_2:
	addiw	a0, a0, -4
	ret
.Lfunc_end23:
	.size	B8Mode2Value, .Lfunc_end23-B8Mode2Value
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeMBLayer                    # -- Begin function writeMBLayer
	.p2align	2
	.type	writeMBLayer,@function
writeMBLayer:                           # @writeMBLayer
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
	lui	s0, %hi(img)
	ld	a2, %lo(img)(s0)
	lw	s1, 12(a2)
	mv	s5, a1
	mv	s3, a0
	mv	a0, s1
	call	FmoGetPreviousMBNr
	ld	a1, %lo(img)(s0)
	lui	a2, 22
	addiw	a2, a2, 108
	add	a2, a1, a2
	lui	a7, 8
	addiw	a6, a7, -1200
	add	a6, a1, a6
	ld	a5, 8(a6)
	li	t0, 528
	lui	a3, %hi(input)
	ld	s4, %lo(input)(a3)
	mul	s0, s1, t0
	add	s0, a5, s0
	lw	t1, 0(s0)
	addi	a3, s4, 2047
	lw	t2, 945(a3)
	li	t3, 48
	lw	a4, 72(s0)
	mul	s2, t1, t3
	slli	t1, t2, 3
	lui	s7, %hi(assignSE2partition)
	addi	s7, s7, %lo(assignSE2partition)
	add	t1, s7, t1
	beqz	a4, .LBB24_2
# %bb.1:
	li	s11, 0
	j	.LBB24_4
.LBB24_2:
	lw	t2, 24(a1)
	li	s11, 1
	bne	t2, s11, .LBB24_4
# %bb.3:
	lw	t2, 364(s0)
	seqz	s11, t2
.LBB24_4:
	ld	s9, 0(a6)
	lw	a6, 0(a2)
	ld	s10, 0(t1)
	add	s2, a1, s2
	addiw	a7, a7, -1184
	beqz	a6, .LBB24_7
# %bb.5:
	andi	s1, s1, 1
	bnez	s1, .LBB24_8
# %bb.6:
	li	a0, 0
	li	s8, 1
	j	.LBB24_13
.LBB24_7:
	li	a0, 0
	li	s8, 0
	j	.LBB24_13
.LBB24_8:
	mul	t0, a0, t0
	add	t0, a5, t0
	lw	t1, 72(t0)
	beqz	t1, .LBB24_10
.LBB24_9:
	li	s8, 0
	j	.LBB24_12
.LBB24_10:
	lw	t1, 24(a1)
	li	s8, 1
	bne	t1, s8, .LBB24_12
# %bb.11:
	lw	t0, 364(t0)
	bnez	t0, .LBB24_9
.LBB24_12:
	li	t0, 528
	mul	a0, a0, t0
	add	a0, a5, a0
	lw	a0, 520(a0)
.LBB24_13:
	add	s2, s2, a7
	addiw	a5, a4, -9
	andi	a5, a5, -6
	seqz	a5, a5
	sw	a5, 420(s0)
	lw	a7, 8(s10)
	ld	t0, 24(s9)
	lw	a5, 24(a1)
	li	t1, 112
	mul	a7, a7, t1
	li	t1, 2
	add	a7, t0, a7
	sd	a7, 16(sp)                      # 8-byte Folded Spill
	bne	a5, t1, .LBB24_17
# %bb.14:
	beqz	s8, .LBB24_34
# %bb.15:
	lw	a0, 424(s0)
	lw	a1, 937(a3)
	sw	a0, 4(s2)
	sw	zero, 8(s2)
	li	a2, 2
	sw	a2, 0(s2)
	beqz	a1, .LBB24_35
# %bb.16:
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	lui	a0, %hi(writeFieldModeInfo_CABAC)
	addi	a0, a0, %lo(writeFieldModeInfo_CABAC)
	sd	a0, 40(s2)
	mv	a0, s2
	jalr	a2
	j	.LBB24_36
.LBB24_17:
	lw	a3, 937(a3)
	li	a7, 1
	bne	a3, a7, .LBB24_27
# %bb.18:
	beqz	a6, .LBB24_22
# %bb.19:
	lbu	a1, 12(a1)
	andi	a1, a1, 1
	beqz	a1, .LBB24_21
# %bb.20:
	beqz	a0, .LBB24_22
.LBB24_21:
	lw	s1, 424(s0)
	call	field_flag_inference
	sw	a0, 424(s0)
	call	CheckAvailabilityOfNeighborsCABAC
	sw	s1, 424(s0)
.LBB24_22:
	mv	a0, s0
	call	MBType2Value
	lw	a1, 364(s0)
	mv	s6, a0
	sw	a0, 4(s2)
	sw	a1, 8(s2)
	li	a0, 2
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	sw	a0, 0(s2)
	lui	a0, %hi(writeMB_skip_flagInfo_CABAC)
	addi	a0, a0, %lo(writeMB_skip_flagInfo_CABAC)
	sd	a0, 40(s2)
	mv	a0, s2
	jalr	a2
	lw	a0, 12(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	lw	a1, 0(s0)
	sw	a0, 28(s0)
	lw	s4, 12(s2)
	addi	s7, s2, 48
	addi	a1, a1, 1
	sw	a1, 0(s0)
	call	CheckAvailabilityOfNeighborsCABAC
	beqz	s8, .LBB24_25
# %bb.23:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 108(a0)
	seqz	a0, a0
	or	a0, a0, s11
	bnez	a0, .LBB24_25
# %bb.24:
	lw	a0, 424(s0)
	sw	a0, 52(s2)
	sw	zero, 56(s2)
	li	a0, 2
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	sw	a0, 48(s2)
	lui	a0, %hi(writeFieldModeInfo_CABAC)
	addi	a0, a0, %lo(writeFieldModeInfo_CABAC)
	sd	a0, 88(s2)
	mv	a0, s7
	jalr	a2
	lw	a0, 60(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	a0, 60(s2)
	lw	a1, 0(s0)
	addw	s4, a0, s4
	addi	s7, s2, 96
	addi	a1, a1, 1
	sw	a1, 0(s0)
.LBB24_25:
	lw	a0, 72(s0)
	beqz	a0, .LBB24_81
.LBB24_26:
	sw	s6, 4(s7)
	sw	zero, 8(s7)
	li	a0, 2
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	sw	a0, 0(s7)
	lui	a0, %hi(writeMB_typeInfo_CABAC)
	addi	a0, a0, %lo(writeMB_typeInfo_CABAC)
	sd	a0, 40(s7)
	mv	a0, s7
	jalr	a2
	lw	a0, 12(s7)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	a0, 12(s7)
	lw	a1, 0(s0)
	addw	s4, a0, s4
	addi	s2, s7, 48
	addi	a1, a1, 1
	sw	a1, 0(s0)
	lui	s7, %hi(assignSE2partition)
	addi	s7, s7, %lo(assignSE2partition)
	j	.LBB24_41
.LBB24_27:
	beqz	a4, .LBB24_84
.LBB24_28:
	mv	s7, s3
	lw	a0, 120(a1)
	sw	a0, 4(s2)
	sw	zero, 8(s2)
	lui	s4, %hi(ue_linfo)
	addi	s4, s4, %lo(ue_linfo)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	sd	s4, 32(s2)
	li	a0, 2
	sw	a0, 0(s2)
	mv	a0, s2
	jalr	a2
	lw	a0, 12(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	s3, 12(s2)
	lw	a0, 0(s0)
	lui	a1, %hi(img)
	ld	s1, %lo(img)(a1)
	addi	s6, s2, 48
	addi	a0, a0, 1
	sw	a0, 0(s0)
	sw	zero, 120(s1)
	beqz	s8, .LBB24_31
# %bb.29:
	lui	a0, 22
	add	a0, s1, a0
	lw	a0, 108(a0)
	seqz	a0, a0
	or	a0, a0, s11
	bnez	a0, .LBB24_31
# %bb.30:
	lw	a0, 424(s0)
	sw	a0, 52(s2)
	li	a1, 2
	sw	a1, 48(s2)
	sd	s4, 80(s2)
	snez	a0, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	sw	a0, 68(s2)
	li	a0, 1
	sw	a0, 60(s2)
	mv	a0, s6
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 60(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	a0, 60(s2)
	add	s3, a0, s3
	lw	a0, 0(s0)
	lui	a1, %hi(img)
	ld	s1, %lo(img)(a1)
	addi	s6, s2, 96
	addi	a0, a0, 1
	sw	a0, 0(s0)
.LBB24_31:
	mv	a0, s0
	call	MBType2Value
	lw	a1, 24(s1)
	li	a2, 1
	sw	a0, 4(s6)
	beq	a1, a2, .LBB24_33
# %bb.32:
	addi	a0, a0, -1
	sw	a0, 4(s6)
.LBB24_33:
	sd	s4, 32(s6)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	li	a0, 2
	sw	a0, 0(s6)
	sw	zero, 8(s6)
	mv	a0, s6
	jalr	a2
	lw	a0, 12(s6)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	a0, 12(s6)
	lw	a1, 0(s0)
	addw	s4, a0, s3
	addi	s2, s6, 48
	addi	a1, a1, 1
	sw	a1, 0(s0)
	mv	s3, s7
	lui	s7, %hi(assignSE2partition)
	addi	s7, s7, %lo(assignSE2partition)
	j	.LBB24_41
.LBB24_34:
	li	s1, 0
	j	.LBB24_37
.LBB24_35:
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 32(s2)
	snez	a0, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	sw	a0, 20(s2)
	li	a0, 1
	sw	a0, 12(s2)
	mv	a0, s2
	call	writeSyntaxElement2Buf_Fixed
.LBB24_36:
	lw	a0, 12(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	s1, 12(s2)
	lw	a0, 0(s0)
	lui	a1, %hi(input)
	ld	s4, %lo(input)(a1)
	addi	s2, s2, 48
	addi	a0, a0, 1
	sw	a0, 0(s0)
.LBB24_37:
	mv	a0, s0
	call	MBType2Value
	addi	a1, s4, 2047
	lw	a1, 937(a1)
	sw	a0, 4(s2)
	sw	zero, 8(s2)
	li	a0, 2
	sw	a0, 0(s2)
	beqz	a1, .LBB24_39
# %bb.38:
	li	a0, 40
	lui	a1, %hi(writeMB_typeInfo_CABAC)
	addi	a1, a1, %lo(writeMB_typeInfo_CABAC)
	j	.LBB24_40
.LBB24_39:
	li	a0, 32
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
.LBB24_40:
	add	a0, s2, a0
	sd	a1, 0(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	mv	a0, s2
	jalr	a2
	lw	a0, 12(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	a0, 12(s2)
	lw	a1, 0(s0)
	addw	s4, a0, s1
	addi	s2, s2, 48
	addi	a1, a1, 1
	sw	a1, 0(s0)
.LBB24_41:
	lw	a0, 72(s0)
	beqz	a0, .LBB24_53
# %bb.42:
	li	s6, 1
	li	a1, 8
	sw	s6, 472(s0)
	beq	a0, a1, .LBB24_65
# %bb.43:
	li	a1, 14
	bne	a0, a1, .LBB24_77
# %bb.44:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a0)
	lw	a2, 4(a1)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	li	a3, 7
	blt	a3, a2, .LBB24_47
# %bb.45:
	addi	a3, a0, 2047
	lw	a3, 937(a3)
	li	a4, 1
	beq	a3, a4, .LBB24_47
# %bb.46:
	sw	a2, 12(s2)
	sw	zero, 20(s2)
	lw	a0, 40(s0)
	addw	s4, a2, s4
	add	a0, a0, a2
	sw	a0, 40(s0)
	mv	a0, s2
	call	writeSyntaxElement2Buf_Fixed
	lui	a0, %hi(ue_linfo)
	addi	a0, a0, %lo(ue_linfo)
	sd	a0, 32(s2)
	lw	a1, 0(s0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	s2, s2, 48
	addi	a1, a1, 1
	sw	a1, 0(s0)
.LBB24_47:
	li	s6, 0
	lui	s7, %hi(img)
	li	s8, 1
	lui	s10, 22
	lui	s11, %hi(enc_picture)
	lui	s9, 2
	j	.LBB24_49
.LBB24_48:                              #   in Loop: Header=BB24_49 Depth=1
	addiw	s6, s6, 1
	li	a1, 16
	beq	s6, a1, .LBB24_56
.LBB24_49:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_51 Depth 2
	ld	a1, %lo(img)(s7)
	lw	a1, 156(a1)
	li	s1, 0
	addw	s3, a1, s6
	slli	s3, s3, 3
	li	s5, 16
	j	.LBB24_51
.LBB24_50:                              #   in Loop: Header=BB24_51 Depth=2
	addiw	s5, s5, -1
	addi	s1, s1, 1
	beqz	s5, .LBB24_48
.LBB24_51:                              #   Parent Loop BB24_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	a1, a0, 2047
	lw	a1, 937(a1)
	beq	a1, s8, .LBB24_50
# %bb.52:                               #   in Loop: Header=BB24_51 Depth=2
	ld	a0, %lo(enc_picture)(s11)
	ld	a1, %lo(img)(s7)
	add	a0, a0, s9
	ld	a0, -1768(a0)
	lui	a2, %hi(ue_linfo)
	addi	a2, a2, %lo(ue_linfo)
	sd	a2, 32(s2)
	add	a2, a1, s10
	lw	a1, 152(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	lw	a2, 372(a2)
	add	a1, s1, a1
	slli	a1, a1, 1
	add	a0, a0, a1
	lhu	a0, 0(a0)
	sw	a2, 12(s2)
	sw	a0, 20(s2)
	lw	a0, 40(s0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	addw	s4, a2, s4
	add	a0, a0, a2
	sw	a0, 40(s0)
	mv	a0, s2
	call	writeSyntaxElement2Buf_Fixed
	lw	a1, 0(s0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	s2, s2, 48
	addi	a1, a1, 1
	sw	a1, 0(s0)
	j	.LBB24_50
.LBB24_53:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a0, 1
	bne	a1, a0, .LBB24_55
# %bb.54:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1156(a0)
	snez	a0, a0
.LBB24_55:
	sw	a0, 472(s0)
	j	.LBB24_101
.LBB24_56:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	addiw	a2, a2, 436
	add	a2, a1, a2
	lw	a3, 0(a2)
	beqz	a3, .LBB24_117
# %bb.57:
	lw	a2, 12(a2)
	blez	a2, .LBB24_117
# %bb.58:                               # %.preheader3
	li	s5, 0
	lui	s6, 22
	li	s7, 1
	lui	s1, %hi(enc_picture)
	lui	s3, 2
	lui	s11, %hi(img)
	j	.LBB24_60
.LBB24_59:                              #   in Loop: Header=BB24_60 Depth=1
	add	a2, a1, s6
	lw	a2, 448(a2)
	addiw	s5, s5, 1
	bge	s5, a2, .LBB24_91
.LBB24_60:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_63 Depth 2
	add	a2, a1, s6
	lw	a2, 444(a2)
	blez	a2, .LBB24_59
# %bb.61:                               #   in Loop: Header=BB24_60 Depth=1
	lw	a2, 164(a1)
	li	s8, 0
	li	s9, 0
	addw	s10, a2, s5
	slli	s10, s10, 3
	j	.LBB24_63
.LBB24_62:                              #   in Loop: Header=BB24_63 Depth=2
	add	a2, a1, s6
	lw	a2, 444(a2)
	addiw	s9, s9, 1
	addi	s8, s8, 1
	bge	s9, a2, .LBB24_59
.LBB24_63:                              #   Parent Loop BB24_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	a2, a0, 2047
	lw	a2, 937(a2)
	beq	a2, s7, .LBB24_62
# %bb.64:                               #   in Loop: Header=BB24_63 Depth=2
	ld	a0, %lo(enc_picture)(s1)
	add	a0, a0, s3
	ld	a0, -1728(a0)
	lui	a2, %hi(ue_linfo)
	addi	a2, a2, %lo(ue_linfo)
	sd	a2, 32(s2)
	ld	a0, 0(a0)
	add	a2, a1, s6
	lw	a1, 160(a1)
	add	a0, a0, s10
	ld	a0, 0(a0)
	lw	a2, 376(a2)
	add	a1, s8, a1
	slli	a1, a1, 1
	add	a0, a0, a1
	lhu	a0, 0(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	sw	a2, 12(s2)
	addw	s4, a2, s4
	sw	a0, 20(s2)
	mv	a0, s2
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 12(s2)
	lw	a1, 44(s0)
	add	a0, a1, a0
	sw	a0, 44(s0)
	lw	a2, 0(s0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	ld	a1, %lo(img)(s11)
	addi	s2, s2, 48
	addi	a2, a2, 1
	sw	a2, 0(s0)
	j	.LBB24_62
.LBB24_65:
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s1, s5
	lw	a0, 8(s10)
	ld	a1, 24(s9)
	li	a2, 112
	mul	a0, a0, a2
	add	a0, a1, a0
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	s7, s0, 376
	addi	s8, s2, 192
	lui	s9, %hi(input)
	lui	s11, %hi(ue_linfo)
	addi	s11, s11, %lo(ue_linfo)
	lui	s5, %hi(img)
	lui	s10, %hi(B8Mode2Value.b8inc)
	addi	s10, s10, %lo(B8Mode2Value.b8inc)
	li	s3, 2
	j	.LBB24_68
.LBB24_66:                              #   in Loop: Header=BB24_68 Depth=1
	lw	a2, 472(s0)
	addi	a1, a1, -4
	seqz	a1, a1
	and	a1, a1, a2
.LBB24_67:                              #   in Loop: Header=BB24_68 Depth=1
	add	s4, a0, s4
	addi	s2, s2, 48
	sw	a1, 472(s0)
	addi	s7, s7, 4
	beq	s2, s8, .LBB24_76
.LBB24_68:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(input)(s9)
	addi	a0, a0, 2047
	lw	a2, 937(a0)
	li	a0, 32
	mv	a1, s11
	beqz	a2, .LBB24_70
# %bb.69:                               #   in Loop: Header=BB24_68 Depth=1
	li	a0, 40
	lui	a1, %hi(writeB8_typeInfo_CABAC)
	addi	a1, a1, %lo(writeB8_typeInfo_CABAC)
.LBB24_70:                              #   in Loop: Header=BB24_68 Depth=1
	add	a0, s2, a0
	sd	a1, 0(a0)
	ld	a0, %lo(img)(s5)
	lw	a1, 24(a0)
	lw	a0, 0(s7)
	bne	a1, s6, .LBB24_72
# %bb.71:                               #   in Loop: Header=BB24_68 Depth=1
	lw	a1, 16(s7)
	slli	a0, a0, 2
	lui	a2, %hi(B8Mode2Value.b8start)
	addi	a2, a2, %lo(B8Mode2Value.b8start)
	add	a2, a2, a0
	add	a0, s10, a0
	lw	a0, 0(a0)
	lw	a2, 0(a2)
	mul	a0, a0, a1
	add	a0, a0, a2
	j	.LBB24_73
.LBB24_72:                              #   in Loop: Header=BB24_68 Depth=1
	addi	a0, a0, -4
.LBB24_73:                              #   in Loop: Header=BB24_68 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	sw	a0, 4(s2)
	sw	zero, 8(s2)
	sw	s3, 0(s2)
	mv	a0, s2
	jalr	a2
	lw	a0, 12(s2)
	lw	a1, 28(s0)
	lw	a2, 0(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	addi	a2, a2, 1
	sw	a2, 0(s0)
	lw	a1, 0(s7)
	lw	a0, 12(s2)
	bnez	a1, .LBB24_66
# %bb.74:                               #   in Loop: Header=BB24_68 Depth=1
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	a1, 1156(a1)
	beqz	a1, .LBB24_67
# %bb.75:                               #   in Loop: Header=BB24_68 Depth=1
	lwu	a1, 472(s0)
	andi	a1, a1, 1
	j	.LBB24_67
.LBB24_76:
	call	writeMotionInfo2NAL
	lui	a1, %hi(img)
	lw	a2, 0(s0)
	ld	a1, %lo(img)(a1)
	add	s4, a0, s4
	li	a0, 48
	mul	a0, a2, a0
	add	a1, a1, a0
	lw	a0, 72(s0)
	lui	a2, 8
	addiw	s2, a2, -1184
	add	s2, a1, s2
	mv	s5, s1
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	lui	s7, %hi(assignSE2partition)
	addi	s7, s7, %lo(assignSE2partition)
.LBB24_77:
	ori	a0, a0, 4
	li	a1, 13
	bne	a0, a1, .LBB24_101
# %bb.78:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a0, 1845(a1)
	beqz	a0, .LBB24_101
# %bb.79:
	lw	a0, 468(s0)
	lw	a1, 937(a1)
	sw	a0, 4(s2)
	sw	zero, 0(s2)
	beqz	a1, .LBB24_99
# %bb.80:
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	lui	a0, %hi(writeMB_transform_size_CABAC)
	addi	a0, a0, %lo(writeMB_transform_size_CABAC)
	sd	a0, 40(s2)
	mv	a0, s2
	jalr	a2
	j	.LBB24_100
.LBB24_81:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 1
	bne	a0, a1, .LBB24_83
# %bb.82:
	lw	a0, 364(s0)
	bnez	a0, .LBB24_26
.LBB24_83:
	mv	s2, s7
	lui	s7, %hi(assignSE2partition)
	addi	s7, s7, %lo(assignSE2partition)
	j	.LBB24_41
.LBB24_84:
	li	a0, 1
	bne	a5, a0, .LBB24_86
# %bb.85:
	lw	a3, 364(s0)
	bnez	a3, .LBB24_28
.LBB24_86:
	lw	a3, 120(a1)
	lw	a4, 320(a2)
	addi	a3, a3, 1
	sw	a3, 120(a1)
	li	a3, -3
	sw	a0, 520(s0)
	blt	a4, a3, .LBB24_89
# %bb.87:
	ld	a0, 128(a1)
	li	a3, 0
	li	a4, -1
.LBB24_88:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 12(a1)
	slli	a5, a5, 3
	add	a5, a0, a5
	ld	a5, 0(a5)
	ld	a5, 0(a5)
	add	a5, a5, a3
	sw	zero, 0(a5)
	lw	a5, 12(a1)
	slli	a5, a5, 3
	add	a5, a0, a5
	ld	a5, 0(a5)
	ld	a5, 8(a5)
	add	a5, a5, a3
	sw	zero, 0(a5)
	lw	a5, 12(a1)
	slli	a5, a5, 3
	add	a5, a0, a5
	ld	a5, 0(a5)
	ld	a5, 16(a5)
	add	a5, a5, a3
	sw	zero, 0(a5)
	lw	a5, 12(a1)
	slli	a5, a5, 3
	add	a5, a0, a5
	ld	a5, 0(a5)
	ld	a5, 24(a5)
	add	a5, a5, a3
	sw	zero, 0(a5)
	lw	a5, 320(a2)
	addiw	a5, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a5, .LBB24_88
.LBB24_89:
	lw	a0, 12(a1)
	call	FmoGetNextMBNr
	li	a1, -1
	beq	a0, a1, .LBB24_118
.LBB24_90:
	li	s4, 0
	j	.LBB24_41
.LBB24_91:
	blez	a2, .LBB24_117
# %bb.92:                               # %.preheader
	li	s5, 0
	lui	s6, 22
	li	s7, 1
	lui	s1, %hi(enc_picture)
	lui	s3, 2
	lui	s11, %hi(img)
	j	.LBB24_94
.LBB24_93:                              #   in Loop: Header=BB24_94 Depth=1
	add	a2, a1, s6
	lw	a2, 448(a2)
	addiw	s5, s5, 1
	bge	s5, a2, .LBB24_117
.LBB24_94:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_97 Depth 2
	add	a2, a1, s6
	lw	a2, 444(a2)
	blez	a2, .LBB24_93
# %bb.95:                               #   in Loop: Header=BB24_94 Depth=1
	lw	a2, 164(a1)
	li	s8, 0
	li	s9, 0
	addw	s10, a2, s5
	slli	s10, s10, 3
	j	.LBB24_97
.LBB24_96:                              #   in Loop: Header=BB24_97 Depth=2
	add	a2, a1, s6
	lw	a2, 444(a2)
	addiw	s9, s9, 1
	addi	s8, s8, 1
	bge	s9, a2, .LBB24_93
.LBB24_97:                              #   Parent Loop BB24_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	a2, a0, 2047
	lw	a2, 937(a2)
	beq	a2, s7, .LBB24_96
# %bb.98:                               #   in Loop: Header=BB24_97 Depth=2
	ld	a0, %lo(enc_picture)(s1)
	add	a0, a0, s3
	ld	a0, -1728(a0)
	lui	a2, %hi(ue_linfo)
	addi	a2, a2, %lo(ue_linfo)
	sd	a2, 32(s2)
	ld	a0, 8(a0)
	add	a2, a1, s6
	lw	a1, 160(a1)
	add	a0, a0, s10
	ld	a0, 0(a0)
	lw	a2, 376(a2)
	add	a1, s8, a1
	slli	a1, a1, 1
	add	a0, a0, a1
	lhu	a0, 0(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	sw	a2, 12(s2)
	addw	s4, a2, s4
	sw	a0, 20(s2)
	mv	a0, s2
	call	writeSyntaxElement2Buf_Fixed
	lw	a0, 12(s2)
	lw	a1, 44(s0)
	add	a0, a1, a0
	sw	a0, 44(s0)
	lw	a2, 0(s0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	ld	a1, %lo(img)(s11)
	addi	s2, s2, 48
	addi	a2, a2, 1
	sw	a2, 0(s0)
	j	.LBB24_96
.LBB24_99:
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 32(s2)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	sw	a0, 20(s2)
	li	a0, 1
	sw	a0, 12(s2)
	mv	a0, s2
	call	writeSyntaxElement2Buf_Fixed
.LBB24_100:
	lw	a0, 12(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	a0, 12(s2)
	lw	a1, 0(s0)
	add	s4, a0, s4
	addi	a1, a1, 1
	sw	a1, 0(s0)
.LBB24_101:
	li	a0, -1
	call	writeIntra4x4Modes
	lw	a1, 420(s0)
	addw	s4, a0, s4
	beqz	a1, .LBB24_105
# %bb.102:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 436(a1)
	beqz	a1, .LBB24_105
# %bb.103:
	lui	a3, 8
	addiw	a1, a3, -1200
	add	a1, a0, a1
	ld	s2, 8(a1)
	lw	a2, 12(a0)
	li	a4, 528
	lui	a5, %hi(input)
	ld	a5, %lo(input)(a5)
	mul	a2, a2, a4
	add	s2, s2, a2
	lw	a2, 0(s2)
	addi	a4, a5, 2047
	lw	a5, 945(a4)
	li	a6, 48
	mul	s1, a2, a6
	slli	a5, a5, 3
	add	a5, s7, a5
	ld	a1, 0(a1)
	lw	a4, 937(a4)
	ld	a2, 0(a5)
	addiw	a3, a3, -1184
	add	a0, a0, a3
	add	s1, a0, s1
	beqz	a4, .LBB24_109
# %bb.104:
	li	a0, 40
	lui	a3, %hi(writeCIPredMode_CABAC)
	addi	a3, a3, %lo(writeCIPredMode_CABAC)
	j	.LBB24_110
.LBB24_105:
	beqz	s3, .LBB24_108
# %bb.106:
	lw	a1, 72(s0)
	ori	a0, a1, 8
	li	a2, 8
	bne	a0, a2, .LBB24_111
.LBB24_107:
	bnez	a1, .LBB24_114
	j	.LBB24_112
.LBB24_108:
	sw	zero, 416(s0)
	lw	a1, 72(s0)
	ori	a0, a1, 8
	li	a2, 8
	beq	a0, a2, .LBB24_107
	j	.LBB24_111
.LBB24_109:
	li	a0, 32
	lui	a3, %hi(ue_linfo)
	addi	a3, a3, %lo(ue_linfo)
.LBB24_110:
	lw	a4, 416(s2)
	add	a0, s1, a0
	sd	a3, 0(a0)
	sw	a4, 4(s1)
	sw	zero, 8(s1)
	li	a0, 4
	sw	a0, 0(s1)
	lw	a0, 16(a2)
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 44(s2)
	add	a0, a1, a0
	lw	a1, 0(s2)
	sw	a0, 44(s2)
	lw	a0, 12(s1)
	addi	a1, a1, 1
	sw	a1, 0(s2)
	addw	s4, a0, s4
	lw	a1, 72(s0)
	ori	a0, a1, 8
	li	a2, 8
	beq	a0, a2, .LBB24_107
.LBB24_111:
	call	writeMotionInfo2NAL
	lw	a1, 72(s0)
	addw	s4, a0, s4
	bnez	a1, .LBB24_114
.LBB24_112:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 1
	bne	a0, a1, .LBB24_117
# %bb.113:
	lw	a0, 364(s0)
	beqz	a0, .LBB24_117
.LBB24_114:
	call	writeCBPandLumaCoeff
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 0(s5)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 436(a1)
	beqz	a1, .LBB24_116
# %bb.115:
	call	writeChromaCoeff
	lw	a1, 0(s5)
	add	a0, a1, a0
	sw	a0, 0(s5)
.LBB24_116:
	addw	s4, a0, s4
.LBB24_117:
	mv	a0, s4
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
.LBB24_118:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a0, 120(a0)
	blez	a0, .LBB24_90
# %bb.119:
	sw	a0, 4(s2)
	sw	zero, 8(s2)
	lui	a0, %hi(ue_linfo)
	addi	a0, a0, %lo(ue_linfo)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 104(a1)
	sd	a0, 32(s2)
	li	a0, 2
	sw	a0, 0(s2)
	mv	a0, s2
	jalr	a2
	lw	a0, 12(s2)
	lw	a1, 28(s0)
	add	a0, a1, a0
	sw	a0, 28(s0)
	lw	a0, 0(s0)
	lw	s4, 12(s2)
	ld	a1, %lo(img)(s1)
	addi	s2, s2, 48
	addi	a0, a0, 1
	sw	a0, 0(s0)
	sw	zero, 120(a1)
	j	.LBB24_41
.Lfunc_end24:
	.size	writeMBLayer, .Lfunc_end24-writeMBLayer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeMotionInfo2NAL             # -- Begin function writeMotionInfo2NAL
	.p2align	2
	.type	writeMotionInfo2NAL,@function
writeMotionInfo2NAL:                    # @writeMotionInfo2NAL
# %bb.0:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a0, 8
	add	a0, a2, a0
	lw	a1, 12(a2)
	ld	a0, -1192(a0)
	li	a3, 528
	mul	a1, a1, a3
	add	t1, a0, a1
	lui	a0, %hi(input)
	lw	a1, 72(t1)
	ld	a0, %lo(input)(a0)
	li	a4, 8
	mv	a3, a1
	bne	a1, a4, .LBB25_2
# %bb.1:
	li	a3, 4
.LBB25_2:
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
	slli	a3, a3, 3
	add	a3, a0, a3
	lw	a4, 84(a3)
	lw	a3, 88(a3)
	lw	t2, 24(a2)
	srai	s7, a4, 2
	li	a4, 13
	srai	a3, a3, 2
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	bltu	a4, a1, .LBB25_18
# %bb.3:
	lui	a3, 2
	addiw	a3, a3, 1537
	srl	a3, a3, a1
	andi	a3, a3, 1
	beqz	a3, .LBB25_5
# %bb.4:
	li	s0, 0
	li	a0, 13
	bgeu	a0, a1, .LBB25_33
	j	.LBB25_37
.LBB25_5:
	li	a3, 8
	bne	a1, a3, .LBB25_18
# %bb.6:
	lui	a1, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a1)
	lw	a1, 144(a2)
	lw	a5, 148(a2)
	lui	a2, 2
	add	a2, a3, a2
	addiw	a6, a1, 3
	addiw	a3, a5, 3
	mv	a4, a1
	blt	a6, a1, .LBB25_8
# %bb.7:
	mv	a4, a6
.LBB25_8:
	ld	a6, -1712(a2)
	mv	a2, a5
	blt	a3, a5, .LBB25_10
# %bb.9:
	mv	a2, a3
.LBB25_10:
	ld	a3, 0(a6)
	sub	a4, a4, a1
	addi	a4, a4, 1
.LBB25_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_12 Depth 2
	mv	a6, a5
	slli	a5, a5, 3
	add	a5, a3, a5
	ld	a5, 0(a5)
	add	a5, a5, a1
	mv	a7, a4
.LBB25_12:                              #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t0, 0(a5)
	bnez	t0, .LBB25_18
# %bb.13:                               #   in Loop: Header=BB25_12 Depth=2
	addi	a7, a7, -1
	addi	a5, a5, 1
	bnez	a7, .LBB25_12
# %bb.14:                               #   in Loop: Header=BB25_11 Depth=1
	addi	a5, a6, 1
	bne	a6, a2, .LBB25_11
# %bb.15:
	addi	a0, a0, 2047
	lw	a1, 937(a0)
	li	a0, 1
	beq	a1, a0, .LBB25_18
# %bb.16:
	beq	t2, a0, .LBB25_18
# %bb.17:
	li	s0, 0
	j	.LBB25_37
.LBB25_18:
	sd	t2, 0(sp)                       # 8-byte Folded Spill
	li	s1, 0
	li	s0, 0
	addi	s3, t1, 392
	sd	t1, 8(sp)                       # 8-byte Folded Spill
	addi	s8, t1, 376
	lui	s5, %hi(img)
	li	s9, 2
	lui	s6, 2
	li	s10, 4
	j	.LBB25_20
.LBB25_19:                              #   in Loop: Header=BB25_20 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addw	s1, s1, a0
	bge	s1, s10, .LBB25_25
.LBB25_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_22 Depth 2
	ld	a0, %lo(img)(s5)
	lw	a0, 148(a0)
	li	s11, 0
	li	s2, 0
	addw	a0, a0, s1
	slli	s4, a0, 3
	j	.LBB25_22
.LBB25_21:                              #   in Loop: Header=BB25_22 Depth=2
	addw	s2, s2, s7
	add	s11, s11, s7
	bge	s2, s10, .LBB25_19
.LBB25_22:                              #   Parent Loop BB25_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sraiw	a0, s2, 1
	addw	a0, a0, s1
	slli	a0, a0, 2
	add	a1, s3, a0
	lw	a1, 0(a1)
	ori	a1, a1, 2
	bne	a1, s9, .LBB25_21
# %bb.23:                               #   in Loop: Header=BB25_22 Depth=2
	add	a0, s8, a0
	lw	a0, 0(a0)
	beqz	a0, .LBB25_21
# %bb.24:                               #   in Loop: Header=BB25_22 Depth=2
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	add	a1, a1, s6
	ld	a1, -1712(a1)
	ld	a1, 0(a1)
	ld	a2, %lo(img)(s5)
	add	a1, a1, s4
	lw	a2, 144(a2)
	ld	a1, 0(a1)
	add	a2, a2, s11
	add	a1, a1, a2
	lbu	a4, 0(a1)
	li	a3, 1
	mv	a1, s2
	mv	a2, s1
	call	writeReferenceFrame
	addw	s0, a0, s0
	j	.LBB25_21
.LBB25_25:                              # %.preheader
	li	s1, 0
	lui	s5, %hi(img)
	li	s6, 1
	lui	s9, 2
	li	s10, 4
	j	.LBB25_27
.LBB25_26:                              #   in Loop: Header=BB25_27 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addw	s1, s1, a0
	bge	s1, s10, .LBB25_32
.LBB25_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_29 Depth 2
	ld	a0, %lo(img)(s5)
	lw	a0, 148(a0)
	li	s11, 0
	li	s2, 0
	addw	a0, a0, s1
	slli	s4, a0, 3
	j	.LBB25_29
.LBB25_28:                              #   in Loop: Header=BB25_29 Depth=2
	addw	s2, s2, s7
	add	s11, s11, s7
	bge	s2, s10, .LBB25_26
.LBB25_29:                              #   Parent Loop BB25_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sraiw	a0, s2, 1
	addw	a0, a0, s1
	slli	a0, a0, 2
	add	a1, s3, a0
	lw	a1, 0(a1)
	addiw	a1, a1, -1
	bltu	s6, a1, .LBB25_28
# %bb.30:                               #   in Loop: Header=BB25_29 Depth=2
	add	a0, s8, a0
	lw	a0, 0(a0)
	beqz	a0, .LBB25_28
# %bb.31:                               #   in Loop: Header=BB25_29 Depth=2
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	add	a1, a1, s9
	ld	a1, -1712(a1)
	ld	a1, 8(a1)
	ld	a2, %lo(img)(s5)
	add	a1, a1, s4
	lw	a2, 144(a2)
	ld	a1, 0(a1)
	add	a2, a2, s11
	add	a1, a1, a2
	lbu	a4, 0(a1)
	mv	a1, s2
	mv	a2, s1
	li	a3, 0
	call	writeReferenceFrame
	addw	s0, a0, s0
	j	.LBB25_28
.LBB25_32:
	ld	t1, 8(sp)                       # 8-byte Folded Reload
	lw	a1, 72(t1)
	ld	t2, 0(sp)                       # 8-byte Folded Reload
	li	a0, 13
	bltu	a0, a1, .LBB25_37
.LBB25_33:
	lui	a0, 2
	addiw	a0, a0, 1537
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB25_37
# %bb.34:
	li	a0, 13
	bltu	a0, a1, .LBB25_45
.LBB25_35:
	li	a0, 19
	slli	a0, a0, 9
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB25_45
.LBB25_36:
	mv	a0, s0
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
.LBB25_37:
	sd	t2, 0(sp)                       # 8-byte Folded Spill
	li	s1, 0
	addi	s8, t1, 392
	sd	t1, 8(sp)                       # 8-byte Folded Spill
	addi	s5, t1, 376
	lui	s9, %hi(img)
	li	s10, 2
	li	s6, 4
	j	.LBB25_39
.LBB25_38:                              #   in Loop: Header=BB25_39 Depth=1
	mv	s1, s2
	bge	s2, s6, .LBB25_44
.LBB25_39:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_41 Depth 2
	ld	a0, %lo(img)(s9)
	lw	a0, 148(a0)
	li	s11, 0
	li	s3, 0
	addw	a0, a0, s1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	addw	s2, s1, a1
	slli	s4, a0, 3
	j	.LBB25_41
.LBB25_40:                              #   in Loop: Header=BB25_41 Depth=2
	addw	s3, s3, s7
	add	s11, s11, s7
	bge	s3, s6, .LBB25_38
.LBB25_41:                              #   Parent Loop BB25_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sraiw	a0, s3, 1
	addw	a0, a0, s1
	slli	a0, a0, 2
	add	a1, s8, a0
	lw	a1, 0(a1)
	ori	a1, a1, 2
	bne	a1, s10, .LBB25_40
# %bb.42:                               #   in Loop: Header=BB25_41 Depth=2
	add	a0, s5, a0
	lw	a6, 0(a0)
	beqz	a6, .LBB25_40
# %bb.43:                               #   in Loop: Header=BB25_41 Depth=2
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a0, a0, a1
	ld	a0, -1712(a0)
	ld	a0, 0(a0)
	ld	a1, %lo(img)(s9)
	add	a0, a0, s4
	lw	a1, 144(a1)
	ld	a0, 0(a0)
	add	a1, a1, s11
	add	a0, a0, a1
	lbu	a4, 0(a0)
	addw	a2, s7, s3
	mv	a0, s3
	mv	a1, s1
	mv	a3, s2
	li	a5, 0
	call	writeMotionVector8x8
	addw	s0, a0, s0
	j	.LBB25_40
.LBB25_44:
	ld	t1, 8(sp)                       # 8-byte Folded Reload
	lw	a1, 72(t1)
	ld	t2, 0(sp)                       # 8-byte Folded Reload
	li	a0, 13
	bgeu	a0, a1, .LBB25_35
.LBB25_45:
	beqz	a1, .LBB25_36
# %bb.46:
	li	s8, 1
	bne	t2, s8, .LBB25_36
# %bb.47:
	li	s1, 0
	addi	s11, t1, 392
	addi	s6, t1, 376
	lui	s9, %hi(img)
	li	s5, 4
	j	.LBB25_49
.LBB25_48:                              #   in Loop: Header=BB25_49 Depth=1
	mv	s1, s2
	bge	s2, s5, .LBB25_36
.LBB25_49:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_51 Depth 2
	ld	a0, %lo(img)(s9)
	lw	a0, 148(a0)
	li	s4, 0
	li	s3, 0
	addw	a0, a0, s1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	addw	s2, s1, a1
	slli	s10, a0, 3
	j	.LBB25_51
.LBB25_50:                              #   in Loop: Header=BB25_51 Depth=2
	addw	s3, s3, s7
	add	s4, s4, s7
	bge	s3, s5, .LBB25_48
.LBB25_51:                              #   Parent Loop BB25_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sraiw	a0, s3, 1
	addw	a0, a0, s1
	slli	a0, a0, 2
	add	a1, s11, a0
	lw	a1, 0(a1)
	addiw	a1, a1, -1
	bltu	s8, a1, .LBB25_50
# %bb.52:                               #   in Loop: Header=BB25_51 Depth=2
	add	a0, s6, a0
	lw	a6, 0(a0)
	beqz	a6, .LBB25_50
# %bb.53:                               #   in Loop: Header=BB25_51 Depth=2
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a0, a0, a1
	ld	a0, -1712(a0)
	ld	a0, 8(a0)
	ld	a1, %lo(img)(s9)
	add	a0, a0, s10
	lw	a1, 144(a1)
	ld	a0, 0(a0)
	add	a1, a1, s4
	add	a0, a0, a1
	lbu	a4, 0(a0)
	addw	a2, s7, s3
	li	a5, 1
	mv	a0, s3
	mv	a1, s1
	mv	a3, s2
	call	writeMotionVector8x8
	addw	s0, a0, s0
	j	.LBB25_50
.Lfunc_end25:
	.size	writeMotionInfo2NAL, .Lfunc_end25-writeMotionInfo2NAL
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeChromaIntraPredMode        # -- Begin function writeChromaIntraPredMode
	.p2align	2
	.type	writeChromaIntraPredMode,@function
writeChromaIntraPredMode:               # @writeChromaIntraPredMode
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a3, 8
	addiw	a0, a3, -1200
	add	a0, a2, a0
	ld	s1, 8(a0)
	lw	a1, 12(a2)
	li	a4, 528
	lui	a5, %hi(input)
	ld	a5, %lo(input)(a5)
	mul	a1, a1, a4
	add	s1, s1, a1
	lw	a1, 0(s1)
	addi	a4, a5, 2047
	lw	a5, 945(a4)
	li	a6, 48
	mul	s0, a1, a6
	slli	a5, a5, 3
	lui	a1, %hi(assignSE2partition)
	addi	a1, a1, %lo(assignSE2partition)
	add	a1, a1, a5
	ld	a0, 0(a0)
	lw	a4, 937(a4)
	ld	a1, 0(a1)
	addiw	a3, a3, -1184
	add	a2, a2, a3
	add	s0, a2, s0
	beqz	a4, .LBB26_2
# %bb.1:
	li	a2, 40
	lui	a3, %hi(writeCIPredMode_CABAC)
	addi	a3, a3, %lo(writeCIPredMode_CABAC)
	j	.LBB26_3
.LBB26_2:
	li	a2, 32
	lui	a3, %hi(ue_linfo)
	addi	a3, a3, %lo(ue_linfo)
.LBB26_3:
	lw	a4, 416(s1)
	add	a2, s0, a2
	sd	a3, 0(a2)
	sw	a4, 4(s0)
	sw	zero, 8(s0)
	li	a2, 4
	sw	a2, 0(s0)
	lw	a1, 16(a1)
	ld	a0, 24(a0)
	li	a2, 112
	mul	a1, a1, a2
	add	a1, a0, a1
	ld	a2, 104(a1)
	mv	a0, s0
	jalr	a2
	lw	a0, 12(s0)
	lw	a1, 44(s1)
	add	a0, a1, a0
	sw	a0, 44(s1)
	lw	a1, 0(s1)
	lw	a0, 12(s0)
	addi	a1, a1, 1
	sw	a1, 0(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end26:
	.size	writeChromaIntraPredMode, .Lfunc_end26-writeChromaIntraPredMode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeCBPandLumaCoeff            # -- Begin function writeCBPandLumaCoeff
	.p2align	2
	.type	writeCBPandLumaCoeff,@function
writeCBPandLumaCoeff:                   # @writeCBPandLumaCoeff
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a1, 8
	addiw	a0, a1, -1200
	add	a3, a2, a0
	lw	a0, 12(a2)
	ld	s4, 8(a3)
	lui	a4, 3
	li	a5, 528
	mul	a0, a0, a5
	add	s4, s4, a0
	lw	a0, 0(s4)
	lui	a5, %hi(input)
	ld	a5, %lo(input)(a5)
	add	a4, a2, a4
	li	a6, 48
	mul	s1, a0, a6
	addi	a0, a5, 2047
	lw	a5, 945(a0)
	addiw	a6, a1, -1184
	ld	a1, 1856(a4)
	ld	a3, 0(a3)
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	slli	a5, a5, 3
	lui	a3, %hi(assignSE2partition)
	addi	a3, a3, %lo(assignSE2partition)
	ld	a4, 0(a1)
	add	a3, a3, a5
	ld	a1, 0(a3)
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	lw	s5, 364(s4)
	ld	s7, 0(a4)
	lw	a1, 72(s4)
	ld	s8, 8(a4)
	add	a2, a2, a6
	li	a3, 10
	add	s1, a2, s1
	bne	a1, a3, .LBB27_2
# %bb.1:
	li	s0, 0
	bnez	s5, .LBB27_19
	j	.LBB27_18
.LBB27_2:
	li	a2, 13
	sw	s5, 4(s1)
	bltu	a2, a1, .LBB27_6
# %bb.3:
	li	a2, 25
	slli	a2, a2, 9
	srl	a1, a2, a1
	andi	a1, a1, 1
	beqz	a1, .LBB27_6
# %bb.4:
	lw	a1, 937(a0)
	li	a0, 6
	bnez	a1, .LBB27_9
# %bb.5:
	lui	a1, %hi(cbp_linfo_intra)
	addi	a1, a1, %lo(cbp_linfo_intra)
	j	.LBB27_8
.LBB27_6:
	lw	a1, 937(a0)
	li	a0, 11
	bnez	a1, .LBB27_9
# %bb.7:
	lui	a1, %hi(cbp_linfo_inter)
	addi	a1, a1, %lo(cbp_linfo_inter)
.LBB27_8:
	sd	a1, 32(s1)
.LBB27_9:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 937(a1)
	li	a2, 1
	sw	a0, 0(s1)
	bne	a1, a2, .LBB27_11
# %bb.10:
	lui	a1, %hi(writeCBP_CABAC)
	addi	a1, a1, %lo(writeCBP_CABAC)
	sd	a1, 40(s1)
.LBB27_11:
	slli	a0, a0, 2
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a0, 0(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 24(a1)
	li	a1, 112
	mul	a0, a0, a1
	add	s2, s2, a0
	ld	a2, 104(s2)
	mv	a0, s1
	mv	a1, s2
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 36(s4)
	add	a0, a1, a0
	sw	a0, 36(s4)
	lw	a2, 0(s4)
	lw	a1, 72(s4)
	lw	s0, 12(s1)
	addi	a0, s1, 48
	addi	a2, a2, 1
	addiw	a3, a1, -1
	li	a4, 3
	sw	a2, 0(s4)
	bltu	a3, a4, .LBB27_16
# %bb.12:
	bnez	a1, .LBB27_15
# %bb.13:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 24(a2)
	li	a3, 1
	bne	a2, a3, .LBB27_15
# %bb.14:
	lui	a2, %hi(active_sps)
	ld	a2, %lo(active_sps)(a2)
	lw	a2, 1156(a2)
	bnez	a2, .LBB27_63
.LBB27_15:
	lw	a2, 472(s4)
	beqz	a2, .LBB27_17
.LBB27_16:
	ori	a1, a1, 4
	li	a2, 13
	bne	a1, a2, .LBB27_63
.LBB27_17:
	mv	s1, a0
	bnez	s5, .LBB27_19
.LBB27_18:
	lw	a0, 72(s4)
	li	a1, 10
	bne	a0, a1, .LBB27_25
.LBB27_19:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 8(s4)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	sw	a1, 4(s1)
	beqz	a0, .LBB27_21
# %bb.20:
	li	a0, 40
	lui	a1, %hi(writeDquant_CABAC)
	addi	a1, a1, %lo(writeDquant_CABAC)
	j	.LBB27_22
.LBB27_21:
	li	a0, 32
	lui	a1, %hi(se_linfo)
	addi	a1, a1, %lo(se_linfo)
.LBB27_22:
	lw	a2, 72(s4)
	add	a0, s1, a0
	sd	a1, 0(a0)
	addiw	a1, a2, -9
	li	a2, 4
	li	a0, 16
	bltu	a2, a1, .LBB27_24
# %bb.23:
	slli	a1, a1, 2
	lui	a0, %hi(.Lswitch.table.writeCBPandLumaCoeff)
	addi	a0, a0, %lo(.Lswitch.table.writeCBPandLumaCoeff)
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB27_24:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 0(s1)
	lui	a2, 8
	add	a1, a1, a2
	ld	a1, -1200(a1)
	slli	a0, a0, 2
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	lw	a0, 0(a0)
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 48(s4)
	add	a0, a1, a0
	sw	a0, 48(s4)
	lw	a0, 12(s1)
	lw	a1, 0(s4)
	addw	s0, a0, s0
	addi	s1, s1, 48
	addi	a1, a1, 1
	sw	a1, 0(s4)
.LBB27_25:
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	s3, 22
	add	a0, a0, s3
	lw	a2, 428(a0)
	ld	a0, 0(a1)
	slli	a2, a2, 2
	addi	a2, a2, 16
	li	a1, 0
	call	memset
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a0, a0, s3
	lw	a2, 428(a0)
	ld	a0, 8(a1)
	slli	a2, a2, 2
	addi	a2, a2, 16
	li	a1, 0
	call	memset
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a0, a0, s3
	lw	a2, 428(a0)
	ld	a0, 16(a1)
	slli	a2, a2, 2
	addi	a2, a2, 16
	li	a1, 0
	call	memset
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a0, a0, s3
	lw	a2, 428(a0)
	ld	a0, 24(a1)
	slli	a2, a2, 2
	addi	a2, a2, 16
	li	a1, 0
	call	memset
	lw	a0, 72(s4)
	li	a1, 10
	bne	a0, a1, .LBB27_33
# %bb.26:
	sd	s5, 80(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB27_41
# %bb.27:
	li	s5, 0
	lui	s9, %hi(levrun_linfo_inter)
	addi	s9, s9, %lo(levrun_linfo_inter)
	lui	s11, %hi(img)
	li	s3, 1
	li	s6, 112
	li	s2, 15
.LBB27_28:                              # =>This Inner Loop Header: Depth=1
	lw	s10, 0(s7)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	sw	s10, 4(s1)
	lw	a1, 0(s8)
	addi	a0, a0, 2047
	lw	a2, 937(a0)
	sw	a1, 8(s1)
	li	a0, 32
	mv	a1, s9
	beqz	a2, .LBB27_30
# %bb.29:                               #   in Loop: Header=BB27_28 Depth=1
	li	a0, 40
	lui	a1, %hi(writeRunLevel_CABAC)
	addi	a1, a1, %lo(writeRunLevel_CABAC)
.LBB27_30:                              #   in Loop: Header=BB27_28 Depth=1
	add	a0, s1, a0
	sd	a1, 0(a0)
	ld	a0, %lo(img)(s11)
	sw	zero, 24(s1)
	li	a1, 7
	sw	a1, 0(s1)
	sw	s3, 80(a0)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	lw	a0, 28(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	ld	a1, 24(a1)
	mul	a0, a0, s6
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 40(s4)
	add	a0, a1, a0
	sw	a0, 40(s4)
	lw	a0, 12(s1)
	lw	a1, 0(s4)
	addw	s0, a0, s0
	addi	s1, s1, 48
	addi	a1, a1, 1
	sw	a1, 0(s4)
	bltu	s2, s5, .LBB27_32
# %bb.31:                               #   in Loop: Header=BB27_28 Depth=1
	addi	s5, s5, 1
	addi	s8, s8, 4
	addi	s7, s7, 4
	bnez	s10, .LBB27_28
.LBB27_32:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	andi	a0, a0, 15
	bnez	a0, .LBB27_42
	j	.LBB27_62
.LBB27_33:
	andi	a0, s5, 1
	bnez	a0, .LBB27_37
# %bb.34:
	andi	a0, s5, 2
	bnez	a0, .LBB27_38
.LBB27_35:
	andi	a0, s5, 4
	bnez	a0, .LBB27_39
.LBB27_36:
	andi	a0, s5, 8
	bnez	a0, .LBB27_40
	j	.LBB27_62
.LBB27_37:
	lw	a1, 376(s4)
	lw	a2, 468(s4)
	li	a0, 0
	call	writeLumaCoeff8x8
	addw	s0, a0, s0
	andi	a0, s5, 2
	beqz	a0, .LBB27_35
.LBB27_38:
	lw	a1, 380(s4)
	lw	a2, 468(s4)
	li	a0, 1
	call	writeLumaCoeff8x8
	addw	s0, a0, s0
	andi	a0, s5, 4
	beqz	a0, .LBB27_36
.LBB27_39:
	lw	a1, 384(s4)
	lw	a2, 468(s4)
	li	a0, 2
	call	writeLumaCoeff8x8
	addw	s0, a0, s0
	andi	a0, s5, 8
	beqz	a0, .LBB27_62
.LBB27_40:
	lw	a1, 388(s4)
	lw	a2, 468(s4)
	li	a0, 3
	call	writeLumaCoeff8x8
	addw	s0, a0, s0
	j	.LBB27_62
.LBB27_41:
	li	a0, 1
	li	a1, 0
	li	a2, 0
	li	a3, 0
	call	writeCoeff4x4_CAVLC
	addw	s0, a0, s0
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	andi	a0, a0, 15
	beqz	a0, .LBB27_62
.LBB27_42:
	sd	zero, 8(sp)                     # 8-byte Folded Spill
	li	s8, 1
	li	a0, 2
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, 524288
	addi	a0, a0, -2
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lui	s11, %hi(input)
	lui	s7, %hi(img)
	lui	s9, %hi(levrun_linfo_inter)
	addi	s9, s9, %lo(levrun_linfo_inter)
	li	s10, 14
	li	a1, 1
	j	.LBB27_44
.LBB27_43:                              #   in Loop: Header=BB27_44 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	addi	a0, a0, 2
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 2
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	li	a1, 0
	beqz	a0, .LBB27_62
.LBB27_44:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_46 Depth 2
                                        #       Child Loop BB27_49 Depth 3
                                        #         Child Loop BB27_51 Depth 4
                                        #         Child Loop BB27_58 Depth 4
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	li	a1, 0
	li	a2, 1
	j	.LBB27_46
.LBB27_45:                              #   in Loop: Header=BB27_46 Depth=2
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 2
	li	a2, 0
	beqz	a0, .LBB27_43
.LBB27_46:                              #   Parent Loop BB27_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_49 Depth 3
                                        #         Child Loop BB27_51 Depth 4
                                        #         Child Loop BB27_58 Depth 4
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	srliw	a0, a1, 1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	ori	a0, a1, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	j	.LBB27_49
.LBB27_47:                              #   in Loop: Header=BB27_49 Depth=3
	li	a0, 2
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	li	a3, 0
	call	writeCoeff4x4_CAVLC
	addw	s0, a0, s0
.LBB27_48:                              #   in Loop: Header=BB27_49 Depth=3
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 1
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	beq	a3, a0, .LBB27_45
.LBB27_49:                              #   Parent Loop BB27_44 Depth=1
                                        #     Parent Loop BB27_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB27_51 Depth 4
                                        #         Child Loop BB27_58 Depth 4
	ld	a0, %lo(input)(s11)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	and	a1, a3, a1
	slli	a2, a3, 1
	andi	a4, a2, 2
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	addw	a2, a2, a1
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB27_55
# %bb.50:                               #   in Loop: Header=BB27_49 Depth=3
	ld	a0, %lo(img)(s7)
	lui	a1, 3
	add	a1, a0, a1
	ld	a1, 1848(a1)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a2, a4, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	s5, 0(a1)
	ld	s6, 8(a1)
	li	s2, 0
	sw	a3, 76(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sw	a1, 72(a0)
.LBB27_51:                              #   Parent Loop BB27_44 Depth=1
                                        #     Parent Loop BB27_46 Depth=2
                                        #       Parent Loop BB27_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lw	s3, 0(s5)
	ld	a0, %lo(input)(s11)
	sw	s3, 4(s1)
	lw	a1, 0(s6)
	addi	a0, a0, 2047
	lw	a2, 937(a0)
	sw	a1, 8(s1)
	li	a0, 32
	mv	a1, s9
	beqz	a2, .LBB27_53
# %bb.52:                               #   in Loop: Header=BB27_51 Depth=4
	li	a0, 40
	lui	a1, %hi(writeRunLevel_CABAC)
	addi	a1, a1, %lo(writeRunLevel_CABAC)
.LBB27_53:                              #   in Loop: Header=BB27_51 Depth=4
	add	a0, s1, a0
	sd	a1, 0(a0)
	ld	a0, %lo(img)(s7)
	sw	s8, 24(s1)
	li	a1, 9
	sw	a1, 0(s1)
	sw	s8, 80(a0)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	lw	a0, 36(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 40(s4)
	add	a0, a1, a0
	sw	a0, 40(s4)
	lw	a0, 12(s1)
	lw	a1, 0(s4)
	add	s0, a0, s0
	addi	s1, s1, 48
	addi	a1, a1, 1
	sw	a1, 0(s4)
	bltu	s10, s2, .LBB27_56
# %bb.54:                               #   in Loop: Header=BB27_51 Depth=4
	addi	s2, s2, 1
	addi	s6, s6, 4
	addi	s5, s5, 4
	bnez	s3, .LBB27_51
	j	.LBB27_56
.LBB27_55:                              #   in Loop: Header=BB27_49 Depth=3
	li	a0, 2
	mv	a1, a2
	mv	a2, a4
	li	a3, 0
	call	writeCoeff4x4_CAVLC
	add	s0, a0, s0
.LBB27_56:                              #   in Loop: Header=BB27_49 Depth=3
	ld	a0, %lo(input)(s11)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	beqz	a0, .LBB27_47
# %bb.57:                               #   in Loop: Header=BB27_49 Depth=3
	ld	a0, %lo(img)(s7)
	lui	a1, 3
	add	a1, a0, a1
	ld	a1, 1848(a1)
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	s5, 0(a1)
	ld	s6, 8(a1)
	li	s2, 0
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	sw	a1, 76(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sw	a1, 72(a0)
.LBB27_58:                              #   Parent Loop BB27_44 Depth=1
                                        #     Parent Loop BB27_46 Depth=2
                                        #       Parent Loop BB27_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lw	s3, 0(s5)
	ld	a0, %lo(input)(s11)
	sw	s3, 4(s1)
	lw	a1, 0(s6)
	addi	a0, a0, 2047
	lw	a2, 937(a0)
	sw	a1, 8(s1)
	li	a0, 32
	mv	a1, s9
	beqz	a2, .LBB27_60
# %bb.59:                               #   in Loop: Header=BB27_58 Depth=4
	li	a0, 40
	lui	a1, %hi(writeRunLevel_CABAC)
	addi	a1, a1, %lo(writeRunLevel_CABAC)
.LBB27_60:                              #   in Loop: Header=BB27_58 Depth=4
	add	a0, s1, a0
	sd	a1, 0(a0)
	ld	a0, %lo(img)(s7)
	sw	s8, 24(s1)
	li	a1, 9
	sw	a1, 0(s1)
	sw	s8, 80(a0)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	lw	a0, 36(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 40(s4)
	add	a0, a1, a0
	sw	a0, 40(s4)
	lw	a0, 12(s1)
	lw	a1, 0(s4)
	addw	s0, a0, s0
	addi	s1, s1, 48
	addi	a1, a1, 1
	sw	a1, 0(s4)
	bltu	s10, s2, .LBB27_48
# %bb.61:                               #   in Loop: Header=BB27_58 Depth=4
	addi	s2, s2, 1
	addi	s6, s6, 4
	addi	s5, s5, 4
	bnez	s3, .LBB27_58
	j	.LBB27_48
.LBB27_62:
	mv	a0, s0
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	ld	s10, 112(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.LBB27_63:
	lbu	a1, 364(s4)
	andi	a1, a1, 15
	beqz	a1, .LBB27_17
# %bb.64:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a2, 1845(a1)
	beqz	a2, .LBB27_17
# %bb.65:
	lw	a2, 468(s4)
	lw	a1, 937(a1)
	sw	a2, 52(s1)
	sw	zero, 48(s1)
	beqz	a1, .LBB27_67
# %bb.66:
	li	a1, 88
	lui	a3, %hi(writeMB_transform_size_CABAC)
	addi	a3, a3, %lo(writeMB_transform_size_CABAC)
	j	.LBB27_68
.LBB27_67:
	li	a1, 80
	lui	a3, %hi(ue_linfo)
	addi	a3, a3, %lo(ue_linfo)
.LBB27_68:
	add	a1, s1, a1
	sd	a3, 0(a1)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 937(a1)
	beqz	a1, .LBB27_70
# %bb.69:
	ld	a2, 104(s2)
	mv	a1, s2
	jalr	a2
	j	.LBB27_71
.LBB27_70:
	ld	a1, 0(s2)
	sw	a2, 68(s1)
	li	a2, 1
	sw	a2, 60(s1)
	call	writeSyntaxElement2Buf_Fixed
.LBB27_71:
	lw	a0, 60(s1)
	lw	a1, 28(s4)
	add	a0, a1, a0
	sw	a0, 28(s4)
	lw	a0, 60(s1)
	lw	a1, 0(s4)
	addw	s0, a0, s0
	addi	s1, s1, 96
	addi	a1, a1, 1
	sw	a1, 0(s4)
	bnez	s5, .LBB27_19
	j	.LBB27_18
.Lfunc_end27:
	.size	writeCBPandLumaCoeff, .Lfunc_end27-writeCBPandLumaCoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeChromaCoeff                # -- Begin function writeChromaCoeff
	.p2align	2
	.type	writeChromaCoeff,@function
writeChromaCoeff:                       # @writeChromaCoeff
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
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	addiw	a2, a1, -1200
	add	a2, a0, a2
	lw	a3, 12(a0)
	ld	s3, 8(a2)
	lui	a6, 22
	li	a4, 528
	mul	a3, a3, a4
	add	s3, s3, a3
	lw	a3, 0(s3)
	lui	a4, %hi(input)
	ld	a4, %lo(input)(a4)
	li	a5, 48
	mul	s0, a3, a5
	add	a3, a0, a6
	addi	a4, a4, 2047
	lw	a4, 945(a4)
	addiw	a1, a1, -1184
	add	a0, a0, a1
	ld	s4, 0(a2)
	slli	a4, a4, 3
	lui	a1, %hi(assignSE2partition)
	addi	a1, a1, %lo(assignSE2partition)
	add	a1, a1, a4
	lw	a4, 364(s3)
	lw	a2, 436(a3)
	ld	s5, 0(a1)
	add	s0, a0, s0
	li	a0, 16
	addiw	a2, a2, -1
	sd	a4, 48(sp)                      # 8-byte Folded Spill
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	blt	a4, a0, .LBB28_15
# %bb.1:
	li	s2, 0
	li	s1, 0
	slli	a0, a2, 2
	lui	a1, %hi(.L__const.writeChromaCoeff.chroma_dc_context)
	addi	a1, a1, %lo(.L__const.writeChromaCoeff.chroma_dc_context)
	add	a0, a1, a0
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	li	a1, 1
	lui	s11, %hi(levrun_linfo_c2x2)
	addi	s11, s11, %lo(levrun_linfo_c2x2)
	j	.LBB28_4
.LBB28_2:                               #   in Loop: Header=BB28_4 Depth=1
	li	a0, 6
	li	a1, 0
	li	a2, 0
	mv	a3, s2
	call	writeCoeff4x4_CAVLC
	addw	s1, a0, s1
.LBB28_3:                               #   in Loop: Header=BB28_4 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	andi	a0, a0, 1
	li	s2, 1
	li	a1, 0
	beqz	a0, .LBB28_16
.LBB28_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_7 Depth 2
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB28_2
# %bb.5:                                #   in Loop: Header=BB28_4 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 432(a1)
	bltz	a1, .LBB28_3
# %bb.6:                                #   in Loop: Header=BB28_4 Depth=1
	lui	a1, 3
	add	a1, a0, a1
	ld	a1, 1856(a1)
	slli	a2, s2, 3
	add	a1, a1, a2
	ld	a1, 8(a1)
	ld	s9, 0(a1)
	ld	s6, 8(a1)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	lw	s7, 0(a1)
	li	s8, 0
.LBB28_7:                               #   Parent Loop BB28_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s10, 0(s9)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	sw	s10, 4(s0)
	lw	a2, 0(s6)
	addi	a1, a1, 2047
	lw	a4, 937(a1)
	sw	a2, 8(s0)
	li	a1, 32
	li	a2, 32
	mv	a3, s11
	beqz	a4, .LBB28_9
# %bb.8:                                #   in Loop: Header=BB28_7 Depth=2
	li	a2, 40
	lui	a3, %hi(writeRunLevel_CABAC)
	addi	a3, a3, %lo(writeRunLevel_CABAC)
.LBB28_9:                               #   in Loop: Header=BB28_7 Depth=2
	lw	a4, 72(s3)
	add	a2, s0, a2
	sd	a3, 0(a2)
	sw	s7, 24(s0)
	addiw	a2, a4, -9
	andi	a2, a2, -6
	li	a4, 8
	beqz	a2, .LBB28_11
# %bb.10:                               #   in Loop: Header=BB28_7 Depth=2
	li	a4, 13
.LBB28_11:                              #   in Loop: Header=BB28_7 Depth=2
	seqz	a5, a2
	ld	a3, 24(s4)
	sw	a4, 0(s0)
	sw	a5, 80(a0)
	sw	s2, 84(a0)
	beqz	a2, .LBB28_13
# %bb.12:                               #   in Loop: Header=BB28_7 Depth=2
	li	a1, 52
.LBB28_13:                              #   in Loop: Header=BB28_7 Depth=2
	add	a1, s5, a1
	lw	a0, 0(a1)
	li	a1, 112
	mul	a1, a0, a1
	add	a1, a3, a1
	ld	a2, 104(a1)
	mv	a0, s0
	jalr	a2
	lw	a0, 12(s0)
	lw	a1, 44(s3)
	add	a1, a1, a0
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sw	a1, 44(s3)
	lw	a1, 12(s0)
	lw	a2, 0(s3)
	lui	a3, 22
	add	a3, a0, a3
	lw	a3, 432(a3)
	addw	s1, a1, s1
	addi	s0, s0, 48
	addi	a2, a2, 1
	sw	a2, 0(s3)
	bge	s8, a3, .LBB28_3
# %bb.14:                               #   in Loop: Header=BB28_7 Depth=2
	addi	s8, s8, 1
	addi	s6, s6, 4
	addi	s9, s9, 4
	bnez	s10, .LBB28_7
	j	.LBB28_3
.LBB28_15:
	li	s1, 0
.LBB28_16:
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	andi	a0, a0, -16
	li	a1, 32
	bne	a0, a1, .LBB28_33
# %bb.17:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 428(a0)
	blez	a0, .LBB28_33
# %bb.18:
	li	s8, -1
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 5
	lui	a1, %hi(writeChromaCoeff.chroma_ac_param)
	addi	a1, a1, %lo(writeChromaCoeff.chroma_ac_param)
	add	a1, a1, a0
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(subblk_offset_y)
	addi	a1, a1, %lo(subblk_offset_y)
	add	a1, a1, a0
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(subblk_offset_x)
	addi	a1, a1, %lo(subblk_offset_x)
	add	a0, a1, a0
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(levrun_linfo_inter)
	addi	s2, s2, %lo(levrun_linfo_inter)
	li	a0, 4
	j	.LBB28_20
.LBB28_19:                              #   in Loop: Header=BB28_20 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 428(a0)
	addiw	a1, a0, 3
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	addi	a0, a2, 1
	bge	a2, a1, .LBB28_33
.LBB28_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_23 Depth 2
                                        #       Child Loop BB28_25 Depth 3
	li	s6, 0
	mv	a2, a0
	addi	a0, a0, -4
	slli	a0, a0, 2
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	sext.w	a1, a2
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 3
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	j	.LBB28_23
.LBB28_21:                              #   in Loop: Header=BB28_23 Depth=2
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	a0, a0, s6
	lbu	a3, 0(a0)
	sext.w	a2, s6
	li	a0, 7
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeCoeff4x4_CAVLC
	addw	s1, a0, s1
.LBB28_22:                              #   in Loop: Header=BB28_23 Depth=2
	addi	s6, s6, 1
	li	a0, 4
	beq	s6, a0, .LBB28_19
.LBB28_23:                              #   Parent Loop BB28_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_25 Depth 3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB28_21
# %bb.24:                               #   in Loop: Header=BB28_23 Depth=2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	add	a1, a0, a1
	ld	a1, 1848(a1)
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a2, a2, s6
	lbu	a2, 0(a2)
	slli	a3, s6, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	srli	a2, a2, 2
	sw	a2, 76(a0)
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a2, a2, s6
	lbu	a2, 0(a2)
	li	s11, 0
	ld	s9, 0(a1)
	ld	s10, 8(a1)
	srli	a2, a2, 2
	sw	a2, 72(a0)
	addiw	s8, s8, 1
.LBB28_25:                              #   Parent Loop BB28_20 Depth=1
                                        #     Parent Loop BB28_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s7, 0(s9)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	sw	s7, 4(s0)
	lw	a1, 0(s10)
	addi	a0, a0, 2047
	lw	a3, 937(a0)
	sw	a1, 8(s0)
	li	a0, 40
	li	a1, 32
	mv	a2, s2
	beqz	a3, .LBB28_27
# %bb.26:                               #   in Loop: Header=BB28_25 Depth=3
	li	a1, 40
	lui	a2, %hi(writeRunLevel_CABAC)
	addi	a2, a2, %lo(writeRunLevel_CABAC)
.LBB28_27:                              #   in Loop: Header=BB28_25 Depth=3
	lw	a3, 72(s3)
	add	a1, s0, a1
	sd	a2, 0(a1)
	li	a1, 7
	sw	a1, 24(s0)
	addiw	a1, a3, -9
	andi	a1, a1, -6
	li	a2, 10
	beqz	a1, .LBB28_29
# %bb.28:                               #   in Loop: Header=BB28_25 Depth=3
	li	a2, 15
.LBB28_29:                              #   in Loop: Header=BB28_25 Depth=3
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lui	a4, 22
	add	a4, a3, a4
	lw	a4, 428(a4)
	seqz	a5, a1
	sw	a2, 0(s0)
	sw	a5, 80(a3)
	slliw	a4, a4, 1
	ld	a2, 24(s4)
	slt	a4, s8, a4
	xori	a4, a4, 1
	sw	a4, 84(a3)
	beqz	a1, .LBB28_31
# %bb.30:                               #   in Loop: Header=BB28_25 Depth=3
	li	a0, 60
.LBB28_31:                              #   in Loop: Header=BB28_25 Depth=3
	add	a0, s5, a0
	lw	a0, 0(a0)
	li	a1, 112
	mul	a1, a0, a1
	add	a1, a2, a1
	ld	a2, 104(a1)
	mv	a0, s0
	jalr	a2
	lw	a0, 12(s0)
	lw	a1, 44(s3)
	add	a0, a1, a0
	sw	a0, 44(s3)
	lw	a0, 12(s0)
	lw	a1, 0(s3)
	addw	s1, a0, s1
	addi	s0, s0, 48
	addi	a1, a1, 1
	sw	a1, 0(s3)
	li	a0, 14
	bltu	a0, s11, .LBB28_22
# %bb.32:                               #   in Loop: Header=BB28_25 Depth=3
	addi	s11, s11, 1
	addi	s10, s10, 4
	addi	s9, s9, 4
	bnez	s7, .LBB28_25
	j	.LBB28_22
.LBB28_33:
	mv	a0, s1
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
.Lfunc_end28:
	.size	writeChromaCoeff, .Lfunc_end28-writeChromaCoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_terminating_bit           # -- Begin function write_terminating_bit
	.p2align	2
	.type	write_terminating_bit,@function
write_terminating_bit:                  # @write_terminating_bit
# %bb.0:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	slli	a1, a1, 3
	lui	a2, %hi(assignSE2partition)
	addi	a2, a2, %lo(assignSE2partition)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, 8
	add	a2, a3, a2
	ld	a2, -1200(a2)
	lw	a1, 8(a1)
	ld	a2, 24(a2)
	li	a3, 112
	mul	a1, a1, a3
	add	a2, a2, a1
	ld	a3, 0(a2)
	mv	a1, a0
	li	a4, 1
	addi	a0, a2, 8
	sw	a4, 40(a3)
	tail	biari_encode_symbol_final
.Lfunc_end29:
	.size	write_terminating_bit, .Lfunc_end29-write_terminating_bit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	set_last_dquant                 # -- Begin function set_last_dquant
	.p2align	2
	.type	set_last_dquant,@function
set_last_dquant:                        # @set_last_dquant
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a1, a0, a1
	lw	a2, 12(a0)
	ld	a1, -1192(a1)
	li	a3, 528
	mul	a2, a2, a3
	add	a1, a1, a2
	lw	a2, 72(a1)
	beqz	a2, .LBB30_3
.LBB30_1:
	lw	a0, 8(a1)
.LBB30_2:
	lui	a1, %hi(last_dquant)
	sw	a0, %lo(last_dquant)(a1)
	ret
.LBB30_3:
	lw	a0, 24(a0)
	li	a2, 1
	bne	a0, a2, .LBB30_5
# %bb.4:
	lw	a0, 364(a1)
	bnez	a0, .LBB30_1
	j	.LBB30_2
.LBB30_5:
	lui	a1, %hi(last_dquant)
	sw	zero, %lo(last_dquant)(a1)
	ret
.Lfunc_end30:
	.size	set_last_dquant, .Lfunc_end30-set_last_dquant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_one_macroblock            # -- Begin function write_one_macroblock
	.p2align	2
	.type	write_one_macroblock,@function
write_one_macroblock:                   # @write_one_macroblock
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a3, %lo(img)(a1)
	lui	a1, 8
	addiw	a1, a1, -1200
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	add	a1, a3, a1
	ld	s0, 8(a1)
	lw	a4, 12(a3)
	lw	a5, 220(a2)
	li	a6, 528
	mul	a6, a4, a6
	add	s0, s0, a6
	beqz	a5, .LBB31_3
# %bb.1:
	lw	a5, 24(a3)
	li	a6, 1
	bltu	a6, a5, .LBB31_3
# %bb.2:
	lw	a5, 72(s0)
	lui	a6, 22
	addiw	a6, a6, -920
	add	a6, a3, a6
	addiw	a5, a5, -9
	ld	a6, 0(a6)
	andi	a5, a5, -6
	seqz	a5, a5
	slli	a4, a4, 2
	add	a4, a6, a4
	sw	a5, 0(a4)
.LBB31_3:
	lw	a3, 12(a3)
	bnez	a3, .LBB31_5
# %bb.4:
	lui	a4, %hi(intras)
	sw	zero, %lo(intras)(a4)
.LBB31_5:
	lw	a4, 72(s0)
	li	a5, 14
	addi	a2, a2, 2047
	bltu	a5, a4, .LBB31_8
# %bb.6:
	lui	a5, 6
	addiw	a5, a5, 1536
	srl	a4, a5, a4
	andi	a4, a4, 1
	beqz	a4, .LBB31_8
# %bb.7:
	lui	a4, %hi(intras)
	lw	a5, %lo(intras)(a4)
	addi	a5, a5, 1
	sw	a5, %lo(intras)(a4)
.LBB31_8:
	lw	a4, 937(a2)
	li	s1, 1
	bne	a4, s1, .LBB31_12
# %bb.9:
	beqz	a0, .LBB31_12
# %bb.10:
	ld	a0, 0(a1)
	lw	a1, 12(a0)
	beq	a3, a1, .LBB31_12
# %bb.11:
	lw	a1, 945(a2)
	slli	a1, a1, 3
	lui	a2, %hi(assignSE2partition)
	addi	a2, a2, %lo(assignSE2partition)
	add	a1, a2, a1
	ld	a1, 0(a1)
	lw	a1, 8(a1)
	ld	a0, 24(a0)
	li	a2, 112
	mul	a1, a1, a2
	add	a0, a0, a1
	ld	a1, 0(a0)
	li	a2, 1
	sw	a2, 40(a1)
	addi	a0, a0, 8
	li	a1, 0
	call	biari_encode_symbol_final
.LBB31_12:
	lui	a0, %hi(cabac_encoding)
	sw	s1, %lo(cabac_encoding)(a0)
	addi	a1, sp, 12
	li	a0, 0
	call	writeMBLayer
	lw	a0, 72(s0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	bnez	a0, .LBB31_16
# %bb.13:
	lw	a0, 24(a1)
	li	a2, 1
	bne	a0, a2, .LBB31_15
# %bb.14:
	lw	a0, 364(s0)
	bnez	a0, .LBB31_16
.LBB31_15:
	lw	a0, 12(a1)
	ld	a2, 128(a1)
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	lui	s1, 22
	add	a1, a1, s1
	lw	a1, 428(a1)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	addi	a2, a1, 16
	li	a1, 0
	call	memset
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a0, a0, s1
	lw	a2, 428(a0)
	ld	a0, 8(a1)
	slli	a2, a2, 2
	addi	a2, a2, 16
	li	a1, 0
	call	memset
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a0, a0, s1
	lw	a2, 428(a0)
	ld	a0, 16(a1)
	slli	a2, a2, 2
	addi	a2, a2, 16
	li	a1, 0
	call	memset
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a0, a0, s1
	lw	a2, 428(a0)
	ld	a0, 24(a1)
	slli	a2, a2, 2
	addi	a2, a2, 16
	li	a1, 0
	call	memset
	ld	a1, %lo(img)(s2)
.LBB31_16:
	lui	a0, 8
	add	a0, a1, a0
	lw	a2, 12(a1)
	ld	a0, -1192(a0)
	li	a3, 528
	mul	a2, a2, a3
	add	a2, a0, a2
	lw	a3, 72(a2)
	lui	a0, 22
	addiw	a0, a0, 236
	add	a0, a1, a0
	beqz	a3, .LBB31_18
.LBB31_17:
	lw	a1, 8(a2)
	j	.LBB31_21
.LBB31_18:
	lw	a1, 24(a1)
	li	a3, 1
	bne	a1, a3, .LBB31_20
# %bb.19:
	lw	a1, 364(a2)
	bnez	a1, .LBB31_17
	j	.LBB31_21
.LBB31_20:
	li	a1, 0
.LBB31_21:
	lui	a2, %hi(last_dquant)
	sw	a1, %lo(last_dquant)(a2)
	lw	a1, 28(s0)
	lw	a2, 32(s0)
	lw	a3, 36(s0)
	lw	a4, 48(s0)
	lw	a5, 40(s0)
	lw	a6, 44(s0)
	add	a1, a2, a1
	add	a3, a3, a4
	add	a1, a1, a3
	add	a5, a5, a6
	add	a5, a1, a5
	sw	a5, 24(s0)
	sw	a1, 32(a0)
	lw	a2, 40(s0)
	lw	a3, 44(s0)
	add	a2, a3, a2
	sw	a2, 28(a0)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 96(a0)
	lw	a6, 84(a0)
	add	a3, a3, a2
	sw	a3, 4(a0)
	add	a4, a4, a1
	sw	a4, 0(a0)
	bge	a5, a6, .LBB31_23
# %bb.22:
	lw	a3, 8(a0)
	lw	a4, 12(a0)
	add	a1, a3, a1
	sw	a1, 8(a0)
	add	a2, a4, a2
	sw	a2, 12(a0)
.LBB31_23:
	lw	a1, 92(a0)
	lui	a2, %hi(stats)
	ld	a2, %lo(stats)(a2)
	addi	a1, a1, 1
	sw	a1, 92(a0)
	lw	a0, 24(s0)
	lw	a1, 24(a2)
	add	a0, a1, a0
	sw	a0, 24(a2)
	lui	a0, %hi(cabac_encoding)
	sw	zero, %lo(cabac_encoding)(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end31:
	.size	write_one_macroblock, .Lfunc_end31-write_one_macroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	BType2CtxRef                    # -- Begin function BType2CtxRef
	.p2align	2
	.type	BType2CtxRef,@function
BType2CtxRef:                           # @BType2CtxRef
# %bb.0:
	slti	a0, a0, 4
	xori	a0, a0, 1
	ret
.Lfunc_end32:
	.size	BType2CtxRef, .Lfunc_end32-BType2CtxRef
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeReferenceFrame             # -- Begin function writeReferenceFrame
	.p2align	2
	.type	writeReferenceFrame,@function
writeReferenceFrame:                    # @writeReferenceFrame
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	lui	t1, 8
	addiw	t0, t1, -1200
	add	t0, a5, t0
	lw	a6, 12(a5)
	ld	s1, 8(t0)
	li	a7, 528
	mul	a6, a6, a7
	add	s1, s1, a6
	lw	a7, 428(s1)
	seqz	a6, a3
	addw	a3, a7, a6
	slli	a3, a3, 2
	lui	a7, %hi(listXsize)
	addi	a7, a7, %lo(listXsize)
	add	a3, a7, a3
	lw	a7, 0(a3)
	li	a3, 1
	bne	a7, a3, .LBB33_2
# %bb.1:
	li	a0, 0
	j	.LBB33_9
.LBB33_2:
	lw	a3, 0(s1)
	lui	t2, %hi(input)
	ld	t2, %lo(input)(t2)
	li	t3, 48
	mul	s0, a3, t3
	addi	a3, t2, 2047
	lw	t2, 945(a3)
	addiw	t1, t1, -1184
	add	t1, a5, t1
	add	s0, t1, s0
	slli	t2, t2, 3
	lui	t1, %hi(assignSE2partition)
	addi	t1, t1, %lo(assignSE2partition)
	add	t1, t1, t2
	ld	t1, 0(t1)
	ld	t0, 0(t0)
	sw	a4, 4(s0)
	sw	zero, 8(s0)
	li	t2, 3
	sw	t2, 0(s0)
	ld	t0, 24(t0)
	lw	t1, 12(t1)
	lw	t2, 937(a3)
	li	a3, 112
	mul	a3, t1, a3
	add	a3, t0, a3
	beqz	t2, .LBB33_4
# %bb.3:
	slti	a0, a0, 4
	xori	a0, a0, 1
	sw	a0, 24(s0)
	sw	a1, 72(a5)
	sw	a2, 76(a5)
	ld	a2, 104(a3)
	lui	a0, %hi(writeRefFrame_CABAC)
	addi	a0, a0, %lo(writeRefFrame_CABAC)
	sd	a0, 40(s0)
	sw	a6, 8(s0)
	j	.LBB33_7
.LBB33_4:
	li	a0, 2
	bne	a7, a0, .LBB33_6
# %bb.5:
	li	a0, 1
	ld	a1, 0(a3)
	subw	a2, a0, a4
	sw	a2, 20(s0)
	sw	a0, 12(s0)
	mv	a0, s0
	call	writeSyntaxElement2Buf_Fixed
	j	.LBB33_8
.LBB33_6:
	ld	a2, 104(a3)
	lui	a0, %hi(ue_linfo)
	addi	a0, a0, %lo(ue_linfo)
	sd	a0, 32(s0)
.LBB33_7:
	mv	a0, s0
	mv	a1, a3
	jalr	a2
.LBB33_8:
	lw	a0, 12(s0)
	lw	a1, 32(s1)
	add	a0, a1, a0
	lw	a1, 0(s1)
	sw	a0, 32(s1)
	lw	a0, 12(s0)
	addi	a1, a1, 1
	sw	a1, 0(s1)
.LBB33_9:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end33:
	.size	writeReferenceFrame, .Lfunc_end33-writeReferenceFrame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeMotionVector8x8            # -- Begin function writeMotionVector8x8
	.p2align	2
	.type	writeMotionVector8x8,@function
writeMotionVector8x8:                   # @writeMotionVector8x8
# %bb.0:
	addi	sp, sp, -256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	sd	s1, 232(sp)                     # 8-byte Folded Spill
	sd	s2, 224(sp)                     # 8-byte Folded Spill
	sd	s3, 216(sp)                     # 8-byte Folded Spill
	sd	s4, 208(sp)                     # 8-byte Folded Spill
	sd	s5, 200(sp)                     # 8-byte Folded Spill
	sd	s6, 192(sp)                     # 8-byte Folded Spill
	sd	s7, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	sd	s9, 168(sp)                     # 8-byte Folded Spill
	sd	s10, 160(sp)                    # 8-byte Folded Spill
	sd	s11, 152(sp)                    # 8-byte Folded Spill
	lui	a7, %hi(img)
	ld	t0, %lo(img)(a7)
	lui	a7, 22
	addiw	t3, a7, -784
	lui	t4, 8
	addiw	t2, t4, -1200
	add	t2, t0, t2
	lw	t1, 12(t0)
	ld	a7, 8(t2)
	add	t3, t0, t3
	li	t5, 528
	mul	s8, t1, t5
	add	s8, a7, s8
	lhu	t5, 476(s8)
	ld	t6, 8(t3)
	sd	t6, 16(sp)                      # 8-byte Folded Spill
	sd	a5, 104(sp)                     # 8-byte Folded Spill
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	mv	a5, a1
	mv	s0, a0
	beqz	t5, .LBB34_8
# %bb.1:
	bnez	a4, .LBB34_8
# %bb.2:
	li	a0, 1
	bne	a6, a0, .LBB34_8
# %bb.3:
	lw	a0, 392(s8)
	li	a1, 2
	bne	a0, a1, .LBB34_8
# %bb.4:
	li	a1, 1
	lui	a0, 22
	beq	t5, a1, .LBB34_6
# %bb.5:
	addiw	a0, a0, -760
	j	.LBB34_7
.LBB34_6:
	addiw	a0, a0, -768
.LBB34_7:
	add	a0, t0, a0
	ld	a0, 0(a0)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
.LBB34_8:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	bge	a5, a0, .LBB34_32
# %bb.9:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	li	s6, 0
	addi	a1, a0, 2047
	slli	a6, a6, 3
	lw	a2, 0(s8)
	lw	a1, 945(a1)
	li	a3, 48
	sd	a6, 128(sp)                     # 8-byte Folded Spill
	add	a0, a0, a6
	mul	s7, a2, a3
	slli	a1, a1, 3
	lui	a2, %hi(assignSE2partition)
	addi	a2, a2, %lo(assignSE2partition)
	lwu	s2, 148(a0)
	lw	s4, 152(a0)
	addiw	a0, t4, -1184
	add	a1, a2, a1
	sext.w	s11, s2
	add	a0, t0, a0
	add	s7, a0, s7
	ld	a0, 0(t2)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a1)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	ld	a0, 0(t3)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	addi	a0, a1, 2
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	li	a0, 528
	mul	a0, t1, a0
	slli	a1, a1, 7
	slli	a2, a5, 5
	add	a1, a1, a2
	slli	a2, s0, 3
	add	a1, a1, a2
	add	a0, a0, a1
	add	a0, a0, a7
	addi	s5, a0, 76
	slli	a1, s4, 5
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	slli	a1, s11, 3
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	addi	s3, a0, 80
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	j	.LBB34_11
.LBB34_10:                              #   in Loop: Header=BB34_11 Depth=1
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	add	a5, a5, s4
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	add	s5, s5, a0
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	add	s3, s3, a0
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	bge	a5, a0, .LBB34_33
.LBB34_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_16 Depth 2
                                        #       Child Loop BB34_19 Depth 3
                                        #         Child Loop BB34_21 Depth 4
                                        #       Child Loop BB34_29 Depth 3
                                        #         Child Loop BB34_31 Depth 4
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	sd	a5, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s3, 48(sp)                      # 8-byte Folded Spill
	bge	s0, a0, .LBB34_10
# %bb.12:                               #   in Loop: Header=BB34_11 Depth=1
	slli	a0, a5, 3
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	j	.LBB34_16
.LBB34_13:                              #   in Loop: Header=BB34_16 Depth=2
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 937(a1)
	sw	a0, 52(s7)
	sw	zero, 56(s7)
	li	a0, 5
	sw	a0, 48(s7)
	beqz	a1, .LBB34_24
# %bb.14:                               #   in Loop: Header=BB34_16 Depth=2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sw	s0, 72(a0)
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	sw	a1, 76(a0)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	sw	a0, 56(s7)
	li	a1, 40
	lui	a3, %hi(writeMVD_CABAC)
	addi	a3, a3, %lo(writeMVD_CABAC)
.LBB34_15:                              #   in Loop: Header=BB34_16 Depth=2
	addi	a0, s7, 48
	add	a1, a0, a1
	sd	a3, 0(a1)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	lw	a1, 20(a1)
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	ld	a3, 24(a3)
	li	a4, 112
	mul	a1, a1, a4
	add	a1, a3, a1
	ld	a3, 104(a1)
	add	s6, a2, s6
	jalr	a3
	lw	a0, 60(s7)
	lw	a1, 32(s8)
	add	a0, a1, a0
	sw	a0, 32(s8)
	lw	a0, 60(s7)
	lw	a1, 0(s8)
	addw	s6, a0, s6
	addi	s7, s7, 96
	addi	a1, a1, 1
	sw	a1, 0(s8)
	add	s0, s0, s11
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	s5, s5, a0
	add	s3, s3, a0
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	bge	s0, a0, .LBB34_10
.LBB34_16:                              #   Parent Loop BB34_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_19 Depth 3
                                        #         Child Loop BB34_21 Depth 4
                                        #       Child Loop BB34_29 Depth 3
                                        #         Child Loop BB34_31 Depth 4
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	slli	s1, s0, 3
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	slli	s9, s9, 3
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a1, a1, s9
	ld	a1, 0(a1)
	slli	s10, a4, 3
	add	a0, a0, s10
	ld	a0, 0(a0)
	add	a1, a1, s10
	ld	a1, 0(a1)
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 0(a0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lh	a0, 0(a0)
	lh	a1, 0(a1)
	sub	a0, a0, a1
	blez	s4, .LBB34_22
# %bb.17:                               # %.preheader3
                                        #   in Loop: Header=BB34_16 Depth=2
	li	a1, 0
	mv	a2, s5
	j	.LBB34_19
.LBB34_18:                              #   in Loop: Header=BB34_19 Depth=3
	addi	a1, a1, 1
	addi	a2, a2, 32
	beq	a1, s4, .LBB34_22
.LBB34_19:                              #   Parent Loop BB34_11 Depth=1
                                        #     Parent Loop BB34_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB34_21 Depth 4
	blez	s11, .LBB34_18
# %bb.20:                               #   in Loop: Header=BB34_19 Depth=3
	mv	a3, a2
	mv	a4, s2
.LBB34_21:                              #   Parent Loop BB34_11 Depth=1
                                        #     Parent Loop BB34_16 Depth=2
                                        #       Parent Loop BB34_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sw	a0, 0(a3)
	addi	a4, a4, -1
	addi	a3, a3, 8
	bnez	a4, .LBB34_21
	j	.LBB34_18
.LBB34_22:                              #   in Loop: Header=BB34_16 Depth=2
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 937(a1)
	sw	a0, 4(s7)
	sw	zero, 8(s7)
	li	a0, 5
	sw	a0, 0(s7)
	beqz	a1, .LBB34_25
# %bb.23:                               #   in Loop: Header=BB34_16 Depth=2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sw	s0, 72(a0)
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	sw	a1, 76(a0)
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	sw	a0, 8(s7)
	li	a0, 40
	lui	a1, %hi(writeMVD_CABAC)
	addi	a1, a1, %lo(writeMVD_CABAC)
	j	.LBB34_26
.LBB34_24:                              #   in Loop: Header=BB34_16 Depth=2
	li	a1, 32
	lui	a3, %hi(se_linfo)
	addi	a3, a3, %lo(se_linfo)
	j	.LBB34_15
.LBB34_25:                              #   in Loop: Header=BB34_16 Depth=2
	li	a0, 32
	lui	a1, %hi(se_linfo)
	addi	a1, a1, %lo(se_linfo)
.LBB34_26:                              #   in Loop: Header=BB34_16 Depth=2
	add	a0, s7, a0
	sd	a1, 0(a0)
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	lw	a0, 20(a0)
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s7
	jalr	a2
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	lw	a2, 12(s7)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a1, a1, s9
	ld	a1, 0(a1)
	lw	a3, 32(s8)
	add	a0, a0, s10
	ld	a0, 0(a0)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a2, a3, a2
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, a3
	ld	a0, 0(a0)
	add	a1, a1, a3
	ld	a1, 0(a1)
	sw	a2, 32(s8)
	lw	a3, 0(s8)
	lh	a0, 2(a0)
	lh	a1, 2(a1)
	lw	a2, 12(s7)
	addi	a3, a3, 1
	sw	a3, 0(s8)
	sub	a0, a0, a1
	blez	s4, .LBB34_13
# %bb.27:                               # %.preheader
                                        #   in Loop: Header=BB34_16 Depth=2
	li	a1, 0
	mv	a3, s3
	j	.LBB34_29
.LBB34_28:                              #   in Loop: Header=BB34_29 Depth=3
	addi	a1, a1, 1
	addi	a3, a3, 32
	beq	a1, s4, .LBB34_13
.LBB34_29:                              #   Parent Loop BB34_11 Depth=1
                                        #     Parent Loop BB34_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB34_31 Depth 4
	blez	s11, .LBB34_28
# %bb.30:                               #   in Loop: Header=BB34_29 Depth=3
	mv	a4, a3
	mv	a5, s2
.LBB34_31:                              #   Parent Loop BB34_11 Depth=1
                                        #     Parent Loop BB34_16 Depth=2
                                        #       Parent Loop BB34_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sw	a0, 0(a4)
	addi	a5, a5, -1
	addi	a4, a4, 8
	bnez	a5, .LBB34_31
	j	.LBB34_28
.LBB34_32:
	li	s6, 0
.LBB34_33:
	mv	a0, s6
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	ld	s2, 224(sp)                     # 8-byte Folded Reload
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s4, 208(sp)                     # 8-byte Folded Reload
	ld	s5, 200(sp)                     # 8-byte Folded Reload
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	s7, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	ld	s9, 168(sp)                     # 8-byte Folded Reload
	ld	s10, 160(sp)                    # 8-byte Folded Reload
	ld	s11, 152(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.Lfunc_end34:
	.size	writeMotionVector8x8, .Lfunc_end34-writeMotionVector8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeCoeff4x4_CAVLC             # -- Begin function writeCoeff4x4_CAVLC
	.p2align	2
	.type	writeCoeff4x4_CAVLC,@function
writeCoeff4x4_CAVLC:                    # @writeCoeff4x4_CAVLC
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
	lui	s5, %hi(img)
	ld	a4, %lo(img)(s5)
	lui	a5, 8
	addiw	a6, a5, -1200
	add	a6, a4, a6
	ld	s4, 8(a6)
	lw	a7, 12(a4)
	li	t0, 528
	lui	t1, %hi(input)
	ld	t1, %lo(input)(t1)
	mul	a7, a7, t0
	add	s4, s4, a7
	lw	a7, 0(s4)
	addi	t0, t1, 2047
	lw	t0, 945(t0)
	li	t1, 48
	mul	s3, a7, t1
	ld	s0, 0(a6)
	slli	t0, t0, 3
	lui	a6, %hi(assignSE2partition)
	addi	a6, a6, %lo(assignSE2partition)
	add	a6, a6, t0
	ld	s1, 0(a6)
	add	s3, a4, s3
	li	a6, 7
	addiw	s2, a5, -1184
	bltu	a6, a0, .LBB35_5
# %bb.1:
	slli	a0, a0, 2
	lui	a5, %hi(.LJTI35_0)
	addi	a5, a5, %lo(.LJTI35_0)
	add	a0, a0, a5
	lw	a5, 0(a0)
	lui	a0, 3
	addiw	a0, a0, 1848
	add	a0, a4, a0
	jr	a5
.LBB35_2:
	ld	a0, 0(a0)
	slli	a5, a1, 3
	add	a0, a0, a5
	ld	a0, 0(a0)
	slli	a5, a2, 3
	add	a0, a0, a5
	ld	a0, 0(a0)
	ld	s5, 0(a0)
	ld	t6, 8(a0)
	lw	a0, 72(s4)
	li	s7, 1
	li	a5, 14
	li	s6, 5
	bltu	a5, a0, .LBB35_76
# %bb.3:
	lui	a5, 6
	addiw	a5, a5, 1536
	srl	a0, a5, a0
	andi	a0, a0, 1
	beqz	a0, .LBB35_76
# %bb.4:
	li	a0, 16
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a7, 9
	j	.LBB35_8
.LBB35_5:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	mv	s6, a1
	li	a1, 600
	mv	s7, a2
	mv	s8, a3
	call	error
	mv	a3, s8
	mv	a1, s6
	mv	a2, s7
	ld	a4, %lo(img)(s5)
	li	a7, 0
	li	s6, 0
	sd	zero, 8(sp)                     # 8-byte Folded Spill
	li	s5, 0
	li	t6, 0
	li	s7, 1
	j	.LBB35_8
.LBB35_6:
	ld	a0, 0(a0)
	slli	a5, a1, 3
	add	a0, a0, a5
	ld	a0, 0(a0)
	slli	a5, a2, 3
	add	a0, a0, a5
	ld	a0, 0(a0)
	ld	s5, 0(a0)
	ld	t6, 8(a0)
	li	s7, 1
	li	a0, 15
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	s6, 5
	li	a7, 9
	j	.LBB35_8
.LBB35_7:
	ld	a0, 8(a0)
	ld	a0, 0(a0)
	ld	s5, 0(a0)
	ld	t6, 8(a0)
	li	s7, 1
	li	a0, 16
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	s6, 5
	li	a7, 7
.LBB35_8:
	li	a0, 1
.LBB35_9:
	li	a5, 0
	li	a6, 0
	li	s9, 0
	li	s8, 0
	li	s11, 0
	li	s10, 0
	add	s3, s3, s2
	sd	a7, 24(sp)                      # 8-byte Folded Spill
	slli	a7, a7, 2
	add	a7, s1, a7
	lw	a7, 0(a7)
	ld	t0, 24(s0)
	addi	s0, s4, 20
	li	t1, 112
	mul	a7, a7, t1
	add	a7, t0, a7
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	lui	a7, 22
	addiw	a7, a7, 432
	add	a4, a4, a7
	li	t2, 1
	li	a7, 16
	mv	t0, s5
	mv	t1, t6
	sd	t6, 16(sp)                      # 8-byte Folded Spill
	j	.LBB35_12
.LBB35_10:                              #   in Loop: Header=BB35_12 Depth=1
	lw	t3, 0(t1)
	addw	s10, t3, s10
	sraiw	t3, t2, 31
	xor	t4, t2, t3
	subw	t4, t4, t3
	addi	t4, t4, -1
	snez	t3, t4
	addiw	s11, s11, 1
	addiw	t3, t3, -1
	and	s11, t3, s11
	addiw	s9, s9, 1
	mv	s8, a5
.LBB35_11:                              #   in Loop: Header=BB35_12 Depth=1
	addi	a6, a6, 1
	addiw	a5, a5, 1
	addi	t1, t1, 4
	addi	t0, t0, 4
.LBB35_12:                              # =>This Inner Loop Header: Depth=1
	beqz	s7, .LBB35_15
# %bb.13:                               #   in Loop: Header=BB35_12 Depth=1
	bltu	a7, a6, .LBB35_20
# %bb.14:                               #   in Loop: Header=BB35_12 Depth=1
	bnez	t2, .LBB35_17
	j	.LBB35_20
.LBB35_15:                              #   in Loop: Header=BB35_12 Depth=1
	beqz	t2, .LBB35_23
# %bb.16:                               #   in Loop: Header=BB35_12 Depth=1
	lw	t2, 0(a4)
	blt	t2, a6, .LBB35_23
.LBB35_17:                              #   in Loop: Header=BB35_12 Depth=1
	lw	t2, 0(t0)
	beqz	t2, .LBB35_11
# %bb.18:                               #   in Loop: Header=BB35_12 Depth=1
	li	t3, 2
	blt	s11, t3, .LBB35_10
# %bb.19:                               #   in Loop: Header=BB35_12 Depth=1
	li	s11, 2
	j	.LBB35_10
.LBB35_20:
	beqz	a0, .LBB35_24
# %bb.21:
	andi	a0, a2, 1
	slli	a3, a1, 1
	andi	a3, a3, 2
	or	s1, a0, a3
	li	a3, 2
	slti	a0, a2, 2
	blt	a1, a3, .LBB35_31
# %bb.22:
	xori	s2, a0, 3
	j	.LBB35_32
.LBB35_23:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	sw	a0, 0(s3)
	sw	s9, 4(s3)
	sw	s11, 8(s3)
	sw	zero, 12(s3)
	mv	a0, s3
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_NumCoeffTrailingOnesChromaDC
	j	.LBB35_38
.LBB35_24:
	srai	s1, a3, 4
	andi	s2, a3, 15
	mv	a0, s1
	mv	a1, s2
	call	predict_nnz_chroma
	j	.LBB35_33
.LBB35_25:
	ld	a0, 8(a0)
	lui	a5, 22
	slli	a6, a3, 3
	add	a0, a0, a6
	ld	a0, 8(a0)
	addiw	a5, a5, 432
	add	a5, a4, a5
	lw	a7, 0(a5)
	ld	s5, 0(a0)
	lw	a5, 72(s4)
	ld	t6, 8(a0)
	li	a0, 1
	li	a6, 14
	li	s6, 6
	sd	a7, 8(sp)                       # 8-byte Folded Spill
	bltu	a6, a5, .LBB35_77
# %bb.26:
	lui	a6, 6
	addiw	a6, a6, 1536
	srl	a5, a6, a5
	andi	a5, a5, 1
	beqz	a5, .LBB35_77
# %bb.27:
	li	s7, 0
	li	a7, 8
	j	.LBB35_9
.LBB35_28:
	ld	a0, 0(a0)
	slli	a5, a1, 3
	add	a0, a0, a5
	ld	a0, 0(a0)
	slli	a5, a2, 3
	add	a0, a0, a5
	ld	a5, 0(a0)
	ld	s5, 0(a5)
	lw	a0, 72(s4)
	ld	t6, 8(a5)
	li	s7, 1
	li	a5, 14
	li	s6, 6
	bltu	a5, a0, .LBB35_78
# %bb.29:
	lui	a5, 6
	addiw	a5, a5, 1536
	srl	a0, a5, a0
	andi	a0, a0, 1
	beqz	a0, .LBB35_78
# %bb.30:
	li	a0, 0
	li	a5, 15
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	li	a7, 10
	j	.LBB35_9
.LBB35_31:
	xori	s2, a0, 1
.LBB35_32:
	mv	a0, s1
	mv	a1, s2
	call	predict_nnz
.LBB35_33:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 12(a1)
	ld	a1, 128(a1)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	s1, s1, 3
	add	a1, a1, s1
	ld	a1, 0(a1)
	slli	s2, s2, 2
	add	a1, a1, s2
	li	a2, 2
	sw	s9, 0(a1)
	bge	a0, a2, .LBB35_35
# %bb.34:
	li	a1, 0
	j	.LBB35_37
.LBB35_35:
	li	a2, 4
	li	a1, 1
	bltu	a0, a2, .LBB35_37
# %bb.36:
	sltiu	a0, a0, 8
	xori	a1, a0, 3
.LBB35_37:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	sw	a0, 0(s3)
	sw	s9, 4(s3)
	sw	s11, 8(s3)
	sw	a1, 12(s3)
	mv	a0, s3
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_NumCoeffTrailingOnes
.LBB35_38:
	lw	a0, 12(s3)
	slli	s6, s6, 2
	add	s6, s0, s6
	lw	a1, 0(s6)
	add	a0, a1, a0
	lw	a1, 0(s4)
	sw	a0, 0(s6)
	lw	s1, 12(s3)
	addi	a1, a1, 1
	sw	a1, 0(s4)
	beqz	s9, .LBB35_69
# %bb.39:
	subw	s0, s8, s11
	li	a0, 0
	blez	s11, .LBB35_43
# %bb.40:
	slli	a1, s8, 2
	add	a1, s5, a1
	li	a2, 2
	mv	a3, s8
.LBB35_41:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	sraiw	a5, a4, 31
	xor	a6, a4, a5
	subw	a5, a6, a5
	bgeu	a5, a2, .LBB35_79
# %bb.42:                               #   in Loop: Header=BB35_41 Depth=1
	srliw	a4, a4, 31
	slli	a0, a0, 1
	or	a0, a0, a4
	addi	a3, a3, -1
	addi	a1, a1, -4
	blt	s0, a3, .LBB35_41
.LBB35_43:
	addi	s2, s3, 48
	beqz	s11, .LBB35_45
# %bb.44:
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sw	a1, 48(s3)
	sw	s11, 56(s3)
	sw	a0, 52(s3)
	mv	a0, s2
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_VLC
	lw	a0, 60(s3)
	lw	a1, 0(s6)
	add	a0, a1, a0
	sw	a0, 0(s6)
	lw	a0, 60(s3)
	lw	a1, 0(s4)
	addw	s1, a0, s1
	addi	s2, s3, 96
	addi	a1, a1, 1
	sw	a1, 0(s4)
.LBB35_45:
	bltz	s0, .LBB35_53
# %bb.46:
	slti	a0, s9, 11
	slli	a1, s0, 2
	add	a1, s5, a1
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	lw	s3, 0(a1)
	not	a0, a0
	slti	a1, s11, 3
	and	s5, a0, a1
	sw	s3, 4(s2)
	li	a0, 4
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sw	a1, 0(s2)
	blt	s9, a0, .LBB35_50
# %bb.47:
	li	a0, 3
	bne	s11, a0, .LBB35_50
# %bb.48:
	mv	a0, s2
	beqz	s5, .LBB35_51
.LBB35_49:
	mv	a1, s5
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_Level_VLCN
	j	.LBB35_52
.LBB35_50:
	sgtz	a0, s3
	negw	a0, a0
	ori	a0, a0, 1
	add	a0, a0, s3
	sw	a0, 4(s2)
	mv	a0, s2
	bnez	s5, .LBB35_49
.LBB35_51:
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_Level_VLC1
.LBB35_52:
	slli	a0, s5, 2
	lw	a1, 12(s2)
	lw	a2, 0(s6)
	lui	a3, %hi(writeCoeff4x4_CAVLC.incVlc)
	addi	a3, a3, %lo(writeCoeff4x4_CAVLC.incVlc)
	add	a0, a3, a0
	lw	a0, 0(a0)
	add	a1, a2, a1
	sw	a1, 0(s6)
	lw	a1, 12(s2)
	lw	a2, 0(s4)
	addw	s1, a1, s1
	addi	s2, s2, 48
	addi	a2, a2, 1
	sw	a2, 0(s4)
	bne	s8, s11, .LBB35_57
.LBB35_53:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	bge	s9, a0, .LBB35_56
# %bb.54:
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	sw	s11, 0(s2)
	sw	s10, 4(s2)
	addi	a0, s9, -1
	sw	a0, 12(s2)
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	mv	a0, s2
	beqz	s7, .LBB35_59
# %bb.55:
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_TotalZeros
	j	.LBB35_60
.LBB35_56:
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	bgez	s8, .LBB35_61
	j	.LBB35_69
.LBB35_57:
	sraiw	a1, s3, 31
	xor	a2, s3, a1
	subw	a1, a2, a1
	li	a2, 3
	bgeu	a2, a1, .LBB35_70
# %bb.58:
	li	s3, 2
	j	.LBB35_71
.LBB35_59:
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_TotalZerosChromaDC
.LBB35_60:
	lw	a0, 12(s2)
	lw	a1, 0(s6)
	add	a0, a1, a0
	sw	a0, 0(s6)
	lw	a0, 12(s2)
	lw	a1, 0(s4)
	addw	s1, a0, s1
	addi	s2, s2, 48
	addi	a1, a1, 1
	sw	a1, 0(s4)
	bltz	s8, .LBB35_69
.LBB35_61:
	addi	s0, s8, 1
	slli	s3, s8, 2
	add	s3, s5, s3
	li	s5, 2
	mv	s7, s9
	j	.LBB35_64
.LBB35_62:                              #   in Loop: Header=BB35_64 Depth=1
	addi	a0, a0, -1
	sw	a0, 12(s2)
	mv	a0, s2
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_Run
	lw	a0, 12(s2)
	lw	a1, 0(s6)
	add	a0, a1, a0
	sw	a0, 0(s6)
	lw	a0, 12(s2)
	addw	s1, a0, s1
	lw	a0, 0(s4)
	subw	s10, s10, s8
	addiw	s7, s7, -1
	addi	s2, s2, 48
	addi	a0, a0, 1
	sw	a0, 0(s4)
.LBB35_63:                              #   in Loop: Header=BB35_64 Depth=1
	addi	s0, s0, -1
	addi	s3, s3, -4
	blez	s0, .LBB35_69
.LBB35_64:                              # =>This Inner Loop Header: Depth=1
	lw	s8, 0(s3)
	sw	s8, 4(s2)
	sw	s11, 0(s2)
	blt	s9, s5, .LBB35_69
# %bb.65:                               #   in Loop: Header=BB35_64 Depth=1
	beqz	s10, .LBB35_69
# %bb.66:                               #   in Loop: Header=BB35_64 Depth=1
	blt	s7, s5, .LBB35_63
# %bb.67:                               #   in Loop: Header=BB35_64 Depth=1
	li	a1, 7
	mv	a0, s10
	blt	s10, a1, .LBB35_62
# %bb.68:                               #   in Loop: Header=BB35_64 Depth=1
	li	a0, 7
	j	.LBB35_62
.LBB35_69:
	mv	a0, s1
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
.LBB35_70:
	slt	a0, a0, a1
	addw	s3, s5, a0
.LBB35_71:
	ld	s11, 0(sp)                      # 8-byte Folded Reload
	addi	s11, s11, -4
	j	.LBB35_74
.LBB35_72:                              #   in Loop: Header=BB35_74 Depth=1
	mv	a1, s3
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_Level_VLCN
.LBB35_73:                              #   in Loop: Header=BB35_74 Depth=1
	sraiw	a0, s5, 31
	xor	a1, s5, a0
	subw	a1, a1, a0
	lw	a0, 12(s2)
	lw	a2, 0(s6)
	slli	a3, s3, 2
	lui	a4, %hi(writeCoeff4x4_CAVLC.incVlc)
	addi	a4, a4, %lo(writeCoeff4x4_CAVLC.incVlc)
	add	a3, a4, a3
	lw	a3, 0(a3)
	add	a0, a2, a0
	sw	a0, 0(s6)
	lw	a0, 12(s2)
	slt	a1, a3, a1
	lw	a2, 0(s4)
	addw	s3, s3, a1
	addw	s1, a0, s1
	addi	s2, s2, 48
	addi	a2, a2, 1
	sw	a2, 0(s4)
	addiw	s0, s0, -1
	addi	s11, s11, -4
	blez	s0, .LBB35_53
.LBB35_74:                              # =>This Inner Loop Header: Depth=1
	lw	s5, 0(s11)
	sw	s5, 4(s2)
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	sw	a0, 0(s2)
	mv	a0, s2
	bnez	s3, .LBB35_72
# %bb.75:                               #   in Loop: Header=BB35_74 Depth=1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	call	writeSyntaxElement_Level_VLC1
	j	.LBB35_73
.LBB35_76:
	li	a0, 16
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a0, 1
	li	a7, 14
	j	.LBB35_9
.LBB35_77:
	li	s7, 0
	li	a7, 13
	j	.LBB35_9
.LBB35_78:
	li	a0, 0
	li	a7, 15
	li	a5, 15
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	j	.LBB35_9
.LBB35_79:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, -1
	call	exit
.Lfunc_end35:
	.size	writeCoeff4x4_CAVLC, .Lfunc_end35-writeCoeff4x4_CAVLC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI35_0:
	.word	.LBB35_2
	.word	.LBB35_7
	.word	.LBB35_6
	.word	.LBB35_5
	.word	.LBB35_5
	.word	.LBB35_5
	.word	.LBB35_25
	.word	.LBB35_28
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	writeLumaCoeff4x4_CABAC         # -- Begin function writeLumaCoeff4x4_CABAC
	.p2align	2
	.type	writeLumaCoeff4x4_CABAC,@function
writeLumaCoeff4x4_CABAC:                # @writeLumaCoeff4x4_CABAC
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
	lui	a3, %hi(img)
	ld	s2, %lo(img)(a3)
	lui	a4, 8
	addiw	a5, a4, -1200
	add	a5, s2, a5
	lw	a6, 12(s2)
	ld	s3, 8(a5)
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	li	a2, 528
	mul	a2, a6, a2
	add	s3, s3, a2
	lw	s6, 0(s3)
	lui	a2, 3
	add	a6, s2, a2
	li	a2, 48
	mul	s1, s6, a2
	lui	a7, %hi(input)
	ld	a7, %lo(input)(a7)
	add	s1, s2, s1
	addiw	a4, a4, -1184
	ld	a6, 1848(a6)
	addi	a7, a7, 2047
	lw	a7, 945(a7)
	slli	t0, a0, 3
	add	a6, a6, t0
	ld	a6, 0(a6)
	ld	a5, 0(a5)
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	slli	a7, a7, 3
	slli	a5, a1, 3
	add	a5, a6, a5
	ld	a5, 0(a5)
	lui	a6, %hi(assignSE2partition)
	addi	a6, a6, %lo(assignSE2partition)
	add	a6, a6, a7
	ld	s10, 0(a6)
	ld	s9, 0(a5)
	ld	s11, 8(a5)
	andi	a5, a1, 1
	slli	a6, a0, 1
	andi	a6, a6, 2
	or	a5, a5, a6
	sw	a5, 72(s2)
	li	a5, 2
	slti	a1, a1, 2
	blt	a0, a5, .LBB36_3
# %bb.1:
	xori	a0, a1, 3
	add	s1, s1, a4
	sw	a0, 76(s2)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB36_4
.LBB36_2:
	li	a0, 12
	li	s5, 14
	j	.LBB36_5
.LBB36_3:
	xori	a0, a1, 1
	add	s1, s1, a4
	sw	a0, 76(s2)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB36_2
.LBB36_4:
	li	a0, 7
	li	s5, 9
.LBB36_5:
	lw	s0, 0(s9)
	sw	s0, 4(s1)
	lw	a1, 0(s11)
	sw	a1, 8(s1)
	lui	a1, %hi(writeRunLevel_CABAC)
	addi	a1, a1, %lo(writeRunLevel_CABAC)
	sd	a1, 40(s1)
	li	a4, 5
	ld	a3, %lo(img)(a3)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 24(a1)
	sw	a4, 24(s1)
	sw	a0, 0(s1)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	sw	a0, 80(a3)
	beqz	a0, .LBB36_7
# %bb.6:
	li	a2, 28
.LBB36_7:
	add	a2, s10, a2
	lw	a0, 0(a2)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 40(s3)
	add	a0, a1, a0
	lw	a1, 0(s3)
	sw	a0, 40(s3)
	lw	s1, 12(s1)
	addi	a1, a1, 1
	sw	a1, 0(s3)
	beqz	s0, .LBB36_11
# %bb.8:
	slli	a0, s5, 2
	add	s10, s10, a0
	addi	s11, s11, 4
	addi	s9, s9, 4
	li	a0, 48
	mul	a0, s6, a0
	lui	a1, 8
	addiw	a1, a1, -1136
	add	a1, s2, a1
	add	s2, a0, a1
	li	s6, 1
	li	s7, 5
	lui	s8, %hi(img)
	li	s0, 15
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	lw	s4, 0(s9)
	sw	s4, 4(s2)
	lw	a0, 0(s11)
	lui	a1, %hi(writeRunLevel_CABAC)
	addi	a1, a1, %lo(writeRunLevel_CABAC)
	sd	a1, 40(s2)
	ld	a1, %lo(img)(s8)
	sw	a0, 8(s2)
	sw	s7, 24(s2)
	sw	s5, 0(s2)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	sw	a0, 80(a1)
	lw	a0, 0(s10)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s2
	jalr	a2
	lw	a0, 12(s2)
	lw	a1, 40(s3)
	add	a0, a1, a0
	sw	a0, 40(s3)
	lw	a0, 12(s2)
	lw	a1, 0(s3)
	addw	s1, a0, s1
	addi	a1, a1, 1
	sw	a1, 0(s3)
	bltu	s0, s6, .LBB36_11
# %bb.10:                               #   in Loop: Header=BB36_9 Depth=1
	addi	s6, s6, 1
	addi	s11, s11, 4
	addi	s9, s9, 4
	addi	s2, s2, 48
	bnez	s4, .LBB36_9
.LBB36_11:
	mv	a0, s1
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
.Lfunc_end36:
	.size	writeLumaCoeff4x4_CABAC, .Lfunc_end36-writeLumaCoeff4x4_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeLumaCoeff8x8_CABAC         # -- Begin function writeLumaCoeff8x8_CABAC
	.p2align	2
	.type	writeLumaCoeff8x8_CABAC,@function
writeLumaCoeff8x8_CABAC:                # @writeLumaCoeff8x8_CABAC
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
	slti	a2, a0, 2
	lui	t0, %hi(img)
	ld	s2, %lo(img)(t0)
	xori	a2, a2, 1
	lui	a3, 8
	addiw	a4, a3, -1200
	add	a4, s2, a4
	lui	a5, 3
	lw	a6, 12(s2)
	ld	s3, 8(a4)
	add	a5, s2, a5
	li	a7, 528
	mul	a6, a6, a7
	add	s3, s3, a6
	ld	a5, 1848(a5)
	lw	s9, 0(s3)
	li	a6, 48
	slli	a7, a0, 3
	add	a5, a5, a7
	lui	a7, %hi(input)
	ld	a7, %lo(input)(a7)
	mul	s1, s9, a6
	addiw	a3, a3, -1184
	add	a3, s2, a3
	addi	a6, a7, 2047
	lw	a6, 945(a6)
	ld	a5, 0(a5)
	add	s1, a3, s1
	ld	s4, 0(a4)
	slli	a6, a6, 3
	ld	a3, 0(a5)
	lui	a4, %hi(assignSE2partition)
	addi	a4, a4, %lo(assignSE2partition)
	add	a4, a4, a6
	ld	s5, 0(a4)
	ld	s11, 0(a3)
	ld	s10, 8(a3)
	slli	a0, a0, 1
	andi	a0, a0, 2
	sw	a0, 72(s2)
	slli	a2, a2, 1
	sw	a2, 76(s2)
	mv	s8, a1
	beqz	a1, .LBB37_2
# %bb.1:
	li	a0, 7
	li	s6, 9
	j	.LBB37_3
.LBB37_2:
	li	a0, 12
	li	s6, 14
.LBB37_3:
	lw	s0, 0(s11)
	sw	s0, 4(s1)
	lw	a2, 0(s10)
	lui	a1, %hi(writeRunLevel_CABAC)
	addi	a1, a1, %lo(writeRunLevel_CABAC)
	sd	a1, 40(s1)
	ld	a3, %lo(img)(t0)
	sw	a2, 8(s1)
	li	a1, 2
	sw	a1, 24(s1)
	lw	a2, 24(a3)
	ld	a1, 24(s4)
	sw	a0, 0(s1)
	li	a4, 1
	sw	s8, 80(a3)
	bne	a2, a4, .LBB37_5
# %bb.4:
	li	a0, 18
.LBB37_5:
	slli	a0, a0, 2
	add	a0, s5, a0
	lw	a0, 0(a0)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 40(s3)
	add	a0, a1, a0
	lw	a1, 0(s3)
	sw	a0, 40(s3)
	lw	s1, 12(s1)
	addi	a1, a1, 1
	sw	a1, 0(s3)
	beqz	s0, .LBB37_11
# %bb.6:                                # %.preheader
	addi	s10, s10, 4
	addi	s11, s11, 4
	li	a0, 48
	mul	a0, s9, a0
	lui	a1, 8
	addiw	a1, a1, -1136
	add	a1, s2, a1
	add	s2, a0, a1
	li	s0, 63
	li	s9, 1
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	lw	s7, 0(s11)
	sw	s7, 4(s2)
	lui	a0, %hi(writeRunLevel_CABAC)
	addi	a0, a0, %lo(writeRunLevel_CABAC)
	sd	a0, 40(s2)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 0(s10)
	lw	a2, 24(a0)
	sw	a1, 8(s2)
	li	a1, 2
	sw	a1, 24(s2)
	sw	s6, 0(s2)
	sw	s8, 80(a0)
	mv	a0, s6
	li	a1, 1
	bne	a2, a1, .LBB37_9
# %bb.8:                                #   in Loop: Header=BB37_7 Depth=1
	li	a0, 18
.LBB37_9:                               #   in Loop: Header=BB37_7 Depth=1
	slli	a0, a0, 2
	add	a0, s5, a0
	lw	a0, 0(a0)
	ld	a1, 24(s4)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s2
	jalr	a2
	lw	a0, 12(s2)
	lw	a1, 40(s3)
	add	a0, a1, a0
	sw	a0, 40(s3)
	lw	a0, 12(s2)
	lw	a1, 0(s3)
	addw	s1, a0, s1
	addi	a1, a1, 1
	sw	a1, 0(s3)
	bltu	s0, s9, .LBB37_11
# %bb.10:                               #   in Loop: Header=BB37_7 Depth=1
	addi	s9, s9, 1
	addi	s10, s10, 4
	addi	s11, s11, 4
	addi	s2, s2, 48
	bnez	s7, .LBB37_7
.LBB37_11:
	mv	a0, s1
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
.Lfunc_end37:
	.size	writeLumaCoeff8x8_CABAC, .Lfunc_end37-writeLumaCoeff8x8_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeLumaCoeff8x8               # -- Begin function writeLumaCoeff8x8
	.p2align	2
	.type	writeLumaCoeff8x8,@function
writeLumaCoeff8x8:                      # @writeLumaCoeff8x8
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	li	a3, 13
	bne	a1, a3, .LBB38_2
# %bb.1:
	li	a3, 1
	bne	a2, a3, .LBB38_11
.LBB38_2:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a3, 937(a3)
	addi	a4, a1, -11
	seqz	s0, a4
	beqz	a2, .LBB38_5
# %bb.3:
	beqz	a3, .LBB38_7
# %bb.4:
	addi	a1, a1, -13
	seqz	a1, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	writeLumaCoeff8x8_CABAC
.LBB38_5:
	beqz	a3, .LBB38_7
# %bb.6:
	mv	s1, a0
	li	a1, 0
	mv	a2, s0
	call	writeLumaCoeff4x4_CABAC
	mv	s2, a0
	li	a1, 1
	mv	a0, s1
	mv	a2, s0
	call	writeLumaCoeff4x4_CABAC
	add	s3, a0, s2
	li	a1, 2
	mv	a0, s1
	mv	a2, s0
	call	writeLumaCoeff4x4_CABAC
	mv	s2, a0
	li	a1, 3
	mv	a0, s1
	mv	a2, s0
	call	writeLumaCoeff4x4_CABAC
	j	.LBB38_10
.LBB38_7:
	mv	s1, a0
	beqz	a2, .LBB38_9
# %bb.8:
	addi	a1, a1, -13
	seqz	s0, a1
.LBB38_9:
	li	a0, 0
	mv	a1, s1
	li	a2, 0
	mv	a3, s0
	call	writeCoeff4x4_CAVLC
	mv	s2, a0
	li	a2, 1
	li	a0, 0
	mv	a1, s1
	mv	a3, s0
	call	writeCoeff4x4_CAVLC
	add	s3, a0, s2
	li	a2, 2
	li	a0, 0
	mv	a1, s1
	mv	a3, s0
	call	writeCoeff4x4_CAVLC
	mv	s2, a0
	li	a2, 3
	li	a0, 0
	mv	a1, s1
	mv	a3, s0
	call	writeCoeff4x4_CAVLC
.LBB38_10:
	add	a0, a0, s2
	addw	a0, a0, s3
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB38_11:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.writeLumaCoeff8x8)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.writeLumaCoeff8x8)
	lui	a2, 1
	addiw	a2, a2, -592
	call	__assert_fail
.Lfunc_end38:
	.size	writeLumaCoeff8x8, .Lfunc_end38-writeLumaCoeff8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	predict_nnz                     # -- Begin function predict_nnz
	.p2align	2
	.type	predict_nnz,@function
predict_nnz:                            # @predict_nnz
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	s1, 12(a2)
	mv	s0, a1
	mv	s2, a0
	li	a3, -1
	addi	a5, sp, 8
	mv	a0, s1
	mv	a1, s2
	mv	a2, s0
	li	a4, 0
	call	getLuma4x4Neighbour
	lw	a0, 8(sp)
	beqz	a0, .LBB39_6
# %bb.1:
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 224(a1)
	beqz	a1, .LBB39_5
# %bb.2:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB39_5
# %bb.3:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	ld	a2, -1208(a2)
	lw	a2, 4(a2)
	bnez	a2, .LBB39_5
# %bb.4:
	lui	a2, 22
	addiw	a2, a2, -920
	add	a1, a1, a2
	lw	a2, 12(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	and	a0, a1, a0
	sw	a0, 8(sp)
	beqz	a0, .LBB39_6
.LBB39_5:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 12(sp)
	ld	a0, 128(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 16(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 20(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	s3, 0(a0)
	li	s4, 1
	j	.LBB39_7
.LBB39_6:
	li	s4, 0
	li	s3, 0
.LBB39_7:
	li	a4, -1
	addi	a5, sp, 8
	mv	a0, s1
	mv	a1, s2
	mv	a2, s0
	li	a3, 0
	call	getLuma4x4Neighbour
	lw	a0, 8(sp)
	beqz	a0, .LBB39_14
# %bb.8:
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 224(a1)
	beqz	a1, .LBB39_12
# %bb.9:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB39_12
# %bb.10:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	ld	a2, -1208(a2)
	lw	a2, 4(a2)
	bnez	a2, .LBB39_12
# %bb.11:
	lui	a2, 22
	addiw	a2, a2, -920
	add	a1, a1, a2
	lw	a2, 12(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	and	a0, a1, a0
	sw	a0, 8(sp)
	beqz	a0, .LBB39_14
.LBB39_12:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 12(sp)
	ld	a0, 128(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 16(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 20(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addw	s3, a0, s3
	beqz	s4, .LBB39_14
# %bb.13:
	addi	s3, s3, 1
	srliw	a0, s3, 31
	add	a0, s3, a0
	sraiw	s3, a0, 1
.LBB39_14:
	mv	a0, s3
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end39:
	.size	predict_nnz, .Lfunc_end39-predict_nnz
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	predict_nnz_chroma              # -- Begin function predict_nnz_chroma
	.p2align	2
	.type	predict_nnz_chroma,@function
predict_nnz_chroma:                     # @predict_nnz_chroma
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a3, a2, a3
	lw	a3, 436(a3)
	lw	s0, 12(a2)
	li	a2, 3
	mv	s2, a0
	bne	a3, a2, .LBB40_7
# %bb.1:
	slli	a0, a1, 2
	lui	a2, %hi(predict_nnz_chroma.j_off_tab)
	addi	a2, a2, %lo(predict_nnz_chroma.j_off_tab)
	add	a0, a2, a0
	lw	s4, 0(a0)
	subw	s3, a1, s4
	li	a3, -1
	mv	a5, sp
	mv	a0, s0
	mv	a1, s2
	mv	a2, s3
	li	a4, 0
	call	getChroma4x4Neighbour
	lw	a0, 0(sp)
	li	s5, 1
	beqz	a0, .LBB40_13
# %bb.2:
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 224(a1)
	beqz	a1, .LBB40_6
# %bb.3:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB40_6
# %bb.4:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	ld	a2, -1208(a2)
	lw	a2, 4(a2)
	bnez	a2, .LBB40_6
# %bb.5:
	lui	a2, 22
	addiw	a2, a2, -920
	add	a1, a1, a2
	lw	a2, 4(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	and	a0, a1, a0
	sw	a0, 0(sp)
	beqz	a0, .LBB40_13
.LBB40_6:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 4(sp)
	ld	a0, 128(a0)
	slli	a1, a1, 3
	lw	a2, 8(sp)
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 3
	lw	a1, 12(sp)
	add	a0, a0, a2
	ld	a0, 0(a0)
	addw	a1, a1, s4
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	s1, 0(a0)
	li	s5, 2
	j	.LBB40_14
.LBB40_7:
	andi	s3, s2, 1
	addiw	s4, a1, -4
	li	a3, -1
	mv	a5, sp
	mv	a0, s0
	mv	a1, s3
	mv	a2, s4
	li	a4, 0
	call	getChroma4x4Neighbour
	lw	a0, 0(sp)
	li	s5, 1
	andi	s2, s2, -2
	beqz	a0, .LBB40_20
# %bb.8:
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 224(a1)
	beqz	a1, .LBB40_12
# %bb.9:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB40_12
# %bb.10:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	ld	a2, -1208(a2)
	lw	a2, 4(a2)
	bnez	a2, .LBB40_12
# %bb.11:
	lui	a2, 22
	addiw	a2, a2, -920
	add	a1, a1, a2
	lw	a2, 4(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	and	a0, a1, a0
	sw	a0, 0(sp)
	beqz	a0, .LBB40_20
.LBB40_12:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 4(sp)
	ld	a0, 128(a0)
	slli	a1, a1, 3
	lw	a2, 8(sp)
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, a2, s2
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 12(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	s1, 16(a0)
	li	s5, 2
	j	.LBB40_21
.LBB40_13:
	li	s1, 0
.LBB40_14:
	li	a4, -1
	mv	a5, sp
	mv	a0, s0
	mv	a1, s2
	mv	a2, s3
	li	a3, 0
	call	getChroma4x4Neighbour
	lw	a0, 0(sp)
	beqz	a0, .LBB40_28
# %bb.15:
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 224(a1)
	beqz	a1, .LBB40_19
# %bb.16:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB40_19
# %bb.17:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	ld	a2, -1208(a2)
	lw	a2, 4(a2)
	bnez	a2, .LBB40_19
# %bb.18:
	lui	a2, 22
	addiw	a2, a2, -920
	add	a1, a1, a2
	lw	a2, 4(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	and	a0, a1, a0
	sw	a0, 0(sp)
	beqz	a0, .LBB40_28
.LBB40_19:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 4(sp)
	ld	a0, 128(a0)
	slli	a1, a1, 3
	lw	a2, 8(sp)
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 3
	lw	a1, 12(sp)
	add	a0, a0, a2
	ld	a0, 0(a0)
	addw	a1, a1, s4
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	li	a1, 2
	addw	s1, a0, s1
	beq	s5, a1, .LBB40_27
	j	.LBB40_28
.LBB40_20:
	li	s1, 0
.LBB40_21:
	li	a4, -1
	mv	a5, sp
	mv	a0, s0
	mv	a1, s3
	mv	a2, s4
	li	a3, 0
	call	getChroma4x4Neighbour
	lw	a0, 0(sp)
	beqz	a0, .LBB40_28
# %bb.22:
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 224(a1)
	beqz	a1, .LBB40_26
# %bb.23:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB40_26
# %bb.24:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	ld	a2, -1208(a2)
	lw	a2, 4(a2)
	bnez	a2, .LBB40_26
# %bb.25:
	lui	a2, 22
	addiw	a2, a2, -920
	add	a1, a1, a2
	lw	a2, 4(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	and	a0, a1, a0
	sw	a0, 0(sp)
	beqz	a0, .LBB40_28
.LBB40_26:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 4(sp)
	ld	a0, 128(a0)
	slli	a1, a1, 3
	lw	a2, 8(sp)
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, a2, s2
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 12(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	addi	a0, a0, 16
	lw	a0, 0(a0)
	li	a1, 2
	addw	s1, a0, s1
	bne	s5, a1, .LBB40_28
.LBB40_27:
	addi	s1, s1, 1
	srliw	a0, s1, 31
	add	a0, s1, a0
	sraiw	s1, a0, 1
.LBB40_28:
	mv	a0, s1
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end40:
	.size	predict_nnz_chroma, .Lfunc_end40-predict_nnz_chroma
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	find_sad_16x16                  # -- Begin function find_sad_16x16
	.p2align	2
	.type	find_sad_16x16,@function
find_sad_16x16:                         # @find_sad_16x16
# %bb.0:
	addi	sp, sp, -1616
	sd	ra, 1608(sp)                    # 8-byte Folded Spill
	sd	s0, 1600(sp)                    # 8-byte Folded Spill
	sd	s1, 1592(sp)                    # 8-byte Folded Spill
	sd	s2, 1584(sp)                    # 8-byte Folded Spill
	sd	s3, 1576(sp)                    # 8-byte Folded Spill
	sd	s4, 1568(sp)                    # 8-byte Folded Spill
	sd	s5, 1560(sp)                    # 8-byte Folded Spill
	sd	s6, 1552(sp)                    # 8-byte Folded Spill
	sd	s7, 1544(sp)                    # 8-byte Folded Spill
	sd	s8, 1536(sp)                    # 8-byte Folded Spill
	sd	s9, 1528(sp)                    # 8-byte Folded Spill
	sd	s10, 1520(sp)                   # 8-byte Folded Spill
	sd	s11, 1512(sp)                   # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lw	s1, 12(a1)
	li	s2, -1
	addi	s3, sp, 56
	li	s4, 16
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	li	a1, -1
	li	a3, 1
	mv	a0, s1
	mv	a2, s2
	mv	a4, s3
	call	getNeighbour
	addiw	s2, s2, 1
	addi	s3, s3, 24
	bne	s2, s4, .LBB41_1
# %bb.2:
	li	a2, -1
	li	a3, 1
	addi	a4, sp, 464
	mv	a0, s1
	li	a1, 0
	call	getNeighbour
	lui	a0, %hi(input)
	ld	a3, %lo(input)(a0)
	lw	a1, 220(a3)
	lw	t3, 464(sp)
	beqz	a1, .LBB41_11
# %bb.3:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	beqz	t3, .LBB41_5
# %bb.4:
	lui	a0, 22
	add	a0, a2, a0
	lw	a1, 468(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	t3, 0(a0)
.LBB41_5:
	lui	a1, 22
	addiw	a1, a1, -920
	add	a2, a2, a1
	addi	a4, sp, 84
	li	a1, 1
	addi	a5, sp, 468
	j	.LBB41_7
.LBB41_6:                               #   in Loop: Header=BB41_7 Depth=1
	addi	a4, a4, 24
	and	a1, a6, a1
	beq	a4, a5, .LBB41_9
.LBB41_7:                               # =>This Inner Loop Header: Depth=1
	lw	a6, -4(a4)
	beqz	a6, .LBB41_6
# %bb.8:                                #   in Loop: Header=BB41_7 Depth=1
	lw	a6, 0(a4)
	ld	a7, 0(a2)
	slli	a6, a6, 2
	add	a6, a7, a6
	lw	a6, 0(a6)
	j	.LBB41_6
.LBB41_9:
	lw	a4, 56(sp)
	beqz	a4, .LBB41_12
# %bb.10:
	lw	a4, 60(sp)
	ld	a2, 0(a2)
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a7, 0(a2)
	j	.LBB41_13
.LBB41_11:
	lw	a1, 80(sp)
	lw	a7, 56(sp)
	j	.LBB41_13
.LBB41_12:
	li	a7, 0
.LBB41_13:
	li	a2, 0
	addi	a3, a3, 2047
	lui	a4, 262144
	addiw	a4, a4, -1
	li	a5, 2
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	sw	a5, 0(a0)
	lui	a6, %hi(img)
	ld	a6, %lo(img)(a6)
	snez	t0, t3
	snez	t1, a1
	snez	a7, a7
	and	a7, t0, a7
	and	a0, t1, a7
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lui	t0, %hi(imgY_org)
	ld	a0, %lo(imgY_org)(t0)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	t1, 1
	addiw	t2, t1, 696
	add	t2, a6, t2
	lui	t1, 244
	addiw	a0, t1, 575
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	li	a7, 1
	li	t5, 4
	addi	t6, sp, 488
	li	s1, 16
	sd	t3, 32(sp)                      # 8-byte Folded Spill
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	j	.LBB41_15
.LBB41_14:                              #   in Loop: Header=BB41_15 Depth=1
	addi	a2, a2, 1
	addi	t2, t2, 512
	beq	a2, t5, .LBB41_36
.LBB41_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_27 Depth 2
                                        #       Child Loop BB41_28 Depth 3
                                        #     Child Loop BB41_31 Depth 2
                                        #       Child Loop BB41_32 Depth 3
	lw	s2, 977(a3)
	beqz	s2, .LBB41_19
# %bb.16:                               #   in Loop: Header=BB41_15 Depth=1
	lw	s2, 24(a6)
	bne	s2, a5, .LBB41_19
# %bb.17:                               #   in Loop: Header=BB41_15 Depth=1
	bnez	a2, .LBB41_23
# %bb.18:                               #   in Loop: Header=BB41_15 Depth=1
	beqz	t3, .LBB41_14
	j	.LBB41_23
.LBB41_19:                              #   in Loop: Header=BB41_15 Depth=1
	bltu	a7, a2, .LBB41_21
# %bb.20:                               #   in Loop: Header=BB41_15 Depth=1
	lw	s2, 993(a3)
	bnez	s2, .LBB41_14
.LBB41_21:                              #   in Loop: Header=BB41_15 Depth=1
	lw	s2, 997(a3)
	snez	s2, s2
	addi	s3, a2, -3
	seqz	s3, s3
	and	s2, s3, s2
	bnez	s2, .LBB41_14
# %bb.22:                               #   in Loop: Header=BB41_15 Depth=1
	or	s2, a2, t3
	snez	s2, s2
	beqz	s2, .LBB41_14
.LBB41_23:                              #   in Loop: Header=BB41_15 Depth=1
	bne	a2, a7, .LBB41_25
# %bb.24:                               #   in Loop: Header=BB41_15 Depth=1
	beqz	a1, .LBB41_14
.LBB41_25:                              #   in Loop: Header=BB41_15 Depth=1
	addi	s2, a2, -3
	snez	s2, s2
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	or	s2, s2, a0
	beqz	s2, .LBB41_36
# %bb.26:                               #   in Loop: Header=BB41_15 Depth=1
	lw	s3, 172(a6)
	lw	s4, 168(a6)
	li	s2, 0
	slli	s3, s3, 3
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s3, a0, s3
	slli	s4, s4, 1
	mv	s5, t2
.LBB41_27:                              #   Parent Loop BB41_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB41_28 Depth 3
	li	s6, 0
	slli	s7, s2, 3
	add	s7, s3, s7
	ld	s7, 0(s7)
	andi	s8, s2, 3
	srli	s9, s2, 2
	and	s9, s9, a4
	add	s7, s7, s4
	slli	s8, s8, 4
	slli	s9, s9, 2
	mv	s10, s5
.LBB41_28:                              #   Parent Loop BB41_15 Depth=1
                                        #     Parent Loop BB41_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	s11, 0(s7)
	lhu	ra, 0(s10)
	subw	s11, s11, ra
	andi	ra, s6, 3
	srli	t3, s6, 2
	and	t3, t3, a4
	slli	ra, ra, 8
	add	ra, t6, ra
	slli	t3, t3, 6
	add	t3, ra, t3
	add	ra, s8, s9
	add	t3, t3, ra
	sw	s11, 0(t3)
	addi	s6, s6, 1
	addi	s10, s10, 2
	addi	s7, s7, 2
	bne	s6, s1, .LBB41_28
# %bb.29:                               #   in Loop: Header=BB41_27 Depth=2
	addi	s2, s2, 1
	addi	s5, s5, 32
	bne	s2, s1, .LBB41_27
# %bb.30:                               # %.preheader
                                        #   in Loop: Header=BB41_15 Depth=1
	li	s3, 0
	li	s2, 0
	addi	s4, sp, 1000
.LBB41_31:                              #   Parent Loop BB41_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB41_32 Depth 3
	slli	a0, s3, 2
	add	a0, a0, t6
	addi	s5, a0, 768
	mv	s6, s4
.LBB41_32:                              #   Parent Loop BB41_15 Depth=1
                                        #     Parent Loop BB41_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, -512(s6)
	lw	a5, 256(s6)
	lw	a6, -256(s6)
	lw	a7, 0(s6)
	add	t0, a5, a0
	add	t1, a7, a6
	subw	a6, a6, a7
	subw	a0, a0, a5
	add	s8, t1, t0
	subw	a5, t0, t1
	sw	a5, 0(s6)
	add	a5, a6, a0
	sw	a5, -256(s6)
	lw	a5, -496(s6)
	lw	a7, 272(s6)
	lw	t0, -240(s6)
	lw	t1, 16(s6)
	subw	a0, a0, a6
	sw	a0, 256(s6)
	add	a0, a7, a5
	add	a6, t1, t0
	subw	t0, t0, t1
	subw	a5, a5, a7
	add	a7, a6, a0
	subw	a0, a0, a6
	sw	a0, 16(s6)
	add	a0, t0, a5
	sw	a0, -240(s6)
	lw	a0, -480(s6)
	lw	a6, 288(s6)
	lw	t1, -224(s6)
	lw	t3, 32(s6)
	subw	a5, a5, t0
	sw	a5, 272(s6)
	add	a5, a6, a0
	add	t0, t3, t1
	subw	t1, t1, t3
	subw	a0, a0, a6
	add	a6, t0, a5
	subw	a5, a5, t0
	sw	a5, 32(s6)
	add	a5, t1, a0
	sw	a5, -224(s6)
	lw	t0, -464(s6)
	lw	t3, 304(s6)
	lw	t4, -208(s6)
	lw	s0, 48(s6)
	subw	a0, a0, t1
	sw	a0, 288(s6)
	add	a0, t3, t0
	add	t1, s0, t4
	subw	t4, t4, s0
	subw	t0, t0, t3
	add	t3, t1, a0
	sub	s7, a0, t1
	sw	s7, 48(s6)
	add	a0, t4, t0
	sw	a0, -208(s6)
	subw	t0, t0, t4
	sw	t0, 304(s6)
	add	t0, t3, s8
	add	t1, a6, a7
	sub	a6, a7, a6
	sub	a7, s8, t3
	add	t3, t1, t0
	sw	t3, -512(s6)
	sub	t0, t0, t1
	sw	t0, -480(s6)
	add	t1, a6, a7
	sw	t1, -496(s6)
	sub	a6, a7, a6
	sw	a6, -464(s6)
	sraiw	a7, a6, 31
	xor	a6, a6, a7
	subw	a6, a6, a7
	sraiw	a7, t0, 31
	xor	t0, t0, a7
	subw	a7, t0, a7
	sraiw	t0, t1, 31
	xor	t1, t1, t0
	subw	t0, t0, s2
	subw	t0, t1, t0
	lw	t1, -256(s6)
	lw	t3, -240(s6)
	add	a7, a7, t0
	add	a6, a6, a7
	add	a7, a0, t1
	add	t0, a5, t3
	sub	t3, t3, a5
	sub	a0, t1, a0
	add	a5, t0, a7
	sw	a5, -256(s6)
	sub	a7, a7, t0
	sw	a7, -224(s6)
	add	t0, t3, a0
	sw	t0, -240(s6)
	sub	a0, a0, t3
	sw	a0, -208(s6)
	sraiw	t1, a5, 31
	xor	a5, a5, t1
	subw	a5, a5, t1
	add	a5, a5, a6
	sraiw	a6, t0, 31
	xor	t0, t0, a6
	subw	a6, t0, a6
	add	a5, a6, a5
	sraiw	a6, a7, 31
	xor	a7, a7, a6
	subw	a6, a7, a6
	add	a5, a6, a5
	sraiw	a6, a0, 31
	xor	a0, a0, a6
	lw	a7, 0(s6)
	lw	t0, 16(s6)
	lw	t1, 32(s6)
	subw	a0, a0, a6
	add	a0, a0, a5
	add	a5, s7, a7
	add	a6, t1, t0
	sub	t0, t0, t1
	sub	a7, a7, s7
	add	t1, a6, a5
	sw	t1, 0(s6)
	sub	a5, a5, a6
	sw	a5, 32(s6)
	add	a6, t0, a7
	sw	a6, 16(s6)
	sub	a7, a7, t0
	sw	a7, 48(s6)
	sraiw	t0, t1, 31
	xor	t1, t1, t0
	subw	t0, t1, t0
	add	a0, t0, a0
	sraiw	t0, a6, 31
	xor	a6, a6, t0
	subw	a6, a6, t0
	add	a0, a6, a0
	sraiw	a6, a5, 31
	xor	a5, a5, a6
	subw	a5, a5, a6
	add	a0, a5, a0
	sraiw	a5, a7, 31
	xor	a6, a7, a5
	lw	a7, 256(s6)
	lw	t0, 304(s6)
	lw	t1, 272(s6)
	lw	t3, 288(s6)
	subw	a5, a6, a5
	add	a0, a5, a0
	add	a5, t0, a7
	add	a6, t3, t1
	sub	t1, t1, t3
	sub	a7, a7, t0
	add	t0, a6, a5
	sw	t0, 256(s6)
	sub	a5, a5, a6
	sw	a5, 288(s6)
	add	a6, t1, a7
	sw	a6, 272(s6)
	sub	a7, a7, t1
	sw	a7, 304(s6)
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	subw	t0, t0, t1
	add	a0, t0, a0
	sraiw	t0, a6, 31
	xor	a6, a6, t0
	subw	a6, a6, t0
	add	a0, a6, a0
	sraiw	a6, a5, 31
	xor	a5, a5, a6
	subw	a5, a5, a6
	add	a0, a5, a0
	sraiw	a5, a7, 31
	xor	a6, a7, a5
	subw	s2, a6, a5
	addi	s6, s6, 64
	add	s2, s2, a0
	bne	s6, s5, .LBB41_32
# %bb.33:                               #   in Loop: Header=BB41_31 Depth=2
	addi	s3, s3, 1
	addi	s4, s4, 4
	bne	s3, t5, .LBB41_31
# %bb.34:                               #   in Loop: Header=BB41_15 Depth=1
	lw	t3, 488(sp)
	slli	s3, t3, 1
	lw	s4, 552(sp)
	srli	s3, s3, 62
	add	t3, t3, s3
	sraiw	s3, t3, 2
	slli	t3, s4, 1
	lw	s5, 616(sp)
	srli	t3, t3, 62
	add	t3, s4, t3
	sraiw	t4, t3, 2
	slli	t3, s5, 1
	lw	s6, 680(sp)
	srli	t3, t3, 62
	add	t3, s5, t3
	sraiw	s5, t3, 2
	slli	t3, s6, 1
	lw	s7, 492(sp)
	srli	t3, t3, 62
	add	t3, s6, t3
	sraiw	s6, t3, 2
	slli	t3, s7, 1
	lw	s8, 556(sp)
	srli	t3, t3, 62
	add	t3, s7, t3
	sraiw	s7, t3, 2
	slli	t3, s8, 1
	lw	s9, 620(sp)
	srli	t3, t3, 62
	add	t3, s8, t3
	sraiw	s8, t3, 2
	slli	t3, s9, 1
	lw	s10, 684(sp)
	srli	t3, t3, 62
	add	t3, s9, t3
	sraiw	s9, t3, 2
	slli	t3, s10, 1
	lw	s11, 496(sp)
	srli	t3, t3, 62
	add	t3, s10, t3
	sraiw	s10, t3, 2
	slli	t3, s11, 1
	lw	ra, 560(sp)
	srli	t3, t3, 62
	add	t3, s11, t3
	sraiw	s11, t3, 2
	slli	t3, ra, 1
	lw	s0, 624(sp)
	srli	t3, t3, 62
	add	t3, ra, t3
	sraiw	ra, t3, 2
	slli	t3, s0, 1
	lw	t0, 688(sp)
	srli	t3, t3, 62
	add	t3, s0, t3
	sraiw	t3, t3, 2
	slli	s0, t0, 1
	lw	a7, 500(sp)
	srli	s0, s0, 62
	add	t0, t0, s0
	sraiw	t0, t0, 2
	slli	s0, a7, 1
	lw	t1, 564(sp)
	srli	s0, s0, 62
	add	a7, a7, s0
	sraiw	a7, a7, 2
	slli	s0, t1, 1
	lw	a5, 628(sp)
	srli	s0, s0, 62
	add	t1, t1, s0
	sraiw	t1, t1, 2
	slli	s0, a5, 1
	lw	a0, 692(sp)
	srli	s0, s0, 62
	add	a5, a5, s0
	sraiw	a5, a5, 2
	slli	s0, a0, 1
	srli	s0, s0, 62
	add	a0, a0, s0
	sraiw	a0, a0, 2
	add	s0, s6, s3
	add	s4, s5, t4
	subw	t4, t4, s5
	subw	s3, s3, s6
	add	a6, s4, s0
	subw	s6, s0, s4
	add	s0, t4, s3
	subw	s3, s3, t4
	add	t4, s10, s7
	add	s4, s9, s8
	subw	s5, s8, s9
	subw	s7, s7, s10
	add	s10, s4, t4
	subw	s8, t4, s4
	add	t4, s5, s7
	subw	s4, s7, s5
	add	s5, t0, s11
	add	s7, t3, ra
	subw	t3, ra, t3
	subw	t0, s11, t0
	add	s11, s7, s5
	subw	s9, s5, s7
	add	ra, t3, t0
	subw	s5, t0, t3
	add	t0, a0, a7
	add	t3, a5, t1
	subw	a5, t1, a5
	subw	a0, a7, a0
	add	a7, t3, t0
	subw	t0, t0, t3
	add	t1, a5, a0
	subw	s7, a0, a5
	add	a0, a7, a6
	add	a5, s11, s10
	subw	t3, s10, s11
	subw	a6, a6, a7
	add	a7, a5, a0
	sub	a0, a0, a5
	add	a5, t3, a6
	sub	a6, a6, t3
	sraiw	t3, a7, 31
	xor	a7, a7, t3
	subw	a7, a7, t3
	add	a7, a7, s2
	sraiw	t3, a5, 31
	xor	a5, a5, t3
	subw	a5, a5, t3
	add	a5, a5, a7
	sraiw	a7, a0, 31
	xor	a0, a0, a7
	subw	a0, a0, a7
	add	a0, a0, a5
	sraiw	a5, a6, 31
	xor	a6, a6, a5
	subw	a5, a6, a5
	add	a0, a5, a0
	add	a5, t1, s0
	add	a6, ra, t4
	subw	a7, t4, ra
	subw	t1, s0, t1
	add	t3, a6, a5
	sub	a5, a5, a6
	add	a6, a7, t1
	sub	a7, t1, a7
	sraiw	t1, t3, 31
	xor	t3, t3, t1
	subw	t1, t3, t1
	add	a0, t1, a0
	sraiw	t1, a6, 31
	xor	a6, a6, t1
	subw	a6, a6, t1
	add	a0, a6, a0
	sraiw	a6, a5, 31
	xor	a5, a5, a6
	subw	a5, a5, a6
	add	a0, a5, a0
	sraiw	a5, a7, 31
	xor	a6, a7, a5
	subw	a5, a6, a5
	add	a0, a5, a0
	add	a5, t0, s6
	add	a6, s9, s8
	subw	a7, s8, s9
	subw	t0, s6, t0
	add	t1, a6, a5
	sub	a5, a5, a6
	add	a6, a7, t0
	sub	a7, t0, a7
	sraiw	t0, t1, 31
	xor	t1, t1, t0
	subw	t0, t1, t0
	add	a0, t0, a0
	sraiw	t0, a6, 31
	xor	a6, a6, t0
	subw	a6, a6, t0
	add	a0, a6, a0
	sraiw	a6, a5, 31
	xor	a5, a5, a6
	subw	a5, a5, a6
	add	a0, a5, a0
	sraiw	a5, a7, 31
	xor	a6, a7, a5
	subw	a5, a6, a5
	add	a0, a5, a0
	add	a5, s7, s3
	add	a6, s5, s4
	subw	a7, s4, s5
	subw	t0, s3, s7
	add	t1, a6, a5
	sub	a5, a5, a6
	add	a6, a7, t0
	sub	a7, t0, a7
	sraiw	t0, t1, 31
	xor	t1, t1, t0
	subw	t0, t1, t0
	add	a0, t0, a0
	sraiw	t0, a6, 31
	xor	a6, a6, t0
	subw	a6, a6, t0
	add	a0, a6, a0
	sraiw	a6, a5, 31
	xor	a5, a5, a6
	subw	a5, a5, a6
	add	a0, a5, a0
	sraiw	a5, a7, 31
	xor	a6, a7, a5
	subw	a5, a6, a5
	addw	s2, a5, a0
	ld	t3, 32(sp)                      # 8-byte Folded Reload
	li	a5, 2
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	li	a7, 1
	bge	s2, a0, .LBB41_14
# %bb.35:                               #   in Loop: Header=BB41_15 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	sw	a2, 0(a0)
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	j	.LBB41_14
.LBB41_36:
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	srliw	a0, a0, 1
	ld	ra, 1608(sp)                    # 8-byte Folded Reload
	ld	s0, 1600(sp)                    # 8-byte Folded Reload
	ld	s1, 1592(sp)                    # 8-byte Folded Reload
	ld	s2, 1584(sp)                    # 8-byte Folded Reload
	ld	s3, 1576(sp)                    # 8-byte Folded Reload
	ld	s4, 1568(sp)                    # 8-byte Folded Reload
	ld	s5, 1560(sp)                    # 8-byte Folded Reload
	ld	s6, 1552(sp)                    # 8-byte Folded Reload
	ld	s7, 1544(sp)                    # 8-byte Folded Reload
	ld	s8, 1536(sp)                    # 8-byte Folded Reload
	ld	s9, 1528(sp)                    # 8-byte Folded Reload
	ld	s10, 1520(sp)                   # 8-byte Folded Reload
	ld	s11, 1512(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1616
	ret
.Lfunc_end41:
	.size	find_sad_16x16, .Lfunc_end41-find_sad_16x16
                                        # -- End function
	.option	pop
	.type	MODTAB,@object                  # @MODTAB
	.section	.rodata,"a",@progbits
	.globl	MODTAB
	.p2align	2, 0x0
MODTAB:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	16                              # 0x10
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	20                              # 0x14
	.size	MODTAB, 24

	.type	NCBP,@object                    # @NCBP
	.globl	NCBP
NCBP:
	.asciz	"\001"
	.ascii	"\n\001"
	.ascii	"\013\002"
	.ascii	"\006\005"
	.ascii	"\f\003"
	.ascii	"\007\006"
	.zero	2,14
	.ascii	"\002\n"
	.ascii	"\r\004"
	.zero	2,15
	.ascii	"\b\007"
	.ascii	"\003\013"
	.ascii	"\t\b"
	.ascii	"\004\f"
	.ascii	"\005\r"
	.ascii	"\000\t"
	.zero	64
	.asciz	"\003"
	.ascii	"\035\002"
	.ascii	"\036\003"
	.ascii	"\021\007"
	.ascii	"\037\004"
	.ascii	"\022\b"
	.ascii	"%\021"
	.ascii	"\b\r"
	.ascii	" \005"
	.ascii	"&\022"
	.ascii	"\023\t"
	.ascii	"\t\016"
	.ascii	"\024\n"
	.ascii	"\n\017"
	.ascii	"\013\020"
	.ascii	"\002\013"
	.ascii	"\020\001"
	.ascii	"! "
	.ascii	"\"!"
	.ascii	"\025$"
	.ascii	"#\""
	.ascii	"\026%"
	.ascii	"',"
	.ascii	"\004("
	.ascii	"$#"
	.ascii	"(-"
	.ascii	"\027&"
	.ascii	"\005)"
	.ascii	"\030'"
	.ascii	"\006*"
	.ascii	"\007+"
	.ascii	"\001\023"
	.ascii	")\006"
	.ascii	"*\030"
	.ascii	"+\031"
	.ascii	"\031\024"
	.ascii	",\032"
	.ascii	"\032\025"
	.zero	2,46
	.ascii	"\f\034"
	.ascii	"-\033"
	.zero	2,47
	.ascii	"\033\026"
	.ascii	"\r\035"
	.ascii	"\034\027"
	.ascii	"\016\036"
	.ascii	"\017\037"
	.ascii	"\000\f"
	.size	NCBP, 192

	.type	subblk_offset_x,@object         # @subblk_offset_x
	.globl	subblk_offset_x
subblk_offset_x:
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	subblk_offset_x, 96

	.type	subblk_offset_y,@object         # @subblk_offset_y
	.globl	subblk_offset_y
subblk_offset_y:
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	subblk_offset_y, 96

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Warning!!! Number of bits (%d) of macroblock_layer() data seems to exceed defined limit.\n"
	.size	.L.str, 90

	.type	dq,@object                      # @dq
	.section	.sbss,"aw",@nobits
	.globl	dq
	.p2align	2, 0x0
dq:
	.word	0                               # 0x0
	.size	dq, 4

	.type	predict_error,@object           # @predict_error
	.globl	predict_error
	.p2align	2, 0x0
predict_error:
	.word	0                               # 0x0
	.size	predict_error, 4

	.type	terminate_macroblock.skip,@object # @terminate_macroblock.skip
	.p2align	2, 0x0
terminate_macroblock.skip:
	.byte	0                               # 0x0
	.size	terminate_macroblock.skip, 1

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Slice Mode %d not supported"
	.size	.L.str.1, 28

	.type	get_line,@object                # @get_line
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
get_line:
	.quad	0
	.size	get_line, 8

	.type	LumaPrediction4x4.fw_pred,@object # @LumaPrediction4x4.fw_pred
	.local	LumaPrediction4x4.fw_pred
	.comm	LumaPrediction4x4.fw_pred,64,4
	.type	LumaPrediction4x4.bw_pred,@object # @LumaPrediction4x4.bw_pred
	.local	LumaPrediction4x4.bw_pred
	.comm	LumaPrediction4x4.bw_pred,64,4
	.type	LumaPrediction4x4Bi.fw_pred,@object # @LumaPrediction4x4Bi.fw_pred
	.local	LumaPrediction4x4Bi.fw_pred
	.comm	LumaPrediction4x4Bi.fw_pred,64,4
	.type	LumaPrediction4x4Bi.bw_pred,@object # @LumaPrediction4x4Bi.bw_pred
	.local	LumaPrediction4x4Bi.bw_pred
	.comm	LumaPrediction4x4Bi.bw_pred,64,4
	.type	ChromaPrediction4x4.fw_pred,@object # @ChromaPrediction4x4.fw_pred
	.local	ChromaPrediction4x4.fw_pred
	.comm	ChromaPrediction4x4.fw_pred,64,4
	.type	ChromaPrediction4x4.bw_pred,@object # @ChromaPrediction4x4.bw_pred
	.local	ChromaPrediction4x4.bw_pred
	.comm	ChromaPrediction4x4.bw_pred,64,4
	.type	.L__const.ChromaResidualCoding.block8x8_idx,@object # @__const.ChromaResidualCoding.block8x8_idx
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.ChromaResidualCoding.block8x8_idx:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.zero	16
	.zero	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	.L__const.ChromaResidualCoding.block8x8_idx, 192

	.type	IntraChromaPrediction.block_pos,@object # @IntraChromaPrediction.block_pos
	.p2align	2, 0x0
IntraChromaPrediction.block_pos:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.zero	16
	.zero	16
	.zero	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.zero	16
	.zero	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	IntraChromaPrediction.block_pos, 192

	.type	MBType2Value.dir1offset,@object # @MBType2Value.dir1offset
	.p2align	2, 0x0
MBType2Value.dir1offset:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	MBType2Value.dir1offset, 12

	.type	MBType2Value.dir2offset,@object # @MBType2Value.dir2offset
	.p2align	2, 0x0
MBType2Value.dir2offset:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	2                               # 0x2
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	16                              # 0x10
	.size	MBType2Value.dir2offset, 36

	.type	B8Mode2Value.b8start,@object    # @B8Mode2Value.b8start
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
B8Mode2Value.b8start:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	10                              # 0xa
	.size	B8Mode2Value.b8start, 32

	.type	B8Mode2Value.b8inc,@object      # @B8Mode2Value.b8inc
	.p2align	2, 0x0
B8Mode2Value.b8inc:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	B8Mode2Value.b8inc, 32

	.type	.L__const.writeChromaCoeff.chroma_dc_context,@object # @__const.writeChromaCoeff.chroma_dc_context
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.writeChromaCoeff.chroma_dc_context:
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.size	.L__const.writeChromaCoeff.chroma_dc_context, 12

	.type	writeChromaCoeff.chroma_ac_param,@object # @writeChromaCoeff.chroma_ac_param
writeChromaCoeff.chroma_ac_param:
	.ascii	"\004\024\005\025"
	.ascii	"$4%5"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\004\024\005\025"
	.ascii	"\006\026\007\027"
	.ascii	"$4%5"
	.ascii	"&6'7"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\004\024\005\025"
	.ascii	"$4%5"
	.ascii	"\006\026\007\027"
	.ascii	"&6'7"
	.ascii	"\b\030\t\031"
	.ascii	"(8)9"
	.ascii	"\n\032\013\033"
	.ascii	"*:+;"
	.size	writeChromaCoeff.chroma_ac_param, 96

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"transform_size_flag == 1"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"src/macroblock.c"
	.size	.L.str.3, 17

	.type	.L__PRETTY_FUNCTION__.writeLumaCoeff8x8,@object # @__PRETTY_FUNCTION__.writeLumaCoeff8x8
.L__PRETTY_FUNCTION__.writeLumaCoeff8x8:
	.asciz	"int writeLumaCoeff8x8(int, int, int)"
	.size	.L__PRETTY_FUNCTION__.writeLumaCoeff8x8, 37

	.type	predict_nnz_chroma.j_off_tab,@object # @predict_nnz_chroma.j_off_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
predict_nnz_chroma.j_off_tab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	predict_nnz_chroma.j_off_tab, 48

	.type	writeCoeff4x4_CAVLC.incVlc,@object # @writeCoeff4x4_CAVLC.incVlc
	.p2align	2, 0x0
writeCoeff4x4_CAVLC.incVlc:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	48                              # 0x30
	.word	32768                           # 0x8000
	.size	writeCoeff4x4_CAVLC.incVlc, 28

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"writeCoeff4x4_CAVLC: Invalid block type"
	.size	.L.str.10, 40

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"ERROR: level > 1"
	.size	.Lstr, 17

	.type	.Lswitch.table.writeCBPandLumaCoeff,@object # @switch.table.writeCBPandLumaCoeff
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.writeCBPandLumaCoeff:
	.word	17                              # 0x11
	.word	17                              # 0x11
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	17                              # 0x11
	.size	.Lswitch.table.writeCBPandLumaCoeff, 20

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
