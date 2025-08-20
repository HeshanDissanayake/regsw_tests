#!/bin/bash

data_list=(402835)
# data_list=(1 2 3 4 6 7)

# Iterate through the list using a for loop
for item in "${data_list[@]}"
do
    echo "Processing: $item"
    # /home/heshds/working_dir/riscv-isa-sim/build/spike -z /home/heshds/riscv-pk_64/build/pk exec/lchain_normal.o $item lchain_normal_${item} #2&> hist.normal
    /home/heshds/working_dir/riscv-isa-sim/build/spike  /home/heshds/riscv-pk_64/build/pk exec/lchain_exReg_Inj.o  $item lchain_extra_${item} #2&> hist.extra

done