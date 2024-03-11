-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:audio_fetcher:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY audio_hw_platform_audio_fetcher_0_0 IS
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    m_axi_audio_out_aclk : IN STD_LOGIC;
    m_axi_audio_out_aresetn : IN STD_LOGIC;
    m_axi_audio_out_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_audio_out_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_audio_out_awvalid : OUT STD_LOGIC;
    m_axi_audio_out_awready : IN STD_LOGIC;
    m_axi_audio_out_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_audio_out_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_audio_out_wvalid : OUT STD_LOGIC;
    m_axi_audio_out_wready : IN STD_LOGIC;
    m_axi_audio_out_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_audio_out_bvalid : IN STD_LOGIC;
    m_axi_audio_out_bready : OUT STD_LOGIC;
    m_axi_audio_out_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_audio_out_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_audio_out_arvalid : OUT STD_LOGIC;
    m_axi_audio_out_arready : IN STD_LOGIC;
    m_axi_audio_out_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_audio_out_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_audio_out_rvalid : IN STD_LOGIC;
    m_axi_audio_out_rready : OUT STD_LOGIC;
    m_axi_dma_aclk : IN STD_LOGIC;
    m_axi_dma_aresetn : IN STD_LOGIC;
    m_axi_dma_awid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_dma_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_dma_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_dma_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_awlock : OUT STD_LOGIC;
    m_axi_dma_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_dma_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_dma_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_dma_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_dma_awvalid : OUT STD_LOGIC;
    m_axi_dma_awready : IN STD_LOGIC;
    m_axi_dma_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_dma_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_dma_wlast : OUT STD_LOGIC;
    m_axi_dma_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_dma_wvalid : OUT STD_LOGIC;
    m_axi_dma_wready : IN STD_LOGIC;
    m_axi_dma_bid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_dma_bvalid : IN STD_LOGIC;
    m_axi_dma_bready : OUT STD_LOGIC;
    m_axi_dma_arid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_dma_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_dma_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_dma_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_arlock : OUT STD_LOGIC;
    m_axi_dma_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_dma_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_dma_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_dma_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_dma_arvalid : OUT STD_LOGIC;
    m_axi_dma_arready : IN STD_LOGIC;
    m_axi_dma_rid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_dma_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_dma_rlast : IN STD_LOGIC;
    m_axi_dma_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_dma_rvalid : IN STD_LOGIC;
    m_axi_dma_rready : OUT STD_LOGIC;
    debug_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END audio_hw_platform_audio_fetcher_0_0;

ARCHITECTURE audio_hw_platform_audio_fetcher_0_0_arch OF audio_hw_platform_audio_fetcher_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF audio_hw_platform_audio_fetcher_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT audio_fetcher IS
    GENERIC (
      AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_M_AXI_AUDIO_OUT_ADDR_WIDTH : INTEGER;
      C_M_AXI_DMA_BURST_LEN : INTEGER;
      C_M_AXI_DMA_ID_WIDTH : INTEGER;
      C_M_AXI_DMA_ADDR_WIDTH : INTEGER;
      C_M_AXI_DMA_AWUSER_WIDTH : INTEGER;
      C_M_AXI_DMA_ARUSER_WIDTH : INTEGER;
      C_M_AXI_DMA_WUSER_WIDTH : INTEGER;
      C_M_AXI_DMA_RUSER_WIDTH : INTEGER;
      C_M_AXI_DMA_BUSER_WIDTH : INTEGER
    );
    PORT (
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      m_axi_audio_out_aclk : IN STD_LOGIC;
      m_axi_audio_out_aresetn : IN STD_LOGIC;
      m_axi_audio_out_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_audio_out_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_audio_out_awvalid : OUT STD_LOGIC;
      m_axi_audio_out_awready : IN STD_LOGIC;
      m_axi_audio_out_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_audio_out_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_audio_out_wvalid : OUT STD_LOGIC;
      m_axi_audio_out_wready : IN STD_LOGIC;
      m_axi_audio_out_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_audio_out_bvalid : IN STD_LOGIC;
      m_axi_audio_out_bready : OUT STD_LOGIC;
      m_axi_audio_out_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_audio_out_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_audio_out_arvalid : OUT STD_LOGIC;
      m_axi_audio_out_arready : IN STD_LOGIC;
      m_axi_audio_out_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_audio_out_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_audio_out_rvalid : IN STD_LOGIC;
      m_axi_audio_out_rready : OUT STD_LOGIC;
      m_axi_dma_aclk : IN STD_LOGIC;
      m_axi_dma_aresetn : IN STD_LOGIC;
      m_axi_dma_awid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_dma_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_dma_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_dma_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_awlock : OUT STD_LOGIC;
      m_axi_dma_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_dma_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_dma_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_dma_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_dma_awvalid : OUT STD_LOGIC;
      m_axi_dma_awready : IN STD_LOGIC;
      m_axi_dma_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_dma_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_dma_wlast : OUT STD_LOGIC;
      m_axi_dma_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_dma_wvalid : OUT STD_LOGIC;
      m_axi_dma_wready : IN STD_LOGIC;
      m_axi_dma_bid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_dma_bvalid : IN STD_LOGIC;
      m_axi_dma_bready : OUT STD_LOGIC;
      m_axi_dma_arid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_dma_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_dma_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_dma_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_arlock : OUT STD_LOGIC;
      m_axi_dma_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_dma_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_dma_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_dma_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_dma_arvalid : OUT STD_LOGIC;
      m_axi_dma_arready : IN STD_LOGIC;
      m_axi_dma_rid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_dma_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_dma_rlast : IN STD_LOGIC;
      m_axi_dma_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_dma_rvalid : IN STD_LOGIC;
      m_axi_dma_rready : OUT STD_LOGIC;
      debug_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT audio_fetcher;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF audio_hw_platform_audio_fetcher_0_0_arch: ARCHITECTURE IS "audio_fetcher,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF audio_hw_platform_audio_fetcher_0_0_arch : ARCHITECTURE IS "audio_hw_platform_audio_fetcher_0_0,audio_fetcher,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF audio_hw_platform_audio_fetcher_0_0_arch: ARCHITECTURE IS "audio_hw_platform_audio_fetcher_0_0,audio_fetcher,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=audio_fetcher,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=4,C_M_AXI_AUDIO_OUT_ADDR_WIDTH=32,C_M_AXI_DMA_BURST_LEN=1,C_M_AXI_DMA_ID_WIDTH=2,C_M_AXI_DMA_ADDR_WIDTH=32,C_M_AXI_DMA_AWUSER_WIDTH=1,C_M_AXI_DMA_ARUSER_WIDTH=1,C_M_AXI_DMA_WUSER_WIDTH=1,C_M_AXI_DMA_RUSER_WIDTH=1,C_M_AXI_DMA_BUSER_WIDTH=1}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF audio_hw_platform_audio_fetcher_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma RID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma BID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_dma_awid: SIGNAL IS "XIL_INTERFACENAME m_axi_dma, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_" & 
"READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_dma AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_dma_aresetn: SIGNAL IS "XIL_INTERFACENAME m_axi_dma_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m_axi_dma_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_dma_aclk: SIGNAL IS "XIL_INTERFACENAME m_axi_dma_aclk, ASSOCIATED_BUSIF m_axi_dma, ASSOCIATED_RESET m_axi_dma_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_dma_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_axi_dma_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_audio_out_awaddr: SIGNAL IS "XIL_INTERFACENAME m_axi_audio_out, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CL" & 
"K0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_audio_out_aresetn: SIGNAL IS "XIL_INTERFACENAME m_axi_audio_out_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m_axi_audio_out_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_audio_out_aclk: SIGNAL IS "XIL_INTERFACENAME m_axi_audio_out_aclk, ASSOCIATED_BUSIF m_axi_audio_out, ASSOCIATED_RESET m_axi_audio_out_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_audio_out_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_axi_audio_out_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_REA" & 
"D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk: SIGNAL IS "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
BEGIN
  U0 : audio_fetcher
    GENERIC MAP (
      AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 4,
      C_M_AXI_AUDIO_OUT_ADDR_WIDTH => 32,
      C_M_AXI_DMA_BURST_LEN => 1,
      C_M_AXI_DMA_ID_WIDTH => 2,
      C_M_AXI_DMA_ADDR_WIDTH => 32,
      C_M_AXI_DMA_AWUSER_WIDTH => 1,
      C_M_AXI_DMA_ARUSER_WIDTH => 1,
      C_M_AXI_DMA_WUSER_WIDTH => 1,
      C_M_AXI_DMA_RUSER_WIDTH => 1,
      C_M_AXI_DMA_BUSER_WIDTH => 1
    )
    PORT MAP (
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awprot => s_axi_awprot,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arprot => s_axi_arprot,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      m_axi_audio_out_aclk => m_axi_audio_out_aclk,
      m_axi_audio_out_aresetn => m_axi_audio_out_aresetn,
      m_axi_audio_out_awaddr => m_axi_audio_out_awaddr,
      m_axi_audio_out_awprot => m_axi_audio_out_awprot,
      m_axi_audio_out_awvalid => m_axi_audio_out_awvalid,
      m_axi_audio_out_awready => m_axi_audio_out_awready,
      m_axi_audio_out_wdata => m_axi_audio_out_wdata,
      m_axi_audio_out_wstrb => m_axi_audio_out_wstrb,
      m_axi_audio_out_wvalid => m_axi_audio_out_wvalid,
      m_axi_audio_out_wready => m_axi_audio_out_wready,
      m_axi_audio_out_bresp => m_axi_audio_out_bresp,
      m_axi_audio_out_bvalid => m_axi_audio_out_bvalid,
      m_axi_audio_out_bready => m_axi_audio_out_bready,
      m_axi_audio_out_araddr => m_axi_audio_out_araddr,
      m_axi_audio_out_arprot => m_axi_audio_out_arprot,
      m_axi_audio_out_arvalid => m_axi_audio_out_arvalid,
      m_axi_audio_out_arready => m_axi_audio_out_arready,
      m_axi_audio_out_rdata => m_axi_audio_out_rdata,
      m_axi_audio_out_rresp => m_axi_audio_out_rresp,
      m_axi_audio_out_rvalid => m_axi_audio_out_rvalid,
      m_axi_audio_out_rready => m_axi_audio_out_rready,
      m_axi_dma_aclk => m_axi_dma_aclk,
      m_axi_dma_aresetn => m_axi_dma_aresetn,
      m_axi_dma_awid => m_axi_dma_awid,
      m_axi_dma_awaddr => m_axi_dma_awaddr,
      m_axi_dma_awlen => m_axi_dma_awlen,
      m_axi_dma_awsize => m_axi_dma_awsize,
      m_axi_dma_awburst => m_axi_dma_awburst,
      m_axi_dma_awlock => m_axi_dma_awlock,
      m_axi_dma_awcache => m_axi_dma_awcache,
      m_axi_dma_awprot => m_axi_dma_awprot,
      m_axi_dma_awqos => m_axi_dma_awqos,
      m_axi_dma_awuser => m_axi_dma_awuser,
      m_axi_dma_awvalid => m_axi_dma_awvalid,
      m_axi_dma_awready => m_axi_dma_awready,
      m_axi_dma_wdata => m_axi_dma_wdata,
      m_axi_dma_wstrb => m_axi_dma_wstrb,
      m_axi_dma_wlast => m_axi_dma_wlast,
      m_axi_dma_wuser => m_axi_dma_wuser,
      m_axi_dma_wvalid => m_axi_dma_wvalid,
      m_axi_dma_wready => m_axi_dma_wready,
      m_axi_dma_bid => m_axi_dma_bid,
      m_axi_dma_bresp => m_axi_dma_bresp,
      m_axi_dma_buser => m_axi_dma_buser,
      m_axi_dma_bvalid => m_axi_dma_bvalid,
      m_axi_dma_bready => m_axi_dma_bready,
      m_axi_dma_arid => m_axi_dma_arid,
      m_axi_dma_araddr => m_axi_dma_araddr,
      m_axi_dma_arlen => m_axi_dma_arlen,
      m_axi_dma_arsize => m_axi_dma_arsize,
      m_axi_dma_arburst => m_axi_dma_arburst,
      m_axi_dma_arlock => m_axi_dma_arlock,
      m_axi_dma_arcache => m_axi_dma_arcache,
      m_axi_dma_arprot => m_axi_dma_arprot,
      m_axi_dma_arqos => m_axi_dma_arqos,
      m_axi_dma_aruser => m_axi_dma_aruser,
      m_axi_dma_arvalid => m_axi_dma_arvalid,
      m_axi_dma_arready => m_axi_dma_arready,
      m_axi_dma_rid => m_axi_dma_rid,
      m_axi_dma_rdata => m_axi_dma_rdata,
      m_axi_dma_rresp => m_axi_dma_rresp,
      m_axi_dma_rlast => m_axi_dma_rlast,
      m_axi_dma_ruser => m_axi_dma_ruser,
      m_axi_dma_rvalid => m_axi_dma_rvalid,
      m_axi_dma_rready => m_axi_dma_rready,
      debug_data_o => debug_data_o
    );
END audio_hw_platform_audio_fetcher_0_0_arch;
