set_property SRC_FILE_INFO {cfile:e:/ldpc/fpga_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../../../lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:uut/ldpc_i/ldpc_1_0/inst/u1/fifo/inst} [current_design]
set_property SRC_FILE_INFO {cfile:E:/ldpc/fpga_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/constrs_1/imports/example_design/lpdc_test_exdes.xdc rfile:../../../lpdc_test_ex.srcs/constrs_1/imports/example_design/lpdc_test_exdes.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:3 order:LATE scoped_inst:uut/ldpc_i/ldpc_1_0/inst/u1/fifo_test/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:4 order:LATE scoped_inst:uut/ldpc_i/ldpc_1_0/inst/u1/fifo_test/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst unmanaged:yes} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
set_property src_info {type:XDC file:2 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G7 [get_ports Q2_CLK0_GTREFCLK_PAD_N_IN]
set_property src_info {type:XDC file:2 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G8 [get_ports Q2_CLK0_GTREFCLK_PAD_P_IN]
set_property src_info {type:XDC file:2 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD11 [get_ports DRP_CLK_IN_N]
set_property src_info {type:XDC file:2 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD12 [get_ports DRP_CLK_IN_P]
set_property src_info {type:XDC file:2 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTXE2_CHANNEL_X0Y8 [get_cells lpdc_test_support_i/lpdc_test_init_i/inst/lpdc_test_i/gt0_lpdc_test_i/gtxe2_i]
set_property src_info {type:XDC file:2 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y23 [get_ports TRACK_DATA_OUT]
current_instance uut/ldpc_i/ldpc_1_0/inst/u1/fifo_test/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:3 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
current_instance
current_instance uut/ldpc_i/ldpc_1_0/inst/u1/fifo_test/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:4 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
