#!/bin/bash

# List of source folders
sources=(
    "/home/heshds/working_dir/regsw_tests/mediabench2_video/h263dec/tmndec-1.7/tmndec-1.7-build"
    "/home/heshds/working_dir/regsw_tests/mediabench2_video/cjpeg/jpeg-6b/jpeg-6b-build"
    "/home/heshds/working_dir/regsw_tests/mediabench2_video/input_data"
    "/home/heshds/working_dir/regsw_tests/mediabench2_video/h263enc/tmn-1.7/tmn-1.7-build"
    "/home/heshds/working_dir/regsw_tests/lchain/lchain-build"
    "/home/heshds/working_dir/regsw_tests/mediabench2_video/h264dec/JM/bin"
    "/home/heshds/working_dir/regsw_tests/regsw_perf/build"
    "/home/heshds/working_dir/regsw_tests/mibench/automotive/susan/build"
    "/home/heshds/working_dir/regsw_tests/mibench/security/blowfish/build"
    "/home/heshds/working_dir/regsw_tests/mediabench2_video/mpeg2dec/mpeg2/src/mpeg2dec/mpeg2dec-build"
    "/home/heshds/working_dir/regsw_tests/mediabench2_video/mpeg2dec/mpeg2/src/mpeg2enc/mpeg2enc-build"
)

# List of destination folder names (must match number of sources above)
dest_names=(
    "h263dec"
    "cjpeg"
    "input_data"
    "h263enc"
    "lchain"
    "h264"
    "perf"
    "susan"
    "blowfish"
    "mpeg2dec"
    "mpeg2enc"
)

# Destination base directory
dest="/home/heshds/working_dir/cva6-sdk/cva6-sdk-mods/home"

# Make sure destination exists
mkdir -p "$dest"

# Loop through both lists using index
for i in "${!sources[@]}"; do
    src="${sources[$i]}"
    dest_dir="$dest/${dest_names[$i]}"

    if [ -d "$src" ]; then
        echo "Copying from $src to $dest_dir"
        mkdir -p "$dest_dir"
        cp -r "$src/"* "$dest_dir"/
    else
        echo "Warning: $src does not exist, skipping."
    fi
done
