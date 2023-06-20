//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat Feb 19 19:48:21 2022
//Host        : LAPTOP-9P7C5HJO running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module data_control
   (charisk_out,
    clk,
    data_gtx,
    ldpc_out,
    rst);
  output [1:0]charisk_out;
  input clk;
  input [15:0]data_gtx;
  output [15:0]ldpc_out;
  input rst;

  wire [1:0]charisk_out;
  wire clk;
  wire [15:0]data_gtx;
  wire [15:0]ldpc_out;
  wire rst;

  design_1 design_1_i
       (.charisk_out(charisk_out),
        .clk(clk),
        .data_gtx(data_gtx),
        .ldpc_out(ldpc_out),
        .rst(rst));
endmodule
