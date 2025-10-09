# This code has a trapvector to test regsw_c/mask is saved properly and restores them.

.globl main

#regsw_c	x0, 0x114(x18)		# 100 100 000 000 100 010 100
  

main:
    la t0, trap_vector       # set mtvec to point to our handler
    csrw mtvec, t0

    li   t0, 1 << 7             # MTIP bit = bit 7
    csrw mie, t0

    csrr t0, mstatus
    ori  t0, t0, 1 << 3         # MIE bit = bit 3
    csrw mstatus, t0

    li x30, 1
    csrw  0x803, x30 # enable regsw unit
    nop
    li x30, 2
    nop

	regsw_c	x0, 0x0(x18)		# 100100000000000000000
    li x3, 0
    ecall
    li x4, 5
    li x30, 20
    jal exit;

trap_vector:
    csrr x30, 0x801  # eregsw_c
    csrr x31, 0x807  # eregsw_mask
    li x20, 1
    li x21, 2
    li x22, 3
    li x23, 4

    csrw 0x80e, x30 # restore regsw_c
    csrw 0x802, x31 # restore regsw_mask
    mret
    jal exit;
