//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat Feb 19 19:48:21 2022
//Host        : LAPTOP-9P7C5HJO running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (charisk_out,
    clk,
    data_gtx,
    ldpc_out,
    rst);
  output [1:0]charisk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input [15:0]data_gtx;
  output [15:0]ldpc_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW" *) input rst;

  wire clk_0_1;
  wire [15:0]data_gtx_0_1;
  wire rst_n_0_1;
  wire [1:0]top_test_0_charisk_out;
  wire [15:0]top_test_0_ldpc_out;

  assign charisk_out[1:0] = top_test_0_charisk_out;
  assign clk_0_1 = clk;
  assign data_gtx_0_1 = data_gtx[15:0];
  assign ldpc_out[15:0] = top_test_0_ldpc_out;
  assign rst_n_0_1 = rst;
  design_1_top_test_0_0 top_test_0
       (.charisk_out(top_test_0_charisk_out),
        .clk(clk_0_1),
        .data_gtx(data_gtx_0_1),
        .ldpc_out(top_test_0_ldpc_out),
        .rst_n(rst_n_0_1));
endmodule
