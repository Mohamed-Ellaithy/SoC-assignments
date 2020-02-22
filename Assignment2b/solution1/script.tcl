############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Assignment2b
set_top FA8bits
add_files Assignment2b/FA.cpp
add_files Assignment2b/FA.h
add_files Assignment2b/FA8bits.h
add_files Assignment2b/Vector.h
add_files -tb Assignment2b/main.cpp
open_solution "solution1"
set_part {xa7z010clg225-1i}
create_clock -period 10 -name default
#source "./Assignment2b/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
