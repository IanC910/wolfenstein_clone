// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 12 23:40:38 2024
// Host        : IC-VivoBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform.gen/sources_1/bd/wolfenstein_platform/ip/wolfenstein_platform_debouncer_0_1/wolfenstein_platform_debouncer_0_1_stub.v
// Design      : wolfenstein_platform_debouncer_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "debouncer,Vivado 2020.2" *)
module wolfenstein_platform_debouncer_0_1(clk, BUTTONS, debounced_BTNS)
/* synthesis syn_black_box black_box_pad_pin="clk,BUTTONS[4:0],debounced_BTNS[4:0]" */;
  input clk;
  input [4:0]BUTTONS;
  output [4:0]debounced_BTNS;
endmodule
