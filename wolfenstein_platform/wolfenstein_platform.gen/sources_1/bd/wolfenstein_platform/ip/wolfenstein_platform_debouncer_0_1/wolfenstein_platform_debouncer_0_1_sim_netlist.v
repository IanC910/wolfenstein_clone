// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 12 23:40:38 2024
// Host        : IC-VivoBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform.gen/sources_1/bd/wolfenstein_platform/ip/wolfenstein_platform_debouncer_0_1/wolfenstein_platform_debouncer_0_1_sim_netlist.v
// Design      : wolfenstein_platform_debouncer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "wolfenstein_platform_debouncer_0_1,debouncer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "debouncer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module wolfenstein_platform_debouncer_0_1
   (clk,
    BUTTONS,
    debounced_BTNS);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [4:0]BUTTONS;
  output [4:0]debounced_BTNS;

  wire [4:0]BUTTONS;
  wire clk;
  wire [4:0]debounced_BTNS;

  wolfenstein_platform_debouncer_0_1_debouncer U0
       (.BUTTONS(BUTTONS),
        .clk(clk),
        .debounced_BTNS(debounced_BTNS));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module wolfenstein_platform_debouncer_0_1_debouncer
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
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire [21:5]count_reg;
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
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
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
  wire [4:0]r0;
  wire [4:0]r1;
  wire [3:1]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[20]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_4_n_0 ),
        .I1(r1[3]),
        .I2(r0[3]),
        .I3(r1[4]),
        .I4(r0[4]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000BFFFFFFFFF)) 
    \count[0]_i_2 
       (.I0(\count[0]_i_5_n_0 ),
        .I1(count_reg[18]),
        .I2(count_reg[17]),
        .I3(count_reg[19]),
        .I4(count_reg[20]),
        .I5(count_reg[21]),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \count[0]_i_4 
       (.I0(r1[1]),
        .I1(r0[1]),
        .I2(r1[2]),
        .I3(r0[2]),
        .I4(r0[0]),
        .I5(r1[0]),
        .O(\count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h222A2222)) 
    \count[0]_i_5 
       (.I0(\debounced_BTNS[4]_i_4_n_0 ),
        .I1(count_reg[13]),
        .I2(count_reg[12]),
        .I3(count_reg[11]),
        .I4(\debounced_BTNS[4]_i_3_n_0 ),
        .O(\count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_6_n_0 ));
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
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_6_n_0 }));
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
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
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
    \count_reg[19] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
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
    \count_reg[20] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_reg[20]_i_1_CO_UNCONNECTED [3:1],\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1_O_UNCONNECTED [3:2],\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,count_reg[21:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
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
  LUT5 #(
    .INIT(32'h44404444)) 
    \debounced_BTNS[4]_i_1 
       (.I0(\count[0]_i_1_n_0 ),
        .I1(count_reg[21]),
        .I2(count_reg[20]),
        .I3(count_reg[19]),
        .I4(\debounced_BTNS[4]_i_2_n_0 ),
        .O(\debounced_BTNS[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02FF0000)) 
    \debounced_BTNS[4]_i_2 
       (.I0(\debounced_BTNS[4]_i_3_n_0 ),
        .I1(count_reg[11]),
        .I2(count_reg[12]),
        .I3(count_reg[13]),
        .I4(\debounced_BTNS[4]_i_4_n_0 ),
        .I5(\debounced_BTNS[4]_i_5_n_0 ),
        .O(\debounced_BTNS[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01555555FFFFFFFF)) 
    \debounced_BTNS[4]_i_3 
       (.I0(count_reg[9]),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(count_reg[8]),
        .I4(count_reg[7]),
        .I5(count_reg[10]),
        .O(\debounced_BTNS[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \debounced_BTNS[4]_i_4 
       (.I0(count_reg[16]),
        .I1(count_reg[15]),
        .I2(count_reg[14]),
        .O(\debounced_BTNS[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \debounced_BTNS[4]_i_5 
       (.I0(count_reg[17]),
        .I1(count_reg[18]),
        .O(\debounced_BTNS[4]_i_5_n_0 ));
  FDRE \debounced_BTNS_reg[0] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(r1[0]),
        .Q(debounced_BTNS[0]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[1] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(r1[1]),
        .Q(debounced_BTNS[1]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[2] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(r1[2]),
        .Q(debounced_BTNS[2]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[3] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(r1[3]),
        .Q(debounced_BTNS[3]),
        .R(1'b0));
  FDRE \debounced_BTNS_reg[4] 
       (.C(clk),
        .CE(\debounced_BTNS[4]_i_1_n_0 ),
        .D(r1[4]),
        .Q(debounced_BTNS[4]),
        .R(1'b0));
  FDRE \r0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[0]),
        .Q(r0[0]),
        .R(1'b0));
  FDRE \r0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[1]),
        .Q(r0[1]),
        .R(1'b0));
  FDRE \r0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[2]),
        .Q(r0[2]),
        .R(1'b0));
  FDRE \r0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[3]),
        .Q(r0[3]),
        .R(1'b0));
  FDRE \r0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(BUTTONS[4]),
        .Q(r0[4]),
        .R(1'b0));
  FDRE \r1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(r0[0]),
        .Q(r1[0]),
        .R(1'b0));
  FDRE \r1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(r0[1]),
        .Q(r1[1]),
        .R(1'b0));
  FDRE \r1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(r0[2]),
        .Q(r1[2]),
        .R(1'b0));
  FDRE \r1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(r0[3]),
        .Q(r1[3]),
        .R(1'b0));
  FDRE \r1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(r0[4]),
        .Q(r1[4]),
        .R(1'b0));
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
