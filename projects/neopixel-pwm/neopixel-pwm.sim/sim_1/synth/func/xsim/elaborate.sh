#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sun Aug 28 16:10:12 EDT 2022
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 96b429e321b944438665a386e8f5fc64 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot sim_top_func_synth xil_defaultlib.sim_top xil_defaultlib.glbl -log elaborate.log"
xelab -wto 96b429e321b944438665a386e8f5fc64 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot sim_top_func_synth xil_defaultlib.sim_top xil_defaultlib.glbl -log elaborate.log

