set_property SRC_FILE_INFO {cfile:{c:/Users/51249/Documents/Tencent Files/512491013/FileRecv/Camera_RGB_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc} rfile:../Camera_Demo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:clk_10/inst} [current_design]
set_property SRC_FILE_INFO {cfile:{c:/Users/51249/Documents/Tencent Files/512491013/FileRecv/Camera_RGB_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc} rfile:../Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc id:2 order:EARLY scoped_inst:MIPI_Trans_Driver/camera_clock/inst} [current_design]
current_instance clk_10/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
current_instance
current_instance MIPI_Trans_Driver/camera_clock/inst
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
