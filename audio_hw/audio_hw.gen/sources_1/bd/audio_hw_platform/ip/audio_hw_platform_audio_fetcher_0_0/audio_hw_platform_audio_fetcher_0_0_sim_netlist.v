// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Mar 17 21:38:50 2024
// Host        : IC-VivoBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw/audio_hw.gen/sources_1/bd/audio_hw_platform/ip/audio_hw_platform_audio_fetcher_0_0/audio_hw_platform_audio_fetcher_0_0_sim_netlist.v
// Design      : audio_hw_platform_audio_fetcher_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_hw_platform_audio_fetcher_0_0,audio_fetcher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "audio_fetcher,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module audio_hw_platform_audio_fetcher_0_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [0:0]s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input [0:0]s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output [0:0]s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input [0:0]s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output [0:0]s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output [0:0]s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input [0:0]s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input [0:0]s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output [0:0]s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output [0:0]s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input [0:0]s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axi_audio_out_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_audio_out_aclk, ASSOCIATED_BUSIF m_axi_audio_out, ASSOCIATED_RESET m_axi_audio_out_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]m_axi_audio_out_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_axi_audio_out_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_audio_out_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [0:0]m_axi_audio_out_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_audio_out, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_audio_out_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWPROT" *) output [2:0]m_axi_audio_out_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWVALID" *) output [0:0]m_axi_audio_out_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWREADY" *) input [0:0]m_axi_audio_out_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WDATA" *) output [31:0]m_axi_audio_out_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WSTRB" *) output [3:0]m_axi_audio_out_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WVALID" *) output [0:0]m_axi_audio_out_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out WREADY" *) input [0:0]m_axi_audio_out_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out BRESP" *) input [1:0]m_axi_audio_out_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out BVALID" *) input [0:0]m_axi_audio_out_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out BREADY" *) output [0:0]m_axi_audio_out_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARADDR" *) output [31:0]m_axi_audio_out_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARPROT" *) output [2:0]m_axi_audio_out_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARVALID" *) output [0:0]m_axi_audio_out_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARREADY" *) input [0:0]m_axi_audio_out_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RDATA" *) input [31:0]m_axi_audio_out_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RRESP" *) input [1:0]m_axi_audio_out_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RVALID" *) input [0:0]m_axi_audio_out_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_audio_out RREADY" *) output [0:0]m_axi_audio_out_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axi_dma_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_dma_aclk, ASSOCIATED_BUSIF m_axi_dma, ASSOCIATED_RESET m_axi_dma_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]m_axi_dma_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_axi_dma_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_dma_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [0:0]m_axi_dma_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_dma, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]m_axi_dma_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWADDR" *) output [31:0]m_axi_dma_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWLEN" *) output [7:0]m_axi_dma_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWSIZE" *) output [2:0]m_axi_dma_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWBURST" *) output [1:0]m_axi_dma_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWLOCK" *) output [0:0]m_axi_dma_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWCACHE" *) output [3:0]m_axi_dma_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWPROT" *) output [2:0]m_axi_dma_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWQOS" *) output [3:0]m_axi_dma_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWUSER" *) output [0:0]m_axi_dma_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWVALID" *) output [0:0]m_axi_dma_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma AWREADY" *) input [0:0]m_axi_dma_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WDATA" *) output [31:0]m_axi_dma_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WSTRB" *) output [3:0]m_axi_dma_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WLAST" *) output [0:0]m_axi_dma_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WUSER" *) output [0:0]m_axi_dma_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WVALID" *) output [0:0]m_axi_dma_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma WREADY" *) input [0:0]m_axi_dma_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BID" *) input [1:0]m_axi_dma_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BRESP" *) input [1:0]m_axi_dma_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BUSER" *) input [0:0]m_axi_dma_buser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BVALID" *) input [0:0]m_axi_dma_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma BREADY" *) output [0:0]m_axi_dma_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARID" *) output [1:0]m_axi_dma_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARADDR" *) output [31:0]m_axi_dma_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARLEN" *) output [7:0]m_axi_dma_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARSIZE" *) output [2:0]m_axi_dma_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARBURST" *) output [1:0]m_axi_dma_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARLOCK" *) output [0:0]m_axi_dma_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARCACHE" *) output [3:0]m_axi_dma_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARPROT" *) output [2:0]m_axi_dma_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARQOS" *) output [3:0]m_axi_dma_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARUSER" *) output [0:0]m_axi_dma_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARVALID" *) output [0:0]m_axi_dma_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma ARREADY" *) input [0:0]m_axi_dma_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RID" *) input [1:0]m_axi_dma_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RDATA" *) input [31:0]m_axi_dma_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RRESP" *) input [1:0]m_axi_dma_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RLAST" *) input [0:0]m_axi_dma_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RUSER" *) input [0:0]m_axi_dma_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RVALID" *) input [0:0]m_axi_dma_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_dma RREADY" *) output [0:0]m_axi_dma_rready;
  output [31:0]debug_data_o;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]debug_data_o;
  wire [0:0]m_axi_audio_out_aclk;
  wire [0:0]m_axi_audio_out_aresetn;
  wire [25:2]\^m_axi_audio_out_awaddr ;
  wire [0:0]m_axi_audio_out_awready;
  wire [0:0]m_axi_audio_out_awvalid;
  wire [0:0]m_axi_audio_out_bready;
  wire [0:0]m_axi_audio_out_bvalid;
  wire [31:0]m_axi_audio_out_wdata;
  wire [0:0]m_axi_audio_out_wready;
  wire [0:0]m_axi_audio_out_wvalid;
  wire [0:0]m_axi_dma_aclk;
  wire [31:0]m_axi_dma_araddr;
  wire [0:0]m_axi_dma_aresetn;
  wire [0:0]m_axi_dma_arready;
  wire [0:0]m_axi_dma_arvalid;
  wire [31:0]m_axi_dma_rdata;
  wire [0:0]m_axi_dma_rready;
  wire [0:0]m_axi_dma_rvalid;
  wire [0:0]s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire [0:0]s_axi_aresetn;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [0:0]s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;

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
  assign m_axi_audio_out_arvalid[0] = \<const0> ;
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
  assign m_axi_audio_out_awaddr[16] = \<const0> ;
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
  assign m_axi_audio_out_rready[0] = \<const0> ;
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
  assign m_axi_dma_arlock[0] = \<const0> ;
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
  assign m_axi_dma_awlock[0] = \<const0> ;
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
  assign m_axi_dma_awvalid[0] = \<const0> ;
  assign m_axi_dma_bready[0] = \<const0> ;
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
  assign m_axi_dma_wlast[0] = \<const0> ;
  assign m_axi_dma_wstrb[3] = \<const0> ;
  assign m_axi_dma_wstrb[2] = \<const0> ;
  assign m_axi_dma_wstrb[1] = \<const0> ;
  assign m_axi_dma_wstrb[0] = \<const0> ;
  assign m_axi_dma_wuser[0] = \<const0> ;
  assign m_axi_dma_wvalid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  audio_hw_platform_audio_fetcher_0_0_audio_fetcher U0
       (.debug_data_o(debug_data_o),
        .m_axi_audio_out_aclk(m_axi_audio_out_aclk),
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
        .s_axi_wvalid(s_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "audio_fetcher" *) 
module audio_hw_platform_audio_fetcher_0_0_audio_fetcher
   (s_axi_awready,
    debug_data_o,
    s_axi_wready,
    s_axi_arready,
    s_axi_rdata,
    m_axi_audio_out_awaddr,
    m_axi_audio_out_wdata,
    m_axi_dma_araddr,
    m_axi_audio_out_bready,
    m_axi_dma_rready,
    m_axi_audio_out_awvalid,
    m_axi_audio_out_wvalid,
    m_axi_dma_arvalid,
    s_axi_rvalid,
    s_axi_bvalid,
    m_axi_audio_out_wready,
    m_axi_audio_out_aresetn,
    m_axi_audio_out_aclk,
    m_axi_dma_rvalid,
    m_axi_dma_aresetn,
    m_axi_dma_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_aclk,
    m_axi_dma_rdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_aresetn,
    m_axi_dma_arready,
    m_axi_audio_out_bvalid,
    m_axi_audio_out_awready,
    s_axi_wstrb,
    s_axi_bready,
    s_axi_rready);
  output s_axi_awready;
  output [31:0]debug_data_o;
  output s_axi_wready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]m_axi_audio_out_awaddr;
  output [31:0]m_axi_audio_out_wdata;
  output [31:0]m_axi_dma_araddr;
  output [0:0]m_axi_audio_out_bready;
  output [0:0]m_axi_dma_rready;
  output [0:0]m_axi_audio_out_awvalid;
  output [0:0]m_axi_audio_out_wvalid;
  output [0:0]m_axi_dma_arvalid;
  output [0:0]s_axi_rvalid;
  output [0:0]s_axi_bvalid;
  input [0:0]m_axi_audio_out_wready;
  input [0:0]m_axi_audio_out_aresetn;
  input [0:0]m_axi_audio_out_aclk;
  input [0:0]m_axi_dma_rvalid;
  input [0:0]m_axi_dma_aresetn;
  input [0:0]m_axi_dma_aclk;
  input [1:0]s_axi_awaddr;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_aclk;
  input [31:0]m_axi_dma_rdata;
  input [1:0]s_axi_araddr;
  input [0:0]s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_aresetn;
  input [0:0]m_axi_dma_arready;
  input [0:0]m_axi_audio_out_bvalid;
  input [0:0]m_axi_audio_out_awready;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_bready;
  input [0:0]s_axi_rready;

  wire audio_fetcher_M_AXI_AUDIO_OUT_inst_n_3;
  wire audio_fetcher_M_AXI_DMA_inst_n_2;
  wire audio_fetcher_M_AXI_DMA_inst_n_23;
  wire audio_fetcher_M_AXI_DMA_inst_n_24;
  wire audio_fetcher_M_AXI_DMA_inst_n_25;
  wire audio_fetcher_M_AXI_DMA_inst_n_26;
  wire audio_fetcher_M_AXI_DMA_inst_n_27;
  wire audio_fetcher_M_AXI_DMA_inst_n_28;
  wire audio_fetcher_M_AXI_DMA_inst_n_29;
  wire audio_fetcher_M_AXI_DMA_inst_n_30;
  wire audio_fetcher_M_AXI_DMA_inst_n_31;
  wire audio_fetcher_M_AXI_DMA_inst_n_32;
  wire audio_fetcher_M_AXI_DMA_inst_n_33;
  wire audio_fetcher_M_AXI_DMA_inst_n_34;
  wire audio_fetcher_M_AXI_DMA_inst_n_35;
  wire audio_fetcher_M_AXI_DMA_inst_n_36;
  wire audio_fetcher_M_AXI_DMA_inst_n_37;
  wire audio_fetcher_M_AXI_DMA_inst_n_39;
  wire audio_fetcher_M_AXI_DMA_inst_n_4;
  wire audio_fetcher_M_AXI_DMA_inst_n_40;
  wire audio_fetcher_M_AXI_DMA_inst_n_41;
  wire audio_fetcher_M_AXI_DMA_inst_n_42;
  wire audio_fetcher_M_AXI_DMA_inst_n_43;
  wire audio_fetcher_M_AXI_DMA_inst_n_44;
  wire audio_fetcher_M_AXI_DMA_inst_n_45;
  wire audio_fetcher_M_AXI_DMA_inst_n_46;
  wire audio_fetcher_M_AXI_DMA_inst_n_47;
  wire audio_fetcher_M_AXI_DMA_inst_n_48;
  wire audio_fetcher_M_AXI_DMA_inst_n_49;
  wire audio_fetcher_M_AXI_DMA_inst_n_50;
  wire audio_fetcher_M_AXI_DMA_inst_n_51;
  wire audio_fetcher_M_AXI_DMA_inst_n_52;
  wire audio_fetcher_M_AXI_DMA_inst_n_53;
  wire audio_fetcher_S_AXI_inst_n_1;
  wire audio_fetcher_S_AXI_inst_n_56;
  wire audio_fetcher_S_AXI_inst_n_57;
  wire audio_fetcher_S_AXI_inst_n_58;
  wire audio_fetcher_S_AXI_inst_n_59;
  wire audio_fetcher_S_AXI_inst_n_60;
  wire audio_fetcher_S_AXI_inst_n_61;
  wire audio_fetcher_S_AXI_inst_n_62;
  wire audio_fetcher_S_AXI_inst_n_63;
  wire audio_fetcher_S_AXI_inst_n_64;
  wire audio_fetcher_S_AXI_inst_n_65;
  wire audio_fetcher_S_AXI_inst_n_66;
  wire audio_fetcher_S_AXI_inst_n_67;
  wire audio_fetcher_S_AXI_inst_n_68;
  wire audio_fetcher_S_AXI_inst_n_69;
  wire audio_fetcher_S_AXI_inst_n_70;
  wire audio_fetcher_S_AXI_inst_n_71;
  wire audio_fetcher_S_AXI_inst_n_72;
  wire audio_fetcher_S_AXI_inst_n_73;
  wire audio_fetcher_S_AXI_inst_n_74;
  wire audio_fetcher_S_AXI_inst_n_75;
  wire audio_fetcher_S_AXI_inst_n_76;
  wire audio_fetcher_S_AXI_inst_n_77;
  wire audio_fetcher_S_AXI_inst_n_78;
  wire audio_fetcher_S_AXI_inst_n_79;
  wire audio_fetcher_S_AXI_inst_n_80;
  wire audio_fetcher_S_AXI_inst_n_81;
  wire audio_fetcher_S_AXI_inst_n_82;
  wire audio_fetcher_S_AXI_inst_n_83;
  wire audio_fetcher_S_AXI_inst_n_84;
  wire audio_fetcher_S_AXI_inst_n_85;
  wire audio_fetcher_S_AXI_inst_n_86;
  wire audio_fetcher_S_AXI_inst_n_87;
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
  wire audio_fetcher_controller_inst_n_33;
  wire audio_fetcher_controller_inst_n_36;
  wire audio_fetcher_controller_inst_n_37;
  wire audio_fetcher_controller_inst_n_4;
  wire audio_fetcher_controller_inst_n_5;
  wire audio_fetcher_controller_inst_n_6;
  wire audio_fetcher_controller_inst_n_7;
  wire audio_fetcher_controller_inst_n_8;
  wire audio_fetcher_controller_inst_n_9;
  wire axi_araddr_ff0;
  wire [1:0]curr_state_ff;
  wire [1:0]curr_state_ff_0;
  wire [3:0]curr_state_ff_1;
  wire [31:0]debug_data_o;
  wire [0:0]m_axi_audio_out_aclk;
  wire [0:0]m_axi_audio_out_aresetn;
  wire [1:0]m_axi_audio_out_awaddr;
  wire [0:0]m_axi_audio_out_awready;
  wire [0:0]m_axi_audio_out_awvalid;
  wire [0:0]m_axi_audio_out_bready;
  wire [0:0]m_axi_audio_out_bvalid;
  wire [31:0]m_axi_audio_out_wdata;
  wire [0:0]m_axi_audio_out_wready;
  wire [0:0]m_axi_audio_out_wvalid;
  wire [0:0]m_axi_dma_aclk;
  wire [31:0]m_axi_dma_araddr;
  wire [0:0]m_axi_dma_aresetn;
  wire [0:0]m_axi_dma_arready;
  wire [0:0]m_axi_dma_arvalid;
  wire [31:0]m_axi_dma_rdata;
  wire [0:0]m_axi_dma_rready;
  wire [0:0]m_axi_dma_rvalid;
  wire p_0_out0;
  wire p_0_out0_in0;
  wire p_1_in;
  wire [31:0]req_rv_addr;
  wire [0:0]s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_aresetn;
  wire s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire s_rv_valid;
  wire [31:0]sample_ff;
  wire [31:0]slv_reg1;
  wire sound_addr_ff0;

  audio_hw_platform_audio_fetcher_0_0_audio_fetcher_M_AXI_AUDIO_OUT audio_fetcher_M_AXI_AUDIO_OUT_inst
       (.D({audio_fetcher_controller_inst_n_0,audio_fetcher_controller_inst_n_1,audio_fetcher_controller_inst_n_2,audio_fetcher_controller_inst_n_3,audio_fetcher_controller_inst_n_4,audio_fetcher_controller_inst_n_5,audio_fetcher_controller_inst_n_6,audio_fetcher_controller_inst_n_7,audio_fetcher_controller_inst_n_8,audio_fetcher_controller_inst_n_9,audio_fetcher_controller_inst_n_10,audio_fetcher_controller_inst_n_11,audio_fetcher_controller_inst_n_12,audio_fetcher_controller_inst_n_13,audio_fetcher_controller_inst_n_14,audio_fetcher_controller_inst_n_15,audio_fetcher_controller_inst_n_16,audio_fetcher_controller_inst_n_17,audio_fetcher_controller_inst_n_18,audio_fetcher_controller_inst_n_19,audio_fetcher_controller_inst_n_20,audio_fetcher_controller_inst_n_21,audio_fetcher_controller_inst_n_22,audio_fetcher_controller_inst_n_23,audio_fetcher_controller_inst_n_24,audio_fetcher_controller_inst_n_25,audio_fetcher_controller_inst_n_26,audio_fetcher_controller_inst_n_27,audio_fetcher_controller_inst_n_28,audio_fetcher_controller_inst_n_29,audio_fetcher_controller_inst_n_30,audio_fetcher_controller_inst_n_31}),
        .\FSM_sequential_curr_state_ff_reg[1]_0 (audio_fetcher_M_AXI_AUDIO_OUT_inst_n_3),
        .Q({curr_state_ff_1[3],curr_state_ff_1[0]}),
        .\axi_awaddr_ff_reg[2]_0 (audio_fetcher_controller_inst_n_36),
        .curr_state_ff(curr_state_ff),
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
  audio_hw_platform_audio_fetcher_0_0_audio_fetcher_M_AXI_DMA audio_fetcher_M_AXI_DMA_inst
       (.A({sample_ff[31],sample_ff[14:0]}),
        .E(axi_araddr_ff0),
        .\FSM_sequential_curr_state_ff_reg[0]_0 (audio_fetcher_controller_inst_n_37),
        .\FSM_sequential_curr_state_ff_reg[1]_0 (audio_fetcher_M_AXI_DMA_inst_n_2),
        .\FSM_sequential_curr_state_ff_reg[1]_1 (audio_fetcher_M_AXI_DMA_inst_n_4),
        .Q({curr_state_ff_1[3],curr_state_ff_1[0]}),
        .\axi_rdata_ff_reg[31]_0 ({p_0_out0,audio_fetcher_M_AXI_DMA_inst_n_23,audio_fetcher_M_AXI_DMA_inst_n_24,audio_fetcher_M_AXI_DMA_inst_n_25,audio_fetcher_M_AXI_DMA_inst_n_26,audio_fetcher_M_AXI_DMA_inst_n_27,audio_fetcher_M_AXI_DMA_inst_n_28,audio_fetcher_M_AXI_DMA_inst_n_29,audio_fetcher_M_AXI_DMA_inst_n_30,audio_fetcher_M_AXI_DMA_inst_n_31,audio_fetcher_M_AXI_DMA_inst_n_32,audio_fetcher_M_AXI_DMA_inst_n_33,audio_fetcher_M_AXI_DMA_inst_n_34,audio_fetcher_M_AXI_DMA_inst_n_35,audio_fetcher_M_AXI_DMA_inst_n_36,audio_fetcher_M_AXI_DMA_inst_n_37,p_0_out0_in0,audio_fetcher_M_AXI_DMA_inst_n_39,audio_fetcher_M_AXI_DMA_inst_n_40,audio_fetcher_M_AXI_DMA_inst_n_41,audio_fetcher_M_AXI_DMA_inst_n_42,audio_fetcher_M_AXI_DMA_inst_n_43,audio_fetcher_M_AXI_DMA_inst_n_44,audio_fetcher_M_AXI_DMA_inst_n_45,audio_fetcher_M_AXI_DMA_inst_n_46,audio_fetcher_M_AXI_DMA_inst_n_47,audio_fetcher_M_AXI_DMA_inst_n_48,audio_fetcher_M_AXI_DMA_inst_n_49,audio_fetcher_M_AXI_DMA_inst_n_50,audio_fetcher_M_AXI_DMA_inst_n_51,audio_fetcher_M_AXI_DMA_inst_n_52,audio_fetcher_M_AXI_DMA_inst_n_53}),
        .curr_state_ff(curr_state_ff_0),
        .m_axi_dma_aclk(m_axi_dma_aclk),
        .m_axi_dma_araddr(m_axi_dma_araddr),
        .m_axi_dma_aresetn(m_axi_dma_aresetn),
        .m_axi_dma_arready(m_axi_dma_arready),
        .m_axi_dma_arvalid(m_axi_dma_arvalid),
        .m_axi_dma_rdata(m_axi_dma_rdata),
        .m_axi_dma_rready(m_axi_dma_rready),
        .m_axi_dma_rvalid(m_axi_dma_rvalid),
        .req_rv_addr(req_rv_addr),
        .scaled_sample_ff_reg(audio_fetcher_controller_inst_n_33));
  audio_hw_platform_audio_fetcher_0_0_audio_fetcher_S_AXI audio_fetcher_S_AXI_inst
       (.Q(p_1_in),
        .debug_data_o(debug_data_o),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0_sp_1(audio_fetcher_S_AXI_inst_n_1),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
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
        .s_rv_valid(s_rv_valid),
        .\slv_reg1_reg[31]_0 ({slv_reg1[31],slv_reg1[14:0]}),
        .sound_addr_ff0(sound_addr_ff0),
        .\sound_addr_ff_reg[31]_0 ({audio_fetcher_S_AXI_inst_n_56,audio_fetcher_S_AXI_inst_n_57,audio_fetcher_S_AXI_inst_n_58,audio_fetcher_S_AXI_inst_n_59,audio_fetcher_S_AXI_inst_n_60,audio_fetcher_S_AXI_inst_n_61,audio_fetcher_S_AXI_inst_n_62,audio_fetcher_S_AXI_inst_n_63,audio_fetcher_S_AXI_inst_n_64,audio_fetcher_S_AXI_inst_n_65,audio_fetcher_S_AXI_inst_n_66,audio_fetcher_S_AXI_inst_n_67,audio_fetcher_S_AXI_inst_n_68,audio_fetcher_S_AXI_inst_n_69,audio_fetcher_S_AXI_inst_n_70,audio_fetcher_S_AXI_inst_n_71,audio_fetcher_S_AXI_inst_n_72,audio_fetcher_S_AXI_inst_n_73,audio_fetcher_S_AXI_inst_n_74,audio_fetcher_S_AXI_inst_n_75,audio_fetcher_S_AXI_inst_n_76,audio_fetcher_S_AXI_inst_n_77,audio_fetcher_S_AXI_inst_n_78,audio_fetcher_S_AXI_inst_n_79,audio_fetcher_S_AXI_inst_n_80,audio_fetcher_S_AXI_inst_n_81,audio_fetcher_S_AXI_inst_n_82,audio_fetcher_S_AXI_inst_n_83,audio_fetcher_S_AXI_inst_n_84,audio_fetcher_S_AXI_inst_n_85,audio_fetcher_S_AXI_inst_n_86,audio_fetcher_S_AXI_inst_n_87}));
  audio_hw_platform_audio_fetcher_0_0_audio_fetcher_controller audio_fetcher_controller_inst
       (.A({sample_ff[31],sample_ff[14:0]}),
        .D({p_0_out0,audio_fetcher_M_AXI_DMA_inst_n_23,audio_fetcher_M_AXI_DMA_inst_n_24,audio_fetcher_M_AXI_DMA_inst_n_25,audio_fetcher_M_AXI_DMA_inst_n_26,audio_fetcher_M_AXI_DMA_inst_n_27,audio_fetcher_M_AXI_DMA_inst_n_28,audio_fetcher_M_AXI_DMA_inst_n_29,audio_fetcher_M_AXI_DMA_inst_n_30,audio_fetcher_M_AXI_DMA_inst_n_31,audio_fetcher_M_AXI_DMA_inst_n_32,audio_fetcher_M_AXI_DMA_inst_n_33,audio_fetcher_M_AXI_DMA_inst_n_34,audio_fetcher_M_AXI_DMA_inst_n_35,audio_fetcher_M_AXI_DMA_inst_n_36,audio_fetcher_M_AXI_DMA_inst_n_37,p_0_out0_in0,audio_fetcher_M_AXI_DMA_inst_n_39,audio_fetcher_M_AXI_DMA_inst_n_40,audio_fetcher_M_AXI_DMA_inst_n_41,audio_fetcher_M_AXI_DMA_inst_n_42,audio_fetcher_M_AXI_DMA_inst_n_43,audio_fetcher_M_AXI_DMA_inst_n_44,audio_fetcher_M_AXI_DMA_inst_n_45,audio_fetcher_M_AXI_DMA_inst_n_46,audio_fetcher_M_AXI_DMA_inst_n_47,audio_fetcher_M_AXI_DMA_inst_n_48,audio_fetcher_M_AXI_DMA_inst_n_49,audio_fetcher_M_AXI_DMA_inst_n_50,audio_fetcher_M_AXI_DMA_inst_n_51,audio_fetcher_M_AXI_DMA_inst_n_52,audio_fetcher_M_AXI_DMA_inst_n_53}),
        .E(axi_araddr_ff0),
        .Q(p_1_in),
        .curr_state_ff(curr_state_ff_0),
        .curr_state_ff_0(curr_state_ff),
        .\curr_state_ff_reg[0]_0 (audio_fetcher_controller_inst_n_37),
        .\curr_state_ff_reg[0]_1 (audio_fetcher_M_AXI_AUDIO_OUT_inst_n_3),
        .\curr_state_ff_reg[1]_0 (audio_fetcher_M_AXI_DMA_inst_n_2),
        .\curr_state_ff_reg[1]_1 (audio_fetcher_M_AXI_DMA_inst_n_4),
        .\curr_state_ff_reg[3]_0 ({curr_state_ff_1[3],curr_state_ff_1[0]}),
        .\curr_state_ff_reg[3]_1 (audio_fetcher_controller_inst_n_36),
        .debug_data_o(debug_data_o),
        .minusOp_0(audio_fetcher_S_AXI_inst_n_1),
        .req_rv_addr(req_rv_addr),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_rv_valid(s_rv_valid),
        .\sample_index_ff_reg[0]_0 (audio_fetcher_controller_inst_n_33),
        .scaled_sample_ff_reg_0({audio_fetcher_controller_inst_n_0,audio_fetcher_controller_inst_n_1,audio_fetcher_controller_inst_n_2,audio_fetcher_controller_inst_n_3,audio_fetcher_controller_inst_n_4,audio_fetcher_controller_inst_n_5,audio_fetcher_controller_inst_n_6,audio_fetcher_controller_inst_n_7,audio_fetcher_controller_inst_n_8,audio_fetcher_controller_inst_n_9,audio_fetcher_controller_inst_n_10,audio_fetcher_controller_inst_n_11,audio_fetcher_controller_inst_n_12,audio_fetcher_controller_inst_n_13,audio_fetcher_controller_inst_n_14,audio_fetcher_controller_inst_n_15,audio_fetcher_controller_inst_n_16,audio_fetcher_controller_inst_n_17,audio_fetcher_controller_inst_n_18,audio_fetcher_controller_inst_n_19,audio_fetcher_controller_inst_n_20,audio_fetcher_controller_inst_n_21,audio_fetcher_controller_inst_n_22,audio_fetcher_controller_inst_n_23,audio_fetcher_controller_inst_n_24,audio_fetcher_controller_inst_n_25,audio_fetcher_controller_inst_n_26,audio_fetcher_controller_inst_n_27,audio_fetcher_controller_inst_n_28,audio_fetcher_controller_inst_n_29,audio_fetcher_controller_inst_n_30,audio_fetcher_controller_inst_n_31}),
        .scaled_sample_ff_reg_1({slv_reg1[31],slv_reg1[14:0]}),
        .sound_addr_ff0(sound_addr_ff0),
        .\sound_addr_ff_reg[31]_0 ({audio_fetcher_S_AXI_inst_n_56,audio_fetcher_S_AXI_inst_n_57,audio_fetcher_S_AXI_inst_n_58,audio_fetcher_S_AXI_inst_n_59,audio_fetcher_S_AXI_inst_n_60,audio_fetcher_S_AXI_inst_n_61,audio_fetcher_S_AXI_inst_n_62,audio_fetcher_S_AXI_inst_n_63,audio_fetcher_S_AXI_inst_n_64,audio_fetcher_S_AXI_inst_n_65,audio_fetcher_S_AXI_inst_n_66,audio_fetcher_S_AXI_inst_n_67,audio_fetcher_S_AXI_inst_n_68,audio_fetcher_S_AXI_inst_n_69,audio_fetcher_S_AXI_inst_n_70,audio_fetcher_S_AXI_inst_n_71,audio_fetcher_S_AXI_inst_n_72,audio_fetcher_S_AXI_inst_n_73,audio_fetcher_S_AXI_inst_n_74,audio_fetcher_S_AXI_inst_n_75,audio_fetcher_S_AXI_inst_n_76,audio_fetcher_S_AXI_inst_n_77,audio_fetcher_S_AXI_inst_n_78,audio_fetcher_S_AXI_inst_n_79,audio_fetcher_S_AXI_inst_n_80,audio_fetcher_S_AXI_inst_n_81,audio_fetcher_S_AXI_inst_n_82,audio_fetcher_S_AXI_inst_n_83,audio_fetcher_S_AXI_inst_n_84,audio_fetcher_S_AXI_inst_n_85,audio_fetcher_S_AXI_inst_n_86,audio_fetcher_S_AXI_inst_n_87}));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_M_AXI_AUDIO_OUT" *) 
module audio_hw_platform_audio_fetcher_0_0_audio_fetcher_M_AXI_AUDIO_OUT
   (curr_state_ff,
    m_axi_audio_out_bready,
    \FSM_sequential_curr_state_ff_reg[1]_0 ,
    m_axi_audio_out_awvalid,
    m_axi_audio_out_wvalid,
    m_axi_audio_out_awaddr,
    m_axi_audio_out_wdata,
    m_axi_audio_out_wready,
    m_axi_audio_out_bvalid,
    \axi_awaddr_ff_reg[2]_0 ,
    m_axi_audio_out_awready,
    Q,
    m_axi_audio_out_aresetn,
    m_axi_audio_out_aclk,
    D);
  output [1:0]curr_state_ff;
  output [0:0]m_axi_audio_out_bready;
  output \FSM_sequential_curr_state_ff_reg[1]_0 ;
  output [0:0]m_axi_audio_out_awvalid;
  output [0:0]m_axi_audio_out_wvalid;
  output [1:0]m_axi_audio_out_awaddr;
  output [31:0]m_axi_audio_out_wdata;
  input [0:0]m_axi_audio_out_wready;
  input [0:0]m_axi_audio_out_bvalid;
  input \axi_awaddr_ff_reg[2]_0 ;
  input [0:0]m_axi_audio_out_awready;
  input [1:0]Q;
  input [0:0]m_axi_audio_out_aresetn;
  input [0:0]m_axi_audio_out_aclk;
  input [31:0]D;

  wire [31:0]D;
  wire \FSM_sequential_curr_state_ff[0]_i_1_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_1_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_2__0_n_0 ;
  wire \FSM_sequential_curr_state_ff_reg[1]_0 ;
  wire [1:0]Q;
  wire \axi_awaddr_ff[30]_i_1_n_0 ;
  wire \axi_awaddr_ff_reg[2]_0 ;
  wire [1:0]curr_state_ff;
  wire [0:0]m_axi_audio_out_aclk;
  wire [0:0]m_axi_audio_out_aresetn;
  wire [1:0]m_axi_audio_out_awaddr;
  wire [0:0]m_axi_audio_out_awready;
  wire [0:0]m_axi_audio_out_awvalid;
  wire [0:0]m_axi_audio_out_bready;
  wire [0:0]m_axi_audio_out_bvalid;
  wire [31:0]m_axi_audio_out_wdata;
  wire [0:0]m_axi_audio_out_wready;
  wire [0:0]m_axi_audio_out_wvalid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66260000)) 
    \FSM_sequential_curr_state_ff[0]_i_1 
       (.I0(curr_state_ff[0]),
        .I1(\FSM_sequential_curr_state_ff[1]_i_2__0_n_0 ),
        .I2(curr_state_ff[1]),
        .I3(m_axi_audio_out_wready),
        .I4(m_axi_audio_out_aresetn),
        .O(\FSM_sequential_curr_state_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6A620000)) 
    \FSM_sequential_curr_state_ff[1]_i_1 
       (.I0(curr_state_ff[1]),
        .I1(\FSM_sequential_curr_state_ff[1]_i_2__0_n_0 ),
        .I2(curr_state_ff[0]),
        .I3(m_axi_audio_out_wready),
        .I4(m_axi_audio_out_aresetn),
        .O(\FSM_sequential_curr_state_ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCF0FAF0FAF0)) 
    \FSM_sequential_curr_state_ff[1]_i_2__0 
       (.I0(m_axi_audio_out_wready),
        .I1(m_axi_audio_out_bvalid),
        .I2(\axi_awaddr_ff_reg[2]_0 ),
        .I3(curr_state_ff[1]),
        .I4(m_axi_audio_out_awready),
        .I5(curr_state_ff[0]),
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
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(Q[0]),
        .Q(m_axi_audio_out_awaddr[0]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_awaddr_ff_reg[30] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(1'b1),
        .Q(m_axi_audio_out_awaddr[1]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[0] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[0]),
        .Q(m_axi_audio_out_wdata[0]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[10] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[10]),
        .Q(m_axi_audio_out_wdata[10]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[11] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[11]),
        .Q(m_axi_audio_out_wdata[11]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[12] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[12]),
        .Q(m_axi_audio_out_wdata[12]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[13] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[13]),
        .Q(m_axi_audio_out_wdata[13]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[14] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[14]),
        .Q(m_axi_audio_out_wdata[14]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[15] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[15]),
        .Q(m_axi_audio_out_wdata[15]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[16] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[16]),
        .Q(m_axi_audio_out_wdata[16]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[17] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[17]),
        .Q(m_axi_audio_out_wdata[17]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[18] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[18]),
        .Q(m_axi_audio_out_wdata[18]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[19] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[19]),
        .Q(m_axi_audio_out_wdata[19]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[1] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[1]),
        .Q(m_axi_audio_out_wdata[1]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[20] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[20]),
        .Q(m_axi_audio_out_wdata[20]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[21] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[21]),
        .Q(m_axi_audio_out_wdata[21]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[22] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[22]),
        .Q(m_axi_audio_out_wdata[22]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[23] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[23]),
        .Q(m_axi_audio_out_wdata[23]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[24] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[24]),
        .Q(m_axi_audio_out_wdata[24]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[25] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[25]),
        .Q(m_axi_audio_out_wdata[25]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[26] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[26]),
        .Q(m_axi_audio_out_wdata[26]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[27] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[27]),
        .Q(m_axi_audio_out_wdata[27]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[28] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[28]),
        .Q(m_axi_audio_out_wdata[28]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[29] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[29]),
        .Q(m_axi_audio_out_wdata[29]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[2] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[2]),
        .Q(m_axi_audio_out_wdata[2]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[30] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[30]),
        .Q(m_axi_audio_out_wdata[30]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[31] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[31]),
        .Q(m_axi_audio_out_wdata[31]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[3] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[3]),
        .Q(m_axi_audio_out_wdata[3]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[4] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[4]),
        .Q(m_axi_audio_out_wdata[4]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[5] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[5]),
        .Q(m_axi_audio_out_wdata[5]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[6] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[6]),
        .Q(m_axi_audio_out_wdata[6]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[7] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[7]),
        .Q(m_axi_audio_out_wdata[7]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[8] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[8]),
        .Q(m_axi_audio_out_wdata[8]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  FDRE \axi_wdata_ff_reg[9] 
       (.C(m_axi_audio_out_aclk),
        .CE(\axi_awaddr_ff_reg[2]_0 ),
        .D(D[9]),
        .Q(m_axi_audio_out_wdata[9]),
        .R(\axi_awaddr_ff[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \curr_state_ff[3]_i_4 
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_curr_state_ff_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_audio_out_awvalid[0]_INST_0 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(m_axi_audio_out_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_audio_out_bready[0]_INST_0 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(m_axi_audio_out_bready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_audio_out_wvalid[0]_INST_0 
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .O(m_axi_audio_out_wvalid));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_M_AXI_DMA" *) 
module audio_hw_platform_audio_fetcher_0_0_audio_fetcher_M_AXI_DMA
   (curr_state_ff,
    \FSM_sequential_curr_state_ff_reg[1]_0 ,
    m_axi_dma_rready,
    \FSM_sequential_curr_state_ff_reg[1]_1 ,
    m_axi_dma_arvalid,
    A,
    \axi_rdata_ff_reg[31]_0 ,
    m_axi_dma_araddr,
    m_axi_dma_arready,
    m_axi_dma_rvalid,
    \FSM_sequential_curr_state_ff_reg[0]_0 ,
    E,
    Q,
    scaled_sample_ff_reg,
    m_axi_dma_aresetn,
    m_axi_dma_aclk,
    m_axi_dma_rdata,
    req_rv_addr);
  output [1:0]curr_state_ff;
  output \FSM_sequential_curr_state_ff_reg[1]_0 ;
  output [0:0]m_axi_dma_rready;
  output \FSM_sequential_curr_state_ff_reg[1]_1 ;
  output [0:0]m_axi_dma_arvalid;
  output [15:0]A;
  output [31:0]\axi_rdata_ff_reg[31]_0 ;
  output [31:0]m_axi_dma_araddr;
  input [0:0]m_axi_dma_arready;
  input [0:0]m_axi_dma_rvalid;
  input \FSM_sequential_curr_state_ff_reg[0]_0 ;
  input [0:0]E;
  input [1:0]Q;
  input [0:0]scaled_sample_ff_reg;
  input [0:0]m_axi_dma_aresetn;
  input [0:0]m_axi_dma_aclk;
  input [31:0]m_axi_dma_rdata;
  input [31:0]req_rv_addr;

  wire [15:0]A;
  wire [0:0]E;
  wire \FSM_sequential_curr_state_ff[0]_i_1__0_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_1__0_n_0 ;
  wire \FSM_sequential_curr_state_ff[1]_i_2_n_0 ;
  wire \FSM_sequential_curr_state_ff_reg[0]_0 ;
  wire \FSM_sequential_curr_state_ff_reg[1]_0 ;
  wire \FSM_sequential_curr_state_ff_reg[1]_1 ;
  wire [1:0]Q;
  wire \axi_araddr_ff[31]_i_1_n_0 ;
  wire axi_rdata_ff0;
  wire [31:0]\axi_rdata_ff_reg[31]_0 ;
  wire [1:0]curr_state_ff;
  wire [0:0]m_axi_dma_aclk;
  wire [31:0]m_axi_dma_araddr;
  wire [0:0]m_axi_dma_aresetn;
  wire [0:0]m_axi_dma_arready;
  wire [0:0]m_axi_dma_arvalid;
  wire [31:0]m_axi_dma_rdata;
  wire [0:0]m_axi_dma_rready;
  wire [0:0]m_axi_dma_rvalid;
  wire [31:0]req_rv_addr;
  wire [0:0]scaled_sample_ff_reg;

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
    .INIT(64'hFFFFFFFFFFFF5808)) 
    \FSM_sequential_curr_state_ff[1]_i_2 
       (.I0(curr_state_ff[0]),
        .I1(m_axi_dma_arready),
        .I2(curr_state_ff[1]),
        .I3(m_axi_dma_rvalid),
        .I4(\FSM_sequential_curr_state_ff_reg[0]_0 ),
        .I5(E),
        .O(\FSM_sequential_curr_state_ff[1]_i_2_n_0 ));
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
  FDRE \axi_araddr_ff_reg[0] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[0]),
        .Q(m_axi_dma_araddr[0]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[10] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[10]),
        .Q(m_axi_dma_araddr[10]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[11] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[11]),
        .Q(m_axi_dma_araddr[11]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[12] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[12]),
        .Q(m_axi_dma_araddr[12]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[13] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[13]),
        .Q(m_axi_dma_araddr[13]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[14] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[14]),
        .Q(m_axi_dma_araddr[14]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[15] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[15]),
        .Q(m_axi_dma_araddr[15]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[16] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[16]),
        .Q(m_axi_dma_araddr[16]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[17] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[17]),
        .Q(m_axi_dma_araddr[17]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[18] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[18]),
        .Q(m_axi_dma_araddr[18]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[19] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[19]),
        .Q(m_axi_dma_araddr[19]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[1] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[1]),
        .Q(m_axi_dma_araddr[1]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[20] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[20]),
        .Q(m_axi_dma_araddr[20]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[21] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[21]),
        .Q(m_axi_dma_araddr[21]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[22] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[22]),
        .Q(m_axi_dma_araddr[22]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[23] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[23]),
        .Q(m_axi_dma_araddr[23]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[24] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[24]),
        .Q(m_axi_dma_araddr[24]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[25] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[25]),
        .Q(m_axi_dma_araddr[25]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[26] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[26]),
        .Q(m_axi_dma_araddr[26]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[27] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[27]),
        .Q(m_axi_dma_araddr[27]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[28] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[28]),
        .Q(m_axi_dma_araddr[28]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[29] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[29]),
        .Q(m_axi_dma_araddr[29]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[2] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[2]),
        .Q(m_axi_dma_araddr[2]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[30] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[30]),
        .Q(m_axi_dma_araddr[30]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[31] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[31]),
        .Q(m_axi_dma_araddr[31]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[3] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[3]),
        .Q(m_axi_dma_araddr[3]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[4] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[4]),
        .Q(m_axi_dma_araddr[4]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[5] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[5]),
        .Q(m_axi_dma_araddr[5]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[6] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[6]),
        .Q(m_axi_dma_araddr[6]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[7] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[7]),
        .Q(m_axi_dma_araddr[7]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[8] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[8]),
        .Q(m_axi_dma_araddr[8]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_araddr_ff_reg[9] 
       (.C(m_axi_dma_aclk),
        .CE(E),
        .D(req_rv_addr[9]),
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
        .Q(\axi_rdata_ff_reg[31]_0 [0]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[10] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[10]),
        .Q(\axi_rdata_ff_reg[31]_0 [10]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[11] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[11]),
        .Q(\axi_rdata_ff_reg[31]_0 [11]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[12] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[12]),
        .Q(\axi_rdata_ff_reg[31]_0 [12]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[13] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[13]),
        .Q(\axi_rdata_ff_reg[31]_0 [13]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[14] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[14]),
        .Q(\axi_rdata_ff_reg[31]_0 [14]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[15] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[15]),
        .Q(\axi_rdata_ff_reg[31]_0 [15]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[16] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[16]),
        .Q(\axi_rdata_ff_reg[31]_0 [16]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[17] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[17]),
        .Q(\axi_rdata_ff_reg[31]_0 [17]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[18] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[18]),
        .Q(\axi_rdata_ff_reg[31]_0 [18]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[19] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[19]),
        .Q(\axi_rdata_ff_reg[31]_0 [19]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[1] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[1]),
        .Q(\axi_rdata_ff_reg[31]_0 [1]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[20] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[20]),
        .Q(\axi_rdata_ff_reg[31]_0 [20]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[21] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[21]),
        .Q(\axi_rdata_ff_reg[31]_0 [21]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[22] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[22]),
        .Q(\axi_rdata_ff_reg[31]_0 [22]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[23] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[23]),
        .Q(\axi_rdata_ff_reg[31]_0 [23]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[24] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[24]),
        .Q(\axi_rdata_ff_reg[31]_0 [24]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[25] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[25]),
        .Q(\axi_rdata_ff_reg[31]_0 [25]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[26] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[26]),
        .Q(\axi_rdata_ff_reg[31]_0 [26]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[27] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[27]),
        .Q(\axi_rdata_ff_reg[31]_0 [27]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[28] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[28]),
        .Q(\axi_rdata_ff_reg[31]_0 [28]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[29] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[29]),
        .Q(\axi_rdata_ff_reg[31]_0 [29]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[2] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[2]),
        .Q(\axi_rdata_ff_reg[31]_0 [2]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[30] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[30]),
        .Q(\axi_rdata_ff_reg[31]_0 [30]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[31] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[31]),
        .Q(\axi_rdata_ff_reg[31]_0 [31]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[3] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[3]),
        .Q(\axi_rdata_ff_reg[31]_0 [3]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[4] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[4]),
        .Q(\axi_rdata_ff_reg[31]_0 [4]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[5] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[5]),
        .Q(\axi_rdata_ff_reg[31]_0 [5]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[6] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[6]),
        .Q(\axi_rdata_ff_reg[31]_0 [6]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[7] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[7]),
        .Q(\axi_rdata_ff_reg[31]_0 [7]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  FDRE \axi_rdata_ff_reg[8] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[8]),
        .Q(\axi_rdata_ff_reg[31]_0 [8]),
        .R(\axi_araddr_ff[31]_i_1_n_0 ));
  FDSE \axi_rdata_ff_reg[9] 
       (.C(m_axi_dma_aclk),
        .CE(axi_rdata_ff0),
        .D(m_axi_dma_rdata[9]),
        .Q(\axi_rdata_ff_reg[31]_0 [9]),
        .S(\axi_araddr_ff[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \curr_state_ff[3]_i_6 
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FSM_sequential_curr_state_ff_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \debug_data[31]_i_2 
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FSM_sequential_curr_state_ff_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_dma_arvalid[0]_INST_0 
       (.I0(curr_state_ff[0]),
        .I1(curr_state_ff[1]),
        .O(m_axi_dma_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_dma_rready[0]_INST_0 
       (.I0(curr_state_ff[1]),
        .I1(curr_state_ff[0]),
        .O(m_axi_dma_rready));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_10
       (.I0(\axi_rdata_ff_reg[31]_0 [25]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [9]),
        .O(A[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_11
       (.I0(\axi_rdata_ff_reg[31]_0 [24]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [8]),
        .O(A[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_12
       (.I0(\axi_rdata_ff_reg[31]_0 [23]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [7]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_13
       (.I0(\axi_rdata_ff_reg[31]_0 [22]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_14
       (.I0(\axi_rdata_ff_reg[31]_0 [21]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [5]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_15
       (.I0(\axi_rdata_ff_reg[31]_0 [20]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_16
       (.I0(\axi_rdata_ff_reg[31]_0 [19]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_17
       (.I0(\axi_rdata_ff_reg[31]_0 [18]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [2]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_18
       (.I0(\axi_rdata_ff_reg[31]_0 [17]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [1]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_19
       (.I0(\axi_rdata_ff_reg[31]_0 [16]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_4
       (.I0(\axi_rdata_ff_reg[31]_0 [31]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [15]),
        .O(A[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_5
       (.I0(\axi_rdata_ff_reg[31]_0 [30]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [14]),
        .O(A[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_6
       (.I0(\axi_rdata_ff_reg[31]_0 [29]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [13]),
        .O(A[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_7
       (.I0(\axi_rdata_ff_reg[31]_0 [28]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [12]),
        .O(A[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_8
       (.I0(\axi_rdata_ff_reg[31]_0 [27]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [11]),
        .O(A[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    scaled_sample_ff_reg_i_9
       (.I0(\axi_rdata_ff_reg[31]_0 [26]),
        .I1(scaled_sample_ff_reg),
        .I2(\axi_rdata_ff_reg[31]_0 [10]),
        .O(A[10]));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_S_AXI" *) 
module audio_hw_platform_audio_fetcher_0_0_audio_fetcher_S_AXI
   (s_axi_awready,
    s_axi_aresetn_0_sp_1,
    s_axi_wready,
    s_axi_arready,
    s_rv_valid,
    s_axi_bvalid,
    s_axi_rvalid,
    Q,
    \slv_reg1_reg[31]_0 ,
    s_axi_rdata,
    \sound_addr_ff_reg[31]_0 ,
    s_axi_aclk,
    s_axi_aresetn,
    sound_addr_ff0,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    debug_data_o,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr);
  output s_axi_awready;
  output s_axi_aresetn_0_sp_1;
  output s_axi_wready;
  output s_axi_arready;
  output s_rv_valid;
  output [0:0]s_axi_bvalid;
  output [0:0]s_axi_rvalid;
  output [0:0]Q;
  output [15:0]\slv_reg1_reg[31]_0 ;
  output [31:0]s_axi_rdata;
  output [31:0]\sound_addr_ff_reg[31]_0 ;
  input [0:0]s_axi_aclk;
  input [0:0]s_axi_aresetn;
  input sound_addr_ff0;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [31:0]debug_data_o;
  input [0:0]s_axi_bready;
  input [0:0]s_axi_arvalid;
  input [0:0]s_axi_rready;
  input [1:0]s_axi_awaddr;
  input [1:0]s_axi_araddr;

  wire [0:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:0]debug_data_o;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire [0:0]s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_aresetn;
  wire s_axi_aresetn_0_sn_1;
  wire s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire s_rv_valid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [30:15]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [15:0]\slv_reg1_reg[31]_0 ;
  wire \slv_reg2[0]_i_1_n_0 ;
  wire \slv_reg2[10]_i_1_n_0 ;
  wire \slv_reg2[11]_i_1_n_0 ;
  wire \slv_reg2[12]_i_1_n_0 ;
  wire \slv_reg2[13]_i_1_n_0 ;
  wire \slv_reg2[14]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[16]_i_1_n_0 ;
  wire \slv_reg2[17]_i_1_n_0 ;
  wire \slv_reg2[18]_i_1_n_0 ;
  wire \slv_reg2[19]_i_1_n_0 ;
  wire \slv_reg2[1]_i_1_n_0 ;
  wire \slv_reg2[20]_i_1_n_0 ;
  wire \slv_reg2[21]_i_1_n_0 ;
  wire \slv_reg2[22]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[24]_i_1_n_0 ;
  wire \slv_reg2[25]_i_1_n_0 ;
  wire \slv_reg2[26]_i_1_n_0 ;
  wire \slv_reg2[27]_i_1_n_0 ;
  wire \slv_reg2[28]_i_1_n_0 ;
  wire \slv_reg2[29]_i_1_n_0 ;
  wire \slv_reg2[2]_i_1_n_0 ;
  wire \slv_reg2[30]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[3]_i_1_n_0 ;
  wire \slv_reg2[4]_i_1_n_0 ;
  wire \slv_reg2[5]_i_1_n_0 ;
  wire \slv_reg2[6]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2[8]_i_1_n_0 ;
  wire \slv_reg2[9]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
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
  wire \slv_reg3[3]_i_1_n_0 ;
  wire \slv_reg3[4]_i_1_n_0 ;
  wire \slv_reg3[5]_i_1_n_0 ;
  wire \slv_reg3[6]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3[8]_i_1_n_0 ;
  wire \slv_reg3[9]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__0;
  wire sound_addr_ff0;
  wire [31:0]\sound_addr_ff_reg[31]_0 ;
  wire valid_ff_i_1_n_0;

  assign s_axi_aresetn_0_sp_1 = s_axi_aresetn_0_sn_1;
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(s_axi_awready),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(s_axi_aresetn_0_sn_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(s_axi_aresetn_0_sn_1));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(s_axi_aresetn_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s_axi_arready),
        .R(s_axi_aresetn_0_sn_1));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awready),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awready),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(s_axi_aresetn_0_sn_1));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(s_axi_awready),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s_axi_awready),
        .R(s_axi_aresetn_0_sn_1));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_wready),
        .I4(s_axi_awready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(s_axi_aresetn_0_sn_1));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .I2(s_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg1_reg[31]_0 [15]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(s_axi_aresetn_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(s_axi_aresetn_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s_axi_wready),
        .R(s_axi_aresetn_0_sn_1));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg0[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(s_axi_wready),
        .I2(s_axi_awready),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(s_axi_aresetn_0_sn_1));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg1[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(s_axi_wready),
        .I2(s_axi_awready),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg1_reg[31]_0 [0]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg1_reg[31]_0 [10]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg1_reg[31]_0 [11]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg1_reg[31]_0 [12]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg1_reg[31]_0 [13]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg1_reg[31]_0 [14]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg1_reg[31]_0 [1]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg1_reg[31]_0 [2]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\slv_reg1_reg[31]_0 [15]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg1_reg[31]_0 [3]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg1_reg[31]_0 [4]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg1_reg[31]_0 [5]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg1_reg[31]_0 [6]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg1_reg[31]_0 [7]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg1_reg[31]_0 [8]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg1_reg[31]_0 [9]),
        .R(s_axi_aresetn_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[0]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[0]),
        .O(\slv_reg2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[10]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[10]),
        .O(\slv_reg2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[11]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[11]),
        .O(\slv_reg2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[12]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[12]),
        .O(\slv_reg2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[13]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[13]),
        .O(\slv_reg2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[14]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[14]),
        .O(\slv_reg2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[15]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[15]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[16]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[16]),
        .O(\slv_reg2[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[17]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[17]),
        .O(\slv_reg2[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[18]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[18]),
        .O(\slv_reg2[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[19]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[19]),
        .O(\slv_reg2[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[1]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[1]),
        .O(\slv_reg2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[20]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[20]),
        .O(\slv_reg2[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[21]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[21]),
        .O(\slv_reg2[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[22]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[22]),
        .O(\slv_reg2[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[23]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[23]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[24]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[24]),
        .O(\slv_reg2[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[25]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[25]),
        .O(\slv_reg2[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[26]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[26]),
        .O(\slv_reg2[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[27]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[27]),
        .O(\slv_reg2[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[28]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[28]),
        .O(\slv_reg2[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[29]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[29]),
        .O(\slv_reg2[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[2]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[2]),
        .O(\slv_reg2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[30]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[30]),
        .O(\slv_reg2[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg2[31]_i_1 
       (.I0(s_axi_aresetn),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awready),
        .I4(s_axi_wready),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[31]_i_2 
       (.I0(s_axi_wstrb[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[31]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[3]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[3]),
        .O(\slv_reg2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[4]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[4]),
        .O(\slv_reg2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[5]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[5]),
        .O(\slv_reg2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[6]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[6]),
        .O(\slv_reg2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[7]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[7]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[8]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[8]),
        .O(\slv_reg2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[9]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wdata[9]),
        .O(\slv_reg2[9]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[0]_i_1_n_0 ),
        .Q(Q),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[10]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[11]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[12]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[13]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[14]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[15]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[16]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[17]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[18]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[19]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[1]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[20]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[21]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[22]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[23]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[24]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[25]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[26]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[27]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[28]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[29]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[2]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[30]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[31]_i_2_n_0 ),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[3]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[4]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[5]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[6]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[7]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[8]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[9]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(debug_data_o[0]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(debug_data_o[10]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(debug_data_o[11]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(debug_data_o[12]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(debug_data_o[13]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(debug_data_o[14]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[15]_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(debug_data_o[15]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[16]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(debug_data_o[16]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[17]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(debug_data_o[17]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[18]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(debug_data_o[18]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[19]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(debug_data_o[19]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(debug_data_o[1]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[20]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(debug_data_o[20]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[21]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(debug_data_o[21]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[22]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(debug_data_o[22]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[23]_i_1 
       (.I0(s_axi_wdata[23]),
        .I1(debug_data_o[23]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[24]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(debug_data_o[24]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[25]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(debug_data_o[25]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[26]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(debug_data_o[26]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[27]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(debug_data_o[27]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[28]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(debug_data_o[28]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[29]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(debug_data_o[29]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(debug_data_o[2]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[30]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(debug_data_o[30]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[31]_i_1 
       (.I0(s_axi_wdata[31]),
        .I1(debug_data_o[31]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s_axi_wready),
        .I1(s_axi_awready),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(debug_data_o[3]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(debug_data_o[4]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(debug_data_o[5]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(debug_data_o[6]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(debug_data_o[7]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(debug_data_o[8]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg3[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(debug_data_o[9]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren__0),
        .O(\slv_reg3[9]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(slv_reg3[0]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[10]_i_1_n_0 ),
        .Q(slv_reg3[10]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[11]_i_1_n_0 ),
        .Q(slv_reg3[11]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[12]_i_1_n_0 ),
        .Q(slv_reg3[12]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[13]_i_1_n_0 ),
        .Q(slv_reg3[13]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[14]_i_1_n_0 ),
        .Q(slv_reg3[14]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[15]_i_1_n_0 ),
        .Q(slv_reg3[15]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[16]_i_1_n_0 ),
        .Q(slv_reg3[16]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[17]_i_1_n_0 ),
        .Q(slv_reg3[17]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[18]_i_1_n_0 ),
        .Q(slv_reg3[18]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[19]_i_1_n_0 ),
        .Q(slv_reg3[19]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[1]_i_1_n_0 ),
        .Q(slv_reg3[1]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[20]_i_1_n_0 ),
        .Q(slv_reg3[20]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[21]_i_1_n_0 ),
        .Q(slv_reg3[21]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[22]_i_1_n_0 ),
        .Q(slv_reg3[22]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[23]_i_1_n_0 ),
        .Q(slv_reg3[23]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[24]_i_1_n_0 ),
        .Q(slv_reg3[24]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[25]_i_1_n_0 ),
        .Q(slv_reg3[25]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[26]_i_1_n_0 ),
        .Q(slv_reg3[26]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[27]_i_1_n_0 ),
        .Q(slv_reg3[27]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[28]_i_1_n_0 ),
        .Q(slv_reg3[28]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[29]_i_1_n_0 ),
        .Q(slv_reg3[29]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[2]_i_1_n_0 ),
        .Q(slv_reg3[2]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[30]_i_1_n_0 ),
        .Q(slv_reg3[30]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[31]_i_1_n_0 ),
        .Q(slv_reg3[31]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[3]_i_1_n_0 ),
        .Q(slv_reg3[3]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[4]_i_1_n_0 ),
        .Q(slv_reg3[4]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[5]_i_1_n_0 ),
        .Q(slv_reg3[5]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[6]_i_1_n_0 ),
        .Q(slv_reg3[6]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[7]_i_1_n_0 ),
        .Q(slv_reg3[7]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[8]_i_1_n_0 ),
        .Q(slv_reg3[8]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[9]_i_1_n_0 ),
        .Q(slv_reg3[9]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[0]),
        .Q(\sound_addr_ff_reg[31]_0 [0]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[10]),
        .Q(\sound_addr_ff_reg[31]_0 [10]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[11]),
        .Q(\sound_addr_ff_reg[31]_0 [11]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[12]),
        .Q(\sound_addr_ff_reg[31]_0 [12]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[13]),
        .Q(\sound_addr_ff_reg[31]_0 [13]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[14]),
        .Q(\sound_addr_ff_reg[31]_0 [14]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[15]),
        .Q(\sound_addr_ff_reg[31]_0 [15]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[16]),
        .Q(\sound_addr_ff_reg[31]_0 [16]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[17]),
        .Q(\sound_addr_ff_reg[31]_0 [17]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[18]),
        .Q(\sound_addr_ff_reg[31]_0 [18]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[19]),
        .Q(\sound_addr_ff_reg[31]_0 [19]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[1]),
        .Q(\sound_addr_ff_reg[31]_0 [1]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[20]),
        .Q(\sound_addr_ff_reg[31]_0 [20]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[21]),
        .Q(\sound_addr_ff_reg[31]_0 [21]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[22]),
        .Q(\sound_addr_ff_reg[31]_0 [22]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[23]),
        .Q(\sound_addr_ff_reg[31]_0 [23]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[24]),
        .Q(\sound_addr_ff_reg[31]_0 [24]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[25]),
        .Q(\sound_addr_ff_reg[31]_0 [25]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[26]),
        .Q(\sound_addr_ff_reg[31]_0 [26]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[27]),
        .Q(\sound_addr_ff_reg[31]_0 [27]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[28]),
        .Q(\sound_addr_ff_reg[31]_0 [28]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[29]),
        .Q(\sound_addr_ff_reg[31]_0 [29]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[2]),
        .Q(\sound_addr_ff_reg[31]_0 [2]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[30]),
        .Q(\sound_addr_ff_reg[31]_0 [30]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[31]),
        .Q(\sound_addr_ff_reg[31]_0 [31]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[3]),
        .Q(\sound_addr_ff_reg[31]_0 [3]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[4]),
        .Q(\sound_addr_ff_reg[31]_0 [4]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[5]),
        .Q(\sound_addr_ff_reg[31]_0 [5]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[6]),
        .Q(\sound_addr_ff_reg[31]_0 [6]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[7]),
        .Q(\sound_addr_ff_reg[31]_0 [7]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[8]),
        .Q(\sound_addr_ff_reg[31]_0 [8]),
        .R(s_axi_aresetn_0_sn_1));
  FDRE \sound_addr_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(slv_reg0[9]),
        .Q(\sound_addr_ff_reg[31]_0 [9]),
        .R(s_axi_aresetn_0_sn_1));
  LUT4 #(
    .INIT(16'h00A8)) 
    valid_ff_i_1
       (.I0(s_axi_aresetn),
        .I1(Q),
        .I2(s_rv_valid),
        .I3(sound_addr_ff0),
        .O(valid_ff_i_1_n_0));
  FDRE valid_ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(valid_ff_i_1_n_0),
        .Q(s_rv_valid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "audio_fetcher_controller" *) 
module audio_hw_platform_audio_fetcher_0_0_audio_fetcher_controller
   (scaled_sample_ff_reg_0,
    sound_addr_ff0,
    \sample_index_ff_reg[0]_0 ,
    \curr_state_ff_reg[3]_0 ,
    \curr_state_ff_reg[3]_1 ,
    \curr_state_ff_reg[0]_0 ,
    E,
    debug_data_o,
    req_rv_addr,
    s_axi_aclk,
    minusOp_0,
    D,
    Q,
    scaled_sample_ff_reg_1,
    A,
    s_axi_aresetn,
    s_rv_valid,
    \curr_state_ff_reg[1]_0 ,
    \curr_state_ff_reg[1]_1 ,
    \curr_state_ff_reg[0]_1 ,
    curr_state_ff,
    curr_state_ff_0,
    \sound_addr_ff_reg[31]_0 );
  output [31:0]scaled_sample_ff_reg_0;
  output sound_addr_ff0;
  output [0:0]\sample_index_ff_reg[0]_0 ;
  output [1:0]\curr_state_ff_reg[3]_0 ;
  output \curr_state_ff_reg[3]_1 ;
  output \curr_state_ff_reg[0]_0 ;
  output [0:0]E;
  output [31:0]debug_data_o;
  output [31:0]req_rv_addr;
  input [0:0]s_axi_aclk;
  input minusOp_0;
  input [31:0]D;
  input [0:0]Q;
  input [15:0]scaled_sample_ff_reg_1;
  input [15:0]A;
  input [0:0]s_axi_aresetn;
  input s_rv_valid;
  input \curr_state_ff_reg[1]_0 ;
  input \curr_state_ff_reg[1]_1 ;
  input \curr_state_ff_reg[0]_1 ;
  input [1:0]curr_state_ff;
  input [1:0]curr_state_ff_0;
  input [31:0]\sound_addr_ff_reg[31]_0 ;

  wire [15:0]A;
  wire CEM;
  wire CEP;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \axi_araddr_ff[11]_i_2_n_0 ;
  wire \axi_araddr_ff[11]_i_3_n_0 ;
  wire \axi_araddr_ff[11]_i_4_n_0 ;
  wire \axi_araddr_ff[11]_i_5_n_0 ;
  wire \axi_araddr_ff[15]_i_2_n_0 ;
  wire \axi_araddr_ff[15]_i_3_n_0 ;
  wire \axi_araddr_ff[15]_i_4_n_0 ;
  wire \axi_araddr_ff[15]_i_5_n_0 ;
  wire \axi_araddr_ff[19]_i_2_n_0 ;
  wire \axi_araddr_ff[19]_i_3_n_0 ;
  wire \axi_araddr_ff[19]_i_4_n_0 ;
  wire \axi_araddr_ff[19]_i_5_n_0 ;
  wire \axi_araddr_ff[23]_i_2_n_0 ;
  wire \axi_araddr_ff[23]_i_3_n_0 ;
  wire \axi_araddr_ff[23]_i_4_n_0 ;
  wire \axi_araddr_ff[23]_i_5_n_0 ;
  wire \axi_araddr_ff[27]_i_2_n_0 ;
  wire \axi_araddr_ff[27]_i_3_n_0 ;
  wire \axi_araddr_ff[27]_i_4_n_0 ;
  wire \axi_araddr_ff[27]_i_5_n_0 ;
  wire \axi_araddr_ff[31]_i_4_n_0 ;
  wire \axi_araddr_ff[31]_i_5_n_0 ;
  wire \axi_araddr_ff[31]_i_6_n_0 ;
  wire \axi_araddr_ff[31]_i_7_n_0 ;
  wire \axi_araddr_ff[3]_i_2_n_0 ;
  wire \axi_araddr_ff[3]_i_3_n_0 ;
  wire \axi_araddr_ff[3]_i_4_n_0 ;
  wire \axi_araddr_ff[3]_i_5_n_0 ;
  wire \axi_araddr_ff[7]_i_2_n_0 ;
  wire \axi_araddr_ff[7]_i_3_n_0 ;
  wire \axi_araddr_ff[7]_i_4_n_0 ;
  wire \axi_araddr_ff[7]_i_5_n_0 ;
  wire \axi_araddr_ff_reg[11]_i_1_n_0 ;
  wire \axi_araddr_ff_reg[11]_i_1_n_1 ;
  wire \axi_araddr_ff_reg[11]_i_1_n_2 ;
  wire \axi_araddr_ff_reg[11]_i_1_n_3 ;
  wire \axi_araddr_ff_reg[15]_i_1_n_0 ;
  wire \axi_araddr_ff_reg[15]_i_1_n_1 ;
  wire \axi_araddr_ff_reg[15]_i_1_n_2 ;
  wire \axi_araddr_ff_reg[15]_i_1_n_3 ;
  wire \axi_araddr_ff_reg[19]_i_1_n_0 ;
  wire \axi_araddr_ff_reg[19]_i_1_n_1 ;
  wire \axi_araddr_ff_reg[19]_i_1_n_2 ;
  wire \axi_araddr_ff_reg[19]_i_1_n_3 ;
  wire \axi_araddr_ff_reg[23]_i_1_n_0 ;
  wire \axi_araddr_ff_reg[23]_i_1_n_1 ;
  wire \axi_araddr_ff_reg[23]_i_1_n_2 ;
  wire \axi_araddr_ff_reg[23]_i_1_n_3 ;
  wire \axi_araddr_ff_reg[27]_i_1_n_0 ;
  wire \axi_araddr_ff_reg[27]_i_1_n_1 ;
  wire \axi_araddr_ff_reg[27]_i_1_n_2 ;
  wire \axi_araddr_ff_reg[27]_i_1_n_3 ;
  wire \axi_araddr_ff_reg[31]_i_3_n_1 ;
  wire \axi_araddr_ff_reg[31]_i_3_n_2 ;
  wire \axi_araddr_ff_reg[31]_i_3_n_3 ;
  wire \axi_araddr_ff_reg[3]_i_1_n_0 ;
  wire \axi_araddr_ff_reg[3]_i_1_n_1 ;
  wire \axi_araddr_ff_reg[3]_i_1_n_2 ;
  wire \axi_araddr_ff_reg[3]_i_1_n_3 ;
  wire \axi_araddr_ff_reg[7]_i_1_n_0 ;
  wire \axi_araddr_ff_reg[7]_i_1_n_1 ;
  wire \axi_araddr_ff_reg[7]_i_1_n_2 ;
  wire \axi_araddr_ff_reg[7]_i_1_n_3 ;
  wire [31:0]byte_index_ff;
  wire [31:0]byte_index_ff0;
  wire byte_index_ff0_carry__0_n_0;
  wire byte_index_ff0_carry__0_n_1;
  wire byte_index_ff0_carry__0_n_2;
  wire byte_index_ff0_carry__0_n_3;
  wire byte_index_ff0_carry__1_n_0;
  wire byte_index_ff0_carry__1_n_1;
  wire byte_index_ff0_carry__1_n_2;
  wire byte_index_ff0_carry__1_n_3;
  wire byte_index_ff0_carry__2_n_0;
  wire byte_index_ff0_carry__2_n_1;
  wire byte_index_ff0_carry__2_n_2;
  wire byte_index_ff0_carry__2_n_3;
  wire byte_index_ff0_carry__3_n_0;
  wire byte_index_ff0_carry__3_n_1;
  wire byte_index_ff0_carry__3_n_2;
  wire byte_index_ff0_carry__3_n_3;
  wire byte_index_ff0_carry__4_n_0;
  wire byte_index_ff0_carry__4_n_1;
  wire byte_index_ff0_carry__4_n_2;
  wire byte_index_ff0_carry__4_n_3;
  wire byte_index_ff0_carry__5_n_0;
  wire byte_index_ff0_carry__5_n_1;
  wire byte_index_ff0_carry__5_n_2;
  wire byte_index_ff0_carry__5_n_3;
  wire byte_index_ff0_carry__6_n_1;
  wire byte_index_ff0_carry__6_n_2;
  wire byte_index_ff0_carry__6_n_3;
  wire byte_index_ff0_carry_i_1_n_0;
  wire byte_index_ff0_carry_n_0;
  wire byte_index_ff0_carry_n_1;
  wire byte_index_ff0_carry_n_2;
  wire byte_index_ff0_carry_n_3;
  wire \byte_index_ff[0]_i_1_n_0 ;
  wire \byte_index_ff[10]_i_1_n_0 ;
  wire \byte_index_ff[11]_i_1_n_0 ;
  wire \byte_index_ff[12]_i_1_n_0 ;
  wire \byte_index_ff[13]_i_1_n_0 ;
  wire \byte_index_ff[14]_i_1_n_0 ;
  wire \byte_index_ff[15]_i_1_n_0 ;
  wire \byte_index_ff[16]_i_1_n_0 ;
  wire \byte_index_ff[17]_i_1_n_0 ;
  wire \byte_index_ff[18]_i_1_n_0 ;
  wire \byte_index_ff[19]_i_1_n_0 ;
  wire \byte_index_ff[1]_i_1_n_0 ;
  wire \byte_index_ff[20]_i_1_n_0 ;
  wire \byte_index_ff[21]_i_1_n_0 ;
  wire \byte_index_ff[22]_i_1_n_0 ;
  wire \byte_index_ff[23]_i_1_n_0 ;
  wire \byte_index_ff[24]_i_1_n_0 ;
  wire \byte_index_ff[25]_i_1_n_0 ;
  wire \byte_index_ff[26]_i_1_n_0 ;
  wire \byte_index_ff[27]_i_1_n_0 ;
  wire \byte_index_ff[28]_i_1_n_0 ;
  wire \byte_index_ff[29]_i_1_n_0 ;
  wire \byte_index_ff[2]_i_1_n_0 ;
  wire \byte_index_ff[30]_i_1_n_0 ;
  wire \byte_index_ff[31]_i_1_n_0 ;
  wire \byte_index_ff[3]_i_1_n_0 ;
  wire \byte_index_ff[4]_i_1_n_0 ;
  wire \byte_index_ff[5]_i_1_n_0 ;
  wire \byte_index_ff[6]_i_1_n_0 ;
  wire \byte_index_ff[7]_i_1_n_0 ;
  wire \byte_index_ff[8]_i_1_n_0 ;
  wire \byte_index_ff[9]_i_1_n_0 ;
  wire byte_index_ff_0;
  wire [1:0]curr_state_ff;
  wire \curr_state_ff[0]_i_1_n_0 ;
  wire \curr_state_ff[1]_i_1_n_0 ;
  wire \curr_state_ff[2]_i_1_n_0 ;
  wire \curr_state_ff[3]_i_2_n_0 ;
  wire \curr_state_ff[3]_i_3_n_0 ;
  wire \curr_state_ff[3]_i_5_n_0 ;
  wire [1:0]curr_state_ff_0;
  wire [2:1]curr_state_ff_1;
  wire \curr_state_ff_reg[0]_0 ;
  wire \curr_state_ff_reg[0]_1 ;
  wire \curr_state_ff_reg[1]_0 ;
  wire \curr_state_ff_reg[1]_1 ;
  wire [1:0]\curr_state_ff_reg[3]_0 ;
  wire \curr_state_ff_reg[3]_1 ;
  wire \debug_data[31]_i_1_n_0 ;
  wire [31:0]debug_data_o;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire last_sample;
  wire minusOp_0;
  wire minusOp_n_100;
  wire minusOp_n_101;
  wire minusOp_n_102;
  wire minusOp_n_103;
  wire minusOp_n_104;
  wire minusOp_n_105;
  wire minusOp_n_92;
  wire minusOp_n_93;
  wire minusOp_n_94;
  wire minusOp_n_95;
  wire minusOp_n_96;
  wire minusOp_n_97;
  wire minusOp_n_98;
  wire minusOp_n_99;
  wire next_state;
  wire next_state1_carry__0_i_1_n_0;
  wire next_state1_carry_i_1_n_0;
  wire next_state1_carry_i_2_n_0;
  wire next_state1_carry_i_3_n_0;
  wire next_state1_carry_i_4_n_0;
  wire next_state1_carry_n_0;
  wire next_state1_carry_n_1;
  wire next_state1_carry_n_2;
  wire next_state1_carry_n_3;
  wire \next_state1_inferred__0/i__carry__0_n_0 ;
  wire \next_state1_inferred__0/i__carry__0_n_1 ;
  wire \next_state1_inferred__0/i__carry__0_n_2 ;
  wire \next_state1_inferred__0/i__carry__0_n_3 ;
  wire \next_state1_inferred__0/i__carry__1_n_2 ;
  wire \next_state1_inferred__0/i__carry__1_n_3 ;
  wire \next_state1_inferred__0/i__carry_n_0 ;
  wire \next_state1_inferred__0/i__carry_n_1 ;
  wire \next_state1_inferred__0/i__carry_n_2 ;
  wire \next_state1_inferred__0/i__carry_n_3 ;
  wire [31:1]next_state2;
  wire next_state2_carry__0_i_1_n_0;
  wire next_state2_carry__0_i_2_n_0;
  wire next_state2_carry__0_i_3_n_0;
  wire next_state2_carry__0_i_4_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_i_1_n_0;
  wire next_state2_carry__1_i_2_n_0;
  wire next_state2_carry__1_i_3_n_0;
  wire next_state2_carry__1_i_4_n_0;
  wire next_state2_carry__1_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry__2_i_1_n_0;
  wire next_state2_carry__2_i_2_n_0;
  wire next_state2_carry__2_i_3_n_0;
  wire next_state2_carry__2_i_4_n_0;
  wire next_state2_carry__2_n_0;
  wire next_state2_carry__2_n_1;
  wire next_state2_carry__2_n_2;
  wire next_state2_carry__2_n_3;
  wire next_state2_carry__3_i_1_n_0;
  wire next_state2_carry__3_i_2_n_0;
  wire next_state2_carry__3_i_3_n_0;
  wire next_state2_carry__3_i_4_n_0;
  wire next_state2_carry__3_n_0;
  wire next_state2_carry__3_n_1;
  wire next_state2_carry__3_n_2;
  wire next_state2_carry__3_n_3;
  wire next_state2_carry__4_i_1_n_0;
  wire next_state2_carry__4_i_2_n_0;
  wire next_state2_carry__4_i_3_n_0;
  wire next_state2_carry__4_i_4_n_0;
  wire next_state2_carry__4_n_0;
  wire next_state2_carry__4_n_1;
  wire next_state2_carry__4_n_2;
  wire next_state2_carry__4_n_3;
  wire next_state2_carry__5_i_1_n_0;
  wire next_state2_carry__5_i_2_n_0;
  wire next_state2_carry__5_i_3_n_0;
  wire next_state2_carry__5_i_4_n_0;
  wire next_state2_carry__5_n_0;
  wire next_state2_carry__5_n_1;
  wire next_state2_carry__5_n_2;
  wire next_state2_carry__5_n_3;
  wire next_state2_carry__6_i_1_n_0;
  wire next_state2_carry__6_i_2_n_0;
  wire next_state2_carry__6_i_3_n_0;
  wire next_state2_carry__6_n_2;
  wire next_state2_carry__6_n_3;
  wire next_state2_carry_i_1_n_0;
  wire next_state2_carry_i_2_n_0;
  wire next_state2_carry_i_3_n_0;
  wire next_state2_carry_i_4_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [31:0]num_samples_ff;
  wire num_samples_ff0;
  wire [3:0]prev_state_ff;
  wire req_addr_offset_ff0;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_0 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_1 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_2 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_4 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_5 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__0_n_7 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_0 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_1 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_2 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_4 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_5 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__1_n_7 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_0 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_1 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_2 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_4 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_5 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__2_n_7 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_0 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_1 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_2 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_4 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_5 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__3_n_7 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_0 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_1 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_2 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_4 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_5 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__4_n_7 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_0 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_1 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_2 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_4 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_5 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__5_n_7 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__6_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__6_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry__6_n_7 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_0 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_1 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_2 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_3 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_4 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_5 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_6 ;
  wire \req_addr_offset_ff0_inferred__0/i__carry_n_7 ;
  wire \req_addr_offset_ff[2]_i_1_n_0 ;
  wire \req_addr_offset_ff[2]_i_2_n_0 ;
  wire \req_addr_offset_ff[2]_i_3_n_0 ;
  wire \req_addr_offset_ff[31]_i_1_n_0 ;
  wire \req_addr_offset_ff_reg_n_0_[0] ;
  wire \req_addr_offset_ff_reg_n_0_[10] ;
  wire \req_addr_offset_ff_reg_n_0_[11] ;
  wire \req_addr_offset_ff_reg_n_0_[12] ;
  wire \req_addr_offset_ff_reg_n_0_[13] ;
  wire \req_addr_offset_ff_reg_n_0_[14] ;
  wire \req_addr_offset_ff_reg_n_0_[15] ;
  wire \req_addr_offset_ff_reg_n_0_[16] ;
  wire \req_addr_offset_ff_reg_n_0_[17] ;
  wire \req_addr_offset_ff_reg_n_0_[18] ;
  wire \req_addr_offset_ff_reg_n_0_[19] ;
  wire \req_addr_offset_ff_reg_n_0_[1] ;
  wire \req_addr_offset_ff_reg_n_0_[20] ;
  wire \req_addr_offset_ff_reg_n_0_[21] ;
  wire \req_addr_offset_ff_reg_n_0_[22] ;
  wire \req_addr_offset_ff_reg_n_0_[23] ;
  wire \req_addr_offset_ff_reg_n_0_[24] ;
  wire \req_addr_offset_ff_reg_n_0_[25] ;
  wire \req_addr_offset_ff_reg_n_0_[26] ;
  wire \req_addr_offset_ff_reg_n_0_[27] ;
  wire \req_addr_offset_ff_reg_n_0_[28] ;
  wire \req_addr_offset_ff_reg_n_0_[29] ;
  wire \req_addr_offset_ff_reg_n_0_[2] ;
  wire \req_addr_offset_ff_reg_n_0_[30] ;
  wire \req_addr_offset_ff_reg_n_0_[31] ;
  wire \req_addr_offset_ff_reg_n_0_[3] ;
  wire \req_addr_offset_ff_reg_n_0_[4] ;
  wire \req_addr_offset_ff_reg_n_0_[5] ;
  wire \req_addr_offset_ff_reg_n_0_[6] ;
  wire \req_addr_offset_ff_reg_n_0_[7] ;
  wire \req_addr_offset_ff_reg_n_0_[8] ;
  wire \req_addr_offset_ff_reg_n_0_[9] ;
  wire [31:0]req_rv_addr;
  wire [0:0]s_axi_aclk;
  wire [0:0]s_axi_aresetn;
  wire s_rv_valid;
  wire sample_ff;
  wire [31:1]sample_index_ff0;
  wire sample_index_ff0_carry__0_n_0;
  wire sample_index_ff0_carry__0_n_1;
  wire sample_index_ff0_carry__0_n_2;
  wire sample_index_ff0_carry__0_n_3;
  wire sample_index_ff0_carry__1_n_0;
  wire sample_index_ff0_carry__1_n_1;
  wire sample_index_ff0_carry__1_n_2;
  wire sample_index_ff0_carry__1_n_3;
  wire sample_index_ff0_carry__2_n_0;
  wire sample_index_ff0_carry__2_n_1;
  wire sample_index_ff0_carry__2_n_2;
  wire sample_index_ff0_carry__2_n_3;
  wire sample_index_ff0_carry__3_n_0;
  wire sample_index_ff0_carry__3_n_1;
  wire sample_index_ff0_carry__3_n_2;
  wire sample_index_ff0_carry__3_n_3;
  wire sample_index_ff0_carry__4_n_0;
  wire sample_index_ff0_carry__4_n_1;
  wire sample_index_ff0_carry__4_n_2;
  wire sample_index_ff0_carry__4_n_3;
  wire sample_index_ff0_carry__5_n_0;
  wire sample_index_ff0_carry__5_n_1;
  wire sample_index_ff0_carry__5_n_2;
  wire sample_index_ff0_carry__5_n_3;
  wire sample_index_ff0_carry__6_n_2;
  wire sample_index_ff0_carry__6_n_3;
  wire sample_index_ff0_carry_n_0;
  wire sample_index_ff0_carry_n_1;
  wire sample_index_ff0_carry_n_2;
  wire sample_index_ff0_carry_n_3;
  wire \sample_index_ff[0]_i_1_n_0 ;
  wire \sample_index_ff[10]_i_1_n_0 ;
  wire \sample_index_ff[11]_i_1_n_0 ;
  wire \sample_index_ff[12]_i_1_n_0 ;
  wire \sample_index_ff[13]_i_1_n_0 ;
  wire \sample_index_ff[14]_i_1_n_0 ;
  wire \sample_index_ff[15]_i_1_n_0 ;
  wire \sample_index_ff[16]_i_1_n_0 ;
  wire \sample_index_ff[17]_i_1_n_0 ;
  wire \sample_index_ff[18]_i_1_n_0 ;
  wire \sample_index_ff[19]_i_1_n_0 ;
  wire \sample_index_ff[1]_i_1_n_0 ;
  wire \sample_index_ff[20]_i_1_n_0 ;
  wire \sample_index_ff[21]_i_1_n_0 ;
  wire \sample_index_ff[22]_i_1_n_0 ;
  wire \sample_index_ff[23]_i_1_n_0 ;
  wire \sample_index_ff[24]_i_1_n_0 ;
  wire \sample_index_ff[25]_i_1_n_0 ;
  wire \sample_index_ff[26]_i_1_n_0 ;
  wire \sample_index_ff[27]_i_1_n_0 ;
  wire \sample_index_ff[28]_i_1_n_0 ;
  wire \sample_index_ff[29]_i_1_n_0 ;
  wire \sample_index_ff[2]_i_1_n_0 ;
  wire \sample_index_ff[30]_i_1_n_0 ;
  wire \sample_index_ff[31]_i_2_n_0 ;
  wire \sample_index_ff[3]_i_1_n_0 ;
  wire \sample_index_ff[4]_i_1_n_0 ;
  wire \sample_index_ff[5]_i_1_n_0 ;
  wire \sample_index_ff[6]_i_1_n_0 ;
  wire \sample_index_ff[7]_i_1_n_0 ;
  wire \sample_index_ff[8]_i_1_n_0 ;
  wire \sample_index_ff[9]_i_1_n_0 ;
  wire [0:0]\sample_index_ff_reg[0]_0 ;
  wire \sample_index_ff_reg_n_0_[10] ;
  wire \sample_index_ff_reg_n_0_[11] ;
  wire \sample_index_ff_reg_n_0_[12] ;
  wire \sample_index_ff_reg_n_0_[13] ;
  wire \sample_index_ff_reg_n_0_[14] ;
  wire \sample_index_ff_reg_n_0_[15] ;
  wire \sample_index_ff_reg_n_0_[16] ;
  wire \sample_index_ff_reg_n_0_[17] ;
  wire \sample_index_ff_reg_n_0_[18] ;
  wire \sample_index_ff_reg_n_0_[19] ;
  wire \sample_index_ff_reg_n_0_[1] ;
  wire \sample_index_ff_reg_n_0_[20] ;
  wire \sample_index_ff_reg_n_0_[21] ;
  wire \sample_index_ff_reg_n_0_[22] ;
  wire \sample_index_ff_reg_n_0_[23] ;
  wire \sample_index_ff_reg_n_0_[24] ;
  wire \sample_index_ff_reg_n_0_[25] ;
  wire \sample_index_ff_reg_n_0_[26] ;
  wire \sample_index_ff_reg_n_0_[27] ;
  wire \sample_index_ff_reg_n_0_[28] ;
  wire \sample_index_ff_reg_n_0_[29] ;
  wire \sample_index_ff_reg_n_0_[2] ;
  wire \sample_index_ff_reg_n_0_[30] ;
  wire \sample_index_ff_reg_n_0_[31] ;
  wire \sample_index_ff_reg_n_0_[3] ;
  wire \sample_index_ff_reg_n_0_[4] ;
  wire \sample_index_ff_reg_n_0_[5] ;
  wire \sample_index_ff_reg_n_0_[6] ;
  wire \sample_index_ff_reg_n_0_[7] ;
  wire \sample_index_ff_reg_n_0_[8] ;
  wire \sample_index_ff_reg_n_0_[9] ;
  wire sample_period_us_ff0;
  wire [31:0]scaled_sample_ff_reg_0;
  wire [15:0]scaled_sample_ff_reg_1;
  wire sleep_counter_done;
  wire \sleep_counter_ff[0]_i_1_n_0 ;
  wire \sleep_counter_ff[0]_i_3_n_0 ;
  wire [13:0]sleep_counter_ff_reg;
  wire \sleep_counter_ff_reg[0]_i_2_n_0 ;
  wire \sleep_counter_ff_reg[0]_i_2_n_1 ;
  wire \sleep_counter_ff_reg[0]_i_2_n_2 ;
  wire \sleep_counter_ff_reg[0]_i_2_n_3 ;
  wire \sleep_counter_ff_reg[0]_i_2_n_4 ;
  wire \sleep_counter_ff_reg[0]_i_2_n_5 ;
  wire \sleep_counter_ff_reg[0]_i_2_n_6 ;
  wire \sleep_counter_ff_reg[0]_i_2_n_7 ;
  wire \sleep_counter_ff_reg[12]_i_1_n_3 ;
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
  wire [31:0]sound_addr_ff;
  wire sound_addr_ff0;
  wire [31:0]\sound_addr_ff_reg[31]_0 ;
  wire [3:3]\NLW_axi_araddr_ff_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]NLW_byte_index_ff0_carry__6_CO_UNCONNECTED;
  wire NLW_minusOp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_minusOp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_minusOp_OVERFLOW_UNCONNECTED;
  wire NLW_minusOp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_minusOp_PATTERNDETECT_UNCONNECTED;
  wire NLW_minusOp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_minusOp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_minusOp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_minusOp_CARRYOUT_UNCONNECTED;
  wire [47:14]NLW_minusOp_P_UNCONNECTED;
  wire [47:0]NLW_minusOp_PCOUT_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry_O_UNCONNECTED;
  wire [3:1]NLW_next_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_next_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_next_state1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_next_state1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_state1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:2]NLW_next_state2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__6_O_UNCONNECTED;
  wire [3:1]\NLW_req_addr_offset_ff0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:2]\NLW_req_addr_offset_ff0_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:2]NLW_sample_index_ff0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_sample_index_ff0_carry__6_O_UNCONNECTED;
  wire NLW_scaled_sample_ff_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_scaled_sample_ff_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_scaled_sample_ff_reg_OVERFLOW_UNCONNECTED;
  wire NLW_scaled_sample_ff_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_scaled_sample_ff_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_scaled_sample_ff_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_scaled_sample_ff_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_scaled_sample_ff_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_scaled_sample_ff_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_scaled_sample_ff_reg_P_UNCONNECTED;
  wire [47:0]NLW_scaled_sample_ff_reg_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[11]_i_2 
       (.I0(sound_addr_ff[11]),
        .I1(\req_addr_offset_ff_reg_n_0_[11] ),
        .O(\axi_araddr_ff[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[11]_i_3 
       (.I0(sound_addr_ff[10]),
        .I1(\req_addr_offset_ff_reg_n_0_[10] ),
        .O(\axi_araddr_ff[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[11]_i_4 
       (.I0(sound_addr_ff[9]),
        .I1(\req_addr_offset_ff_reg_n_0_[9] ),
        .O(\axi_araddr_ff[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[11]_i_5 
       (.I0(sound_addr_ff[8]),
        .I1(\req_addr_offset_ff_reg_n_0_[8] ),
        .O(\axi_araddr_ff[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[15]_i_2 
       (.I0(sound_addr_ff[15]),
        .I1(\req_addr_offset_ff_reg_n_0_[15] ),
        .O(\axi_araddr_ff[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[15]_i_3 
       (.I0(sound_addr_ff[14]),
        .I1(\req_addr_offset_ff_reg_n_0_[14] ),
        .O(\axi_araddr_ff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[15]_i_4 
       (.I0(sound_addr_ff[13]),
        .I1(\req_addr_offset_ff_reg_n_0_[13] ),
        .O(\axi_araddr_ff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[15]_i_5 
       (.I0(sound_addr_ff[12]),
        .I1(\req_addr_offset_ff_reg_n_0_[12] ),
        .O(\axi_araddr_ff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[19]_i_2 
       (.I0(sound_addr_ff[19]),
        .I1(\req_addr_offset_ff_reg_n_0_[19] ),
        .O(\axi_araddr_ff[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[19]_i_3 
       (.I0(sound_addr_ff[18]),
        .I1(\req_addr_offset_ff_reg_n_0_[18] ),
        .O(\axi_araddr_ff[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[19]_i_4 
       (.I0(sound_addr_ff[17]),
        .I1(\req_addr_offset_ff_reg_n_0_[17] ),
        .O(\axi_araddr_ff[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[19]_i_5 
       (.I0(sound_addr_ff[16]),
        .I1(\req_addr_offset_ff_reg_n_0_[16] ),
        .O(\axi_araddr_ff[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[23]_i_2 
       (.I0(sound_addr_ff[23]),
        .I1(\req_addr_offset_ff_reg_n_0_[23] ),
        .O(\axi_araddr_ff[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[23]_i_3 
       (.I0(sound_addr_ff[22]),
        .I1(\req_addr_offset_ff_reg_n_0_[22] ),
        .O(\axi_araddr_ff[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[23]_i_4 
       (.I0(sound_addr_ff[21]),
        .I1(\req_addr_offset_ff_reg_n_0_[21] ),
        .O(\axi_araddr_ff[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[23]_i_5 
       (.I0(sound_addr_ff[20]),
        .I1(\req_addr_offset_ff_reg_n_0_[20] ),
        .O(\axi_araddr_ff[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[27]_i_2 
       (.I0(sound_addr_ff[27]),
        .I1(\req_addr_offset_ff_reg_n_0_[27] ),
        .O(\axi_araddr_ff[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[27]_i_3 
       (.I0(sound_addr_ff[26]),
        .I1(\req_addr_offset_ff_reg_n_0_[26] ),
        .O(\axi_araddr_ff[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[27]_i_4 
       (.I0(sound_addr_ff[25]),
        .I1(\req_addr_offset_ff_reg_n_0_[25] ),
        .O(\axi_araddr_ff[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[27]_i_5 
       (.I0(sound_addr_ff[24]),
        .I1(\req_addr_offset_ff_reg_n_0_[24] ),
        .O(\axi_araddr_ff[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \axi_araddr_ff[31]_i_2 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_0 [1]),
        .I2(curr_state_ff[0]),
        .I3(curr_state_ff[1]),
        .I4(curr_state_ff_1[2]),
        .I5(curr_state_ff_1[1]),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[31]_i_4 
       (.I0(sound_addr_ff[31]),
        .I1(\req_addr_offset_ff_reg_n_0_[31] ),
        .O(\axi_araddr_ff[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[31]_i_5 
       (.I0(sound_addr_ff[30]),
        .I1(\req_addr_offset_ff_reg_n_0_[30] ),
        .O(\axi_araddr_ff[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[31]_i_6 
       (.I0(sound_addr_ff[29]),
        .I1(\req_addr_offset_ff_reg_n_0_[29] ),
        .O(\axi_araddr_ff[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[31]_i_7 
       (.I0(sound_addr_ff[28]),
        .I1(\req_addr_offset_ff_reg_n_0_[28] ),
        .O(\axi_araddr_ff[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[3]_i_2 
       (.I0(sound_addr_ff[3]),
        .I1(\req_addr_offset_ff_reg_n_0_[3] ),
        .O(\axi_araddr_ff[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[3]_i_3 
       (.I0(sound_addr_ff[2]),
        .I1(\req_addr_offset_ff_reg_n_0_[2] ),
        .O(\axi_araddr_ff[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[3]_i_4 
       (.I0(sound_addr_ff[1]),
        .I1(\req_addr_offset_ff_reg_n_0_[1] ),
        .O(\axi_araddr_ff[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[3]_i_5 
       (.I0(sound_addr_ff[0]),
        .I1(\req_addr_offset_ff_reg_n_0_[0] ),
        .O(\axi_araddr_ff[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[7]_i_2 
       (.I0(sound_addr_ff[7]),
        .I1(\req_addr_offset_ff_reg_n_0_[7] ),
        .O(\axi_araddr_ff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[7]_i_3 
       (.I0(sound_addr_ff[6]),
        .I1(\req_addr_offset_ff_reg_n_0_[6] ),
        .O(\axi_araddr_ff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[7]_i_4 
       (.I0(sound_addr_ff[5]),
        .I1(\req_addr_offset_ff_reg_n_0_[5] ),
        .O(\axi_araddr_ff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr_ff[7]_i_5 
       (.I0(sound_addr_ff[4]),
        .I1(\req_addr_offset_ff_reg_n_0_[4] ),
        .O(\axi_araddr_ff[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[11]_i_1 
       (.CI(\axi_araddr_ff_reg[7]_i_1_n_0 ),
        .CO({\axi_araddr_ff_reg[11]_i_1_n_0 ,\axi_araddr_ff_reg[11]_i_1_n_1 ,\axi_araddr_ff_reg[11]_i_1_n_2 ,\axi_araddr_ff_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sound_addr_ff[11:8]),
        .O(req_rv_addr[11:8]),
        .S({\axi_araddr_ff[11]_i_2_n_0 ,\axi_araddr_ff[11]_i_3_n_0 ,\axi_araddr_ff[11]_i_4_n_0 ,\axi_araddr_ff[11]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[15]_i_1 
       (.CI(\axi_araddr_ff_reg[11]_i_1_n_0 ),
        .CO({\axi_araddr_ff_reg[15]_i_1_n_0 ,\axi_araddr_ff_reg[15]_i_1_n_1 ,\axi_araddr_ff_reg[15]_i_1_n_2 ,\axi_araddr_ff_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sound_addr_ff[15:12]),
        .O(req_rv_addr[15:12]),
        .S({\axi_araddr_ff[15]_i_2_n_0 ,\axi_araddr_ff[15]_i_3_n_0 ,\axi_araddr_ff[15]_i_4_n_0 ,\axi_araddr_ff[15]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[19]_i_1 
       (.CI(\axi_araddr_ff_reg[15]_i_1_n_0 ),
        .CO({\axi_araddr_ff_reg[19]_i_1_n_0 ,\axi_araddr_ff_reg[19]_i_1_n_1 ,\axi_araddr_ff_reg[19]_i_1_n_2 ,\axi_araddr_ff_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sound_addr_ff[19:16]),
        .O(req_rv_addr[19:16]),
        .S({\axi_araddr_ff[19]_i_2_n_0 ,\axi_araddr_ff[19]_i_3_n_0 ,\axi_araddr_ff[19]_i_4_n_0 ,\axi_araddr_ff[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[23]_i_1 
       (.CI(\axi_araddr_ff_reg[19]_i_1_n_0 ),
        .CO({\axi_araddr_ff_reg[23]_i_1_n_0 ,\axi_araddr_ff_reg[23]_i_1_n_1 ,\axi_araddr_ff_reg[23]_i_1_n_2 ,\axi_araddr_ff_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sound_addr_ff[23:20]),
        .O(req_rv_addr[23:20]),
        .S({\axi_araddr_ff[23]_i_2_n_0 ,\axi_araddr_ff[23]_i_3_n_0 ,\axi_araddr_ff[23]_i_4_n_0 ,\axi_araddr_ff[23]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[27]_i_1 
       (.CI(\axi_araddr_ff_reg[23]_i_1_n_0 ),
        .CO({\axi_araddr_ff_reg[27]_i_1_n_0 ,\axi_araddr_ff_reg[27]_i_1_n_1 ,\axi_araddr_ff_reg[27]_i_1_n_2 ,\axi_araddr_ff_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sound_addr_ff[27:24]),
        .O(req_rv_addr[27:24]),
        .S({\axi_araddr_ff[27]_i_2_n_0 ,\axi_araddr_ff[27]_i_3_n_0 ,\axi_araddr_ff[27]_i_4_n_0 ,\axi_araddr_ff[27]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[31]_i_3 
       (.CI(\axi_araddr_ff_reg[27]_i_1_n_0 ),
        .CO({\NLW_axi_araddr_ff_reg[31]_i_3_CO_UNCONNECTED [3],\axi_araddr_ff_reg[31]_i_3_n_1 ,\axi_araddr_ff_reg[31]_i_3_n_2 ,\axi_araddr_ff_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sound_addr_ff[30:28]}),
        .O(req_rv_addr[31:28]),
        .S({\axi_araddr_ff[31]_i_4_n_0 ,\axi_araddr_ff[31]_i_5_n_0 ,\axi_araddr_ff[31]_i_6_n_0 ,\axi_araddr_ff[31]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\axi_araddr_ff_reg[3]_i_1_n_0 ,\axi_araddr_ff_reg[3]_i_1_n_1 ,\axi_araddr_ff_reg[3]_i_1_n_2 ,\axi_araddr_ff_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sound_addr_ff[3:0]),
        .O(req_rv_addr[3:0]),
        .S({\axi_araddr_ff[3]_i_2_n_0 ,\axi_araddr_ff[3]_i_3_n_0 ,\axi_araddr_ff[3]_i_4_n_0 ,\axi_araddr_ff[3]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_ff_reg[7]_i_1 
       (.CI(\axi_araddr_ff_reg[3]_i_1_n_0 ),
        .CO({\axi_araddr_ff_reg[7]_i_1_n_0 ,\axi_araddr_ff_reg[7]_i_1_n_1 ,\axi_araddr_ff_reg[7]_i_1_n_2 ,\axi_araddr_ff_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sound_addr_ff[7:4]),
        .O(req_rv_addr[7:4]),
        .S({\axi_araddr_ff[7]_i_2_n_0 ,\axi_araddr_ff[7]_i_3_n_0 ,\axi_araddr_ff[7]_i_4_n_0 ,\axi_araddr_ff[7]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h00000002)) 
    \axi_awaddr_ff[30]_i_2 
       (.I0(\curr_state_ff_reg[3]_0 [1]),
        .I1(curr_state_ff_0[0]),
        .I2(curr_state_ff_0[1]),
        .I3(curr_state_ff_1[2]),
        .I4(curr_state_ff_1[1]),
        .O(\curr_state_ff_reg[3]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry
       (.CI(1'b0),
        .CO({byte_index_ff0_carry_n_0,byte_index_ff0_carry_n_1,byte_index_ff0_carry_n_2,byte_index_ff0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,byte_index_ff[1],1'b0}),
        .O(byte_index_ff0[3:0]),
        .S({byte_index_ff[3:2],byte_index_ff0_carry_i_1_n_0,byte_index_ff[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry__0
       (.CI(byte_index_ff0_carry_n_0),
        .CO({byte_index_ff0_carry__0_n_0,byte_index_ff0_carry__0_n_1,byte_index_ff0_carry__0_n_2,byte_index_ff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(byte_index_ff0[7:4]),
        .S(byte_index_ff[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry__1
       (.CI(byte_index_ff0_carry__0_n_0),
        .CO({byte_index_ff0_carry__1_n_0,byte_index_ff0_carry__1_n_1,byte_index_ff0_carry__1_n_2,byte_index_ff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(byte_index_ff0[11:8]),
        .S(byte_index_ff[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry__2
       (.CI(byte_index_ff0_carry__1_n_0),
        .CO({byte_index_ff0_carry__2_n_0,byte_index_ff0_carry__2_n_1,byte_index_ff0_carry__2_n_2,byte_index_ff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(byte_index_ff0[15:12]),
        .S(byte_index_ff[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry__3
       (.CI(byte_index_ff0_carry__2_n_0),
        .CO({byte_index_ff0_carry__3_n_0,byte_index_ff0_carry__3_n_1,byte_index_ff0_carry__3_n_2,byte_index_ff0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(byte_index_ff0[19:16]),
        .S(byte_index_ff[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry__4
       (.CI(byte_index_ff0_carry__3_n_0),
        .CO({byte_index_ff0_carry__4_n_0,byte_index_ff0_carry__4_n_1,byte_index_ff0_carry__4_n_2,byte_index_ff0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(byte_index_ff0[23:20]),
        .S(byte_index_ff[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry__5
       (.CI(byte_index_ff0_carry__4_n_0),
        .CO({byte_index_ff0_carry__5_n_0,byte_index_ff0_carry__5_n_1,byte_index_ff0_carry__5_n_2,byte_index_ff0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(byte_index_ff0[27:24]),
        .S(byte_index_ff[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_index_ff0_carry__6
       (.CI(byte_index_ff0_carry__5_n_0),
        .CO({NLW_byte_index_ff0_carry__6_CO_UNCONNECTED[3],byte_index_ff0_carry__6_n_1,byte_index_ff0_carry__6_n_2,byte_index_ff0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(byte_index_ff0[31:28]),
        .S(byte_index_ff[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    byte_index_ff0_carry_i_1
       (.I0(byte_index_ff[1]),
        .O(byte_index_ff0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[0]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[0]),
        .O(\byte_index_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[10]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[10]),
        .O(\byte_index_ff[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[11]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[11]),
        .O(\byte_index_ff[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[12]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[12]),
        .O(\byte_index_ff[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[13]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[13]),
        .O(\byte_index_ff[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[14]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[14]),
        .O(\byte_index_ff[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[15]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[15]),
        .O(\byte_index_ff[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[16]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[16]),
        .O(\byte_index_ff[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[17]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[17]),
        .O(\byte_index_ff[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[18]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[18]),
        .O(\byte_index_ff[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[19]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[19]),
        .O(\byte_index_ff[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[1]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[1]),
        .O(\byte_index_ff[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[20]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[20]),
        .O(\byte_index_ff[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[21]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[21]),
        .O(\byte_index_ff[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[22]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[22]),
        .O(\byte_index_ff[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[23]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[23]),
        .O(\byte_index_ff[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[24]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[24]),
        .O(\byte_index_ff[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[25]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[25]),
        .O(\byte_index_ff[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[26]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[26]),
        .O(\byte_index_ff[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[27]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[27]),
        .O(\byte_index_ff[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[28]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[28]),
        .O(\byte_index_ff[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[29]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[29]),
        .O(\byte_index_ff[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[2]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[2]),
        .O(\byte_index_ff[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[30]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[30]),
        .O(\byte_index_ff[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[31]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[31]),
        .O(\byte_index_ff[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[3]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[3]),
        .O(\byte_index_ff[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[4]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[4]),
        .O(\byte_index_ff[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[5]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[5]),
        .O(\byte_index_ff[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[6]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[6]),
        .O(\byte_index_ff[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[7]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[7]),
        .O(\byte_index_ff[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[8]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[8]),
        .O(\byte_index_ff[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_index_ff[9]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(byte_index_ff0[9]),
        .O(\byte_index_ff[9]_i_1_n_0 ));
  FDRE \byte_index_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[0]_i_1_n_0 ),
        .Q(byte_index_ff[0]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[10]_i_1_n_0 ),
        .Q(byte_index_ff[10]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[11]_i_1_n_0 ),
        .Q(byte_index_ff[11]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[12]_i_1_n_0 ),
        .Q(byte_index_ff[12]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[13]_i_1_n_0 ),
        .Q(byte_index_ff[13]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[14]_i_1_n_0 ),
        .Q(byte_index_ff[14]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[15]_i_1_n_0 ),
        .Q(byte_index_ff[15]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[16]_i_1_n_0 ),
        .Q(byte_index_ff[16]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[17]_i_1_n_0 ),
        .Q(byte_index_ff[17]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[18]_i_1_n_0 ),
        .Q(byte_index_ff[18]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[19]_i_1_n_0 ),
        .Q(byte_index_ff[19]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[1]_i_1_n_0 ),
        .Q(byte_index_ff[1]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[20]_i_1_n_0 ),
        .Q(byte_index_ff[20]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[21]_i_1_n_0 ),
        .Q(byte_index_ff[21]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[22]_i_1_n_0 ),
        .Q(byte_index_ff[22]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[23]_i_1_n_0 ),
        .Q(byte_index_ff[23]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[24]_i_1_n_0 ),
        .Q(byte_index_ff[24]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[25]_i_1_n_0 ),
        .Q(byte_index_ff[25]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[26]_i_1_n_0 ),
        .Q(byte_index_ff[26]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[27]_i_1_n_0 ),
        .Q(byte_index_ff[27]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[28]_i_1_n_0 ),
        .Q(byte_index_ff[28]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[29]_i_1_n_0 ),
        .Q(byte_index_ff[29]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[2]_i_1_n_0 ),
        .Q(byte_index_ff[2]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[30]_i_1_n_0 ),
        .Q(byte_index_ff[30]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[31]_i_1_n_0 ),
        .Q(byte_index_ff[31]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[3]_i_1_n_0 ),
        .Q(byte_index_ff[3]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[4]_i_1_n_0 ),
        .Q(byte_index_ff[4]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[5]_i_1_n_0 ),
        .Q(byte_index_ff[5]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[6]_i_1_n_0 ),
        .Q(byte_index_ff[6]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[7]_i_1_n_0 ),
        .Q(byte_index_ff[7]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[8]_i_1_n_0 ),
        .Q(byte_index_ff[8]),
        .R(minusOp_0));
  FDRE \byte_index_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\byte_index_ff[9]_i_1_n_0 ),
        .Q(byte_index_ff[9]),
        .R(minusOp_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \curr_state_ff[0]_i_1 
       (.I0(\curr_state_ff_reg[3]_1 ),
        .I1(\curr_state_ff_reg[3]_0 [0]),
        .I2(sleep_counter_done),
        .I3(\sleep_counter_ff[0]_i_1_n_0 ),
        .I4(\curr_state_ff_reg[0]_0 ),
        .I5(sound_addr_ff0),
        .O(\curr_state_ff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFB8B8B8)) 
    \curr_state_ff[1]_i_1 
       (.I0(\curr_state_ff_reg[1]_0 ),
        .I1(curr_state_ff_1[1]),
        .I2(\curr_state_ff_reg[1]_1 ),
        .I3(\curr_state_ff_reg[3]_1 ),
        .I4(\curr_state_ff_reg[3]_0 [0]),
        .I5(last_sample),
        .O(\curr_state_ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F488F888F8)) 
    \curr_state_ff[2]_i_1 
       (.I0(curr_state_ff_1[1]),
        .I1(\curr_state_ff_reg[1]_1 ),
        .I2(sleep_counter_done),
        .I3(\sleep_counter_ff[0]_i_1_n_0 ),
        .I4(\curr_state_ff_reg[1]_0 ),
        .I5(curr_state_ff_1[2]),
        .O(\curr_state_ff[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \curr_state_ff[3]_i_1 
       (.I0(\curr_state_ff[3]_i_3_n_0 ),
        .I1(\curr_state_ff_reg[0]_1 ),
        .I2(\curr_state_ff[3]_i_5_n_0 ),
        .I3(\curr_state_ff_reg[1]_1 ),
        .I4(\curr_state_ff_reg[0]_0 ),
        .O(next_state));
  LUT6 #(
    .INIT(64'h2222AAAAF222AAAA)) 
    \curr_state_ff[3]_i_2 
       (.I0(\curr_state_ff_reg[3]_1 ),
        .I1(last_sample),
        .I2(curr_state_ff_1[1]),
        .I3(curr_state_ff_1[2]),
        .I4(\curr_state_ff_reg[3]_0 [0]),
        .I5(\curr_state_ff_reg[3]_0 [1]),
        .O(\curr_state_ff[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCECFCFCCCCC)) 
    \curr_state_ff[3]_i_3 
       (.I0(sleep_counter_done),
        .I1(s_rv_valid),
        .I2(\curr_state_ff_reg[3]_0 [1]),
        .I3(\curr_state_ff_reg[3]_0 [0]),
        .I4(curr_state_ff_1[2]),
        .I5(curr_state_ff_1[1]),
        .O(\curr_state_ff[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \curr_state_ff[3]_i_5 
       (.I0(s_rv_valid),
        .I1(sleep_counter_done),
        .I2(\curr_state_ff_reg[3]_0 [0]),
        .I3(curr_state_ff_1[2]),
        .I4(curr_state_ff_1[1]),
        .O(\curr_state_ff[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000100010000000)) 
    \curr_state_ff[3]_i_7 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_0 [1]),
        .I2(curr_state_ff[0]),
        .I3(curr_state_ff[1]),
        .I4(curr_state_ff_1[2]),
        .I5(curr_state_ff_1[1]),
        .O(\curr_state_ff_reg[0]_0 ));
  FDRE \curr_state_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(next_state),
        .D(\curr_state_ff[0]_i_1_n_0 ),
        .Q(\curr_state_ff_reg[3]_0 [0]),
        .R(minusOp_0));
  FDRE \curr_state_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(next_state),
        .D(\curr_state_ff[1]_i_1_n_0 ),
        .Q(curr_state_ff_1[1]),
        .R(minusOp_0));
  FDRE \curr_state_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(next_state),
        .D(\curr_state_ff[2]_i_1_n_0 ),
        .Q(curr_state_ff_1[2]),
        .R(minusOp_0));
  FDRE \curr_state_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(next_state),
        .D(\curr_state_ff[3]_i_2_n_0 ),
        .Q(\curr_state_ff_reg[3]_0 [1]),
        .R(minusOp_0));
  LUT4 #(
    .INIT(16'hE000)) 
    \debug_data[31]_i_1 
       (.I0(curr_state_ff_1[1]),
        .I1(curr_state_ff_1[2]),
        .I2(\curr_state_ff_reg[1]_0 ),
        .I3(s_axi_aresetn),
        .O(\debug_data[31]_i_1_n_0 ));
  FDRE \debug_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(debug_data_o[0]),
        .R(1'b0));
  FDRE \debug_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(debug_data_o[10]),
        .R(1'b0));
  FDRE \debug_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(debug_data_o[11]),
        .R(1'b0));
  FDRE \debug_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(debug_data_o[12]),
        .R(1'b0));
  FDRE \debug_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(debug_data_o[13]),
        .R(1'b0));
  FDRE \debug_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(debug_data_o[14]),
        .R(1'b0));
  FDRE \debug_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(debug_data_o[15]),
        .R(1'b0));
  FDRE \debug_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(debug_data_o[16]),
        .R(1'b0));
  FDRE \debug_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(debug_data_o[17]),
        .R(1'b0));
  FDRE \debug_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(debug_data_o[18]),
        .R(1'b0));
  FDRE \debug_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(debug_data_o[19]),
        .R(1'b0));
  FDRE \debug_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(debug_data_o[1]),
        .R(1'b0));
  FDRE \debug_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(debug_data_o[20]),
        .R(1'b0));
  FDRE \debug_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(debug_data_o[21]),
        .R(1'b0));
  FDRE \debug_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(debug_data_o[22]),
        .R(1'b0));
  FDRE \debug_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(debug_data_o[23]),
        .R(1'b0));
  FDRE \debug_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[24]),
        .Q(debug_data_o[24]),
        .R(1'b0));
  FDRE \debug_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[25]),
        .Q(debug_data_o[25]),
        .R(1'b0));
  FDRE \debug_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[26]),
        .Q(debug_data_o[26]),
        .R(1'b0));
  FDRE \debug_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[27]),
        .Q(debug_data_o[27]),
        .R(1'b0));
  FDRE \debug_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[28]),
        .Q(debug_data_o[28]),
        .R(1'b0));
  FDRE \debug_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[29]),
        .Q(debug_data_o[29]),
        .R(1'b0));
  FDRE \debug_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(debug_data_o[2]),
        .R(1'b0));
  FDRE \debug_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[30]),
        .Q(debug_data_o[30]),
        .R(1'b0));
  FDRE \debug_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[31]),
        .Q(debug_data_o[31]),
        .R(1'b0));
  FDRE \debug_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(debug_data_o[3]),
        .R(1'b0));
  FDRE \debug_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(debug_data_o[4]),
        .R(1'b0));
  FDRE \debug_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(debug_data_o[5]),
        .R(1'b0));
  FDRE \debug_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(debug_data_o[6]),
        .R(1'b0));
  FDRE \debug_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(debug_data_o[7]),
        .R(1'b0));
  FDRE \debug_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(debug_data_o[8]),
        .R(1'b0));
  FDRE \debug_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(\debug_data[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(debug_data_o[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(\sample_index_ff_reg_n_0_[21] ),
        .I1(next_state2[21]),
        .I2(\sample_index_ff_reg_n_0_[22] ),
        .I3(next_state2[22]),
        .I4(next_state2[23]),
        .I5(\sample_index_ff_reg_n_0_[23] ),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(\sample_index_ff_reg_n_0_[18] ),
        .I1(next_state2[18]),
        .I2(\sample_index_ff_reg_n_0_[19] ),
        .I3(next_state2[19]),
        .I4(next_state2[20]),
        .I5(\sample_index_ff_reg_n_0_[20] ),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(\sample_index_ff_reg_n_0_[15] ),
        .I1(next_state2[15]),
        .I2(\sample_index_ff_reg_n_0_[16] ),
        .I3(next_state2[16]),
        .I4(next_state2[17]),
        .I5(\sample_index_ff_reg_n_0_[17] ),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(\sample_index_ff_reg_n_0_[12] ),
        .I1(next_state2[12]),
        .I2(\sample_index_ff_reg_n_0_[13] ),
        .I3(next_state2[13]),
        .I4(next_state2[14]),
        .I5(\sample_index_ff_reg_n_0_[14] ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(\sample_index_ff_reg_n_0_[30] ),
        .I1(next_state2[30]),
        .I2(next_state2[31]),
        .I3(\sample_index_ff_reg_n_0_[31] ),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(\sample_index_ff_reg_n_0_[27] ),
        .I1(next_state2[27]),
        .I2(\sample_index_ff_reg_n_0_[28] ),
        .I3(next_state2[28]),
        .I4(next_state2[29]),
        .I5(\sample_index_ff_reg_n_0_[29] ),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(\sample_index_ff_reg_n_0_[24] ),
        .I1(next_state2[24]),
        .I2(\sample_index_ff_reg_n_0_[25] ),
        .I3(next_state2[25]),
        .I4(next_state2[26]),
        .I5(\sample_index_ff_reg_n_0_[26] ),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(\sample_index_ff_reg_n_0_[9] ),
        .I1(next_state2[9]),
        .I2(\sample_index_ff_reg_n_0_[10] ),
        .I3(next_state2[10]),
        .I4(next_state2[11]),
        .I5(\sample_index_ff_reg_n_0_[11] ),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(byte_index_ff[3]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(\sample_index_ff_reg_n_0_[6] ),
        .I1(next_state2[6]),
        .I2(\sample_index_ff_reg_n_0_[7] ),
        .I3(next_state2[7]),
        .I4(next_state2[8]),
        .I5(\sample_index_ff_reg_n_0_[8] ),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(\sample_index_ff_reg_n_0_[3] ),
        .I1(next_state2[3]),
        .I2(\sample_index_ff_reg_n_0_[4] ),
        .I3(next_state2[4]),
        .I4(next_state2[5]),
        .I5(\sample_index_ff_reg_n_0_[5] ),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    i__carry_i_4
       (.I0(num_samples_ff[0]),
        .I1(\sample_index_ff_reg[0]_0 ),
        .I2(\sample_index_ff_reg_n_0_[1] ),
        .I3(next_state2[1]),
        .I4(next_state2[2]),
        .I5(\sample_index_ff_reg_n_0_[2] ),
        .O(i__carry_i_4_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    minusOp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D[13:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_minusOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_minusOp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_minusOp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_minusOp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(sample_period_us_ff0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEM),
        .CLK(s_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_minusOp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_minusOp_OVERFLOW_UNCONNECTED),
        .P({NLW_minusOp_P_UNCONNECTED[47:14],minusOp_n_92,minusOp_n_93,minusOp_n_94,minusOp_n_95,minusOp_n_96,minusOp_n_97,minusOp_n_98,minusOp_n_99,minusOp_n_100,minusOp_n_101,minusOp_n_102,minusOp_n_103,minusOp_n_104,minusOp_n_105}),
        .PATTERNBDETECT(NLW_minusOp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_minusOp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_minusOp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(minusOp_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(minusOp_0),
        .UNDERFLOW(NLW_minusOp_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    minusOp_i_1
       (.I0(curr_state_ff_1[1]),
        .I1(curr_state_ff_1[2]),
        .I2(\curr_state_ff_reg[3]_0 [0]),
        .I3(\curr_state_ff_reg[3]_0 [1]),
        .I4(curr_state_ff[0]),
        .I5(curr_state_ff[1]),
        .O(sample_period_us_ff0));
  CARRY4 next_state1_carry
       (.CI(1'b0),
        .CO({next_state1_carry_n_0,next_state1_carry_n_1,next_state1_carry_n_2,next_state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state1_carry_O_UNCONNECTED[3:0]),
        .S({next_state1_carry_i_1_n_0,next_state1_carry_i_2_n_0,next_state1_carry_i_3_n_0,next_state1_carry_i_4_n_0}));
  CARRY4 next_state1_carry__0
       (.CI(next_state1_carry_n_0),
        .CO({NLW_next_state1_carry__0_CO_UNCONNECTED[3:1],sleep_counter_done}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,next_state1_carry__0_i_1_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state1_carry__0_i_1
       (.I0(sleep_counter_ff_reg[12]),
        .I1(minusOp_n_93),
        .I2(minusOp_n_92),
        .I3(sleep_counter_ff_reg[13]),
        .O(next_state1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state1_carry_i_1
       (.I0(sleep_counter_ff_reg[9]),
        .I1(minusOp_n_96),
        .I2(sleep_counter_ff_reg[10]),
        .I3(minusOp_n_95),
        .I4(minusOp_n_94),
        .I5(sleep_counter_ff_reg[11]),
        .O(next_state1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state1_carry_i_2
       (.I0(sleep_counter_ff_reg[6]),
        .I1(minusOp_n_99),
        .I2(sleep_counter_ff_reg[7]),
        .I3(minusOp_n_98),
        .I4(minusOp_n_97),
        .I5(sleep_counter_ff_reg[8]),
        .O(next_state1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state1_carry_i_3
       (.I0(sleep_counter_ff_reg[3]),
        .I1(minusOp_n_102),
        .I2(sleep_counter_ff_reg[4]),
        .I3(minusOp_n_101),
        .I4(minusOp_n_100),
        .I5(sleep_counter_ff_reg[5]),
        .O(next_state1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state1_carry_i_4
       (.I0(sleep_counter_ff_reg[0]),
        .I1(minusOp_n_105),
        .I2(sleep_counter_ff_reg[1]),
        .I3(minusOp_n_104),
        .I4(minusOp_n_103),
        .I5(sleep_counter_ff_reg[2]),
        .O(next_state1_carry_i_4_n_0));
  CARRY4 \next_state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\next_state1_inferred__0/i__carry_n_0 ,\next_state1_inferred__0/i__carry_n_1 ,\next_state1_inferred__0/i__carry_n_2 ,\next_state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \next_state1_inferred__0/i__carry__0 
       (.CI(\next_state1_inferred__0/i__carry_n_0 ),
        .CO({\next_state1_inferred__0/i__carry__0_n_0 ,\next_state1_inferred__0/i__carry__0_n_1 ,\next_state1_inferred__0/i__carry__0_n_2 ,\next_state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \next_state1_inferred__0/i__carry__1 
       (.CI(\next_state1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_next_state1_inferred__0/i__carry__1_CO_UNCONNECTED [3],last_sample,\next_state1_inferred__0/i__carry__1_n_2 ,\next_state1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(num_samples_ff[0]),
        .DI(num_samples_ff[4:1]),
        .O(next_state2[4:1]),
        .S({next_state2_carry_i_1_n_0,next_state2_carry_i_2_n_0,next_state2_carry_i_3_n_0,next_state2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(num_samples_ff[8:5]),
        .O(next_state2[8:5]),
        .S({next_state2_carry__0_i_1_n_0,next_state2_carry__0_i_2_n_0,next_state2_carry__0_i_3_n_0,next_state2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__0_i_1
       (.I0(num_samples_ff[8]),
        .O(next_state2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__0_i_2
       (.I0(num_samples_ff[7]),
        .O(next_state2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__0_i_3
       (.I0(num_samples_ff[6]),
        .O(next_state2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__0_i_4
       (.I0(num_samples_ff[5]),
        .O(next_state2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({next_state2_carry__1_n_0,next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(num_samples_ff[12:9]),
        .O(next_state2[12:9]),
        .S({next_state2_carry__1_i_1_n_0,next_state2_carry__1_i_2_n_0,next_state2_carry__1_i_3_n_0,next_state2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__1_i_1
       (.I0(num_samples_ff[12]),
        .O(next_state2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__1_i_2
       (.I0(num_samples_ff[11]),
        .O(next_state2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__1_i_3
       (.I0(num_samples_ff[10]),
        .O(next_state2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__1_i_4
       (.I0(num_samples_ff[9]),
        .O(next_state2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry__2
       (.CI(next_state2_carry__1_n_0),
        .CO({next_state2_carry__2_n_0,next_state2_carry__2_n_1,next_state2_carry__2_n_2,next_state2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(num_samples_ff[16:13]),
        .O(next_state2[16:13]),
        .S({next_state2_carry__2_i_1_n_0,next_state2_carry__2_i_2_n_0,next_state2_carry__2_i_3_n_0,next_state2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__2_i_1
       (.I0(num_samples_ff[16]),
        .O(next_state2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__2_i_2
       (.I0(num_samples_ff[15]),
        .O(next_state2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__2_i_3
       (.I0(num_samples_ff[14]),
        .O(next_state2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__2_i_4
       (.I0(num_samples_ff[13]),
        .O(next_state2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry__3
       (.CI(next_state2_carry__2_n_0),
        .CO({next_state2_carry__3_n_0,next_state2_carry__3_n_1,next_state2_carry__3_n_2,next_state2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(num_samples_ff[20:17]),
        .O(next_state2[20:17]),
        .S({next_state2_carry__3_i_1_n_0,next_state2_carry__3_i_2_n_0,next_state2_carry__3_i_3_n_0,next_state2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__3_i_1
       (.I0(num_samples_ff[20]),
        .O(next_state2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__3_i_2
       (.I0(num_samples_ff[19]),
        .O(next_state2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__3_i_3
       (.I0(num_samples_ff[18]),
        .O(next_state2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__3_i_4
       (.I0(num_samples_ff[17]),
        .O(next_state2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry__4
       (.CI(next_state2_carry__3_n_0),
        .CO({next_state2_carry__4_n_0,next_state2_carry__4_n_1,next_state2_carry__4_n_2,next_state2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(num_samples_ff[24:21]),
        .O(next_state2[24:21]),
        .S({next_state2_carry__4_i_1_n_0,next_state2_carry__4_i_2_n_0,next_state2_carry__4_i_3_n_0,next_state2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__4_i_1
       (.I0(num_samples_ff[24]),
        .O(next_state2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__4_i_2
       (.I0(num_samples_ff[23]),
        .O(next_state2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__4_i_3
       (.I0(num_samples_ff[22]),
        .O(next_state2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__4_i_4
       (.I0(num_samples_ff[21]),
        .O(next_state2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry__5
       (.CI(next_state2_carry__4_n_0),
        .CO({next_state2_carry__5_n_0,next_state2_carry__5_n_1,next_state2_carry__5_n_2,next_state2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(num_samples_ff[28:25]),
        .O(next_state2[28:25]),
        .S({next_state2_carry__5_i_1_n_0,next_state2_carry__5_i_2_n_0,next_state2_carry__5_i_3_n_0,next_state2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__5_i_1
       (.I0(num_samples_ff[28]),
        .O(next_state2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__5_i_2
       (.I0(num_samples_ff[27]),
        .O(next_state2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__5_i_3
       (.I0(num_samples_ff[26]),
        .O(next_state2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__5_i_4
       (.I0(num_samples_ff[25]),
        .O(next_state2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_state2_carry__6
       (.CI(next_state2_carry__5_n_0),
        .CO({NLW_next_state2_carry__6_CO_UNCONNECTED[3:2],next_state2_carry__6_n_2,next_state2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,num_samples_ff[30:29]}),
        .O({NLW_next_state2_carry__6_O_UNCONNECTED[3],next_state2[31:29]}),
        .S({1'b0,next_state2_carry__6_i_1_n_0,next_state2_carry__6_i_2_n_0,next_state2_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__6_i_1
       (.I0(num_samples_ff[31]),
        .O(next_state2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__6_i_2
       (.I0(num_samples_ff[30]),
        .O(next_state2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry__6_i_3
       (.I0(num_samples_ff[29]),
        .O(next_state2_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry_i_1
       (.I0(num_samples_ff[4]),
        .O(next_state2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry_i_2
       (.I0(num_samples_ff[3]),
        .O(next_state2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry_i_3
       (.I0(num_samples_ff[2]),
        .O(next_state2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state2_carry_i_4
       (.I0(num_samples_ff[1]),
        .O(next_state2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \num_samples_ff[31]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_0 [1]),
        .I2(curr_state_ff[0]),
        .I3(curr_state_ff[1]),
        .I4(curr_state_ff_1[1]),
        .I5(curr_state_ff_1[2]),
        .O(num_samples_ff0));
  FDRE \num_samples_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[0]),
        .Q(num_samples_ff[0]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[10]),
        .Q(num_samples_ff[10]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[11]),
        .Q(num_samples_ff[11]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[12]),
        .Q(num_samples_ff[12]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[13]),
        .Q(num_samples_ff[13]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[14]),
        .Q(num_samples_ff[14]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[15]),
        .Q(num_samples_ff[15]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[16]),
        .Q(num_samples_ff[16]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[17]),
        .Q(num_samples_ff[17]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[18]),
        .Q(num_samples_ff[18]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[19]),
        .Q(num_samples_ff[19]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[1]),
        .Q(num_samples_ff[1]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[20]),
        .Q(num_samples_ff[20]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[21]),
        .Q(num_samples_ff[21]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[22]),
        .Q(num_samples_ff[22]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[23]),
        .Q(num_samples_ff[23]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[24]),
        .Q(num_samples_ff[24]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[25]),
        .Q(num_samples_ff[25]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[26]),
        .Q(num_samples_ff[26]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[27]),
        .Q(num_samples_ff[27]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[28]),
        .Q(num_samples_ff[28]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[29]),
        .Q(num_samples_ff[29]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[2]),
        .Q(num_samples_ff[2]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[30]),
        .Q(num_samples_ff[30]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[31]),
        .Q(num_samples_ff[31]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[3]),
        .Q(num_samples_ff[3]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[4]),
        .Q(num_samples_ff[4]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[5]),
        .Q(num_samples_ff[5]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[6]),
        .Q(num_samples_ff[6]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[7]),
        .Q(num_samples_ff[7]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[8]),
        .Q(num_samples_ff[8]),
        .R(minusOp_0));
  FDRE \num_samples_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(num_samples_ff0),
        .D(D[9]),
        .Q(num_samples_ff[9]),
        .R(minusOp_0));
  FDRE \prev_state_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\curr_state_ff_reg[3]_0 [0]),
        .Q(prev_state_ff[0]),
        .R(minusOp_0));
  FDRE \prev_state_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(curr_state_ff_1[1]),
        .Q(prev_state_ff[1]),
        .R(minusOp_0));
  FDRE \prev_state_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(curr_state_ff_1[2]),
        .Q(prev_state_ff[2]),
        .R(minusOp_0));
  FDRE \prev_state_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\curr_state_ff_reg[3]_0 [1]),
        .Q(prev_state_ff[3]),
        .R(minusOp_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\req_addr_offset_ff0_inferred__0/i__carry_n_0 ,\req_addr_offset_ff0_inferred__0/i__carry_n_1 ,\req_addr_offset_ff0_inferred__0/i__carry_n_2 ,\req_addr_offset_ff0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,byte_index_ff[3],1'b0}),
        .O({\req_addr_offset_ff0_inferred__0/i__carry_n_4 ,\req_addr_offset_ff0_inferred__0/i__carry_n_5 ,\req_addr_offset_ff0_inferred__0/i__carry_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry_n_7 }),
        .S({byte_index_ff[5:4],i__carry_i_1__0_n_0,byte_index_ff[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry__0 
       (.CI(\req_addr_offset_ff0_inferred__0/i__carry_n_0 ),
        .CO({\req_addr_offset_ff0_inferred__0/i__carry__0_n_0 ,\req_addr_offset_ff0_inferred__0/i__carry__0_n_1 ,\req_addr_offset_ff0_inferred__0/i__carry__0_n_2 ,\req_addr_offset_ff0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\req_addr_offset_ff0_inferred__0/i__carry__0_n_4 ,\req_addr_offset_ff0_inferred__0/i__carry__0_n_5 ,\req_addr_offset_ff0_inferred__0/i__carry__0_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry__0_n_7 }),
        .S(byte_index_ff[9:6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry__1 
       (.CI(\req_addr_offset_ff0_inferred__0/i__carry__0_n_0 ),
        .CO({\req_addr_offset_ff0_inferred__0/i__carry__1_n_0 ,\req_addr_offset_ff0_inferred__0/i__carry__1_n_1 ,\req_addr_offset_ff0_inferred__0/i__carry__1_n_2 ,\req_addr_offset_ff0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\req_addr_offset_ff0_inferred__0/i__carry__1_n_4 ,\req_addr_offset_ff0_inferred__0/i__carry__1_n_5 ,\req_addr_offset_ff0_inferred__0/i__carry__1_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry__1_n_7 }),
        .S(byte_index_ff[13:10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry__2 
       (.CI(\req_addr_offset_ff0_inferred__0/i__carry__1_n_0 ),
        .CO({\req_addr_offset_ff0_inferred__0/i__carry__2_n_0 ,\req_addr_offset_ff0_inferred__0/i__carry__2_n_1 ,\req_addr_offset_ff0_inferred__0/i__carry__2_n_2 ,\req_addr_offset_ff0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\req_addr_offset_ff0_inferred__0/i__carry__2_n_4 ,\req_addr_offset_ff0_inferred__0/i__carry__2_n_5 ,\req_addr_offset_ff0_inferred__0/i__carry__2_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry__2_n_7 }),
        .S(byte_index_ff[17:14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry__3 
       (.CI(\req_addr_offset_ff0_inferred__0/i__carry__2_n_0 ),
        .CO({\req_addr_offset_ff0_inferred__0/i__carry__3_n_0 ,\req_addr_offset_ff0_inferred__0/i__carry__3_n_1 ,\req_addr_offset_ff0_inferred__0/i__carry__3_n_2 ,\req_addr_offset_ff0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\req_addr_offset_ff0_inferred__0/i__carry__3_n_4 ,\req_addr_offset_ff0_inferred__0/i__carry__3_n_5 ,\req_addr_offset_ff0_inferred__0/i__carry__3_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry__3_n_7 }),
        .S(byte_index_ff[21:18]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry__4 
       (.CI(\req_addr_offset_ff0_inferred__0/i__carry__3_n_0 ),
        .CO({\req_addr_offset_ff0_inferred__0/i__carry__4_n_0 ,\req_addr_offset_ff0_inferred__0/i__carry__4_n_1 ,\req_addr_offset_ff0_inferred__0/i__carry__4_n_2 ,\req_addr_offset_ff0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\req_addr_offset_ff0_inferred__0/i__carry__4_n_4 ,\req_addr_offset_ff0_inferred__0/i__carry__4_n_5 ,\req_addr_offset_ff0_inferred__0/i__carry__4_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry__4_n_7 }),
        .S(byte_index_ff[25:22]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry__5 
       (.CI(\req_addr_offset_ff0_inferred__0/i__carry__4_n_0 ),
        .CO({\req_addr_offset_ff0_inferred__0/i__carry__5_n_0 ,\req_addr_offset_ff0_inferred__0/i__carry__5_n_1 ,\req_addr_offset_ff0_inferred__0/i__carry__5_n_2 ,\req_addr_offset_ff0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\req_addr_offset_ff0_inferred__0/i__carry__5_n_4 ,\req_addr_offset_ff0_inferred__0/i__carry__5_n_5 ,\req_addr_offset_ff0_inferred__0/i__carry__5_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry__5_n_7 }),
        .S(byte_index_ff[29:26]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \req_addr_offset_ff0_inferred__0/i__carry__6 
       (.CI(\req_addr_offset_ff0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_req_addr_offset_ff0_inferred__0/i__carry__6_CO_UNCONNECTED [3:1],\req_addr_offset_ff0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_req_addr_offset_ff0_inferred__0/i__carry__6_O_UNCONNECTED [3:2],\req_addr_offset_ff0_inferred__0/i__carry__6_n_6 ,\req_addr_offset_ff0_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,1'b0,byte_index_ff[31:30]}));
  LUT6 #(
    .INIT(64'hAA8AAA8000000000)) 
    \req_addr_offset_ff[2]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\req_addr_offset_ff0_inferred__0/i__carry_n_7 ),
        .I2(req_addr_offset_ff0),
        .I3(\req_addr_offset_ff[2]_i_2_n_0 ),
        .I4(\req_addr_offset_ff_reg_n_0_[2] ),
        .I5(\req_addr_offset_ff[2]_i_3_n_0 ),
        .O(\req_addr_offset_ff[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \req_addr_offset_ff[2]_i_2 
       (.I0(curr_state_ff_1[1]),
        .I1(curr_state_ff_1[2]),
        .I2(\curr_state_ff_reg[3]_0 [1]),
        .I3(\curr_state_ff_reg[3]_0 [0]),
        .O(\req_addr_offset_ff[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \req_addr_offset_ff[2]_i_3 
       (.I0(\curr_state_ff_reg[3]_0 [1]),
        .I1(\curr_state_ff_reg[3]_0 [0]),
        .I2(curr_state_ff_1[2]),
        .I3(curr_state_ff_1[1]),
        .O(\req_addr_offset_ff[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \req_addr_offset_ff[31]_i_1 
       (.I0(curr_state_ff_1[2]),
        .I1(\curr_state_ff_reg[3]_0 [0]),
        .I2(\curr_state_ff_reg[3]_0 [1]),
        .I3(s_axi_aresetn),
        .O(\req_addr_offset_ff[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0018)) 
    \req_addr_offset_ff[31]_i_2 
       (.I0(\curr_state_ff_reg[3]_0 [1]),
        .I1(curr_state_ff_1[1]),
        .I2(curr_state_ff_1[2]),
        .I3(\curr_state_ff_reg[3]_0 [0]),
        .O(req_addr_offset_ff0));
  FDRE \req_addr_offset_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(byte_index_ff[0]),
        .Q(\req_addr_offset_ff_reg_n_0_[0] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__1_n_7 ),
        .Q(\req_addr_offset_ff_reg_n_0_[10] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__1_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[11] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__1_n_5 ),
        .Q(\req_addr_offset_ff_reg_n_0_[12] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__1_n_4 ),
        .Q(\req_addr_offset_ff_reg_n_0_[13] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__2_n_7 ),
        .Q(\req_addr_offset_ff_reg_n_0_[14] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__2_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[15] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__2_n_5 ),
        .Q(\req_addr_offset_ff_reg_n_0_[16] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__2_n_4 ),
        .Q(\req_addr_offset_ff_reg_n_0_[17] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__3_n_7 ),
        .Q(\req_addr_offset_ff_reg_n_0_[18] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__3_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[19] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(byte_index_ff[1]),
        .Q(\req_addr_offset_ff_reg_n_0_[1] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__3_n_5 ),
        .Q(\req_addr_offset_ff_reg_n_0_[20] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__3_n_4 ),
        .Q(\req_addr_offset_ff_reg_n_0_[21] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__4_n_7 ),
        .Q(\req_addr_offset_ff_reg_n_0_[22] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__4_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[23] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__4_n_5 ),
        .Q(\req_addr_offset_ff_reg_n_0_[24] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__4_n_4 ),
        .Q(\req_addr_offset_ff_reg_n_0_[25] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__5_n_7 ),
        .Q(\req_addr_offset_ff_reg_n_0_[26] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__5_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[27] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__5_n_5 ),
        .Q(\req_addr_offset_ff_reg_n_0_[28] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__5_n_4 ),
        .Q(\req_addr_offset_ff_reg_n_0_[29] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_addr_offset_ff[2]_i_1_n_0 ),
        .Q(\req_addr_offset_ff_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \req_addr_offset_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__6_n_7 ),
        .Q(\req_addr_offset_ff_reg_n_0_[30] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__6_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[31] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[3] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry_n_5 ),
        .Q(\req_addr_offset_ff_reg_n_0_[4] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry_n_4 ),
        .Q(\req_addr_offset_ff_reg_n_0_[5] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__0_n_7 ),
        .Q(\req_addr_offset_ff_reg_n_0_[6] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__0_n_6 ),
        .Q(\req_addr_offset_ff_reg_n_0_[7] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__0_n_5 ),
        .Q(\req_addr_offset_ff_reg_n_0_[8] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  FDRE \req_addr_offset_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(req_addr_offset_ff0),
        .D(\req_addr_offset_ff0_inferred__0/i__carry__0_n_4 ),
        .Q(\req_addr_offset_ff_reg_n_0_[9] ),
        .R(\req_addr_offset_ff[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry
       (.CI(1'b0),
        .CO({sample_index_ff0_carry_n_0,sample_index_ff0_carry_n_1,sample_index_ff0_carry_n_2,sample_index_ff0_carry_n_3}),
        .CYINIT(\sample_index_ff_reg[0]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_index_ff0[4:1]),
        .S({\sample_index_ff_reg_n_0_[4] ,\sample_index_ff_reg_n_0_[3] ,\sample_index_ff_reg_n_0_[2] ,\sample_index_ff_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry__0
       (.CI(sample_index_ff0_carry_n_0),
        .CO({sample_index_ff0_carry__0_n_0,sample_index_ff0_carry__0_n_1,sample_index_ff0_carry__0_n_2,sample_index_ff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_index_ff0[8:5]),
        .S({\sample_index_ff_reg_n_0_[8] ,\sample_index_ff_reg_n_0_[7] ,\sample_index_ff_reg_n_0_[6] ,\sample_index_ff_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry__1
       (.CI(sample_index_ff0_carry__0_n_0),
        .CO({sample_index_ff0_carry__1_n_0,sample_index_ff0_carry__1_n_1,sample_index_ff0_carry__1_n_2,sample_index_ff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_index_ff0[12:9]),
        .S({\sample_index_ff_reg_n_0_[12] ,\sample_index_ff_reg_n_0_[11] ,\sample_index_ff_reg_n_0_[10] ,\sample_index_ff_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry__2
       (.CI(sample_index_ff0_carry__1_n_0),
        .CO({sample_index_ff0_carry__2_n_0,sample_index_ff0_carry__2_n_1,sample_index_ff0_carry__2_n_2,sample_index_ff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_index_ff0[16:13]),
        .S({\sample_index_ff_reg_n_0_[16] ,\sample_index_ff_reg_n_0_[15] ,\sample_index_ff_reg_n_0_[14] ,\sample_index_ff_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry__3
       (.CI(sample_index_ff0_carry__2_n_0),
        .CO({sample_index_ff0_carry__3_n_0,sample_index_ff0_carry__3_n_1,sample_index_ff0_carry__3_n_2,sample_index_ff0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_index_ff0[20:17]),
        .S({\sample_index_ff_reg_n_0_[20] ,\sample_index_ff_reg_n_0_[19] ,\sample_index_ff_reg_n_0_[18] ,\sample_index_ff_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry__4
       (.CI(sample_index_ff0_carry__3_n_0),
        .CO({sample_index_ff0_carry__4_n_0,sample_index_ff0_carry__4_n_1,sample_index_ff0_carry__4_n_2,sample_index_ff0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_index_ff0[24:21]),
        .S({\sample_index_ff_reg_n_0_[24] ,\sample_index_ff_reg_n_0_[23] ,\sample_index_ff_reg_n_0_[22] ,\sample_index_ff_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry__5
       (.CI(sample_index_ff0_carry__4_n_0),
        .CO({sample_index_ff0_carry__5_n_0,sample_index_ff0_carry__5_n_1,sample_index_ff0_carry__5_n_2,sample_index_ff0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_index_ff0[28:25]),
        .S({\sample_index_ff_reg_n_0_[28] ,\sample_index_ff_reg_n_0_[27] ,\sample_index_ff_reg_n_0_[26] ,\sample_index_ff_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_index_ff0_carry__6
       (.CI(sample_index_ff0_carry__5_n_0),
        .CO({NLW_sample_index_ff0_carry__6_CO_UNCONNECTED[3:2],sample_index_ff0_carry__6_n_2,sample_index_ff0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sample_index_ff0_carry__6_O_UNCONNECTED[3],sample_index_ff0[31:29]}),
        .S({1'b0,\sample_index_ff_reg_n_0_[31] ,\sample_index_ff_reg_n_0_[30] ,\sample_index_ff_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \sample_index_ff[0]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(\sample_index_ff_reg[0]_0 ),
        .O(\sample_index_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[10]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[10]),
        .O(\sample_index_ff[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[11]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[11]),
        .O(\sample_index_ff[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[12]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[12]),
        .O(\sample_index_ff[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[13]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[13]),
        .O(\sample_index_ff[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[14]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[14]),
        .O(\sample_index_ff[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[15]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[15]),
        .O(\sample_index_ff[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[16]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[16]),
        .O(\sample_index_ff[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[17]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[17]),
        .O(\sample_index_ff[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[18]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[18]),
        .O(\sample_index_ff[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[19]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[19]),
        .O(\sample_index_ff[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[1]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[1]),
        .O(\sample_index_ff[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[20]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[20]),
        .O(\sample_index_ff[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[21]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[21]),
        .O(\sample_index_ff[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[22]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[22]),
        .O(\sample_index_ff[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[23]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[23]),
        .O(\sample_index_ff[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[24]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[24]),
        .O(\sample_index_ff[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[25]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[25]),
        .O(\sample_index_ff[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[26]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[26]),
        .O(\sample_index_ff[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[27]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[27]),
        .O(\sample_index_ff[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[28]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[28]),
        .O(\sample_index_ff[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[29]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[29]),
        .O(\sample_index_ff[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[2]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[2]),
        .O(\sample_index_ff[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[30]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[30]),
        .O(\sample_index_ff[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080808080808085D)) 
    \sample_index_ff[31]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(curr_state_ff_1[1]),
        .I4(curr_state_ff_1[2]),
        .I5(\curr_state_ff_reg[3]_0 [1]),
        .O(byte_index_ff_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[31]_i_2 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[31]),
        .O(\sample_index_ff[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[3]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[3]),
        .O(\sample_index_ff[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[4]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[4]),
        .O(\sample_index_ff[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[5]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[5]),
        .O(\sample_index_ff[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[6]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[6]),
        .O(\sample_index_ff[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[7]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[7]),
        .O(\sample_index_ff[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[8]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[8]),
        .O(\sample_index_ff[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \sample_index_ff[9]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(\curr_state_ff_reg[3]_1 ),
        .I2(last_sample),
        .I3(sample_index_ff0[9]),
        .O(\sample_index_ff[9]_i_1_n_0 ));
  FDRE \sample_index_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[0]_i_1_n_0 ),
        .Q(\sample_index_ff_reg[0]_0 ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[10]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[10] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[11]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[11] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[12]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[12] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[13]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[13] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[14]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[14] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[15]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[15] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[16]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[16] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[17]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[17] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[18]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[18] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[19]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[19] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[1]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[1] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[20]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[20] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[21]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[21] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[22]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[22] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[23]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[23] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[24]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[24] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[25]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[25] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[26]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[26] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[27]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[27] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[28]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[28] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[29]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[29] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[2]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[2] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[30]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[30] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[31]_i_2_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[31] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[3]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[3] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[4]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[4] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[5]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[5] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[6]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[6] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[7]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[7] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[8]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[8] ),
        .R(minusOp_0));
  FDRE \sample_index_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(byte_index_ff_0),
        .D(\sample_index_ff[9]_i_1_n_0 ),
        .Q(\sample_index_ff_reg_n_0_[9] ),
        .R(minusOp_0));
  LUT4 #(
    .INIT(16'h0010)) 
    sample_period_cycles_ff
       (.I0(prev_state_ff[3]),
        .I1(prev_state_ff[1]),
        .I2(prev_state_ff[2]),
        .I3(prev_state_ff[0]),
        .O(CEM));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    scaled_sample_ff_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_scaled_sample_ff_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({scaled_sample_ff_reg_1[15],scaled_sample_ff_reg_1[15],scaled_sample_ff_reg_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_scaled_sample_ff_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_scaled_sample_ff_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_scaled_sample_ff_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(sample_ff),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(Q),
        .CEB2(sound_addr_ff0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(s_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_scaled_sample_ff_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_scaled_sample_ff_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_scaled_sample_ff_reg_P_UNCONNECTED[47:32],scaled_sample_ff_reg_0}),
        .PATTERNBDETECT(NLW_scaled_sample_ff_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_scaled_sample_ff_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_scaled_sample_ff_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(minusOp_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(minusOp_0),
        .UNDERFLOW(NLW_scaled_sample_ff_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h8000)) 
    scaled_sample_ff_reg_i_1
       (.I0(curr_state_ff_1[1]),
        .I1(curr_state_ff_1[2]),
        .I2(s_axi_aresetn),
        .I3(\curr_state_ff_reg[1]_0 ),
        .O(sample_ff));
  LUT5 #(
    .INIT(32'h00000002)) 
    scaled_sample_ff_reg_i_2
       (.I0(s_rv_valid),
        .I1(curr_state_ff_1[1]),
        .I2(curr_state_ff_1[2]),
        .I3(\curr_state_ff_reg[3]_0 [0]),
        .I4(\curr_state_ff_reg[3]_0 [1]),
        .O(sound_addr_ff0));
  LUT4 #(
    .INIT(16'h4000)) 
    scaled_sample_ff_reg_i_3
       (.I0(\curr_state_ff_reg[3]_0 [1]),
        .I1(\curr_state_ff_reg[3]_0 [0]),
        .I2(curr_state_ff_1[2]),
        .I3(curr_state_ff_1[1]),
        .O(CEP));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \sleep_counter_ff[0]_i_1 
       (.I0(\curr_state_ff_reg[3]_0 [0]),
        .I1(curr_state_ff_1[2]),
        .I2(curr_state_ff_1[1]),
        .I3(\curr_state_ff_reg[3]_0 [1]),
        .O(\sleep_counter_ff[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sleep_counter_ff[0]_i_3 
       (.I0(sleep_counter_ff_reg[0]),
        .O(\sleep_counter_ff[0]_i_3_n_0 ));
  FDRE \sleep_counter_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[0]_i_2_n_7 ),
        .Q(sleep_counter_ff_reg[0]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sleep_counter_ff_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sleep_counter_ff_reg[0]_i_2_n_0 ,\sleep_counter_ff_reg[0]_i_2_n_1 ,\sleep_counter_ff_reg[0]_i_2_n_2 ,\sleep_counter_ff_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sleep_counter_ff_reg[0]_i_2_n_4 ,\sleep_counter_ff_reg[0]_i_2_n_5 ,\sleep_counter_ff_reg[0]_i_2_n_6 ,\sleep_counter_ff_reg[0]_i_2_n_7 }),
        .S({sleep_counter_ff_reg[3:1],\sleep_counter_ff[0]_i_3_n_0 }));
  FDRE \sleep_counter_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[8]_i_1_n_5 ),
        .Q(sleep_counter_ff_reg[10]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[8]_i_1_n_4 ),
        .Q(sleep_counter_ff_reg[11]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[12]_i_1_n_7 ),
        .Q(sleep_counter_ff_reg[12]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sleep_counter_ff_reg[12]_i_1 
       (.CI(\sleep_counter_ff_reg[8]_i_1_n_0 ),
        .CO({\NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED [3:1],\sleep_counter_ff_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED [3:2],\sleep_counter_ff_reg[12]_i_1_n_6 ,\sleep_counter_ff_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,sleep_counter_ff_reg[13:12]}));
  FDRE \sleep_counter_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[12]_i_1_n_6 ),
        .Q(sleep_counter_ff_reg[13]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[0]_i_2_n_6 ),
        .Q(sleep_counter_ff_reg[1]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[0]_i_2_n_5 ),
        .Q(sleep_counter_ff_reg[2]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[0]_i_2_n_4 ),
        .Q(sleep_counter_ff_reg[3]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[4]_i_1_n_7 ),
        .Q(sleep_counter_ff_reg[4]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sleep_counter_ff_reg[4]_i_1 
       (.CI(\sleep_counter_ff_reg[0]_i_2_n_0 ),
        .CO({\sleep_counter_ff_reg[4]_i_1_n_0 ,\sleep_counter_ff_reg[4]_i_1_n_1 ,\sleep_counter_ff_reg[4]_i_1_n_2 ,\sleep_counter_ff_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sleep_counter_ff_reg[4]_i_1_n_4 ,\sleep_counter_ff_reg[4]_i_1_n_5 ,\sleep_counter_ff_reg[4]_i_1_n_6 ,\sleep_counter_ff_reg[4]_i_1_n_7 }),
        .S(sleep_counter_ff_reg[7:4]));
  FDRE \sleep_counter_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[4]_i_1_n_6 ),
        .Q(sleep_counter_ff_reg[5]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[4]_i_1_n_5 ),
        .Q(sleep_counter_ff_reg[6]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[4]_i_1_n_4 ),
        .Q(sleep_counter_ff_reg[7]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sleep_counter_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
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
        .CE(1'b1),
        .D(\sleep_counter_ff_reg[8]_i_1_n_6 ),
        .Q(sleep_counter_ff_reg[9]),
        .R(\sleep_counter_ff[0]_i_1_n_0 ));
  FDRE \sound_addr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [0]),
        .Q(sound_addr_ff[0]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[10] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [10]),
        .Q(sound_addr_ff[10]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[11] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [11]),
        .Q(sound_addr_ff[11]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[12] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [12]),
        .Q(sound_addr_ff[12]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[13] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [13]),
        .Q(sound_addr_ff[13]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[14] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [14]),
        .Q(sound_addr_ff[14]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[15] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [15]),
        .Q(sound_addr_ff[15]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[16] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [16]),
        .Q(sound_addr_ff[16]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[17] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [17]),
        .Q(sound_addr_ff[17]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[18] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [18]),
        .Q(sound_addr_ff[18]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[19] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [19]),
        .Q(sound_addr_ff[19]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [1]),
        .Q(sound_addr_ff[1]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[20] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [20]),
        .Q(sound_addr_ff[20]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[21] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [21]),
        .Q(sound_addr_ff[21]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[22] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [22]),
        .Q(sound_addr_ff[22]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[23] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [23]),
        .Q(sound_addr_ff[23]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[24] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [24]),
        .Q(sound_addr_ff[24]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[25] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [25]),
        .Q(sound_addr_ff[25]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[26] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [26]),
        .Q(sound_addr_ff[26]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[27] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [27]),
        .Q(sound_addr_ff[27]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[28] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [28]),
        .Q(sound_addr_ff[28]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[29] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [29]),
        .Q(sound_addr_ff[29]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [2]),
        .Q(sound_addr_ff[2]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[30] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [30]),
        .Q(sound_addr_ff[30]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[31] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [31]),
        .Q(sound_addr_ff[31]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [3]),
        .Q(sound_addr_ff[3]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [4]),
        .Q(sound_addr_ff[4]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[5] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [5]),
        .Q(sound_addr_ff[5]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[6] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [6]),
        .Q(sound_addr_ff[6]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[7] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [7]),
        .Q(sound_addr_ff[7]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[8] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [8]),
        .Q(sound_addr_ff[8]),
        .R(minusOp_0));
  FDRE \sound_addr_ff_reg[9] 
       (.C(s_axi_aclk),
        .CE(sound_addr_ff0),
        .D(\sound_addr_ff_reg[31]_0 [9]),
        .Q(sound_addr_ff[9]),
        .R(minusOp_0));
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
