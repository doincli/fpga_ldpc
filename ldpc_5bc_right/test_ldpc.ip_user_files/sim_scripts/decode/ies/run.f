-makelib ies_lib/xil_defaultlib -sv \
  "D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode/example_design/decode_tx_startup_fsm.v" \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode/example_design/decode_rx_startup_fsm.v" \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode_init.v" \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode_cpll_railing.v" \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode_gt.v" \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode_multi_gt.v" \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode/example_design/decode_sync_block.v" \
  "../../../../test_ldpc.srcs/sources_1/ip/decode/decode.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

