
set pagination off
set logging file gdb_output.txt
set logging on
target remote localhost:3333
load
c

printf "SIZE = %d\n", size  
printf "\n"


printf "C_Basic_matmul = %d\n", cycles_norm
printf "Sum_Basic_matmul = %d\n", result_sum_norm
printf "\n"
printf "C_M1_b8(normal_core) = %d\n", cycles_extraReg_8
printf "Sum_M1_b8(normal_core) = %d\n", result_sum_extraReg_8
printf "\n"
printf "C_M1_b16(64reg_core) = %d\n", cycles_extraReg_16
printf "Sum_M1_b16(64reg_core) = %d\n", result_sum_extraReg_16
printf "\n"
printf "C_M2_b2(normal_core) = %d\n", cycles_b2
printf "Sum_M2_b2(normal_core) = %d\n", result_sum_B2
printf "\n"
printf "C_M2_b4(64reg_core) = %d\n", cycles_b4
printf "Sum_M2_b4(64reg_core) = %d\n", result_sum_B4
printf "\n"
printf "C_M2_b4_v2(64reg_core) = %d\n", cycles_b4_V2
printf "Sum_M2_b4_v2(64reg_core) = %d\n", result_sum_B4_V2
printf "\n"
set logging off
quit