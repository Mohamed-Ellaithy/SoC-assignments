############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Assignment1b
add_files Assignment1b/GUCClasses.h
add_files -tb Assignment1b/GUCClasses_tb.cpp
open_solution "solution1"
set_part {xa7z010clg225-1i}
create_clock -period 10 -name default
#source "./Assignment1b/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
