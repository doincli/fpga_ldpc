# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.cache/wt [current_project]
set_property parent.project_path C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/doinc/Desktop/my_ldpc [current_project]
set_property ip_output_repo c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/design_1/ip/design_1_top_test_0_0/my_code/coe/rom1.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/design_1/ip/design_1_top_test_0_0/my_code/coe/rom2.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/design_1/ip/design_1_top_test_0_0/my_code/coe/rom3.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/design_1/ip/design_1_top_test_0_0/my_code/coe/rom4.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/ip/top_test_0/my_code/coe/rom1.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/ip/top_test_0/my_code/coe/rom2.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/ip/top_test_0/my_code/coe/rom3.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/ip/top_test_0/my_code/coe/rom4.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/my_code/coe/rom1.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/my_code/coe/rom2.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/my_code/coe/rom3.coe
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/my_code/coe/rom4.coe
read_mem {
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/gt_rom_init_rx.dat
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/gt_rom_init_tx.dat
}
read_verilog -library xil_defaultlib {
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/hdl/ldpc_wrapper.v
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/support/lpdc_test_common.v
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/support/lpdc_test_common_reset.v
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/lpdc_test_gt_frame_gen.v
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/support/lpdc_test_gt_usrclk_source.v
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/support/lpdc_test_support.v
  C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/imports/example_design/lpdc_test_exdes.v
}
add_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ldpc.bd
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/H1/H1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/H2/H2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/h3/h3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/H4/H4_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ip/ldpc_ldpc_1_0_0/ldpc_fifo/ldpc_fifo.srcs/sources_1/ip/ila_0/ila_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/bd/ldpc/ldpc_ooc.xdc]

read_ip -quiet C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/ip/lpdc_test/lpdc_test.xci
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/ip/lpdc_test/lpdc_test.xdc]
set_property used_in_implementation false [get_files -all c:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/sources_1/ip/lpdc_test/lpdc_test_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/constrs_1/imports/example_design/lpdc_test_exdes.xdc
set_property used_in_implementation false [get_files C:/Users/doinc/Desktop/my_ldpc/lpdc_final_ex/lpdc_test_ex.srcs/constrs_1/imports/example_design/lpdc_test_exdes.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top lpdc_test_exdes -part xc7k325tffg900-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef lpdc_test_exdes.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file lpdc_test_exdes_utilization_synth.rpt -pb lpdc_test_exdes_utilization_synth.pb"
