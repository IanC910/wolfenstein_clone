-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar 17 23:10:16 2024
-- Host        : IC-VivoBook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform.gen/sources_1/bd/wolfenstein_platform/ip/wolfenstein_platform_audio_fetcher_0_1/wolfenstein_platform_audio_fetcher_0_1_stub.vhdl
-- Design      : wolfenstein_platform_audio_fetcher_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wolfenstein_platform_audio_fetcher_0_1 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_audio_out_aclk : in STD_LOGIC;
    m_axi_audio_out_aresetn : in STD_LOGIC;
    m_axi_audio_out_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_audio_out_awvalid : out STD_LOGIC;
    m_axi_audio_out_awready : in STD_LOGIC;
    m_axi_audio_out_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_audio_out_wvalid : out STD_LOGIC;
    m_axi_audio_out_wready : in STD_LOGIC;
    m_axi_audio_out_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_bvalid : in STD_LOGIC;
    m_axi_audio_out_bready : out STD_LOGIC;
    m_axi_audio_out_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_audio_out_arvalid : out STD_LOGIC;
    m_axi_audio_out_arready : in STD_LOGIC;
    m_axi_audio_out_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_rvalid : in STD_LOGIC;
    m_axi_audio_out_rready : out STD_LOGIC;
    m_axi_dma_aclk : in STD_LOGIC;
    m_axi_dma_aresetn : in STD_LOGIC;
    m_axi_dma_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_dma_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_dma_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_awlock : out STD_LOGIC;
    m_axi_dma_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_dma_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_dma_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_dma_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_dma_awvalid : out STD_LOGIC;
    m_axi_dma_awready : in STD_LOGIC;
    m_axi_dma_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_dma_wlast : out STD_LOGIC;
    m_axi_dma_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_dma_wvalid : out STD_LOGIC;
    m_axi_dma_wready : in STD_LOGIC;
    m_axi_dma_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_dma_bvalid : in STD_LOGIC;
    m_axi_dma_bready : out STD_LOGIC;
    m_axi_dma_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_dma_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_dma_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_arlock : out STD_LOGIC;
    m_axi_dma_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_dma_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_dma_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_dma_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_dma_arvalid : out STD_LOGIC;
    m_axi_dma_arready : in STD_LOGIC;
    m_axi_dma_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_dma_rlast : in STD_LOGIC;
    m_axi_dma_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_dma_rvalid : in STD_LOGIC;
    m_axi_dma_rready : out STD_LOGIC;
    debug_data_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end wolfenstein_platform_audio_fetcher_0_1;

architecture stub of wolfenstein_platform_audio_fetcher_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,m_axi_audio_out_aclk,m_axi_audio_out_aresetn,m_axi_audio_out_awaddr[31:0],m_axi_audio_out_awprot[2:0],m_axi_audio_out_awvalid,m_axi_audio_out_awready,m_axi_audio_out_wdata[31:0],m_axi_audio_out_wstrb[3:0],m_axi_audio_out_wvalid,m_axi_audio_out_wready,m_axi_audio_out_bresp[1:0],m_axi_audio_out_bvalid,m_axi_audio_out_bready,m_axi_audio_out_araddr[31:0],m_axi_audio_out_arprot[2:0],m_axi_audio_out_arvalid,m_axi_audio_out_arready,m_axi_audio_out_rdata[31:0],m_axi_audio_out_rresp[1:0],m_axi_audio_out_rvalid,m_axi_audio_out_rready,m_axi_dma_aclk,m_axi_dma_aresetn,m_axi_dma_awid[1:0],m_axi_dma_awaddr[31:0],m_axi_dma_awlen[7:0],m_axi_dma_awsize[2:0],m_axi_dma_awburst[1:0],m_axi_dma_awlock,m_axi_dma_awcache[3:0],m_axi_dma_awprot[2:0],m_axi_dma_awqos[3:0],m_axi_dma_awuser[0:0],m_axi_dma_awvalid,m_axi_dma_awready,m_axi_dma_wdata[31:0],m_axi_dma_wstrb[3:0],m_axi_dma_wlast,m_axi_dma_wuser[0:0],m_axi_dma_wvalid,m_axi_dma_wready,m_axi_dma_bid[1:0],m_axi_dma_bresp[1:0],m_axi_dma_buser[0:0],m_axi_dma_bvalid,m_axi_dma_bready,m_axi_dma_arid[1:0],m_axi_dma_araddr[31:0],m_axi_dma_arlen[7:0],m_axi_dma_arsize[2:0],m_axi_dma_arburst[1:0],m_axi_dma_arlock,m_axi_dma_arcache[3:0],m_axi_dma_arprot[2:0],m_axi_dma_arqos[3:0],m_axi_dma_aruser[0:0],m_axi_dma_arvalid,m_axi_dma_arready,m_axi_dma_rid[1:0],m_axi_dma_rdata[31:0],m_axi_dma_rresp[1:0],m_axi_dma_rlast,m_axi_dma_ruser[0:0],m_axi_dma_rvalid,m_axi_dma_rready,debug_data_o[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "audio_fetcher,Vivado 2020.2";
begin
end;
