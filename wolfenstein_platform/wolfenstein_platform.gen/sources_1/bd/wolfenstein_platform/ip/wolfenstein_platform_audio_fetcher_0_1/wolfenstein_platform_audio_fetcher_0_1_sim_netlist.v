// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr  6 07:15:55 2024
// Host        : IC-VivoBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform.gen/sources_1/bd/wolfenstein_platform/ip/wolfenstein_platform_audio_fetcher_0_1/wolfenstein_platform_audio_fetcher_0_1_sim_netlist.v
// Design      : wolfenstein_platform_audio_fetcher_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "wolfenstein_platform_audio_fetcher_0_1,audio_fetcher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "audio_fetcher,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module wolfenstein_platform_audio_fetcher_0_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_audio_out_aclk,
    m_axi_audio_out_aresetn,
    m_axi_audio_out_awaddr,
    m_axi_audio_out_awprot,
    m_axi_audio_out_awvalid,
    m_axi_audio_out_awready,
    m_axi_audio_out_wdata,
    m_axi_audio_out_wstrb,
    m_axi_audio_out_wvalid,
    m_axi_audio_out_wready,
    m_axi_audio_out_bresp,
    m_axi_audio_out_bvalid,
    m_axi_audio_out_bready,
    m_axi_audio_out_araddr,
    m_axi_audio_out_arprot,
    m_axi_audio_out_arvalid,
    m_axi_audio_out_arready,
    m_axi_audio_out_rdata,
    m_axi_audio_out_rresp,
    m_axi_audio_out_rvalid,
    m_axi_audio_out_rready,
    m_axi_dma_aclk,
    m_axi_dma_aresetn,
    m_axi_dma_awid,
    m_axi_dma_awaddr,
    m_axi_dma_awlen,
    m_axi_dma_awsize,
    m_axi_dma_awburst,
    m_axi_dma_awlock,
    m_axi_dma_awcache,
    m_axi_dma_awprot,
    m_axi_dma_awqos,
    m_axi_dma_awuser,
    m_axi_dma_awvalid,
    m_axi_dma_awready,
    m_axi_dma_wdata,
    m_axi_dma_wstrb,
    m_axi_dma_wlast,
    m_axi_dma_wuser,
    m_axi_dma_wvalid,
    m_axi_dma_wready,
    m_axi_dma_bid,
    m_axi_dma_bresp,
    m_axi_dma_buser,
    m_axi_dma_bvalid,
    m_axi_dma_bready,
    m_axi_dma_arid,
    m_axi_dma_araddr,
    m_axi_dma_arlen,
    m_axi_dma_arsize,
    m_axi_dma_arburst,
    m_axi_dma_arlock,
    m_axi_dma_arcache,
    m_axi_dma_arprot,
    m_axi_dma_arqos,
    m_axi_dma_aruser,
    m_axi_dma_arvalid,
    m_axi_dma_arready,
    m_axi_dma_rid,
    m_axi_dma_rdata,
    m_axi_dma_rresp,
    m_axi_dma_rlast,
    m_axi_dma_ruser,
    m_axi_dma_rvalid,
    m_axi_dma_rready,
    debug_data_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axi_audio_out_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_audio_out_aclk, ASSOCIATED_BUSIF m_axi_audio_out, ASSOCIATED_RESET m_axi_audio_out_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *) input m_axi_audio_out_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_axi_audio_out_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_audio_out_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_audio_out_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_audio_out, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_audio_out_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWPROT" *) output [2:0]m_axi_audio_out_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWVALID" *) output m_axi_audio_out_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWREADY" *) input m_axi_audio_out_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WDATA" *) output [31:0]m_axi_audio_out_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WSTRB" *) output [3:0]m_axi_audio_out_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WVALID" *) output m_axi_audio_out_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WREADY" *) input m_axi_audio_out_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out BRESP" *) input [1:0]m_axi_audio_out_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out BVALID" *) input m_axi_audio_out_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out BREADY" *) output m_axi_audio_out_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARADDR" *) output [31:0]m_axi_audio_out_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARPROT" *) output [2:0]m_axi_audio_out_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARVALID" *) output m_axi_audio_out_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARREADY" *) input m_axi_audio_out_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RDATA" *) input [31:0]m_axi_audio_out_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RRESP" *) input [1:0]m_axi_audio_out_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RVALID" *) input m_axi_audio_out_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RREADY" *) output m_axi_audio_out_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axi_dma_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_dma_aclk, ASSOCIATED_BUSIF m_axi_dma, ASSOCIATED_RESET m_axi_dma_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *) input m_axi_dma_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_axi_dma_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_dma_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_dma_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_dma, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]m_axi_dma_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWADDR" *) output [31:0]m_axi_dma_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWLEN" *) output [7:0]m_axi_dma_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWSIZE" *) output [2:0]m_axi_dma_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWBURST" *) output [1:0]m_axi_dma_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWLOCK" *) output m_axi_dma_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWCACHE" *) output [3:0]m_axi_dma_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWPROT" *) output [2:0]m_axi_dma_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWQOS" *) output [3:0]m_axi_dma_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWUSER" *) output [0:0]m_axi_dma_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWVALID" *) output m_axi_dma_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWREADY" *) input m_axi_dma_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WDATA" *) output [31:0]m_axi_dma_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WSTRB" *) output [3:0]m_axi_dma_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WLAST" *) output m_axi_dma_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WUSER" *) output [0:0]m_axi_dma_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WVALID" *) output m_axi_dma_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WREADY" *) input m_axi_dma_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BID" *) input [1:0]m_axi_dma_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BRESP" *) input [1:0]m_axi_dma_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BUSER" *) input [0:0]m_axi_dma_buser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BVALID" *) input m_axi_dma_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BREADY" *) output m_axi_dma_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARID" *) output [1:0]m_axi_dma_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARADDR" *) output [31:0]m_axi_dma_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARLEN" *) output [7:0]m_axi_dma_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARSIZE" *) output [2:0]m_axi_dma_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARBURST" *) output [1:0]m_axi_dma_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARLOCK" *) output m_axi_dma_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARCACHE" *) output [3:0]m_axi_dma_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARPROT" *) output [2:0]m_axi_dma_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARQOS" *) output [3:0]m_axi_dma_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARUSER" *) output [0:0]m_axi_dma_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARVALID" *) output m_axi_dma_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARREADY" *) input m_axi_dma_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RID" *) input [1:0]m_axi_dma_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RDATA" *) input [31:0]m_axi_dma_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RRESP" *) input [1:0]m_axi_dma_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RLAST" *) input m_axi_dma_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RUSER" *) input [0:0]m_axi_dma_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RVALID" *) input m_axi_dma_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RREADY" *) output m_axi_dma_rready;
  output [31:0]debug_data_o;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]\^debug_data_o ;
  wire m_axi_audio_out_aclk;
  wire m_axi_audio_out_aresetn;
  wire [25:2]\^m_axi_audio_out_awaddr ;
  wire m_axi_audio_out_awready;
  wire m_axi_audio_out_awvalid;
  wire m_axi_audio_out_bready;
  wire m_axi_audio_out_bvalid;
  wire [31:0]m_axi_audio_out_wdata;
  wire m_axi_audio_out_wready;
  wire m_axi_audio_out_wvalid;
  wire m_axi_dma_aclk;
  wire [31:0]m_axi_dma_araddr;
  wire m_axi_dma_aresetn;
  wire m_axi_dma_arready;
  wire m_axi_dma_arvalid;
  wire [31:0]m_axi_dma_rdata;
  wire m_axi_dma_rready;
  wire m_axi_dma_rvalid;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign debug_data_o[31] = \<const0> ;
  assign debug_data_o[30] = \<const0> ;
  assign debug_data_o[29] = \<const0> ;
  assign debug_data_o[28] = \<const0> ;
  assign debug_data_o[27] = \<const0> ;
  assign debug_data_o[26] = \<const0> ;
  assign debug_data_o[25] = \<const0> ;
  assign debug_data_o[24] = \<const0> ;
  assign debug_data_o[23] = \<const0> ;
  assign debug_data_o[22] = \<const0> ;
  assign debug_data_o[21] = \<const0> ;
  assign debug_data_o[20] = \<const0> ;
  assign debug_data_o[19] = \<const0> ;
  assign debug_data_o[18] = \<const0> ;
  assign debug_data_o[17] = \<const0> ;
  assign debug_data_o[16] = \<const0> ;
  assign debug_data_o[15] = \<const0> ;
  assign debug_data_o[14] = \<const0> ;
  assign debug_data_o[13] = \<const0> ;
  assign debug_data_o[12] = \<const0> ;
  assign debug_data_o[11] = \<const0> ;
  assign debug_data_o[10] = \<const0> ;
  assign debug_data_o[9] = \<const0> ;
  assign debug_data_o[8] = \<const0> ;
  assign debug_data_o[7] = \<const0> ;
  assign debug_data_o[6] = \<const0> ;
  assign debug_data_o[5] = \<const0> ;
  assign debug_data_o[4] = \<const0> ;
  assign debug_data_o[3] = \<const0> ;
  assign debug_data_o[2] = \<const0> ;
  assign debug_data_o[1:0] = \^debug_data_o [1:0];
  assign m_axi_audio_out_araddr[31] = \<const0> ;
  assign m_axi_audio_out_araddr[30] = \<const0> ;
  assign m_axi_audio_out_araddr[29] = \<const0> ;
  assign m_axi_audio_out_araddr[28] = \<const0> ;
  assign m_axi_audio_out_araddr[27] = \<const0> ;
  assign m_axi_audio_out_araddr[26] = \<const0> ;
  assign m_axi_audio_out_araddr[25] = \<const0> ;
  assign m_axi_audio_out_araddr[24] = \<const0> ;
  assign m_axi_audio_out_araddr[23] = \<const0> ;
  assign m_axi_audio_out_araddr[22] = \<const0> ;
  assign m_axi_audio_out_araddr[21] = \<const0> ;
  assign m_axi_audio_out_araddr[20] = \<const0> ;
  assign m_axi_audio_out_araddr[19] = \<const0> ;
  assign m_axi_audio_out_araddr[18] = \<const0> ;
  assign m_axi_audio_out_araddr[17] = \<const0> ;
  assign m_axi_audio_out_araddr[16] = \<const0> ;
  assign m_axi_audio_out_araddr[15] = \<const0> ;
  assign m_axi_audio_out_araddr[14] = \<const0> ;
  assign m_axi_audio_out_araddr[13] = \<const0> ;
  assign m_axi_audio_out_araddr[12] = \<const0> ;
  assign m_axi_audio_out_araddr[11] = \<const0> ;
  assign m_axi_audio_out_araddr[10] = \<const0> ;
  assign m_axi_audio_out_araddr[9] = \<const0> ;
  assign m_axi_audio_out_araddr[8] = \<const0> ;
  assign m_axi_audio_out_araddr[7] = \<const0> ;
  assign m_axi_audio_out_araddr[6] = \<const0> ;
  assign m_axi_audio_out_araddr[5] = \<const0> ;
  assign m_axi_audio_out_araddr[4] = \<const0> ;
  assign m_axi_audio_out_araddr[3] = \<const0> ;
  assign m_axi_audio_out_araddr[2] = \<const0> ;
  assign m_axi_audio_out_araddr[1] = \<const0> ;
  assign m_axi_audio_out_araddr[0] = \<const0> ;
  assign m_axi_audio_out_arprot[2] = \<const0> ;
  assign m_axi_audio_out_arprot[1] = \<const0> ;
  assign m_axi_audio_out_arprot[0] = \<const0> ;
  assign m_axi_audio_out_arvalid = \<const0> ;
  assign m_axi_audio_out_awaddr[31] = \<const0> ;
  assign m_axi_audio_out_awaddr[30] = \^m_axi_audio_out_awaddr [25];
  assign m_axi_audio_out_awaddr[29] = \<const0> ;
  assign m_axi_audio_out_awaddr[28] = \<const0> ;
  assign m_axi_audio_out_awaddr[27] = \<const0> ;
  assign m_axi_audio_out_awaddr[26] = \<const0> ;
  assign m_axi_audio_out_awaddr[25] = \^m_axi_audio_out_awaddr [25];
  assign m_axi_audio_out_awaddr[24] = \^m_axi_audio_out_awaddr [25];
  assign m_axi_audio_out_awaddr[23] = \^m_axi_audio_out_awaddr [25];
  assign m_axi_audio_out_awaddr[22] = \^m_axi_audio_out_awaddr [25];
  assign m_axi_audio_out_awaddr[21] = \<const0> ;
  assign m_axi_audio_out_awaddr[20] = \<const0> ;
  assign m_axi_audio_out_awaddr[19] = \<const0> ;
  assign m_axi_audio_out_awaddr[18] = \<const0> ;
  assign m_axi_audio_out_awaddr[17] = \<const0> ;
  assign m_axi_audio_out_awaddr[16] = \^m_axi_audio_out_awaddr [25];
  assign m_axi_audio_out_awaddr[15] = \<const0> ;
  assign m_axi_audio_out_awaddr[14] = \<const0> ;
  assign m_axi_audio_out_awaddr[13] = \<const0> ;
  assign m_axi_audio_out_awaddr[12] = \<const0> ;
  assign m_axi_audio_out_awaddr[11] = \<const0> ;
  assign m_axi_audio_out_awaddr[10] = \<const0> ;
  assign m_axi_audio_out_awaddr[9] = \<const0> ;
  assign m_axi_audio_out_awaddr[8] = \<const0> ;
  assign m_axi_audio_out_awaddr[7] = \<const0> ;
  assign m_axi_audio_out_awaddr[6] = \<const0> ;
  assign m_axi_audio_out_awaddr[5] = \<const0> ;
  assign m_axi_audio_out_awaddr[4] = \<const0> ;
  assign m_axi_audio_out_awaddr[3] = \^m_axi_audio_out_awaddr [25];
  assign m_axi_audio_out_awaddr[2] = \^m_axi_audio_out_awaddr [2];
  assign m_axi_audio_out_awaddr[1] = \<const0> ;
  assign m_axi_audio_out_awaddr[0] = \<const0> ;
  assign m_axi_audio_out_awprot[2] = \<const0> ;
  assign m_axi_audio_out_awprot[1] = \<const0> ;
  assign m_axi_audio_out_awprot[0] = \<const0> ;
  assign m_axi_audio_out_rready = \<const0> ;
  assign m_axi_audio_out_wstrb[3] = \<const1> ;
  assign m_axi_audio_out_wstrb[2] = \<const1> ;
  assign m_axi_audio_out_wstrb[1] = \<const1> ;
  assign m_axi_audio_out_wstrb[0] = \<const1> ;
  assign m_axi_dma_arburst[1] = \<const0> ;
  assign m_axi_dma_arburst[0] = \<const1> ;
  assign m_axi_dma_arcache[3] = \<const0> ;
  assign m_axi_dma_arcache[2] = \<const0> ;
  assign m_axi_dma_arcache[1] = \<const1> ;
  assign m_axi_dma_arcache[0] = \<const1> ;
  assign m_axi_dma_arid[1] = \<const0> ;
  assign m_axi_dma_arid[0] = \<const0> ;
  assign m_axi_dma_arlen[7] = \<const0> ;
  assign m_axi_dma_arlen[6] = \<const0> ;
  assign m_axi_dma_arlen[5] = \<const0> ;
  assign m_axi_dma_arlen[4] = \<const0> ;
  assign m_axi_dma_arlen[3] = \<const0> ;
  assign m_axi_dma_arlen[2] = \<const0> ;
  assign m_axi_dma_arlen[1] = \<const0> ;
  assign m_axi_dma_arlen[0] = \<const0> ;
  assign m_axi_dma_arlock = \<const0> ;
  assign m_axi_dma_arprot[2] = \<const0> ;
  assign m_axi_dma_arprot[1] = \<const0> ;
  assign m_axi_dma_arprot[0] = \<const0> ;
  assign m_axi_dma_arqos[3] = \<const0> ;
  assign m_axi_dma_arqos[2] = \<const0> ;
  assign m_axi_dma_arqos[1] = \<const0> ;
  assign m_axi_dma_arqos[0] = \<const0> ;
  assign m_axi_dma_arsize[2] = \<const0> ;
  assign m_axi_dma_arsize[1] = \<const1> ;
  assign m_axi_dma_arsize[0] = \<const0> ;
  assign m_axi_dma_aruser[0] = \<const1> ;
  assign m_axi_dma_awaddr[31] = \<const0> ;
  assign m_axi_dma_awaddr[30] = \<const0> ;
  assign m_axi_dma_awaddr[29] = \<const0> ;
  assign m_axi_dma_awaddr[28] = \<const0> ;
  assign m_axi_dma_awaddr[27] = \<const0> ;
  assign m_axi_dma_awaddr[26] = \<const0> ;
  assign m_axi_dma_awaddr[25] = \<const0> ;
  assign m_axi_dma_awaddr[24] = \<const0> ;
  assign m_axi_dma_awaddr[23] = \<const0> ;
  assign m_axi_dma_awaddr[22] = \<const0> ;
  assign m_axi_dma_awaddr[21] = \<const0> ;
  assign m_axi_dma_awaddr[20] = \<const0> ;
  assign m_axi_dma_awaddr[19] = \<const0> ;
  assign m_axi_dma_awaddr[18] = \<const0> ;
  assign m_axi_dma_awaddr[17] = \<const0> ;
  assign m_axi_dma_awaddr[16] = \<const0> ;
  assign m_axi_dma_awaddr[15] = \<const0> ;
  assign m_axi_dma_awaddr[14] = \<const0> ;
  assign m_axi_dma_awaddr[13] = \<const0> ;
  assign m_axi_dma_awaddr[12] = \<const0> ;
  assign m_axi_dma_awaddr[11] = \<const0> ;
  assign m_axi_dma_awaddr[10] = \<const0> ;
  assign m_axi_dma_awaddr[9] = \<const0> ;
  assign m_axi_dma_awaddr[8] = \<const0> ;
  assign m_axi_dma_awaddr[7] = \<const0> ;
  assign m_axi_dma_awaddr[6] = \<const0> ;
  assign m_axi_dma_awaddr[5] = \<const0> ;
  assign m_axi_dma_awaddr[4] = \<const0> ;
  assign m_axi_dma_awaddr[3] = \<const0> ;
  assign m_axi_dma_awaddr[2] = \<const0> ;
  assign m_axi_dma_awaddr[1] = \<const0> ;
  assign m_axi_dma_awaddr[0] = \<const0> ;
  assign m_axi_dma_awburst[1] = \<const0> ;
  assign m_axi_dma_awburst[0] = \<const0> ;
  assign m_axi_dma_awcache[3] = \<const0> ;
  assign m_axi_dma_awcache[2] = \<const0> ;
  assign m_axi_dma_awcache[1] = \<const0> ;
  assign m_axi_dma_awcache[0] = \<const0> ;
  assign m_axi_dma_awid[1] = \<const0> ;
  assign m_axi_dma_awid[0] = \<const0> ;
  assign m_axi_dma_awlen[7] = \<const0> ;
  assign m_axi_dma_awlen[6] = \<const0> ;
  assign m_axi_dma_awlen[5] = \<const0> ;
  assign m_axi_dma_awlen[4] = \<const0> ;
  assign m_axi_dma_awlen[3] = \<const0> ;
  assign m_axi_dma_awlen[2] = \<const0> ;
  assign m_axi_dma_awlen[1] = \<const0> ;
  assign m_axi_dma_awlen[0] = \<const0> ;
  assign m_axi_dma_awlock = \<const0> ;
  assign m_axi_dma_awprot[2] = \<const0> ;
  assign m_axi_dma_awprot[1] = \<const0> ;
  assign m_axi_dma_awprot[0] = \<const0> ;
  assign m_axi_dma_awqos[3] = \<const0> ;
  assign m_axi_dma_awqos[2] = \<const0> ;
  assign m_axi_dma_awqos[1] = \<const0> ;
  assign m_axi_dma_awqos[0] = \<const0> ;
  assign m_axi_dma_awsize[2] = \<const0> ;
  assign m_axi_dma_awsize[1] = \<const0> ;
  assign m_axi_dma_awsize[0] = \<const0> ;
  assign m_axi_dma_awuser[0] = \<const0> ;
  assign m_axi_dma_awvalid = \<const0> ;
  assign m_axi_dma_bready = \<const0> ;
  assign m_axi_dma_wdata[31] = \<const0> ;
  assign m_axi_dma_wdata[30] = \<const0> ;
  assign m_axi_dma_wdata[29] = \<const0> ;
  assign m_axi_dma_wdata[28] = \<const0> ;
  assign m_axi_dma_wdata[27] = \<const0> ;
  assign m_axi_dma_wdata[26] = \<const0> ;
  assign m_axi_dma_wdata[25] = \<const0> ;
  assign m_axi_dma_wdata[24] = \<const0> ;
  assign m_axi_dma_wdata[23] = \<const0> ;
  assign m_axi_dma_wdata[22] = \<const0> ;
  assign m_axi_dma_wdata[21] = \<const0> ;
  assign m_axi_dma_wdata[20] = \<const0> ;
  assign m_axi_dma_wdata[19] = \<const0> ;
  assign m_axi_dma_wdata[18] = \<const0> ;
  assign m_axi_dma_wdata[17] = \<const0> ;
  assign m_axi_dma_wdata[16] = \<const0> ;
  assign m_axi_dma_wdata[15] = \<const0> ;
  assign m_axi_dma_wdata[14] = \<const0> ;
  assign m_axi_dma_wdata[13] = \<const0> ;
  assign m_axi_dma_wdata[12] = \<const0> ;
  assign m_axi_dma_wdata[11] = \<const0> ;
  assign m_axi_dma_wdata[10] = \<const0> ;
  assign m_axi_dma_wdata[9] = \<const0> ;
  assign m_axi_dma_wdata[8] = \<const0> ;
  assign m_axi_dma_wdata[7] = \<const0> ;
  assign m_axi_dma_wdata[6] = \<const0> ;
  assign m_axi_dma_wdata[5] = \<const0> ;
  assign m_axi_dma_wdata[4] = \<const0> ;
  assign m_axi_dma_wdata[3] = \<const0> ;
  assign m_axi_dma_wdata[2] = \<const0> ;
  assign m_axi_dma_wdata[1] = \<const0> ;
  assign m_axi_dma_wdata[0] = \<const0> ;
  assign m_axi_dma_wlast = \<const0> ;
  assign m_axi_dma_wstrb[3] = \<const0> ;
  assign m_axi_dma_wstrb[2] = \<const0> ;
  assign m_axi_dma_wstrb[1] = \<const0> ;
  assign m_axi_dma_wstrb[0] = \<const0> ;
  assign m_axi_dma_wuser[0] = \<const0> ;
  assign m_axi_dma_wvalid = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  wolfenstein_platform_audio_fetcher_0_1_audio_fetcher U0
       (.m_axi_audio_out_aclk(m_axi_audio_out_aclk),
        .m_axi_audio_out_aresetn(m_axi_audio_out_aresetn),
        .m_axi_audio_out_awaddr({\^m_axi_audio_out_awaddr [25],\^m_axi_audio_out_awaddr [2]}),
        .m_axi_audio_out_awready(m_axi_audio_out_awready),
        .m_axi_audio_out_awvalid(m_axi_audio_out_awvalid),
        .m_axi_audio_out_bready(m_axi_audio_out_bready),
        .m_axi_audio_out_bvalid(m_axi_audio_out_bvalid),
        .m_axi_audio_out_wdata(m_axi_audio_out_wdata),
        .m_axi_audio_out_wready(m_axi_audio_out_wready),
        .m_axi_audio_out_wvalid(m_axi_audio_out_wvalid),
        .m_axi_dma_aclk(m_axi_dma_aclk),
        .m_axi_dma_araddr(m_axi_dma_araddr),
        .m_axi_dma_aresetn(m_axi_dma_aresetn),
        .m_axi_dma_arready(m_axi_dma_arready),
        .m_axi_dma_arvalid(m_axi_dma_arvalid),
        .m_axi_dma_rdata(m_axi_dma_rdata),
        .m_axi_dma_rready(m_axi_dma_rready),
        .m_axi_dma_rvalid(m_axi_dma_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\slot_active_array_ff_reg[0] (\^debug_data_o [0]),
        .\slot_active_array_ff_reg[1] (\^debug_data_o [1]));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "audio_fetcher" *) 
module wolfenstein_platform_audio_fetcher_0_1_audio_fetcher
   (m_axi_audio_out_awvalid,
    m_axi_audio_out_wvalid,
    m_axi_dma_arvalid,
    \slot_active_array_ff_reg[1] ,
    \slot_active_array_ff_reg[0] ,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    s_axi_rdata,
    m_axi_audio_out_awaddr,
    m_axi_audio_out_wdata,
    m_axi_dma_araddr,
    m_axi_audio_out_bready,
    m_axi_dma_rready,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    m_axi_audio_out_wready,
    m_axi_audio_out_aresetn,
    m_axi_audio_out_aclk,
    m_axi_dma_rvalid,
    m_axi_dma_aresetn,
    m_axi_dma_aclk,
    s_axi_aresetn,
    m_axi_dma_rdata,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wstrb,
    m_axi_audio_out_bvalid,
    m_axi_audio_out_awready,
    m_axi_dma_arready,
    s_axi_bready,
    s_axi_rready);
  output m_axi_audio_out_awvalid;
  output m_axi_audio_out_wvalid;
  output m_axi_dma_arvalid;
  output \slot_active_array_ff_reg[1] ;
  output \slot_active_array_ff_reg[0] ;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]m_axi_audio_out_awaddr;
  output [31:0]m_axi_audio_out_wdata;
  output [31:0]m_axi_dma_araddr;
  output m_axi_audio_out_bready;
  output m_axi_dma_rready;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input m_axi_audio_out_wready;
  input m_axi_audio_out_aresetn;
  input m_axi_audio_out_aclk;
  input m_axi_dma_rvalid;
  input m_axi_dma_aresetn;
  input m_axi_dma_aclk;
  input s_axi_aresetn;
  input [31:0]m_axi_dma_rdata;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [3:0]s_axi_wstrb;
  input m_axi_audio_out_bvalid;
  input m_axi_audio_out_awready;
  input m_axi_dma_arready;
  input s_axi_bready;
  input s_axi_rready;

  wire audio_fetcher_M_AXI_AUDIO_OUT_inst_n_4;
  wire audio_fetcher_M_AXI_AUDIO_OUT_inst_n_6;
  wire audio_fetcher_M_AXI_DMA_inst_n_10;
  wire audio_fetcher_M_AXI_DMA_inst_n_11;
  wire audio_fetcher_M_AXI_DMA_inst_n_12;
  wire audio_fetcher_M_AXI_DMA_inst_n_13;
  wire audio_fetcher_M_AXI_DMA_inst_n_14;
  wire audio_fetcher_M_AXI_DMA_inst_n_15;
  wire audio_fetcher_M_AXI_DMA_inst_n_16;
  wire audio_fetcher_M_AXI_DMA_inst_n_17;
  wire audio_fetcher_M_AXI_DMA_inst_n_18;
  wire audio_fetcher_M_AXI_DMA_inst_n_19;
  wire audio_fetcher_M_AXI_DMA_inst_n_20;
  wire audio_fetcher_M_AXI_DMA_inst_n_21;
  wire audio_fetcher_M_AXI_DMA_inst_n_23;
  wire audio_fetcher_M_AXI_DMA_inst_n_24;
  wire audio_fetcher_M_AXI_DMA_inst_n_25;
  wire audio_fetcher_M_AXI_DMA_inst_n_26;
  wire audio_fetcher_M_AXI_DMA_inst_n_27;
  wire audio_fetcher_M_AXI_DMA_inst_n_28;
  wire audio_fetcher_M_AXI_DMA_inst_n_29;
  wire audio_fetcher_M_AXI_DMA_inst_n_3;
  wire audio_fetcher_M_AXI_DMA_inst_n_30;
  wire audio_fetcher_M_AXI_DMA_inst_n_31;
  wire audio_fetcher_M_AXI_DMA_inst_n_32;
  wire audio_fetcher_M_AXI_DMA_inst_n_33;
  wire audio_fetcher_M_AXI_DMA_inst_n_34;
  wire audio_fetcher_M_AXI_DMA_inst_n_35;
  wire audio_fetcher_M_AXI_DMA_inst_n_36;
  wire audio_fetcher_M_AXI_DMA_inst_n_37;
  wire audio_fetcher_M_AXI_DMA_inst_n_5;
  wire audio_fetcher_M_AXI_DMA_inst_n_7;
  wire audio_fetcher_M_AXI_DMA_inst_n_8;
  wire audio_fetcher_M_AXI_DMA_inst_n_9;
  wire audio_fetcher_controller_inst_n_0;
  wire audio_fetcher_controller_inst_n_1;
  wire audio_fetcher_controller_inst_n_10;
  wire audio_fetcher_controller_inst_n_11;
  wire audio_fetcher_controller_inst_n_12;
  wire audio_fetcher_controller_inst_n_13;
  wire audio_fetcher_controller_inst_n_14;
  wire audio_fetcher_controller_inst_n_15;
  wire audio_fetcher_controller_inst_n_16;
  wire audio_fetcher_controller_inst_n_17;
  wire audio_fetcher_controller_inst_n_18;
  wire audio_fetcher_controller_inst_n_19;
  wire audio_fetcher_controller_inst_n_2;
  wire audio_fetcher_controller_inst_n_20;
  wire audio_fetcher_controller_inst_n_21;
  wire audio_fetcher_controller_inst_n_22;
  wire audio_fetcher_controller_inst_n_23;
  wire audio_fetcher_controller_inst_n_24;
  wire audio_fetcher_controller_inst_n_25;
  wire audio_fetcher_controller_inst_n_26;
  wire audio_fetcher_controller_inst_n_27;
  wire audio_fetcher_controller_inst_n_28;
  wire audio_fetcher_controller_inst_n_29;
  wire audio_fetcher_controller_inst_n_3;
  wire audio_fetcher_controller_inst_n_30;
  wire audio_fetcher_controller_inst_n_31;
  wire audio_fetcher_controller_inst_n_32;
  wire audio_fetcher_controller_inst_n_36;
  wire audio_fetcher_controller_inst_n_37;
  wire audio_fetcher_controller_inst_n_4;
  wire audio_fetcher_controller_inst_n_40;
  wire audio_fetcher_controller_inst_n_42;
  wire audio_fetcher_controller_inst_n_5;
  wire audio_fetcher_controller_inst_n_6;
  wire audio_fetcher_controller_inst_n_7;
  wire audio_fetcher_controller_inst_n_8;
  wire audio_fetcher_controller_inst_n_9;
  wire axi_araddr_ff0;
  wire [2:0]curr_player_state_ff;
  wire [1:0]curr_state_ff;
  wire [1:0]curr_state_ff_0;
  wire m_axi_audio_out_aclk;
  wire m_axi_audio_out_aresetn;
  wire [1:0]m_axi_audio_out_awaddr;
  wire m_axi_audio_out_awready;
  wire m_axi_audio_out_awvalid;
  wire m_axi_audio_out_bready;
  wire m_axi_audio_out_bvalid;
  wire [31:0]m_axi_audio_out_wdata;
  wire m_axi_audio_out_wready;
  wire m_axi_audio_out_wvalid;
  wire m_axi_dma_aclk;
  wire [31:0]m_axi_dma_araddr;
  wire m_axi_dma_aresetn;
  wire m_axi_dma_arready;
  wire m_axi_dma_arvalid;
  wire [31:0]m_axi_dma_rdata;
  wire m_axi_dma_rready;
  wire m_axi_dma_rvalid;
  wire p_0_out0;
  wire p_0_out0_in0;
  wire p_1_in;
  wire [31:0]req_addr_ff;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]s_rv_slot;
  wire [31:0]s_rv_sound_addr;
  wire s_rv_valid;
  wire [31:0]s_rv_vol_coef;
  wire sample_ff0;
  wire \slot_active_array_ff_reg[0] ;
  wire \slot_active_array_ff_reg[1] ;

  wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_AUDIO_OUT audio_fetcher_M_AXI_AUDIO_OUT_inst
       (.D({audio_fetcher_controller_inst_n_1,audio_fetcher_controller_inst_n_2,audio_fetcher_controller_inst_n_3,audio_fetcher_controller_inst_n_4,audio_fetcher_controller_inst_n_5,audio_fetcher_controller_inst_n_6,audio_fetcher_controller_inst_n_7,audio_fetcher_controller_inst_n_8,audio_fetcher_controller_inst_n_9,audio_fetcher_controller_inst_n_10,audio_fetcher_controller_inst_n_11,audio_fetcher_controller_inst_n_12,audio_fetcher_controller_inst_n_13,audio_fetcher_controller_inst_n_14,audio_fetcher_controller_inst_n_15,audio_fetcher_controller_inst_n_16,audio_fetcher_controller_inst_n_17,audio_fetcher_controller_inst_n_18,audio_fetcher_controller_inst_n_19,audio_fetcher_controller_inst_n_20,audio_fetcher_controller_inst_n_21,audio_fetcher_controller_inst_n_22,audio_fetcher_controller_inst_n_23,audio_fetcher_controller_inst_n_24,audio_fetcher_controller_inst_n_25,audio_fetcher_controller_inst_n_26,audio_fetcher_controller_inst_n_27,audio_fetcher_controller_inst_n_28,audio_fetcher_controller_inst_n_29,audio_fetcher_controller_inst_n_30,audio_fetcher_controller_inst_n_31,audio_fetcher_controller_inst_n_32}),
        .E(audio_fetcher_controller_inst_n_40),
        .\FSM_sequential_curr_state_ff_reg[0]_0 (audio_fetcher_M_AXI_AUDIO_OUT_inst_n_4),
        .\FSM_sequential_curr_state_ff_reg[0]_1 (audio_fetcher_M_AXI_AUDIO_OUT_inst_n_6),
        .Q({curr_player_state_ff[2],curr_player_state_ff[0]}),
        .curr_state_ff(curr_state_ff),
        .curr_state_ff_0(curr_state_ff_0),
        .m_axi_audio_out_aclk(m_axi_audio_out_aclk),
        .m_axi_audio_out_aresetn(m_axi_audio_out_aresetn),
        .m_axi_audio_out_awaddr(m_axi_audio_out_awaddr),
        .m_axi_audio_out_awready(m_axi_audio_out_awready),
        .m_axi_audio_out_awvalid(m_axi_audio_out_awvalid),
        .m_axi_audio_out_bready(m_axi_audio_out_bready),
        .m_axi_audio_out_bvalid(m_axi_audio_out_bvalid),
        .m_axi_audio_out_wdata(m_axi_audio_out_wdata),
        .m_axi_audio_out_wready(m_axi_audio_out_wready),
        .m_axi_audio_out_wvalid(m_axi_audio_out_wvalid));
  wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_DMA audio_fetcher_M_AXI_DMA_inst
       (.E(axi_araddr_ff0),
        .\FSM_sequential_curr_state_ff_reg[0]_0 (audio_fetcher_M_AXI_DMA_inst_n_3),
        .\FSM_sequential_curr_state_ff_reg[0]_1 (audio_fetcher_M_AXI_DMA_inst_n_5),
        .\FSM_sequential_curr_state_ff_reg[0]_2 (audio_fetcher_controller_inst_n_42),
        .\FSM_sequential_curr_state_ff_reg[0]_3 (audio_fetcher_controller_inst_n_37),
        .Q({p_0_out0,audio_fetcher_M_AXI_DMA_inst_n_7,audio_fetcher_M_AXI_DMA_inst_n_8,audio_fetcher_M_AXI_DMA_inst_n_9,audio_fetcher_M_AXI_DMA_inst_n_10,audio_fetcher_M_AXI_DMA_inst_n_11,audio_fetcher_M_AXI_DMA_inst_n_12,audio_fetcher_M_AXI_DMA_inst_n_13,audio_fetcher_M_AXI_DMA_inst_n_14,audio_fetcher_M_AXI_DMA_inst_n_15,audio_fetcher_M_AXI_DMA_inst_n_16,audio_fetcher_M_AXI_DMA_inst_n_17,audio_fetcher_M_AXI_DMA_inst_n_18,audio_fetcher_M_AXI_DMA_inst_n_19,audio_fetcher_M_AXI_DMA_inst_n_20,audio_fetcher_M_AXI_DMA_inst_n_21,p_0_out0_in0,audio_fetcher_M_AXI_DMA_inst_n_23,audio_fetcher_M_AXI_DMA_inst_n_24,audio_fetcher_M_AXI_DMA_inst_n_25,audio_fetcher_M_AXI_DMA_inst_n_26,audio_fetcher_M_AXI_DMA_inst_n_27,audio_fetcher_M_AXI_DMA_inst_n_28,audio_fetcher_M_AXI_DMA_inst_n_29,audio_fetcher_M_AXI_DMA_inst_n_30,audio_fetcher_M_AXI_DMA_inst_n_31,audio_fetcher_M_AXI_DMA_inst_n_32,audio_fetcher_M_AXI_DMA_inst_n_33,audio_fetcher_M_AXI_DMA_inst_n_34,audio_fetcher_M_AXI_DMA_inst_n_35,audio_fetcher_M_AXI_DMA_inst_n_36,audio_fetcher_M_AXI_DMA_inst_n_37}),
        .curr_state_ff(curr_state_ff_0),
        .m_axi_dma_aclk(m_axi_dma_aclk),
        .m_axi_dma_araddr(m_axi_dma_araddr),
        .m_axi_dma_aresetn(m_axi_dma_aresetn),
        .m_axi_dma_arready(m_axi_dma_arready),
        .m_axi_dma_arvalid(m_axi_dma_arvalid),
        .m_axi_dma_rdata(m_axi_dma_rdata),
        .m_axi_dma_rready(m_axi_dma_rready),
        .m_axi_dma_rvalid(m_axi_dma_rvalid),
        .req_addr_ff(req_addr_ff),
        .sample_ff0(sample_ff0));
  wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_S_AXI audio_fetcher_S_AXI_inst
       (.Q(p_1_in),
        .SR(audio_fetcher_controller_inst_n_0),
        .axi_arready_reg_0(s_axi_arready),
        .axi_awready_reg_0(s_axi_awready),
        .axi_wready_reg_0(s_axi_wready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_rv_slot(s_rv_slot),
        .s_rv_valid(s_rv_valid),
        .\sound_addr_ff_reg[31]_0 (s_rv_sound_addr),
        .valid_ff_reg_0(audio_fetcher_controller_inst_n_36),
        .\volume_coef_ff_reg[31]_0 ({s_rv_vol_coef[31:30],s_rv_vol_coef[17:0]}));
  wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_controller audio_fetcher_controller_inst
       (.D({audio_fetcher_controller_inst_n_1,audio_fetcher_controller_inst_n_2,audio_fetcher_controller_inst_n_3,audio_fetcher_controller_inst_n_4,audio_fetcher_controller_inst_n_5,audio_fetcher_controller_inst_n_6,audio_fetcher_controller_inst_n_7,audio_fetcher_controller_inst_n_8,audio_fetcher_controller_inst_n_9,audio_fetcher_controller_inst_n_10,audio_fetcher_controller_inst_n_11,audio_fetcher_controller_inst_n_12,audio_fetcher_controller_inst_n_13,audio_fetcher_controller_inst_n_14,audio_fetcher_controller_inst_n_15,audio_fetcher_controller_inst_n_16,audio_fetcher_controller_inst_n_17,audio_fetcher_controller_inst_n_18,audio_fetcher_controller_inst_n_19,audio_fetcher_controller_inst_n_20,audio_fetcher_controller_inst_n_21,audio_fetcher_controller_inst_n_22,audio_fetcher_controller_inst_n_23,audio_fetcher_controller_inst_n_24,audio_fetcher_controller_inst_n_25,audio_fetcher_controller_inst_n_26,audio_fetcher_controller_inst_n_27,audio_fetcher_controller_inst_n_28,audio_fetcher_controller_inst_n_29,audio_fetcher_controller_inst_n_30,audio_fetcher_controller_inst_n_31,audio_fetcher_controller_inst_n_32}),
        .E(audio_fetcher_controller_inst_n_40),
        .\FSM_sequential_curr_initter_state_ff_reg[0]_0 (audio_fetcher_controller_inst_n_37),
        .\FSM_sequential_curr_initter_state_ff_reg[0]_1 (axi_araddr_ff0),
        .Q({curr_player_state_ff[2],curr_player_state_ff[0]}),
        .SR(audio_fetcher_controller_inst_n_0),
        .\axi_araddr_ff_reg[31] (audio_fetcher_M_AXI_DMA_inst_n_5),
        .\curr_player_state_ff_reg[0]_0 (audio_fetcher_controller_inst_n_42),
        .\curr_player_state_ff_reg[0]_1 (audio_fetcher_M_AXI_AUDIO_OUT_inst_n_4),
        .\curr_player_state_ff_reg[1]_0 (audio_fetcher_M_AXI_AUDIO_OUT_inst_n_6),
        .\curr_player_state_ff_reg[2]_0 (audio_fetcher_M_AXI_DMA_inst_n_3),
        .curr_state_ff(curr_state_ff_0),
        .curr_state_ff_0(curr_state_ff),
        .\initter_sound_addr_ff_reg[31]_0 (s_rv_sound_addr),
        .\initter_vol_coef_ff_reg[31]_0 ({s_rv_vol_coef[31:30],s_rv_vol_coef[17:0]}),
        .\num_samples_array_ff_reg[0][31]_0 ({p_0_out0,audio_fetcher_M_AXI_DMA_inst_n_7,audio_fetcher_M_AXI_DMA_inst_n_8,audio_fetcher_M_AXI_DMA_inst_n_9,audio_fetcher_M_AXI_DMA_inst_n_10,audio_fetcher_M_AXI_DMA_inst_n_11,audio_fetcher_M_AXI_DMA_inst_n_12,audio_fetcher_M_AXI_DMA_inst_n_13,audio_fetcher_M_AXI_DMA_inst_n_14,audio_fetcher_M_AXI_DMA_inst_n_15,audio_fetcher_M_AXI_DMA_inst_n_16,audio_fetcher_M_AXI_DMA_inst_n_17,audio_fetcher_M_AXI_DMA_inst_n_18,audio_fetcher_M_AXI_DMA_inst_n_19,audio_fetcher_M_AXI_DMA_inst_n_20,audio_fetcher_M_AXI_DMA_inst_n_21,p_0_out0_in0,audio_fetcher_M_AXI_DMA_inst_n_23,audio_fetcher_M_AXI_DMA_inst_n_24,audio_fetcher_M_AXI_DMA_inst_n_25,audio_fetcher_M_AXI_DMA_inst_n_26,audio_fetcher_M_AXI_DMA_inst_n_27,audio_fetcher_M_AXI_DMA_inst_n_28,audio_fetcher_M_AXI_DMA_inst_n_29,audio_fetcher_M_AXI_DMA_inst_n_30,audio_fetcher_M_AXI_DMA_inst_n_31,audio_fetcher_M_AXI_DMA_inst_n_32,audio_fetcher_M_AXI_DMA_inst_n_33,audio_fetcher_M_AXI_DMA_inst_n_34,audio_fetcher_M_AXI_DMA_inst_n_35,audio_fetcher_M_AXI_DMA_inst_n_36,audio_fetcher_M_AXI_DMA_inst_n_37}),
        .\req_addr_ff_reg[31]_0 (req_addr_ff),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(audio_fetcher_controller_inst_n_36),
        .s_rv_slot(s_rv_slot),
        .s_rv_valid(s_rv_valid),
        .sample_ff0(sample_ff0),
        .\slot_active_array_ff_reg[0]_0 (\slot_active_array_ff_reg[0] ),
        .\slot_active_array_ff_reg[1]_0 (\slot_active_array_ff_reg[1] ),
        .valid_ff_reg(p_1_in));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_M_AXI_AUDIO_OUT" *) 
module wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_AUDIO_OUT
   (m_axi_audio_out_awvalid,
    curr_state_ff,
    m_axi_audio_out_wvalid,
    \FSM_sequential_curr_state_ff_reg[0]_0 ,
    m_axi_audio_out_bready,
    \FSM_sequential_curr_state_ff_reg[0]_1 ,
    m_axi_audio_out_awaddr,
    m_axi_audio_out_wdata,
    Q,
    curr_state_ff_0,
    E,
    m_axi_audio_out_bvalid,
    m_axi_audio_out_wready,
    m_axi_audio_out_awready,
    m_axi_audio_out_aresetn,
    m_axi_audio_out_aclk,
    D);
  output m_axi_audio_out_awvalid;
  output [1:0]curr_state_ff;
  output m_axi_audio_out_wvalid;
  output \FSM_sequential_curr_state_ff_reg[0]_0 ;
  output m_axi_audio_out_bready;
  output \FSM_sequential_curr_state_ff_reg[0]_1 ;
  output [1:0]m_axi_audio_out_awaddr;
  output [31:0]m_axi_audio_out_wdata;
  input [1:0]Q;
  input [1:0]curr_state_ff_0;
  input [0:0]E;
  input m_axi_audio_out_bvalid;
  input m_axi_audio_out_wready;
  input m_axi_audio_out_awready;
  input m_axi_audio_out_aresetn;
  input m_axi_audio_out_aclk;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_sequential_curr_state_ff[0]_i_1_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_1_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_2__0_n_0 ;
  wire \FSM_sequential_curr_state_ff_reg[0]_0 ;
  wire \FSM_sequential_curr_state_ff_reg[0]_1 ;
  wire [1:0]Q;
  wire \axi_awaddr_ff[30]_i_1_n_0 ;
  wire [1:0]curr_state_ff;
  wire [1:0]curr_state_ff_0;
  wire m_axi_audio_out_aclk;
  wire m_axi_audio_out_aresetn;
  wire [1:0]m_axi_audio_out_awaddr;
  wire m_axi_audio_out_awready;
  wire m_axi_audio_out_awvalid;
  wire m_axi_audio_out_bready;
  wire m_axi_audio_out_bvalid;
  wire [31:0]m_axi_audio_out_wdata;
  wire m_axi_audio_out_wready;
  wire m_axi_audio_out_wvalid;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h66260000)) 
    \FSM_sequential_curr_state_ff[0]_i_1 
       (.I0(curr_state_ff[0]),
        .I1(\FSM_sequential_curr_state_ff[1]_i_2__0_n_0 ),
        .I2(curr_state_ff[1]),
        .I3(m_axi_audio_out_wready),
        .I4(m_axi_audio_out_aresetn),
        .O(\FSM_sequential_curr_state_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h66A20000)) 
    \FSM_sequential_curr_state_ff[1]_i_1 
       (.I0(curr_state_ff[1]),
        .I1(\FSM_sequential_curr_state_ff[1]_i_2__0_n_0 ),
        .I2(m_axi_audio_out_wready),
        .I3(curr_state_ff[0]),
        .I4(m_axi_audio_out_aresetn),
        .O(\FSM_sequential_curr_state_ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFAEFAAEAFAEAAA)) 
    \FSM_sequential_curr_state_ff[1]_i_2__0 
       (.I0(E),
        .I1(m_axi_audio_out_bvalid),
        .I2(curr_state_ff[1]),
        .I3(curr_state_ff[0]),
        .I4(m_axi_audio_out_wready),
        .I5(m_axi_audio_out_awready),
        .O(\FSM_sequential_curr_state_ff[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "awvalid:01,wvalid:10,idle:00,bready:11" *) 
  FDRE \FSM_sequential_curr_state_ff_reg[0] 
       (.C(m_axi_audio_out_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state_ff[0]_i_1_n_0 ),
        .Q(curr_state_ff[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "awvalid:01,wvalid:10,idle:00,bready:11" *) 
  FDRE \FSM_sequential_curr_state_ff_reg[1] 
       (.C(m_axi_audio_out_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state_ff[1]_i_1_n_0 ),
        .Q(curr_state_ff[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr_ff[30]_i_1 
       (.I0(m_axi_audio_out_aresetn),
        .O(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_awaddr_ff_reg[2] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(m_axi_audio_out_awaddr[0]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_awaddr_ff_reg[30] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(1'b1),
        .Q(m_axi_audio_out_awaddr[1]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[0] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[0]),
        .Q(m_axi_audio_out_wdata[0]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[10] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[10]),
        .Q(m_axi_audio_out_wdata[10]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[11] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[11]),
        .Q(m_axi_audio_out_wdata[11]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[12] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[12]),
        .Q(m_axi_audio_out_wdata[12]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[13] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[13]),
        .Q(m_axi_audio_out_wdata[13]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[14] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[14]),
        .Q(m_axi_audio_out_wdata[14]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[15] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[15]),
        .Q(m_axi_audio_out_wdata[15]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[16] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[16]),
        .Q(m_axi_audio_out_wdata[16]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[17] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[17]),
        .Q(m_axi_audio_out_wdata[17]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[18] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[18]),
        .Q(m_axi_audio_out_wdata[18]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[19] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[19]),
        .Q(m_axi_audio_out_wdata[19]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[1] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[1]),
        .Q(m_axi_audio_out_wdata[1]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[20] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[20]),
        .Q(m_axi_audio_out_wdata[20]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[21] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[21]),
        .Q(m_axi_audio_out_wdata[21]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[22] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[22]),
        .Q(m_axi_audio_out_wdata[22]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[23] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[23]),
        .Q(m_axi_audio_out_wdata[23]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[24] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[24]),
        .Q(m_axi_audio_out_wdata[24]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[25] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[25]),
        .Q(m_axi_audio_out_wdata[25]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[26] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[26]),
        .Q(m_axi_audio_out_wdata[26]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[27] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[27]),
        .Q(m_axi_audio_out_wdata[27]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[28] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[28]),
        .Q(m_axi_audio_out_wdata[28]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[29] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[29]),
        .Q(m_axi_audio_out_wdata[29]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[2] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[2]),
        .Q(m_axi_audio_out_wdata[2]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[30] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[30]),
        .Q(m_axi_audio_out_wdata[30]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[31] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[31]),
        .Q(m_axi_audio_out_wdata[31]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[3] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[3]),
        .Q(m_axi_audio_out_wdata[3]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[4] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[4]),
        .Q(m_axi_audio_out_wdata[4]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[5] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[5]),
        .Q(m_axi_audio_out_wdata[5]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[6] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[6]),
        .Q(m_axi_audio_out_wdata[6]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[7] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[7]),
        .Q(m_axi_audio_out_wdata[7]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[8] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[8]),
        .Q(m_axi_audio_out_wdata[8]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[9] 
       (.C(m_axi_audio_out_aclk),
        .CE(E),
        .D(D[9]),
        .Q(m_axi_audio_out_wdata[9]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE0EFEFEF)) 
    \curr_player_state_ff[0]_i_4 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .I2(Q[1]),
        .I3(curr_state_ff_0[0]),
        .I4(curr_state_ff_0[1]),
        .O(\FSM_sequential_curr_state_ff_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \curr_player_state_ff[2]_i_5 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(\FSM_sequential_curr_state_ff_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_audio_out_awvalid_INST_0
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(m_axi_audio_out_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_audio_out_bready_INST_0
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(m_axi_audio_out_bready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_audio_out_wvalid_INST_0
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .O(m_axi_audio_out_wvalid));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_M_AXI_DMA" *) 
module wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_DMA
   (m_axi_dma_arvalid,
    curr_state_ff,
    \FSM_sequential_curr_state_ff_reg[0]_0 ,
    m_axi_dma_rready,
    \FSM_sequential_curr_state_ff_reg[0]_1 ,
    Q,
    m_axi_dma_araddr,
    \FSM_sequential_curr_state_ff_reg[0]_2 ,
    \FSM_sequential_curr_state_ff_reg[0]_3 ,
    sample_ff0,
    m_axi_dma_rvalid,
    m_axi_dma_arready,
    m_axi_dma_aresetn,
    m_axi_dma_aclk,
    m_axi_dma_rdata,
    E,
    req_addr_ff);
  output m_axi_dma_arvalid;
  output [1:0]curr_state_ff;
  output \FSM_sequential_curr_state_ff_reg[0]_0 ;
  output m_axi_dma_rready;
  output \FSM_sequential_curr_state_ff_reg[0]_1 ;
  output [31:0]Q;
  output [31:0]m_axi_dma_araddr;
  input \FSM_sequential_curr_state_ff_reg[0]_2 ;
  input \FSM_sequential_curr_state_ff_reg[0]_3 ;
  input sample_ff0;
  input m_axi_dma_rvalid;
  input m_axi_dma_arready;
  input m_axi_dma_aresetn;
  input m_axi_dma_aclk;
  input [31:0]m_axi_dma_rdata;
  input [0:0]E;
  input [31:0]req_addr_ff;

  wire [0:0]E;
  wire \FSM_sequential_curr_state_ff[0]_i_1__0_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_1__0_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_2_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_3_n_0 ;
  wire \FSM_sequential_curr_state_ff_reg[0]_0 ;
  wire \FSM_sequential_curr_state_ff_reg[0]_1 ;
  wire \FSM_sequential_curr_state_ff_reg[0]_2 ;
  wire \FSM_sequential_curr_state_ff_reg[0]_3 ;
  wire [31:0]Q;
  wire \axi_araddr_ff[31]_i_1_n_0 ;
  wire axi_rdata_ff0;
  wire [1:0]curr_state_ff;
  wire m_axi_dma_aclk;
  wire [31:0]m_axi_dma_araddr;
  wire m_axi_dma_aresetn;
  wire m_axi_dma_arready;
  wire m_axi_dma_arvalid;
  wire [31:0]m_axi_dma_rdata;
  wire m_axi_dma_rready;
  wire m_axi_dma_rvalid;
  wire [31:0]req_addr_ff;
  wire sample_ff0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h66260000)) 
    \FSM_sequential_curr_state_ff[0]_i_1__0 
       (.I0(curr_state_ff[0]),
        .I1(\FSM_sequential_curr_state_ff[1]_i_2_n_0 ),
        .I2(curr_state_ff[1]),
        .I3(m_axi_dma_rvalid),
        .I4(m_axi_dma_aresetn),
        .O(\FSM_sequential_curr_state_ff[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6A620000)) 
    \FSM_sequential_curr_state_ff[1]_i_1__0 
       (.I0(curr_state_ff[1]),
        .I1(\FSM_sequential_curr_state_ff[1]_i_2_n_0 ),
        .I2(curr_state_ff[0]),
        .I3(m_axi_dma_rvalid),
        .I4(m_axi_dma_aresetn),
        .O(\FSM_sequential_curr_state_ff[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEBEAABAA)) 
    \FSM_sequential_curr_state_ff[1]_i_2 
       (.I0(\FSM_sequential_curr_state_ff[1]_i_3_n_0 ),
        .I1(curr_state_ff[0]),
        .I2(curr_state_ff[1]),
        .I3(\FSM_sequential_curr_state_ff_reg[0]_2 ),
        .I4(\FSM_sequential_curr_state_ff_reg[0]_3 ),
        .I5(sample_ff0),
        .O(\FSM_sequential_curr_state_ff[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    \FSM_sequential_curr_state_ff[1]_i_3 
       (.I0(m_axi_dma_rvalid),
        .I1(curr_state_ff[1]),
        .I2(m_axi_dma_arready),
        .I3(curr_state_ff[0]),
        .O(\FSM_sequential_curr_state_ff[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "arvalid:01,rready:10,idle:00,returning:11" *) 
  FDRE \FSM_sequential_curr_state_ff_reg[0] 
       (.C(m_axi_dma_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state_ff[0]_i_1__0_n_0 ),
        .Q(curr_state_ff[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "arvalid:01,rready:10,idle:00,returning:11" *) 
  FDRE \FSM_sequential_curr_state_ff_reg[1] 
       (.C(m_axi_dma_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state_ff[1]_i_1__0_n_0 ),
        .Q(curr_state_ff[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_araddr_ff[31]_i_1 
       (.I0(m_axi_dma_aresetn),
        .O(\axi_araddr_ff[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_araddr_ff[31]_i_4 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(\FSM_sequential_curr_state_ff_reg[0]_1 ));
  FDRE \axi_araddr_ff_reg[0] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[0]),
        .Q(m_axi_dma_araddr[0]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[10] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[10]),
        .Q(m_axi_dma_araddr[10]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[11] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[11]),
        .Q(m_axi_dma_araddr[11]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[12] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[12]),
        .Q(m_axi_dma_araddr[12]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[13] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[13]),
        .Q(m_axi_dma_araddr[13]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[14] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[14]),
        .Q(m_axi_dma_araddr[14]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[15] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[15]),
        .Q(m_axi_dma_araddr[15]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[16] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[16]),
        .Q(m_axi_dma_araddr[16]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[17] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[17]),
        .Q(m_axi_dma_araddr[17]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[18] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[18]),
        .Q(m_axi_dma_araddr[18]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[19] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[19]),
        .Q(m_axi_dma_araddr[19]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[1] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[1]),
        .Q(m_axi_dma_araddr[1]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[20] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[20]),
        .Q(m_axi_dma_araddr[20]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[21] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[21]),
        .Q(m_axi_dma_araddr[21]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[22] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[22]),
        .Q(m_axi_dma_araddr[22]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[23] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[23]),
        .Q(m_axi_dma_araddr[23]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[24] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[24]),
        .Q(m_axi_dma_araddr[24]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[25] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[25]),
        .Q(m_axi_dma_araddr[25]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[26] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[26]),
        .Q(m_axi_dma_araddr[26]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[27] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[27]),
        .Q(m_axi_dma_araddr[27]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[28] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[28]),
        .Q(m_axi_dma_araddr[28]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[29] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[29]),
        .Q(m_axi_dma_araddr[29]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[2] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[2]),
        .Q(m_axi_dma_araddr[2]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[30] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[30]),
        .Q(m_axi_dma_araddr[30]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[31] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[31]),
        .Q(m_axi_dma_araddr[31]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[3] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[3]),
        .Q(m_axi_dma_araddr[3]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[4] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[4]),
        .Q(m_axi_dma_araddr[4]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[5] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[5]),
        .Q(m_axi_dma_araddr[5]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[6] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[6]),
        .Q(m_axi_dma_araddr[6]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[7] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[7]),
        .Q(m_axi_dma_araddr[7]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[8] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[8]),
        .Q(m_axi_dma_araddr[8]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[9] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_addr_ff[9]),
        .Q(m_axi_dma_araddr[9]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata_ff[31]_i_1 
       (.I0(curr_state_ff[0]),
        .I1(m_axi_dma_rvalid),
        .I2(curr_state_ff[1]),
        .O(axi_rdata_ff0));
  FDSE \axi_rdata_ff_reg[0] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[0]),
        .Q(Q[0]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[10] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[10]),
        .Q(Q[10]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[11] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[11]),
        .Q(Q[11]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[12] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[12]),
        .Q(Q[12]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[13] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[13]),
        .Q(Q[13]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[14] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[14]),
        .Q(Q[14]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[15] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[15]),
        .Q(Q[15]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[16] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[16]),
        .Q(Q[16]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[17] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[17]),
        .Q(Q[17]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[18] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[18]),
        .Q(Q[18]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[19] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[19]),
        .Q(Q[19]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[1] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[1]),
        .Q(Q[1]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[20] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[20]),
        .Q(Q[20]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[21] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[21]),
        .Q(Q[21]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[22] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[22]),
        .Q(Q[22]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[23] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[23]),
        .Q(Q[23]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[24] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[24]),
        .Q(Q[24]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[25] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[25]),
        .Q(Q[25]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[26] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[26]),
        .Q(Q[26]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[27] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[27]),
        .Q(Q[27]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[28] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[28]),
        .Q(Q[28]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[29] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[29]),
        .Q(Q[29]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[2] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[2]),
        .Q(Q[2]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[30] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[30]),
        .Q(Q[30]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[31] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[31]),
        .Q(Q[31]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[3] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[3]),
        .Q(Q[3]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[4] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[4]),
        .Q(Q[4]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[5] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[5]),
        .Q(Q[5]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[6] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[6]),
        .Q(Q[6]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[7] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[7]),
        .Q(Q[7]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[8] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[8]),
        .Q(Q[8]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[9] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[9]),
        .Q(Q[9]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \curr_player_state_ff[2]_i_2 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(\FSM_sequential_curr_state_ff_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_dma_arvalid_INST_0
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(m_axi_dma_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_dma_rready_INST_0
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .O(m_axi_dma_rready));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_S_AXI" *) 
module wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_S_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    s_rv_slot,
    Q,
    axi_arready_reg_0,
    s_axi_bvalid,
    s_rv_valid,
    s_axi_rvalid,
    \sound_addr_ff_reg[31]_0 ,
    \volume_coef_ff_reg[31]_0 ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    valid_ff_reg_0,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_wdata,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output [0:0]s_rv_slot;
  output [0:0]Q;
  output axi_arready_reg_0;
  output s_axi_bvalid;
  output s_rv_valid;
  output s_axi_rvalid;
  output [31:0]\sound_addr_ff_reg[31]_0 ;
  output [19:0]\volume_coef_ff_reg[31]_0 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input valid_ff_reg_0;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input [31:0]s_axi_wdata;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input [1:0]s_axi_awaddr;
  input [1:0]s_axi_araddr;

  wire [0:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]s_rv_slot;
  wire s_rv_valid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3[10]_i_1_n_0 ;
  wire \slv_reg3[11]_i_1_n_0 ;
  wire \slv_reg3[12]_i_1_n_0 ;
  wire \slv_reg3[13]_i_1_n_0 ;
  wire \slv_reg3[14]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[16]_i_1_n_0 ;
  wire \slv_reg3[17]_i_1_n_0 ;
  wire \slv_reg3[18]_i_1_n_0 ;
  wire \slv_reg3[19]_i_1_n_0 ;
  wire \slv_reg3[1]_i_1_n_0 ;
  wire \slv_reg3[20]_i_1_n_0 ;
  wire \slv_reg3[21]_i_1_n_0 ;
  wire \slv_reg3[22]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[24]_i_1_n_0 ;
  wire \slv_reg3[25]_i_1_n_0 ;
  wire \slv_reg3[26]_i_1_n_0 ;
  wire \slv_reg3[27]_i_1_n_0 ;
  wire \slv_reg3[28]_i_1_n_0 ;
  wire \slv_reg3[29]_i_1_n_0 ;
  wire \slv_reg3[2]_i_1_n_0 ;
  wire \slv_reg3[30]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[3]_i_1_n_0 ;
  wire \slv_reg3[4]_i_1_n_0 ;
  wire \slv_reg3[5]_i_1_n_0 ;
  wire \slv_reg3[6]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3[8]_i_1_n_0 ;
  wire \slv_reg3[9]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg_rden;
  wire [31:0]\sound_addr_ff_reg[31]_0 ;
  wire valid_ff_reg_0;
  wire [19:0]\volume_coef_ff_reg[31]_0 ;

  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(axi_awready_reg_0),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(SR));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(axi_awready_reg_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(axi_awready_reg_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(axi_awready_reg_0),
        .I5(axi_wready_reg_0),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(Q),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(\slv_reg3_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(\slv_reg3_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(\slv_reg3_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(\slv_reg3_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(\slv_reg3_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(\slv_reg3_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(\slv_reg3_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(\slv_reg3_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(\slv_reg3_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(\slv_reg3_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(\slv_reg3_reg_n_0_[1] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(\slv_reg3_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(\slv_reg3_reg_n_0_[21] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(\slv_reg3_reg_n_0_[22] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(\slv_reg3_reg_n_0_[23] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(\slv_reg3_reg_n_0_[24] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(\slv_reg3_reg_n_0_[25] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(\slv_reg3_reg_n_0_[26] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(\slv_reg3_reg_n_0_[27] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(\slv_reg3_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(\slv_reg3_reg_n_0_[29] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(\slv_reg3_reg_n_0_[2] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(\slv_reg3_reg_n_0_[30] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(\slv_reg3_reg_n_0_[31] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(\slv_reg3_reg_n_0_[3] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(\slv_reg3_reg_n_0_[4] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(\slv_reg3_reg_n_0_[5] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(\slv_reg3_reg_n_0_[6] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(\slv_reg3_reg_n_0_[7] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(\slv_reg3_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(\slv_reg3_reg_n_0_[9] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(SR));
  FDRE \slot_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg2[0]),
        .Q(s_rv_slot),
        .R(SR));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(axi_awaddr[2]),
        .I3(s_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[0]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[0]),
        .O(\slv_reg3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[10]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[10]),
        .O(\slv_reg3[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[11]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[11]),
        .O(\slv_reg3[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[12]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[12]),
        .O(\slv_reg3[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[13]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[13]),
        .O(\slv_reg3[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[14]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[14]),
        .O(\slv_reg3[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[15]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[16]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[16]),
        .O(\slv_reg3[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[17]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[17]),
        .O(\slv_reg3[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[18]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[18]),
        .O(\slv_reg3[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[19]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[19]),
        .O(\slv_reg3[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[1]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[1]),
        .O(\slv_reg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[20]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[20]),
        .O(\slv_reg3[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[21]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[21]),
        .O(\slv_reg3[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[22]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[22]),
        .O(\slv_reg3[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[23]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[24]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[24]),
        .O(\slv_reg3[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[25]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[25]),
        .O(\slv_reg3[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[26]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[26]),
        .O(\slv_reg3[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[27]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[27]),
        .O(\slv_reg3[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[28]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[28]),
        .O(\slv_reg3[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[29]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[29]),
        .O(\slv_reg3[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[2]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[2]),
        .O(\slv_reg3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[30]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[30]),
        .O(\slv_reg3[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg3[31]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s_axi_aresetn),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[31]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[3]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[3]),
        .O(\slv_reg3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[4]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[4]),
        .O(\slv_reg3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[5]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[5]),
        .O(\slv_reg3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[6]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[6]),
        .O(\slv_reg3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[7]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[8]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[8]),
        .O(\slv_reg3[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[9]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s_axi_wdata[9]),
        .O(\slv_reg3[9]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(Q),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[10]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[11]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[12]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[13]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[14]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[15]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[16]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[17]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[18]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[19]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[1]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[20]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[21]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[22]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[23]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[24]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[25]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[26]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[27]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[28]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[29]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[2]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[30]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[31]_i_2_n_0 ),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[3]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[4]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[5]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[6]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[7]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[8]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[9]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(\slv_reg3[31]_i_1_n_0 ));
  FDRE \sound_addr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[0]),
        .Q(\sound_addr_ff_reg[31]_0 [0]),
        .R(SR));
  FDRE \sound_addr_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[10]),
        .Q(\sound_addr_ff_reg[31]_0 [10]),
        .R(SR));
  FDRE \sound_addr_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[11]),
        .Q(\sound_addr_ff_reg[31]_0 [11]),
        .R(SR));
  FDRE \sound_addr_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[12]),
        .Q(\sound_addr_ff_reg[31]_0 [12]),
        .R(SR));
  FDRE \sound_addr_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[13]),
        .Q(\sound_addr_ff_reg[31]_0 [13]),
        .R(SR));
  FDRE \sound_addr_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[14]),
        .Q(\sound_addr_ff_reg[31]_0 [14]),
        .R(SR));
  FDRE \sound_addr_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[15]),
        .Q(\sound_addr_ff_reg[31]_0 [15]),
        .R(SR));
  FDRE \sound_addr_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[16]),
        .Q(\sound_addr_ff_reg[31]_0 [16]),
        .R(SR));
  FDRE \sound_addr_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[17]),
        .Q(\sound_addr_ff_reg[31]_0 [17]),
        .R(SR));
  FDRE \sound_addr_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[18]),
        .Q(\sound_addr_ff_reg[31]_0 [18]),
        .R(SR));
  FDRE \sound_addr_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[19]),
        .Q(\sound_addr_ff_reg[31]_0 [19]),
        .R(SR));
  FDRE \sound_addr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[1]),
        .Q(\sound_addr_ff_reg[31]_0 [1]),
        .R(SR));
  FDRE \sound_addr_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[20]),
        .Q(\sound_addr_ff_reg[31]_0 [20]),
        .R(SR));
  FDRE \sound_addr_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[21]),
        .Q(\sound_addr_ff_reg[31]_0 [21]),
        .R(SR));
  FDRE \sound_addr_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[22]),
        .Q(\sound_addr_ff_reg[31]_0 [22]),
        .R(SR));
  FDRE \sound_addr_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[23]),
        .Q(\sound_addr_ff_reg[31]_0 [23]),
        .R(SR));
  FDRE \sound_addr_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[24]),
        .Q(\sound_addr_ff_reg[31]_0 [24]),
        .R(SR));
  FDRE \sound_addr_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[25]),
        .Q(\sound_addr_ff_reg[31]_0 [25]),
        .R(SR));
  FDRE \sound_addr_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[26]),
        .Q(\sound_addr_ff_reg[31]_0 [26]),
        .R(SR));
  FDRE \sound_addr_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[27]),
        .Q(\sound_addr_ff_reg[31]_0 [27]),
        .R(SR));
  FDRE \sound_addr_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[28]),
        .Q(\sound_addr_ff_reg[31]_0 [28]),
        .R(SR));
  FDRE \sound_addr_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[29]),
        .Q(\sound_addr_ff_reg[31]_0 [29]),
        .R(SR));
  FDRE \sound_addr_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[2]),
        .Q(\sound_addr_ff_reg[31]_0 [2]),
        .R(SR));
  FDRE \sound_addr_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[30]),
        .Q(\sound_addr_ff_reg[31]_0 [30]),
        .R(SR));
  FDRE \sound_addr_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[31]),
        .Q(\sound_addr_ff_reg[31]_0 [31]),
        .R(SR));
  FDRE \sound_addr_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[3]),
        .Q(\sound_addr_ff_reg[31]_0 [3]),
        .R(SR));
  FDRE \sound_addr_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[4]),
        .Q(\sound_addr_ff_reg[31]_0 [4]),
        .R(SR));
  FDRE \sound_addr_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[5]),
        .Q(\sound_addr_ff_reg[31]_0 [5]),
        .R(SR));
  FDRE \sound_addr_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[6]),
        .Q(\sound_addr_ff_reg[31]_0 [6]),
        .R(SR));
  FDRE \sound_addr_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[7]),
        .Q(\sound_addr_ff_reg[31]_0 [7]),
        .R(SR));
  FDRE \sound_addr_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[8]),
        .Q(\sound_addr_ff_reg[31]_0 [8]),
        .R(SR));
  FDRE \sound_addr_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[9]),
        .Q(\sound_addr_ff_reg[31]_0 [9]),
        .R(SR));
  FDRE valid_ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(valid_ff_reg_0),
        .Q(s_rv_valid),
        .R(1'b0));
  FDRE \volume_coef_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[0]),
        .Q(\volume_coef_ff_reg[31]_0 [0]),
        .R(SR));
  FDRE \volume_coef_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[10]),
        .Q(\volume_coef_ff_reg[31]_0 [10]),
        .R(SR));
  FDRE \volume_coef_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[11]),
        .Q(\volume_coef_ff_reg[31]_0 [11]),
        .R(SR));
  FDRE \volume_coef_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[12]),
        .Q(\volume_coef_ff_reg[31]_0 [12]),
        .R(SR));
  FDRE \volume_coef_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[13]),
        .Q(\volume_coef_ff_reg[31]_0 [13]),
        .R(SR));
  FDRE \volume_coef_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[14]),
        .Q(\volume_coef_ff_reg[31]_0 [14]),
        .R(SR));
  FDRE \volume_coef_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[15]),
        .Q(\volume_coef_ff_reg[31]_0 [15]),
        .R(SR));
  FDRE \volume_coef_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[16]),
        .Q(\volume_coef_ff_reg[31]_0 [16]),
        .R(SR));
  FDRE \volume_coef_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[17]),
        .Q(\volume_coef_ff_reg[31]_0 [17]),
        .R(SR));
  FDRE \volume_coef_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[1]),
        .Q(\volume_coef_ff_reg[31]_0 [1]),
        .R(SR));
  FDRE \volume_coef_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[2]),
        .Q(\volume_coef_ff_reg[31]_0 [2]),
        .R(SR));
  FDRE \volume_coef_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[30]),
        .Q(\volume_coef_ff_reg[31]_0 [18]),
        .R(SR));
  FDRE \volume_coef_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[31]),
        .Q(\volume_coef_ff_reg[31]_0 [19]),
        .R(SR));
  FDRE \volume_coef_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[3]),
        .Q(\volume_coef_ff_reg[31]_0 [3]),
        .R(SR));
  FDRE \volume_coef_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[4]),
        .Q(\volume_coef_ff_reg[31]_0 [4]),
        .R(SR));
  FDRE \volume_coef_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[5]),
        .Q(\volume_coef_ff_reg[31]_0 [5]),
        .R(SR));
  FDRE \volume_coef_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[6]),
        .Q(\volume_coef_ff_reg[31]_0 [6]),
        .R(SR));
  FDRE \volume_coef_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[7]),
        .Q(\volume_coef_ff_reg[31]_0 [7]),
        .R(SR));
  FDRE \volume_coef_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[8]),
        .Q(\volume_coef_ff_reg[31]_0 [8]),
        .R(SR));
  FDRE \volume_coef_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg1[9]),
        .Q(\volume_coef_ff_reg[31]_0 [9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_controller" *) 
module wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_controller
   (SR,
    D,
    sample_ff0,
    Q,
    s_axi_aresetn_0,
    \FSM_sequential_curr_initter_state_ff_reg[0]_0 ,
    \slot_active_array_ff_reg[1]_0 ,
    \slot_active_array_ff_reg[0]_0 ,
    E,
    \FSM_sequential_curr_initter_state_ff_reg[0]_1 ,
    \curr_player_state_ff_reg[0]_0 ,
    \req_addr_ff_reg[31]_0 ,
    s_rv_slot,
    s_axi_aclk,
    \curr_player_state_ff_reg[0]_1 ,
    s_rv_valid,
    s_axi_aresetn,
    valid_ff_reg,
    curr_state_ff,
    \curr_player_state_ff_reg[2]_0 ,
    \curr_player_state_ff_reg[1]_0 ,
    curr_state_ff_0,
    \axi_araddr_ff_reg[31] ,
    \num_samples_array_ff_reg[0][31]_0 ,
    \initter_sound_addr_ff_reg[31]_0 ,
    \initter_vol_coef_ff_reg[31]_0 );
  output [0:0]SR;
  output [31:0]D;
  output sample_ff0;
  output [1:0]Q;
  output s_axi_aresetn_0;
  output \FSM_sequential_curr_initter_state_ff_reg[0]_0 ;
  output \slot_active_array_ff_reg[1]_0 ;
  output \slot_active_array_ff_reg[0]_0 ;
  output [0:0]E;
  output [0:0]\FSM_sequential_curr_initter_state_ff_reg[0]_1 ;
  output \curr_player_state_ff_reg[0]_0 ;
  output [31:0]\req_addr_ff_reg[31]_0 ;
  input [0:0]s_rv_slot;
  input s_axi_aclk;
  input \curr_player_state_ff_reg[0]_1 ;
  input s_rv_valid;
  input s_axi_aresetn;
  input [0:0]valid_ff_reg;
  input [1:0]curr_state_ff;
  input \curr_player_state_ff_reg[2]_0 ;
  input \curr_player_state_ff_reg[1]_0 ;
  input [1:0]curr_state_ff_0;
  input \axi_araddr_ff_reg[31] ;
  input [31:0]\num_samples_array_ff_reg[0][31]_0 ;
  input [31:0]\initter_sound_addr_ff_reg[31]_0 ;
  input [19:0]\initter_vol_coef_ff_reg[31]_0 ;

  wire [15:0]B;
  wire CEB2;
  wire CEM;
  wire CEP;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_sequential_curr_initter_state_ff_reg[0]_0 ;
  wire [0:0]\FSM_sequential_curr_initter_state_ff_reg[0]_1 ;
  wire [1:0]Q;
  wire RSTP;
  wire [0:0]SR;
  wire \axi_araddr_ff[31]_i_3_n_0 ;
  wire \axi_araddr_ff_reg[31] ;
  wire [2:2]\byte_index_array_ff[0] ;
  wire [31:0]\byte_index_array_ff[0]0 ;
  wire \byte_index_array_ff[0]0_carry__0_n_0 ;
  wire \byte_index_array_ff[0]0_carry__0_n_1 ;
  wire \byte_index_array_ff[0]0_carry__0_n_2 ;
  wire \byte_index_array_ff[0]0_carry__0_n_3 ;
  wire \byte_index_array_ff[0]0_carry__1_n_0 ;
  wire \byte_index_array_ff[0]0_carry__1_n_1 ;
  wire \byte_index_array_ff[0]0_carry__1_n_2 ;
  wire \byte_index_array_ff[0]0_carry__1_n_3 ;
  wire \byte_index_array_ff[0]0_carry__2_n_0 ;
  wire \byte_index_array_ff[0]0_carry__2_n_1 ;
  wire \byte_index_array_ff[0]0_carry__2_n_2 ;
  wire \byte_index_array_ff[0]0_carry__2_n_3 ;
  wire \byte_index_array_ff[0]0_carry__3_n_0 ;
  wire \byte_index_array_ff[0]0_carry__3_n_1 ;
  wire \byte_index_array_ff[0]0_carry__3_n_2 ;
  wire \byte_index_array_ff[0]0_carry__3_n_3 ;
  wire \byte_index_array_ff[0]0_carry__4_n_0 ;
  wire \byte_index_array_ff[0]0_carry__4_n_1 ;
  wire \byte_index_array_ff[0]0_carry__4_n_2 ;
  wire \byte_index_array_ff[0]0_carry__4_n_3 ;
  wire \byte_index_array_ff[0]0_carry__5_n_0 ;
  wire \byte_index_array_ff[0]0_carry__5_n_1 ;
  wire \byte_index_array_ff[0]0_carry__5_n_2 ;
  wire \byte_index_array_ff[0]0_carry__5_n_3 ;
  wire \byte_index_array_ff[0]0_carry__6_n_1 ;
  wire \byte_index_array_ff[0]0_carry__6_n_2 ;
  wire \byte_index_array_ff[0]0_carry__6_n_3 ;
  wire \byte_index_array_ff[0]0_carry_i_1_n_0 ;
  wire \byte_index_array_ff[0]0_carry_n_0 ;
  wire \byte_index_array_ff[0]0_carry_n_1 ;
  wire \byte_index_array_ff[0]0_carry_n_2 ;
  wire \byte_index_array_ff[0]0_carry_n_3 ;
  wire \byte_index_array_ff[0][0]_i_1_n_0 ;
  wire \byte_index_array_ff[0][10]_i_1_n_0 ;
  wire \byte_index_array_ff[0][11]_i_1_n_0 ;
  wire \byte_index_array_ff[0][12]_i_1_n_0 ;
  wire \byte_index_array_ff[0][13]_i_1_n_0 ;
  wire \byte_index_array_ff[0][14]_i_1_n_0 ;
  wire \byte_index_array_ff[0][15]_i_1_n_0 ;
  wire \byte_index_array_ff[0][16]_i_1_n_0 ;
  wire \byte_index_array_ff[0][17]_i_1_n_0 ;
  wire \byte_index_array_ff[0][18]_i_1_n_0 ;
  wire \byte_index_array_ff[0][19]_i_1_n_0 ;
  wire \byte_index_array_ff[0][1]_i_1_n_0 ;
  wire \byte_index_array_ff[0][20]_i_1_n_0 ;
  wire \byte_index_array_ff[0][21]_i_1_n_0 ;
  wire \byte_index_array_ff[0][22]_i_1_n_0 ;
  wire \byte_index_array_ff[0][23]_i_1_n_0 ;
  wire \byte_index_array_ff[0][24]_i_1_n_0 ;
  wire \byte_index_array_ff[0][25]_i_1_n_0 ;
  wire \byte_index_array_ff[0][26]_i_1_n_0 ;
  wire \byte_index_array_ff[0][27]_i_1_n_0 ;
  wire \byte_index_array_ff[0][28]_i_1_n_0 ;
  wire \byte_index_array_ff[0][29]_i_1_n_0 ;
  wire \byte_index_array_ff[0][2]_i_1_n_0 ;
  wire \byte_index_array_ff[0][30]_i_1_n_0 ;
  wire \byte_index_array_ff[0][31]_i_1_n_0 ;
  wire \byte_index_array_ff[0][3]_i_1_n_0 ;
  wire \byte_index_array_ff[0][4]_i_1_n_0 ;
  wire \byte_index_array_ff[0][5]_i_1_n_0 ;
  wire \byte_index_array_ff[0][6]_i_1_n_0 ;
  wire \byte_index_array_ff[0][7]_i_1_n_0 ;
  wire \byte_index_array_ff[0][8]_i_1_n_0 ;
  wire \byte_index_array_ff[0][9]_i_1_n_0 ;
  wire \byte_index_array_ff[0]_0 ;
  wire [31:0]\byte_index_array_ff[1]0 ;
  wire \byte_index_array_ff[1]0_carry__0_n_0 ;
  wire \byte_index_array_ff[1]0_carry__0_n_1 ;
  wire \byte_index_array_ff[1]0_carry__0_n_2 ;
  wire \byte_index_array_ff[1]0_carry__0_n_3 ;
  wire \byte_index_array_ff[1]0_carry__1_n_0 ;
  wire \byte_index_array_ff[1]0_carry__1_n_1 ;
  wire \byte_index_array_ff[1]0_carry__1_n_2 ;
  wire \byte_index_array_ff[1]0_carry__1_n_3 ;
  wire \byte_index_array_ff[1]0_carry__2_n_0 ;
  wire \byte_index_array_ff[1]0_carry__2_n_1 ;
  wire \byte_index_array_ff[1]0_carry__2_n_2 ;
  wire \byte_index_array_ff[1]0_carry__2_n_3 ;
  wire \byte_index_array_ff[1]0_carry__3_n_0 ;
  wire \byte_index_array_ff[1]0_carry__3_n_1 ;
  wire \byte_index_array_ff[1]0_carry__3_n_2 ;
  wire \byte_index_array_ff[1]0_carry__3_n_3 ;
  wire \byte_index_array_ff[1]0_carry__4_n_0 ;
  wire \byte_index_array_ff[1]0_carry__4_n_1 ;
  wire \byte_index_array_ff[1]0_carry__4_n_2 ;
  wire \byte_index_array_ff[1]0_carry__4_n_3 ;
  wire \byte_index_array_ff[1]0_carry__5_n_0 ;
  wire \byte_index_array_ff[1]0_carry__5_n_1 ;
  wire \byte_index_array_ff[1]0_carry__5_n_2 ;
  wire \byte_index_array_ff[1]0_carry__5_n_3 ;
  wire \byte_index_array_ff[1]0_carry__6_n_1 ;
  wire \byte_index_array_ff[1]0_carry__6_n_2 ;
  wire \byte_index_array_ff[1]0_carry__6_n_3 ;
  wire \byte_index_array_ff[1]0_carry_i_1_n_0 ;
  wire \byte_index_array_ff[1]0_carry_n_0 ;
  wire \byte_index_array_ff[1]0_carry_n_1 ;
  wire \byte_index_array_ff[1]0_carry_n_2 ;
  wire \byte_index_array_ff[1]0_carry_n_3 ;
  wire \byte_index_array_ff[1][0]_i_1_n_0 ;
  wire \byte_index_array_ff[1][10]_i_1_n_0 ;
  wire \byte_index_array_ff[1][11]_i_1_n_0 ;
  wire \byte_index_array_ff[1][12]_i_1_n_0 ;
  wire \byte_index_array_ff[1][13]_i_1_n_0 ;
  wire \byte_index_array_ff[1][14]_i_1_n_0 ;
  wire \byte_index_array_ff[1][15]_i_1_n_0 ;
  wire \byte_index_array_ff[1][16]_i_1_n_0 ;
  wire \byte_index_array_ff[1][17]_i_1_n_0 ;
  wire \byte_index_array_ff[1][18]_i_1_n_0 ;
  wire \byte_index_array_ff[1][19]_i_1_n_0 ;
  wire \byte_index_array_ff[1][1]_i_1_n_0 ;
  wire \byte_index_array_ff[1][20]_i_1_n_0 ;
  wire \byte_index_array_ff[1][21]_i_1_n_0 ;
  wire \byte_index_array_ff[1][22]_i_1_n_0 ;
  wire \byte_index_array_ff[1][23]_i_1_n_0 ;
  wire \byte_index_array_ff[1][24]_i_1_n_0 ;
  wire \byte_index_array_ff[1][25]_i_1_n_0 ;
  wire \byte_index_array_ff[1][26]_i_1_n_0 ;
  wire \byte_index_array_ff[1][27]_i_1_n_0 ;
  wire \byte_index_array_ff[1][28]_i_1_n_0 ;
  wire \byte_index_array_ff[1][29]_i_1_n_0 ;
  wire \byte_index_array_ff[1][2]_i_1_n_0 ;
  wire \byte_index_array_ff[1][30]_i_1_n_0 ;
  wire \byte_index_array_ff[1][31]_i_1_n_0 ;
  wire \byte_index_array_ff[1][3]_i_1_n_0 ;
  wire \byte_index_array_ff[1][4]_i_1_n_0 ;
  wire \byte_index_array_ff[1][5]_i_1_n_0 ;
  wire \byte_index_array_ff[1][6]_i_1_n_0 ;
  wire \byte_index_array_ff[1][7]_i_1_n_0 ;
  wire \byte_index_array_ff[1][8]_i_1_n_0 ;
  wire \byte_index_array_ff[1][9]_i_1_n_0 ;
  wire \byte_index_array_ff[1]_1 ;
  wire [31:0]\byte_index_array_ff_reg[0] ;
  wire [31:0]\byte_index_array_ff_reg[1] ;
  wire [2:0]curr_initter_state_ff;
  wire [1:1]curr_player_state_ff;
  wire \curr_player_state_ff[0]_i_2_n_0 ;
  wire \curr_player_state_ff[0]_i_3_n_0 ;
  wire \curr_player_state_ff[0]_i_5_n_0 ;
  wire \curr_player_state_ff[0]_i_6_n_0 ;
  wire \curr_player_state_ff[0]_i_7_n_0 ;
  wire \curr_player_state_ff[1]_i_2_n_0 ;
  wire \curr_player_state_ff[2]_i_3_n_0 ;
  wire \curr_player_state_ff[2]_i_4_n_0 ;
  wire \curr_player_state_ff_reg[0]_0 ;
  wire \curr_player_state_ff_reg[0]_1 ;
  wire \curr_player_state_ff_reg[1]_0 ;
  wire \curr_player_state_ff_reg[2]_0 ;
  wire [1:0]curr_state_ff;
  wire [1:0]curr_state_ff_0;
  wire \gen_last_sample_array[0].last_sample_array_reg ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire initter_curr_slot_ff;
  wire [31:0]initter_sound_addr_ff;
  wire initter_sound_addr_ff0;
  wire [31:0]\initter_sound_addr_ff_reg[31]_0 ;
  wire [31:0]initter_vol_coef_ff;
  wire [19:0]\initter_vol_coef_ff_reg[31]_0 ;
  wire last_sample_array0_carry__0_i_1_n_0;
  wire last_sample_array0_carry__0_i_2_n_0;
  wire last_sample_array0_carry__0_i_3_n_0;
  wire last_sample_array0_carry__0_i_4_n_0;
  wire last_sample_array0_carry__0_n_0;
  wire last_sample_array0_carry__0_n_1;
  wire last_sample_array0_carry__0_n_2;
  wire last_sample_array0_carry__0_n_3;
  wire last_sample_array0_carry__1_i_1_n_0;
  wire last_sample_array0_carry__1_i_2_n_0;
  wire last_sample_array0_carry__1_i_3_n_0;
  wire last_sample_array0_carry__1_n_2;
  wire last_sample_array0_carry__1_n_3;
  wire last_sample_array0_carry_i_1_n_0;
  wire last_sample_array0_carry_i_2_n_0;
  wire last_sample_array0_carry_i_3_n_0;
  wire last_sample_array0_carry_i_4_n_0;
  wire last_sample_array0_carry_n_0;
  wire last_sample_array0_carry_n_1;
  wire last_sample_array0_carry_n_2;
  wire last_sample_array0_carry_n_3;
  wire \last_sample_array0_inferred__0/i__carry__0_n_0 ;
  wire \last_sample_array0_inferred__0/i__carry__0_n_1 ;
  wire \last_sample_array0_inferred__0/i__carry__0_n_2 ;
  wire \last_sample_array0_inferred__0/i__carry__0_n_3 ;
  wire \last_sample_array0_inferred__0/i__carry__1_n_2 ;
  wire \last_sample_array0_inferred__0/i__carry__1_n_3 ;
  wire \last_sample_array0_inferred__0/i__carry_n_0 ;
  wire \last_sample_array0_inferred__0/i__carry_n_1 ;
  wire \last_sample_array0_inferred__0/i__carry_n_2 ;
  wire \last_sample_array0_inferred__0/i__carry_n_3 ;
  wire [31:1]last_sample_array1;
  wire [31:1]last_sample_array10_in;
  wire last_sample_array1_carry__0_i_1_n_0;
  wire last_sample_array1_carry__0_i_2_n_0;
  wire last_sample_array1_carry__0_i_3_n_0;
  wire last_sample_array1_carry__0_i_4_n_0;
  wire last_sample_array1_carry__0_n_0;
  wire last_sample_array1_carry__0_n_1;
  wire last_sample_array1_carry__0_n_2;
  wire last_sample_array1_carry__0_n_3;
  wire last_sample_array1_carry__1_i_1_n_0;
  wire last_sample_array1_carry__1_i_2_n_0;
  wire last_sample_array1_carry__1_i_3_n_0;
  wire last_sample_array1_carry__1_i_4_n_0;
  wire last_sample_array1_carry__1_n_0;
  wire last_sample_array1_carry__1_n_1;
  wire last_sample_array1_carry__1_n_2;
  wire last_sample_array1_carry__1_n_3;
  wire last_sample_array1_carry__2_i_1_n_0;
  wire last_sample_array1_carry__2_i_2_n_0;
  wire last_sample_array1_carry__2_i_3_n_0;
  wire last_sample_array1_carry__2_i_4_n_0;
  wire last_sample_array1_carry__2_n_0;
  wire last_sample_array1_carry__2_n_1;
  wire last_sample_array1_carry__2_n_2;
  wire last_sample_array1_carry__2_n_3;
  wire last_sample_array1_carry__3_i_1_n_0;
  wire last_sample_array1_carry__3_i_2_n_0;
  wire last_sample_array1_carry__3_i_3_n_0;
  wire last_sample_array1_carry__3_i_4_n_0;
  wire last_sample_array1_carry__3_n_0;
  wire last_sample_array1_carry__3_n_1;
  wire last_sample_array1_carry__3_n_2;
  wire last_sample_array1_carry__3_n_3;
  wire last_sample_array1_carry__4_i_1_n_0;
  wire last_sample_array1_carry__4_i_2_n_0;
  wire last_sample_array1_carry__4_i_3_n_0;
  wire last_sample_array1_carry__4_i_4_n_0;
  wire last_sample_array1_carry__4_n_0;
  wire last_sample_array1_carry__4_n_1;
  wire last_sample_array1_carry__4_n_2;
  wire last_sample_array1_carry__4_n_3;
  wire last_sample_array1_carry__5_i_1_n_0;
  wire last_sample_array1_carry__5_i_2_n_0;
  wire last_sample_array1_carry__5_i_3_n_0;
  wire last_sample_array1_carry__5_i_4_n_0;
  wire last_sample_array1_carry__5_n_0;
  wire last_sample_array1_carry__5_n_1;
  wire last_sample_array1_carry__5_n_2;
  wire last_sample_array1_carry__5_n_3;
  wire last_sample_array1_carry__6_i_1_n_0;
  wire last_sample_array1_carry__6_i_2_n_0;
  wire last_sample_array1_carry__6_i_3_n_0;
  wire last_sample_array1_carry__6_n_2;
  wire last_sample_array1_carry__6_n_3;
  wire last_sample_array1_carry_i_1_n_0;
  wire last_sample_array1_carry_i_2_n_0;
  wire last_sample_array1_carry_i_3_n_0;
  wire last_sample_array1_carry_i_4_n_0;
  wire last_sample_array1_carry_n_0;
  wire last_sample_array1_carry_n_1;
  wire last_sample_array1_carry_n_2;
  wire last_sample_array1_carry_n_3;
  wire \last_sample_array1_inferred__0/i__carry__0_n_0 ;
  wire \last_sample_array1_inferred__0/i__carry__0_n_1 ;
  wire \last_sample_array1_inferred__0/i__carry__0_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry__0_n_3 ;
  wire \last_sample_array1_inferred__0/i__carry__1_n_0 ;
  wire \last_sample_array1_inferred__0/i__carry__1_n_1 ;
  wire \last_sample_array1_inferred__0/i__carry__1_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry__1_n_3 ;
  wire \last_sample_array1_inferred__0/i__carry__2_n_0 ;
  wire \last_sample_array1_inferred__0/i__carry__2_n_1 ;
  wire \last_sample_array1_inferred__0/i__carry__2_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry__2_n_3 ;
  wire \last_sample_array1_inferred__0/i__carry__3_n_0 ;
  wire \last_sample_array1_inferred__0/i__carry__3_n_1 ;
  wire \last_sample_array1_inferred__0/i__carry__3_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry__3_n_3 ;
  wire \last_sample_array1_inferred__0/i__carry__4_n_0 ;
  wire \last_sample_array1_inferred__0/i__carry__4_n_1 ;
  wire \last_sample_array1_inferred__0/i__carry__4_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry__4_n_3 ;
  wire \last_sample_array1_inferred__0/i__carry__5_n_0 ;
  wire \last_sample_array1_inferred__0/i__carry__5_n_1 ;
  wire \last_sample_array1_inferred__0/i__carry__5_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry__5_n_3 ;
  wire \last_sample_array1_inferred__0/i__carry__6_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry__6_n_3 ;
  wire \last_sample_array1_inferred__0/i__carry_n_0 ;
  wire \last_sample_array1_inferred__0/i__carry_n_1 ;
  wire \last_sample_array1_inferred__0/i__carry_n_2 ;
  wire \last_sample_array1_inferred__0/i__carry_n_3 ;
  wire [2:0]next_initter_state__0;
  wire [2:0]next_player_state;
  wire \num_samples_array_ff[0]_3 ;
  wire \num_samples_array_ff[1]_2 ;
  wire [31:0]\num_samples_array_ff_reg[0] ;
  wire [31:0]\num_samples_array_ff_reg[0][31]_0 ;
  wire [31:0]\num_samples_array_ff_reg[1] ;
  wire p_0_in;
  wire p_2_in;
  wire player_curr_slot_ff;
  wire \player_curr_slot_ff[0]_i_1_n_0 ;
  wire \player_curr_slot_ff[0]_i_2_n_0 ;
  wire [31:0]req_addr_ff0;
  wire [31:0]req_addr_ff00_in;
  wire req_addr_ff0_carry__0_i_1_n_0;
  wire req_addr_ff0_carry__0_i_2_n_0;
  wire req_addr_ff0_carry__0_i_3_n_0;
  wire req_addr_ff0_carry__0_i_4_n_0;
  wire req_addr_ff0_carry__0_i_5_n_0;
  wire req_addr_ff0_carry__0_i_6_n_0;
  wire req_addr_ff0_carry__0_i_7_n_0;
  wire req_addr_ff0_carry__0_i_8_n_0;
  wire req_addr_ff0_carry__0_n_0;
  wire req_addr_ff0_carry__0_n_1;
  wire req_addr_ff0_carry__0_n_2;
  wire req_addr_ff0_carry__0_n_3;
  wire req_addr_ff0_carry__1_i_1_n_0;
  wire req_addr_ff0_carry__1_i_2_n_0;
  wire req_addr_ff0_carry__1_i_3_n_0;
  wire req_addr_ff0_carry__1_i_4_n_0;
  wire req_addr_ff0_carry__1_i_5_n_0;
  wire req_addr_ff0_carry__1_i_6_n_0;
  wire req_addr_ff0_carry__1_i_7_n_0;
  wire req_addr_ff0_carry__1_i_8_n_0;
  wire req_addr_ff0_carry__1_n_0;
  wire req_addr_ff0_carry__1_n_1;
  wire req_addr_ff0_carry__1_n_2;
  wire req_addr_ff0_carry__1_n_3;
  wire req_addr_ff0_carry__2_i_1_n_0;
  wire req_addr_ff0_carry__2_i_2_n_0;
  wire req_addr_ff0_carry__2_i_3_n_0;
  wire req_addr_ff0_carry__2_i_4_n_0;
  wire req_addr_ff0_carry__2_i_5_n_0;
  wire req_addr_ff0_carry__2_i_6_n_0;
  wire req_addr_ff0_carry__2_i_7_n_0;
  wire req_addr_ff0_carry__2_i_8_n_0;
  wire req_addr_ff0_carry__2_n_0;
  wire req_addr_ff0_carry__2_n_1;
  wire req_addr_ff0_carry__2_n_2;
  wire req_addr_ff0_carry__2_n_3;
  wire req_addr_ff0_carry__3_i_1_n_0;
  wire req_addr_ff0_carry__3_i_2_n_0;
  wire req_addr_ff0_carry__3_i_3_n_0;
  wire req_addr_ff0_carry__3_i_4_n_0;
  wire req_addr_ff0_carry__3_i_5_n_0;
  wire req_addr_ff0_carry__3_i_6_n_0;
  wire req_addr_ff0_carry__3_i_7_n_0;
  wire req_addr_ff0_carry__3_i_8_n_0;
  wire req_addr_ff0_carry__3_n_0;
  wire req_addr_ff0_carry__3_n_1;
  wire req_addr_ff0_carry__3_n_2;
  wire req_addr_ff0_carry__3_n_3;
  wire req_addr_ff0_carry__4_i_1_n_0;
  wire req_addr_ff0_carry__4_i_2_n_0;
  wire req_addr_ff0_carry__4_i_3_n_0;
  wire req_addr_ff0_carry__4_i_4_n_0;
  wire req_addr_ff0_carry__4_i_5_n_0;
  wire req_addr_ff0_carry__4_i_6_n_0;
  wire req_addr_ff0_carry__4_i_7_n_0;
  wire req_addr_ff0_carry__4_i_8_n_0;
  wire req_addr_ff0_carry__4_n_0;
  wire req_addr_ff0_carry__4_n_1;
  wire req_addr_ff0_carry__4_n_2;
  wire req_addr_ff0_carry__4_n_3;
  wire req_addr_ff0_carry__5_i_1_n_0;
  wire req_addr_ff0_carry__5_i_2_n_0;
  wire req_addr_ff0_carry__5_i_3_n_0;
  wire req_addr_ff0_carry__5_i_4_n_0;
  wire req_addr_ff0_carry__5_i_5_n_0;
  wire req_addr_ff0_carry__5_i_6_n_0;
  wire req_addr_ff0_carry__5_i_7_n_0;
  wire req_addr_ff0_carry__5_i_8_n_0;
  wire req_addr_ff0_carry__5_n_0;
  wire req_addr_ff0_carry__5_n_1;
  wire req_addr_ff0_carry__5_n_2;
  wire req_addr_ff0_carry__5_n_3;
  wire req_addr_ff0_carry__6_i_1_n_0;
  wire req_addr_ff0_carry__6_i_2_n_0;
  wire req_addr_ff0_carry__6_i_3_n_0;
  wire req_addr_ff0_carry__6_i_4_n_0;
  wire req_addr_ff0_carry__6_i_5_n_0;
  wire req_addr_ff0_carry__6_i_6_n_0;
  wire req_addr_ff0_carry__6_i_7_n_0;
  wire req_addr_ff0_carry__6_i_8_n_0;
  wire req_addr_ff0_carry__6_n_1;
  wire req_addr_ff0_carry__6_n_2;
  wire req_addr_ff0_carry__6_n_3;
  wire req_addr_ff0_carry_i_2_n_0;
  wire req_addr_ff0_carry_i_3_n_0;
  wire req_addr_ff0_carry_i_4_n_0;
  wire req_addr_ff0_carry_i_5_n_0;
  wire req_addr_ff0_carry_i_6_n_0;
  wire req_addr_ff0_carry_n_0;
  wire req_addr_ff0_carry_n_1;
  wire req_addr_ff0_carry_n_2;
  wire req_addr_ff0_carry_n_3;
  wire [31:0]req_addr_ff2;
  wire \req_addr_ff[0]_i_1_n_0 ;
  wire \req_addr_ff[10]_i_1_n_0 ;
  wire \req_addr_ff[11]_i_1_n_0 ;
  wire \req_addr_ff[12]_i_1_n_0 ;
  wire \req_addr_ff[13]_i_1_n_0 ;
  wire \req_addr_ff[14]_i_1_n_0 ;
  wire \req_addr_ff[15]_i_1_n_0 ;
  wire \req_addr_ff[16]_i_1_n_0 ;
  wire \req_addr_ff[17]_i_1_n_0 ;
  wire \req_addr_ff[18]_i_1_n_0 ;
  wire \req_addr_ff[19]_i_1_n_0 ;
  wire \req_addr_ff[1]_i_1_n_0 ;
  wire \req_addr_ff[20]_i_1_n_0 ;
  wire \req_addr_ff[21]_i_1_n_0 ;
  wire \req_addr_ff[22]_i_1_n_0 ;
  wire \req_addr_ff[23]_i_1_n_0 ;
  wire \req_addr_ff[24]_i_1_n_0 ;
  wire \req_addr_ff[25]_i_1_n_0 ;
  wire \req_addr_ff[26]_i_1_n_0 ;
  wire \req_addr_ff[27]_i_1_n_0 ;
  wire \req_addr_ff[28]_i_1_n_0 ;
  wire \req_addr_ff[29]_i_1_n_0 ;
  wire \req_addr_ff[2]_i_1_n_0 ;
  wire \req_addr_ff[30]_i_1_n_0 ;
  wire \req_addr_ff[31]_i_1_n_0 ;
  wire \req_addr_ff[3]_i_1_n_0 ;
  wire \req_addr_ff[4]_i_1_n_0 ;
  wire \req_addr_ff[5]_i_1_n_0 ;
  wire \req_addr_ff[6]_i_1_n_0 ;
  wire \req_addr_ff[7]_i_1_n_0 ;
  wire \req_addr_ff[8]_i_1_n_0 ;
  wire \req_addr_ff[9]_i_1_n_0 ;
  wire [31:0]\req_addr_ff_reg[31]_0 ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [0:0]s_rv_slot;
  wire s_rv_valid;
  wire [31:0]sample_ff;
  wire sample_ff0;
  wire [31:1]\sample_index_array_ff[0]0 ;
  wire \sample_index_array_ff[0]0_carry__0_n_0 ;
  wire \sample_index_array_ff[0]0_carry__0_n_1 ;
  wire \sample_index_array_ff[0]0_carry__0_n_2 ;
  wire \sample_index_array_ff[0]0_carry__0_n_3 ;
  wire \sample_index_array_ff[0]0_carry__1_n_0 ;
  wire \sample_index_array_ff[0]0_carry__1_n_1 ;
  wire \sample_index_array_ff[0]0_carry__1_n_2 ;
  wire \sample_index_array_ff[0]0_carry__1_n_3 ;
  wire \sample_index_array_ff[0]0_carry__2_n_0 ;
  wire \sample_index_array_ff[0]0_carry__2_n_1 ;
  wire \sample_index_array_ff[0]0_carry__2_n_2 ;
  wire \sample_index_array_ff[0]0_carry__2_n_3 ;
  wire \sample_index_array_ff[0]0_carry__3_n_0 ;
  wire \sample_index_array_ff[0]0_carry__3_n_1 ;
  wire \sample_index_array_ff[0]0_carry__3_n_2 ;
  wire \sample_index_array_ff[0]0_carry__3_n_3 ;
  wire \sample_index_array_ff[0]0_carry__4_n_0 ;
  wire \sample_index_array_ff[0]0_carry__4_n_1 ;
  wire \sample_index_array_ff[0]0_carry__4_n_2 ;
  wire \sample_index_array_ff[0]0_carry__4_n_3 ;
  wire \sample_index_array_ff[0]0_carry__5_n_0 ;
  wire \sample_index_array_ff[0]0_carry__5_n_1 ;
  wire \sample_index_array_ff[0]0_carry__5_n_2 ;
  wire \sample_index_array_ff[0]0_carry__5_n_3 ;
  wire \sample_index_array_ff[0]0_carry__6_n_2 ;
  wire \sample_index_array_ff[0]0_carry__6_n_3 ;
  wire \sample_index_array_ff[0]0_carry_n_0 ;
  wire \sample_index_array_ff[0]0_carry_n_1 ;
  wire \sample_index_array_ff[0]0_carry_n_2 ;
  wire \sample_index_array_ff[0]0_carry_n_3 ;
  wire \sample_index_array_ff[0][0]_i_1_n_0 ;
  wire \sample_index_array_ff[0][10]_i_1_n_0 ;
  wire \sample_index_array_ff[0][11]_i_1_n_0 ;
  wire \sample_index_array_ff[0][12]_i_1_n_0 ;
  wire \sample_index_array_ff[0][13]_i_1_n_0 ;
  wire \sample_index_array_ff[0][14]_i_1_n_0 ;
  wire \sample_index_array_ff[0][15]_i_1_n_0 ;
  wire \sample_index_array_ff[0][16]_i_1_n_0 ;
  wire \sample_index_array_ff[0][17]_i_1_n_0 ;
  wire \sample_index_array_ff[0][18]_i_1_n_0 ;
  wire \sample_index_array_ff[0][19]_i_1_n_0 ;
  wire \sample_index_array_ff[0][1]_i_1_n_0 ;
  wire \sample_index_array_ff[0][20]_i_1_n_0 ;
  wire \sample_index_array_ff[0][21]_i_1_n_0 ;
  wire \sample_index_array_ff[0][22]_i_1_n_0 ;
  wire \sample_index_array_ff[0][23]_i_1_n_0 ;
  wire \sample_index_array_ff[0][24]_i_1_n_0 ;
  wire \sample_index_array_ff[0][25]_i_1_n_0 ;
  wire \sample_index_array_ff[0][26]_i_1_n_0 ;
  wire \sample_index_array_ff[0][27]_i_1_n_0 ;
  wire \sample_index_array_ff[0][28]_i_1_n_0 ;
  wire \sample_index_array_ff[0][29]_i_1_n_0 ;
  wire \sample_index_array_ff[0][2]_i_1_n_0 ;
  wire \sample_index_array_ff[0][30]_i_1_n_0 ;
  wire \sample_index_array_ff[0][31]_i_2_n_0 ;
  wire \sample_index_array_ff[0][3]_i_1_n_0 ;
  wire \sample_index_array_ff[0][4]_i_1_n_0 ;
  wire \sample_index_array_ff[0][5]_i_1_n_0 ;
  wire \sample_index_array_ff[0][6]_i_1_n_0 ;
  wire \sample_index_array_ff[0][7]_i_1_n_0 ;
  wire \sample_index_array_ff[0][8]_i_1_n_0 ;
  wire \sample_index_array_ff[0][9]_i_1_n_0 ;
  wire [31:1]\sample_index_array_ff[1]0 ;
  wire \sample_index_array_ff[1]0_carry__0_n_0 ;
  wire \sample_index_array_ff[1]0_carry__0_n_1 ;
  wire \sample_index_array_ff[1]0_carry__0_n_2 ;
  wire \sample_index_array_ff[1]0_carry__0_n_3 ;
  wire \sample_index_array_ff[1]0_carry__1_n_0 ;
  wire \sample_index_array_ff[1]0_carry__1_n_1 ;
  wire \sample_index_array_ff[1]0_carry__1_n_2 ;
  wire \sample_index_array_ff[1]0_carry__1_n_3 ;
  wire \sample_index_array_ff[1]0_carry__2_n_0 ;
  wire \sample_index_array_ff[1]0_carry__2_n_1 ;
  wire \sample_index_array_ff[1]0_carry__2_n_2 ;
  wire \sample_index_array_ff[1]0_carry__2_n_3 ;
  wire \sample_index_array_ff[1]0_carry__3_n_0 ;
  wire \sample_index_array_ff[1]0_carry__3_n_1 ;
  wire \sample_index_array_ff[1]0_carry__3_n_2 ;
  wire \sample_index_array_ff[1]0_carry__3_n_3 ;
  wire \sample_index_array_ff[1]0_carry__4_n_0 ;
  wire \sample_index_array_ff[1]0_carry__4_n_1 ;
  wire \sample_index_array_ff[1]0_carry__4_n_2 ;
  wire \sample_index_array_ff[1]0_carry__4_n_3 ;
  wire \sample_index_array_ff[1]0_carry__5_n_0 ;
  wire \sample_index_array_ff[1]0_carry__5_n_1 ;
  wire \sample_index_array_ff[1]0_carry__5_n_2 ;
  wire \sample_index_array_ff[1]0_carry__5_n_3 ;
  wire \sample_index_array_ff[1]0_carry__6_n_2 ;
  wire \sample_index_array_ff[1]0_carry__6_n_3 ;
  wire \sample_index_array_ff[1]0_carry_n_0 ;
  wire \sample_index_array_ff[1]0_carry_n_1 ;
  wire \sample_index_array_ff[1]0_carry_n_2 ;
  wire \sample_index_array_ff[1]0_carry_n_3 ;
  wire \sample_index_array_ff[1][0]_i_1_n_0 ;
  wire \sample_index_array_ff[1][10]_i_1_n_0 ;
  wire \sample_index_array_ff[1][11]_i_1_n_0 ;
  wire \sample_index_array_ff[1][12]_i_1_n_0 ;
  wire \sample_index_array_ff[1][13]_i_1_n_0 ;
  wire \sample_index_array_ff[1][14]_i_1_n_0 ;
  wire \sample_index_array_ff[1][15]_i_1_n_0 ;
  wire \sample_index_array_ff[1][16]_i_1_n_0 ;
  wire \sample_index_array_ff[1][17]_i_1_n_0 ;
  wire \sample_index_array_ff[1][18]_i_1_n_0 ;
  wire \sample_index_array_ff[1][19]_i_1_n_0 ;
  wire \sample_index_array_ff[1][1]_i_1_n_0 ;
  wire \sample_index_array_ff[1][20]_i_1_n_0 ;
  wire \sample_index_array_ff[1][21]_i_1_n_0 ;
  wire \sample_index_array_ff[1][22]_i_1_n_0 ;
  wire \sample_index_array_ff[1][23]_i_1_n_0 ;
  wire \sample_index_array_ff[1][24]_i_1_n_0 ;
  wire \sample_index_array_ff[1][25]_i_1_n_0 ;
  wire \sample_index_array_ff[1][26]_i_1_n_0 ;
  wire \sample_index_array_ff[1][27]_i_1_n_0 ;
  wire \sample_index_array_ff[1][28]_i_1_n_0 ;
  wire \sample_index_array_ff[1][29]_i_1_n_0 ;
  wire \sample_index_array_ff[1][2]_i_1_n_0 ;
  wire \sample_index_array_ff[1][30]_i_1_n_0 ;
  wire \sample_index_array_ff[1][31]_i_2_n_0 ;
  wire \sample_index_array_ff[1][3]_i_1_n_0 ;
  wire \sample_index_array_ff[1][4]_i_1_n_0 ;
  wire \sample_index_array_ff[1][5]_i_1_n_0 ;
  wire \sample_index_array_ff[1][6]_i_1_n_0 ;
  wire \sample_index_array_ff[1][7]_i_1_n_0 ;
  wire \sample_index_array_ff[1][8]_i_1_n_0 ;
  wire \sample_index_array_ff[1][9]_i_1_n_0 ;
  wire \sample_index_array_ff_reg_n_0_[0][0] ;
  wire \sample_index_array_ff_reg_n_0_[0][10] ;
  wire \sample_index_array_ff_reg_n_0_[0][11] ;
  wire \sample_index_array_ff_reg_n_0_[0][12] ;
  wire \sample_index_array_ff_reg_n_0_[0][13] ;
  wire \sample_index_array_ff_reg_n_0_[0][14] ;
  wire \sample_index_array_ff_reg_n_0_[0][15] ;
  wire \sample_index_array_ff_reg_n_0_[0][16] ;
  wire \sample_index_array_ff_reg_n_0_[0][17] ;
  wire \sample_index_array_ff_reg_n_0_[0][18] ;
  wire \sample_index_array_ff_reg_n_0_[0][19] ;
  wire \sample_index_array_ff_reg_n_0_[0][1] ;
  wire \sample_index_array_ff_reg_n_0_[0][20] ;
  wire \sample_index_array_ff_reg_n_0_[0][21] ;
  wire \sample_index_array_ff_reg_n_0_[0][22] ;
  wire \sample_index_array_ff_reg_n_0_[0][23] ;
  wire \sample_index_array_ff_reg_n_0_[0][24] ;
  wire \sample_index_array_ff_reg_n_0_[0][25] ;
  wire \sample_index_array_ff_reg_n_0_[0][26] ;
  wire \sample_index_array_ff_reg_n_0_[0][27] ;
  wire \sample_index_array_ff_reg_n_0_[0][28] ;
  wire \sample_index_array_ff_reg_n_0_[0][29] ;
  wire \sample_index_array_ff_reg_n_0_[0][2] ;
  wire \sample_index_array_ff_reg_n_0_[0][30] ;
  wire \sample_index_array_ff_reg_n_0_[0][31] ;
  wire \sample_index_array_ff_reg_n_0_[0][3] ;
  wire \sample_index_array_ff_reg_n_0_[0][4] ;
  wire \sample_index_array_ff_reg_n_0_[0][5] ;
  wire \sample_index_array_ff_reg_n_0_[0][6] ;
  wire \sample_index_array_ff_reg_n_0_[0][7] ;
  wire \sample_index_array_ff_reg_n_0_[0][8] ;
  wire \sample_index_array_ff_reg_n_0_[0][9] ;
  wire \sample_index_array_ff_reg_n_0_[1][0] ;
  wire \sample_index_array_ff_reg_n_0_[1][10] ;
  wire \sample_index_array_ff_reg_n_0_[1][11] ;
  wire \sample_index_array_ff_reg_n_0_[1][12] ;
  wire \sample_index_array_ff_reg_n_0_[1][13] ;
  wire \sample_index_array_ff_reg_n_0_[1][14] ;
  wire \sample_index_array_ff_reg_n_0_[1][15] ;
  wire \sample_index_array_ff_reg_n_0_[1][16] ;
  wire \sample_index_array_ff_reg_n_0_[1][17] ;
  wire \sample_index_array_ff_reg_n_0_[1][18] ;
  wire \sample_index_array_ff_reg_n_0_[1][19] ;
  wire \sample_index_array_ff_reg_n_0_[1][1] ;
  wire \sample_index_array_ff_reg_n_0_[1][20] ;
  wire \sample_index_array_ff_reg_n_0_[1][21] ;
  wire \sample_index_array_ff_reg_n_0_[1][22] ;
  wire \sample_index_array_ff_reg_n_0_[1][23] ;
  wire \sample_index_array_ff_reg_n_0_[1][24] ;
  wire \sample_index_array_ff_reg_n_0_[1][25] ;
  wire \sample_index_array_ff_reg_n_0_[1][26] ;
  wire \sample_index_array_ff_reg_n_0_[1][27] ;
  wire \sample_index_array_ff_reg_n_0_[1][28] ;
  wire \sample_index_array_ff_reg_n_0_[1][29] ;
  wire \sample_index_array_ff_reg_n_0_[1][2] ;
  wire \sample_index_array_ff_reg_n_0_[1][30] ;
  wire \sample_index_array_ff_reg_n_0_[1][31] ;
  wire \sample_index_array_ff_reg_n_0_[1][3] ;
  wire \sample_index_array_ff_reg_n_0_[1][4] ;
  wire \sample_index_array_ff_reg_n_0_[1][5] ;
  wire \sample_index_array_ff_reg_n_0_[1][6] ;
  wire \sample_index_array_ff_reg_n_0_[1][7] ;
  wire \sample_index_array_ff_reg_n_0_[1][8] ;
  wire \sample_index_array_ff_reg_n_0_[1][9] ;
  wire sel;
  wire \sleep_counter_ff[0]_i_1_n_0 ;
  wire \sleep_counter_ff[0]_i_4_n_0 ;
  wire \sleep_counter_ff[0]_i_5_n_0 ;
  wire \sleep_counter_ff[0]_i_6_n_0 ;
  wire \sleep_counter_ff[0]_i_7_n_0 ;
  wire [14:0]sleep_counter_ff_reg;
  wire \sleep_counter_ff_reg[0]_i_3_n_0 ;
  wire \sleep_counter_ff_reg[0]_i_3_n_1 ;
  wire \sleep_counter_ff_reg[0]_i_3_n_2 ;
  wire \sleep_counter_ff_reg[0]_i_3_n_3 ;
  wire \sleep_counter_ff_reg[0]_i_3_n_4 ;
  wire \sleep_counter_ff_reg[0]_i_3_n_5 ;
  wire \sleep_counter_ff_reg[0]_i_3_n_6 ;
  wire \sleep_counter_ff_reg[0]_i_3_n_7 ;
  wire \sleep_counter_ff_reg[12]_i_1_n_2 ;
  wire \sleep_counter_ff_reg[12]_i_1_n_3 ;
  wire \sleep_counter_ff_reg[12]_i_1_n_5 ;
  wire \sleep_counter_ff_reg[12]_i_1_n_6 ;
  wire \sleep_counter_ff_reg[12]_i_1_n_7 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_0 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_1 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_2 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_3 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_4 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_5 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_6 ;
  wire \sleep_counter_ff_reg[4]_i_1_n_7 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_0 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_1 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_2 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_3 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_4 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_5 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_6 ;
  wire \sleep_counter_ff_reg[8]_i_1_n_7 ;
  wire \slot_active_array_ff[0]_i_1_n_0 ;
  wire \slot_active_array_ff[1]_i_1_n_0 ;
  wire \slot_active_array_ff[1]_i_2_n_0 ;
  wire \slot_active_array_ff_reg[0]_0 ;
  wire \slot_active_array_ff_reg[1]_0 ;
  wire valid_ff_i_2_n_0;
  wire [0:0]valid_ff_reg;
  wire vol_coef_array_ff_reg_0_1_12_17_n_2;
  wire vol_coef_array_ff_reg_0_1_12_17_n_4;
  wire vol_coef_array_ff_reg_0_1_12_17_n_5;
  wire vol_coef_array_ff_reg_0_1_30_31_n_1;
  wire [3:3]\NLW_byte_index_array_ff[0]0_carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_byte_index_array_ff[1]0_carry__6_CO_UNCONNECTED ;
  wire NLW_combined_samples_ff_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_combined_samples_ff_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_combined_samples_ff_reg_OVERFLOW_UNCONNECTED;
  wire NLW_combined_samples_ff_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_combined_samples_ff_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_combined_samples_ff_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_combined_samples_ff_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_combined_samples_ff_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_combined_samples_ff_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_combined_samples_ff_reg_P_UNCONNECTED;
  wire [47:0]NLW_combined_samples_ff_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_last_sample_array0_carry_O_UNCONNECTED;
  wire [3:0]NLW_last_sample_array0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_last_sample_array0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_last_sample_array0_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_last_sample_array0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_last_sample_array0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_last_sample_array0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_last_sample_array0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:2]NLW_last_sample_array1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_last_sample_array1_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_last_sample_array1_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_last_sample_array1_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:3]NLW_req_addr_ff0_carry__6_CO_UNCONNECTED;
  wire [3:2]\NLW_sample_index_array_ff[0]0_carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_sample_index_array_ff[0]0_carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_sample_index_array_ff[1]0_carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_sample_index_array_ff[1]0_carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED ;
  wire [1:0]NLW_vol_coef_array_ff_reg_0_1_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_vol_coef_array_ff_reg_0_1_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_vol_coef_array_ff_reg_0_1_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_vol_coef_array_ff_reg_0_1_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_vol_coef_array_ff_reg_0_1_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_vol_coef_array_ff_reg_0_1_6_11_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00010F70)) 
    \FSM_sequential_curr_initter_state_ff[0]_i_1 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .I2(curr_initter_state_ff[0]),
        .I3(curr_initter_state_ff[2]),
        .I4(curr_initter_state_ff[1]),
        .O(next_initter_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h0F0E00F0)) 
    \FSM_sequential_curr_initter_state_ff[1]_i_1 
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .I2(curr_initter_state_ff[2]),
        .I3(curr_initter_state_ff[0]),
        .I4(curr_initter_state_ff[1]),
        .O(next_initter_state__0[1]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_curr_initter_state_ff[2]_i_1 
       (.I0(sel),
        .I1(s_rv_valid),
        .I2(curr_initter_state_ff[2]),
        .I3(curr_initter_state_ff[1]),
        .I4(curr_initter_state_ff[0]),
        .I5(\sleep_counter_ff[0]_i_1_n_0 ),
        .O(next_initter_state__0[2]));
  (* FSM_ENCODED_STATES = "is_calcing_req_addr:011,is_requesting_num_samples:010,is_setting_slot:100,is_returning_num_samples:001,is_idle:000" *) 
  FDRE \FSM_sequential_curr_initter_state_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_initter_state__0[0]),
        .Q(curr_initter_state_ff[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "is_calcing_req_addr:011,is_requesting_num_samples:010,is_setting_slot:100,is_returning_num_samples:001,is_idle:000" *) 
  FDRE \FSM_sequential_curr_initter_state_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_initter_state__0[1]),
        .Q(curr_initter_state_ff[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "is_calcing_req_addr:011,is_requesting_num_samples:010,is_setting_slot:100,is_returning_num_samples:001,is_idle:000" *) 
  FDRE \FSM_sequential_curr_initter_state_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_initter_state__0[2]),
        .Q(curr_initter_state_ff[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    \FSM_sequential_curr_state_ff[1]_i_4 
       (.I0(Q[0]),
        .I1(curr_player_state_ff),
        .I2(Q[1]),
        .I3(curr_initter_state_ff[0]),
        .I4(curr_initter_state_ff[1]),
        .I5(curr_initter_state_ff[2]),
        .O(\curr_player_state_ff_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000022222F22)) 
    \axi_araddr_ff[31]_i_2 
       (.I0(\axi_araddr_ff[31]_i_3_n_0 ),
        .I1(curr_initter_state_ff[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(Q[0]),
        .I5(\axi_araddr_ff_reg[31] ),
        .O(\FSM_sequential_curr_initter_state_ff_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr_ff[31]_i_3 
       (.I0(curr_initter_state_ff[1]),
        .I1(curr_initter_state_ff[2]),
        .O(\axi_araddr_ff[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_awaddr_ff[30]_i_2 
       (.I0(curr_player_state_ff),
        .I1(Q[1]),
        .I2(curr_state_ff_0[0]),
        .I3(curr_state_ff_0[1]),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry 
       (.CI(1'b0),
        .CO({\byte_index_array_ff[0]0_carry_n_0 ,\byte_index_array_ff[0]0_carry_n_1 ,\byte_index_array_ff[0]0_carry_n_2 ,\byte_index_array_ff[0]0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\byte_index_array_ff_reg[0] [1],1'b0}),
        .O(\byte_index_array_ff[0]0 [3:0]),
        .S({\byte_index_array_ff_reg[0] [3:2],\byte_index_array_ff[0]0_carry_i_1_n_0 ,\byte_index_array_ff_reg[0] [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry__0 
       (.CI(\byte_index_array_ff[0]0_carry_n_0 ),
        .CO({\byte_index_array_ff[0]0_carry__0_n_0 ,\byte_index_array_ff[0]0_carry__0_n_1 ,\byte_index_array_ff[0]0_carry__0_n_2 ,\byte_index_array_ff[0]0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[0]0 [7:4]),
        .S(\byte_index_array_ff_reg[0] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry__1 
       (.CI(\byte_index_array_ff[0]0_carry__0_n_0 ),
        .CO({\byte_index_array_ff[0]0_carry__1_n_0 ,\byte_index_array_ff[0]0_carry__1_n_1 ,\byte_index_array_ff[0]0_carry__1_n_2 ,\byte_index_array_ff[0]0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[0]0 [11:8]),
        .S(\byte_index_array_ff_reg[0] [11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry__2 
       (.CI(\byte_index_array_ff[0]0_carry__1_n_0 ),
        .CO({\byte_index_array_ff[0]0_carry__2_n_0 ,\byte_index_array_ff[0]0_carry__2_n_1 ,\byte_index_array_ff[0]0_carry__2_n_2 ,\byte_index_array_ff[0]0_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[0]0 [15:12]),
        .S(\byte_index_array_ff_reg[0] [15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry__3 
       (.CI(\byte_index_array_ff[0]0_carry__2_n_0 ),
        .CO({\byte_index_array_ff[0]0_carry__3_n_0 ,\byte_index_array_ff[0]0_carry__3_n_1 ,\byte_index_array_ff[0]0_carry__3_n_2 ,\byte_index_array_ff[0]0_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[0]0 [19:16]),
        .S(\byte_index_array_ff_reg[0] [19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry__4 
       (.CI(\byte_index_array_ff[0]0_carry__3_n_0 ),
        .CO({\byte_index_array_ff[0]0_carry__4_n_0 ,\byte_index_array_ff[0]0_carry__4_n_1 ,\byte_index_array_ff[0]0_carry__4_n_2 ,\byte_index_array_ff[0]0_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[0]0 [23:20]),
        .S(\byte_index_array_ff_reg[0] [23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry__5 
       (.CI(\byte_index_array_ff[0]0_carry__4_n_0 ),
        .CO({\byte_index_array_ff[0]0_carry__5_n_0 ,\byte_index_array_ff[0]0_carry__5_n_1 ,\byte_index_array_ff[0]0_carry__5_n_2 ,\byte_index_array_ff[0]0_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[0]0 [27:24]),
        .S(\byte_index_array_ff_reg[0] [27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[0]0_carry__6 
       (.CI(\byte_index_array_ff[0]0_carry__5_n_0 ),
        .CO({\NLW_byte_index_array_ff[0]0_carry__6_CO_UNCONNECTED [3],\byte_index_array_ff[0]0_carry__6_n_1 ,\byte_index_array_ff[0]0_carry__6_n_2 ,\byte_index_array_ff[0]0_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[0]0 [31:28]),
        .S(\byte_index_array_ff_reg[0] [31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    \byte_index_array_ff[0]0_carry_i_1 
       (.I0(\byte_index_array_ff_reg[0] [1]),
        .O(\byte_index_array_ff[0]0_carry_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][0]_i_1 
       (.I0(\byte_index_array_ff[0]0 [0]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][10]_i_1 
       (.I0(\byte_index_array_ff[0]0 [10]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][11]_i_1 
       (.I0(\byte_index_array_ff[0]0 [11]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][12]_i_1 
       (.I0(\byte_index_array_ff[0]0 [12]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][13]_i_1 
       (.I0(\byte_index_array_ff[0]0 [13]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][14]_i_1 
       (.I0(\byte_index_array_ff[0]0 [14]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][15]_i_1 
       (.I0(\byte_index_array_ff[0]0 [15]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][16]_i_1 
       (.I0(\byte_index_array_ff[0]0 [16]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][17]_i_1 
       (.I0(\byte_index_array_ff[0]0 [17]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][18]_i_1 
       (.I0(\byte_index_array_ff[0]0 [18]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][19]_i_1 
       (.I0(\byte_index_array_ff[0]0 [19]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][1]_i_1 
       (.I0(\byte_index_array_ff[0]0 [1]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][20]_i_1 
       (.I0(\byte_index_array_ff[0]0 [20]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][21]_i_1 
       (.I0(\byte_index_array_ff[0]0 [21]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][22]_i_1 
       (.I0(\byte_index_array_ff[0]0 [22]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][23]_i_1 
       (.I0(\byte_index_array_ff[0]0 [23]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][24]_i_1 
       (.I0(\byte_index_array_ff[0]0 [24]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][25]_i_1 
       (.I0(\byte_index_array_ff[0]0 [25]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][26]_i_1 
       (.I0(\byte_index_array_ff[0]0 [26]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][27]_i_1 
       (.I0(\byte_index_array_ff[0]0 [27]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][28]_i_1 
       (.I0(\byte_index_array_ff[0]0 [28]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][29]_i_1 
       (.I0(\byte_index_array_ff[0]0 [29]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][2]_i_1 
       (.I0(\byte_index_array_ff[0]0 [2]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][30]_i_1 
       (.I0(\byte_index_array_ff[0]0 [30]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][31]_i_1 
       (.I0(\byte_index_array_ff[0]0 [31]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][3]_i_1 
       (.I0(\byte_index_array_ff[0]0 [3]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][4]_i_1 
       (.I0(\byte_index_array_ff[0]0 [4]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][5]_i_1 
       (.I0(\byte_index_array_ff[0]0 [5]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][6]_i_1 
       (.I0(\byte_index_array_ff[0]0 [6]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][7]_i_1 
       (.I0(\byte_index_array_ff[0]0 [7]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][8]_i_1 
       (.I0(\byte_index_array_ff[0]0 [8]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \byte_index_array_ff[0][9]_i_1 
       (.I0(\byte_index_array_ff[0]0 [9]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\byte_index_array_ff[0][9]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry 
       (.CI(1'b0),
        .CO({\byte_index_array_ff[1]0_carry_n_0 ,\byte_index_array_ff[1]0_carry_n_1 ,\byte_index_array_ff[1]0_carry_n_2 ,\byte_index_array_ff[1]0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\byte_index_array_ff_reg[1] [1],1'b0}),
        .O(\byte_index_array_ff[1]0 [3:0]),
        .S({\byte_index_array_ff_reg[1] [3:2],\byte_index_array_ff[1]0_carry_i_1_n_0 ,\byte_index_array_ff_reg[1] [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry__0 
       (.CI(\byte_index_array_ff[1]0_carry_n_0 ),
        .CO({\byte_index_array_ff[1]0_carry__0_n_0 ,\byte_index_array_ff[1]0_carry__0_n_1 ,\byte_index_array_ff[1]0_carry__0_n_2 ,\byte_index_array_ff[1]0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[1]0 [7:4]),
        .S(\byte_index_array_ff_reg[1] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry__1 
       (.CI(\byte_index_array_ff[1]0_carry__0_n_0 ),
        .CO({\byte_index_array_ff[1]0_carry__1_n_0 ,\byte_index_array_ff[1]0_carry__1_n_1 ,\byte_index_array_ff[1]0_carry__1_n_2 ,\byte_index_array_ff[1]0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[1]0 [11:8]),
        .S(\byte_index_array_ff_reg[1] [11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry__2 
       (.CI(\byte_index_array_ff[1]0_carry__1_n_0 ),
        .CO({\byte_index_array_ff[1]0_carry__2_n_0 ,\byte_index_array_ff[1]0_carry__2_n_1 ,\byte_index_array_ff[1]0_carry__2_n_2 ,\byte_index_array_ff[1]0_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[1]0 [15:12]),
        .S(\byte_index_array_ff_reg[1] [15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry__3 
       (.CI(\byte_index_array_ff[1]0_carry__2_n_0 ),
        .CO({\byte_index_array_ff[1]0_carry__3_n_0 ,\byte_index_array_ff[1]0_carry__3_n_1 ,\byte_index_array_ff[1]0_carry__3_n_2 ,\byte_index_array_ff[1]0_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[1]0 [19:16]),
        .S(\byte_index_array_ff_reg[1] [19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry__4 
       (.CI(\byte_index_array_ff[1]0_carry__3_n_0 ),
        .CO({\byte_index_array_ff[1]0_carry__4_n_0 ,\byte_index_array_ff[1]0_carry__4_n_1 ,\byte_index_array_ff[1]0_carry__4_n_2 ,\byte_index_array_ff[1]0_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[1]0 [23:20]),
        .S(\byte_index_array_ff_reg[1] [23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry__5 
       (.CI(\byte_index_array_ff[1]0_carry__4_n_0 ),
        .CO({\byte_index_array_ff[1]0_carry__5_n_0 ,\byte_index_array_ff[1]0_carry__5_n_1 ,\byte_index_array_ff[1]0_carry__5_n_2 ,\byte_index_array_ff[1]0_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[1]0 [27:24]),
        .S(\byte_index_array_ff_reg[1] [27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \byte_index_array_ff[1]0_carry__6 
       (.CI(\byte_index_array_ff[1]0_carry__5_n_0 ),
        .CO({\NLW_byte_index_array_ff[1]0_carry__6_CO_UNCONNECTED [3],\byte_index_array_ff[1]0_carry__6_n_1 ,\byte_index_array_ff[1]0_carry__6_n_2 ,\byte_index_array_ff[1]0_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\byte_index_array_ff[1]0 [31:28]),
        .S(\byte_index_array_ff_reg[1] [31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    \byte_index_array_ff[1]0_carry_i_1 
       (.I0(\byte_index_array_ff_reg[1] [1]),
        .O(\byte_index_array_ff[1]0_carry_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][0]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [0]),
        .O(\byte_index_array_ff[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][10]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [10]),
        .O(\byte_index_array_ff[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][11]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [11]),
        .O(\byte_index_array_ff[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][12]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [12]),
        .O(\byte_index_array_ff[1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][13]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [13]),
        .O(\byte_index_array_ff[1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][14]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [14]),
        .O(\byte_index_array_ff[1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][15]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [15]),
        .O(\byte_index_array_ff[1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][16]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [16]),
        .O(\byte_index_array_ff[1][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][17]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [17]),
        .O(\byte_index_array_ff[1][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][18]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [18]),
        .O(\byte_index_array_ff[1][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][19]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [19]),
        .O(\byte_index_array_ff[1][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][1]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [1]),
        .O(\byte_index_array_ff[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][20]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [20]),
        .O(\byte_index_array_ff[1][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][21]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [21]),
        .O(\byte_index_array_ff[1][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][22]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [22]),
        .O(\byte_index_array_ff[1][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][23]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [23]),
        .O(\byte_index_array_ff[1][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][24]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [24]),
        .O(\byte_index_array_ff[1][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][25]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [25]),
        .O(\byte_index_array_ff[1][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][26]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [26]),
        .O(\byte_index_array_ff[1][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][27]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [27]),
        .O(\byte_index_array_ff[1][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][28]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [28]),
        .O(\byte_index_array_ff[1][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][29]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [29]),
        .O(\byte_index_array_ff[1][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][2]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [2]),
        .O(\byte_index_array_ff[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][30]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [30]),
        .O(\byte_index_array_ff[1][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][31]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [31]),
        .O(\byte_index_array_ff[1][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][3]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [3]),
        .O(\byte_index_array_ff[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][4]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [4]),
        .O(\byte_index_array_ff[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][5]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [5]),
        .O(\byte_index_array_ff[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][6]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [6]),
        .O(\byte_index_array_ff[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][7]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [7]),
        .O(\byte_index_array_ff[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][8]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [8]),
        .O(\byte_index_array_ff[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \byte_index_array_ff[1][9]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\byte_index_array_ff[1]0 [9]),
        .O(\byte_index_array_ff[1][9]_i_1_n_0 ));
  FDRE \byte_index_array_ff_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][0]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [0]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][10]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [10]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][11]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [11]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][12]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [12]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][13]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [13]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][14]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [14]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][15]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [15]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][16]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [16]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][17]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [17]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][18]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [18]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][19]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [19]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][1]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [1]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][20]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [20]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][21]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [21]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][22]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [22]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][23]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [23]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][24] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][24]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [24]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][25] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][25]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [25]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][26] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][26]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [26]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][27] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][27]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [27]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][28] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][28]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [28]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][29] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][29]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [29]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][2]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [2]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][30]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [30]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][31]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [31]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][3]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [3]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][4]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [4]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][5]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [5]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][6]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [6]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][7]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [7]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][8]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [8]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\byte_index_array_ff[0][9]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[0] [9]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][0]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [0]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][10]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [10]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][11]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [11]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][12]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [12]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][13] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][13]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [13]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][14] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][14]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [14]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][15] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][15]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [15]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][16] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][16]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [16]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][17] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][17]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [17]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][18] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][18]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [18]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][19] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][19]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [19]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][1]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [1]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][20] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][20]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [20]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][21] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][21]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [21]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][22] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][22]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [22]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][23] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][23]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [23]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][24] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][24]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [24]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][25] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][25]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [25]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][26] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][26]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [26]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][27] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][27]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [27]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][28] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][28]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [28]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][29] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][29]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [29]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][2]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [2]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][30] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][30]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [30]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][31] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][31]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [31]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][3]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [3]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][4]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [4]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][5]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [5]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][6]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [6]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][7]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [7]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][8] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][8]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [8]),
        .R(SR));
  FDRE \byte_index_array_ff_reg[1][9] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\byte_index_array_ff[1][9]_i_1_n_0 ),
        .Q(\byte_index_array_ff_reg[1] [9]),
        .R(SR));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    combined_samples_ff_reg
       (.A({sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[31],sample_ff[14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_combined_samples_ff_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_combined_samples_ff_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_combined_samples_ff_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_combined_samples_ff_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(sample_ff0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEB2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(CEM),
        .CEP(CEP),
        .CLK(s_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_combined_samples_ff_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_combined_samples_ff_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_combined_samples_ff_reg_P_UNCONNECTED[47:32],D}),
        .PATTERNBDETECT(NLW_combined_samples_ff_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_combined_samples_ff_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_combined_samples_ff_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(SR),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(SR),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(SR),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_combined_samples_ff_reg_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'h40000000)) 
    combined_samples_ff_reg_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(curr_player_state_ff),
        .I3(curr_state_ff[1]),
        .I4(curr_state_ff[0]),
        .O(sample_ff0));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_10
       (.I0(\num_samples_array_ff_reg[0][31]_0 [11]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [27]),
        .O(sample_ff[11]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_11
       (.I0(\num_samples_array_ff_reg[0][31]_0 [10]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [26]),
        .O(sample_ff[10]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_12
       (.I0(\num_samples_array_ff_reg[0][31]_0 [9]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [25]),
        .O(sample_ff[9]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_13
       (.I0(\num_samples_array_ff_reg[0][31]_0 [8]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [24]),
        .O(sample_ff[8]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_14
       (.I0(\num_samples_array_ff_reg[0][31]_0 [7]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [23]),
        .O(sample_ff[7]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_15
       (.I0(\num_samples_array_ff_reg[0][31]_0 [6]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [22]),
        .O(sample_ff[6]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_16
       (.I0(\num_samples_array_ff_reg[0][31]_0 [5]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [21]),
        .O(sample_ff[5]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_17
       (.I0(\num_samples_array_ff_reg[0][31]_0 [4]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [20]),
        .O(sample_ff[4]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_18
       (.I0(\num_samples_array_ff_reg[0][31]_0 [3]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [19]),
        .O(sample_ff[3]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_19
       (.I0(\num_samples_array_ff_reg[0][31]_0 [2]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [18]),
        .O(sample_ff[2]));
  LUT3 #(
    .INIT(8'h08)) 
    combined_samples_ff_reg_i_2
       (.I0(curr_player_state_ff),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(CEB2));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_20
       (.I0(\num_samples_array_ff_reg[0][31]_0 [1]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [17]),
        .O(sample_ff[1]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_21
       (.I0(\num_samples_array_ff_reg[0][31]_0 [0]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [16]),
        .O(sample_ff[0]));
  LUT3 #(
    .INIT(8'h02)) 
    combined_samples_ff_reg_i_3
       (.I0(Q[1]),
        .I1(curr_player_state_ff),
        .I2(Q[0]),
        .O(CEM));
  LUT3 #(
    .INIT(8'h40)) 
    combined_samples_ff_reg_i_4
       (.I0(curr_player_state_ff),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(CEP));
  LUT4 #(
    .INIT(16'h01FF)) 
    combined_samples_ff_reg_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(curr_player_state_ff),
        .I3(s_axi_aresetn),
        .O(RSTP));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_6
       (.I0(\num_samples_array_ff_reg[0][31]_0 [15]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [31]),
        .O(sample_ff[31]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_7
       (.I0(\num_samples_array_ff_reg[0][31]_0 [14]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [30]),
        .O(sample_ff[14]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_8
       (.I0(\num_samples_array_ff_reg[0][31]_0 [13]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [29]),
        .O(sample_ff[13]));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    combined_samples_ff_reg_i_9
       (.I0(\num_samples_array_ff_reg[0][31]_0 [12]),
        .I1(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I2(player_curr_slot_ff),
        .I3(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I4(\num_samples_array_ff_reg[0][31]_0 [28]),
        .O(sample_ff[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABAFFBA)) 
    \curr_player_state_ff[0]_i_1 
       (.I0(\curr_player_state_ff[0]_i_2_n_0 ),
        .I1(sel),
        .I2(\curr_player_state_ff[0]_i_3_n_0 ),
        .I3(\curr_player_state_ff_reg[0]_1 ),
        .I4(\curr_player_state_ff[0]_i_5_n_0 ),
        .I5(\curr_player_state_ff[0]_i_6_n_0 ),
        .O(next_player_state[0]));
  LUT5 #(
    .INIT(32'h00550300)) 
    \curr_player_state_ff[0]_i_2 
       (.I0(Q[0]),
        .I1(curr_state_ff[0]),
        .I2(curr_state_ff[1]),
        .I3(curr_player_state_ff),
        .I4(Q[1]),
        .O(\curr_player_state_ff[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \curr_player_state_ff[0]_i_3 
       (.I0(curr_initter_state_ff[0]),
        .I1(curr_initter_state_ff[1]),
        .I2(curr_initter_state_ff[2]),
        .I3(curr_player_state_ff),
        .I4(Q[0]),
        .O(\curr_player_state_ff[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \curr_player_state_ff[0]_i_5 
       (.I0(Q[0]),
        .I1(curr_player_state_ff),
        .O(\curr_player_state_ff[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \curr_player_state_ff[0]_i_6 
       (.I0(Q[0]),
        .I1(curr_state_ff_0[1]),
        .I2(curr_state_ff_0[0]),
        .I3(Q[1]),
        .I4(\curr_player_state_ff[0]_i_7_n_0 ),
        .O(\curr_player_state_ff[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A0E0A0A)) 
    \curr_player_state_ff[0]_i_7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(curr_player_state_ff),
        .I3(\slot_active_array_ff_reg[0]_0 ),
        .I4(\slot_active_array_ff_reg[1]_0 ),
        .I5(player_curr_slot_ff),
        .O(\curr_player_state_ff[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFFAEAAAAA)) 
    \curr_player_state_ff[1]_i_1 
       (.I0(\curr_player_state_ff[1]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(player_curr_slot_ff),
        .I3(\slot_active_array_ff_reg[1]_0 ),
        .I4(Q[0]),
        .I5(curr_player_state_ff),
        .O(next_player_state[1]));
  LUT6 #(
    .INIT(64'hAA00AA00CCF0CC00)) 
    \curr_player_state_ff[1]_i_2 
       (.I0(\curr_player_state_ff_reg[1]_0 ),
        .I1(\curr_player_state_ff_reg[2]_0 ),
        .I2(Q[0]),
        .I3(curr_player_state_ff),
        .I4(\slot_active_array_ff_reg[0]_0 ),
        .I5(Q[1]),
        .O(\curr_player_state_ff[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A6A2262)) 
    \curr_player_state_ff[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(curr_player_state_ff),
        .I3(\curr_player_state_ff_reg[2]_0 ),
        .I4(player_curr_slot_ff),
        .I5(\curr_player_state_ff[2]_i_3_n_0 ),
        .O(next_player_state[2]));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \curr_player_state_ff[2]_i_3 
       (.I0(\curr_player_state_ff[2]_i_4_n_0 ),
        .I1(\slot_active_array_ff_reg[0]_0 ),
        .I2(\slot_active_array_ff_reg[1]_0 ),
        .I3(\curr_player_state_ff_reg[1]_0 ),
        .I4(curr_player_state_ff),
        .I5(Q[1]),
        .O(\curr_player_state_ff[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \curr_player_state_ff[2]_i_4 
       (.I0(curr_player_state_ff),
        .I1(Q[0]),
        .I2(player_curr_slot_ff),
        .O(\curr_player_state_ff[2]_i_4_n_0 ));
  FDRE \curr_player_state_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_player_state[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \curr_player_state_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_player_state[1]),
        .Q(curr_player_state_ff),
        .R(SR));
  FDRE \curr_player_state_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_player_state[2]),
        .Q(Q[1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\num_samples_array_ff_reg[1] [8]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1__0
       (.I0(last_sample_array10_in[23]),
        .I1(\sample_index_array_ff_reg_n_0_[1][23] ),
        .I2(last_sample_array10_in[22]),
        .I3(\sample_index_array_ff_reg_n_0_[1][22] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][21] ),
        .I5(last_sample_array10_in[21]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(\num_samples_array_ff_reg[1] [7]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__0
       (.I0(last_sample_array10_in[20]),
        .I1(\sample_index_array_ff_reg_n_0_[1][20] ),
        .I2(last_sample_array10_in[19]),
        .I3(\sample_index_array_ff_reg_n_0_[1][19] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][18] ),
        .I5(last_sample_array10_in[18]),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(\num_samples_array_ff_reg[1] [6]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3__0
       (.I0(last_sample_array10_in[17]),
        .I1(\sample_index_array_ff_reg_n_0_[1][17] ),
        .I2(last_sample_array10_in[16]),
        .I3(\sample_index_array_ff_reg_n_0_[1][16] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][15] ),
        .I5(last_sample_array10_in[15]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(\num_samples_array_ff_reg[1] [5]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4__0
       (.I0(last_sample_array10_in[14]),
        .I1(\sample_index_array_ff_reg_n_0_[1][14] ),
        .I2(last_sample_array10_in[13]),
        .I3(\sample_index_array_ff_reg_n_0_[1][13] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][12] ),
        .I5(last_sample_array10_in[12]),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(\num_samples_array_ff_reg[1] [12]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1__0
       (.I0(last_sample_array10_in[31]),
        .I1(\sample_index_array_ff_reg_n_0_[1][31] ),
        .I2(last_sample_array10_in[30]),
        .I3(\sample_index_array_ff_reg_n_0_[1][30] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(\num_samples_array_ff_reg[1] [11]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2__0
       (.I0(last_sample_array10_in[29]),
        .I1(\sample_index_array_ff_reg_n_0_[1][29] ),
        .I2(last_sample_array10_in[28]),
        .I3(\sample_index_array_ff_reg_n_0_[1][28] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][27] ),
        .I5(last_sample_array10_in[27]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(\num_samples_array_ff_reg[1] [10]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3__0
       (.I0(last_sample_array10_in[26]),
        .I1(\sample_index_array_ff_reg_n_0_[1][26] ),
        .I2(last_sample_array10_in[25]),
        .I3(\sample_index_array_ff_reg_n_0_[1][25] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][24] ),
        .I5(last_sample_array10_in[24]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(\num_samples_array_ff_reg[1] [9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(\num_samples_array_ff_reg[1] [16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(\num_samples_array_ff_reg[1] [15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(\num_samples_array_ff_reg[1] [14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(\num_samples_array_ff_reg[1] [13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(\num_samples_array_ff_reg[1] [20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(\num_samples_array_ff_reg[1] [19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(\num_samples_array_ff_reg[1] [18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(\num_samples_array_ff_reg[1] [17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(\num_samples_array_ff_reg[1] [24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(\num_samples_array_ff_reg[1] [23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(\num_samples_array_ff_reg[1] [22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(\num_samples_array_ff_reg[1] [21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(\num_samples_array_ff_reg[1] [28]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(\num_samples_array_ff_reg[1] [27]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(\num_samples_array_ff_reg[1] [26]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(\num_samples_array_ff_reg[1] [25]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(\num_samples_array_ff_reg[1] [31]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(\num_samples_array_ff_reg[1] [30]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(\num_samples_array_ff_reg[1] [29]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\num_samples_array_ff_reg[1] [4]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(last_sample_array10_in[11]),
        .I1(\sample_index_array_ff_reg_n_0_[1][11] ),
        .I2(last_sample_array10_in[10]),
        .I3(\sample_index_array_ff_reg_n_0_[1][10] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][9] ),
        .I5(last_sample_array10_in[9]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\num_samples_array_ff_reg[1] [3]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(last_sample_array10_in[8]),
        .I1(\sample_index_array_ff_reg_n_0_[1][8] ),
        .I2(last_sample_array10_in[7]),
        .I3(\sample_index_array_ff_reg_n_0_[1][7] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][6] ),
        .I5(last_sample_array10_in[6]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(\num_samples_array_ff_reg[1] [2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(last_sample_array10_in[5]),
        .I1(\sample_index_array_ff_reg_n_0_[1][5] ),
        .I2(last_sample_array10_in[4]),
        .I3(\sample_index_array_ff_reg_n_0_[1][4] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][3] ),
        .I5(last_sample_array10_in[3]),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(\num_samples_array_ff_reg[1] [1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    i__carry_i_4__0
       (.I0(\sample_index_array_ff_reg_n_0_[1][0] ),
        .I1(\num_samples_array_ff_reg[1] [0]),
        .I2(last_sample_array10_in[2]),
        .I3(\sample_index_array_ff_reg_n_0_[1][2] ),
        .I4(\sample_index_array_ff_reg_n_0_[1][1] ),
        .I5(last_sample_array10_in[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    \initter_curr_slot_ff[0]_i_1 
       (.I0(s_rv_valid),
        .I1(curr_initter_state_ff[2]),
        .I2(curr_initter_state_ff[1]),
        .I3(curr_initter_state_ff[0]),
        .O(initter_sound_addr_ff0));
  FDRE \initter_curr_slot_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(s_rv_slot),
        .Q(initter_curr_slot_ff),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [0]),
        .Q(initter_sound_addr_ff[0]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [10]),
        .Q(initter_sound_addr_ff[10]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [11]),
        .Q(initter_sound_addr_ff[11]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [12]),
        .Q(initter_sound_addr_ff[12]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [13]),
        .Q(initter_sound_addr_ff[13]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [14]),
        .Q(initter_sound_addr_ff[14]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [15]),
        .Q(initter_sound_addr_ff[15]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [16]),
        .Q(initter_sound_addr_ff[16]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [17]),
        .Q(initter_sound_addr_ff[17]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [18]),
        .Q(initter_sound_addr_ff[18]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [19]),
        .Q(initter_sound_addr_ff[19]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [1]),
        .Q(initter_sound_addr_ff[1]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [20]),
        .Q(initter_sound_addr_ff[20]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [21]),
        .Q(initter_sound_addr_ff[21]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [22]),
        .Q(initter_sound_addr_ff[22]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [23]),
        .Q(initter_sound_addr_ff[23]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [24]),
        .Q(initter_sound_addr_ff[24]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [25]),
        .Q(initter_sound_addr_ff[25]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [26]),
        .Q(initter_sound_addr_ff[26]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [27]),
        .Q(initter_sound_addr_ff[27]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [28]),
        .Q(initter_sound_addr_ff[28]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [29]),
        .Q(initter_sound_addr_ff[29]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [2]),
        .Q(initter_sound_addr_ff[2]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [30]),
        .Q(initter_sound_addr_ff[30]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [31]),
        .Q(initter_sound_addr_ff[31]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [3]),
        .Q(initter_sound_addr_ff[3]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [4]),
        .Q(initter_sound_addr_ff[4]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [5]),
        .Q(initter_sound_addr_ff[5]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [6]),
        .Q(initter_sound_addr_ff[6]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [7]),
        .Q(initter_sound_addr_ff[7]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [8]),
        .Q(initter_sound_addr_ff[8]),
        .R(SR));
  FDRE \initter_sound_addr_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_sound_addr_ff_reg[31]_0 [9]),
        .Q(initter_sound_addr_ff[9]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [0]),
        .Q(initter_vol_coef_ff[0]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [10]),
        .Q(initter_vol_coef_ff[10]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [11]),
        .Q(initter_vol_coef_ff[11]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [12]),
        .Q(initter_vol_coef_ff[12]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [13]),
        .Q(initter_vol_coef_ff[13]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [14]),
        .Q(initter_vol_coef_ff[14]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [15]),
        .Q(initter_vol_coef_ff[15]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [16]),
        .Q(initter_vol_coef_ff[16]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [17]),
        .Q(initter_vol_coef_ff[17]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [1]),
        .Q(initter_vol_coef_ff[1]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [2]),
        .Q(initter_vol_coef_ff[2]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [18]),
        .Q(initter_vol_coef_ff[30]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [19]),
        .Q(initter_vol_coef_ff[31]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [3]),
        .Q(initter_vol_coef_ff[3]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [4]),
        .Q(initter_vol_coef_ff[4]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [5]),
        .Q(initter_vol_coef_ff[5]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [6]),
        .Q(initter_vol_coef_ff[6]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [7]),
        .Q(initter_vol_coef_ff[7]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [8]),
        .Q(initter_vol_coef_ff[8]),
        .R(SR));
  FDRE \initter_vol_coef_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(initter_sound_addr_ff0),
        .D(\initter_vol_coef_ff_reg[31]_0 [9]),
        .Q(initter_vol_coef_ff[9]),
        .R(SR));
  CARRY4 last_sample_array0_carry
       (.CI(1'b0),
        .CO({last_sample_array0_carry_n_0,last_sample_array0_carry_n_1,last_sample_array0_carry_n_2,last_sample_array0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sample_array0_carry_O_UNCONNECTED[3:0]),
        .S({last_sample_array0_carry_i_1_n_0,last_sample_array0_carry_i_2_n_0,last_sample_array0_carry_i_3_n_0,last_sample_array0_carry_i_4_n_0}));
  CARRY4 last_sample_array0_carry__0
       (.CI(last_sample_array0_carry_n_0),
        .CO({last_sample_array0_carry__0_n_0,last_sample_array0_carry__0_n_1,last_sample_array0_carry__0_n_2,last_sample_array0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sample_array0_carry__0_O_UNCONNECTED[3:0]),
        .S({last_sample_array0_carry__0_i_1_n_0,last_sample_array0_carry__0_i_2_n_0,last_sample_array0_carry__0_i_3_n_0,last_sample_array0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry__0_i_1
       (.I0(last_sample_array1[23]),
        .I1(\sample_index_array_ff_reg_n_0_[0][23] ),
        .I2(last_sample_array1[22]),
        .I3(\sample_index_array_ff_reg_n_0_[0][22] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][21] ),
        .I5(last_sample_array1[21]),
        .O(last_sample_array0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry__0_i_2
       (.I0(last_sample_array1[20]),
        .I1(\sample_index_array_ff_reg_n_0_[0][20] ),
        .I2(last_sample_array1[19]),
        .I3(\sample_index_array_ff_reg_n_0_[0][19] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][18] ),
        .I5(last_sample_array1[18]),
        .O(last_sample_array0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry__0_i_3
       (.I0(last_sample_array1[17]),
        .I1(\sample_index_array_ff_reg_n_0_[0][17] ),
        .I2(last_sample_array1[16]),
        .I3(\sample_index_array_ff_reg_n_0_[0][16] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][15] ),
        .I5(last_sample_array1[15]),
        .O(last_sample_array0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry__0_i_4
       (.I0(last_sample_array1[14]),
        .I1(\sample_index_array_ff_reg_n_0_[0][14] ),
        .I2(last_sample_array1[13]),
        .I3(\sample_index_array_ff_reg_n_0_[0][13] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][12] ),
        .I5(last_sample_array1[12]),
        .O(last_sample_array0_carry__0_i_4_n_0));
  CARRY4 last_sample_array0_carry__1
       (.CI(last_sample_array0_carry__0_n_0),
        .CO({NLW_last_sample_array0_carry__1_CO_UNCONNECTED[3],\gen_last_sample_array[0].last_sample_array_reg ,last_sample_array0_carry__1_n_2,last_sample_array0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_sample_array0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,last_sample_array0_carry__1_i_1_n_0,last_sample_array0_carry__1_i_2_n_0,last_sample_array0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    last_sample_array0_carry__1_i_1
       (.I0(last_sample_array1[31]),
        .I1(\sample_index_array_ff_reg_n_0_[0][31] ),
        .I2(last_sample_array1[30]),
        .I3(\sample_index_array_ff_reg_n_0_[0][30] ),
        .O(last_sample_array0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry__1_i_2
       (.I0(last_sample_array1[29]),
        .I1(\sample_index_array_ff_reg_n_0_[0][29] ),
        .I2(last_sample_array1[28]),
        .I3(\sample_index_array_ff_reg_n_0_[0][28] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][27] ),
        .I5(last_sample_array1[27]),
        .O(last_sample_array0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry__1_i_3
       (.I0(last_sample_array1[26]),
        .I1(\sample_index_array_ff_reg_n_0_[0][26] ),
        .I2(last_sample_array1[25]),
        .I3(\sample_index_array_ff_reg_n_0_[0][25] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][24] ),
        .I5(last_sample_array1[24]),
        .O(last_sample_array0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry_i_1
       (.I0(last_sample_array1[11]),
        .I1(\sample_index_array_ff_reg_n_0_[0][11] ),
        .I2(last_sample_array1[10]),
        .I3(\sample_index_array_ff_reg_n_0_[0][10] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][9] ),
        .I5(last_sample_array1[9]),
        .O(last_sample_array0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry_i_2
       (.I0(last_sample_array1[8]),
        .I1(\sample_index_array_ff_reg_n_0_[0][8] ),
        .I2(last_sample_array1[7]),
        .I3(\sample_index_array_ff_reg_n_0_[0][7] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][6] ),
        .I5(last_sample_array1[6]),
        .O(last_sample_array0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_sample_array0_carry_i_3
       (.I0(last_sample_array1[5]),
        .I1(\sample_index_array_ff_reg_n_0_[0][5] ),
        .I2(last_sample_array1[4]),
        .I3(\sample_index_array_ff_reg_n_0_[0][4] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][3] ),
        .I5(last_sample_array1[3]),
        .O(last_sample_array0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    last_sample_array0_carry_i_4
       (.I0(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I1(\num_samples_array_ff_reg[0] [0]),
        .I2(last_sample_array1[2]),
        .I3(\sample_index_array_ff_reg_n_0_[0][2] ),
        .I4(\sample_index_array_ff_reg_n_0_[0][1] ),
        .I5(last_sample_array1[1]),
        .O(last_sample_array0_carry_i_4_n_0));
  CARRY4 \last_sample_array0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\last_sample_array0_inferred__0/i__carry_n_0 ,\last_sample_array0_inferred__0/i__carry_n_1 ,\last_sample_array0_inferred__0/i__carry_n_2 ,\last_sample_array0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_last_sample_array0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \last_sample_array0_inferred__0/i__carry__0 
       (.CI(\last_sample_array0_inferred__0/i__carry_n_0 ),
        .CO({\last_sample_array0_inferred__0/i__carry__0_n_0 ,\last_sample_array0_inferred__0/i__carry__0_n_1 ,\last_sample_array0_inferred__0/i__carry__0_n_2 ,\last_sample_array0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_last_sample_array0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \last_sample_array0_inferred__0/i__carry__1 
       (.CI(\last_sample_array0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_last_sample_array0_inferred__0/i__carry__1_CO_UNCONNECTED [3],p_2_in,\last_sample_array0_inferred__0/i__carry__1_n_2 ,\last_sample_array0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_last_sample_array0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry
       (.CI(1'b0),
        .CO({last_sample_array1_carry_n_0,last_sample_array1_carry_n_1,last_sample_array1_carry_n_2,last_sample_array1_carry_n_3}),
        .CYINIT(\num_samples_array_ff_reg[0] [0]),
        .DI(\num_samples_array_ff_reg[0] [4:1]),
        .O(last_sample_array1[4:1]),
        .S({last_sample_array1_carry_i_1_n_0,last_sample_array1_carry_i_2_n_0,last_sample_array1_carry_i_3_n_0,last_sample_array1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry__0
       (.CI(last_sample_array1_carry_n_0),
        .CO({last_sample_array1_carry__0_n_0,last_sample_array1_carry__0_n_1,last_sample_array1_carry__0_n_2,last_sample_array1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[0] [8:5]),
        .O(last_sample_array1[8:5]),
        .S({last_sample_array1_carry__0_i_1_n_0,last_sample_array1_carry__0_i_2_n_0,last_sample_array1_carry__0_i_3_n_0,last_sample_array1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__0_i_1
       (.I0(\num_samples_array_ff_reg[0] [8]),
        .O(last_sample_array1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__0_i_2
       (.I0(\num_samples_array_ff_reg[0] [7]),
        .O(last_sample_array1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__0_i_3
       (.I0(\num_samples_array_ff_reg[0] [6]),
        .O(last_sample_array1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__0_i_4
       (.I0(\num_samples_array_ff_reg[0] [5]),
        .O(last_sample_array1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry__1
       (.CI(last_sample_array1_carry__0_n_0),
        .CO({last_sample_array1_carry__1_n_0,last_sample_array1_carry__1_n_1,last_sample_array1_carry__1_n_2,last_sample_array1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[0] [12:9]),
        .O(last_sample_array1[12:9]),
        .S({last_sample_array1_carry__1_i_1_n_0,last_sample_array1_carry__1_i_2_n_0,last_sample_array1_carry__1_i_3_n_0,last_sample_array1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__1_i_1
       (.I0(\num_samples_array_ff_reg[0] [12]),
        .O(last_sample_array1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__1_i_2
       (.I0(\num_samples_array_ff_reg[0] [11]),
        .O(last_sample_array1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__1_i_3
       (.I0(\num_samples_array_ff_reg[0] [10]),
        .O(last_sample_array1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__1_i_4
       (.I0(\num_samples_array_ff_reg[0] [9]),
        .O(last_sample_array1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry__2
       (.CI(last_sample_array1_carry__1_n_0),
        .CO({last_sample_array1_carry__2_n_0,last_sample_array1_carry__2_n_1,last_sample_array1_carry__2_n_2,last_sample_array1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[0] [16:13]),
        .O(last_sample_array1[16:13]),
        .S({last_sample_array1_carry__2_i_1_n_0,last_sample_array1_carry__2_i_2_n_0,last_sample_array1_carry__2_i_3_n_0,last_sample_array1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__2_i_1
       (.I0(\num_samples_array_ff_reg[0] [16]),
        .O(last_sample_array1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__2_i_2
       (.I0(\num_samples_array_ff_reg[0] [15]),
        .O(last_sample_array1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__2_i_3
       (.I0(\num_samples_array_ff_reg[0] [14]),
        .O(last_sample_array1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__2_i_4
       (.I0(\num_samples_array_ff_reg[0] [13]),
        .O(last_sample_array1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry__3
       (.CI(last_sample_array1_carry__2_n_0),
        .CO({last_sample_array1_carry__3_n_0,last_sample_array1_carry__3_n_1,last_sample_array1_carry__3_n_2,last_sample_array1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[0] [20:17]),
        .O(last_sample_array1[20:17]),
        .S({last_sample_array1_carry__3_i_1_n_0,last_sample_array1_carry__3_i_2_n_0,last_sample_array1_carry__3_i_3_n_0,last_sample_array1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__3_i_1
       (.I0(\num_samples_array_ff_reg[0] [20]),
        .O(last_sample_array1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__3_i_2
       (.I0(\num_samples_array_ff_reg[0] [19]),
        .O(last_sample_array1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__3_i_3
       (.I0(\num_samples_array_ff_reg[0] [18]),
        .O(last_sample_array1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__3_i_4
       (.I0(\num_samples_array_ff_reg[0] [17]),
        .O(last_sample_array1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry__4
       (.CI(last_sample_array1_carry__3_n_0),
        .CO({last_sample_array1_carry__4_n_0,last_sample_array1_carry__4_n_1,last_sample_array1_carry__4_n_2,last_sample_array1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[0] [24:21]),
        .O(last_sample_array1[24:21]),
        .S({last_sample_array1_carry__4_i_1_n_0,last_sample_array1_carry__4_i_2_n_0,last_sample_array1_carry__4_i_3_n_0,last_sample_array1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__4_i_1
       (.I0(\num_samples_array_ff_reg[0] [24]),
        .O(last_sample_array1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__4_i_2
       (.I0(\num_samples_array_ff_reg[0] [23]),
        .O(last_sample_array1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__4_i_3
       (.I0(\num_samples_array_ff_reg[0] [22]),
        .O(last_sample_array1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__4_i_4
       (.I0(\num_samples_array_ff_reg[0] [21]),
        .O(last_sample_array1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry__5
       (.CI(last_sample_array1_carry__4_n_0),
        .CO({last_sample_array1_carry__5_n_0,last_sample_array1_carry__5_n_1,last_sample_array1_carry__5_n_2,last_sample_array1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[0] [28:25]),
        .O(last_sample_array1[28:25]),
        .S({last_sample_array1_carry__5_i_1_n_0,last_sample_array1_carry__5_i_2_n_0,last_sample_array1_carry__5_i_3_n_0,last_sample_array1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__5_i_1
       (.I0(\num_samples_array_ff_reg[0] [28]),
        .O(last_sample_array1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__5_i_2
       (.I0(\num_samples_array_ff_reg[0] [27]),
        .O(last_sample_array1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__5_i_3
       (.I0(\num_samples_array_ff_reg[0] [26]),
        .O(last_sample_array1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__5_i_4
       (.I0(\num_samples_array_ff_reg[0] [25]),
        .O(last_sample_array1_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 last_sample_array1_carry__6
       (.CI(last_sample_array1_carry__5_n_0),
        .CO({NLW_last_sample_array1_carry__6_CO_UNCONNECTED[3:2],last_sample_array1_carry__6_n_2,last_sample_array1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\num_samples_array_ff_reg[0] [30:29]}),
        .O({NLW_last_sample_array1_carry__6_O_UNCONNECTED[3],last_sample_array1[31:29]}),
        .S({1'b0,last_sample_array1_carry__6_i_1_n_0,last_sample_array1_carry__6_i_2_n_0,last_sample_array1_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__6_i_1
       (.I0(\num_samples_array_ff_reg[0] [31]),
        .O(last_sample_array1_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__6_i_2
       (.I0(\num_samples_array_ff_reg[0] [30]),
        .O(last_sample_array1_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry__6_i_3
       (.I0(\num_samples_array_ff_reg[0] [29]),
        .O(last_sample_array1_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry_i_1
       (.I0(\num_samples_array_ff_reg[0] [4]),
        .O(last_sample_array1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry_i_2
       (.I0(\num_samples_array_ff_reg[0] [3]),
        .O(last_sample_array1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry_i_3
       (.I0(\num_samples_array_ff_reg[0] [2]),
        .O(last_sample_array1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_sample_array1_carry_i_4
       (.I0(\num_samples_array_ff_reg[0] [1]),
        .O(last_sample_array1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\last_sample_array1_inferred__0/i__carry_n_0 ,\last_sample_array1_inferred__0/i__carry_n_1 ,\last_sample_array1_inferred__0/i__carry_n_2 ,\last_sample_array1_inferred__0/i__carry_n_3 }),
        .CYINIT(\num_samples_array_ff_reg[1] [0]),
        .DI(\num_samples_array_ff_reg[1] [4:1]),
        .O(last_sample_array10_in[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry__0 
       (.CI(\last_sample_array1_inferred__0/i__carry_n_0 ),
        .CO({\last_sample_array1_inferred__0/i__carry__0_n_0 ,\last_sample_array1_inferred__0/i__carry__0_n_1 ,\last_sample_array1_inferred__0/i__carry__0_n_2 ,\last_sample_array1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[1] [8:5]),
        .O(last_sample_array10_in[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry__1 
       (.CI(\last_sample_array1_inferred__0/i__carry__0_n_0 ),
        .CO({\last_sample_array1_inferred__0/i__carry__1_n_0 ,\last_sample_array1_inferred__0/i__carry__1_n_1 ,\last_sample_array1_inferred__0/i__carry__1_n_2 ,\last_sample_array1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[1] [12:9]),
        .O(last_sample_array10_in[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry__2 
       (.CI(\last_sample_array1_inferred__0/i__carry__1_n_0 ),
        .CO({\last_sample_array1_inferred__0/i__carry__2_n_0 ,\last_sample_array1_inferred__0/i__carry__2_n_1 ,\last_sample_array1_inferred__0/i__carry__2_n_2 ,\last_sample_array1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[1] [16:13]),
        .O(last_sample_array10_in[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry__3 
       (.CI(\last_sample_array1_inferred__0/i__carry__2_n_0 ),
        .CO({\last_sample_array1_inferred__0/i__carry__3_n_0 ,\last_sample_array1_inferred__0/i__carry__3_n_1 ,\last_sample_array1_inferred__0/i__carry__3_n_2 ,\last_sample_array1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[1] [20:17]),
        .O(last_sample_array10_in[20:17]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry__4 
       (.CI(\last_sample_array1_inferred__0/i__carry__3_n_0 ),
        .CO({\last_sample_array1_inferred__0/i__carry__4_n_0 ,\last_sample_array1_inferred__0/i__carry__4_n_1 ,\last_sample_array1_inferred__0/i__carry__4_n_2 ,\last_sample_array1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[1] [24:21]),
        .O(last_sample_array10_in[24:21]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry__5 
       (.CI(\last_sample_array1_inferred__0/i__carry__4_n_0 ),
        .CO({\last_sample_array1_inferred__0/i__carry__5_n_0 ,\last_sample_array1_inferred__0/i__carry__5_n_1 ,\last_sample_array1_inferred__0/i__carry__5_n_2 ,\last_sample_array1_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(\num_samples_array_ff_reg[1] [28:25]),
        .O(last_sample_array10_in[28:25]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \last_sample_array1_inferred__0/i__carry__6 
       (.CI(\last_sample_array1_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_last_sample_array1_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\last_sample_array1_inferred__0/i__carry__6_n_2 ,\last_sample_array1_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\num_samples_array_ff_reg[1] [30:29]}),
        .O({\NLW_last_sample_array1_inferred__0/i__carry__6_O_UNCONNECTED [3],last_sample_array10_in[31:29]}),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \num_samples_array_ff[0][31]_i_1 
       (.I0(initter_curr_slot_ff),
        .I1(curr_state_ff[0]),
        .I2(curr_state_ff[1]),
        .I3(curr_initter_state_ff[1]),
        .I4(curr_initter_state_ff[2]),
        .I5(curr_initter_state_ff[0]),
        .O(\num_samples_array_ff[0]_3 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \num_samples_array_ff[1][31]_i_1 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .I2(initter_curr_slot_ff),
        .I3(curr_initter_state_ff[1]),
        .I4(curr_initter_state_ff[2]),
        .I5(curr_initter_state_ff[0]),
        .O(\num_samples_array_ff[1]_2 ));
  FDRE \num_samples_array_ff_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [0]),
        .Q(\num_samples_array_ff_reg[0] [0]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [10]),
        .Q(\num_samples_array_ff_reg[0] [10]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [11]),
        .Q(\num_samples_array_ff_reg[0] [11]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [12]),
        .Q(\num_samples_array_ff_reg[0] [12]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [13]),
        .Q(\num_samples_array_ff_reg[0] [13]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [14]),
        .Q(\num_samples_array_ff_reg[0] [14]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [15]),
        .Q(\num_samples_array_ff_reg[0] [15]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [16]),
        .Q(\num_samples_array_ff_reg[0] [16]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [17]),
        .Q(\num_samples_array_ff_reg[0] [17]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [18]),
        .Q(\num_samples_array_ff_reg[0] [18]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [19]),
        .Q(\num_samples_array_ff_reg[0] [19]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [1]),
        .Q(\num_samples_array_ff_reg[0] [1]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [20]),
        .Q(\num_samples_array_ff_reg[0] [20]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [21]),
        .Q(\num_samples_array_ff_reg[0] [21]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [22]),
        .Q(\num_samples_array_ff_reg[0] [22]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [23]),
        .Q(\num_samples_array_ff_reg[0] [23]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][24] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [24]),
        .Q(\num_samples_array_ff_reg[0] [24]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][25] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [25]),
        .Q(\num_samples_array_ff_reg[0] [25]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][26] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [26]),
        .Q(\num_samples_array_ff_reg[0] [26]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][27] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [27]),
        .Q(\num_samples_array_ff_reg[0] [27]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][28] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [28]),
        .Q(\num_samples_array_ff_reg[0] [28]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][29] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [29]),
        .Q(\num_samples_array_ff_reg[0] [29]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [2]),
        .Q(\num_samples_array_ff_reg[0] [2]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [30]),
        .Q(\num_samples_array_ff_reg[0] [30]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [31]),
        .Q(\num_samples_array_ff_reg[0] [31]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [3]),
        .Q(\num_samples_array_ff_reg[0] [3]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [4]),
        .Q(\num_samples_array_ff_reg[0] [4]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [5]),
        .Q(\num_samples_array_ff_reg[0] [5]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [6]),
        .Q(\num_samples_array_ff_reg[0] [6]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [7]),
        .Q(\num_samples_array_ff_reg[0] [7]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [8]),
        .Q(\num_samples_array_ff_reg[0] [8]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[0]_3 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [9]),
        .Q(\num_samples_array_ff_reg[0] [9]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [0]),
        .Q(\num_samples_array_ff_reg[1] [0]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [10]),
        .Q(\num_samples_array_ff_reg[1] [10]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [11]),
        .Q(\num_samples_array_ff_reg[1] [11]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [12]),
        .Q(\num_samples_array_ff_reg[1] [12]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][13] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [13]),
        .Q(\num_samples_array_ff_reg[1] [13]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][14] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [14]),
        .Q(\num_samples_array_ff_reg[1] [14]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][15] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [15]),
        .Q(\num_samples_array_ff_reg[1] [15]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][16] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [16]),
        .Q(\num_samples_array_ff_reg[1] [16]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][17] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [17]),
        .Q(\num_samples_array_ff_reg[1] [17]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][18] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [18]),
        .Q(\num_samples_array_ff_reg[1] [18]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][19] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [19]),
        .Q(\num_samples_array_ff_reg[1] [19]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [1]),
        .Q(\num_samples_array_ff_reg[1] [1]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][20] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [20]),
        .Q(\num_samples_array_ff_reg[1] [20]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][21] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [21]),
        .Q(\num_samples_array_ff_reg[1] [21]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][22] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [22]),
        .Q(\num_samples_array_ff_reg[1] [22]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][23] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [23]),
        .Q(\num_samples_array_ff_reg[1] [23]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][24] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [24]),
        .Q(\num_samples_array_ff_reg[1] [24]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][25] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [25]),
        .Q(\num_samples_array_ff_reg[1] [25]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][26] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [26]),
        .Q(\num_samples_array_ff_reg[1] [26]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][27] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [27]),
        .Q(\num_samples_array_ff_reg[1] [27]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][28] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [28]),
        .Q(\num_samples_array_ff_reg[1] [28]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][29] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [29]),
        .Q(\num_samples_array_ff_reg[1] [29]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [2]),
        .Q(\num_samples_array_ff_reg[1] [2]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][30] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [30]),
        .Q(\num_samples_array_ff_reg[1] [30]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][31] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [31]),
        .Q(\num_samples_array_ff_reg[1] [31]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [3]),
        .Q(\num_samples_array_ff_reg[1] [3]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [4]),
        .Q(\num_samples_array_ff_reg[1] [4]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [5]),
        .Q(\num_samples_array_ff_reg[1] [5]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [6]),
        .Q(\num_samples_array_ff_reg[1] [6]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [7]),
        .Q(\num_samples_array_ff_reg[1] [7]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][8] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [8]),
        .Q(\num_samples_array_ff_reg[1] [8]),
        .R(SR));
  FDRE \num_samples_array_ff_reg[1][9] 
       (.C(s_axi_aclk),
        .CE(\num_samples_array_ff[1]_2 ),
        .D(\num_samples_array_ff_reg[0][31]_0 [9]),
        .Q(\num_samples_array_ff_reg[1] [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \player_curr_slot_ff[0]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\player_curr_slot_ff[0]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(curr_player_state_ff),
        .O(\player_curr_slot_ff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDFDDDFD22002222)) 
    \player_curr_slot_ff[0]_i_2 
       (.I0(Q[0]),
        .I1(curr_player_state_ff),
        .I2(\slot_active_array_ff_reg[1]_0 ),
        .I3(Q[1]),
        .I4(\slot_active_array_ff_reg[0]_0 ),
        .I5(player_curr_slot_ff),
        .O(\player_curr_slot_ff[0]_i_2_n_0 ));
  FDRE \player_curr_slot_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\player_curr_slot_ff[0]_i_1_n_0 ),
        .Q(player_curr_slot_ff),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry
       (.CI(1'b0),
        .CO({req_addr_ff0_carry_n_0,req_addr_ff0_carry_n_1,req_addr_ff0_carry_n_2,req_addr_ff0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\byte_index_array_ff[0] ,req_addr_ff0_carry_i_2_n_0,req_addr_ff2[1:0]}),
        .O(req_addr_ff00_in[3:0]),
        .S({req_addr_ff0_carry_i_3_n_0,req_addr_ff0_carry_i_4_n_0,req_addr_ff0_carry_i_5_n_0,req_addr_ff0_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry__0
       (.CI(req_addr_ff0_carry_n_0),
        .CO({req_addr_ff0_carry__0_n_0,req_addr_ff0_carry__0_n_1,req_addr_ff0_carry__0_n_2,req_addr_ff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({req_addr_ff0_carry__0_i_1_n_0,req_addr_ff0_carry__0_i_2_n_0,req_addr_ff0_carry__0_i_3_n_0,req_addr_ff0_carry__0_i_4_n_0}),
        .O(req_addr_ff00_in[7:4]),
        .S({req_addr_ff0_carry__0_i_5_n_0,req_addr_ff0_carry__0_i_6_n_0,req_addr_ff0_carry__0_i_7_n_0,req_addr_ff0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__0_i_1
       (.I0(req_addr_ff2[6]),
        .I1(\byte_index_array_ff_reg[0] [6]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [6]),
        .O(req_addr_ff0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__0_i_2
       (.I0(req_addr_ff2[5]),
        .I1(\byte_index_array_ff_reg[0] [5]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [5]),
        .O(req_addr_ff0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__0_i_3
       (.I0(req_addr_ff2[4]),
        .I1(\byte_index_array_ff_reg[0] [4]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [4]),
        .O(req_addr_ff0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__0_i_4
       (.I0(req_addr_ff2[3]),
        .I1(\byte_index_array_ff_reg[0] [3]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [3]),
        .O(req_addr_ff0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__0_i_5
       (.I0(req_addr_ff0_carry__0_i_1_n_0),
        .I1(req_addr_ff2[7]),
        .I2(\byte_index_array_ff_reg[1] [7]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [7]),
        .O(req_addr_ff0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__0_i_6
       (.I0(req_addr_ff0_carry__0_i_2_n_0),
        .I1(req_addr_ff2[6]),
        .I2(\byte_index_array_ff_reg[1] [6]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [6]),
        .O(req_addr_ff0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__0_i_7
       (.I0(req_addr_ff0_carry__0_i_3_n_0),
        .I1(req_addr_ff2[5]),
        .I2(\byte_index_array_ff_reg[1] [5]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [5]),
        .O(req_addr_ff0_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__0_i_8
       (.I0(req_addr_ff0_carry__0_i_4_n_0),
        .I1(req_addr_ff2[4]),
        .I2(\byte_index_array_ff_reg[1] [4]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [4]),
        .O(req_addr_ff0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry__1
       (.CI(req_addr_ff0_carry__0_n_0),
        .CO({req_addr_ff0_carry__1_n_0,req_addr_ff0_carry__1_n_1,req_addr_ff0_carry__1_n_2,req_addr_ff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({req_addr_ff0_carry__1_i_1_n_0,req_addr_ff0_carry__1_i_2_n_0,req_addr_ff0_carry__1_i_3_n_0,req_addr_ff0_carry__1_i_4_n_0}),
        .O(req_addr_ff00_in[11:8]),
        .S({req_addr_ff0_carry__1_i_5_n_0,req_addr_ff0_carry__1_i_6_n_0,req_addr_ff0_carry__1_i_7_n_0,req_addr_ff0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__1_i_1
       (.I0(req_addr_ff2[10]),
        .I1(\byte_index_array_ff_reg[0] [10]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [10]),
        .O(req_addr_ff0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__1_i_2
       (.I0(req_addr_ff2[9]),
        .I1(\byte_index_array_ff_reg[0] [9]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [9]),
        .O(req_addr_ff0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__1_i_3
       (.I0(req_addr_ff2[8]),
        .I1(\byte_index_array_ff_reg[0] [8]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [8]),
        .O(req_addr_ff0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__1_i_4
       (.I0(req_addr_ff2[7]),
        .I1(\byte_index_array_ff_reg[0] [7]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [7]),
        .O(req_addr_ff0_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__1_i_5
       (.I0(req_addr_ff0_carry__1_i_1_n_0),
        .I1(req_addr_ff2[11]),
        .I2(\byte_index_array_ff_reg[1] [11]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [11]),
        .O(req_addr_ff0_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__1_i_6
       (.I0(req_addr_ff0_carry__1_i_2_n_0),
        .I1(req_addr_ff2[10]),
        .I2(\byte_index_array_ff_reg[1] [10]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [10]),
        .O(req_addr_ff0_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__1_i_7
       (.I0(req_addr_ff0_carry__1_i_3_n_0),
        .I1(req_addr_ff2[9]),
        .I2(\byte_index_array_ff_reg[1] [9]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [9]),
        .O(req_addr_ff0_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__1_i_8
       (.I0(req_addr_ff0_carry__1_i_4_n_0),
        .I1(req_addr_ff2[8]),
        .I2(\byte_index_array_ff_reg[1] [8]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [8]),
        .O(req_addr_ff0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry__2
       (.CI(req_addr_ff0_carry__1_n_0),
        .CO({req_addr_ff0_carry__2_n_0,req_addr_ff0_carry__2_n_1,req_addr_ff0_carry__2_n_2,req_addr_ff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({req_addr_ff0_carry__2_i_1_n_0,req_addr_ff0_carry__2_i_2_n_0,req_addr_ff0_carry__2_i_3_n_0,req_addr_ff0_carry__2_i_4_n_0}),
        .O(req_addr_ff00_in[15:12]),
        .S({req_addr_ff0_carry__2_i_5_n_0,req_addr_ff0_carry__2_i_6_n_0,req_addr_ff0_carry__2_i_7_n_0,req_addr_ff0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__2_i_1
       (.I0(req_addr_ff2[14]),
        .I1(\byte_index_array_ff_reg[0] [14]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [14]),
        .O(req_addr_ff0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__2_i_2
       (.I0(req_addr_ff2[13]),
        .I1(\byte_index_array_ff_reg[0] [13]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [13]),
        .O(req_addr_ff0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__2_i_3
       (.I0(req_addr_ff2[12]),
        .I1(\byte_index_array_ff_reg[0] [12]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [12]),
        .O(req_addr_ff0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__2_i_4
       (.I0(req_addr_ff2[11]),
        .I1(\byte_index_array_ff_reg[0] [11]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [11]),
        .O(req_addr_ff0_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__2_i_5
       (.I0(req_addr_ff0_carry__2_i_1_n_0),
        .I1(req_addr_ff2[15]),
        .I2(\byte_index_array_ff_reg[1] [15]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [15]),
        .O(req_addr_ff0_carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__2_i_6
       (.I0(req_addr_ff0_carry__2_i_2_n_0),
        .I1(req_addr_ff2[14]),
        .I2(\byte_index_array_ff_reg[1] [14]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [14]),
        .O(req_addr_ff0_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__2_i_7
       (.I0(req_addr_ff0_carry__2_i_3_n_0),
        .I1(req_addr_ff2[13]),
        .I2(\byte_index_array_ff_reg[1] [13]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [13]),
        .O(req_addr_ff0_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__2_i_8
       (.I0(req_addr_ff0_carry__2_i_4_n_0),
        .I1(req_addr_ff2[12]),
        .I2(\byte_index_array_ff_reg[1] [12]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [12]),
        .O(req_addr_ff0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry__3
       (.CI(req_addr_ff0_carry__2_n_0),
        .CO({req_addr_ff0_carry__3_n_0,req_addr_ff0_carry__3_n_1,req_addr_ff0_carry__3_n_2,req_addr_ff0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({req_addr_ff0_carry__3_i_1_n_0,req_addr_ff0_carry__3_i_2_n_0,req_addr_ff0_carry__3_i_3_n_0,req_addr_ff0_carry__3_i_4_n_0}),
        .O(req_addr_ff00_in[19:16]),
        .S({req_addr_ff0_carry__3_i_5_n_0,req_addr_ff0_carry__3_i_6_n_0,req_addr_ff0_carry__3_i_7_n_0,req_addr_ff0_carry__3_i_8_n_0}));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__3_i_1
       (.I0(req_addr_ff2[18]),
        .I1(\byte_index_array_ff_reg[0] [18]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [18]),
        .O(req_addr_ff0_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__3_i_2
       (.I0(req_addr_ff2[17]),
        .I1(\byte_index_array_ff_reg[0] [17]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [17]),
        .O(req_addr_ff0_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__3_i_3
       (.I0(req_addr_ff2[16]),
        .I1(\byte_index_array_ff_reg[0] [16]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [16]),
        .O(req_addr_ff0_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__3_i_4
       (.I0(req_addr_ff2[15]),
        .I1(\byte_index_array_ff_reg[0] [15]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [15]),
        .O(req_addr_ff0_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__3_i_5
       (.I0(req_addr_ff0_carry__3_i_1_n_0),
        .I1(req_addr_ff2[19]),
        .I2(\byte_index_array_ff_reg[1] [19]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [19]),
        .O(req_addr_ff0_carry__3_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__3_i_6
       (.I0(req_addr_ff0_carry__3_i_2_n_0),
        .I1(req_addr_ff2[18]),
        .I2(\byte_index_array_ff_reg[1] [18]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [18]),
        .O(req_addr_ff0_carry__3_i_6_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__3_i_7
       (.I0(req_addr_ff0_carry__3_i_3_n_0),
        .I1(req_addr_ff2[17]),
        .I2(\byte_index_array_ff_reg[1] [17]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [17]),
        .O(req_addr_ff0_carry__3_i_7_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__3_i_8
       (.I0(req_addr_ff0_carry__3_i_4_n_0),
        .I1(req_addr_ff2[16]),
        .I2(\byte_index_array_ff_reg[1] [16]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [16]),
        .O(req_addr_ff0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry__4
       (.CI(req_addr_ff0_carry__3_n_0),
        .CO({req_addr_ff0_carry__4_n_0,req_addr_ff0_carry__4_n_1,req_addr_ff0_carry__4_n_2,req_addr_ff0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({req_addr_ff0_carry__4_i_1_n_0,req_addr_ff0_carry__4_i_2_n_0,req_addr_ff0_carry__4_i_3_n_0,req_addr_ff0_carry__4_i_4_n_0}),
        .O(req_addr_ff00_in[23:20]),
        .S({req_addr_ff0_carry__4_i_5_n_0,req_addr_ff0_carry__4_i_6_n_0,req_addr_ff0_carry__4_i_7_n_0,req_addr_ff0_carry__4_i_8_n_0}));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__4_i_1
       (.I0(req_addr_ff2[22]),
        .I1(\byte_index_array_ff_reg[0] [22]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [22]),
        .O(req_addr_ff0_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__4_i_2
       (.I0(req_addr_ff2[21]),
        .I1(\byte_index_array_ff_reg[0] [21]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [21]),
        .O(req_addr_ff0_carry__4_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__4_i_3
       (.I0(req_addr_ff2[20]),
        .I1(\byte_index_array_ff_reg[0] [20]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [20]),
        .O(req_addr_ff0_carry__4_i_3_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__4_i_4
       (.I0(req_addr_ff2[19]),
        .I1(\byte_index_array_ff_reg[0] [19]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [19]),
        .O(req_addr_ff0_carry__4_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__4_i_5
       (.I0(req_addr_ff0_carry__4_i_1_n_0),
        .I1(req_addr_ff2[23]),
        .I2(\byte_index_array_ff_reg[1] [23]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [23]),
        .O(req_addr_ff0_carry__4_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__4_i_6
       (.I0(req_addr_ff0_carry__4_i_2_n_0),
        .I1(req_addr_ff2[22]),
        .I2(\byte_index_array_ff_reg[1] [22]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [22]),
        .O(req_addr_ff0_carry__4_i_6_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__4_i_7
       (.I0(req_addr_ff0_carry__4_i_3_n_0),
        .I1(req_addr_ff2[21]),
        .I2(\byte_index_array_ff_reg[1] [21]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [21]),
        .O(req_addr_ff0_carry__4_i_7_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__4_i_8
       (.I0(req_addr_ff0_carry__4_i_4_n_0),
        .I1(req_addr_ff2[20]),
        .I2(\byte_index_array_ff_reg[1] [20]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [20]),
        .O(req_addr_ff0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry__5
       (.CI(req_addr_ff0_carry__4_n_0),
        .CO({req_addr_ff0_carry__5_n_0,req_addr_ff0_carry__5_n_1,req_addr_ff0_carry__5_n_2,req_addr_ff0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({req_addr_ff0_carry__5_i_1_n_0,req_addr_ff0_carry__5_i_2_n_0,req_addr_ff0_carry__5_i_3_n_0,req_addr_ff0_carry__5_i_4_n_0}),
        .O(req_addr_ff00_in[27:24]),
        .S({req_addr_ff0_carry__5_i_5_n_0,req_addr_ff0_carry__5_i_6_n_0,req_addr_ff0_carry__5_i_7_n_0,req_addr_ff0_carry__5_i_8_n_0}));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__5_i_1
       (.I0(req_addr_ff2[26]),
        .I1(\byte_index_array_ff_reg[0] [26]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [26]),
        .O(req_addr_ff0_carry__5_i_1_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__5_i_2
       (.I0(req_addr_ff2[25]),
        .I1(\byte_index_array_ff_reg[0] [25]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [25]),
        .O(req_addr_ff0_carry__5_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__5_i_3
       (.I0(req_addr_ff2[24]),
        .I1(\byte_index_array_ff_reg[0] [24]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [24]),
        .O(req_addr_ff0_carry__5_i_3_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__5_i_4
       (.I0(req_addr_ff2[23]),
        .I1(\byte_index_array_ff_reg[0] [23]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [23]),
        .O(req_addr_ff0_carry__5_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__5_i_5
       (.I0(req_addr_ff0_carry__5_i_1_n_0),
        .I1(req_addr_ff2[27]),
        .I2(\byte_index_array_ff_reg[1] [27]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [27]),
        .O(req_addr_ff0_carry__5_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__5_i_6
       (.I0(req_addr_ff0_carry__5_i_2_n_0),
        .I1(req_addr_ff2[26]),
        .I2(\byte_index_array_ff_reg[1] [26]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [26]),
        .O(req_addr_ff0_carry__5_i_6_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__5_i_7
       (.I0(req_addr_ff0_carry__5_i_3_n_0),
        .I1(req_addr_ff2[25]),
        .I2(\byte_index_array_ff_reg[1] [25]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [25]),
        .O(req_addr_ff0_carry__5_i_7_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__5_i_8
       (.I0(req_addr_ff0_carry__5_i_4_n_0),
        .I1(req_addr_ff2[24]),
        .I2(\byte_index_array_ff_reg[1] [24]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [24]),
        .O(req_addr_ff0_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 req_addr_ff0_carry__6
       (.CI(req_addr_ff0_carry__5_n_0),
        .CO({NLW_req_addr_ff0_carry__6_CO_UNCONNECTED[3],req_addr_ff0_carry__6_n_1,req_addr_ff0_carry__6_n_2,req_addr_ff0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,req_addr_ff0_carry__6_i_1_n_0,req_addr_ff0_carry__6_i_2_n_0,req_addr_ff0_carry__6_i_3_n_0}),
        .O(req_addr_ff00_in[31:28]),
        .S({req_addr_ff0_carry__6_i_4_n_0,req_addr_ff0_carry__6_i_5_n_0,req_addr_ff0_carry__6_i_6_n_0,req_addr_ff0_carry__6_i_7_n_0}));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__6_i_1
       (.I0(req_addr_ff2[29]),
        .I1(\byte_index_array_ff_reg[0] [29]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [29]),
        .O(req_addr_ff0_carry__6_i_1_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__6_i_2
       (.I0(req_addr_ff2[28]),
        .I1(\byte_index_array_ff_reg[0] [28]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [28]),
        .O(req_addr_ff0_carry__6_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    req_addr_ff0_carry__6_i_3
       (.I0(req_addr_ff2[27]),
        .I1(\byte_index_array_ff_reg[0] [27]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [27]),
        .O(req_addr_ff0_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF90606060)) 
    req_addr_ff0_carry__6_i_4
       (.I0(req_addr_ff2[31]),
        .I1(\byte_index_array_ff_reg[1] [31]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [30]),
        .I4(req_addr_ff2[30]),
        .I5(req_addr_ff0_carry__6_i_8_n_0),
        .O(req_addr_ff0_carry__6_i_4_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__6_i_5
       (.I0(req_addr_ff0_carry__6_i_1_n_0),
        .I1(req_addr_ff2[30]),
        .I2(\byte_index_array_ff_reg[1] [30]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [30]),
        .O(req_addr_ff0_carry__6_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__6_i_6
       (.I0(req_addr_ff0_carry__6_i_2_n_0),
        .I1(req_addr_ff2[29]),
        .I2(\byte_index_array_ff_reg[1] [29]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [29]),
        .O(req_addr_ff0_carry__6_i_6_n_0));
  LUT5 #(
    .INIT(32'h96999666)) 
    req_addr_ff0_carry__6_i_7
       (.I0(req_addr_ff0_carry__6_i_3_n_0),
        .I1(req_addr_ff2[28]),
        .I2(\byte_index_array_ff_reg[1] [28]),
        .I3(player_curr_slot_ff),
        .I4(\byte_index_array_ff_reg[0] [28]),
        .O(req_addr_ff0_carry__6_i_7_n_0));
  LUT5 #(
    .INIT(32'h00008778)) 
    req_addr_ff0_carry__6_i_8
       (.I0(req_addr_ff2[30]),
        .I1(\byte_index_array_ff_reg[0] [30]),
        .I2(\byte_index_array_ff_reg[0] [31]),
        .I3(req_addr_ff2[31]),
        .I4(player_curr_slot_ff),
        .O(req_addr_ff0_carry__6_i_8_n_0));
  LUT3 #(
    .INIT(8'hE2)) 
    req_addr_ff0_carry_i_1
       (.I0(\byte_index_array_ff_reg[0] [2]),
        .I1(player_curr_slot_ff),
        .I2(\byte_index_array_ff_reg[1] [2]),
        .O(\byte_index_array_ff[0] ));
  LUT3 #(
    .INIT(8'h47)) 
    req_addr_ff0_carry_i_2
       (.I0(\byte_index_array_ff_reg[1] [2]),
        .I1(player_curr_slot_ff),
        .I2(\byte_index_array_ff_reg[0] [2]),
        .O(req_addr_ff0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hC33CA5A5C33C5A5A)) 
    req_addr_ff0_carry_i_3
       (.I0(\byte_index_array_ff_reg[0] [2]),
        .I1(\byte_index_array_ff_reg[1] [2]),
        .I2(req_addr_ff2[3]),
        .I3(\byte_index_array_ff_reg[1] [3]),
        .I4(player_curr_slot_ff),
        .I5(\byte_index_array_ff_reg[0] [3]),
        .O(req_addr_ff0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hE21D)) 
    req_addr_ff0_carry_i_4
       (.I0(\byte_index_array_ff_reg[0] [2]),
        .I1(player_curr_slot_ff),
        .I2(\byte_index_array_ff_reg[1] [2]),
        .I3(req_addr_ff2[2]),
        .O(req_addr_ff0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    req_addr_ff0_carry_i_5
       (.I0(req_addr_ff2[1]),
        .I1(\byte_index_array_ff_reg[0] [1]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [1]),
        .O(req_addr_ff0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    req_addr_ff0_carry_i_6
       (.I0(req_addr_ff2[0]),
        .I1(\byte_index_array_ff_reg[0] [0]),
        .I2(player_curr_slot_ff),
        .I3(\byte_index_array_ff_reg[1] [0]),
        .O(req_addr_ff0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[0]_i_1 
       (.I0(req_addr_ff00_in[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[0]),
        .O(\req_addr_ff[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[10]_i_1 
       (.I0(req_addr_ff00_in[10]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[10]),
        .O(\req_addr_ff[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[11]_i_1 
       (.I0(req_addr_ff00_in[11]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[11]),
        .O(\req_addr_ff[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[12]_i_1 
       (.I0(req_addr_ff00_in[12]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[12]),
        .O(\req_addr_ff[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[13]_i_1 
       (.I0(req_addr_ff00_in[13]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[13]),
        .O(\req_addr_ff[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[14]_i_1 
       (.I0(req_addr_ff00_in[14]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[14]),
        .O(\req_addr_ff[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[15]_i_1 
       (.I0(req_addr_ff00_in[15]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[15]),
        .O(\req_addr_ff[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[16]_i_1 
       (.I0(req_addr_ff00_in[16]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[16]),
        .O(\req_addr_ff[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[17]_i_1 
       (.I0(req_addr_ff00_in[17]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[17]),
        .O(\req_addr_ff[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[18]_i_1 
       (.I0(req_addr_ff00_in[18]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[18]),
        .O(\req_addr_ff[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[19]_i_1 
       (.I0(req_addr_ff00_in[19]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[19]),
        .O(\req_addr_ff[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[1]_i_1 
       (.I0(req_addr_ff00_in[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[1]),
        .O(\req_addr_ff[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[20]_i_1 
       (.I0(req_addr_ff00_in[20]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[20]),
        .O(\req_addr_ff[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[21]_i_1 
       (.I0(req_addr_ff00_in[21]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[21]),
        .O(\req_addr_ff[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[22]_i_1 
       (.I0(req_addr_ff00_in[22]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[22]),
        .O(\req_addr_ff[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[23]_i_1 
       (.I0(req_addr_ff00_in[23]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[23]),
        .O(\req_addr_ff[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[24]_i_1 
       (.I0(req_addr_ff00_in[24]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[24]),
        .O(\req_addr_ff[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[25]_i_1 
       (.I0(req_addr_ff00_in[25]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[25]),
        .O(\req_addr_ff[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[26]_i_1 
       (.I0(req_addr_ff00_in[26]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[26]),
        .O(\req_addr_ff[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[27]_i_1 
       (.I0(req_addr_ff00_in[27]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[27]),
        .O(\req_addr_ff[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[28]_i_1 
       (.I0(req_addr_ff00_in[28]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[28]),
        .O(\req_addr_ff[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[29]_i_1 
       (.I0(req_addr_ff00_in[29]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[29]),
        .O(\req_addr_ff[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[2]_i_1 
       (.I0(req_addr_ff00_in[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[2]),
        .O(\req_addr_ff[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[30]_i_1 
       (.I0(req_addr_ff00_in[30]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[30]),
        .O(\req_addr_ff[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[31]_i_1 
       (.I0(req_addr_ff00_in[31]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[31]),
        .O(\req_addr_ff[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[3]_i_1 
       (.I0(req_addr_ff00_in[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[3]),
        .O(\req_addr_ff[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[4]_i_1 
       (.I0(req_addr_ff00_in[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[4]),
        .O(\req_addr_ff[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[5]_i_1 
       (.I0(req_addr_ff00_in[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[5]),
        .O(\req_addr_ff[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[6]_i_1 
       (.I0(req_addr_ff00_in[6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[6]),
        .O(\req_addr_ff[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[7]_i_1 
       (.I0(req_addr_ff00_in[7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[7]),
        .O(\req_addr_ff[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[8]_i_1 
       (.I0(req_addr_ff00_in[8]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[8]),
        .O(\req_addr_ff[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \req_addr_ff[9]_i_1 
       (.I0(req_addr_ff00_in[9]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(curr_player_state_ff),
        .I4(req_addr_ff0[9]),
        .O(\req_addr_ff[9]_i_1_n_0 ));
  FDRE \req_addr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[0]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [0]),
        .R(SR));
  FDRE \req_addr_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[10]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [10]),
        .R(SR));
  FDRE \req_addr_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[11]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [11]),
        .R(SR));
  FDRE \req_addr_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[12]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [12]),
        .R(SR));
  FDRE \req_addr_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[13]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [13]),
        .R(SR));
  FDRE \req_addr_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[14]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [14]),
        .R(SR));
  FDRE \req_addr_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[15]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [15]),
        .R(SR));
  FDRE \req_addr_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[16]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [16]),
        .R(SR));
  FDRE \req_addr_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[17]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [17]),
        .R(SR));
  FDRE \req_addr_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[18]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [18]),
        .R(SR));
  FDRE \req_addr_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[19]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [19]),
        .R(SR));
  FDRE \req_addr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[1]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [1]),
        .R(SR));
  FDRE \req_addr_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[20]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [20]),
        .R(SR));
  FDRE \req_addr_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[21]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [21]),
        .R(SR));
  FDRE \req_addr_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[22]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [22]),
        .R(SR));
  FDRE \req_addr_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[23]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [23]),
        .R(SR));
  FDRE \req_addr_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[24]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [24]),
        .R(SR));
  FDRE \req_addr_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[25]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [25]),
        .R(SR));
  FDRE \req_addr_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[26]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [26]),
        .R(SR));
  FDRE \req_addr_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[27]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [27]),
        .R(SR));
  FDRE \req_addr_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[28]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [28]),
        .R(SR));
  FDRE \req_addr_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[29]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [29]),
        .R(SR));
  FDRE \req_addr_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[2]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [2]),
        .R(SR));
  FDRE \req_addr_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[30]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [30]),
        .R(SR));
  FDRE \req_addr_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[31]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [31]),
        .R(SR));
  FDRE \req_addr_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[3]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [3]),
        .R(SR));
  FDRE \req_addr_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[4]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [4]),
        .R(SR));
  FDRE \req_addr_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[5]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [5]),
        .R(SR));
  FDRE \req_addr_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[6]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [6]),
        .R(SR));
  FDRE \req_addr_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[7]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [7]),
        .R(SR));
  FDRE \req_addr_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[8]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [8]),
        .R(SR));
  FDRE \req_addr_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_ff[9]_i_1_n_0 ),
        .Q(\req_addr_ff_reg[31]_0 [9]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry 
       (.CI(1'b0),
        .CO({\sample_index_array_ff[0]0_carry_n_0 ,\sample_index_array_ff[0]0_carry_n_1 ,\sample_index_array_ff[0]0_carry_n_2 ,\sample_index_array_ff[0]0_carry_n_3 }),
        .CYINIT(\sample_index_array_ff_reg_n_0_[0][0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[0]0 [4:1]),
        .S({\sample_index_array_ff_reg_n_0_[0][4] ,\sample_index_array_ff_reg_n_0_[0][3] ,\sample_index_array_ff_reg_n_0_[0][2] ,\sample_index_array_ff_reg_n_0_[0][1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry__0 
       (.CI(\sample_index_array_ff[0]0_carry_n_0 ),
        .CO({\sample_index_array_ff[0]0_carry__0_n_0 ,\sample_index_array_ff[0]0_carry__0_n_1 ,\sample_index_array_ff[0]0_carry__0_n_2 ,\sample_index_array_ff[0]0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[0]0 [8:5]),
        .S({\sample_index_array_ff_reg_n_0_[0][8] ,\sample_index_array_ff_reg_n_0_[0][7] ,\sample_index_array_ff_reg_n_0_[0][6] ,\sample_index_array_ff_reg_n_0_[0][5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry__1 
       (.CI(\sample_index_array_ff[0]0_carry__0_n_0 ),
        .CO({\sample_index_array_ff[0]0_carry__1_n_0 ,\sample_index_array_ff[0]0_carry__1_n_1 ,\sample_index_array_ff[0]0_carry__1_n_2 ,\sample_index_array_ff[0]0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[0]0 [12:9]),
        .S({\sample_index_array_ff_reg_n_0_[0][12] ,\sample_index_array_ff_reg_n_0_[0][11] ,\sample_index_array_ff_reg_n_0_[0][10] ,\sample_index_array_ff_reg_n_0_[0][9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry__2 
       (.CI(\sample_index_array_ff[0]0_carry__1_n_0 ),
        .CO({\sample_index_array_ff[0]0_carry__2_n_0 ,\sample_index_array_ff[0]0_carry__2_n_1 ,\sample_index_array_ff[0]0_carry__2_n_2 ,\sample_index_array_ff[0]0_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[0]0 [16:13]),
        .S({\sample_index_array_ff_reg_n_0_[0][16] ,\sample_index_array_ff_reg_n_0_[0][15] ,\sample_index_array_ff_reg_n_0_[0][14] ,\sample_index_array_ff_reg_n_0_[0][13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry__3 
       (.CI(\sample_index_array_ff[0]0_carry__2_n_0 ),
        .CO({\sample_index_array_ff[0]0_carry__3_n_0 ,\sample_index_array_ff[0]0_carry__3_n_1 ,\sample_index_array_ff[0]0_carry__3_n_2 ,\sample_index_array_ff[0]0_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[0]0 [20:17]),
        .S({\sample_index_array_ff_reg_n_0_[0][20] ,\sample_index_array_ff_reg_n_0_[0][19] ,\sample_index_array_ff_reg_n_0_[0][18] ,\sample_index_array_ff_reg_n_0_[0][17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry__4 
       (.CI(\sample_index_array_ff[0]0_carry__3_n_0 ),
        .CO({\sample_index_array_ff[0]0_carry__4_n_0 ,\sample_index_array_ff[0]0_carry__4_n_1 ,\sample_index_array_ff[0]0_carry__4_n_2 ,\sample_index_array_ff[0]0_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[0]0 [24:21]),
        .S({\sample_index_array_ff_reg_n_0_[0][24] ,\sample_index_array_ff_reg_n_0_[0][23] ,\sample_index_array_ff_reg_n_0_[0][22] ,\sample_index_array_ff_reg_n_0_[0][21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry__5 
       (.CI(\sample_index_array_ff[0]0_carry__4_n_0 ),
        .CO({\sample_index_array_ff[0]0_carry__5_n_0 ,\sample_index_array_ff[0]0_carry__5_n_1 ,\sample_index_array_ff[0]0_carry__5_n_2 ,\sample_index_array_ff[0]0_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[0]0 [28:25]),
        .S({\sample_index_array_ff_reg_n_0_[0][28] ,\sample_index_array_ff_reg_n_0_[0][27] ,\sample_index_array_ff_reg_n_0_[0][26] ,\sample_index_array_ff_reg_n_0_[0][25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[0]0_carry__6 
       (.CI(\sample_index_array_ff[0]0_carry__5_n_0 ),
        .CO({\NLW_sample_index_array_ff[0]0_carry__6_CO_UNCONNECTED [3:2],\sample_index_array_ff[0]0_carry__6_n_2 ,\sample_index_array_ff[0]0_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_index_array_ff[0]0_carry__6_O_UNCONNECTED [3],\sample_index_array_ff[0]0 [31:29]}),
        .S({1'b0,\sample_index_array_ff_reg_n_0_[0][31] ,\sample_index_array_ff_reg_n_0_[0][30] ,\sample_index_array_ff_reg_n_0_[0][29] }));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hCCC5)) 
    \sample_index_array_ff[0][0]_i_1 
       (.I0(\sample_index_array_ff_reg_n_0_[0][0] ),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][10]_i_1 
       (.I0(\sample_index_array_ff[0]0 [10]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][11]_i_1 
       (.I0(\sample_index_array_ff[0]0 [11]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][12]_i_1 
       (.I0(\sample_index_array_ff[0]0 [12]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][13]_i_1 
       (.I0(\sample_index_array_ff[0]0 [13]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][14]_i_1 
       (.I0(\sample_index_array_ff[0]0 [14]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][15]_i_1 
       (.I0(\sample_index_array_ff[0]0 [15]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][16]_i_1 
       (.I0(\sample_index_array_ff[0]0 [16]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][17]_i_1 
       (.I0(\sample_index_array_ff[0]0 [17]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][18]_i_1 
       (.I0(\sample_index_array_ff[0]0 [18]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][19]_i_1 
       (.I0(\sample_index_array_ff[0]0 [19]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][1]_i_1 
       (.I0(\sample_index_array_ff[0]0 [1]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][20]_i_1 
       (.I0(\sample_index_array_ff[0]0 [20]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][21]_i_1 
       (.I0(\sample_index_array_ff[0]0 [21]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][22]_i_1 
       (.I0(\sample_index_array_ff[0]0 [22]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][23]_i_1 
       (.I0(\sample_index_array_ff[0]0 [23]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][24]_i_1 
       (.I0(\sample_index_array_ff[0]0 [24]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][25]_i_1 
       (.I0(\sample_index_array_ff[0]0 [25]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][26]_i_1 
       (.I0(\sample_index_array_ff[0]0 [26]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][27]_i_1 
       (.I0(\sample_index_array_ff[0]0 [27]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][28]_i_1 
       (.I0(\sample_index_array_ff[0]0 [28]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][29]_i_1 
       (.I0(\sample_index_array_ff[0]0 [29]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][2]_i_1 
       (.I0(\sample_index_array_ff[0]0 [2]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][30]_i_1 
       (.I0(\sample_index_array_ff[0]0 [30]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000400040004FFFF)) 
    \sample_index_array_ff[0][31]_i_1 
       (.I0(initter_curr_slot_ff),
        .I1(curr_initter_state_ff[0]),
        .I2(curr_initter_state_ff[2]),
        .I3(curr_initter_state_ff[1]),
        .I4(\gen_last_sample_array[0].last_sample_array_reg ),
        .I5(\slot_active_array_ff[1]_i_2_n_0 ),
        .O(\byte_index_array_ff[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][31]_i_2 
       (.I0(\sample_index_array_ff[0]0 [31]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][3]_i_1 
       (.I0(\sample_index_array_ff[0]0 [3]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][4]_i_1 
       (.I0(\sample_index_array_ff[0]0 [4]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][5]_i_1 
       (.I0(\sample_index_array_ff[0]0 [5]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][6]_i_1 
       (.I0(\sample_index_array_ff[0]0 [6]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][7]_i_1 
       (.I0(\sample_index_array_ff[0]0 [7]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][8]_i_1 
       (.I0(\sample_index_array_ff[0]0 [8]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \sample_index_array_ff[0][9]_i_1 
       (.I0(\sample_index_array_ff[0]0 [9]),
        .I1(initter_curr_slot_ff),
        .I2(\slot_active_array_ff[1]_i_2_n_0 ),
        .I3(\gen_last_sample_array[0].last_sample_array_reg ),
        .O(\sample_index_array_ff[0][9]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry 
       (.CI(1'b0),
        .CO({\sample_index_array_ff[1]0_carry_n_0 ,\sample_index_array_ff[1]0_carry_n_1 ,\sample_index_array_ff[1]0_carry_n_2 ,\sample_index_array_ff[1]0_carry_n_3 }),
        .CYINIT(\sample_index_array_ff_reg_n_0_[1][0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[1]0 [4:1]),
        .S({\sample_index_array_ff_reg_n_0_[1][4] ,\sample_index_array_ff_reg_n_0_[1][3] ,\sample_index_array_ff_reg_n_0_[1][2] ,\sample_index_array_ff_reg_n_0_[1][1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry__0 
       (.CI(\sample_index_array_ff[1]0_carry_n_0 ),
        .CO({\sample_index_array_ff[1]0_carry__0_n_0 ,\sample_index_array_ff[1]0_carry__0_n_1 ,\sample_index_array_ff[1]0_carry__0_n_2 ,\sample_index_array_ff[1]0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[1]0 [8:5]),
        .S({\sample_index_array_ff_reg_n_0_[1][8] ,\sample_index_array_ff_reg_n_0_[1][7] ,\sample_index_array_ff_reg_n_0_[1][6] ,\sample_index_array_ff_reg_n_0_[1][5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry__1 
       (.CI(\sample_index_array_ff[1]0_carry__0_n_0 ),
        .CO({\sample_index_array_ff[1]0_carry__1_n_0 ,\sample_index_array_ff[1]0_carry__1_n_1 ,\sample_index_array_ff[1]0_carry__1_n_2 ,\sample_index_array_ff[1]0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[1]0 [12:9]),
        .S({\sample_index_array_ff_reg_n_0_[1][12] ,\sample_index_array_ff_reg_n_0_[1][11] ,\sample_index_array_ff_reg_n_0_[1][10] ,\sample_index_array_ff_reg_n_0_[1][9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry__2 
       (.CI(\sample_index_array_ff[1]0_carry__1_n_0 ),
        .CO({\sample_index_array_ff[1]0_carry__2_n_0 ,\sample_index_array_ff[1]0_carry__2_n_1 ,\sample_index_array_ff[1]0_carry__2_n_2 ,\sample_index_array_ff[1]0_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[1]0 [16:13]),
        .S({\sample_index_array_ff_reg_n_0_[1][16] ,\sample_index_array_ff_reg_n_0_[1][15] ,\sample_index_array_ff_reg_n_0_[1][14] ,\sample_index_array_ff_reg_n_0_[1][13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry__3 
       (.CI(\sample_index_array_ff[1]0_carry__2_n_0 ),
        .CO({\sample_index_array_ff[1]0_carry__3_n_0 ,\sample_index_array_ff[1]0_carry__3_n_1 ,\sample_index_array_ff[1]0_carry__3_n_2 ,\sample_index_array_ff[1]0_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[1]0 [20:17]),
        .S({\sample_index_array_ff_reg_n_0_[1][20] ,\sample_index_array_ff_reg_n_0_[1][19] ,\sample_index_array_ff_reg_n_0_[1][18] ,\sample_index_array_ff_reg_n_0_[1][17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry__4 
       (.CI(\sample_index_array_ff[1]0_carry__3_n_0 ),
        .CO({\sample_index_array_ff[1]0_carry__4_n_0 ,\sample_index_array_ff[1]0_carry__4_n_1 ,\sample_index_array_ff[1]0_carry__4_n_2 ,\sample_index_array_ff[1]0_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[1]0 [24:21]),
        .S({\sample_index_array_ff_reg_n_0_[1][24] ,\sample_index_array_ff_reg_n_0_[1][23] ,\sample_index_array_ff_reg_n_0_[1][22] ,\sample_index_array_ff_reg_n_0_[1][21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry__5 
       (.CI(\sample_index_array_ff[1]0_carry__4_n_0 ),
        .CO({\sample_index_array_ff[1]0_carry__5_n_0 ,\sample_index_array_ff[1]0_carry__5_n_1 ,\sample_index_array_ff[1]0_carry__5_n_2 ,\sample_index_array_ff[1]0_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sample_index_array_ff[1]0 [28:25]),
        .S({\sample_index_array_ff_reg_n_0_[1][28] ,\sample_index_array_ff_reg_n_0_[1][27] ,\sample_index_array_ff_reg_n_0_[1][26] ,\sample_index_array_ff_reg_n_0_[1][25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_index_array_ff[1]0_carry__6 
       (.CI(\sample_index_array_ff[1]0_carry__5_n_0 ),
        .CO({\NLW_sample_index_array_ff[1]0_carry__6_CO_UNCONNECTED [3:2],\sample_index_array_ff[1]0_carry__6_n_2 ,\sample_index_array_ff[1]0_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_index_array_ff[1]0_carry__6_O_UNCONNECTED [3],\sample_index_array_ff[1]0 [31:29]}),
        .S({1'b0,\sample_index_array_ff_reg_n_0_[1][31] ,\sample_index_array_ff_reg_n_0_[1][30] ,\sample_index_array_ff_reg_n_0_[1][29] }));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \sample_index_array_ff[1][0]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff_reg_n_0_[1][0] ),
        .O(\sample_index_array_ff[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][10]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [10]),
        .O(\sample_index_array_ff[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][11]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [11]),
        .O(\sample_index_array_ff[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][12]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [12]),
        .O(\sample_index_array_ff[1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][13]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [13]),
        .O(\sample_index_array_ff[1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][14]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [14]),
        .O(\sample_index_array_ff[1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][15]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [15]),
        .O(\sample_index_array_ff[1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][16]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [16]),
        .O(\sample_index_array_ff[1][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][17]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [17]),
        .O(\sample_index_array_ff[1][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][18]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [18]),
        .O(\sample_index_array_ff[1][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][19]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [19]),
        .O(\sample_index_array_ff[1][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][1]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [1]),
        .O(\sample_index_array_ff[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][20]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [20]),
        .O(\sample_index_array_ff[1][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][21]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [21]),
        .O(\sample_index_array_ff[1][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][22]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [22]),
        .O(\sample_index_array_ff[1][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][23]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [23]),
        .O(\sample_index_array_ff[1][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][24]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [24]),
        .O(\sample_index_array_ff[1][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][25]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [25]),
        .O(\sample_index_array_ff[1][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][26]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [26]),
        .O(\sample_index_array_ff[1][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][27]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [27]),
        .O(\sample_index_array_ff[1][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][28]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [28]),
        .O(\sample_index_array_ff[1][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][29]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [29]),
        .O(\sample_index_array_ff[1][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][2]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [2]),
        .O(\sample_index_array_ff[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][30]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [30]),
        .O(\sample_index_array_ff[1][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000800080008FFFF)) 
    \sample_index_array_ff[1][31]_i_1 
       (.I0(initter_curr_slot_ff),
        .I1(curr_initter_state_ff[0]),
        .I2(curr_initter_state_ff[2]),
        .I3(curr_initter_state_ff[1]),
        .I4(p_2_in),
        .I5(\slot_active_array_ff[1]_i_2_n_0 ),
        .O(\byte_index_array_ff[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][31]_i_2 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [31]),
        .O(\sample_index_array_ff[1][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][3]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [3]),
        .O(\sample_index_array_ff[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][4]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [4]),
        .O(\sample_index_array_ff[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][5]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [5]),
        .O(\sample_index_array_ff[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][6]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [6]),
        .O(\sample_index_array_ff[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][7]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [7]),
        .O(\sample_index_array_ff[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][8]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [8]),
        .O(\sample_index_array_ff[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_index_array_ff[1][9]_i_1 
       (.I0(p_2_in),
        .I1(\slot_active_array_ff[1]_i_2_n_0 ),
        .I2(\sample_index_array_ff[1]0 [9]),
        .O(\sample_index_array_ff[1][9]_i_1_n_0 ));
  FDRE \sample_index_array_ff_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][0]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][0] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][10]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][10] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][11]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][11] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][12]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][12] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][13]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][13] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][14]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][14] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][15]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][15] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][16]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][16] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][17]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][17] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][18]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][18] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][19]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][19] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][1]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][1] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][20]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][20] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][21]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][21] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][22]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][22] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][23]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][23] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][24] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][24]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][24] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][25] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][25]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][25] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][26] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][26]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][26] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][27] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][27]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][27] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][28] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][28]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][28] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][29] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][29]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][29] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][2]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][2] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][30]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][30] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][31]_i_2_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][31] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][3]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][3] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][4]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][4] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][5]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][5] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][6]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][6] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][7]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][7] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][8]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][8] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[0]_0 ),
        .D(\sample_index_array_ff[0][9]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[0][9] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][0]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][0] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][10]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][10] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][11]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][11] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][12]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][12] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][13] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][13]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][13] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][14] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][14]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][14] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][15] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][15]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][15] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][16] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][16]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][16] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][17] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][17]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][17] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][18] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][18]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][18] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][19] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][19]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][19] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][1]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][1] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][20] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][20]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][20] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][21] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][21]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][21] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][22] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][22]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][22] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][23] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][23]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][23] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][24] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][24]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][24] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][25] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][25]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][25] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][26] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][26]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][26] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][27] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][27]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][27] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][28] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][28]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][28] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][29] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][29]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][29] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][2]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][2] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][30] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][30]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][30] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][31] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][31]_i_2_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][31] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][3]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][3] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][4]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][4] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][5]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][5] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][6]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][6] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][7]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][7] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][8] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][8]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][8] ),
        .R(SR));
  FDRE \sample_index_array_ff_reg[1][9] 
       (.C(s_axi_aclk),
        .CE(\byte_index_array_ff[1]_1 ),
        .D(\sample_index_array_ff[1][9]_i_1_n_0 ),
        .Q(\sample_index_array_ff_reg_n_0_[1][9] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    \sleep_counter_ff[0]_i_1 
       (.I0(curr_player_state_ff),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\sleep_counter_ff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \sleep_counter_ff[0]_i_2 
       (.I0(\sleep_counter_ff[0]_i_4_n_0 ),
        .I1(\sleep_counter_ff[0]_i_5_n_0 ),
        .I2(sleep_counter_ff_reg[13]),
        .I3(sleep_counter_ff_reg[14]),
        .I4(sleep_counter_ff_reg[0]),
        .I5(\sleep_counter_ff[0]_i_6_n_0 ),
        .O(sel));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \sleep_counter_ff[0]_i_4 
       (.I0(sleep_counter_ff_reg[5]),
        .I1(sleep_counter_ff_reg[6]),
        .I2(sleep_counter_ff_reg[8]),
        .I3(sleep_counter_ff_reg[7]),
        .O(\sleep_counter_ff[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \sleep_counter_ff[0]_i_5 
       (.I0(sleep_counter_ff_reg[2]),
        .I1(sleep_counter_ff_reg[1]),
        .I2(sleep_counter_ff_reg[4]),
        .I3(sleep_counter_ff_reg[3]),
        .O(\sleep_counter_ff[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sleep_counter_ff[0]_i_6 
       (.I0(sleep_counter_ff_reg[9]),
        .I1(sleep_counter_ff_reg[10]),
        .I2(sleep_counter_ff_reg[12]),
        .I3(sleep_counter_ff_reg[11]),
        .O(\sleep_counter_ff[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sleep_counter_ff[0]_i_7 
       (.I0(sleep_counter_ff_reg[0]),
        .O(\sleep_counter_ff[0]_i_7_n_0 ));
  FDRE \sleep_counter_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[0]_i_3_n_7 ),
        .Q(sleep_counter_ff_reg[0]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sleep_counter_ff_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\sleep_counter_ff_reg[0]_i_3_n_0 ,\sleep_counter_ff_reg[0]_i_3_n_1 ,\sleep_counter_ff_reg[0]_i_3_n_2 ,\sleep_counter_ff_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sleep_counter_ff_reg[0]_i_3_n_4 ,\sleep_counter_ff_reg[0]_i_3_n_5 ,\sleep_counter_ff_reg[0]_i_3_n_6 ,\sleep_counter_ff_reg[0]_i_3_n_7 }),
        .S({sleep_counter_ff_reg[3:1],\sleep_counter_ff[0]_i_7_n_0 }));
  FDRE \sleep_counter_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[8]_i_1_n_5 ),
        .Q(sleep_counter_ff_reg[10]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[8]_i_1_n_4 ),
        .Q(sleep_counter_ff_reg[11]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[12]_i_1_n_7 ),
        .Q(sleep_counter_ff_reg[12]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sleep_counter_ff_reg[12]_i_1 
       (.CI(\sleep_counter_ff_reg[8]_i_1_n_0 ),
        .CO({\NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED [3:2],\sleep_counter_ff_reg[12]_i_1_n_2 ,\sleep_counter_ff_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED [3],\sleep_counter_ff_reg[12]_i_1_n_5 ,\sleep_counter_ff_reg[12]_i_1_n_6 ,\sleep_counter_ff_reg[12]_i_1_n_7 }),
        .S({1'b0,sleep_counter_ff_reg[14:12]}));
  FDRE \sleep_counter_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[12]_i_1_n_6 ),
        .Q(sleep_counter_ff_reg[13]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[12]_i_1_n_5 ),
        .Q(sleep_counter_ff_reg[14]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[0]_i_3_n_6 ),
        .Q(sleep_counter_ff_reg[1]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[0]_i_3_n_5 ),
        .Q(sleep_counter_ff_reg[2]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[0]_i_3_n_4 ),
        .Q(sleep_counter_ff_reg[3]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[4]_i_1_n_7 ),
        .Q(sleep_counter_ff_reg[4]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sleep_counter_ff_reg[4]_i_1 
       (.CI(\sleep_counter_ff_reg[0]_i_3_n_0 ),
        .CO({\sleep_counter_ff_reg[4]_i_1_n_0 ,\sleep_counter_ff_reg[4]_i_1_n_1 ,\sleep_counter_ff_reg[4]_i_1_n_2 ,\sleep_counter_ff_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sleep_counter_ff_reg[4]_i_1_n_4 ,\sleep_counter_ff_reg[4]_i_1_n_5 ,\sleep_counter_ff_reg[4]_i_1_n_6 ,\sleep_counter_ff_reg[4]_i_1_n_7 }),
        .S(sleep_counter_ff_reg[7:4]));
  FDRE \sleep_counter_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[4]_i_1_n_6 ),
        .Q(sleep_counter_ff_reg[5]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[4]_i_1_n_5 ),
        .Q(sleep_counter_ff_reg[6]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[4]_i_1_n_4 ),
        .Q(sleep_counter_ff_reg[7]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[8]_i_1_n_7 ),
        .Q(sleep_counter_ff_reg[8]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sleep_counter_ff_reg[8]_i_1 
       (.CI(\sleep_counter_ff_reg[4]_i_1_n_0 ),
        .CO({\sleep_counter_ff_reg[8]_i_1_n_0 ,\sleep_counter_ff_reg[8]_i_1_n_1 ,\sleep_counter_ff_reg[8]_i_1_n_2 ,\sleep_counter_ff_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sleep_counter_ff_reg[8]_i_1_n_4 ,\sleep_counter_ff_reg[8]_i_1_n_5 ,\sleep_counter_ff_reg[8]_i_1_n_6 ,\sleep_counter_ff_reg[8]_i_1_n_7 }),
        .S(sleep_counter_ff_reg[11:8]));
  FDRE \sleep_counter_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\sleep_counter_ff_reg[8]_i_1_n_6 ),
        .Q(sleep_counter_ff_reg[9]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B000B00000)) 
    \slot_active_array_ff[0]_i_1 
       (.I0(\slot_active_array_ff[1]_i_2_n_0 ),
        .I1(\gen_last_sample_array[0].last_sample_array_reg ),
        .I2(s_axi_aresetn),
        .I3(initter_curr_slot_ff),
        .I4(\FSM_sequential_curr_initter_state_ff_reg[0]_0 ),
        .I5(\slot_active_array_ff_reg[0]_0 ),
        .O(\slot_active_array_ff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0B0000000)) 
    \slot_active_array_ff[1]_i_1 
       (.I0(\slot_active_array_ff[1]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(s_axi_aresetn),
        .I3(initter_curr_slot_ff),
        .I4(\FSM_sequential_curr_initter_state_ff_reg[0]_0 ),
        .I5(\slot_active_array_ff_reg[1]_0 ),
        .O(\slot_active_array_ff[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \slot_active_array_ff[1]_i_2 
       (.I0(Q[1]),
        .I1(curr_state_ff_0[0]),
        .I2(curr_state_ff_0[1]),
        .I3(curr_player_state_ff),
        .I4(Q[0]),
        .O(\slot_active_array_ff[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \slot_active_array_ff[1]_i_3 
       (.I0(curr_initter_state_ff[0]),
        .I1(curr_initter_state_ff[2]),
        .I2(curr_initter_state_ff[1]),
        .O(\FSM_sequential_curr_initter_state_ff_reg[0]_0 ));
  FDRE \slot_active_array_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slot_active_array_ff[0]_i_1_n_0 ),
        .Q(\slot_active_array_ff_reg[0]_0 ),
        .R(1'b0));
  FDRE \slot_active_array_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slot_active_array_ff[1]_i_1_n_0 ),
        .Q(\slot_active_array_ff_reg[1]_0 ),
        .R(1'b0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_0_0
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[0]),
        .DPO(req_addr_ff2[0]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_10_10
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[10]),
        .DPO(req_addr_ff2[10]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[10]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_11_11
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[11]),
        .DPO(req_addr_ff2[11]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[11]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_12_12
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[12]),
        .DPO(req_addr_ff2[12]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[12]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_13_13
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[13]),
        .DPO(req_addr_ff2[13]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[13]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_14_14
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[14]),
        .DPO(req_addr_ff2[14]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[14]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_15_15
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[15]),
        .DPO(req_addr_ff2[15]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[15]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_16_16
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[16]),
        .DPO(req_addr_ff2[16]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[16]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_17_17
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[17]),
        .DPO(req_addr_ff2[17]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[17]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_18_18
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[18]),
        .DPO(req_addr_ff2[18]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[18]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_19_19
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[19]),
        .DPO(req_addr_ff2[19]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[19]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_1_1
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[1]),
        .DPO(req_addr_ff2[1]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[1]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_20_20
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[20]),
        .DPO(req_addr_ff2[20]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[20]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_21_21
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[21]),
        .DPO(req_addr_ff2[21]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[21]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_22_22
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[22]),
        .DPO(req_addr_ff2[22]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[22]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_23_23
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[23]),
        .DPO(req_addr_ff2[23]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[23]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_24_24
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[24]),
        .DPO(req_addr_ff2[24]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[24]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_25_25
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[25]),
        .DPO(req_addr_ff2[25]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[25]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_26_26
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[26]),
        .DPO(req_addr_ff2[26]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[26]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_27_27
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[27]),
        .DPO(req_addr_ff2[27]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[27]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_28_28
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[28]),
        .DPO(req_addr_ff2[28]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[28]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_29_29
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[29]),
        .DPO(req_addr_ff2[29]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[29]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_2_2
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[2]),
        .DPO(req_addr_ff2[2]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[2]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_30_30
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[30]),
        .DPO(req_addr_ff2[30]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[30]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_31_31
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[31]),
        .DPO(req_addr_ff2[31]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[31]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_3_3
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[3]),
        .DPO(req_addr_ff2[3]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[3]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_4_4
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[4]),
        .DPO(req_addr_ff2[4]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[4]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_5_5
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[5]),
        .DPO(req_addr_ff2[5]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[5]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_6_6
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[6]),
        .DPO(req_addr_ff2[6]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[6]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_7_7
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[7]),
        .DPO(req_addr_ff2[7]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[7]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_8_8
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[8]),
        .DPO(req_addr_ff2[8]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[8]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/sound_addr_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    sound_addr_array_ff_reg_0_1_9_9
       (.A0(initter_curr_slot_ff),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(initter_sound_addr_ff[9]),
        .DPO(req_addr_ff2[9]),
        .DPRA0(player_curr_slot_ff),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(req_addr_ff0[9]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A800A8)) 
    valid_ff_i_1
       (.I0(s_axi_aresetn),
        .I1(valid_ff_reg),
        .I2(s_rv_valid),
        .I3(sel),
        .I4(valid_ff_i_2_n_0),
        .I5(\sleep_counter_ff[0]_i_1_n_0 ),
        .O(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    valid_ff_i_2
       (.I0(curr_initter_state_ff[0]),
        .I1(curr_initter_state_ff[1]),
        .I2(curr_initter_state_ff[2]),
        .I3(s_rv_valid),
        .O(valid_ff_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/vol_coef_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M vol_coef_array_ff_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,initter_curr_slot_ff}),
        .DIA(initter_vol_coef_ff[1:0]),
        .DIB(initter_vol_coef_ff[3:2]),
        .DIC(initter_vol_coef_ff[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(B[1:0]),
        .DOB(B[3:2]),
        .DOC(B[5:4]),
        .DOD(NLW_vol_coef_array_ff_reg_0_1_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  LUT4 #(
    .INIT(16'h0200)) 
    vol_coef_array_ff_reg_0_1_0_5_i_1
       (.I0(curr_initter_state_ff[2]),
        .I1(curr_initter_state_ff[0]),
        .I2(curr_initter_state_ff[1]),
        .I3(s_axi_aresetn),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/vol_coef_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M vol_coef_array_ff_reg_0_1_12_17
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,initter_curr_slot_ff}),
        .DIA(initter_vol_coef_ff[13:12]),
        .DIB(initter_vol_coef_ff[15:14]),
        .DIC(initter_vol_coef_ff[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(B[13:12]),
        .DOB({vol_coef_array_ff_reg_0_1_12_17_n_2,B[14]}),
        .DOC({vol_coef_array_ff_reg_0_1_12_17_n_4,vol_coef_array_ff_reg_0_1_12_17_n_5}),
        .DOD(NLW_vol_coef_array_ff_reg_0_1_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/vol_coef_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M vol_coef_array_ff_reg_0_1_30_31
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,initter_curr_slot_ff}),
        .DIA(initter_vol_coef_ff[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({B[15],vol_coef_array_ff_reg_0_1_30_31_n_1}),
        .DOB(NLW_vol_coef_array_ff_reg_0_1_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_vol_coef_array_ff_reg_0_1_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_vol_coef_array_ff_reg_0_1_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/audio_fetcher_controller_inst/vol_coef_array_ff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M vol_coef_array_ff_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,player_curr_slot_ff}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,initter_curr_slot_ff}),
        .DIA(initter_vol_coef_ff[7:6]),
        .DIB(initter_vol_coef_ff[9:8]),
        .DIC(initter_vol_coef_ff[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(B[7:6]),
        .DOB(B[9:8]),
        .DOC(B[11:10]),
        .DOD(NLW_vol_coef_array_ff_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
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
