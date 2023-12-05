############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ultrasound_accelerator
set_top inference
add_files HLS_CNN.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 50 -name default
#source "./ultrasound_accelerator/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
