# ==============================================================
# File generated on Fri Feb 14 14:31:25 EET 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../MatrixMultiplication_tb.cpp -cflags { -Wno-unknown-pragmas}
add_files Assignment1a/MatrixMultiplication.h
add_files Assignment1a/MatrixMultiplication.cpp
set_part xa7z010clg225-1i
create_clock -name default -period 10
