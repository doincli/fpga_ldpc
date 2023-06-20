vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../test_ldpc.srcs/sources_1/ip/ila_0_2/hdl/verilog" "+incdir+../../../../test_ldpc.srcs/sources_1/ip/ila_0_2/hdl/verilog" \
"D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_ldpc.srcs/sources_1/ip/ila_0_2/hdl/verilog" "+incdir+../../../../test_ldpc.srcs/sources_1/ip/ila_0_2/hdl/verilog" \
"../../../../test_ldpc.srcs/sources_1/ip/ila_0_2/sim/ila_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

