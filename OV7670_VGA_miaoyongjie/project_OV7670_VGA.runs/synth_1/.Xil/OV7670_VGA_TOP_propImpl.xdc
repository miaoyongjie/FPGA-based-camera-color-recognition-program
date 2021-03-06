set_property SRC_FILE_INFO {cfile:{c:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc} rfile:../../../project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:CLK/CLK_CVT/CLK_i/clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:{C:/Vivado/NEXYS 4 DDR_Project/OV7670_VGA/OV7670_VGA_RGB/project_1.srcs/constrs_1/new/pinset.xdc} rfile:../../../project_1.srcs/constrs_1/new/pinset.xdc id:2} [current_design]
current_instance CLK/CLK_CVT/CLK_i/clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
current_instance
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  N17  [get_ports {BTN_UP}]
set_property src_info {type:XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E3 [get_ports {CLK100M}]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B12  [get_ports {VSYNC}]
set_property src_info {type:XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B11  [get_ports {HSYNC}]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A13   [get_ports {R[0]}]
set_property src_info {type:XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN    B4 [get_ports {R[1]}]
set_property src_info {type:XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   C5 [get_ports {R[2]}]
set_property src_info {type:XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   A4 [get_ports {R[3]}]
set_property src_info {type:XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C6   [get_ports {G[0]}]
set_property src_info {type:XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   A5  [get_ports {G[1]}]
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   B6  [get_ports {G[2]}]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   A6  [get_ports {G[3]}]
set_property src_info {type:XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   B7  [get_ports {B[0]}]
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   C7  [get_ports {B[1]}]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   D7  [get_ports {B[2]}]
set_property src_info {type:XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN   D8  [get_ports {B[3]}]
set_property src_info {type:XDC file:2 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  K1    IOSTANDARD LVCMOS33}           [get_ports OV7670_PWDN ]
set_property src_info {type:XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  F6  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[0] ]
set_property src_info {type:XDC file:2 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  J2  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[2] ]
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  G6  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[4] ]
set_property src_info {type:XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  E7  IOSTANDARD LVCMOS33}           [get_ports OV7670_RESET ]
set_property src_info {type:XDC file:2 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  J3  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[1] ]
set_property src_info {type:XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN   J4  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[3] ]
set_property src_info {type:XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  E6  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[5] ]
set_property src_info {type:XDC file:2 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  H4  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[6] ]
set_property src_info {type:XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  H1  IOSTANDARD LVCMOS33}           [get_ports OV7670_XCLK ]
set_property src_info {type:XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  G1  IOSTANDARD LVCMOS33}           [get_ports OV7670_HREF ]
set_property src_info {type:XDC file:2 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  G3   IOSTANDARD LVCMOS33}           [get_ports OV7670_SIOD ]
set_property src_info {type:XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  H2  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[7] ]
set_property src_info {type:XDC file:2 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  G4  IOSTANDARD LVCMOS33}           [get_ports OV7670_PCLK ]
set_property src_info {type:XDC file:2 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  G2  IOSTANDARD LVCMOS33}           [get_ports OV7670_VSYNC ]
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  F3  IOSTANDARD LVCMOS33}           [get_ports OV7670_SIOC ]
set_property src_info {type:XDC file:2 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK_IBUF]
set_property src_info {type:XDC file:2 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  H17  IOSTANDARD LVCMOS33}           [get_ports ERROR_LED ]
