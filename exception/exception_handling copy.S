# This code has a trapvector to test regsw_c/mask is saved properly and restores them.

.globl main

#regsw_c	x0, 0x114(x18)		# 100 100 000 000 100 010 100
  

main:
    la t0, trap_vector       # set mtvec to point to our handler
    csrw mtvec, t0

   
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
   
    [handle the trap]

    csrw 0x80e, x30 # restore regsw_c
    csrw 0x802, x31 # restore regsw_mask
    mret
    jal exit;
