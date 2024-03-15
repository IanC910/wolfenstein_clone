// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar  4 14:21:46 2024
// Host        : DESKTOP-DO8VOE2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ wolfenstein_platform_debouncer_0_0_sim_netlist.v
// Design      : wolfenstein_platform_debouncer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer
   (debounced_BTNS,
    BUTTONS,
    clk);
  output [4:0]debounced_BTNS;
  input [4:0]BUTTONS;
  input clk;

  wire [4:0]BUTTONS;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire [18:5]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]debounced_BTNS;
  wire \debounced_BTNS[4]_i_1_n_0 ;
  wire \debounced_BTNS[4]_i_2_n_0 ;
  wire \debounced_BTNS[4]_i_3_n_0 ;
  wire \debounced_BTNS[4]_i_4_n_0 ;
  wire \debounced_BTNS[4]_i_5_n_0 ;
  wire \debounced_BTNS[4]_i_6_n_0 ;
  wire \debounced_BTNS[4]_i_7_n_0 ;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire \r0_reg_n_0_[0] ;
  wire \r0_reg_n_0_[4] ;
  wire \r1_reg_n_0_[0] ;
  wire \r1_reg_n_0_[4] ;
  wire [3:2]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \count[0]_i_1 
       (.I0(\debounced_BTNS[4]_i_3_n_0 ),
        .I1(p_6_in),
        .I2(p_7_in),
        .I3(\r1_reg_n_0_[4] ),
        .I4(\r0_reg_n_0_[4] ),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8FFF)) 
    \count[0]_i_2 
       (.I0(\debounced_BTNS[4]_i_7_n_0 ),
        .I1(\debounced_BTNS[4]_i_6_n_0 ),
        .I2(count_reg[17]),
        .I3(count_reg[18]),
        .I4(\debounced_BTNS[4]_i_4_n_0 ),
        .O(\count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:2],\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3],\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({1'b0,count_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({count_reg[7:5],\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \debounced_BTNS[4]_i_1 
       (.I0(\debounced_BTNS[4]_i_2_n_0 ),
        .I1(\debounced_BTNS[4]_i_3_n_0 ),
        .I2(\debounced_BTNS[4]_i_4_n_0 ),
        .I3(\debounced_BTNS[4]_i_5_n_0 ),
        .I4(\debounced_BTNS[4]_i_6_n_0 ),
        .I5(\debounced_BTNS[4]_i_7_n_0 ),
        .O(\debounced_BTNS[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \debounced_BTNS[4]_i_2 
       (.I0(\r0_reg_n_0_[4] ),
        .I1(\r1_reg_n_0_[4] ),
        .I2(p_7_in),
        .I3(p_6_in),
        .O(\debounced_BTNS[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \debounced_BTNS[4]_i_3 
       (.I0(p_2_in),
        .I1(p_3_in),
        .I2(p_4_in),
        .I3(p_5_in),
        .I4(\r0_reg_n_0_[0] ),
        .I5(\r1_reg_n_0_[0] ),
        .O(\debounced_BTNS[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \debounced_BTNS[4]_i_4 
       (.I0(count_reg[16]),
        .I1(count_reg[15]),
        .I2(count_reg[13]),
        .I3(count_reg[14]),
        .O(\debounced_BTNS[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \debounced_BTNS[4]_i_5 
       (.I0(count_reg[17]),
        .I1(count_reg[18]),
        .O(\debounced_BTNS[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \debounced_BTNS[4]_i_6 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(count_reg[8]),
        .O(\debounced_BTNS[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \debounced_BTNS[4]_i_7 
       (.I0(count_reg[14]),
        .I1(count_reg[9]),
        .I2(count_reg[10]),
        .I3(count_reg[12]),
        .I4(count_reg[11]),
        .O(\debounced_BTNS[4]_i_7_n_0 ));
  FDRE \debounced_BTNS_reg[0] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(\r1_reg_n_0_[0] ),
        .Q(debounced_BTNS[0]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[1] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(p_2_in),
        .Q(debounced_BTNS[1]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[2] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(p_4_in),
        .Q(debounced_BTNS[2]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[3] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(p_6_in),
        .Q(debounced_BTNS[3]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[4] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(\r1_reg_n_0_[4] ),
        .Q(debounced_BTNS[4]),
        .R(1'b0));
  FDRE \r0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[0]),
        .Q(\r0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[1]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \r0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[2]),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \r0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[3]),
        .Q(p_7_in),
        .R(1'b0));
  FDRE \r0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[4]),
        .Q(\r0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \r1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r0_reg_n_0_[0] ),
        .Q(\r1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \r1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_5_in),
        .Q(p_4_in),
        .R(1'b0));
  FDRE \r1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_7_in),
        .Q(p_6_in),
        .R(1'b0));
  FDRE \r1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r0_reg_n_0_[4] ),
        .Q(\r1_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "wolfenstein_platform_debouncer_0_0,debouncer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "debouncer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    BUTTONS,
    debounced_BTNS);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [4:0]BUTTONS;
  output [4:0]debounced_BTNS;

  wire [4:0]BUTTONS;
  wire clk;
  wire [4:0]debounced_BTNS;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer U0
       (.BUTTONS(BUTTONS),
        .clk(clk),
        .debounced_BTNS(debounced_BTNS));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
