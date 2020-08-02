//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Jul 31 05:51:05 2020
//Host        : DESKTOP-DVPQBLI running 64-bit major release  (build 9200)
//Command     : generate_target CLK_wrapper.bd
//Design      : CLK_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CLK_wrapper
   (clk_in1,
    clk_out1,
    locked);
  input clk_in1;
  output clk_out1;
  output locked;

  wire clk_in1;
  wire clk_out1;
  wire locked;

  CLK CLK_i
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked));
endmodule
