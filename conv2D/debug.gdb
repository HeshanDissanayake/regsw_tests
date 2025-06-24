
set pagination off
set logging file gdb_output.txt
set logging on
target remote localhost:3333
load
c

printf "Image=%d:  ", N
printf "kernel=%d", K
printf ",normal,%llu" , c_normal
printf ",regsw,%llu\n" , c_regsw
 
set logging off
quit