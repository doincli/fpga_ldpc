vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/fpga/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode/example_design/decode_tx_startup_fsm.v" \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode/example_design/decode_rx_startup_fsm.v" \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode_init.v" \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode_cpll_railing.v" \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode_gt.v" \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode_multi_gt.v" \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode/example_design/decode_sync_block.v" \
"../../../../test_ldpc.srcs/sources_1/ip/decode/decode.v" \

vlog -work xil_defaultlib \
"glbl.v"

