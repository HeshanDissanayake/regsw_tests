	.file	"delete.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
#APP
# 6 "delete.c" 1
	sw x28, 0(t0)

# 0 "" 2
# 6 "delete.c" 1
	sw x28, 1(t0)

# 0 "" 2
# 6 "delete.c" 1
	sw x28, 2(t0)

# 0 "" 2
# 6 "delete.c" 1
	sw x28, 3(t0)

# 0 "" 2
# 6 "delete.c" 1
	sw x28, 4(t0)

# 0 "" 2
# 6 "delete.c" 1
	sw x28, 5(t0)

# 0 "" 2
# 6 "delete.c" 1
	sw x28, 6(t0)

# 0 "" 2
# 6 "delete.c" 1
	sw x28, 7(t0)

# 0 "" 2
#NO_APP
	li	a0,0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
