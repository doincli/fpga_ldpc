// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Jun  3 03:02:33 2022
// Host        : LAPTOP-9P7C5HJO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/doinc/Desktop/decode_final_test/test_ldpc_5tongdao/test_ldpc.srcs/sources_1/ip/H1_4/H1_4_stub.v
// Design      : H1_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2017.4" *)
module H1_4(a, clk, spo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],clk,spo[1023:0]" */;
  input [3:0]a;
  input clk;
  output [1023:0]spo;
endmodule
