vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../lpdc_test_ex.srcs/sources_1/ip/lpdc_test/lpdc_test_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

