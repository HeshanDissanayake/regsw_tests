	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getvlc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_macroblock_type             # -- Begin function Get_macroblock_type
	.p2align	2
	.type	Get_macroblock_type,@function
Get_macroblock_type:                    # @Get_macroblock_type
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	lw	a1, 1101(a0)
	li	a2, 3
	bne	a1, a2, .LBB0_6
# %bb.1:
	li	a0, 3
	call	Show_Bits
	beqz	a0, .LBB0_43
# %bb.2:
	slli	a0, a0, 1
	lui	a1, %hi(SNRMBtab)
	addi	a1, a1, %lo(SNRMBtab)
.LBB0_3:
	add	s0, a1, a0
.LBB0_4:
	lbu	a0, 1(s0)
	call	Flush_Buffer
	lbu	a0, 0(s0)
.LBB0_5:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_6:
	lui	a1, %hi(picture_coding_type)
	lw	a1, %lo(picture_coding_type)(a1)
	li	a2, 2
	blt	a2, a1, .LBB0_13
# %bb.7:
	li	a2, 1
	beq	a1, a2, .LBB0_20
# %bb.8:
	li	a2, 2
	bne	a1, a2, .LBB0_19
# %bb.9:
	lw	a0, 1113(a0)
	beqz	a0, .LBB0_26
# %bb.10:
	li	a0, 7
	call	Show_Bits
	li	a1, 1
	bge	a1, a0, .LBB0_43
# %bb.11:
	li	a1, 16
	bltu	a0, a1, .LBB0_40
# %bb.12:
	srliw	a0, a0, 3
	slli	a0, a0, 1
	lui	a1, %hi(spPMBtab0)
	addi	a1, a1, %lo(spPMBtab0)
	j	.LBB0_3
.LBB0_13:
	li	a2, 3
	beq	a1, a2, .LBB0_23
# %bb.14:
	li	a0, 4
	bne	a1, a0, .LBB0_19
# %bb.15:
	call	Get_Bits1
	mv	a1, a0
	li	a0, 1
	bnez	a1, .LBB0_5
# %bb.16:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB0_18
# %bb.17:
	lui	a0, %hi(.Lstr.12)
	addi	a0, a0, %lo(.Lstr.12)
	call	puts
.LBB0_18:
	lui	a1, %hi(Fault_Flag)
	li	a0, 1
	sw	a0, %lo(Fault_Flag)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_19:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_20:
	lw	a0, 1113(a0)
	beqz	a0, .LBB0_28
# %bb.21:
	li	a0, 4
	call	Show_Bits
	beqz	a0, .LBB0_43
# %bb.22:
	slli	a0, a0, 1
	lui	a1, %hi(spIMBtab)
	addi	a1, a1, %lo(spIMBtab)
	j	.LBB0_3
.LBB0_23:
	lw	a0, 1113(a0)
	beqz	a0, .LBB0_32
# %bb.24:
	li	a0, 9
	call	Show_Bits
	li	a1, 64
	blt	a0, a1, .LBB0_34
# %bb.25:
	srliw	a0, a0, 5
	slli	a0, a0, 1
	lui	a1, %hi(spBMBtab0)
	addi	a1, a1, %lo(spBMBtab0)
	add	a0, a0, a1
	addi	s0, a0, -4
	j	.LBB0_4
.LBB0_26:
	li	a0, 6
	call	Show_Bits
	li	a1, 8
	blt	a0, a1, .LBB0_36
# %bb.27:
	srliw	a0, a0, 3
	slli	a0, a0, 1
	lui	a1, %hi(PMBtab0)
	addi	a1, a1, %lo(PMBtab0)
	j	.LBB0_3
.LBB0_28:
	call	Get_Bits1
	mv	a1, a0
	li	a0, 1
	bnez	a1, .LBB0_5
# %bb.29:
	call	Get_Bits1
	mv	a1, a0
	li	a0, 17
	bnez	a1, .LBB0_5
# %bb.30:
	lui	a1, %hi(Quiet_Flag)
	lw	a1, %lo(Quiet_Flag)(a1)
	bnez	a1, .LBB0_46
# %bb.31:
	lui	a0, %hi(.Lstr.12)
	addi	a0, a0, %lo(.Lstr.12)
	call	puts
	li	a0, 17
	j	.LBB0_46
.LBB0_32:
	li	a0, 6
	call	Show_Bits
	li	a1, 8
	blt	a0, a1, .LBB0_38
# %bb.33:
	srliw	a0, a0, 2
	slli	a0, a0, 1
	lui	a1, %hi(BMBtab0)
	addi	a1, a1, %lo(BMBtab0)
	j	.LBB0_3
.LBB0_34:
	li	a1, 16
	blt	a0, a1, .LBB0_41
# %bb.35:
	srliw	a0, a0, 2
	slli	a0, a0, 1
	lui	a1, %hi(spBMBtab1)
	addi	a1, a1, %lo(spBMBtab1)
	add	a0, a0, a1
	addi	s0, a0, -8
	j	.LBB0_4
.LBB0_36:
	beqz	a0, .LBB0_43
# %bb.37:
	slli	a0, a0, 1
	lui	a1, %hi(PMBtab1)
	addi	a1, a1, %lo(PMBtab1)
	j	.LBB0_3
.LBB0_38:
	beqz	a0, .LBB0_43
# %bb.39:
	slli	a0, a0, 1
	lui	a1, %hi(BMBtab1)
	addi	a1, a1, %lo(BMBtab1)
	j	.LBB0_3
.LBB0_40:
	slli	a0, a0, 1
	lui	a1, %hi(spPMBtab1)
	addi	a1, a1, %lo(spPMBtab1)
	j	.LBB0_3
.LBB0_41:
	li	a1, 8
	blt	a0, a1, .LBB0_43
# %bb.42:
	slli	a0, a0, 1
	lui	a1, %hi(spBMBtab2)
	addi	a1, a1, %lo(spBMBtab2)
	add	a0, a0, a1
	addi	s0, a0, -16
	j	.LBB0_4
.LBB0_43:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB0_45
# %bb.44:
	lui	a0, %hi(.Lstr.12)
	addi	a0, a0, %lo(.Lstr.12)
	call	puts
.LBB0_45:
	li	a0, 0
.LBB0_46:
	lui	a1, %hi(Fault_Flag)
	li	a2, 1
	sw	a2, %lo(Fault_Flag)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	Get_macroblock_type, .Lfunc_end0-Get_macroblock_type
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_motion_code                 # -- Begin function Get_motion_code
	.p2align	2
	.type	Get_motion_code,@function
Get_motion_code:                        # @Get_motion_code
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	call	Get_Bits1
	beqz	a0, .LBB1_2
# %bb.1:
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB1_2:
	li	a0, 9
	call	Show_Bits
	li	a1, 64
	blt	a0, a1, .LBB1_4
# %bb.3:
	srliw	a0, a0, 6
	slli	a0, a0, 1
	lui	a1, %hi(MVtab0)
	addi	a1, a1, %lo(MVtab0)
	j	.LBB1_6
.LBB1_4:
	li	a1, 24
	blt	a0, a1, .LBB1_8
# %bb.5:
	srliw	a0, a0, 3
	slli	a0, a0, 1
	lui	a1, %hi(MVtab1)
	addi	a1, a1, %lo(MVtab1)
.LBB1_6:
	add	s0, a1, a0
	lbu	a0, 1(s0)
	call	Flush_Buffer
	call	Get_Bits1
	lbu	a1, 0(s0)
	beqz	a0, .LBB1_13
.LBB1_7:
	neg	a0, a1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB1_8:
	li	a1, 11
	blt	a1, a0, .LBB1_12
# %bb.9:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB1_11
# %bb.10:
	lui	a0, %hi(global_MBA)
	lw	a1, %lo(global_MBA)(a0)
	lui	a0, %hi(global_pic)
	lw	a2, %lo(global_pic)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
.LBB1_11:
	li	a0, 0
	lui	a1, %hi(Fault_Flag)
	li	a2, 1
	sw	a2, %lo(Fault_Flag)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB1_12:
	slli	a0, a0, 1
	lui	a1, %hi(MVtab2)
	addi	a1, a1, %lo(MVtab2)
	add	s0, a0, a1
	lbu	a0, -23(s0)
	call	Flush_Buffer
	call	Get_Bits1
	lbu	a1, -24(s0)
	bnez	a0, .LBB1_7
.LBB1_13:
	mv	a0, a1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	Get_motion_code, .Lfunc_end1-Get_motion_code
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_dmvector                    # -- Begin function Get_dmvector
	.p2align	2
	.type	Get_dmvector,@function
Get_dmvector:                           # @Get_dmvector
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	li	a0, 1
	call	Get_Bits
	beqz	a0, .LBB2_2
# %bb.1:
	li	a0, 1
	call	Get_Bits
	seqz	a0, a0
	addi	a0, a0, -1
	ori	a0, a0, 1
.LBB2_2:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	Get_dmvector, .Lfunc_end2-Get_dmvector
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_coded_block_pattern         # -- Begin function Get_coded_block_pattern
	.p2align	2
	.type	Get_coded_block_pattern,@function
Get_coded_block_pattern:                # @Get_coded_block_pattern
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 9
	call	Show_Bits
	li	a1, 128
	blt	a0, a1, .LBB3_2
# %bb.1:
	srliw	a0, a0, 4
	slli	a0, a0, 1
	lui	a1, %hi(CBPtab0)
	addi	a1, a1, %lo(CBPtab0)
	j	.LBB3_6
.LBB3_2:
	li	a1, 8
	blt	a0, a1, .LBB3_4
# %bb.3:
	srliw	a0, a0, 1
	slli	a0, a0, 1
	lui	a1, %hi(CBPtab1)
	addi	a1, a1, %lo(CBPtab1)
	j	.LBB3_6
.LBB3_4:
	blez	a0, .LBB3_7
# %bb.5:
	slli	a0, a0, 1
	lui	a1, %hi(CBPtab2)
	addi	a1, a1, %lo(CBPtab2)
.LBB3_6:
	add	s0, a1, a0
	lbu	a0, 1(s0)
	call	Flush_Buffer
	lbu	a0, 0(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB3_7:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB3_9
# %bb.8:
	lui	a0, %hi(.Lstr.13)
	addi	a0, a0, %lo(.Lstr.13)
	call	puts
.LBB3_9:
	li	a0, 0
	lui	a1, %hi(Fault_Flag)
	li	a2, 1
	sw	a2, %lo(Fault_Flag)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	Get_coded_block_pattern, .Lfunc_end3-Get_coded_block_pattern
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_macroblock_address_increment # -- Begin function Get_macroblock_address_increment
	.p2align	2
	.type	Get_macroblock_address_increment,@function
Get_macroblock_address_increment:       # @Get_macroblock_address_increment
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	li	a0, 11
	call	Show_Bits
	li	s0, 0
	li	a1, 23
	blt	a1, a0, .LBB4_6
# %bb.1:                                # %.preheader
	li	s1, 15
	li	s2, 24
	li	s3, 8
	j	.LBB4_3
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	li	a0, 11
	call	Flush_Buffer
	li	a0, 11
	call	Show_Bits
	bge	a0, s2, .LBB4_6
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	beq	a0, s1, .LBB4_2
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	bne	a0, s3, .LBB4_12
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	addi	s0, s0, 33
	j	.LBB4_2
.LBB4_6:
	li	a1, 1024
	bltu	a0, a1, .LBB4_8
# %bb.7:
	li	a0, 1
	call	Flush_Buffer
	addiw	a0, s0, 1
	j	.LBB4_15
.LBB4_8:
	li	a1, 128
	bltu	a0, a1, .LBB4_10
# %bb.9:
	srliw	a0, a0, 6
	slli	a0, a0, 1
	lui	a1, %hi(MBAtab1)
	addi	a1, a1, %lo(MBAtab1)
	add	s1, a1, a0
	lbu	a0, 1(s1)
	call	Flush_Buffer
	lbu	a0, 0(s1)
	j	.LBB4_11
.LBB4_10:
	slli	a0, a0, 1
	lui	a1, %hi(MBAtab2)
	addi	a1, a1, %lo(MBAtab2)
	add	s1, a0, a1
	lbu	a0, -47(s1)
	call	Flush_Buffer
	lbu	a0, -48(s1)
.LBB4_11:
	addw	a0, s0, a0
	j	.LBB4_15
.LBB4_12:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB4_14
# %bb.13:
	lui	a0, %hi(.Lstr.14)
	addi	a0, a0, %lo(.Lstr.14)
	call	puts
.LBB4_14:
	lui	a1, %hi(Fault_Flag)
	li	a0, 1
	sw	a0, %lo(Fault_Flag)(a1)
.LBB4_15:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	Get_macroblock_address_increment, .Lfunc_end4-Get_macroblock_address_increment
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Luma_DC_dct_diff            # -- Begin function Get_Luma_DC_dct_diff
	.p2align	2
	.type	Get_Luma_DC_dct_diff,@function
Get_Luma_DC_dct_diff:                   # @Get_Luma_DC_dct_diff
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 5
	call	Show_Bits
	li	a1, 30
	blt	a1, a0, .LBB5_2
# %bb.1:
	slli	a0, a0, 1
	lui	a1, %hi(DClumtab0)
	addi	a1, a1, %lo(DClumtab0)
	j	.LBB5_3
.LBB5_2:
	li	a0, 9
	call	Show_Bits
	addiw	a0, a0, -496
	slli	a0, a0, 1
	lui	a1, %hi(DClumtab1)
	addi	a1, a1, %lo(DClumtab1)
.LBB5_3:
	add	a0, a1, a0
	lbu	s0, 0(a0)
	lbu	a0, 1(a0)
	call	Flush_Buffer
	beqz	s0, .LBB5_6
# %bb.4:
	mv	a0, s0
	call	Get_Bits
	addi	a1, s0, -1
	srlw	a1, a0, a1
	andi	a1, a1, 1
	beqz	a1, .LBB5_7
# %bb.5:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_6:
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_7:
	li	a1, -1
	sllw	a1, a1, s0
	add	a0, a1, a0
	addiw	a0, a0, 1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	Get_Luma_DC_dct_diff, .Lfunc_end5-Get_Luma_DC_dct_diff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Chroma_DC_dct_diff          # -- Begin function Get_Chroma_DC_dct_diff
	.p2align	2
	.type	Get_Chroma_DC_dct_diff,@function
Get_Chroma_DC_dct_diff:                 # @Get_Chroma_DC_dct_diff
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 5
	call	Show_Bits
	li	a1, 31
	bge	a0, a1, .LBB6_2
# %bb.1:
	lui	a1, %hi(DCchromtab0)
	addi	a1, a1, %lo(DCchromtab0)
	j	.LBB6_3
.LBB6_2:
	li	a0, 10
	call	Show_Bits
	addiw	a0, a0, -992
	lui	a1, %hi(DCchromtab1)
	addi	a1, a1, %lo(DCchromtab1)
.LBB6_3:
	slli	a0, a0, 1
	add	a0, a1, a0
	lbu	s0, 0(a0)
	lbu	a0, 1(a0)
	call	Flush_Buffer
	beqz	s0, .LBB6_6
# %bb.4:
	mv	a0, s0
	call	Get_Bits
	addi	a1, s0, -1
	srlw	a1, a0, a1
	andi	a1, a1, 1
	beqz	a1, .LBB6_7
# %bb.5:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB6_6:
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB6_7:
	li	a1, -1
	sllw	a1, a1, s0
	add	a0, a1, a0
	addiw	a0, a0, 1
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	Get_Chroma_DC_dct_diff, .Lfunc_end6-Get_Chroma_DC_dct_diff
                                        # -- End function
	.option	pop
	.type	DCTtabfirst,@object             # @DCTtabfirst
	.data
	.globl	DCTtabfirst
DCTtabfirst:
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.size	DCTtabfirst, 36

	.type	DCTtabnext,@object              # @DCTtabnext
	.globl	DCTtabnext
DCTtabnext:
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.size	DCTtabnext, 36

	.type	DCTtab0,@object                 # @DCTtab0
	.globl	DCTtab0
DCTtab0:
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.size	DCTtab0, 180

	.type	DCTtab0a,@object                # @DCTtab0a
	.globl	DCTtab0a
DCTtab0a:
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.size	DCTtab0a, 756

	.type	DCTtab1,@object                 # @DCTtab1
	.globl	DCTtab1
DCTtab1:
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.size	DCTtab1, 24

	.type	DCTtab1a,@object                # @DCTtab1a
	.globl	DCTtab1a
DCTtab1a:
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.size	DCTtab1a, 24

	.type	DCTtab2,@object                 # @DCTtab2
	.globl	DCTtab2
DCTtab2:
	.byte	0                               # 0x0
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	12                              # 0xc
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	21                              # 0x15
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	20                              # 0x14
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	19                              # 0x13
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	18                              # 0x12
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	12                              # 0xc
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	17                              # 0x11
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.size	DCTtab2, 48

	.type	DCTtab3,@object                 # @DCTtab3
	.globl	DCTtab3
DCTtab3:
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	2                               # 0x2
	.byte	13                              # 0xd
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	13                              # 0xd
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	13                              # 0xd
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	13                              # 0xd
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	26                              # 0x1a
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.byte	25                              # 0x19
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.byte	24                              # 0x18
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.byte	23                              # 0x17
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.byte	22                              # 0x16
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.size	DCTtab3, 48

	.type	DCTtab4,@object                 # @DCTtab4
	.globl	DCTtab4
DCTtab4:
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	30                              # 0x1e
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	29                              # 0x1d
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	28                              # 0x1c
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	27                              # 0x1b
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	26                              # 0x1a
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	25                              # 0x19
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	22                              # 0x16
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	21                              # 0x15
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	19                              # 0x13
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	18                              # 0x12
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	14                              # 0xe
	.size	DCTtab4, 48

	.type	DCTtab5,@object                 # @DCTtab5
	.globl	DCTtab5
DCTtab5:
	.byte	0                               # 0x0
	.byte	40                              # 0x28
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	39                              # 0x27
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	38                              # 0x26
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	37                              # 0x25
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	36                              # 0x24
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	35                              # 0x23
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	34                              # 0x22
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	33                              # 0x21
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	11                              # 0xb
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	15                              # 0xf
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.size	DCTtab5, 48

	.type	DCTtab6,@object                 # @DCTtab6
	.globl	DCTtab6
DCTtab6:
	.byte	1                               # 0x1
	.byte	18                              # 0x12
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	13                              # 0xd
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	11                              # 0xb
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	31                              # 0x1f
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	30                              # 0x1e
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	29                              # 0x1d
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	28                              # 0x1c
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	27                              # 0x1b
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.size	DCTtab6, 48

	.type	MVtab0,@object                  # @MVtab0
	.section	.rodata.cst16,"aM",@progbits,16
MVtab0:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.size	MVtab0, 16

	.type	MVtab1,@object                  # @MVtab1
MVtab1:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.size	MVtab1, 16

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Invalid motion_vector code (MBA %d, pic %d)\n"
	.size	.L.str.1, 45

	.type	MVtab2,@object                  # @MVtab2
	.section	.rodata,"a",@progbits
MVtab2:
	.byte	16                              # 0x10
	.byte	9                               # 0x9
	.byte	15                              # 0xf
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	9                               # 0x9
	.byte	11                              # 0xb
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.size	MVtab2, 24

	.type	CBPtab0,@object                 # @CBPtab0
CBPtab0:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	62                              # 0x3e
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	61                              # 0x3d
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	56                              # 0x38
	.byte	5                               # 0x5
	.byte	52                              # 0x34
	.byte	5                               # 0x5
	.byte	44                              # 0x2c
	.byte	5                               # 0x5
	.byte	28                              # 0x1c
	.byte	5                               # 0x5
	.byte	40                              # 0x28
	.byte	5                               # 0x5
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.byte	48                              # 0x30
	.byte	5                               # 0x5
	.byte	12                              # 0xc
	.byte	5                               # 0x5
	.byte	32                              # 0x20
	.byte	4                               # 0x4
	.byte	32                              # 0x20
	.byte	4                               # 0x4
	.byte	16                              # 0x10
	.byte	4                               # 0x4
	.byte	16                              # 0x10
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	60                              # 0x3c
	.byte	3                               # 0x3
	.byte	60                              # 0x3c
	.byte	3                               # 0x3
	.byte	60                              # 0x3c
	.byte	3                               # 0x3
	.byte	60                              # 0x3c
	.byte	3                               # 0x3
	.size	CBPtab0, 64

	.type	CBPtab1,@object                 # @CBPtab1
CBPtab1:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	58                              # 0x3a
	.byte	8                               # 0x8
	.byte	54                              # 0x36
	.byte	8                               # 0x8
	.byte	46                              # 0x2e
	.byte	8                               # 0x8
	.byte	30                              # 0x1e
	.byte	8                               # 0x8
	.byte	57                              # 0x39
	.byte	8                               # 0x8
	.byte	53                              # 0x35
	.byte	8                               # 0x8
	.byte	45                              # 0x2d
	.byte	8                               # 0x8
	.byte	29                              # 0x1d
	.byte	8                               # 0x8
	.byte	38                              # 0x26
	.byte	8                               # 0x8
	.byte	26                              # 0x1a
	.byte	8                               # 0x8
	.byte	37                              # 0x25
	.byte	8                               # 0x8
	.byte	25                              # 0x19
	.byte	8                               # 0x8
	.byte	43                              # 0x2b
	.byte	8                               # 0x8
	.byte	23                              # 0x17
	.byte	8                               # 0x8
	.byte	51                              # 0x33
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	42                              # 0x2a
	.byte	8                               # 0x8
	.byte	22                              # 0x16
	.byte	8                               # 0x8
	.byte	50                              # 0x32
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	41                              # 0x29
	.byte	8                               # 0x8
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.byte	49                              # 0x31
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	35                              # 0x23
	.byte	8                               # 0x8
	.byte	19                              # 0x13
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	34                              # 0x22
	.byte	7                               # 0x7
	.byte	34                              # 0x22
	.byte	7                               # 0x7
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	33                              # 0x21
	.byte	7                               # 0x7
	.byte	33                              # 0x21
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	63                              # 0x3f
	.byte	6                               # 0x6
	.byte	63                              # 0x3f
	.byte	6                               # 0x6
	.byte	63                              # 0x3f
	.byte	6                               # 0x6
	.byte	63                              # 0x3f
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	24                              # 0x18
	.byte	6                               # 0x6
	.byte	24                              # 0x18
	.byte	6                               # 0x6
	.byte	24                              # 0x18
	.byte	6                               # 0x6
	.byte	24                              # 0x18
	.byte	6                               # 0x6
	.size	CBPtab1, 128

	.type	CBPtab2,@object                 # @CBPtab2
	.section	.rodata.cst16,"aM",@progbits,16
CBPtab2:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	39                              # 0x27
	.byte	9                               # 0x9
	.byte	27                              # 0x1b
	.byte	9                               # 0x9
	.byte	59                              # 0x3b
	.byte	9                               # 0x9
	.byte	55                              # 0x37
	.byte	9                               # 0x9
	.byte	47                              # 0x2f
	.byte	9                               # 0x9
	.byte	31                              # 0x1f
	.byte	9                               # 0x9
	.size	CBPtab2, 16

	.type	MBAtab1,@object                 # @MBAtab1
	.section	.rodata.cst32,"aM",@progbits,32
MBAtab1:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.size	MBAtab1, 32

	.type	MBAtab2,@object                 # @MBAtab2
	.section	.rodata,"a",@progbits
MBAtab2:
	.byte	33                              # 0x21
	.byte	11                              # 0xb
	.byte	32                              # 0x20
	.byte	11                              # 0xb
	.byte	31                              # 0x1f
	.byte	11                              # 0xb
	.byte	30                              # 0x1e
	.byte	11                              # 0xb
	.byte	29                              # 0x1d
	.byte	11                              # 0xb
	.byte	28                              # 0x1c
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
	.byte	11                              # 0xb
	.byte	26                              # 0x1a
	.byte	11                              # 0xb
	.byte	25                              # 0x19
	.byte	11                              # 0xb
	.byte	24                              # 0x18
	.byte	11                              # 0xb
	.byte	23                              # 0x17
	.byte	11                              # 0xb
	.byte	22                              # 0x16
	.byte	11                              # 0xb
	.byte	21                              # 0x15
	.byte	10                              # 0xa
	.byte	21                              # 0x15
	.byte	10                              # 0xa
	.byte	20                              # 0x14
	.byte	10                              # 0xa
	.byte	20                              # 0x14
	.byte	10                              # 0xa
	.byte	19                              # 0x13
	.byte	10                              # 0xa
	.byte	19                              # 0x13
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	10                              # 0xa
	.byte	16                              # 0x10
	.byte	10                              # 0xa
	.byte	16                              # 0x10
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.size	MBAtab2, 208

	.type	DClumtab0,@object               # @DClumtab0
DClumtab0:
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.size	DClumtab0, 64

	.type	DClumtab1,@object               # @DClumtab1
	.section	.rodata.cst32,"aM",@progbits,32
DClumtab1:
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	11                              # 0xb
	.byte	9                               # 0x9
	.size	DClumtab1, 32

	.type	DCchromtab0,@object             # @DCchromtab0
	.section	.rodata,"a",@progbits
DCchromtab0:
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.size	DCchromtab0, 64

	.type	DCchromtab1,@object             # @DCchromtab1
DCchromtab1:
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.size	DCchromtab1, 64

	.type	PMBtab0,@object                 # @PMBtab0
	.section	.rodata.cst16,"aM",@progbits,16
PMBtab0:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.size	PMBtab0, 16

	.type	PMBtab1,@object                 # @PMBtab1
PMBtab1:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	6                               # 0x6
	.byte	18                              # 0x12
	.byte	5                               # 0x5
	.byte	18                              # 0x12
	.byte	5                               # 0x5
	.byte	26                              # 0x1a
	.byte	5                               # 0x5
	.byte	26                              # 0x1a
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.size	PMBtab1, 16

	.type	BMBtab0,@object                 # @BMBtab0
	.section	.rodata.cst32,"aM",@progbits,32
BMBtab0:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.size	BMBtab0, 32

	.type	BMBtab1,@object                 # @BMBtab1
	.section	.rodata.cst16,"aM",@progbits,16
BMBtab1:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	6                               # 0x6
	.byte	26                              # 0x1a
	.byte	6                               # 0x6
	.byte	30                              # 0x1e
	.byte	5                               # 0x5
	.byte	30                              # 0x1e
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.size	BMBtab1, 16

	.type	spIMBtab,@object                # @spIMBtab
	.section	.rodata.cst32,"aM",@progbits,32
spIMBtab:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	4                               # 0x4
	.byte	17                              # 0x11
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	82                              # 0x52
	.byte	2                               # 0x2
	.byte	82                              # 0x52
	.byte	2                               # 0x2
	.byte	82                              # 0x52
	.byte	2                               # 0x2
	.byte	82                              # 0x52
	.byte	2                               # 0x2
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.byte	66                              # 0x42
	.byte	1                               # 0x1
	.size	spIMBtab, 32

	.type	spPMBtab0,@object               # @spPMBtab0
spPMBtab0:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	40                              # 0x28
	.byte	4                               # 0x4
	.byte	26                              # 0x1a
	.byte	3                               # 0x3
	.byte	26                              # 0x1a
	.byte	3                               # 0x3
	.byte	42                              # 0x2a
	.byte	3                               # 0x3
	.byte	42                              # 0x2a
	.byte	3                               # 0x3
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	58                              # 0x3a
	.byte	2                               # 0x2
	.byte	58                              # 0x3a
	.byte	2                               # 0x2
	.byte	58                              # 0x3a
	.byte	2                               # 0x2
	.byte	58                              # 0x3a
	.byte	2                               # 0x2
	.size	spPMBtab0, 32

	.type	spPMBtab1,@object               # @spPMBtab1
spPMBtab1:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	82                              # 0x52
	.byte	7                               # 0x7
	.byte	64                              # 0x40
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	66                              # 0x42
	.byte	7                               # 0x7
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	18                              # 0x12
	.byte	6                               # 0x6
	.byte	18                              # 0x12
	.byte	6                               # 0x6
	.byte	50                              # 0x32
	.byte	6                               # 0x6
	.byte	50                              # 0x32
	.byte	6                               # 0x6
	.byte	32                              # 0x20
	.byte	6                               # 0x6
	.byte	32                              # 0x20
	.byte	6                               # 0x6
	.byte	34                              # 0x22
	.byte	6                               # 0x6
	.byte	34                              # 0x22
	.byte	6                               # 0x6
	.size	spPMBtab1, 32

	.type	spBMBtab0,@object               # @spBMBtab0
	.section	.rodata,"a",@progbits
spBMBtab0:
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	12                              # 0xc
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.size	spBMBtab0, 28

	.type	spBMBtab1,@object               # @spBMBtab1
spBMBtab1:
	.byte	26                              # 0x1a
	.byte	7                               # 0x7
	.byte	22                              # 0x16
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	30                              # 0x1e
	.byte	7                               # 0x7
	.byte	40                              # 0x28
	.byte	6                               # 0x6
	.byte	40                              # 0x28
	.byte	6                               # 0x6
	.byte	42                              # 0x2a
	.byte	6                               # 0x6
	.byte	42                              # 0x2a
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	38                              # 0x26
	.byte	6                               # 0x6
	.byte	38                              # 0x26
	.byte	6                               # 0x6
	.size	spBMBtab1, 24

	.type	spBMBtab2,@object               # @spBMBtab2
	.section	.rodata.cst16,"aM",@progbits,16
spBMBtab2:
	.byte	17                              # 0x11
	.byte	8                               # 0x8
	.byte	17                              # 0x11
	.byte	8                               # 0x8
	.byte	58                              # 0x3a
	.byte	8                               # 0x8
	.byte	58                              # 0x3a
	.byte	8                               # 0x8
	.byte	54                              # 0x36
	.byte	9                               # 0x9
	.byte	82                              # 0x52
	.byte	9                               # 0x9
	.byte	64                              # 0x40
	.byte	9                               # 0x9
	.byte	66                              # 0x42
	.byte	9                               # 0x9
	.size	spBMBtab2, 16

	.type	SNRMBtab,@object                # @SNRMBtab
SNRMBtab:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	18                              # 0x12
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.size	SNRMBtab, 16

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Get_macroblock_type(): unrecognized picture coding type"
	.size	.Lstr, 56

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"Invalid macroblock_type code"
	.size	.Lstr.12, 29

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"Invalid coded_block_pattern code"
	.size	.Lstr.13, 33

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"Invalid macroblock_address_increment code"
	.size	.Lstr.14, 42

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
