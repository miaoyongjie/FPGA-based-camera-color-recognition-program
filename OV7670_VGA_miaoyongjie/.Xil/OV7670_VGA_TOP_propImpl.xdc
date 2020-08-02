set_property SRC_FILE_INFO {cfile:{c:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc} rfile:../project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:CLK/CLK_CVT/CLK_i/clk_wiz_0/inst} [current_design]
current_instance CLK/CLK_CVT/CLK_i/clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
