#!/bin/bash


option=$1

/opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-addr2line -e exec/lchain_${option}.o -f -C -p < pc_track_${option} > source_lines_${option}

awk -F':' '{print $NF}' source_lines_${option} > temp.txt

uniq source_lines_${option} > source_lines_${option}_uniq

paste -d ' ---- '  pc_track_${option} temp.txt > combined_${option}