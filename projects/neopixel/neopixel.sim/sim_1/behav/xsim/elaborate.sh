#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Jul 11 10:34:21 CEST 2022
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 5437da5e7ef745baa3e4ff435c484ffe --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot Top_behav xil_defaultlib.Top -log elaborate.log"
xelab -wto 5437da5e7ef745baa3e4ff435c484ffe --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot Top_behav xil_defaultlib.Top -log elaborate.log

