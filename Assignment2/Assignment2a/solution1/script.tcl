############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Assignment2a
set_top Multiply
add_files Assignment2a/MatMult.h
add_files Assignment2a/MatMult.cpp
add_files Assignment2a/Final.h
add_files -tb Assignment2a/MatMult_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xa7z010clg225-1i}
create_clock -period 10 -name default
#source "./Assignment2a/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
