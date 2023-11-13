vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../ip/ila_0/hdl/verilog" "+incdir+../../../../lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../ip/ila_0/hdl/verilog" \
"D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

