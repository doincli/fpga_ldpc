//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Feb 21 01:32:13 2022
//Host        : LAPTOP-9P7C5HJO running 64-bit major release  (build 9200)
//Command     : generate_target ldpc_wrapper.bd
//Design      : ldpc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ldpc_wrapper
   (charisk_out,
    clk,
    data_gtx,
    ldpc_out,
    rst_n);
  output [1:0]charisk_out;
  input clk;
  input [15:0]data_gtx;
  output [15:0]ldpc_out;
  input rst_n;

  wire [1:0]charisk_out;
  wire clk;
  wire [15:0]data_gtx;
  wire [15:0]ldpc_out;
  wire rst_n;

  ldpc ldpc_i
       (.charisk_out(charisk_out),
        .clk(clk),
        .data_gtx(data_gtx),
        .ldpc_out(ldpc_out),
        .rst_n(rst_n));
endmodule
