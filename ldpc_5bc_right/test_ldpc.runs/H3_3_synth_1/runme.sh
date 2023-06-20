#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/fpga/SDK/2017.4/bin;D:/fpga/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/fpga/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/fpga/Vivado/2017.4/bin
else
  PATH=D:/fpga/SDK/2017.4/bin;D:/fpga/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/fpga/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/fpga/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='C:/Users/doinc/Desktop/decode_final_test/test_ldpc_5tongdao/test_ldpc.runs/H3_3_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log H3_3.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source H3_3.tcl
