	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getbits.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Initialize_Buffer               # -- Begin function Initialize_Buffer
	.p2align	2
	.type	Initialize_Buffer,@function
Initialize_Buffer:                      # @Initialize_Buffer
# %bb.0:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	sw	zero, 49(a0)
	addi	a1, a0, 5
	sd	a1, 9(a0)
	sd	a1, 41(a0)
	sw	zero, 33(a0)
	li	a0, 0
	tail	Flush_Buffer
.Lfunc_end0:
	.size	Initialize_Buffer, .Lfunc_end0-Initialize_Buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Flush_Buffer                    # -- Begin function Flush_Buffer
	.p2align	2
	.type	Flush_Buffer,@function
Flush_Buffer:                           # @Flush_Buffer
# %bb.0:
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a3, a1, 2047
	lw	a2, 33(a3)
	lw	a6, 49(a3)
	sllw	a5, a2, a0
	sw	a5, 33(a3)
	subw	a2, a6, a0
	li	a4, 24
	sw	a2, 49(a3)
	blt	a4, a2, .LBB1_7
# %bb.1:
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
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	lui	a4, %hi(System_Stream_Flag)
	lw	a7, %lo(System_Stream_Flag)(a4)
	ld	a4, 9(a3)
	beqz	a7, .LBB1_3
# %bb.2:
	ld	a7, 41(a3)
	addi	a7, a7, -4
	bgeu	a4, a7, .LBB1_19
.LBB1_3:
	addi	a7, a3, 1
	bgeu	a4, a7, .LBB1_8
# %bb.4:                                # %.preheader
	addi	a4, a4, 1
	subw	a0, a0, a6
	addi	a0, a0, 24
	li	a6, 17
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	sd	a4, 9(a3)
	lbu	a7, -1(a4)
	mv	t0, a2
	sllw	a2, a7, a0
	or	a5, a2, a5
	sw	a5, 33(a3)
	addiw	a2, t0, 8
	addi	a4, a4, 1
	addi	a0, a0, -8
	blt	t0, a6, .LBB1_5
.LBB1_6:
	addi	a0, a1, 2047
	sw	a2, 49(a0)
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
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
.LBB1_7:
	ret
.LBB1_8:
	lui	s1, %hi(ld)
	li	s2, 24
	li	s3, 17
	li	s4, 1
	slli	s0, s4, 11
	lui	s5, %hi(System_Stream_Flag)
	li	s6, 2047
	li	s7, 183
	li	s8, 2044
	li	s9, 2046
	j	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	ld	a1, %lo(ld)(s1)
	addi	a0, a1, 2047
	ld	a2, 9(a0)
	addi	a4, a2, 1
	sd	a4, 9(a0)
	lbu	a2, 0(a2)
	lw	a3, 33(a0)
	subw	a5, s2, s10
	sllw	a2, a2, a5
	or	a2, a2, a3
	sw	a2, 33(a0)
	addiw	a2, s10, 8
	bge	s10, s3, .LBB1_6
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_18 Depth 2
	addi	a0, a1, 2047
	addi	a0, a0, 5
	mv	s10, a2
	bltu	a4, a0, .LBB1_9
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	lw	a0, 0(a1)
	addi	a1, a1, 4
	mv	a2, s0
	call	read
	ld	a2, %lo(ld)(s1)
	lw	a3, %lo(System_Stream_Flag)(s5)
	addi	a1, a2, 2047
	addi	a2, a2, 4
	sd	a2, 9(a1)
	beqz	a3, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=1
	ld	a2, 41(a1)
	addi	a2, a2, -2048
	sd	a2, 41(a1)
.LBB1_13:                               #   in Loop: Header=BB1_10 Depth=1
	blt	s6, a0, .LBB1_9
# %bb.14:                               #   in Loop: Header=BB1_10 Depth=1
	sgtz	a1, a0
	negw	a1, a1
	and	a0, a1, a0
	andi	a1, a0, 3
	beqz	a1, .LBB1_18
# %bb.15:                               #   in Loop: Header=BB1_10 Depth=1
	slli	a1, a0, 32
	srli	a1, a1, 32
	addi	a1, a1, 4
.LBB1_16:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a2, %lo(ld)(s1)
	add	a2, a2, a1
	sb	zero, 0(a2)
	addiw	a0, a0, 1
	andi	a2, a0, 3
	addi	a1, a1, 1
	bnez	a2, .LBB1_16
# %bb.17:                               #   in Loop: Header=BB1_10 Depth=1
	addi	a1, a1, -5
	bltu	s9, a1, .LBB1_9
.LBB1_18:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(ld)(s1)
	mv	a2, a0
	add	a1, a1, a0
	sb	zero, 4(a1)
	ld	a0, %lo(ld)(s1)
	add	a0, a0, a2
	sb	zero, 5(a0)
	ld	a0, %lo(ld)(s1)
	add	a0, a0, a2
	sb	s4, 6(a0)
	ld	a1, %lo(ld)(s1)
	addi	a0, a2, 4
	add	a1, a1, a2
	sb	s7, 7(a1)
	bltu	a2, s8, .LBB1_18
	j	.LBB1_9
.LBB1_19:                               # %.preheader6
	li	s1, 24
	li	s2, 17
	li	s0, 1
	slli	s0, s0, 11
	lui	s3, %hi(ld)
	j	.LBB1_22
.LBB1_20:                               #   in Loop: Header=BB1_22 Depth=1
	addi	a2, a2, 9
.LBB1_21:                               #   in Loop: Header=BB1_22 Depth=1
	addi	a3, a0, 1
	sd	a3, 0(a2)
	lbu	a0, 0(a0)
	addi	a2, a1, 2047
	lw	a3, 33(a2)
	subw	a4, s1, s4
	sllw	a0, a0, a4
	or	a0, a3, a0
	sw	a0, 33(a2)
	addiw	a2, s4, 8
	bge	s4, s2, .LBB1_6
.LBB1_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
	addi	a3, a1, 2047
	ld	a0, 9(a3)
	ld	a3, 41(a3)
	mv	s4, a2
	bltu	a0, a3, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	call	Next_Packet
	ld	a1, %lo(ld)(s3)
	addi	a0, a1, 2047
	ld	a0, 9(a0)
.LBB1_24:                               #   in Loop: Header=BB1_22 Depth=1
	addi	a2, a1, 2047
	addi	a3, a2, 5
	bltu	a0, a3, .LBB1_20
.LBB1_25:                               #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(a1)
	addi	a1, a1, 4
	mv	a2, s0
	call	read
	ld	a1, %lo(ld)(s3)
	addi	a3, a1, 2047
	ld	a0, 9(a3)
	addi	a2, a3, 9
	ld	a4, 32(a2)
	addi	a0, a0, -2048
	sd	a0, 9(a3)
	addi	a4, a4, -2048
	addi	a3, a3, 5
	sd	a4, 32(a2)
	bgeu	a0, a3, .LBB1_25
	j	.LBB1_21
.Lfunc_end1:
	.size	Flush_Buffer, .Lfunc_end1-Flush_Buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Fill_Buffer                     # -- Begin function Fill_Buffer
	.p2align	2
	.type	Fill_Buffer,@function
Fill_Buffer:                            # @Fill_Buffer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(ld)
	ld	a1, %lo(ld)(s0)
	lw	a0, 0(a1)
	addi	a1, a1, 4
	li	a2, 1
	slli	a2, a2, 11
	call	read
	ld	a2, %lo(ld)(s0)
	lui	a1, %hi(System_Stream_Flag)
	lw	a3, %lo(System_Stream_Flag)(a1)
	addi	a1, a2, 2047
	addi	a2, a2, 4
	sd	a2, 9(a1)
	beqz	a3, .LBB2_2
# %bb.1:
	ld	a2, 41(a1)
	addi	a2, a2, -2048
	sd	a2, 41(a1)
.LBB2_2:
	li	a1, 2047
	blt	a1, a0, .LBB2_9
# %bb.3:
	sgtz	a1, a0
	negw	a1, a1
	and	a0, a1, a0
	andi	a1, a0, 3
	beqz	a1, .LBB2_7
# %bb.4:
	slli	a1, a0, 32
	srli	a1, a1, 32
	addi	a1, a1, 4
	lui	a2, %hi(ld)
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	ld	a3, %lo(ld)(a2)
	add	a3, a3, a1
	sb	zero, 0(a3)
	addiw	a0, a0, 1
	andi	a3, a0, 3
	addi	a1, a1, 1
	bnez	a3, .LBB2_5
# %bb.6:
	addi	a1, a1, -5
	li	a2, 2046
	bltu	a2, a1, .LBB2_9
.LBB2_7:
	lui	a1, %hi(ld)
	li	a2, 1
	li	a3, 183
	li	a4, 2044
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(ld)(a1)
	mv	a6, a0
	add	a5, a5, a0
	sb	zero, 4(a5)
	ld	a0, %lo(ld)(a1)
	add	a0, a0, a6
	sb	zero, 5(a0)
	ld	a0, %lo(ld)(a1)
	add	a0, a0, a6
	sb	a2, 6(a0)
	ld	a5, %lo(ld)(a1)
	addi	a0, a6, 4
	add	a5, a5, a6
	sb	a3, 7(a5)
	bltu	a6, a4, .LBB2_8
.LBB2_9:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	Fill_Buffer, .Lfunc_end2-Fill_Buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Byte                        # -- Begin function Get_Byte
	.p2align	2
	.type	Get_Byte,@function
Get_Byte:                               # @Get_Byte
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(ld)
	ld	a1, %lo(ld)(s1)
	addi	a2, a1, 2047
	ld	a0, 9(a2)
	addi	a3, a2, 5
	bgeu	a0, a3, .LBB3_2
# %bb.1:
	addi	a2, a2, 9
	j	.LBB3_4
.LBB3_2:                                # %.preheader
	li	s0, 1
	slli	s0, s0, 11
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 0(a1)
	addi	a1, a1, 4
	mv	a2, s0
	call	read
	ld	a1, %lo(ld)(s1)
	addi	a3, a1, 2047
	ld	a0, 9(a3)
	addi	a2, a3, 9
	ld	a4, 32(a2)
	addi	a0, a0, -2048
	sd	a0, 9(a3)
	addi	a4, a4, -2048
	addi	a3, a3, 5
	sd	a4, 32(a2)
	bgeu	a0, a3, .LBB3_3
.LBB3_4:
	addi	a1, a0, 1
	sd	a1, 0(a2)
	lbu	a0, 0(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	Get_Byte, .Lfunc_end3-Get_Byte
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Word                        # -- Begin function Get_Word
	.p2align	2
	.type	Get_Word,@function
Get_Word:                               # @Get_Word
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(ld)
	ld	a1, %lo(ld)(s1)
	addi	a2, a1, 2047
	ld	a0, 9(a2)
	addi	a3, a2, 5
	bgeu	a0, a3, .LBB4_2
# %bb.1:
	addi	a2, a2, 9
	j	.LBB4_4
.LBB4_2:                                # %.preheader1
	li	s0, 1
	slli	s0, s0, 11
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 0(a1)
	addi	a1, a1, 4
	mv	a2, s0
	call	read
	ld	a1, %lo(ld)(s1)
	addi	a3, a1, 2047
	ld	a0, 9(a3)
	addi	a2, a3, 9
	ld	a4, 32(a2)
	addi	a0, a0, -2048
	sd	a0, 9(a3)
	addi	a4, a4, -2048
	addi	a3, a3, 5
	sd	a4, 32(a2)
	bgeu	a0, a3, .LBB4_3
.LBB4_4:
	addi	a3, a0, 1
	sd	a3, 0(a2)
	addi	a3, a1, 2047
	ld	a2, 9(a3)
	lbu	s1, 0(a0)
	addi	a0, a3, 5
	bgeu	a2, a0, .LBB4_6
# %bb.5:
	addi	a0, a3, 9
	j	.LBB4_8
.LBB4_6:                                # %.preheader
	li	s0, 1
	slli	s0, s0, 11
	lui	s2, %hi(ld)
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 0(a1)
	addi	a1, a1, 4
	mv	a2, s0
	call	read
	ld	a1, %lo(ld)(s2)
	addi	a3, a1, 2047
	ld	a2, 9(a3)
	addi	a0, a3, 9
	ld	a4, 32(a0)
	addi	a2, a2, -2048
	sd	a2, 9(a3)
	addi	a4, a4, -2048
	addi	a3, a3, 5
	sd	a4, 32(a0)
	bgeu	a2, a3, .LBB4_7
.LBB4_8:
	addi	a1, a2, 1
	sd	a1, 0(a0)
	lbu	a0, 0(a2)
	slli	s1, s1, 8
	or	a0, s1, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	Get_Word, .Lfunc_end4-Get_Word
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Show_Bits                       # -- Begin function Show_Bits
	.p2align	2
	.type	Show_Bits,@function
Show_Bits:                              # @Show_Bits
# %bb.0:
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a1, a1, 2047
	lw	a1, 33(a1)
	negw	a0, a0
	srlw	a0, a1, a0
	ret
.Lfunc_end5:
	.size	Show_Bits, .Lfunc_end5-Show_Bits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Bits1                       # -- Begin function Get_Bits1
	.p2align	2
	.type	Get_Bits1,@function
Get_Bits1:                              # @Get_Bits1
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	lwu	s0, 33(a0)
	srli	s0, s0, 31
	li	a0, 1
	call	Flush_Buffer
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	Get_Bits1, .Lfunc_end6-Get_Bits1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Bits                        # -- Begin function Get_Bits
	.p2align	2
	.type	Get_Bits,@function
Get_Bits:                               # @Get_Bits
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a1, a1, 2047
	lw	a1, 33(a1)
	negw	a2, a0
	srlw	s0, a1, a2
	call	Flush_Buffer
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	Get_Bits, .Lfunc_end7-Get_Bits
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
