#!/bin/bash
input_file=$1
out_file=$1
tmp="temp_file"
iverilog -i $input_file -o $tmp
vvp $tmp > "${out_file%.*}.txt"
rm $tmp
