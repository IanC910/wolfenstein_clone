// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar  4 04:14:38 2024
// Host        : IC-VivoBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw/audio_hw.gen/sources_1/bd/audio_hw_platform/ip/audio_hw_platform_audio_fetcher_0_0/audio_hw_platform_audio_fetcher_0_0_stub.v
// Design      : audio_hw_platform_audio_fetcher_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "audio_fetcher_v1_0,Vivado 2020.2" *)
module audio_hw_platform_audio_fetcher_0_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, 
  s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, 
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, 
  m_axi_audio_out_init_axi_txn, m_axi_audio_out_error, m_axi_audio_out_txn_done, 
  m_axi_audio_out_aclk, m_axi_audio_out_aresetn, m_axi_audio_out_awaddr, 
  m_axi_audio_out_awprot, m_axi_audio_out_awvalid, m_axi_audio_out_awready, 
  m_axi_audio_out_wdata, m_axi_audio_out_wstrb, m_axi_audio_out_wvalid, 
  m_axi_audio_out_wready, m_axi_audio_out_bresp, m_axi_audio_out_bvalid, 
  m_axi_audio_out_bready, m_axi_audio_out_araddr, m_axi_audio_out_arprot, 
  m_axi_audio_out_arvalid, m_axi_audio_out_arready, m_axi_audio_out_rdata, 
  m_axi_audio_out_rresp, m_axi_audio_out_rvalid, m_axi_audio_out_rready, m_axi_dma_aclk, 
  m_axi_dma_aresetn, m_axi_dma_awid, m_axi_dma_awaddr, m_axi_dma_awlen, m_axi_dma_awsize, 
  m_axi_dma_awburst, m_axi_dma_awlock, m_axi_dma_awcache, m_axi_dma_awprot, 
  m_axi_dma_awqos, m_axi_dma_awuser, m_axi_dma_awvalid, m_axi_dma_awready, m_axi_dma_wdata, 
  m_axi_dma_wstrb, m_axi_dma_wlast, m_axi_dma_wuser, m_axi_dma_wvalid, m_axi_dma_wready, 
  m_axi_dma_bid, m_axi_dma_bresp, m_axi_dma_buser, m_axi_dma_bvalid, m_axi_dma_bready, 
  m_axi_dma_arid, m_axi_dma_araddr, m_axi_dma_arlen, m_axi_dma_arsize, m_axi_dma_arburst, 
  m_axi_dma_arlock, m_axi_dma_arcache, m_axi_dma_arprot, m_axi_dma_arqos, m_axi_dma_aruser, 
  m_axi_dma_arvalid, m_axi_dma_arready, m_axi_dma_rid, m_axi_dma_rdata, m_axi_dma_rresp, 
  m_axi_dma_rlast, m_axi_dma_ruser, m_axi_dma_rvalid, m_axi_dma_rready)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awaddr[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,m_axi_audio_out_init_axi_txn,m_axi_audio_out_error,m_axi_audio_out_txn_done,m_axi_audio_out_aclk,m_axi_audio_out_aresetn,m_axi_audio_out_awaddr[31:0],m_axi_audio_out_awprot[2:0],m_axi_audio_out_awvalid,m_axi_audio_out_awready,m_axi_audio_out_wdata[31:0],m_axi_audio_out_wstrb[3:0],m_axi_audio_out_wvalid,m_axi_audio_out_wready,m_axi_audio_out_bresp[1:0],m_axi_audio_out_bvalid,m_axi_audio_out_bready,m_axi_audio_out_araddr[31:0],m_axi_audio_out_arprot[2:0],m_axi_audio_out_arvalid,m_axi_audio_out_arready,m_axi_audio_out_rdata[31:0],m_axi_audio_out_rresp[1:0],m_axi_audio_out_rvalid,m_axi_audio_out_rready,m_axi_dma_aclk,m_axi_dma_aresetn,m_axi_dma_awid[1:0],m_axi_dma_awaddr[31:0],m_axi_dma_awlen[7:0],m_axi_dma_awsize[2:0],m_axi_dma_awburst[1:0],m_axi_dma_awlock,m_axi_dma_awcache[3:0],m_axi_dma_awprot[2:0],m_axi_dma_awqos[3:0],m_axi_dma_awuser[0:0],m_axi_dma_awvalid,m_axi_dma_awready,m_axi_dma_wdata[31:0],m_axi_dma_wstrb[3:0],m_axi_dma_wlast,m_axi_dma_wuser[0:0],m_axi_dma_wvalid,m_axi_dma_wready,m_axi_dma_bid[1:0],m_axi_dma_bresp[1:0],m_axi_dma_buser[0:0],m_axi_dma_bvalid,m_axi_dma_bready,m_axi_dma_arid[1:0],m_axi_dma_araddr[31:0],m_axi_dma_arlen[7:0],m_axi_dma_arsize[2:0],m_axi_dma_arburst[1:0],m_axi_dma_arlock,m_axi_dma_arcache[3:0],m_axi_dma_arprot[2:0],m_axi_dma_arqos[3:0],m_axi_dma_aruser[0:0],m_axi_dma_arvalid,m_axi_dma_arready,m_axi_dma_rid[1:0],m_axi_dma_rdata[31:0],m_axi_dma_rresp[1:0],m_axi_dma_rlast,m_axi_dma_ruser[0:0],m_axi_dma_rvalid,m_axi_dma_rready" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [3:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_audio_out_init_axi_txn;
  output m_axi_audio_out_error;
  output m_axi_audio_out_txn_done;
  input m_axi_audio_out_aclk;
  input m_axi_audio_out_aresetn;
  output [31:0]m_axi_audio_out_awaddr;
  output [2:0]m_axi_audio_out_awprot;
  output m_axi_audio_out_awvalid;
  input m_axi_audio_out_awready;
  output [31:0]m_axi_audio_out_wdata;
  output [3:0]m_axi_audio_out_wstrb;
  output m_axi_audio_out_wvalid;
  input m_axi_audio_out_wready;
  input [1:0]m_axi_audio_out_bresp;
  input m_axi_audio_out_bvalid;
  output m_axi_audio_out_bready;
  output [31:0]m_axi_audio_out_araddr;
  output [2:0]m_axi_audio_out_arprot;
  output m_axi_audio_out_arvalid;
  input m_axi_audio_out_arready;
  input [31:0]m_axi_audio_out_rdata;
  input [1:0]m_axi_audio_out_rresp;
  input m_axi_audio_out_rvalid;
  output m_axi_audio_out_rready;
  input m_axi_dma_aclk;
  input m_axi_dma_aresetn;
  output [1:0]m_axi_dma_awid;
  output [31:0]m_axi_dma_awaddr;
  output [7:0]m_axi_dma_awlen;
  output [2:0]m_axi_dma_awsize;
  output [1:0]m_axi_dma_awburst;
  output m_axi_dma_awlock;
  output [3:0]m_axi_dma_awcache;
  output [2:0]m_axi_dma_awprot;
  output [3:0]m_axi_dma_awqos;
  output [0:0]m_axi_dma_awuser;
  output m_axi_dma_awvalid;
  input m_axi_dma_awready;
  output [31:0]m_axi_dma_wdata;
  output [3:0]m_axi_dma_wstrb;
  output m_axi_dma_wlast;
  output [0:0]m_axi_dma_wuser;
  output m_axi_dma_wvalid;
  input m_axi_dma_wready;
  input [1:0]m_axi_dma_bid;
  input [1:0]m_axi_dma_bresp;
  input [0:0]m_axi_dma_buser;
  input m_axi_dma_bvalid;
  output m_axi_dma_bready;
  output [1:0]m_axi_dma_arid;
  output [31:0]m_axi_dma_araddr;
  output [7:0]m_axi_dma_arlen;
  output [2:0]m_axi_dma_arsize;
  output [1:0]m_axi_dma_arburst;
  output m_axi_dma_arlock;
  output [3:0]m_axi_dma_arcache;
  output [2:0]m_axi_dma_arprot;
  output [3:0]m_axi_dma_arqos;
  output [0:0]m_axi_dma_aruser;
  output m_axi_dma_arvalid;
  input m_axi_dma_arready;
  input [1:0]m_axi_dma_rid;
  input [31:0]m_axi_dma_rdata;
  input [1:0]m_axi_dma_rresp;
  input m_axi_dma_rlast;
  input [0:0]m_axi_dma_ruser;
  input m_axi_dma_rvalid;
  output m_axi_dma_rready;
endmodule
