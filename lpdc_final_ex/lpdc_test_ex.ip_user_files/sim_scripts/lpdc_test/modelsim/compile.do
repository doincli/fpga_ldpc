vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../lpdc_test_ex.srcs/sources_1/ip/lpdc_test/lpdc_test_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

