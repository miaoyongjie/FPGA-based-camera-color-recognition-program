//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Jul 30 23:02:39 2020
//Host        : DESKTOP-DVPQBLI running 64-bit major release  (build 9200)
//Command     : generate_target CLK.bd
//Design      : CLK
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CLK,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CLK,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "CLK.hwdef" *) 
module CLK
   (clk_in1,
    clk_out1,
    locked);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1, CLK_DOMAIN CLK_clk_in1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out1;
  output locked;

  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;

  assign clk_in1_1 = clk_in1;
  assign clk_out1 = clk_wiz_0_clk_out1;
  assign locked = clk_wiz_0_locked;
  CLK_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked));
endmodule
