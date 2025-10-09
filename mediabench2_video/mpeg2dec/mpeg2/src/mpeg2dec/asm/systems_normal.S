	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"systems.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Next_Packet                     # -- Begin function Next_Packet
	.p2align	2
	.type	Next_Packet,@function
Next_Packet:                            # @Next_Packet
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
	li	s0, 256
	li	s1, 442
	lui	s2, %hi(ld)
	li	s3, 480
	li	s4, 441
	li	s5, 443
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	ld	a0, %lo(ld)(s2)
	addi	a0, a0, 2047
	ld	a1, 9(a0)
	addi	a1, a1, 8
	sd	a1, 9(a0)
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	call	Get_Word
	slliw	s6, a0, 16
	call	Get_Word
	or	a2, s6, a0
	andi	a0, a2, -256
	beq	a0, s0, .LBB0_4
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slliw	s6, a2, 8
	call	Get_Byte
	or	a2, a0, s6
	andi	a0, a2, -256
	bne	a0, s0, .LBB0_3
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	beq	a2, s1, .LBB0_1
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	beq	a2, s3, .LBB0_9
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	beq	a2, s4, .LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	bltu	a2, s5, .LBB0_27
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	call	Get_Word
	ld	a1, %lo(ld)(s2)
	addi	a1, a1, 2047
	ld	a2, 9(a1)
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, a2, a0
	sd	a0, 9(a1)
	j	.LBB0_2
.LBB0_9:
	call	Get_Word
	lui	s0, %hi(ld)
	ld	a1, %lo(ld)(s0)
	addi	a1, a1, 2047
	ld	a2, 9(a1)
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, a2, a0
	sd	a0, 41(a1)
	call	Get_Byte
	andi	a1, a0, -64
	li	a2, 128
	bne	a1, a2, .LBB0_15
# %bb.10:
	ld	a0, %lo(ld)(s0)
	addi	a0, a0, 2047
	ld	a1, 9(a0)
	addi	a1, a1, 1
	sd	a1, 9(a0)
	call	Get_Byte
	ld	a1, %lo(ld)(s0)
	addi	a1, a1, 2047
	ld	a2, 9(a1)
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a2, a2, a0
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	sd	a2, 9(a1)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	puts
.LBB0_11:                               # %.preheader1
	li	a4, 0
	lui	a0, %hi(ld)
	li	a1, 1
	li	a2, 183
	li	a3, 2044
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(ld)(a0)
	mv	a6, a4
	add	a5, a5, a4
	sb	zero, 4(a5)
	ld	a4, %lo(ld)(a0)
	add	a4, a4, a6
	sb	zero, 5(a4)
	ld	a4, %lo(ld)(a0)
	add	a4, a4, a6
	sb	a1, 6(a4)
	ld	a5, %lo(ld)(a0)
	addi	a4, a6, 4
	add	a5, a5, a6
	sb	a2, 7(a5)
	bltu	a6, a3, .LBB0_12
# %bb.13:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a1, a0, 2047
	addi	a0, a0, 4
	sd	a0, 9(a1)
	addi	a0, a1, 5
	sd	a0, 41(a1)
.LBB0_14:
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
.LBB0_15:
	li	s0, 255
	bne	a0, s0, .LBB0_17
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	call	Get_Byte
	beq	a0, s0, .LBB0_16
.LBB0_17:
	li	a1, 64
	bltu	a0, a1, .LBB0_20
# %bb.18:
	li	a1, 128
	bgeu	a0, a1, .LBB0_26
# %bb.19:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	ld	a1, 9(a0)
	addi	a1, a1, 1
	sd	a1, 9(a0)
	call	Get_Byte
.LBB0_20:
	li	a1, 48
	bltu	a0, a1, .LBB0_23
# %bb.21:
	li	a1, 64
	bgeu	a0, a1, .LBB0_26
# %bb.22:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	ld	a1, 9(a0)
	addi	a1, a1, 9
	sd	a1, 9(a0)
	j	.LBB0_14
.LBB0_23:
	li	a1, 32
	bltu	a0, a1, .LBB0_25
# %bb.24:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	ld	a1, 9(a0)
	addi	a1, a1, 4
	sd	a1, 9(a0)
	j	.LBB0_14
.LBB0_25:
	li	a1, 15
	beq	a0, a1, .LBB0_14
.LBB0_26:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 23
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_27:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end0:
	.size	Next_Packet, .Lfunc_end0-Next_Packet
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Long                        # -- Begin function Get_Long
	.p2align	2
	.type	Get_Long,@function
Get_Long:                               # @Get_Long
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	call	Get_Word
	slliw	s0, a0, 16
	call	Get_Word
	or	a0, s0, a0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	Get_Long, .Lfunc_end1-Get_Long
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Flush_Buffer32                  # -- Begin function Flush_Buffer32
	.p2align	2
	.type	Flush_Buffer32,@function
Flush_Buffer32:                         # @Flush_Buffer32
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(ld)
	ld	a1, %lo(ld)(a0)
	addi	a0, a1, 2047
	sw	zero, 33(a0)
	lw	a2, 49(a0)
	lui	a3, %hi(System_Stream_Flag)
	lw	a3, %lo(System_Stream_Flag)(a3)
	addi	s0, a2, -32
	beqz	a3, .LBB2_2
# %bb.1:
	ld	a3, 41(a0)
	ld	a4, 9(a0)
	addi	a3, a3, -4
	bgeu	a4, a3, .LBB2_7
.LBB2_2:
	li	s1, 56
	blt	s1, a2, .LBB2_13
# %bb.3:
	ld	a0, 9(a0)
	addi	s0, a2, -40
	subw	s1, s1, a2
	li	s2, 17
	lui	s3, %hi(ld)
	j	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	addi	a2, a1, 2047
	addi	a3, a0, 1
	sd	a3, 9(a2)
	lbu	a0, 0(a0)
	lw	a4, 33(a2)
	sllw	a0, a0, s1
	or	a0, a0, a4
	sw	a0, 33(a2)
	addiw	s0, s0, 8
	addi	s1, s1, -8
	mv	a0, a3
	bge	s0, s2, .LBB2_12
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	addi	a2, a1, 2047
	addi	a2, a2, 5
	bltu	a0, a2, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	call	Fill_Buffer
	ld	a1, %lo(ld)(s3)
	addi	a0, a1, 2047
	ld	a0, 9(a0)
	j	.LBB2_4
.LBB2_7:
	li	s1, 56
	blt	s1, a2, .LBB2_13
# %bb.8:                                # %.preheader
	addi	s0, a2, -40
	subw	s1, s1, a2
	lui	s2, %hi(ld)
	li	s3, 17
	j	.LBB2_10
.LBB2_9:                                #   in Loop: Header=BB2_10 Depth=1
	call	Get_Byte
	ld	a1, %lo(ld)(s2)
	addi	a2, a1, 2047
	lw	a3, 33(a2)
	sllw	a0, a0, s1
	or	a0, a3, a0
	sw	a0, 33(a2)
	addiw	s0, s0, 8
	addi	s1, s1, -8
	bge	s0, s3, .LBB2_12
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	addi	a0, a1, 2047
	ld	a1, 9(a0)
	ld	a0, 41(a0)
	bltu	a1, a0, .LBB2_9
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	call	Next_Packet
	j	.LBB2_9
.LBB2_12:                               # %.loopexit1
	addi	s0, s0, 8
.LBB2_13:
	addi	a0, a1, 2047
	sw	s0, 49(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	Flush_Buffer32, .Lfunc_end2-Flush_Buffer32
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Bits32                      # -- Begin function Get_Bits32
	.p2align	2
	.type	Get_Bits32,@function
Get_Bits32:                             # @Get_Bits32
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 32
	call	Show_Bits
	mv	s0, a0
	call	Flush_Buffer32
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	Get_Bits32, .Lfunc_end3-Get_Bits32
                                        # -- End function
	.option	pop
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Error in packet header\n"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Unexpected startcode %08x in system layer\n"
	.size	.L.str.2, 43

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"MPEG-2 PES packet"
	.size	.Lstr, 18

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
