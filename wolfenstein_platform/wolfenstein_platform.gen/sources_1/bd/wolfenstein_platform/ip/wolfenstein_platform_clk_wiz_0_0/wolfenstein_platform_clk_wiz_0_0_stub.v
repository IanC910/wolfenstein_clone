// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Feb 22 22:57:24 2024
// Host        : IC-VivoBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Ian/Projects/school/ensc452/wolfenstein_platform/wolfenstein_platform.gen/sources_1/bd/wolfenstein_platform/ip/wolfenstein_platform_clk_wiz_0_0/wolfenstein_platform_clk_wiz_0_0_stub.v
// Design      : wolfenstein_platform_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module wolfenstein_platform_clk_wiz_0_0(pixel_clk, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk,resetn,locked,clk_in1" */;
  output pixel_clk;
  input resetn;
  output locked;
  input clk_in1;
endmodule
