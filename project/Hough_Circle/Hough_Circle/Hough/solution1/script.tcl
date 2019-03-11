############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Hough
set_top HoughCircles_Core
add_files hough.h
add_files image_core.cpp
add_files image_core.h
add_files type.h
add_files -tb src.jpg
add_files -tb test.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7vx690tffg1761-3} -tool vivado
create_clock -period 20 -name default
source "./Hough/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port -tool xsim
export_design -rtl verilog -format ip_catalog