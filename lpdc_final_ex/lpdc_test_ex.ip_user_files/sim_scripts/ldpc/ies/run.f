-makelib ies_lib/xil_defaultlib -sv \
  "D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/H1/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/H1/sim/H1.v" \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/H2/sim/H2.v" \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/h3/sim/h3.v" \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/H4/sim/H4.v" \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/ila_0/sim/ila_0.v" \
  "../../../bd/ldpc/ipshared/3f9f/ldpc_fifo/ldpc_fifo.srcs/sources_1/imports/Desktop/encode.v" \
  "../../../bd/ldpc/ipshared/3f9f/ldpc_fifo/ldpc_fifo.srcs/sources_1/imports/new/fifo_control.v" \
  "../../../bd/ldpc/ipshared/3f9f/ldpc_fifo/ldpc_fifo.srcs/sources_1/imports/code/ldpc.v" \
  "../../../bd/ldpc/ipshared/3f9f/ldpc_fifo/ldpc_fifo.srcs/sources_1/new/top_test.v" \
  "../../../bd/ldpc/ip/ldpc_ldpc_1_0_0/sim/ldpc_ldpc_1_0_0.v" \
  "../../../bd/ldpc/sim/ldpc.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

