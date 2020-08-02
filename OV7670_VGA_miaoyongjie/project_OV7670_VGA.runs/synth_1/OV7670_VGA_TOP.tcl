# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.cache/wt} [current_project]
set_property parent.project_path {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/CAPTURE.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/imports/hdl/CLK_wrapper.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/imports/hdl/DPRAM_wrapper.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/cfg_ov.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/cfg_regs.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/clock_convert.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/debounce.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/my_vga_syn.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/sccb_sender.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/vga_dpram.v}
  {C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/new/OV7670_TOP.v}
}
add_files {{C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/DPRAM/DPRAM.bd}}
set_property used_in_implementation false [get_files -all {{c:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/DPRAM/ip/DPRAM_blk_mem_gen_0_0/DPRAM_blk_mem_gen_0_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/DPRAM/DPRAM_ooc.xdc}}]

add_files {{C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/CLK/CLK.bd}}
set_property used_in_implementation false [get_files -all {{c:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/CLK/CLK_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/constrs_1/new/pinset.xdc}}
set_property used_in_implementation false [get_files {{C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/constrs_1/new/pinset.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top OV7670_VGA_TOP -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef OV7670_VGA_TOP.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file OV7670_VGA_TOP_utilization_synth.rpt -pb OV7670_VGA_TOP_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
