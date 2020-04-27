############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Assignment3a
set_top Matrixmult<T,size>
add_files Assignment3a/MatrixMult.h
add_files -tb Assignment3a/MatrixMult_tb.cpp
open_solution "solution1"
set_part {xa7z010clg225-1i}
create_clock -period 10 -name default
#source "./Assignment3a/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
