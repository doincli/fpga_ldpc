// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 12 09:32:59 2022
// Host        : LAPTOP-9P7C5HJO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/doinc/Desktop/test_ldpc_2gai/test_ldpc.srcs/sources_1/ip/decode_ila/decode_ila_stub.v
// Design      : decode_ila
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2017.4" *)
module decode_ila(clk, probe0, probe1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[3:0],probe1[511:0]" */;
  input clk;
  input [3:0]probe0;
  input [511:0]probe1;
endmodule
