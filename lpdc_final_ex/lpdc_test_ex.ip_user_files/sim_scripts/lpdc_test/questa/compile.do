vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../lpdc_test_ex.srcs/sources_1/ip/lpdc_test/lpdc_test_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

