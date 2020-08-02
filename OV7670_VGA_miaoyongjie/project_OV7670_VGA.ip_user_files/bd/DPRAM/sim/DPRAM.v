//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Jul 30 23:02:39 2020
//Host        : DESKTOP-DVPQBLI running 64-bit major release  (build 9200)
//Command     : generate_target DPRAM.bd
//Design      : DPRAM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DPRAM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DPRAM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "DPRAM.hwdef" *) 
module DPRAM
   (BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_din,
    BRAM_PORTA_en,
    BRAM_PORTA_we,
    BRAM_PORTB_addr,
    BRAM_PORTB_clk,
    BRAM_PORTB_dout,
    BRAM_PORTB_en);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [18:0]BRAM_PORTA_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input BRAM_PORTA_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]BRAM_PORTA_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input BRAM_PORTA_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]BRAM_PORTA_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [18:0]BRAM_PORTB_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) input BRAM_PORTB_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [11:0]BRAM_PORTB_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input BRAM_PORTB_en;

  wire [18:0]BRAM_PORTA_1_ADDR;
  wire BRAM_PORTA_1_CLK;
  wire [11:0]BRAM_PORTA_1_DIN;
  wire BRAM_PORTA_1_EN;
  wire [0:0]BRAM_PORTA_1_WE;
  wire [18:0]BRAM_PORTB_1_ADDR;
  wire BRAM_PORTB_1_CLK;
  wire [11:0]BRAM_PORTB_1_DOUT;
  wire BRAM_PORTB_1_EN;

  assign BRAM_PORTA_1_ADDR = BRAM_PORTA_addr[18:0];
  assign BRAM_PORTA_1_CLK = BRAM_PORTA_clk;
  assign BRAM_PORTA_1_DIN = BRAM_PORTA_din[11:0];
  assign BRAM_PORTA_1_EN = BRAM_PORTA_en;
  assign BRAM_PORTA_1_WE = BRAM_PORTA_we[0];
  assign BRAM_PORTB_1_ADDR = BRAM_PORTB_addr[18:0];
  assign BRAM_PORTB_1_CLK = BRAM_PORTB_clk;
  assign BRAM_PORTB_1_EN = BRAM_PORTB_en;
  assign BRAM_PORTB_dout[11:0] = BRAM_PORTB_1_DOUT;
  DPRAM_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(BRAM_PORTA_1_ADDR),
        .addrb(BRAM_PORTB_1_ADDR),
        .clka(BRAM_PORTA_1_CLK),
        .clkb(BRAM_PORTB_1_CLK),
        .dina(BRAM_PORTA_1_DIN),
        .doutb(BRAM_PORTB_1_DOUT),
        .ena(BRAM_PORTA_1_EN),
        .enb(BRAM_PORTB_1_EN),
        .wea(BRAM_PORTA_1_WE));
endmodule
