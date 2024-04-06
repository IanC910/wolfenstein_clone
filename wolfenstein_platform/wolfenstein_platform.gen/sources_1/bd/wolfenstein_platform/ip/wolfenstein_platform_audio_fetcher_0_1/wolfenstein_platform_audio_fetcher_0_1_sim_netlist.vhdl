-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Apr  6 06:44:26 2024
-- Host        : IC-VivoBook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform.gen/sources_1/bd/wolfenstein_platform/ip/wolfenstein_platform_audio_fetcher_0_1/wolfenstein_platform_audio_fetcher_0_1_sim_netlist.vhdl
-- Design      : wolfenstein_platform_audio_fetcher_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_AUDIO_OUT is
  port (
    m_axi_audio_out_awvalid : out STD_LOGIC;
    curr_state_ff : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_wvalid : out STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[0]_0\ : out STD_LOGIC;
    m_axi_audio_out_bready : out STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[0]_1\ : out STD_LOGIC;
    m_axi_audio_out_awaddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    curr_state_ff_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_audio_out_bvalid : in STD_LOGIC;
    m_axi_audio_out_wready : in STD_LOGIC;
    m_axi_audio_out_awready : in STD_LOGIC;
    m_axi_audio_out_aresetn : in STD_LOGIC;
    m_axi_audio_out_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_AUDIO_OUT : entity is "audio_fetcher_M_AXI_AUDIO_OUT";
end wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_AUDIO_OUT;

architecture STRUCTURE of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_AUDIO_OUT is
  signal \FSM_sequential_curr_state_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_awaddr_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \^curr_state_ff\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[0]\ : label is "awvalid:01,wvalid:10,idle:00,bready:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[1]\ : label is "awvalid:01,wvalid:10,idle:00,bready:11";
  attribute SOFT_HLUTNM of \curr_player_state_ff[0]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \curr_player_state_ff[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \curr_player_state_ff[2]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axi_audio_out_awvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axi_audio_out_bready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axi_audio_out_wvalid_INST_0 : label is "soft_lutpair2";
begin
  curr_state_ff(1 downto 0) <= \^curr_state_ff\(1 downto 0);
\FSM_sequential_curr_state_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66260000"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \FSM_sequential_curr_state_ff[1]_i_2__0_n_0\,
      I2 => \^curr_state_ff\(1),
      I3 => m_axi_audio_out_wready,
      I4 => m_axi_audio_out_aresetn,
      O => \FSM_sequential_curr_state_ff[0]_i_1_n_0\
    );
\FSM_sequential_curr_state_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66A20000"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \FSM_sequential_curr_state_ff[1]_i_2__0_n_0\,
      I2 => m_axi_audio_out_wready,
      I3 => \^curr_state_ff\(0),
      I4 => m_axi_audio_out_aresetn,
      O => \FSM_sequential_curr_state_ff[1]_i_1_n_0\
    );
\FSM_sequential_curr_state_ff[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFAEFAAEAFAEAAA"
    )
        port map (
      I0 => E(0),
      I1 => m_axi_audio_out_bvalid,
      I2 => \^curr_state_ff\(1),
      I3 => \^curr_state_ff\(0),
      I4 => m_axi_audio_out_wready,
      I5 => m_axi_audio_out_awready,
      O => \FSM_sequential_curr_state_ff[1]_i_2__0_n_0\
    );
\FSM_sequential_curr_state_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state_ff[0]_i_1_n_0\,
      Q => \^curr_state_ff\(0),
      R => '0'
    );
\FSM_sequential_curr_state_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state_ff[1]_i_1_n_0\,
      Q => \^curr_state_ff\(1),
      R => '0'
    );
\axi_awaddr_ff[30]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_audio_out_aresetn,
      O => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_awaddr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => Q(0),
      Q => m_axi_audio_out_awaddr(0),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_awaddr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => '1',
      Q => m_axi_audio_out_awaddr(1),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(0),
      Q => m_axi_audio_out_wdata(0),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(10),
      Q => m_axi_audio_out_wdata(10),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(11),
      Q => m_axi_audio_out_wdata(11),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(12),
      Q => m_axi_audio_out_wdata(12),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(13),
      Q => m_axi_audio_out_wdata(13),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(14),
      Q => m_axi_audio_out_wdata(14),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(15),
      Q => m_axi_audio_out_wdata(15),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(16),
      Q => m_axi_audio_out_wdata(16),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(17),
      Q => m_axi_audio_out_wdata(17),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(18),
      Q => m_axi_audio_out_wdata(18),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(19),
      Q => m_axi_audio_out_wdata(19),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(1),
      Q => m_axi_audio_out_wdata(1),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(20),
      Q => m_axi_audio_out_wdata(20),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(21),
      Q => m_axi_audio_out_wdata(21),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(22),
      Q => m_axi_audio_out_wdata(22),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(23),
      Q => m_axi_audio_out_wdata(23),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(24),
      Q => m_axi_audio_out_wdata(24),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(25),
      Q => m_axi_audio_out_wdata(25),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(26),
      Q => m_axi_audio_out_wdata(26),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(27),
      Q => m_axi_audio_out_wdata(27),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(28),
      Q => m_axi_audio_out_wdata(28),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(29),
      Q => m_axi_audio_out_wdata(29),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(2),
      Q => m_axi_audio_out_wdata(2),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(30),
      Q => m_axi_audio_out_wdata(30),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(31),
      Q => m_axi_audio_out_wdata(31),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(3),
      Q => m_axi_audio_out_wdata(3),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(4),
      Q => m_axi_audio_out_wdata(4),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(5),
      Q => m_axi_audio_out_wdata(5),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(6),
      Q => m_axi_audio_out_wdata(6),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(7),
      Q => m_axi_audio_out_wdata(7),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(8),
      Q => m_axi_audio_out_wdata(8),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => E(0),
      D => D(9),
      Q => m_axi_audio_out_wdata(9),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\curr_player_state_ff[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \^curr_state_ff\(0),
      I2 => Q(1),
      O => \FSM_sequential_curr_state_ff_reg[1]_0\
    );
\curr_player_state_ff[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EFEFEF"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \^curr_state_ff\(1),
      I2 => Q(1),
      I3 => curr_state_ff_0(0),
      I4 => curr_state_ff_0(1),
      O => \FSM_sequential_curr_state_ff_reg[0]_0\
    );
\curr_player_state_ff[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \^curr_state_ff\(1),
      O => \FSM_sequential_curr_state_ff_reg[0]_1\
    );
m_axi_audio_out_awvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \^curr_state_ff\(1),
      O => m_axi_audio_out_awvalid
    );
m_axi_audio_out_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \^curr_state_ff\(1),
      O => m_axi_audio_out_bready
    );
m_axi_audio_out_wvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \^curr_state_ff\(0),
      O => m_axi_audio_out_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_DMA is
  port (
    m_axi_dma_arvalid : out STD_LOGIC;
    curr_state_ff : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_curr_state_ff_reg[0]_0\ : out STD_LOGIC;
    m_axi_dma_rready : out STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[0]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_curr_state_ff_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[0]_3\ : in STD_LOGIC;
    sample_ff0 : in STD_LOGIC;
    m_axi_dma_rvalid : in STD_LOGIC;
    m_axi_dma_arready : in STD_LOGIC;
    m_axi_dma_aresetn : in STD_LOGIC;
    m_axi_dma_aclk : in STD_LOGIC;
    m_axi_dma_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_araddr_ff_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_DMA : entity is "audio_fetcher_M_AXI_DMA";
end wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_DMA;

architecture STRUCTURE of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_DMA is
  signal \FSM_sequential_curr_state_ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rdata_ff0 : STD_LOGIC;
  signal \^curr_state_ff\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[1]_i_3\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[0]\ : label is "arvalid:01,rready:10,idle:00,returning:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[1]\ : label is "arvalid:01,rready:10,idle:00,returning:11";
  attribute SOFT_HLUTNM of \curr_player_state_ff[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of m_axi_dma_arvalid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axi_dma_rready_INST_0 : label is "soft_lutpair6";
begin
  curr_state_ff(1 downto 0) <= \^curr_state_ff\(1 downto 0);
\FSM_sequential_curr_state_ff[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66260000"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \FSM_sequential_curr_state_ff[1]_i_2_n_0\,
      I2 => \^curr_state_ff\(1),
      I3 => m_axi_dma_rvalid,
      I4 => m_axi_dma_aresetn,
      O => \FSM_sequential_curr_state_ff[0]_i_1__0_n_0\
    );
\FSM_sequential_curr_state_ff[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A620000"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \FSM_sequential_curr_state_ff[1]_i_2_n_0\,
      I2 => \^curr_state_ff\(0),
      I3 => m_axi_dma_rvalid,
      I4 => m_axi_dma_aresetn,
      O => \FSM_sequential_curr_state_ff[1]_i_1__0_n_0\
    );
\FSM_sequential_curr_state_ff[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEBEAABAA"
    )
        port map (
      I0 => \FSM_sequential_curr_state_ff[1]_i_3_n_0\,
      I1 => \^curr_state_ff\(0),
      I2 => \^curr_state_ff\(1),
      I3 => \FSM_sequential_curr_state_ff_reg[0]_2\,
      I4 => \FSM_sequential_curr_state_ff_reg[0]_3\,
      I5 => sample_ff0,
      O => \FSM_sequential_curr_state_ff[1]_i_2_n_0\
    );
\FSM_sequential_curr_state_ff[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => m_axi_dma_rvalid,
      I1 => \^curr_state_ff\(1),
      I2 => m_axi_dma_arready,
      I3 => \^curr_state_ff\(0),
      O => \FSM_sequential_curr_state_ff[1]_i_3_n_0\
    );
\FSM_sequential_curr_state_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state_ff[0]_i_1__0_n_0\,
      Q => \^curr_state_ff\(0),
      R => '0'
    );
\FSM_sequential_curr_state_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state_ff[1]_i_1__0_n_0\,
      Q => \^curr_state_ff\(1),
      R => '0'
    );
\axi_araddr_ff[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_dma_aresetn,
      O => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \^curr_state_ff\(1),
      O => \FSM_sequential_curr_state_ff_reg[0]_1\
    );
\axi_araddr_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(0),
      Q => m_axi_dma_araddr(0),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(10),
      Q => m_axi_dma_araddr(10),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(11),
      Q => m_axi_dma_araddr(11),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(12),
      Q => m_axi_dma_araddr(12),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(13),
      Q => m_axi_dma_araddr(13),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(14),
      Q => m_axi_dma_araddr(14),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(15),
      Q => m_axi_dma_araddr(15),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(16),
      Q => m_axi_dma_araddr(16),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(17),
      Q => m_axi_dma_araddr(17),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(18),
      Q => m_axi_dma_araddr(18),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(19),
      Q => m_axi_dma_araddr(19),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(1),
      Q => m_axi_dma_araddr(1),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(20),
      Q => m_axi_dma_araddr(20),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(21),
      Q => m_axi_dma_araddr(21),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(22),
      Q => m_axi_dma_araddr(22),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(23),
      Q => m_axi_dma_araddr(23),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(24),
      Q => m_axi_dma_araddr(24),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(25),
      Q => m_axi_dma_araddr(25),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(26),
      Q => m_axi_dma_araddr(26),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(27),
      Q => m_axi_dma_araddr(27),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(28),
      Q => m_axi_dma_araddr(28),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(29),
      Q => m_axi_dma_araddr(29),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(2),
      Q => m_axi_dma_araddr(2),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(30),
      Q => m_axi_dma_araddr(30),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(31),
      Q => m_axi_dma_araddr(31),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(3),
      Q => m_axi_dma_araddr(3),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(4),
      Q => m_axi_dma_araddr(4),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(5),
      Q => m_axi_dma_araddr(5),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(6),
      Q => m_axi_dma_araddr(6),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(7),
      Q => m_axi_dma_araddr(7),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(8),
      Q => m_axi_dma_araddr(8),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => \axi_araddr_ff_reg[31]_0\(9),
      Q => m_axi_dma_araddr(9),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => m_axi_dma_rvalid,
      I2 => \^curr_state_ff\(1),
      O => axi_rdata_ff0
    );
\axi_rdata_ff_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(0),
      Q => Q(0),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(10),
      Q => Q(10),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(11),
      Q => Q(11),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(12),
      Q => Q(12),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(13),
      Q => Q(13),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(14),
      Q => Q(14),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(15),
      Q => Q(15),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(16),
      Q => Q(16),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(17),
      Q => Q(17),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(18),
      Q => Q(18),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(19),
      Q => Q(19),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(1),
      Q => Q(1),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(20),
      Q => Q(20),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(21),
      Q => Q(21),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(22),
      Q => Q(22),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(23),
      Q => Q(23),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(24),
      Q => Q(24),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(25),
      Q => Q(25),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(26),
      Q => Q(26),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(27),
      Q => Q(27),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(28),
      Q => Q(28),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(29),
      Q => Q(29),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(2),
      Q => Q(2),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(30),
      Q => Q(30),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(31),
      Q => Q(31),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(3),
      Q => Q(3),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(4),
      Q => Q(4),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(5),
      Q => Q(5),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(6),
      Q => Q(6),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(7),
      Q => Q(7),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(8),
      Q => Q(8),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(9),
      Q => Q(9),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\curr_player_state_ff[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \^curr_state_ff\(1),
      O => \FSM_sequential_curr_state_ff_reg[0]_0\
    );
m_axi_dma_arvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => \^curr_state_ff\(1),
      O => m_axi_dma_arvalid
    );
m_axi_dma_rready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \^curr_state_ff\(0),
      O => m_axi_dma_rready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_S_AXI is
  port (
    slot_ff : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_rv_valid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \volume_coef_ff_reg[31]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \sound_addr_ff_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sound_addr_ff_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    valid_ff_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_S_AXI : entity is "audio_fetcher_S_AXI";
end wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_S_AXI;

architecture STRUCTURE of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_S_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg3[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg3[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg3[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg3[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg3[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg3[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg3[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg3[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg3[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg3[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg3[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg3[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg3[20]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg3[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg3[22]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg3[23]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg3[24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg3[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg3[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg3[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg3[28]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg3[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg3[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg3[30]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg3[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg3[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg3[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg3[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg3[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg3[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg3[9]_i_1\ : label is "soft_lutpair12";
begin
  Q(0) <= \^q\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => \^axi_awready_reg_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \sound_addr_ff_reg[0]_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => \sound_addr_ff_reg[0]_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => \sound_addr_ff_reg[0]_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^axi_awready_reg_0\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^axi_awready_reg_0\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \sound_addr_ff_reg[0]_0\
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \sound_addr_ff_reg[0]_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \^axi_wready_reg_0\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg0(0),
      I2 => \^q\(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg0(10),
      I2 => \slv_reg3_reg_n_0_[10]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg0(11),
      I2 => \slv_reg3_reg_n_0_[11]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg0(12),
      I2 => \slv_reg3_reg_n_0_[12]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg0(13),
      I2 => \slv_reg3_reg_n_0_[13]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg0(14),
      I2 => \slv_reg3_reg_n_0_[14]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => \slv_reg3_reg_n_0_[15]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => \slv_reg3_reg_n_0_[16]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => \slv_reg3_reg_n_0_[17]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => \slv_reg3_reg_n_0_[18]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => \slv_reg3_reg_n_0_[19]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg0(1),
      I2 => \slv_reg3_reg_n_0_[1]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => \slv_reg3_reg_n_0_[20]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => \slv_reg3_reg_n_0_[21]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => \slv_reg3_reg_n_0_[22]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => \slv_reg3_reg_n_0_[23]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => \slv_reg3_reg_n_0_[24]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => \slv_reg3_reg_n_0_[25]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => \slv_reg3_reg_n_0_[26]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => \slv_reg3_reg_n_0_[27]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => \slv_reg3_reg_n_0_[28]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => \slv_reg3_reg_n_0_[29]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg0(2),
      I2 => \slv_reg3_reg_n_0_[2]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => \slv_reg3_reg_n_0_[30]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg0(31),
      I2 => \slv_reg3_reg_n_0_[31]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg0(3),
      I2 => \slv_reg3_reg_n_0_[3]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg0(4),
      I2 => \slv_reg3_reg_n_0_[4]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg0(5),
      I2 => \slv_reg3_reg_n_0_[5]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg0(6),
      I2 => \slv_reg3_reg_n_0_[6]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg0(7),
      I2 => \slv_reg3_reg_n_0_[7]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg0(8),
      I2 => \slv_reg3_reg_n_0_[8]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg0(9),
      I2 => \slv_reg3_reg_n_0_[9]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => \sound_addr_ff_reg[0]_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => \sound_addr_ff_reg[0]_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \sound_addr_ff_reg[0]_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \sound_addr_ff_reg[0]_0\
    );
\slot_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg2(0),
      Q => slot_ff(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg0(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg0(10),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg0(11),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg0(12),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg0(13),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg0(14),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg0(15),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg0(16),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg0(17),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg0(18),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg0(19),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg0(1),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg0(20),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg0(21),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg0(22),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg0(23),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg0(24),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg0(25),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg0(26),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg0(27),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg0(28),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg0(29),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg0(2),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg0(30),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg0(31),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg0(3),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg0(4),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg0(5),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg0(6),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg0(7),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg0(8),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg0(9),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg1(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg1(10),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg1(11),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg1(12),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg1(13),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg1(14),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg1(15),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg1(16),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg1(17),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg1(18),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg1(19),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg1(1),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg1(20),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg1(21),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg1(22),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg1(23),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg1(24),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg1(25),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg1(26),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg1(27),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg1(28),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg1(29),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg1(2),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg1(30),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg1(31),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg1(3),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg1(4),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg1(5),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg1(6),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg1(7),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg1(8),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg1(9),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg2[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg2(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg2(10),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg2(11),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg2(12),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg2(13),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg2(14),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg2(15),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg2(16),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg2(17),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg2(18),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg2(19),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg2(1),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg2(20),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg2(21),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg2(22),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg2(23),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg2(24),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg2(25),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg2(26),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg2(27),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg2(28),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg2(29),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg2(2),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg2(30),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg2(31),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg2(3),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg2(4),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg2(5),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg2(6),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg2(7),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg2(8),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg2(9),
      R => \sound_addr_ff_reg[0]_0\
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(0),
      O => \slv_reg3[0]_i_1_n_0\
    );
\slv_reg3[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(10),
      O => \slv_reg3[10]_i_1_n_0\
    );
\slv_reg3[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(11),
      O => \slv_reg3[11]_i_1_n_0\
    );
\slv_reg3[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(12),
      O => \slv_reg3[12]_i_1_n_0\
    );
\slv_reg3[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(13),
      O => \slv_reg3[13]_i_1_n_0\
    );
\slv_reg3[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(14),
      O => \slv_reg3[14]_i_1_n_0\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(15),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(16),
      O => \slv_reg3[16]_i_1_n_0\
    );
\slv_reg3[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(17),
      O => \slv_reg3[17]_i_1_n_0\
    );
\slv_reg3[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(18),
      O => \slv_reg3[18]_i_1_n_0\
    );
\slv_reg3[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(19),
      O => \slv_reg3[19]_i_1_n_0\
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(1),
      O => \slv_reg3[1]_i_1_n_0\
    );
\slv_reg3[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(20),
      O => \slv_reg3[20]_i_1_n_0\
    );
\slv_reg3[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(21),
      O => \slv_reg3[21]_i_1_n_0\
    );
\slv_reg3[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(22),
      O => \slv_reg3[22]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(23),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(24),
      O => \slv_reg3[24]_i_1_n_0\
    );
\slv_reg3[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(25),
      O => \slv_reg3[25]_i_1_n_0\
    );
\slv_reg3[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(26),
      O => \slv_reg3[26]_i_1_n_0\
    );
\slv_reg3[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(27),
      O => \slv_reg3[27]_i_1_n_0\
    );
\slv_reg3[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(28),
      O => \slv_reg3[28]_i_1_n_0\
    );
\slv_reg3[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(29),
      O => \slv_reg3[29]_i_1_n_0\
    );
\slv_reg3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(2),
      O => \slv_reg3[2]_i_1_n_0\
    );
\slv_reg3[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(30),
      O => \slv_reg3[30]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s_axi_aresetn,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(31),
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(3),
      O => \slv_reg3[3]_i_1_n_0\
    );
\slv_reg3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(4),
      O => \slv_reg3[4]_i_1_n_0\
    );
\slv_reg3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(5),
      O => \slv_reg3[5]_i_1_n_0\
    );
\slv_reg3[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(6),
      O => \slv_reg3[6]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(7),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(8),
      O => \slv_reg3[8]_i_1_n_0\
    );
\slv_reg3[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s_axi_wdata(9),
      O => \slv_reg3[9]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[10]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[10]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[11]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[11]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[12]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[12]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[13]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[13]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[14]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[14]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[15]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[15]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[16]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[16]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[17]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[17]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[18]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[18]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[19]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[19]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[1]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[1]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[20]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[20]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[21]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[21]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[22]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[22]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[23]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[23]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[24]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[24]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[25]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[25]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[26]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[26]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[27]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[27]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[28]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[28]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[29]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[29]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[2]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[2]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[30]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[30]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[31]_i_2_n_0\,
      Q => \slv_reg3_reg_n_0_[31]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[3]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[3]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[4]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[4]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[5]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[5]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[6]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[6]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[7]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[7]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[8]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[8]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[9]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[9]\,
      R => \slv_reg3[31]_i_1_n_0\
    );
\sound_addr_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(0),
      Q => \sound_addr_ff_reg[31]_0\(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(10),
      Q => \sound_addr_ff_reg[31]_0\(10),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(11),
      Q => \sound_addr_ff_reg[31]_0\(11),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(12),
      Q => \sound_addr_ff_reg[31]_0\(12),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(13),
      Q => \sound_addr_ff_reg[31]_0\(13),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(14),
      Q => \sound_addr_ff_reg[31]_0\(14),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(15),
      Q => \sound_addr_ff_reg[31]_0\(15),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(16),
      Q => \sound_addr_ff_reg[31]_0\(16),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(17),
      Q => \sound_addr_ff_reg[31]_0\(17),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(18),
      Q => \sound_addr_ff_reg[31]_0\(18),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(19),
      Q => \sound_addr_ff_reg[31]_0\(19),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(1),
      Q => \sound_addr_ff_reg[31]_0\(1),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(20),
      Q => \sound_addr_ff_reg[31]_0\(20),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(21),
      Q => \sound_addr_ff_reg[31]_0\(21),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(22),
      Q => \sound_addr_ff_reg[31]_0\(22),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(23),
      Q => \sound_addr_ff_reg[31]_0\(23),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(24),
      Q => \sound_addr_ff_reg[31]_0\(24),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(25),
      Q => \sound_addr_ff_reg[31]_0\(25),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(26),
      Q => \sound_addr_ff_reg[31]_0\(26),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(27),
      Q => \sound_addr_ff_reg[31]_0\(27),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(28),
      Q => \sound_addr_ff_reg[31]_0\(28),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(29),
      Q => \sound_addr_ff_reg[31]_0\(29),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(2),
      Q => \sound_addr_ff_reg[31]_0\(2),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(30),
      Q => \sound_addr_ff_reg[31]_0\(30),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(31),
      Q => \sound_addr_ff_reg[31]_0\(31),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(3),
      Q => \sound_addr_ff_reg[31]_0\(3),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(4),
      Q => \sound_addr_ff_reg[31]_0\(4),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(5),
      Q => \sound_addr_ff_reg[31]_0\(5),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(6),
      Q => \sound_addr_ff_reg[31]_0\(6),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(7),
      Q => \sound_addr_ff_reg[31]_0\(7),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(8),
      Q => \sound_addr_ff_reg[31]_0\(8),
      R => \sound_addr_ff_reg[0]_0\
    );
\sound_addr_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(9),
      Q => \sound_addr_ff_reg[31]_0\(9),
      R => \sound_addr_ff_reg[0]_0\
    );
valid_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => valid_ff_reg_0,
      Q => s_rv_valid,
      R => '0'
    );
\volume_coef_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(0),
      Q => \volume_coef_ff_reg[31]_0\(0),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(10),
      Q => \volume_coef_ff_reg[31]_0\(10),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(11),
      Q => \volume_coef_ff_reg[31]_0\(11),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(12),
      Q => \volume_coef_ff_reg[31]_0\(12),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(13),
      Q => \volume_coef_ff_reg[31]_0\(13),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(14),
      Q => \volume_coef_ff_reg[31]_0\(14),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(1),
      Q => \volume_coef_ff_reg[31]_0\(1),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(2),
      Q => \volume_coef_ff_reg[31]_0\(2),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(31),
      Q => \volume_coef_ff_reg[31]_0\(15),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(3),
      Q => \volume_coef_ff_reg[31]_0\(3),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(4),
      Q => \volume_coef_ff_reg[31]_0\(4),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(5),
      Q => \volume_coef_ff_reg[31]_0\(5),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(6),
      Q => \volume_coef_ff_reg[31]_0\(6),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(7),
      Q => \volume_coef_ff_reg[31]_0\(7),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(8),
      Q => \volume_coef_ff_reg[31]_0\(8),
      R => \sound_addr_ff_reg[0]_0\
    );
\volume_coef_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg1(9),
      Q => \volume_coef_ff_reg[31]_0\(9),
      R => \sound_addr_ff_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_controller is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sample_ff0 : out STD_LOGIC;
    \FSM_sequential_curr_initter_state_ff_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn_1 : out STD_LOGIC;
    \slot_active_array_ff_reg[0]_0\ : out STD_LOGIC;
    \slot_active_array_ff_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_curr_initter_state_ff_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \curr_player_state_ff_reg[0]_0\ : out STD_LOGIC;
    \req_addr_ff_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_ff : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    curr_state_ff : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_rv_valid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    valid_ff_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \curr_player_state_ff_reg[2]_0\ : in STD_LOGIC;
    curr_state_ff_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \curr_player_state_ff_reg[1]_0\ : in STD_LOGIC;
    \curr_player_state_ff_reg[0]_1\ : in STD_LOGIC;
    \curr_player_state_ff_reg[2]_1\ : in STD_LOGIC;
    \axi_araddr_ff_reg[31]\ : in STD_LOGIC;
    \num_samples_0_ff_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \initter_vol_coef_ff_reg[31]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \initter_sound_addr_ff_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_controller : entity is "audio_fetcher_controller";
end wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_controller;

architecture STRUCTURE of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_controller is
  signal CEB2 : STD_LOGIC;
  signal CEM : STD_LOGIC;
  signal CEP : STD_LOGIC;
  signal \^fsm_sequential_curr_initter_state_ff_reg[0]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RSTP : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__6_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__6_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__6_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff[31]_i_3_n_0\ : STD_LOGIC;
  signal byte_index_0_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal byte_index_0_ff0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \byte_index_0_ff0_carry__0_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__0_n_1\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__0_n_2\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__0_n_3\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__1_n_1\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__1_n_2\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__1_n_3\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__2_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__2_n_1\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__2_n_2\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__2_n_3\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__3_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__3_n_1\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__3_n_2\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__3_n_3\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__4_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__4_n_1\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__4_n_2\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__4_n_3\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__5_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__5_n_1\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__5_n_2\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__5_n_3\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__6_n_1\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__6_n_2\ : STD_LOGIC;
  signal \byte_index_0_ff0_carry__6_n_3\ : STD_LOGIC;
  signal byte_index_0_ff0_carry_i_1_n_0 : STD_LOGIC;
  signal byte_index_0_ff0_carry_n_0 : STD_LOGIC;
  signal byte_index_0_ff0_carry_n_1 : STD_LOGIC;
  signal byte_index_0_ff0_carry_n_2 : STD_LOGIC;
  signal byte_index_0_ff0_carry_n_3 : STD_LOGIC;
  signal \byte_index_0_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[10]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[11]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[12]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[13]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[14]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[15]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[16]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[17]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[18]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[19]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[20]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[21]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[22]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[23]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[24]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[25]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[26]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[27]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[28]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[29]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[5]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[6]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[7]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[8]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_0_ff[9]_i_1_n_0\ : STD_LOGIC;
  signal byte_index_1_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal byte_index_1_ff0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \byte_index_1_ff0_carry__0_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__0_n_1\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__0_n_2\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__0_n_3\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__1_n_1\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__1_n_2\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__1_n_3\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__2_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__2_n_1\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__2_n_2\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__2_n_3\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__3_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__3_n_1\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__3_n_2\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__3_n_3\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__4_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__4_n_1\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__4_n_2\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__4_n_3\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__5_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__5_n_1\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__5_n_2\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__5_n_3\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__6_n_1\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__6_n_2\ : STD_LOGIC;
  signal \byte_index_1_ff0_carry__6_n_3\ : STD_LOGIC;
  signal byte_index_1_ff0_carry_i_1_n_0 : STD_LOGIC;
  signal byte_index_1_ff0_carry_n_0 : STD_LOGIC;
  signal byte_index_1_ff0_carry_n_1 : STD_LOGIC;
  signal byte_index_1_ff0_carry_n_2 : STD_LOGIC;
  signal byte_index_1_ff0_carry_n_3 : STD_LOGIC;
  signal \byte_index_1_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[10]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[11]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[12]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[13]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[14]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[15]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[16]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[17]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[18]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[19]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[20]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[21]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[22]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[23]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[24]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[25]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[26]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[27]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[28]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[29]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[5]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[6]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[7]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[8]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_1_ff[9]_i_1_n_0\ : STD_LOGIC;
  signal byte_index_1_ff_0 : STD_LOGIC;
  signal curr_initter_state_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal curr_player_state_ff : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \curr_player_state_ff[0]_i_2_n_0\ : STD_LOGIC;
  signal \curr_player_state_ff[0]_i_3_n_0\ : STD_LOGIC;
  signal \curr_player_state_ff[0]_i_4_n_0\ : STD_LOGIC;
  signal \curr_player_state_ff[0]_i_5_n_0\ : STD_LOGIC;
  signal \curr_player_state_ff[0]_i_6_n_0\ : STD_LOGIC;
  signal \curr_player_state_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal \curr_player_state_ff[2]_i_3_n_0\ : STD_LOGIC;
  signal \curr_player_state_ff[2]_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal initter_curr_slot_ff : STD_LOGIC;
  signal initter_sound_addr_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal initter_sound_addr_ff0 : STD_LOGIC;
  signal initter_vol_coef_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \last_sample_array0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__0_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__0_n_1\ : STD_LOGIC;
  signal \last_sample_array0_carry__0_n_2\ : STD_LOGIC;
  signal \last_sample_array0_carry__0_n_3\ : STD_LOGIC;
  signal \last_sample_array0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array0_carry__1_n_2\ : STD_LOGIC;
  signal \last_sample_array0_carry__1_n_3\ : STD_LOGIC;
  signal last_sample_array0_carry_i_1_n_0 : STD_LOGIC;
  signal last_sample_array0_carry_i_2_n_0 : STD_LOGIC;
  signal last_sample_array0_carry_i_3_n_0 : STD_LOGIC;
  signal last_sample_array0_carry_i_4_n_0 : STD_LOGIC;
  signal last_sample_array0_carry_n_0 : STD_LOGIC;
  signal last_sample_array0_carry_n_1 : STD_LOGIC;
  signal last_sample_array0_carry_n_2 : STD_LOGIC;
  signal last_sample_array0_carry_n_3 : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \last_sample_array0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal last_sample_array1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal last_sample_array10_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \last_sample_array1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__0_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__0_n_1\ : STD_LOGIC;
  signal \last_sample_array1_carry__0_n_2\ : STD_LOGIC;
  signal \last_sample_array1_carry__0_n_3\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_n_1\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_n_2\ : STD_LOGIC;
  signal \last_sample_array1_carry__1_n_3\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_n_1\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_n_2\ : STD_LOGIC;
  signal \last_sample_array1_carry__2_n_3\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_n_1\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_n_2\ : STD_LOGIC;
  signal \last_sample_array1_carry__3_n_3\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_n_1\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_n_2\ : STD_LOGIC;
  signal \last_sample_array1_carry__4_n_3\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_n_1\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_n_2\ : STD_LOGIC;
  signal \last_sample_array1_carry__5_n_3\ : STD_LOGIC;
  signal \last_sample_array1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_carry__6_n_2\ : STD_LOGIC;
  signal \last_sample_array1_carry__6_n_3\ : STD_LOGIC;
  signal last_sample_array1_carry_i_1_n_0 : STD_LOGIC;
  signal last_sample_array1_carry_i_2_n_0 : STD_LOGIC;
  signal last_sample_array1_carry_i_3_n_0 : STD_LOGIC;
  signal last_sample_array1_carry_i_4_n_0 : STD_LOGIC;
  signal last_sample_array1_carry_n_0 : STD_LOGIC;
  signal last_sample_array1_carry_n_1 : STD_LOGIC;
  signal last_sample_array1_carry_n_2 : STD_LOGIC;
  signal last_sample_array1_carry_n_3 : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \last_sample_array1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal last_sample_array_reg : STD_LOGIC;
  signal last_sample_array_reg1_out : STD_LOGIC;
  signal \next_initter_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_player_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal num_samples_0_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal num_samples_0_ff_2 : STD_LOGIC;
  signal num_samples_1_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal num_samples_1_ff_1 : STD_LOGIC;
  signal player_curr_slot_ff : STD_LOGIC;
  signal \player_curr_slot_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \player_curr_slot_ff[0]_i_2_n_0\ : STD_LOGIC;
  signal player_vol_coef_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal req_addr_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \req_addr_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[10]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[11]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[12]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[13]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[14]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[15]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[16]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[17]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[18]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[19]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[20]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[21]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[22]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[23]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[24]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[25]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[26]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[27]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[28]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[29]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[31]_i_2_n_0\ : STD_LOGIC;
  signal \req_addr_ff[3]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[4]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[5]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[6]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[7]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[8]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_ff[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal sample_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sample_ff0\ : STD_LOGIC;
  signal sample_index_0_ff0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \sample_index_0_ff0_carry__0_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__0_n_1\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__0_n_2\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__0_n_3\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__1_n_1\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__1_n_2\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__1_n_3\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__2_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__2_n_1\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__2_n_2\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__2_n_3\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__3_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__3_n_1\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__3_n_2\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__3_n_3\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__4_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__4_n_1\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__4_n_2\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__4_n_3\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__5_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__5_n_1\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__5_n_2\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__5_n_3\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__6_n_2\ : STD_LOGIC;
  signal \sample_index_0_ff0_carry__6_n_3\ : STD_LOGIC;
  signal sample_index_0_ff0_carry_n_0 : STD_LOGIC;
  signal sample_index_0_ff0_carry_n_1 : STD_LOGIC;
  signal sample_index_0_ff0_carry_n_2 : STD_LOGIC;
  signal sample_index_0_ff0_carry_n_3 : STD_LOGIC;
  signal \sample_index_0_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[10]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[11]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[12]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[13]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[14]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[15]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[16]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[17]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[18]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[19]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[20]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[21]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[22]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[23]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[24]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[25]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[26]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[27]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[28]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[29]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[31]_i_2_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff[9]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[10]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[11]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[12]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[13]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[14]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[15]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[16]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[17]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[18]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[19]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[20]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[21]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[22]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[23]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[24]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[25]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[26]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[27]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[28]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[29]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[30]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[31]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[3]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[4]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[5]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[6]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[7]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[8]\ : STD_LOGIC;
  signal \sample_index_0_ff_reg_n_0_[9]\ : STD_LOGIC;
  signal sample_index_1_ff0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \sample_index_1_ff0_carry__0_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__0_n_1\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__0_n_2\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__0_n_3\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__1_n_1\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__1_n_2\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__1_n_3\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__2_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__2_n_1\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__2_n_2\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__2_n_3\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__3_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__3_n_1\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__3_n_2\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__3_n_3\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__4_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__4_n_1\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__4_n_2\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__4_n_3\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__5_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__5_n_1\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__5_n_2\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__5_n_3\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__6_n_2\ : STD_LOGIC;
  signal \sample_index_1_ff0_carry__6_n_3\ : STD_LOGIC;
  signal sample_index_1_ff0_carry_n_0 : STD_LOGIC;
  signal sample_index_1_ff0_carry_n_1 : STD_LOGIC;
  signal sample_index_1_ff0_carry_n_2 : STD_LOGIC;
  signal sample_index_1_ff0_carry_n_3 : STD_LOGIC;
  signal \sample_index_1_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[10]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[11]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[12]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[13]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[14]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[15]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[16]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[17]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[18]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[19]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[20]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[21]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[22]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[23]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[24]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[25]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[26]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[27]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[28]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[29]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[31]_i_2_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff[9]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[10]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[11]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[12]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[13]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[14]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[15]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[16]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[17]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[18]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[19]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[20]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[21]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[22]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[23]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[24]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[25]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[26]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[27]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[28]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[29]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[30]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[31]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[3]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[4]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[5]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[6]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[7]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[8]\ : STD_LOGIC;
  signal \sample_index_1_ff_reg_n_0_[9]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \sleep_counter_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff[0]_i_4_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff[0]_i_5_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff[0]_i_6_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff[0]_i_7_n_0\ : STD_LOGIC;
  signal sleep_counter_ff_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \sleep_counter_ff_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \slot_active_array_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \slot_active_array_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \slot_active_array_ff[1]_i_3_n_0\ : STD_LOGIC;
  signal \^slot_active_array_ff_reg[0]_0\ : STD_LOGIC;
  signal \^slot_active_array_ff_reg[1]_0\ : STD_LOGIC;
  signal sound_addr_0_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sound_addr_1_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal valid_ff_i_2_n_0 : STD_LOGIC;
  signal vol_coef_0_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \vol_coef_0_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal vol_coef_1_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \vol_coef_1_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal \NLW__inferred__5/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_byte_index_0_ff0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_byte_index_1_ff0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_combined_samples_ff_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_combined_samples_ff_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_combined_samples_ff_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_combined_samples_ff_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_combined_samples_ff_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_combined_samples_ff_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_combined_samples_ff_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_combined_samples_ff_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_combined_samples_ff_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_combined_samples_ff_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_combined_samples_ff_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_last_sample_array0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sample_array0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sample_array0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_last_sample_array0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sample_array0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sample_array0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sample_array0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_last_sample_array0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sample_array1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_last_sample_array1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_last_sample_array1_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_last_sample_array1_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sample_index_0_ff0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sample_index_0_ff0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sample_index_1_ff0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sample_index_1_ff0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_initter_state_ff[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_initter_state_ff[1]_i_1\ : label is "soft_lutpair25";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_initter_state_ff_reg[0]\ : label is "is_calcing_req_addr:011,is_requesting_num_samples:010,is_setting_slot:100,is_returning_num_samples:001,is_idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_initter_state_ff_reg[1]\ : label is "is_calcing_req_addr:011,is_requesting_num_samples:010,is_setting_slot:100,is_returning_num_samples:001,is_idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_initter_state_ff_reg[2]\ : label is "is_calcing_req_addr:011,is_requesting_num_samples:010,is_setting_slot:100,is_returning_num_samples:001,is_idle:000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \axi_araddr_ff[31]_i_3\ : label is "soft_lutpair27";
  attribute ADDER_THRESHOLD of byte_index_0_ff0_carry : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_0_ff0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_0_ff0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_0_ff0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_0_ff0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_0_ff0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_0_ff0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_0_ff0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \byte_index_0_ff[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \byte_index_0_ff[10]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \byte_index_0_ff[11]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \byte_index_0_ff[12]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \byte_index_0_ff[13]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \byte_index_0_ff[14]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \byte_index_0_ff[15]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \byte_index_0_ff[16]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \byte_index_0_ff[17]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \byte_index_0_ff[18]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \byte_index_0_ff[19]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \byte_index_0_ff[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \byte_index_0_ff[20]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \byte_index_0_ff[21]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \byte_index_0_ff[22]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \byte_index_0_ff[23]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \byte_index_0_ff[24]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \byte_index_0_ff[25]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \byte_index_0_ff[26]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \byte_index_0_ff[27]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \byte_index_0_ff[28]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \byte_index_0_ff[29]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \byte_index_0_ff[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \byte_index_0_ff[30]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \byte_index_0_ff[31]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \byte_index_0_ff[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \byte_index_0_ff[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \byte_index_0_ff[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \byte_index_0_ff[6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \byte_index_0_ff[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \byte_index_0_ff[8]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \byte_index_0_ff[9]_i_1\ : label is "soft_lutpair65";
  attribute ADDER_THRESHOLD of byte_index_1_ff0_carry : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_1_ff0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_1_ff0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_1_ff0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_1_ff0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_1_ff0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_1_ff0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_1_ff0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \byte_index_1_ff[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \byte_index_1_ff[10]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \byte_index_1_ff[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \byte_index_1_ff[12]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \byte_index_1_ff[13]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \byte_index_1_ff[14]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \byte_index_1_ff[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \byte_index_1_ff[16]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \byte_index_1_ff[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \byte_index_1_ff[18]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \byte_index_1_ff[19]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \byte_index_1_ff[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \byte_index_1_ff[20]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \byte_index_1_ff[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \byte_index_1_ff[22]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \byte_index_1_ff[23]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \byte_index_1_ff[24]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \byte_index_1_ff[25]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \byte_index_1_ff[26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \byte_index_1_ff[27]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \byte_index_1_ff[28]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \byte_index_1_ff[29]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \byte_index_1_ff[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \byte_index_1_ff[30]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \byte_index_1_ff[31]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \byte_index_1_ff[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \byte_index_1_ff[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \byte_index_1_ff[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \byte_index_1_ff[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \byte_index_1_ff[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \byte_index_1_ff[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \byte_index_1_ff[9]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \curr_player_state_ff[0]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \curr_player_state_ff[0]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \curr_player_state_ff[2]_i_4\ : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD of last_sample_array1_carry : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \last_sample_array1_inferred__0/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of sample_index_0_ff0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_0_ff0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_0_ff0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_0_ff0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_0_ff0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_0_ff0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_0_ff0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_0_ff0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sample_index_0_ff[0]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \sample_index_0_ff[10]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sample_index_0_ff[11]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sample_index_0_ff[12]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sample_index_0_ff[13]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sample_index_0_ff[14]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sample_index_0_ff[15]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sample_index_0_ff[16]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \sample_index_0_ff[17]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \sample_index_0_ff[18]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sample_index_0_ff[19]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sample_index_0_ff[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \sample_index_0_ff[20]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sample_index_0_ff[21]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sample_index_0_ff[22]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sample_index_0_ff[23]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sample_index_0_ff[24]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \sample_index_0_ff[25]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \sample_index_0_ff[26]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \sample_index_0_ff[27]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \sample_index_0_ff[28]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \sample_index_0_ff[29]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \sample_index_0_ff[2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sample_index_0_ff[30]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \sample_index_0_ff[31]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \sample_index_0_ff[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sample_index_0_ff[4]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sample_index_0_ff[5]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sample_index_0_ff[6]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sample_index_0_ff[7]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sample_index_0_ff[8]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sample_index_0_ff[9]_i_1\ : label is "soft_lutpair81";
  attribute ADDER_THRESHOLD of sample_index_1_ff0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_1_ff0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_1_ff0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_1_ff0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_1_ff0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_1_ff0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_1_ff0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_1_ff0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sample_index_1_ff[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sample_index_1_ff[10]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sample_index_1_ff[11]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sample_index_1_ff[12]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sample_index_1_ff[13]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sample_index_1_ff[14]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sample_index_1_ff[15]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sample_index_1_ff[16]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sample_index_1_ff[17]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sample_index_1_ff[18]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sample_index_1_ff[19]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sample_index_1_ff[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sample_index_1_ff[20]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \sample_index_1_ff[21]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \sample_index_1_ff[22]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \sample_index_1_ff[23]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \sample_index_1_ff[24]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \sample_index_1_ff[25]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \sample_index_1_ff[26]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \sample_index_1_ff[27]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \sample_index_1_ff[28]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \sample_index_1_ff[29]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \sample_index_1_ff[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sample_index_1_ff[30]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \sample_index_1_ff[31]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \sample_index_1_ff[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sample_index_1_ff[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sample_index_1_ff[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sample_index_1_ff[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sample_index_1_ff[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sample_index_1_ff[8]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sample_index_1_ff[9]_i_1\ : label is "soft_lutpair49";
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \slot_active_array_ff[1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of valid_ff_i_2 : label is "soft_lutpair27";
begin
  \FSM_sequential_curr_initter_state_ff_reg[0]_0\ <= \^fsm_sequential_curr_initter_state_ff_reg[0]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
  sample_ff0 <= \^sample_ff0\;
  \slot_active_array_ff_reg[0]_0\ <= \^slot_active_array_ff_reg[0]_0\;
  \slot_active_array_ff_reg[1]_0\ <= \^slot_active_array_ff_reg[1]_0\;
\FSM_sequential_curr_initter_state_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010F70"
    )
        port map (
      I0 => curr_state_ff(0),
      I1 => curr_state_ff(1),
      I2 => curr_initter_state_ff(0),
      I3 => curr_initter_state_ff(2),
      I4 => curr_initter_state_ff(1),
      O => \next_initter_state__0\(0)
    );
\FSM_sequential_curr_initter_state_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0E00F0"
    )
        port map (
      I0 => curr_state_ff(1),
      I1 => curr_state_ff(0),
      I2 => curr_initter_state_ff(2),
      I3 => curr_initter_state_ff(0),
      I4 => curr_initter_state_ff(1),
      O => \next_initter_state__0\(1)
    );
\FSM_sequential_curr_initter_state_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => sel,
      I1 => s_rv_valid,
      I2 => curr_initter_state_ff(2),
      I3 => curr_initter_state_ff(1),
      I4 => curr_initter_state_ff(0),
      I5 => \sleep_counter_ff[0]_i_1_n_0\,
      O => \next_initter_state__0\(2)
    );
\FSM_sequential_curr_initter_state_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \next_initter_state__0\(0),
      Q => curr_initter_state_ff(0),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_curr_initter_state_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \next_initter_state__0\(1),
      Q => curr_initter_state_ff(1),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_curr_initter_state_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \next_initter_state__0\(2),
      Q => curr_initter_state_ff(2),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_curr_state_ff[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404FF0404"
    )
        port map (
      I0 => \^q\(0),
      I1 => curr_player_state_ff(1),
      I2 => \^q\(1),
      I3 => curr_initter_state_ff(0),
      I4 => curr_initter_state_ff(1),
      I5 => curr_initter_state_ff(2),
      O => \curr_player_state_ff_reg[0]_0\
    );
\_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__5/i__carry_n_0\,
      CO(2) => \_inferred__5/i__carry_n_1\,
      CO(1) => \_inferred__5/i__carry_n_2\,
      CO(0) => \_inferred__5/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => req_addr_ff(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry_n_0\,
      CO(3) => \_inferred__5/i__carry__0_n_0\,
      CO(2) => \_inferred__5/i__carry__0_n_1\,
      CO(1) => \_inferred__5/i__carry__0_n_2\,
      CO(0) => \_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2__1_n_0\,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => \i__carry__0_i_4__1_n_0\,
      O(3 downto 0) => req_addr_ff(7 downto 4),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\_inferred__5/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__0_n_0\,
      CO(3) => \_inferred__5/i__carry__1_n_0\,
      CO(2) => \_inferred__5/i__carry__1_n_1\,
      CO(1) => \_inferred__5/i__carry__1_n_2\,
      CO(0) => \_inferred__5/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__1_n_0\,
      DI(2) => \i__carry__1_i_2__1_n_0\,
      DI(1) => \i__carry__1_i_3__1_n_0\,
      DI(0) => \i__carry__1_i_4__0_n_0\,
      O(3 downto 0) => req_addr_ff(11 downto 8),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\_inferred__5/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__1_n_0\,
      CO(3) => \_inferred__5/i__carry__2_n_0\,
      CO(2) => \_inferred__5/i__carry__2_n_1\,
      CO(1) => \_inferred__5/i__carry__2_n_2\,
      CO(0) => \_inferred__5/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1__0_n_0\,
      DI(2) => \i__carry__2_i_2__0_n_0\,
      DI(1) => \i__carry__2_i_3__0_n_0\,
      DI(0) => \i__carry__2_i_4__0_n_0\,
      O(3 downto 0) => req_addr_ff(15 downto 12),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\_inferred__5/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__2_n_0\,
      CO(3) => \_inferred__5/i__carry__3_n_0\,
      CO(2) => \_inferred__5/i__carry__3_n_1\,
      CO(1) => \_inferred__5/i__carry__3_n_2\,
      CO(0) => \_inferred__5/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__3_i_1__0_n_0\,
      DI(2) => \i__carry__3_i_2__0_n_0\,
      DI(1) => \i__carry__3_i_3__0_n_0\,
      DI(0) => \i__carry__3_i_4__0_n_0\,
      O(3 downto 0) => req_addr_ff(19 downto 16),
      S(3) => \i__carry__3_i_5_n_0\,
      S(2) => \i__carry__3_i_6_n_0\,
      S(1) => \i__carry__3_i_7_n_0\,
      S(0) => \i__carry__3_i_8_n_0\
    );
\_inferred__5/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__3_n_0\,
      CO(3) => \_inferred__5/i__carry__4_n_0\,
      CO(2) => \_inferred__5/i__carry__4_n_1\,
      CO(1) => \_inferred__5/i__carry__4_n_2\,
      CO(0) => \_inferred__5/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__4_i_1__0_n_0\,
      DI(2) => \i__carry__4_i_2__0_n_0\,
      DI(1) => \i__carry__4_i_3__0_n_0\,
      DI(0) => \i__carry__4_i_4__0_n_0\,
      O(3 downto 0) => req_addr_ff(23 downto 20),
      S(3) => \i__carry__4_i_5_n_0\,
      S(2) => \i__carry__4_i_6_n_0\,
      S(1) => \i__carry__4_i_7_n_0\,
      S(0) => \i__carry__4_i_8_n_0\
    );
\_inferred__5/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__4_n_0\,
      CO(3) => \_inferred__5/i__carry__5_n_0\,
      CO(2) => \_inferred__5/i__carry__5_n_1\,
      CO(1) => \_inferred__5/i__carry__5_n_2\,
      CO(0) => \_inferred__5/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__5_i_1__0_n_0\,
      DI(2) => \i__carry__5_i_2__0_n_0\,
      DI(1) => \i__carry__5_i_3__0_n_0\,
      DI(0) => \i__carry__5_i_4__0_n_0\,
      O(3 downto 0) => req_addr_ff(27 downto 24),
      S(3) => \i__carry__5_i_5_n_0\,
      S(2) => \i__carry__5_i_6_n_0\,
      S(1) => \i__carry__5_i_7_n_0\,
      S(0) => \i__carry__5_i_8_n_0\
    );
\_inferred__5/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__5_n_0\,
      CO(3) => \NLW__inferred__5/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__5/i__carry__6_n_1\,
      CO(1) => \_inferred__5/i__carry__6_n_2\,
      CO(0) => \_inferred__5/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__6_i_1__0_n_0\,
      DI(1) => \i__carry__6_i_2__0_n_0\,
      DI(0) => \i__carry__6_i_3__0_n_0\,
      O(3 downto 0) => req_addr_ff(31 downto 28),
      S(3) => \i__carry__6_i_4_n_0\,
      S(2) => \i__carry__6_i_5_n_0\,
      S(1) => \i__carry__6_i_6_n_0\,
      S(0) => \i__carry__6_i_7_n_0\
    );
\axi_araddr_ff[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222F22"
    )
        port map (
      I0 => \axi_araddr_ff[31]_i_3_n_0\,
      I1 => curr_initter_state_ff(0),
      I2 => \^q\(1),
      I3 => curr_player_state_ff(1),
      I4 => \^q\(0),
      I5 => \axi_araddr_ff_reg[31]\,
      O => \FSM_sequential_curr_initter_state_ff_reg[0]_1\(0)
    );
\axi_araddr_ff[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_initter_state_ff(1),
      I1 => curr_initter_state_ff(2),
      O => \axi_araddr_ff[31]_i_3_n_0\
    );
\axi_awaddr_ff[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => curr_player_state_ff(1),
      I1 => \^q\(1),
      I2 => curr_state_ff_0(0),
      I3 => curr_state_ff_0(1),
      O => E(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
byte_index_0_ff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => byte_index_0_ff0_carry_n_0,
      CO(2) => byte_index_0_ff0_carry_n_1,
      CO(1) => byte_index_0_ff0_carry_n_2,
      CO(0) => byte_index_0_ff0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => byte_index_0_ff(1),
      DI(0) => '0',
      O(3 downto 0) => byte_index_0_ff0(3 downto 0),
      S(3 downto 2) => byte_index_0_ff(3 downto 2),
      S(1) => byte_index_0_ff0_carry_i_1_n_0,
      S(0) => byte_index_0_ff(0)
    );
\byte_index_0_ff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => byte_index_0_ff0_carry_n_0,
      CO(3) => \byte_index_0_ff0_carry__0_n_0\,
      CO(2) => \byte_index_0_ff0_carry__0_n_1\,
      CO(1) => \byte_index_0_ff0_carry__0_n_2\,
      CO(0) => \byte_index_0_ff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_0_ff0(7 downto 4),
      S(3 downto 0) => byte_index_0_ff(7 downto 4)
    );
\byte_index_0_ff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_0_ff0_carry__0_n_0\,
      CO(3) => \byte_index_0_ff0_carry__1_n_0\,
      CO(2) => \byte_index_0_ff0_carry__1_n_1\,
      CO(1) => \byte_index_0_ff0_carry__1_n_2\,
      CO(0) => \byte_index_0_ff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_0_ff0(11 downto 8),
      S(3 downto 0) => byte_index_0_ff(11 downto 8)
    );
\byte_index_0_ff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_0_ff0_carry__1_n_0\,
      CO(3) => \byte_index_0_ff0_carry__2_n_0\,
      CO(2) => \byte_index_0_ff0_carry__2_n_1\,
      CO(1) => \byte_index_0_ff0_carry__2_n_2\,
      CO(0) => \byte_index_0_ff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_0_ff0(15 downto 12),
      S(3 downto 0) => byte_index_0_ff(15 downto 12)
    );
\byte_index_0_ff0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_0_ff0_carry__2_n_0\,
      CO(3) => \byte_index_0_ff0_carry__3_n_0\,
      CO(2) => \byte_index_0_ff0_carry__3_n_1\,
      CO(1) => \byte_index_0_ff0_carry__3_n_2\,
      CO(0) => \byte_index_0_ff0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_0_ff0(19 downto 16),
      S(3 downto 0) => byte_index_0_ff(19 downto 16)
    );
\byte_index_0_ff0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_0_ff0_carry__3_n_0\,
      CO(3) => \byte_index_0_ff0_carry__4_n_0\,
      CO(2) => \byte_index_0_ff0_carry__4_n_1\,
      CO(1) => \byte_index_0_ff0_carry__4_n_2\,
      CO(0) => \byte_index_0_ff0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_0_ff0(23 downto 20),
      S(3 downto 0) => byte_index_0_ff(23 downto 20)
    );
\byte_index_0_ff0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_0_ff0_carry__4_n_0\,
      CO(3) => \byte_index_0_ff0_carry__5_n_0\,
      CO(2) => \byte_index_0_ff0_carry__5_n_1\,
      CO(1) => \byte_index_0_ff0_carry__5_n_2\,
      CO(0) => \byte_index_0_ff0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_0_ff0(27 downto 24),
      S(3 downto 0) => byte_index_0_ff(27 downto 24)
    );
\byte_index_0_ff0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_0_ff0_carry__5_n_0\,
      CO(3) => \NLW_byte_index_0_ff0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \byte_index_0_ff0_carry__6_n_1\,
      CO(1) => \byte_index_0_ff0_carry__6_n_2\,
      CO(0) => \byte_index_0_ff0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_0_ff0(31 downto 28),
      S(3 downto 0) => byte_index_0_ff(31 downto 28)
    );
byte_index_0_ff0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_index_0_ff(1),
      O => byte_index_0_ff0_carry_i_1_n_0
    );
\byte_index_0_ff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(0),
      O => \byte_index_0_ff[0]_i_1_n_0\
    );
\byte_index_0_ff[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(10),
      O => \byte_index_0_ff[10]_i_1_n_0\
    );
\byte_index_0_ff[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(11),
      O => \byte_index_0_ff[11]_i_1_n_0\
    );
\byte_index_0_ff[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(12),
      O => \byte_index_0_ff[12]_i_1_n_0\
    );
\byte_index_0_ff[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(13),
      O => \byte_index_0_ff[13]_i_1_n_0\
    );
\byte_index_0_ff[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(14),
      O => \byte_index_0_ff[14]_i_1_n_0\
    );
\byte_index_0_ff[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(15),
      O => \byte_index_0_ff[15]_i_1_n_0\
    );
\byte_index_0_ff[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(16),
      O => \byte_index_0_ff[16]_i_1_n_0\
    );
\byte_index_0_ff[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(17),
      O => \byte_index_0_ff[17]_i_1_n_0\
    );
\byte_index_0_ff[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(18),
      O => \byte_index_0_ff[18]_i_1_n_0\
    );
\byte_index_0_ff[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(19),
      O => \byte_index_0_ff[19]_i_1_n_0\
    );
\byte_index_0_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(1),
      O => \byte_index_0_ff[1]_i_1_n_0\
    );
\byte_index_0_ff[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(20),
      O => \byte_index_0_ff[20]_i_1_n_0\
    );
\byte_index_0_ff[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(21),
      O => \byte_index_0_ff[21]_i_1_n_0\
    );
\byte_index_0_ff[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(22),
      O => \byte_index_0_ff[22]_i_1_n_0\
    );
\byte_index_0_ff[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(23),
      O => \byte_index_0_ff[23]_i_1_n_0\
    );
\byte_index_0_ff[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(24),
      O => \byte_index_0_ff[24]_i_1_n_0\
    );
\byte_index_0_ff[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(25),
      O => \byte_index_0_ff[25]_i_1_n_0\
    );
\byte_index_0_ff[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(26),
      O => \byte_index_0_ff[26]_i_1_n_0\
    );
\byte_index_0_ff[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(27),
      O => \byte_index_0_ff[27]_i_1_n_0\
    );
\byte_index_0_ff[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(28),
      O => \byte_index_0_ff[28]_i_1_n_0\
    );
\byte_index_0_ff[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(29),
      O => \byte_index_0_ff[29]_i_1_n_0\
    );
\byte_index_0_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(2),
      O => \byte_index_0_ff[2]_i_1_n_0\
    );
\byte_index_0_ff[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(30),
      O => \byte_index_0_ff[30]_i_1_n_0\
    );
\byte_index_0_ff[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(31),
      O => \byte_index_0_ff[31]_i_1_n_0\
    );
\byte_index_0_ff[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(3),
      O => \byte_index_0_ff[3]_i_1_n_0\
    );
\byte_index_0_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(4),
      O => \byte_index_0_ff[4]_i_1_n_0\
    );
\byte_index_0_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(5),
      O => \byte_index_0_ff[5]_i_1_n_0\
    );
\byte_index_0_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(6),
      O => \byte_index_0_ff[6]_i_1_n_0\
    );
\byte_index_0_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(7),
      O => \byte_index_0_ff[7]_i_1_n_0\
    );
\byte_index_0_ff[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(8),
      O => \byte_index_0_ff[8]_i_1_n_0\
    );
\byte_index_0_ff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_0_ff0(9),
      O => \byte_index_0_ff[9]_i_1_n_0\
    );
\byte_index_0_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[0]_i_1_n_0\,
      Q => byte_index_0_ff(0),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[10]_i_1_n_0\,
      Q => byte_index_0_ff(10),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[11]_i_1_n_0\,
      Q => byte_index_0_ff(11),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[12]_i_1_n_0\,
      Q => byte_index_0_ff(12),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[13]_i_1_n_0\,
      Q => byte_index_0_ff(13),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[14]_i_1_n_0\,
      Q => byte_index_0_ff(14),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[15]_i_1_n_0\,
      Q => byte_index_0_ff(15),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[16]_i_1_n_0\,
      Q => byte_index_0_ff(16),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[17]_i_1_n_0\,
      Q => byte_index_0_ff(17),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[18]_i_1_n_0\,
      Q => byte_index_0_ff(18),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[19]_i_1_n_0\,
      Q => byte_index_0_ff(19),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[1]_i_1_n_0\,
      Q => byte_index_0_ff(1),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[20]_i_1_n_0\,
      Q => byte_index_0_ff(20),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[21]_i_1_n_0\,
      Q => byte_index_0_ff(21),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[22]_i_1_n_0\,
      Q => byte_index_0_ff(22),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[23]_i_1_n_0\,
      Q => byte_index_0_ff(23),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[24]_i_1_n_0\,
      Q => byte_index_0_ff(24),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[25]_i_1_n_0\,
      Q => byte_index_0_ff(25),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[26]_i_1_n_0\,
      Q => byte_index_0_ff(26),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[27]_i_1_n_0\,
      Q => byte_index_0_ff(27),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[28]_i_1_n_0\,
      Q => byte_index_0_ff(28),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[29]_i_1_n_0\,
      Q => byte_index_0_ff(29),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[2]_i_1_n_0\,
      Q => byte_index_0_ff(2),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[30]_i_1_n_0\,
      Q => byte_index_0_ff(30),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[31]_i_1_n_0\,
      Q => byte_index_0_ff(31),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[3]_i_1_n_0\,
      Q => byte_index_0_ff(3),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[4]_i_1_n_0\,
      Q => byte_index_0_ff(4),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[5]_i_1_n_0\,
      Q => byte_index_0_ff(5),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[6]_i_1_n_0\,
      Q => byte_index_0_ff(6),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[7]_i_1_n_0\,
      Q => byte_index_0_ff(7),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[8]_i_1_n_0\,
      Q => byte_index_0_ff(8),
      R => \^s_axi_aresetn_0\
    );
\byte_index_0_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \byte_index_0_ff[9]_i_1_n_0\,
      Q => byte_index_0_ff(9),
      R => \^s_axi_aresetn_0\
    );
byte_index_1_ff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => byte_index_1_ff0_carry_n_0,
      CO(2) => byte_index_1_ff0_carry_n_1,
      CO(1) => byte_index_1_ff0_carry_n_2,
      CO(0) => byte_index_1_ff0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => byte_index_1_ff(1),
      DI(0) => '0',
      O(3 downto 0) => byte_index_1_ff0(3 downto 0),
      S(3 downto 2) => byte_index_1_ff(3 downto 2),
      S(1) => byte_index_1_ff0_carry_i_1_n_0,
      S(0) => byte_index_1_ff(0)
    );
\byte_index_1_ff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => byte_index_1_ff0_carry_n_0,
      CO(3) => \byte_index_1_ff0_carry__0_n_0\,
      CO(2) => \byte_index_1_ff0_carry__0_n_1\,
      CO(1) => \byte_index_1_ff0_carry__0_n_2\,
      CO(0) => \byte_index_1_ff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_1_ff0(7 downto 4),
      S(3 downto 0) => byte_index_1_ff(7 downto 4)
    );
\byte_index_1_ff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_1_ff0_carry__0_n_0\,
      CO(3) => \byte_index_1_ff0_carry__1_n_0\,
      CO(2) => \byte_index_1_ff0_carry__1_n_1\,
      CO(1) => \byte_index_1_ff0_carry__1_n_2\,
      CO(0) => \byte_index_1_ff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_1_ff0(11 downto 8),
      S(3 downto 0) => byte_index_1_ff(11 downto 8)
    );
\byte_index_1_ff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_1_ff0_carry__1_n_0\,
      CO(3) => \byte_index_1_ff0_carry__2_n_0\,
      CO(2) => \byte_index_1_ff0_carry__2_n_1\,
      CO(1) => \byte_index_1_ff0_carry__2_n_2\,
      CO(0) => \byte_index_1_ff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_1_ff0(15 downto 12),
      S(3 downto 0) => byte_index_1_ff(15 downto 12)
    );
\byte_index_1_ff0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_1_ff0_carry__2_n_0\,
      CO(3) => \byte_index_1_ff0_carry__3_n_0\,
      CO(2) => \byte_index_1_ff0_carry__3_n_1\,
      CO(1) => \byte_index_1_ff0_carry__3_n_2\,
      CO(0) => \byte_index_1_ff0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_1_ff0(19 downto 16),
      S(3 downto 0) => byte_index_1_ff(19 downto 16)
    );
\byte_index_1_ff0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_1_ff0_carry__3_n_0\,
      CO(3) => \byte_index_1_ff0_carry__4_n_0\,
      CO(2) => \byte_index_1_ff0_carry__4_n_1\,
      CO(1) => \byte_index_1_ff0_carry__4_n_2\,
      CO(0) => \byte_index_1_ff0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_1_ff0(23 downto 20),
      S(3 downto 0) => byte_index_1_ff(23 downto 20)
    );
\byte_index_1_ff0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_1_ff0_carry__4_n_0\,
      CO(3) => \byte_index_1_ff0_carry__5_n_0\,
      CO(2) => \byte_index_1_ff0_carry__5_n_1\,
      CO(1) => \byte_index_1_ff0_carry__5_n_2\,
      CO(0) => \byte_index_1_ff0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_1_ff0(27 downto 24),
      S(3 downto 0) => byte_index_1_ff(27 downto 24)
    );
\byte_index_1_ff0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_1_ff0_carry__5_n_0\,
      CO(3) => \NLW_byte_index_1_ff0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \byte_index_1_ff0_carry__6_n_1\,
      CO(1) => \byte_index_1_ff0_carry__6_n_2\,
      CO(0) => \byte_index_1_ff0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_1_ff0(31 downto 28),
      S(3 downto 0) => byte_index_1_ff(31 downto 28)
    );
byte_index_1_ff0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_index_1_ff(1),
      O => byte_index_1_ff0_carry_i_1_n_0
    );
\byte_index_1_ff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(0),
      O => \byte_index_1_ff[0]_i_1_n_0\
    );
\byte_index_1_ff[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(10),
      O => \byte_index_1_ff[10]_i_1_n_0\
    );
\byte_index_1_ff[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(11),
      O => \byte_index_1_ff[11]_i_1_n_0\
    );
\byte_index_1_ff[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(12),
      O => \byte_index_1_ff[12]_i_1_n_0\
    );
\byte_index_1_ff[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(13),
      O => \byte_index_1_ff[13]_i_1_n_0\
    );
\byte_index_1_ff[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(14),
      O => \byte_index_1_ff[14]_i_1_n_0\
    );
\byte_index_1_ff[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(15),
      O => \byte_index_1_ff[15]_i_1_n_0\
    );
\byte_index_1_ff[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(16),
      O => \byte_index_1_ff[16]_i_1_n_0\
    );
\byte_index_1_ff[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(17),
      O => \byte_index_1_ff[17]_i_1_n_0\
    );
\byte_index_1_ff[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(18),
      O => \byte_index_1_ff[18]_i_1_n_0\
    );
\byte_index_1_ff[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(19),
      O => \byte_index_1_ff[19]_i_1_n_0\
    );
\byte_index_1_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(1),
      O => \byte_index_1_ff[1]_i_1_n_0\
    );
\byte_index_1_ff[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(20),
      O => \byte_index_1_ff[20]_i_1_n_0\
    );
\byte_index_1_ff[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(21),
      O => \byte_index_1_ff[21]_i_1_n_0\
    );
\byte_index_1_ff[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(22),
      O => \byte_index_1_ff[22]_i_1_n_0\
    );
\byte_index_1_ff[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(23),
      O => \byte_index_1_ff[23]_i_1_n_0\
    );
\byte_index_1_ff[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(24),
      O => \byte_index_1_ff[24]_i_1_n_0\
    );
\byte_index_1_ff[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(25),
      O => \byte_index_1_ff[25]_i_1_n_0\
    );
\byte_index_1_ff[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(26),
      O => \byte_index_1_ff[26]_i_1_n_0\
    );
\byte_index_1_ff[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(27),
      O => \byte_index_1_ff[27]_i_1_n_0\
    );
\byte_index_1_ff[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(28),
      O => \byte_index_1_ff[28]_i_1_n_0\
    );
\byte_index_1_ff[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(29),
      O => \byte_index_1_ff[29]_i_1_n_0\
    );
\byte_index_1_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(2),
      O => \byte_index_1_ff[2]_i_1_n_0\
    );
\byte_index_1_ff[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(30),
      O => \byte_index_1_ff[30]_i_1_n_0\
    );
\byte_index_1_ff[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(31),
      O => \byte_index_1_ff[31]_i_1_n_0\
    );
\byte_index_1_ff[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(3),
      O => \byte_index_1_ff[3]_i_1_n_0\
    );
\byte_index_1_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(4),
      O => \byte_index_1_ff[4]_i_1_n_0\
    );
\byte_index_1_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(5),
      O => \byte_index_1_ff[5]_i_1_n_0\
    );
\byte_index_1_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(6),
      O => \byte_index_1_ff[6]_i_1_n_0\
    );
\byte_index_1_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(7),
      O => \byte_index_1_ff[7]_i_1_n_0\
    );
\byte_index_1_ff[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(8),
      O => \byte_index_1_ff[8]_i_1_n_0\
    );
\byte_index_1_ff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => byte_index_1_ff0(9),
      O => \byte_index_1_ff[9]_i_1_n_0\
    );
\byte_index_1_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[0]_i_1_n_0\,
      Q => byte_index_1_ff(0),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[10]_i_1_n_0\,
      Q => byte_index_1_ff(10),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[11]_i_1_n_0\,
      Q => byte_index_1_ff(11),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[12]_i_1_n_0\,
      Q => byte_index_1_ff(12),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[13]_i_1_n_0\,
      Q => byte_index_1_ff(13),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[14]_i_1_n_0\,
      Q => byte_index_1_ff(14),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[15]_i_1_n_0\,
      Q => byte_index_1_ff(15),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[16]_i_1_n_0\,
      Q => byte_index_1_ff(16),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[17]_i_1_n_0\,
      Q => byte_index_1_ff(17),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[18]_i_1_n_0\,
      Q => byte_index_1_ff(18),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[19]_i_1_n_0\,
      Q => byte_index_1_ff(19),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[1]_i_1_n_0\,
      Q => byte_index_1_ff(1),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[20]_i_1_n_0\,
      Q => byte_index_1_ff(20),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[21]_i_1_n_0\,
      Q => byte_index_1_ff(21),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[22]_i_1_n_0\,
      Q => byte_index_1_ff(22),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[23]_i_1_n_0\,
      Q => byte_index_1_ff(23),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[24]_i_1_n_0\,
      Q => byte_index_1_ff(24),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[25]_i_1_n_0\,
      Q => byte_index_1_ff(25),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[26]_i_1_n_0\,
      Q => byte_index_1_ff(26),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[27]_i_1_n_0\,
      Q => byte_index_1_ff(27),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[28]_i_1_n_0\,
      Q => byte_index_1_ff(28),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[29]_i_1_n_0\,
      Q => byte_index_1_ff(29),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[2]_i_1_n_0\,
      Q => byte_index_1_ff(2),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[30]_i_1_n_0\,
      Q => byte_index_1_ff(30),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[31]_i_1_n_0\,
      Q => byte_index_1_ff(31),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[3]_i_1_n_0\,
      Q => byte_index_1_ff(3),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[4]_i_1_n_0\,
      Q => byte_index_1_ff(4),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[5]_i_1_n_0\,
      Q => byte_index_1_ff(5),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[6]_i_1_n_0\,
      Q => byte_index_1_ff(6),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[7]_i_1_n_0\,
      Q => byte_index_1_ff(7),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[8]_i_1_n_0\,
      Q => byte_index_1_ff(8),
      R => \^s_axi_aresetn_0\
    );
\byte_index_1_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \byte_index_1_ff[9]_i_1_n_0\,
      Q => byte_index_1_ff(9),
      R => \^s_axi_aresetn_0\
    );
combined_samples_ff_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => sample_ff(31),
      A(28) => sample_ff(31),
      A(27) => sample_ff(31),
      A(26) => sample_ff(31),
      A(25) => sample_ff(31),
      A(24) => sample_ff(31),
      A(23) => sample_ff(31),
      A(22) => sample_ff(31),
      A(21) => sample_ff(31),
      A(20) => sample_ff(31),
      A(19) => sample_ff(31),
      A(18) => sample_ff(31),
      A(17) => sample_ff(31),
      A(16) => sample_ff(31),
      A(15) => sample_ff(31),
      A(14 downto 0) => sample_ff(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_combined_samples_ff_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => player_vol_coef_ff(31),
      B(16) => player_vol_coef_ff(31),
      B(15) => player_vol_coef_ff(31),
      B(14 downto 0) => player_vol_coef_ff(14 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_combined_samples_ff_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_combined_samples_ff_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_combined_samples_ff_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^sample_ff0\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => CEB2,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => CEM,
      CEP => CEP,
      CLK => s_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_combined_samples_ff_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0100101",
      OVERFLOW => NLW_combined_samples_ff_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_combined_samples_ff_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => D(31 downto 0),
      PATTERNBDETECT => NLW_combined_samples_ff_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_combined_samples_ff_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_combined_samples_ff_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => \^s_axi_aresetn_0\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^s_axi_aresetn_0\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => \^s_axi_aresetn_0\,
      RSTP => RSTP,
      UNDERFLOW => NLW_combined_samples_ff_reg_UNDERFLOW_UNCONNECTED
    );
combined_samples_ff_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => curr_player_state_ff(1),
      I3 => curr_state_ff(1),
      I4 => curr_state_ff(0),
      O => \^sample_ff0\
    );
combined_samples_ff_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(11),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(11),
      O => player_vol_coef_ff(11)
    );
combined_samples_ff_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(10),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(10),
      O => player_vol_coef_ff(10)
    );
combined_samples_ff_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(9),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(9),
      O => player_vol_coef_ff(9)
    );
combined_samples_ff_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(8),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(8),
      O => player_vol_coef_ff(8)
    );
combined_samples_ff_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(7),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(7),
      O => player_vol_coef_ff(7)
    );
combined_samples_ff_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(6),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(6),
      O => player_vol_coef_ff(6)
    );
combined_samples_ff_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(5),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(5),
      O => player_vol_coef_ff(5)
    );
combined_samples_ff_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(4),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(4),
      O => player_vol_coef_ff(4)
    );
combined_samples_ff_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(3),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(3),
      O => player_vol_coef_ff(3)
    );
combined_samples_ff_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(2),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(2),
      O => player_vol_coef_ff(2)
    );
combined_samples_ff_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => curr_player_state_ff(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => CEB2
    );
combined_samples_ff_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(1),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(1),
      O => player_vol_coef_ff(1)
    );
combined_samples_ff_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(0),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(0),
      O => player_vol_coef_ff(0)
    );
combined_samples_ff_reg_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(15),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(31),
      O => sample_ff(31)
    );
combined_samples_ff_reg_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(14),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(30),
      O => sample_ff(14)
    );
combined_samples_ff_reg_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(13),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(29),
      O => sample_ff(13)
    );
combined_samples_ff_reg_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(12),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(28),
      O => sample_ff(12)
    );
combined_samples_ff_reg_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(11),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(27),
      O => sample_ff(11)
    );
combined_samples_ff_reg_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(10),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(26),
      O => sample_ff(10)
    );
combined_samples_ff_reg_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(9),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(25),
      O => sample_ff(9)
    );
combined_samples_ff_reg_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(8),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(24),
      O => sample_ff(8)
    );
combined_samples_ff_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => curr_player_state_ff(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => CEM
    );
combined_samples_ff_reg_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(7),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(23),
      O => sample_ff(7)
    );
combined_samples_ff_reg_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(6),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(22),
      O => sample_ff(6)
    );
combined_samples_ff_reg_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(5),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(21),
      O => sample_ff(5)
    );
combined_samples_ff_reg_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(4),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(20),
      O => sample_ff(4)
    );
combined_samples_ff_reg_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(3),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(19),
      O => sample_ff(3)
    );
combined_samples_ff_reg_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(2),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(18),
      O => sample_ff(2)
    );
combined_samples_ff_reg_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(1),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(17),
      O => sample_ff(1)
    );
combined_samples_ff_reg_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA202A"
    )
        port map (
      I0 => \num_samples_0_ff_reg[31]_0\(0),
      I1 => \sample_index_1_ff_reg_n_0_[0]\,
      I2 => player_curr_slot_ff,
      I3 => \sample_index_0_ff_reg_n_0_[0]\,
      I4 => \num_samples_0_ff_reg[31]_0\(16),
      O => sample_ff(0)
    );
combined_samples_ff_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_player_state_ff(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => CEP
    );
combined_samples_ff_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => curr_player_state_ff(1),
      I2 => \^q\(1),
      I3 => s_axi_aresetn,
      O => RSTP
    );
combined_samples_ff_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(31),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(31),
      O => player_vol_coef_ff(31)
    );
combined_samples_ff_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(14),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(14),
      O => player_vol_coef_ff(14)
    );
combined_samples_ff_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(13),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(13),
      O => player_vol_coef_ff(13)
    );
combined_samples_ff_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vol_coef_1_ff(12),
      I1 => player_curr_slot_ff,
      I2 => vol_coef_0_ff(12),
      O => player_vol_coef_ff(12)
    );
\curr_player_state_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFAE"
    )
        port map (
      I0 => \curr_player_state_ff[0]_i_2_n_0\,
      I1 => \curr_player_state_ff[0]_i_3_n_0\,
      I2 => sel,
      I3 => \curr_player_state_ff[0]_i_4_n_0\,
      I4 => \curr_player_state_ff[0]_i_5_n_0\,
      I5 => \curr_player_state_ff[0]_i_6_n_0\,
      O => next_player_state(0)
    );
\curr_player_state_ff[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE2000000000000"
    )
        port map (
      I0 => \curr_player_state_ff_reg[2]_0\,
      I1 => \^q\(1),
      I2 => curr_state_ff_0(1),
      I3 => curr_state_ff_0(0),
      I4 => curr_player_state_ff(1),
      I5 => \^q\(0),
      O => \curr_player_state_ff[0]_i_2_n_0\
    );
\curr_player_state_ff[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => curr_player_state_ff(1),
      I2 => curr_initter_state_ff(0),
      I3 => curr_initter_state_ff(1),
      I4 => curr_initter_state_ff(2),
      O => \curr_player_state_ff[0]_i_3_n_0\
    );
\curr_player_state_ff[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(1),
      I1 => curr_player_state_ff(1),
      I2 => curr_state_ff(1),
      I3 => curr_state_ff(0),
      O => \curr_player_state_ff[0]_i_4_n_0\
    );
\curr_player_state_ff[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => \^q\(0),
      I1 => player_curr_slot_ff,
      I2 => \^q\(1),
      I3 => curr_player_state_ff(1),
      O => \curr_player_state_ff[0]_i_5_n_0\
    );
\curr_player_state_ff[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111111111D1111"
    )
        port map (
      I0 => \curr_player_state_ff_reg[0]_1\,
      I1 => \^q\(0),
      I2 => curr_player_state_ff(1),
      I3 => player_curr_slot_ff,
      I4 => \^slot_active_array_ff_reg[1]_0\,
      I5 => \^slot_active_array_ff_reg[0]_0\,
      O => \curr_player_state_ff[0]_i_6_n_0\
    );
\curr_player_state_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \^q\(1),
      I1 => curr_player_state_ff(1),
      I2 => \^q\(0),
      I3 => \^slot_active_array_ff_reg[0]_0\,
      I4 => \curr_player_state_ff[1]_i_2_n_0\,
      O => next_player_state(1)
    );
\curr_player_state_ff[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0F0F0CAC0F0F0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \curr_player_state_ff_reg[1]_0\,
      I2 => curr_player_state_ff(1),
      I3 => player_curr_slot_ff,
      I4 => \^q\(0),
      I5 => \^slot_active_array_ff_reg[1]_0\,
      O => \curr_player_state_ff[1]_i_2_n_0\
    );
\curr_player_state_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2266A2A2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => player_curr_slot_ff,
      I3 => \curr_player_state_ff_reg[2]_0\,
      I4 => curr_player_state_ff(1),
      I5 => \curr_player_state_ff[2]_i_3_n_0\,
      O => next_player_state(2)
    );
\curr_player_state_ff[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => \curr_player_state_ff[2]_i_4_n_0\,
      I1 => \^slot_active_array_ff_reg[0]_0\,
      I2 => \^slot_active_array_ff_reg[1]_0\,
      I3 => \curr_player_state_ff_reg[2]_1\,
      I4 => curr_player_state_ff(1),
      I5 => \^q\(1),
      O => \curr_player_state_ff[2]_i_3_n_0\
    );
\curr_player_state_ff[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_player_state_ff(1),
      I1 => \^q\(0),
      I2 => player_curr_slot_ff,
      O => \curr_player_state_ff[2]_i_4_n_0\
    );
\curr_player_state_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_player_state(0),
      Q => \^q\(0),
      R => \^s_axi_aresetn_0\
    );
\curr_player_state_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_player_state(1),
      Q => curr_player_state_ff(1),
      R => \^s_axi_aresetn_0\
    );
\curr_player_state_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_player_state(2),
      Q => \^q\(1),
      R => \^s_axi_aresetn_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(23),
      I1 => \sample_index_1_ff_reg_n_0_[23]\,
      I2 => last_sample_array10_in(22),
      I3 => \sample_index_1_ff_reg_n_0_[22]\,
      I4 => \sample_index_1_ff_reg_n_0_[21]\,
      I5 => last_sample_array10_in(21),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(6),
      I1 => byte_index_1_ff(6),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(6),
      I4 => byte_index_0_ff(6),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(20),
      I1 => \sample_index_1_ff_reg_n_0_[20]\,
      I2 => last_sample_array10_in(19),
      I3 => \sample_index_1_ff_reg_n_0_[19]\,
      I4 => \sample_index_1_ff_reg_n_0_[18]\,
      I5 => last_sample_array10_in(18),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(5),
      I1 => byte_index_1_ff(5),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(5),
      I4 => byte_index_0_ff(5),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(17),
      I1 => \sample_index_1_ff_reg_n_0_[17]\,
      I2 => last_sample_array10_in(16),
      I3 => \sample_index_1_ff_reg_n_0_[16]\,
      I4 => \sample_index_1_ff_reg_n_0_[15]\,
      I5 => last_sample_array10_in(15),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(4),
      I1 => byte_index_1_ff(4),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(4),
      I4 => byte_index_0_ff(4),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(14),
      I1 => \sample_index_1_ff_reg_n_0_[14]\,
      I2 => last_sample_array10_in(13),
      I3 => \sample_index_1_ff_reg_n_0_[13]\,
      I4 => \sample_index_1_ff_reg_n_0_[12]\,
      I5 => last_sample_array10_in(12),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(3),
      I1 => byte_index_1_ff(3),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(3),
      I4 => byte_index_0_ff(3),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__0_i_1__1_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(7),
      I3 => byte_index_0_ff(7),
      I4 => sound_addr_1_ff(7),
      I5 => byte_index_1_ff(7),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__0_i_2__1_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(6),
      I3 => byte_index_0_ff(6),
      I4 => sound_addr_1_ff(6),
      I5 => byte_index_1_ff(6),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__0_i_3__1_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(5),
      I3 => byte_index_0_ff(5),
      I4 => sound_addr_1_ff(5),
      I5 => byte_index_1_ff(5),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__0_i_4__1_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(4),
      I3 => byte_index_0_ff(4),
      I4 => sound_addr_1_ff(4),
      I5 => byte_index_1_ff(4),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => last_sample_array10_in(31),
      I1 => \sample_index_1_ff_reg_n_0_[31]\,
      I2 => last_sample_array10_in(30),
      I3 => \sample_index_1_ff_reg_n_0_[30]\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(10),
      I1 => byte_index_1_ff(10),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(10),
      I4 => byte_index_0_ff(10),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(29),
      I1 => \sample_index_1_ff_reg_n_0_[29]\,
      I2 => last_sample_array10_in(28),
      I3 => \sample_index_1_ff_reg_n_0_[28]\,
      I4 => \sample_index_1_ff_reg_n_0_[27]\,
      I5 => last_sample_array10_in(27),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(9),
      I1 => byte_index_1_ff(9),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(9),
      I4 => byte_index_0_ff(9),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(26),
      I1 => \sample_index_1_ff_reg_n_0_[26]\,
      I2 => last_sample_array10_in(25),
      I3 => \sample_index_1_ff_reg_n_0_[25]\,
      I4 => \sample_index_1_ff_reg_n_0_[24]\,
      I5 => last_sample_array10_in(24),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(8),
      I1 => byte_index_1_ff(8),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(8),
      I4 => byte_index_0_ff(8),
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(7),
      I1 => byte_index_1_ff(7),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(7),
      I4 => byte_index_0_ff(7),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__1_i_1__1_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(11),
      I3 => byte_index_0_ff(11),
      I4 => sound_addr_1_ff(11),
      I5 => byte_index_1_ff(11),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__1_i_2__1_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(10),
      I3 => byte_index_0_ff(10),
      I4 => sound_addr_1_ff(10),
      I5 => byte_index_1_ff(10),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__1_i_3__1_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(9),
      I3 => byte_index_0_ff(9),
      I4 => sound_addr_1_ff(9),
      I5 => byte_index_1_ff(9),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__1_i_4__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(8),
      I3 => byte_index_0_ff(8),
      I4 => sound_addr_1_ff(8),
      I5 => byte_index_1_ff(8),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(16),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(14),
      I1 => byte_index_1_ff(14),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(14),
      I4 => byte_index_0_ff(14),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(15),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(13),
      I1 => byte_index_1_ff(13),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(13),
      I4 => byte_index_0_ff(13),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(14),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(12),
      I1 => byte_index_1_ff(12),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(12),
      I4 => byte_index_0_ff(12),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(11),
      I1 => byte_index_1_ff(11),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(11),
      I4 => byte_index_0_ff(11),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__2_i_1__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(15),
      I3 => byte_index_0_ff(15),
      I4 => sound_addr_1_ff(15),
      I5 => byte_index_1_ff(15),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__2_i_2__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(14),
      I3 => byte_index_0_ff(14),
      I4 => sound_addr_1_ff(14),
      I5 => byte_index_1_ff(14),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__2_i_3__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(13),
      I3 => byte_index_0_ff(13),
      I4 => sound_addr_1_ff(13),
      I5 => byte_index_1_ff(13),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__2_i_4__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(12),
      I3 => byte_index_0_ff(12),
      I4 => sound_addr_1_ff(12),
      I5 => byte_index_1_ff(12),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(20),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(18),
      I1 => byte_index_1_ff(18),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(18),
      I4 => byte_index_0_ff(18),
      O => \i__carry__3_i_1__0_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(19),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(17),
      I1 => byte_index_1_ff(17),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(17),
      I4 => byte_index_0_ff(17),
      O => \i__carry__3_i_2__0_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(18),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(16),
      I1 => byte_index_1_ff(16),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(16),
      I4 => byte_index_0_ff(16),
      O => \i__carry__3_i_3__0_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(17),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__3_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(15),
      I1 => byte_index_1_ff(15),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(15),
      I4 => byte_index_0_ff(15),
      O => \i__carry__3_i_4__0_n_0\
    );
\i__carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__3_i_1__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(19),
      I3 => byte_index_0_ff(19),
      I4 => sound_addr_1_ff(19),
      I5 => byte_index_1_ff(19),
      O => \i__carry__3_i_5_n_0\
    );
\i__carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__3_i_2__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(18),
      I3 => byte_index_0_ff(18),
      I4 => sound_addr_1_ff(18),
      I5 => byte_index_1_ff(18),
      O => \i__carry__3_i_6_n_0\
    );
\i__carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__3_i_3__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(17),
      I3 => byte_index_0_ff(17),
      I4 => sound_addr_1_ff(17),
      I5 => byte_index_1_ff(17),
      O => \i__carry__3_i_7_n_0\
    );
\i__carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__3_i_4__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(16),
      I3 => byte_index_0_ff(16),
      I4 => sound_addr_1_ff(16),
      I5 => byte_index_1_ff(16),
      O => \i__carry__3_i_8_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(24),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(22),
      I1 => byte_index_1_ff(22),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(22),
      I4 => byte_index_0_ff(22),
      O => \i__carry__4_i_1__0_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(23),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(21),
      I1 => byte_index_1_ff(21),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(21),
      I4 => byte_index_0_ff(21),
      O => \i__carry__4_i_2__0_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(22),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(20),
      I1 => byte_index_1_ff(20),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(20),
      I4 => byte_index_0_ff(20),
      O => \i__carry__4_i_3__0_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(21),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__4_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(19),
      I1 => byte_index_1_ff(19),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(19),
      I4 => byte_index_0_ff(19),
      O => \i__carry__4_i_4__0_n_0\
    );
\i__carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__4_i_1__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(23),
      I3 => byte_index_0_ff(23),
      I4 => sound_addr_1_ff(23),
      I5 => byte_index_1_ff(23),
      O => \i__carry__4_i_5_n_0\
    );
\i__carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__4_i_2__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(22),
      I3 => byte_index_0_ff(22),
      I4 => sound_addr_1_ff(22),
      I5 => byte_index_1_ff(22),
      O => \i__carry__4_i_6_n_0\
    );
\i__carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__4_i_3__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(21),
      I3 => byte_index_0_ff(21),
      I4 => sound_addr_1_ff(21),
      I5 => byte_index_1_ff(21),
      O => \i__carry__4_i_7_n_0\
    );
\i__carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__4_i_4__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(20),
      I3 => byte_index_0_ff(20),
      I4 => sound_addr_1_ff(20),
      I5 => byte_index_1_ff(20),
      O => \i__carry__4_i_8_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(28),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(26),
      I1 => byte_index_1_ff(26),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(26),
      I4 => byte_index_0_ff(26),
      O => \i__carry__5_i_1__0_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(27),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(25),
      I1 => byte_index_1_ff(25),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(25),
      I4 => byte_index_0_ff(25),
      O => \i__carry__5_i_2__0_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(26),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(24),
      I1 => byte_index_1_ff(24),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(24),
      I4 => byte_index_0_ff(24),
      O => \i__carry__5_i_3__0_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(25),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__5_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(23),
      I1 => byte_index_1_ff(23),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(23),
      I4 => byte_index_0_ff(23),
      O => \i__carry__5_i_4__0_n_0\
    );
\i__carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__5_i_1__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(27),
      I3 => byte_index_0_ff(27),
      I4 => sound_addr_1_ff(27),
      I5 => byte_index_1_ff(27),
      O => \i__carry__5_i_5_n_0\
    );
\i__carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__5_i_2__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(26),
      I3 => byte_index_0_ff(26),
      I4 => sound_addr_1_ff(26),
      I5 => byte_index_1_ff(26),
      O => \i__carry__5_i_6_n_0\
    );
\i__carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__5_i_3__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(25),
      I3 => byte_index_0_ff(25),
      I4 => sound_addr_1_ff(25),
      I5 => byte_index_1_ff(25),
      O => \i__carry__5_i_7_n_0\
    );
\i__carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__5_i_4__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(24),
      I3 => byte_index_0_ff(24),
      I4 => sound_addr_1_ff(24),
      I5 => byte_index_1_ff(24),
      O => \i__carry__5_i_8_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(29),
      I1 => byte_index_1_ff(29),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(29),
      I4 => byte_index_0_ff(29),
      O => \i__carry__6_i_1__0_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(28),
      I1 => byte_index_1_ff(28),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(28),
      I4 => byte_index_0_ff(28),
      O => \i__carry__6_i_2__0_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => sound_addr_1_ff(27),
      I1 => byte_index_1_ff(27),
      I2 => player_curr_slot_ff,
      I3 => sound_addr_0_ff(27),
      I4 => byte_index_0_ff(27),
      O => \i__carry__6_i_3__0_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF90606060"
    )
        port map (
      I0 => sound_addr_1_ff(31),
      I1 => byte_index_1_ff(31),
      I2 => player_curr_slot_ff,
      I3 => byte_index_1_ff(30),
      I4 => sound_addr_1_ff(30),
      I5 => \i__carry__6_i_8_n_0\,
      O => \i__carry__6_i_4_n_0\
    );
\i__carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__6_i_1__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(30),
      I3 => byte_index_0_ff(30),
      I4 => sound_addr_1_ff(30),
      I5 => byte_index_1_ff(30),
      O => \i__carry__6_i_5_n_0\
    );
\i__carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__6_i_2__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(29),
      I3 => byte_index_0_ff(29),
      I4 => sound_addr_1_ff(29),
      I5 => byte_index_1_ff(29),
      O => \i__carry__6_i_6_n_0\
    );
\i__carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A65566556A99A"
    )
        port map (
      I0 => \i__carry__6_i_3__0_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(28),
      I3 => byte_index_0_ff(28),
      I4 => sound_addr_1_ff(28),
      I5 => byte_index_1_ff(28),
      O => \i__carry__6_i_7_n_0\
    );
\i__carry__6_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008778"
    )
        port map (
      I0 => sound_addr_0_ff(30),
      I1 => byte_index_0_ff(30),
      I2 => byte_index_0_ff(31),
      I3 => sound_addr_0_ff(31),
      I4 => player_curr_slot_ff,
      O => \i__carry__6_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(11),
      I1 => \sample_index_1_ff_reg_n_0_[11]\,
      I2 => last_sample_array10_in(10),
      I3 => \sample_index_1_ff_reg_n_0_[10]\,
      I4 => \sample_index_1_ff_reg_n_0_[9]\,
      I5 => last_sample_array10_in(9),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sound_addr_0_ff(2),
      I1 => player_curr_slot_ff,
      I2 => sound_addr_1_ff(2),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(8),
      I1 => \sample_index_1_ff_reg_n_0_[8]\,
      I2 => last_sample_array10_in(7),
      I3 => \sample_index_1_ff_reg_n_0_[7]\,
      I4 => \sample_index_1_ff_reg_n_0_[6]\,
      I5 => last_sample_array10_in(6),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => sound_addr_1_ff(2),
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(2),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array10_in(5),
      I1 => \sample_index_1_ff_reg_n_0_[5]\,
      I2 => last_sample_array10_in(4),
      I3 => \sample_index_1_ff_reg_n_0_[4]\,
      I4 => \sample_index_1_ff_reg_n_0_[3]\,
      I5 => last_sample_array10_in(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => byte_index_1_ff(1),
      I1 => player_curr_slot_ff,
      I2 => byte_index_0_ff(1),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_1_ff(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \sample_index_1_ff_reg_n_0_[0]\,
      I1 => num_samples_1_ff(0),
      I2 => last_sample_array10_in(2),
      I3 => \sample_index_1_ff_reg_n_0_[2]\,
      I4 => \sample_index_1_ff_reg_n_0_[1]\,
      I5 => last_sample_array10_in(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => byte_index_1_ff(0),
      I1 => player_curr_slot_ff,
      I2 => byte_index_0_ff(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56659AA99AA95665"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(3),
      I3 => byte_index_0_ff(3),
      I4 => sound_addr_1_ff(3),
      I5 => byte_index_1_ff(3),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => sound_addr_0_ff(2),
      I1 => sound_addr_1_ff(2),
      I2 => byte_index_0_ff(2),
      I3 => player_curr_slot_ff,
      I4 => byte_index_1_ff(2),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => byte_index_0_ff(1),
      I1 => byte_index_1_ff(1),
      I2 => sound_addr_0_ff(1),
      I3 => player_curr_slot_ff,
      I4 => sound_addr_1_ff(1),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => byte_index_0_ff(0),
      I1 => byte_index_1_ff(0),
      I2 => sound_addr_0_ff(0),
      I3 => player_curr_slot_ff,
      I4 => sound_addr_1_ff(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => sound_addr_1_ff(2),
      I1 => player_curr_slot_ff,
      I2 => sound_addr_0_ff(2),
      O => \i__carry_i_9_n_0\
    );
\initter_curr_slot_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s_rv_valid,
      I1 => curr_initter_state_ff(2),
      I2 => curr_initter_state_ff(1),
      I3 => curr_initter_state_ff(0),
      O => initter_sound_addr_ff0
    );
\initter_curr_slot_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => slot_ff(0),
      Q => initter_curr_slot_ff,
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(0),
      Q => initter_sound_addr_ff(0),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(10),
      Q => initter_sound_addr_ff(10),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(11),
      Q => initter_sound_addr_ff(11),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(12),
      Q => initter_sound_addr_ff(12),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(13),
      Q => initter_sound_addr_ff(13),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(14),
      Q => initter_sound_addr_ff(14),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(15),
      Q => initter_sound_addr_ff(15),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(16),
      Q => initter_sound_addr_ff(16),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(17),
      Q => initter_sound_addr_ff(17),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(18),
      Q => initter_sound_addr_ff(18),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(19),
      Q => initter_sound_addr_ff(19),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(1),
      Q => initter_sound_addr_ff(1),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(20),
      Q => initter_sound_addr_ff(20),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(21),
      Q => initter_sound_addr_ff(21),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(22),
      Q => initter_sound_addr_ff(22),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(23),
      Q => initter_sound_addr_ff(23),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(24),
      Q => initter_sound_addr_ff(24),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(25),
      Q => initter_sound_addr_ff(25),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(26),
      Q => initter_sound_addr_ff(26),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(27),
      Q => initter_sound_addr_ff(27),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(28),
      Q => initter_sound_addr_ff(28),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(29),
      Q => initter_sound_addr_ff(29),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(2),
      Q => initter_sound_addr_ff(2),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(30),
      Q => initter_sound_addr_ff(30),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(31),
      Q => initter_sound_addr_ff(31),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(3),
      Q => initter_sound_addr_ff(3),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(4),
      Q => initter_sound_addr_ff(4),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(5),
      Q => initter_sound_addr_ff(5),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(6),
      Q => initter_sound_addr_ff(6),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(7),
      Q => initter_sound_addr_ff(7),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(8),
      Q => initter_sound_addr_ff(8),
      R => \^s_axi_aresetn_0\
    );
\initter_sound_addr_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_sound_addr_ff_reg[31]_0\(9),
      Q => initter_sound_addr_ff(9),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(0),
      Q => initter_vol_coef_ff(0),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(10),
      Q => initter_vol_coef_ff(10),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(11),
      Q => initter_vol_coef_ff(11),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(12),
      Q => initter_vol_coef_ff(12),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(13),
      Q => initter_vol_coef_ff(13),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(14),
      Q => initter_vol_coef_ff(14),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(1),
      Q => initter_vol_coef_ff(1),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(2),
      Q => initter_vol_coef_ff(2),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(15),
      Q => initter_vol_coef_ff(31),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(3),
      Q => initter_vol_coef_ff(3),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(4),
      Q => initter_vol_coef_ff(4),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(5),
      Q => initter_vol_coef_ff(5),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(6),
      Q => initter_vol_coef_ff(6),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(7),
      Q => initter_vol_coef_ff(7),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(8),
      Q => initter_vol_coef_ff(8),
      R => \^s_axi_aresetn_0\
    );
\initter_vol_coef_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => initter_sound_addr_ff0,
      D => \initter_vol_coef_ff_reg[31]_0\(9),
      Q => initter_vol_coef_ff(9),
      R => \^s_axi_aresetn_0\
    );
last_sample_array0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => last_sample_array0_carry_n_0,
      CO(2) => last_sample_array0_carry_n_1,
      CO(1) => last_sample_array0_carry_n_2,
      CO(0) => last_sample_array0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_last_sample_array0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => last_sample_array0_carry_i_1_n_0,
      S(2) => last_sample_array0_carry_i_2_n_0,
      S(1) => last_sample_array0_carry_i_3_n_0,
      S(0) => last_sample_array0_carry_i_4_n_0
    );
\last_sample_array0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => last_sample_array0_carry_n_0,
      CO(3) => \last_sample_array0_carry__0_n_0\,
      CO(2) => \last_sample_array0_carry__0_n_1\,
      CO(1) => \last_sample_array0_carry__0_n_2\,
      CO(0) => \last_sample_array0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_last_sample_array0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \last_sample_array0_carry__0_i_1_n_0\,
      S(2) => \last_sample_array0_carry__0_i_2_n_0\,
      S(1) => \last_sample_array0_carry__0_i_3_n_0\,
      S(0) => \last_sample_array0_carry__0_i_4_n_0\
    );
\last_sample_array0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(23),
      I1 => \sample_index_0_ff_reg_n_0_[23]\,
      I2 => last_sample_array1(22),
      I3 => \sample_index_0_ff_reg_n_0_[22]\,
      I4 => \sample_index_0_ff_reg_n_0_[21]\,
      I5 => last_sample_array1(21),
      O => \last_sample_array0_carry__0_i_1_n_0\
    );
\last_sample_array0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(20),
      I1 => \sample_index_0_ff_reg_n_0_[20]\,
      I2 => last_sample_array1(19),
      I3 => \sample_index_0_ff_reg_n_0_[19]\,
      I4 => \sample_index_0_ff_reg_n_0_[18]\,
      I5 => last_sample_array1(18),
      O => \last_sample_array0_carry__0_i_2_n_0\
    );
\last_sample_array0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(17),
      I1 => \sample_index_0_ff_reg_n_0_[17]\,
      I2 => last_sample_array1(16),
      I3 => \sample_index_0_ff_reg_n_0_[16]\,
      I4 => \sample_index_0_ff_reg_n_0_[15]\,
      I5 => last_sample_array1(15),
      O => \last_sample_array0_carry__0_i_3_n_0\
    );
\last_sample_array0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(14),
      I1 => \sample_index_0_ff_reg_n_0_[14]\,
      I2 => last_sample_array1(13),
      I3 => \sample_index_0_ff_reg_n_0_[13]\,
      I4 => \sample_index_0_ff_reg_n_0_[12]\,
      I5 => last_sample_array1(12),
      O => \last_sample_array0_carry__0_i_4_n_0\
    );
\last_sample_array0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array0_carry__0_n_0\,
      CO(3) => \NLW_last_sample_array0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => last_sample_array_reg,
      CO(1) => \last_sample_array0_carry__1_n_2\,
      CO(0) => \last_sample_array0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_last_sample_array0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \last_sample_array0_carry__1_i_1_n_0\,
      S(1) => \last_sample_array0_carry__1_i_2_n_0\,
      S(0) => \last_sample_array0_carry__1_i_3_n_0\
    );
\last_sample_array0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => last_sample_array1(31),
      I1 => \sample_index_0_ff_reg_n_0_[31]\,
      I2 => last_sample_array1(30),
      I3 => \sample_index_0_ff_reg_n_0_[30]\,
      O => \last_sample_array0_carry__1_i_1_n_0\
    );
\last_sample_array0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(29),
      I1 => \sample_index_0_ff_reg_n_0_[29]\,
      I2 => last_sample_array1(28),
      I3 => \sample_index_0_ff_reg_n_0_[28]\,
      I4 => \sample_index_0_ff_reg_n_0_[27]\,
      I5 => last_sample_array1(27),
      O => \last_sample_array0_carry__1_i_2_n_0\
    );
\last_sample_array0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(26),
      I1 => \sample_index_0_ff_reg_n_0_[26]\,
      I2 => last_sample_array1(25),
      I3 => \sample_index_0_ff_reg_n_0_[25]\,
      I4 => \sample_index_0_ff_reg_n_0_[24]\,
      I5 => last_sample_array1(24),
      O => \last_sample_array0_carry__1_i_3_n_0\
    );
last_sample_array0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(11),
      I1 => \sample_index_0_ff_reg_n_0_[11]\,
      I2 => last_sample_array1(10),
      I3 => \sample_index_0_ff_reg_n_0_[10]\,
      I4 => \sample_index_0_ff_reg_n_0_[9]\,
      I5 => last_sample_array1(9),
      O => last_sample_array0_carry_i_1_n_0
    );
last_sample_array0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(8),
      I1 => \sample_index_0_ff_reg_n_0_[8]\,
      I2 => last_sample_array1(7),
      I3 => \sample_index_0_ff_reg_n_0_[7]\,
      I4 => \sample_index_0_ff_reg_n_0_[6]\,
      I5 => last_sample_array1(6),
      O => last_sample_array0_carry_i_2_n_0
    );
last_sample_array0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_sample_array1(5),
      I1 => \sample_index_0_ff_reg_n_0_[5]\,
      I2 => last_sample_array1(4),
      I3 => \sample_index_0_ff_reg_n_0_[4]\,
      I4 => \sample_index_0_ff_reg_n_0_[3]\,
      I5 => last_sample_array1(3),
      O => last_sample_array0_carry_i_3_n_0
    );
last_sample_array0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \sample_index_0_ff_reg_n_0_[0]\,
      I1 => num_samples_0_ff(0),
      I2 => last_sample_array1(2),
      I3 => \sample_index_0_ff_reg_n_0_[2]\,
      I4 => \sample_index_0_ff_reg_n_0_[1]\,
      I5 => last_sample_array1(1),
      O => last_sample_array0_carry_i_4_n_0
    );
\last_sample_array0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \last_sample_array0_inferred__0/i__carry_n_0\,
      CO(2) => \last_sample_array0_inferred__0/i__carry_n_1\,
      CO(1) => \last_sample_array0_inferred__0/i__carry_n_2\,
      CO(0) => \last_sample_array0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_last_sample_array0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\last_sample_array0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array0_inferred__0/i__carry_n_0\,
      CO(3) => \last_sample_array0_inferred__0/i__carry__0_n_0\,
      CO(2) => \last_sample_array0_inferred__0/i__carry__0_n_1\,
      CO(1) => \last_sample_array0_inferred__0/i__carry__0_n_2\,
      CO(0) => \last_sample_array0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_last_sample_array0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\last_sample_array0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array0_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_last_sample_array0_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => last_sample_array_reg1_out,
      CO(1) => \last_sample_array0_inferred__0/i__carry__1_n_2\,
      CO(0) => \last_sample_array0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_last_sample_array0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__0_n_0\,
      S(1) => \i__carry__1_i_2__0_n_0\,
      S(0) => \i__carry__1_i_3__0_n_0\
    );
last_sample_array1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => last_sample_array1_carry_n_0,
      CO(2) => last_sample_array1_carry_n_1,
      CO(1) => last_sample_array1_carry_n_2,
      CO(0) => last_sample_array1_carry_n_3,
      CYINIT => num_samples_0_ff(0),
      DI(3 downto 0) => num_samples_0_ff(4 downto 1),
      O(3 downto 0) => last_sample_array1(4 downto 1),
      S(3) => last_sample_array1_carry_i_1_n_0,
      S(2) => last_sample_array1_carry_i_2_n_0,
      S(1) => last_sample_array1_carry_i_3_n_0,
      S(0) => last_sample_array1_carry_i_4_n_0
    );
\last_sample_array1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => last_sample_array1_carry_n_0,
      CO(3) => \last_sample_array1_carry__0_n_0\,
      CO(2) => \last_sample_array1_carry__0_n_1\,
      CO(1) => \last_sample_array1_carry__0_n_2\,
      CO(0) => \last_sample_array1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_0_ff(8 downto 5),
      O(3 downto 0) => last_sample_array1(8 downto 5),
      S(3) => \last_sample_array1_carry__0_i_1_n_0\,
      S(2) => \last_sample_array1_carry__0_i_2_n_0\,
      S(1) => \last_sample_array1_carry__0_i_3_n_0\,
      S(0) => \last_sample_array1_carry__0_i_4_n_0\
    );
\last_sample_array1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(8),
      O => \last_sample_array1_carry__0_i_1_n_0\
    );
\last_sample_array1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(7),
      O => \last_sample_array1_carry__0_i_2_n_0\
    );
\last_sample_array1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(6),
      O => \last_sample_array1_carry__0_i_3_n_0\
    );
\last_sample_array1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(5),
      O => \last_sample_array1_carry__0_i_4_n_0\
    );
\last_sample_array1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_carry__0_n_0\,
      CO(3) => \last_sample_array1_carry__1_n_0\,
      CO(2) => \last_sample_array1_carry__1_n_1\,
      CO(1) => \last_sample_array1_carry__1_n_2\,
      CO(0) => \last_sample_array1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_0_ff(12 downto 9),
      O(3 downto 0) => last_sample_array1(12 downto 9),
      S(3) => \last_sample_array1_carry__1_i_1_n_0\,
      S(2) => \last_sample_array1_carry__1_i_2_n_0\,
      S(1) => \last_sample_array1_carry__1_i_3_n_0\,
      S(0) => \last_sample_array1_carry__1_i_4_n_0\
    );
\last_sample_array1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(12),
      O => \last_sample_array1_carry__1_i_1_n_0\
    );
\last_sample_array1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(11),
      O => \last_sample_array1_carry__1_i_2_n_0\
    );
\last_sample_array1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(10),
      O => \last_sample_array1_carry__1_i_3_n_0\
    );
\last_sample_array1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(9),
      O => \last_sample_array1_carry__1_i_4_n_0\
    );
\last_sample_array1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_carry__1_n_0\,
      CO(3) => \last_sample_array1_carry__2_n_0\,
      CO(2) => \last_sample_array1_carry__2_n_1\,
      CO(1) => \last_sample_array1_carry__2_n_2\,
      CO(0) => \last_sample_array1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_0_ff(16 downto 13),
      O(3 downto 0) => last_sample_array1(16 downto 13),
      S(3) => \last_sample_array1_carry__2_i_1_n_0\,
      S(2) => \last_sample_array1_carry__2_i_2_n_0\,
      S(1) => \last_sample_array1_carry__2_i_3_n_0\,
      S(0) => \last_sample_array1_carry__2_i_4_n_0\
    );
\last_sample_array1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(16),
      O => \last_sample_array1_carry__2_i_1_n_0\
    );
\last_sample_array1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(15),
      O => \last_sample_array1_carry__2_i_2_n_0\
    );
\last_sample_array1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(14),
      O => \last_sample_array1_carry__2_i_3_n_0\
    );
\last_sample_array1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(13),
      O => \last_sample_array1_carry__2_i_4_n_0\
    );
\last_sample_array1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_carry__2_n_0\,
      CO(3) => \last_sample_array1_carry__3_n_0\,
      CO(2) => \last_sample_array1_carry__3_n_1\,
      CO(1) => \last_sample_array1_carry__3_n_2\,
      CO(0) => \last_sample_array1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_0_ff(20 downto 17),
      O(3 downto 0) => last_sample_array1(20 downto 17),
      S(3) => \last_sample_array1_carry__3_i_1_n_0\,
      S(2) => \last_sample_array1_carry__3_i_2_n_0\,
      S(1) => \last_sample_array1_carry__3_i_3_n_0\,
      S(0) => \last_sample_array1_carry__3_i_4_n_0\
    );
\last_sample_array1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(20),
      O => \last_sample_array1_carry__3_i_1_n_0\
    );
\last_sample_array1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(19),
      O => \last_sample_array1_carry__3_i_2_n_0\
    );
\last_sample_array1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(18),
      O => \last_sample_array1_carry__3_i_3_n_0\
    );
\last_sample_array1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(17),
      O => \last_sample_array1_carry__3_i_4_n_0\
    );
\last_sample_array1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_carry__3_n_0\,
      CO(3) => \last_sample_array1_carry__4_n_0\,
      CO(2) => \last_sample_array1_carry__4_n_1\,
      CO(1) => \last_sample_array1_carry__4_n_2\,
      CO(0) => \last_sample_array1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_0_ff(24 downto 21),
      O(3 downto 0) => last_sample_array1(24 downto 21),
      S(3) => \last_sample_array1_carry__4_i_1_n_0\,
      S(2) => \last_sample_array1_carry__4_i_2_n_0\,
      S(1) => \last_sample_array1_carry__4_i_3_n_0\,
      S(0) => \last_sample_array1_carry__4_i_4_n_0\
    );
\last_sample_array1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(24),
      O => \last_sample_array1_carry__4_i_1_n_0\
    );
\last_sample_array1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(23),
      O => \last_sample_array1_carry__4_i_2_n_0\
    );
\last_sample_array1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(22),
      O => \last_sample_array1_carry__4_i_3_n_0\
    );
\last_sample_array1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(21),
      O => \last_sample_array1_carry__4_i_4_n_0\
    );
\last_sample_array1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_carry__4_n_0\,
      CO(3) => \last_sample_array1_carry__5_n_0\,
      CO(2) => \last_sample_array1_carry__5_n_1\,
      CO(1) => \last_sample_array1_carry__5_n_2\,
      CO(0) => \last_sample_array1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_0_ff(28 downto 25),
      O(3 downto 0) => last_sample_array1(28 downto 25),
      S(3) => \last_sample_array1_carry__5_i_1_n_0\,
      S(2) => \last_sample_array1_carry__5_i_2_n_0\,
      S(1) => \last_sample_array1_carry__5_i_3_n_0\,
      S(0) => \last_sample_array1_carry__5_i_4_n_0\
    );
\last_sample_array1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(28),
      O => \last_sample_array1_carry__5_i_1_n_0\
    );
\last_sample_array1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(27),
      O => \last_sample_array1_carry__5_i_2_n_0\
    );
\last_sample_array1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(26),
      O => \last_sample_array1_carry__5_i_3_n_0\
    );
\last_sample_array1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(25),
      O => \last_sample_array1_carry__5_i_4_n_0\
    );
\last_sample_array1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_last_sample_array1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \last_sample_array1_carry__6_n_2\,
      CO(0) => \last_sample_array1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => num_samples_0_ff(30 downto 29),
      O(3) => \NLW_last_sample_array1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => last_sample_array1(31 downto 29),
      S(3) => '0',
      S(2) => \last_sample_array1_carry__6_i_1_n_0\,
      S(1) => \last_sample_array1_carry__6_i_2_n_0\,
      S(0) => \last_sample_array1_carry__6_i_3_n_0\
    );
\last_sample_array1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(31),
      O => \last_sample_array1_carry__6_i_1_n_0\
    );
\last_sample_array1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(30),
      O => \last_sample_array1_carry__6_i_2_n_0\
    );
\last_sample_array1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(29),
      O => \last_sample_array1_carry__6_i_3_n_0\
    );
last_sample_array1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(4),
      O => last_sample_array1_carry_i_1_n_0
    );
last_sample_array1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(3),
      O => last_sample_array1_carry_i_2_n_0
    );
last_sample_array1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(2),
      O => last_sample_array1_carry_i_3_n_0
    );
last_sample_array1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_0_ff(1),
      O => last_sample_array1_carry_i_4_n_0
    );
\last_sample_array1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \last_sample_array1_inferred__0/i__carry_n_0\,
      CO(2) => \last_sample_array1_inferred__0/i__carry_n_1\,
      CO(1) => \last_sample_array1_inferred__0/i__carry_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry_n_3\,
      CYINIT => num_samples_1_ff(0),
      DI(3 downto 0) => num_samples_1_ff(4 downto 1),
      O(3 downto 0) => last_sample_array10_in(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\last_sample_array1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_inferred__0/i__carry_n_0\,
      CO(3) => \last_sample_array1_inferred__0/i__carry__0_n_0\,
      CO(2) => \last_sample_array1_inferred__0/i__carry__0_n_1\,
      CO(1) => \last_sample_array1_inferred__0/i__carry__0_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_1_ff(8 downto 5),
      O(3 downto 0) => last_sample_array10_in(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\last_sample_array1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_inferred__0/i__carry__0_n_0\,
      CO(3) => \last_sample_array1_inferred__0/i__carry__1_n_0\,
      CO(2) => \last_sample_array1_inferred__0/i__carry__1_n_1\,
      CO(1) => \last_sample_array1_inferred__0/i__carry__1_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_1_ff(12 downto 9),
      O(3 downto 0) => last_sample_array10_in(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\last_sample_array1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_inferred__0/i__carry__1_n_0\,
      CO(3) => \last_sample_array1_inferred__0/i__carry__2_n_0\,
      CO(2) => \last_sample_array1_inferred__0/i__carry__2_n_1\,
      CO(1) => \last_sample_array1_inferred__0/i__carry__2_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_1_ff(16 downto 13),
      O(3 downto 0) => last_sample_array10_in(16 downto 13),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\last_sample_array1_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_inferred__0/i__carry__2_n_0\,
      CO(3) => \last_sample_array1_inferred__0/i__carry__3_n_0\,
      CO(2) => \last_sample_array1_inferred__0/i__carry__3_n_1\,
      CO(1) => \last_sample_array1_inferred__0/i__carry__3_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_1_ff(20 downto 17),
      O(3 downto 0) => last_sample_array10_in(20 downto 17),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\last_sample_array1_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_inferred__0/i__carry__3_n_0\,
      CO(3) => \last_sample_array1_inferred__0/i__carry__4_n_0\,
      CO(2) => \last_sample_array1_inferred__0/i__carry__4_n_1\,
      CO(1) => \last_sample_array1_inferred__0/i__carry__4_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_1_ff(24 downto 21),
      O(3 downto 0) => last_sample_array10_in(24 downto 21),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\last_sample_array1_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_inferred__0/i__carry__4_n_0\,
      CO(3) => \last_sample_array1_inferred__0/i__carry__5_n_0\,
      CO(2) => \last_sample_array1_inferred__0/i__carry__5_n_1\,
      CO(1) => \last_sample_array1_inferred__0/i__carry__5_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_1_ff(28 downto 25),
      O(3 downto 0) => last_sample_array10_in(28 downto 25),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\last_sample_array1_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sample_array1_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_last_sample_array1_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \last_sample_array1_inferred__0/i__carry__6_n_2\,
      CO(0) => \last_sample_array1_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => num_samples_1_ff(30 downto 29),
      O(3) => \NLW_last_sample_array1_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => last_sample_array10_in(31 downto 29),
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
\num_samples_0_ff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => curr_state_ff(0),
      I2 => curr_state_ff(1),
      I3 => curr_initter_state_ff(1),
      I4 => curr_initter_state_ff(2),
      I5 => curr_initter_state_ff(0),
      O => num_samples_0_ff_2
    );
\num_samples_0_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(0),
      Q => num_samples_0_ff(0),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(10),
      Q => num_samples_0_ff(10),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(11),
      Q => num_samples_0_ff(11),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(12),
      Q => num_samples_0_ff(12),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(13),
      Q => num_samples_0_ff(13),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(14),
      Q => num_samples_0_ff(14),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(15),
      Q => num_samples_0_ff(15),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(16),
      Q => num_samples_0_ff(16),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(17),
      Q => num_samples_0_ff(17),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(18),
      Q => num_samples_0_ff(18),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(19),
      Q => num_samples_0_ff(19),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(1),
      Q => num_samples_0_ff(1),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(20),
      Q => num_samples_0_ff(20),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(21),
      Q => num_samples_0_ff(21),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(22),
      Q => num_samples_0_ff(22),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(23),
      Q => num_samples_0_ff(23),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(24),
      Q => num_samples_0_ff(24),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(25),
      Q => num_samples_0_ff(25),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(26),
      Q => num_samples_0_ff(26),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(27),
      Q => num_samples_0_ff(27),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(28),
      Q => num_samples_0_ff(28),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(29),
      Q => num_samples_0_ff(29),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(2),
      Q => num_samples_0_ff(2),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(30),
      Q => num_samples_0_ff(30),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(31),
      Q => num_samples_0_ff(31),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(3),
      Q => num_samples_0_ff(3),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(4),
      Q => num_samples_0_ff(4),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(5),
      Q => num_samples_0_ff(5),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(6),
      Q => num_samples_0_ff(6),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(7),
      Q => num_samples_0_ff(7),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(8),
      Q => num_samples_0_ff(8),
      R => \^s_axi_aresetn_0\
    );
\num_samples_0_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_0_ff_2,
      D => \num_samples_0_ff_reg[31]_0\(9),
      Q => num_samples_0_ff(9),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => curr_state_ff(0),
      I1 => curr_state_ff(1),
      I2 => initter_curr_slot_ff,
      I3 => curr_initter_state_ff(1),
      I4 => curr_initter_state_ff(2),
      I5 => curr_initter_state_ff(0),
      O => num_samples_1_ff_1
    );
\num_samples_1_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(0),
      Q => num_samples_1_ff(0),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(10),
      Q => num_samples_1_ff(10),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(11),
      Q => num_samples_1_ff(11),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(12),
      Q => num_samples_1_ff(12),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(13),
      Q => num_samples_1_ff(13),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(14),
      Q => num_samples_1_ff(14),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(15),
      Q => num_samples_1_ff(15),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(16),
      Q => num_samples_1_ff(16),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(17),
      Q => num_samples_1_ff(17),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(18),
      Q => num_samples_1_ff(18),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(19),
      Q => num_samples_1_ff(19),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(1),
      Q => num_samples_1_ff(1),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(20),
      Q => num_samples_1_ff(20),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(21),
      Q => num_samples_1_ff(21),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(22),
      Q => num_samples_1_ff(22),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(23),
      Q => num_samples_1_ff(23),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(24),
      Q => num_samples_1_ff(24),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(25),
      Q => num_samples_1_ff(25),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(26),
      Q => num_samples_1_ff(26),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(27),
      Q => num_samples_1_ff(27),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(28),
      Q => num_samples_1_ff(28),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(29),
      Q => num_samples_1_ff(29),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(2),
      Q => num_samples_1_ff(2),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(30),
      Q => num_samples_1_ff(30),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(31),
      Q => num_samples_1_ff(31),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(3),
      Q => num_samples_1_ff(3),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(4),
      Q => num_samples_1_ff(4),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(5),
      Q => num_samples_1_ff(5),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(6),
      Q => num_samples_1_ff(6),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(7),
      Q => num_samples_1_ff(7),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(8),
      Q => num_samples_1_ff(8),
      R => \^s_axi_aresetn_0\
    );
\num_samples_1_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_1_ff_1,
      D => \num_samples_0_ff_reg[31]_0\(9),
      Q => num_samples_1_ff(9),
      R => \^s_axi_aresetn_0\
    );
\player_curr_slot_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \player_curr_slot_ff[0]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => curr_player_state_ff(1),
      I4 => \^q\(1),
      O => \player_curr_slot_ff[0]_i_1_n_0\
    );
\player_curr_slot_ff[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFDDDFD22002222"
    )
        port map (
      I0 => \^q\(0),
      I1 => curr_player_state_ff(1),
      I2 => \^slot_active_array_ff_reg[1]_0\,
      I3 => \^q\(1),
      I4 => \^slot_active_array_ff_reg[0]_0\,
      I5 => player_curr_slot_ff,
      O => \player_curr_slot_ff[0]_i_2_n_0\
    );
\player_curr_slot_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \player_curr_slot_ff[0]_i_1_n_0\,
      Q => player_curr_slot_ff,
      R => '0'
    );
\req_addr_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(0),
      I2 => sound_addr_1_ff(0),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(0),
      O => \req_addr_ff[0]_i_1_n_0\
    );
\req_addr_ff[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(10),
      I2 => sound_addr_1_ff(10),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(10),
      O => \req_addr_ff[10]_i_1_n_0\
    );
\req_addr_ff[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(11),
      I2 => sound_addr_1_ff(11),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(11),
      O => \req_addr_ff[11]_i_1_n_0\
    );
\req_addr_ff[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(12),
      I2 => sound_addr_1_ff(12),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(12),
      O => \req_addr_ff[12]_i_1_n_0\
    );
\req_addr_ff[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(13),
      I2 => sound_addr_1_ff(13),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(13),
      O => \req_addr_ff[13]_i_1_n_0\
    );
\req_addr_ff[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(14),
      I2 => sound_addr_1_ff(14),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(14),
      O => \req_addr_ff[14]_i_1_n_0\
    );
\req_addr_ff[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(15),
      I2 => sound_addr_1_ff(15),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(15),
      O => \req_addr_ff[15]_i_1_n_0\
    );
\req_addr_ff[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(16),
      I2 => sound_addr_1_ff(16),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(16),
      O => \req_addr_ff[16]_i_1_n_0\
    );
\req_addr_ff[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(17),
      I2 => sound_addr_1_ff(17),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(17),
      O => \req_addr_ff[17]_i_1_n_0\
    );
\req_addr_ff[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(18),
      I2 => sound_addr_1_ff(18),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(18),
      O => \req_addr_ff[18]_i_1_n_0\
    );
\req_addr_ff[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(19),
      I2 => sound_addr_1_ff(19),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(19),
      O => \req_addr_ff[19]_i_1_n_0\
    );
\req_addr_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(1),
      I2 => sound_addr_1_ff(1),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(1),
      O => \req_addr_ff[1]_i_1_n_0\
    );
\req_addr_ff[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(20),
      I2 => sound_addr_1_ff(20),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(20),
      O => \req_addr_ff[20]_i_1_n_0\
    );
\req_addr_ff[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(21),
      I2 => sound_addr_1_ff(21),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(21),
      O => \req_addr_ff[21]_i_1_n_0\
    );
\req_addr_ff[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(22),
      I2 => sound_addr_1_ff(22),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(22),
      O => \req_addr_ff[22]_i_1_n_0\
    );
\req_addr_ff[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(23),
      I2 => sound_addr_1_ff(23),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(23),
      O => \req_addr_ff[23]_i_1_n_0\
    );
\req_addr_ff[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(24),
      I2 => sound_addr_1_ff(24),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(24),
      O => \req_addr_ff[24]_i_1_n_0\
    );
\req_addr_ff[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(25),
      I2 => sound_addr_1_ff(25),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(25),
      O => \req_addr_ff[25]_i_1_n_0\
    );
\req_addr_ff[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(26),
      I2 => sound_addr_1_ff(26),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(26),
      O => \req_addr_ff[26]_i_1_n_0\
    );
\req_addr_ff[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(27),
      I2 => sound_addr_1_ff(27),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(27),
      O => \req_addr_ff[27]_i_1_n_0\
    );
\req_addr_ff[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(28),
      I2 => sound_addr_1_ff(28),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(28),
      O => \req_addr_ff[28]_i_1_n_0\
    );
\req_addr_ff[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(29),
      I2 => sound_addr_1_ff(29),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(29),
      O => \req_addr_ff[29]_i_1_n_0\
    );
\req_addr_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(2),
      I2 => sound_addr_1_ff(2),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(2),
      O => \req_addr_ff[2]_i_1_n_0\
    );
\req_addr_ff[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(30),
      I2 => sound_addr_1_ff(30),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(30),
      O => \req_addr_ff[30]_i_1_n_0\
    );
\req_addr_ff[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(31),
      I2 => sound_addr_1_ff(31),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(31),
      O => \req_addr_ff[31]_i_1_n_0\
    );
\req_addr_ff[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(1),
      I1 => curr_player_state_ff(1),
      I2 => \^q\(0),
      O => \req_addr_ff[31]_i_2_n_0\
    );
\req_addr_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(3),
      I2 => sound_addr_1_ff(3),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(3),
      O => \req_addr_ff[3]_i_1_n_0\
    );
\req_addr_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(4),
      I2 => sound_addr_1_ff(4),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(4),
      O => \req_addr_ff[4]_i_1_n_0\
    );
\req_addr_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(5),
      I2 => sound_addr_1_ff(5),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(5),
      O => \req_addr_ff[5]_i_1_n_0\
    );
\req_addr_ff[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(6),
      I2 => sound_addr_1_ff(6),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(6),
      O => \req_addr_ff[6]_i_1_n_0\
    );
\req_addr_ff[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(7),
      I2 => sound_addr_1_ff(7),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(7),
      O => \req_addr_ff[7]_i_1_n_0\
    );
\req_addr_ff[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(8),
      I2 => sound_addr_1_ff(8),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(8),
      O => \req_addr_ff[8]_i_1_n_0\
    );
\req_addr_ff[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => sound_addr_0_ff(9),
      I2 => sound_addr_1_ff(9),
      I3 => \req_addr_ff[31]_i_2_n_0\,
      I4 => req_addr_ff(9),
      O => \req_addr_ff[9]_i_1_n_0\
    );
\req_addr_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[0]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[10]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(10),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[11]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(11),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[12]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(12),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[13]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(13),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[14]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(14),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[15]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(15),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[16]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(16),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[17]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(17),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[18]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(18),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[19]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(19),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[1]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(1),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[20]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(20),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[21]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(21),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[22]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(22),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[23]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(23),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[24]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(24),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[25]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(25),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[26]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(26),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[27]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(27),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[28]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(28),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[29]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(29),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[2]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(2),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[30]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(30),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[31]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(31),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[3]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(3),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[4]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(4),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[5]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(5),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[6]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(6),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[7]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(7),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[8]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(8),
      R => \^s_axi_aresetn_0\
    );
\req_addr_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_ff[9]_i_1_n_0\,
      Q => \req_addr_ff_reg[31]_0\(9),
      R => \^s_axi_aresetn_0\
    );
sample_index_0_ff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sample_index_0_ff0_carry_n_0,
      CO(2) => sample_index_0_ff0_carry_n_1,
      CO(1) => sample_index_0_ff0_carry_n_2,
      CO(0) => sample_index_0_ff0_carry_n_3,
      CYINIT => \sample_index_0_ff_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_0_ff0(4 downto 1),
      S(3) => \sample_index_0_ff_reg_n_0_[4]\,
      S(2) => \sample_index_0_ff_reg_n_0_[3]\,
      S(1) => \sample_index_0_ff_reg_n_0_[2]\,
      S(0) => \sample_index_0_ff_reg_n_0_[1]\
    );
\sample_index_0_ff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sample_index_0_ff0_carry_n_0,
      CO(3) => \sample_index_0_ff0_carry__0_n_0\,
      CO(2) => \sample_index_0_ff0_carry__0_n_1\,
      CO(1) => \sample_index_0_ff0_carry__0_n_2\,
      CO(0) => \sample_index_0_ff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_0_ff0(8 downto 5),
      S(3) => \sample_index_0_ff_reg_n_0_[8]\,
      S(2) => \sample_index_0_ff_reg_n_0_[7]\,
      S(1) => \sample_index_0_ff_reg_n_0_[6]\,
      S(0) => \sample_index_0_ff_reg_n_0_[5]\
    );
\sample_index_0_ff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_0_ff0_carry__0_n_0\,
      CO(3) => \sample_index_0_ff0_carry__1_n_0\,
      CO(2) => \sample_index_0_ff0_carry__1_n_1\,
      CO(1) => \sample_index_0_ff0_carry__1_n_2\,
      CO(0) => \sample_index_0_ff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_0_ff0(12 downto 9),
      S(3) => \sample_index_0_ff_reg_n_0_[12]\,
      S(2) => \sample_index_0_ff_reg_n_0_[11]\,
      S(1) => \sample_index_0_ff_reg_n_0_[10]\,
      S(0) => \sample_index_0_ff_reg_n_0_[9]\
    );
\sample_index_0_ff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_0_ff0_carry__1_n_0\,
      CO(3) => \sample_index_0_ff0_carry__2_n_0\,
      CO(2) => \sample_index_0_ff0_carry__2_n_1\,
      CO(1) => \sample_index_0_ff0_carry__2_n_2\,
      CO(0) => \sample_index_0_ff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_0_ff0(16 downto 13),
      S(3) => \sample_index_0_ff_reg_n_0_[16]\,
      S(2) => \sample_index_0_ff_reg_n_0_[15]\,
      S(1) => \sample_index_0_ff_reg_n_0_[14]\,
      S(0) => \sample_index_0_ff_reg_n_0_[13]\
    );
\sample_index_0_ff0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_0_ff0_carry__2_n_0\,
      CO(3) => \sample_index_0_ff0_carry__3_n_0\,
      CO(2) => \sample_index_0_ff0_carry__3_n_1\,
      CO(1) => \sample_index_0_ff0_carry__3_n_2\,
      CO(0) => \sample_index_0_ff0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_0_ff0(20 downto 17),
      S(3) => \sample_index_0_ff_reg_n_0_[20]\,
      S(2) => \sample_index_0_ff_reg_n_0_[19]\,
      S(1) => \sample_index_0_ff_reg_n_0_[18]\,
      S(0) => \sample_index_0_ff_reg_n_0_[17]\
    );
\sample_index_0_ff0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_0_ff0_carry__3_n_0\,
      CO(3) => \sample_index_0_ff0_carry__4_n_0\,
      CO(2) => \sample_index_0_ff0_carry__4_n_1\,
      CO(1) => \sample_index_0_ff0_carry__4_n_2\,
      CO(0) => \sample_index_0_ff0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_0_ff0(24 downto 21),
      S(3) => \sample_index_0_ff_reg_n_0_[24]\,
      S(2) => \sample_index_0_ff_reg_n_0_[23]\,
      S(1) => \sample_index_0_ff_reg_n_0_[22]\,
      S(0) => \sample_index_0_ff_reg_n_0_[21]\
    );
\sample_index_0_ff0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_0_ff0_carry__4_n_0\,
      CO(3) => \sample_index_0_ff0_carry__5_n_0\,
      CO(2) => \sample_index_0_ff0_carry__5_n_1\,
      CO(1) => \sample_index_0_ff0_carry__5_n_2\,
      CO(0) => \sample_index_0_ff0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_0_ff0(28 downto 25),
      S(3) => \sample_index_0_ff_reg_n_0_[28]\,
      S(2) => \sample_index_0_ff_reg_n_0_[27]\,
      S(1) => \sample_index_0_ff_reg_n_0_[26]\,
      S(0) => \sample_index_0_ff_reg_n_0_[25]\
    );
\sample_index_0_ff0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_0_ff0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_sample_index_0_ff0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sample_index_0_ff0_carry__6_n_2\,
      CO(0) => \sample_index_0_ff0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sample_index_0_ff0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => sample_index_0_ff0(31 downto 29),
      S(3) => '0',
      S(2) => \sample_index_0_ff_reg_n_0_[31]\,
      S(1) => \sample_index_0_ff_reg_n_0_[30]\,
      S(0) => \sample_index_0_ff_reg_n_0_[29]\
    );
\sample_index_0_ff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => \sample_index_0_ff_reg_n_0_[0]\,
      O => \sample_index_0_ff[0]_i_1_n_0\
    );
\sample_index_0_ff[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(10),
      O => \sample_index_0_ff[10]_i_1_n_0\
    );
\sample_index_0_ff[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(11),
      O => \sample_index_0_ff[11]_i_1_n_0\
    );
\sample_index_0_ff[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(12),
      O => \sample_index_0_ff[12]_i_1_n_0\
    );
\sample_index_0_ff[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(13),
      O => \sample_index_0_ff[13]_i_1_n_0\
    );
\sample_index_0_ff[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(14),
      O => \sample_index_0_ff[14]_i_1_n_0\
    );
\sample_index_0_ff[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(15),
      O => \sample_index_0_ff[15]_i_1_n_0\
    );
\sample_index_0_ff[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(16),
      O => \sample_index_0_ff[16]_i_1_n_0\
    );
\sample_index_0_ff[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(17),
      O => \sample_index_0_ff[17]_i_1_n_0\
    );
\sample_index_0_ff[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(18),
      O => \sample_index_0_ff[18]_i_1_n_0\
    );
\sample_index_0_ff[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(19),
      O => \sample_index_0_ff[19]_i_1_n_0\
    );
\sample_index_0_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(1),
      O => \sample_index_0_ff[1]_i_1_n_0\
    );
\sample_index_0_ff[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(20),
      O => \sample_index_0_ff[20]_i_1_n_0\
    );
\sample_index_0_ff[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(21),
      O => \sample_index_0_ff[21]_i_1_n_0\
    );
\sample_index_0_ff[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(22),
      O => \sample_index_0_ff[22]_i_1_n_0\
    );
\sample_index_0_ff[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(23),
      O => \sample_index_0_ff[23]_i_1_n_0\
    );
\sample_index_0_ff[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(24),
      O => \sample_index_0_ff[24]_i_1_n_0\
    );
\sample_index_0_ff[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(25),
      O => \sample_index_0_ff[25]_i_1_n_0\
    );
\sample_index_0_ff[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(26),
      O => \sample_index_0_ff[26]_i_1_n_0\
    );
\sample_index_0_ff[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(27),
      O => \sample_index_0_ff[27]_i_1_n_0\
    );
\sample_index_0_ff[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(28),
      O => \sample_index_0_ff[28]_i_1_n_0\
    );
\sample_index_0_ff[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(29),
      O => \sample_index_0_ff[29]_i_1_n_0\
    );
\sample_index_0_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(2),
      O => \sample_index_0_ff[2]_i_1_n_0\
    );
\sample_index_0_ff[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(30),
      O => \sample_index_0_ff[30]_i_1_n_0\
    );
\sample_index_0_ff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400040004FFFF"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => curr_initter_state_ff(0),
      I2 => curr_initter_state_ff(2),
      I3 => curr_initter_state_ff(1),
      I4 => last_sample_array_reg,
      I5 => \slot_active_array_ff[1]_i_3_n_0\,
      O => \sample_index_0_ff[31]_i_1_n_0\
    );
\sample_index_0_ff[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(31),
      O => \sample_index_0_ff[31]_i_2_n_0\
    );
\sample_index_0_ff[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(3),
      O => \sample_index_0_ff[3]_i_1_n_0\
    );
\sample_index_0_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(4),
      O => \sample_index_0_ff[4]_i_1_n_0\
    );
\sample_index_0_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(5),
      O => \sample_index_0_ff[5]_i_1_n_0\
    );
\sample_index_0_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(6),
      O => \sample_index_0_ff[6]_i_1_n_0\
    );
\sample_index_0_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(7),
      O => \sample_index_0_ff[7]_i_1_n_0\
    );
\sample_index_0_ff[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(8),
      O => \sample_index_0_ff[8]_i_1_n_0\
    );
\sample_index_0_ff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_0_ff0(9),
      O => \sample_index_0_ff[9]_i_1_n_0\
    );
\sample_index_0_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[0]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[0]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[10]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[10]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[11]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[11]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[12]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[12]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[13]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[13]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[14]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[14]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[15]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[15]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[16]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[16]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[17]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[17]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[18]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[18]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[19]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[19]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[1]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[1]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[20]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[20]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[21]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[21]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[22]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[22]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[23]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[23]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[24]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[24]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[25]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[25]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[26]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[26]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[27]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[27]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[28]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[28]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[29]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[29]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[2]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[2]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[30]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[30]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[31]_i_2_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[31]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[3]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[3]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[4]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[4]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[5]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[5]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[6]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[6]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[7]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[7]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[8]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[8]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_0_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sample_index_0_ff[31]_i_1_n_0\,
      D => \sample_index_0_ff[9]_i_1_n_0\,
      Q => \sample_index_0_ff_reg_n_0_[9]\,
      R => \^s_axi_aresetn_0\
    );
sample_index_1_ff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sample_index_1_ff0_carry_n_0,
      CO(2) => sample_index_1_ff0_carry_n_1,
      CO(1) => sample_index_1_ff0_carry_n_2,
      CO(0) => sample_index_1_ff0_carry_n_3,
      CYINIT => \sample_index_1_ff_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_1_ff0(4 downto 1),
      S(3) => \sample_index_1_ff_reg_n_0_[4]\,
      S(2) => \sample_index_1_ff_reg_n_0_[3]\,
      S(1) => \sample_index_1_ff_reg_n_0_[2]\,
      S(0) => \sample_index_1_ff_reg_n_0_[1]\
    );
\sample_index_1_ff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sample_index_1_ff0_carry_n_0,
      CO(3) => \sample_index_1_ff0_carry__0_n_0\,
      CO(2) => \sample_index_1_ff0_carry__0_n_1\,
      CO(1) => \sample_index_1_ff0_carry__0_n_2\,
      CO(0) => \sample_index_1_ff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_1_ff0(8 downto 5),
      S(3) => \sample_index_1_ff_reg_n_0_[8]\,
      S(2) => \sample_index_1_ff_reg_n_0_[7]\,
      S(1) => \sample_index_1_ff_reg_n_0_[6]\,
      S(0) => \sample_index_1_ff_reg_n_0_[5]\
    );
\sample_index_1_ff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_1_ff0_carry__0_n_0\,
      CO(3) => \sample_index_1_ff0_carry__1_n_0\,
      CO(2) => \sample_index_1_ff0_carry__1_n_1\,
      CO(1) => \sample_index_1_ff0_carry__1_n_2\,
      CO(0) => \sample_index_1_ff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_1_ff0(12 downto 9),
      S(3) => \sample_index_1_ff_reg_n_0_[12]\,
      S(2) => \sample_index_1_ff_reg_n_0_[11]\,
      S(1) => \sample_index_1_ff_reg_n_0_[10]\,
      S(0) => \sample_index_1_ff_reg_n_0_[9]\
    );
\sample_index_1_ff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_1_ff0_carry__1_n_0\,
      CO(3) => \sample_index_1_ff0_carry__2_n_0\,
      CO(2) => \sample_index_1_ff0_carry__2_n_1\,
      CO(1) => \sample_index_1_ff0_carry__2_n_2\,
      CO(0) => \sample_index_1_ff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_1_ff0(16 downto 13),
      S(3) => \sample_index_1_ff_reg_n_0_[16]\,
      S(2) => \sample_index_1_ff_reg_n_0_[15]\,
      S(1) => \sample_index_1_ff_reg_n_0_[14]\,
      S(0) => \sample_index_1_ff_reg_n_0_[13]\
    );
\sample_index_1_ff0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_1_ff0_carry__2_n_0\,
      CO(3) => \sample_index_1_ff0_carry__3_n_0\,
      CO(2) => \sample_index_1_ff0_carry__3_n_1\,
      CO(1) => \sample_index_1_ff0_carry__3_n_2\,
      CO(0) => \sample_index_1_ff0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_1_ff0(20 downto 17),
      S(3) => \sample_index_1_ff_reg_n_0_[20]\,
      S(2) => \sample_index_1_ff_reg_n_0_[19]\,
      S(1) => \sample_index_1_ff_reg_n_0_[18]\,
      S(0) => \sample_index_1_ff_reg_n_0_[17]\
    );
\sample_index_1_ff0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_1_ff0_carry__3_n_0\,
      CO(3) => \sample_index_1_ff0_carry__4_n_0\,
      CO(2) => \sample_index_1_ff0_carry__4_n_1\,
      CO(1) => \sample_index_1_ff0_carry__4_n_2\,
      CO(0) => \sample_index_1_ff0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_1_ff0(24 downto 21),
      S(3) => \sample_index_1_ff_reg_n_0_[24]\,
      S(2) => \sample_index_1_ff_reg_n_0_[23]\,
      S(1) => \sample_index_1_ff_reg_n_0_[22]\,
      S(0) => \sample_index_1_ff_reg_n_0_[21]\
    );
\sample_index_1_ff0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_1_ff0_carry__4_n_0\,
      CO(3) => \sample_index_1_ff0_carry__5_n_0\,
      CO(2) => \sample_index_1_ff0_carry__5_n_1\,
      CO(1) => \sample_index_1_ff0_carry__5_n_2\,
      CO(0) => \sample_index_1_ff0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_1_ff0(28 downto 25),
      S(3) => \sample_index_1_ff_reg_n_0_[28]\,
      S(2) => \sample_index_1_ff_reg_n_0_[27]\,
      S(1) => \sample_index_1_ff_reg_n_0_[26]\,
      S(0) => \sample_index_1_ff_reg_n_0_[25]\
    );
\sample_index_1_ff0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_1_ff0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_sample_index_1_ff0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sample_index_1_ff0_carry__6_n_2\,
      CO(0) => \sample_index_1_ff0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sample_index_1_ff0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => sample_index_1_ff0(31 downto 29),
      S(3) => '0',
      S(2) => \sample_index_1_ff_reg_n_0_[31]\,
      S(1) => \sample_index_1_ff_reg_n_0_[30]\,
      S(0) => \sample_index_1_ff_reg_n_0_[29]\
    );
\sample_index_1_ff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => \sample_index_1_ff_reg_n_0_[0]\,
      O => \sample_index_1_ff[0]_i_1_n_0\
    );
\sample_index_1_ff[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(10),
      O => \sample_index_1_ff[10]_i_1_n_0\
    );
\sample_index_1_ff[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(11),
      O => \sample_index_1_ff[11]_i_1_n_0\
    );
\sample_index_1_ff[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(12),
      O => \sample_index_1_ff[12]_i_1_n_0\
    );
\sample_index_1_ff[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(13),
      O => \sample_index_1_ff[13]_i_1_n_0\
    );
\sample_index_1_ff[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(14),
      O => \sample_index_1_ff[14]_i_1_n_0\
    );
\sample_index_1_ff[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(15),
      O => \sample_index_1_ff[15]_i_1_n_0\
    );
\sample_index_1_ff[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(16),
      O => \sample_index_1_ff[16]_i_1_n_0\
    );
\sample_index_1_ff[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(17),
      O => \sample_index_1_ff[17]_i_1_n_0\
    );
\sample_index_1_ff[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(18),
      O => \sample_index_1_ff[18]_i_1_n_0\
    );
\sample_index_1_ff[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(19),
      O => \sample_index_1_ff[19]_i_1_n_0\
    );
\sample_index_1_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(1),
      O => \sample_index_1_ff[1]_i_1_n_0\
    );
\sample_index_1_ff[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(20),
      O => \sample_index_1_ff[20]_i_1_n_0\
    );
\sample_index_1_ff[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(21),
      O => \sample_index_1_ff[21]_i_1_n_0\
    );
\sample_index_1_ff[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(22),
      O => \sample_index_1_ff[22]_i_1_n_0\
    );
\sample_index_1_ff[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(23),
      O => \sample_index_1_ff[23]_i_1_n_0\
    );
\sample_index_1_ff[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(24),
      O => \sample_index_1_ff[24]_i_1_n_0\
    );
\sample_index_1_ff[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(25),
      O => \sample_index_1_ff[25]_i_1_n_0\
    );
\sample_index_1_ff[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(26),
      O => \sample_index_1_ff[26]_i_1_n_0\
    );
\sample_index_1_ff[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(27),
      O => \sample_index_1_ff[27]_i_1_n_0\
    );
\sample_index_1_ff[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(28),
      O => \sample_index_1_ff[28]_i_1_n_0\
    );
\sample_index_1_ff[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(29),
      O => \sample_index_1_ff[29]_i_1_n_0\
    );
\sample_index_1_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(2),
      O => \sample_index_1_ff[2]_i_1_n_0\
    );
\sample_index_1_ff[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(30),
      O => \sample_index_1_ff[30]_i_1_n_0\
    );
\sample_index_1_ff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800080008FFFF"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => curr_initter_state_ff(0),
      I2 => curr_initter_state_ff(2),
      I3 => curr_initter_state_ff(1),
      I4 => last_sample_array_reg1_out,
      I5 => \slot_active_array_ff[1]_i_3_n_0\,
      O => byte_index_1_ff_0
    );
\sample_index_1_ff[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(31),
      O => \sample_index_1_ff[31]_i_2_n_0\
    );
\sample_index_1_ff[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(3),
      O => \sample_index_1_ff[3]_i_1_n_0\
    );
\sample_index_1_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(4),
      O => \sample_index_1_ff[4]_i_1_n_0\
    );
\sample_index_1_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(5),
      O => \sample_index_1_ff[5]_i_1_n_0\
    );
\sample_index_1_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(6),
      O => \sample_index_1_ff[6]_i_1_n_0\
    );
\sample_index_1_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(7),
      O => \sample_index_1_ff[7]_i_1_n_0\
    );
\sample_index_1_ff[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(8),
      O => \sample_index_1_ff[8]_i_1_n_0\
    );
\sample_index_1_ff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_sample_array_reg1_out,
      I1 => \slot_active_array_ff[1]_i_3_n_0\,
      I2 => sample_index_1_ff0(9),
      O => \sample_index_1_ff[9]_i_1_n_0\
    );
\sample_index_1_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[0]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[0]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[10]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[10]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[11]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[11]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[12]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[12]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[13]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[13]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[14]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[14]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[15]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[15]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[16]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[16]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[17]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[17]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[18]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[18]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[19]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[19]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[1]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[1]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[20]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[20]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[21]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[21]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[22]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[22]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[23]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[23]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[24]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[24]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[25]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[25]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[26]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[26]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[27]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[27]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[28]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[28]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[29]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[29]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[2]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[2]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[30]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[30]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[31]_i_2_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[31]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[3]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[3]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[4]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[4]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[5]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[5]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[6]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[6]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[7]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[7]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[8]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[8]\,
      R => \^s_axi_aresetn_0\
    );
\sample_index_1_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_1_ff_0,
      D => \sample_index_1_ff[9]_i_1_n_0\,
      Q => \sample_index_1_ff_reg_n_0_[9]\,
      R => \^s_axi_aresetn_0\
    );
\sleep_counter_ff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(1),
      I1 => curr_player_state_ff(1),
      I2 => \^q\(0),
      O => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFFFF"
    )
        port map (
      I0 => \sleep_counter_ff[0]_i_4_n_0\,
      I1 => \sleep_counter_ff[0]_i_5_n_0\,
      I2 => sleep_counter_ff_reg(13),
      I3 => sleep_counter_ff_reg(14),
      I4 => sleep_counter_ff_reg(0),
      I5 => \sleep_counter_ff[0]_i_6_n_0\,
      O => sel
    );
\sleep_counter_ff[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sleep_counter_ff_reg(5),
      I1 => sleep_counter_ff_reg(6),
      I2 => sleep_counter_ff_reg(8),
      I3 => sleep_counter_ff_reg(7),
      O => \sleep_counter_ff[0]_i_4_n_0\
    );
\sleep_counter_ff[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => sleep_counter_ff_reg(2),
      I1 => sleep_counter_ff_reg(1),
      I2 => sleep_counter_ff_reg(4),
      I3 => sleep_counter_ff_reg(3),
      O => \sleep_counter_ff[0]_i_5_n_0\
    );
\sleep_counter_ff[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sleep_counter_ff_reg(9),
      I1 => sleep_counter_ff_reg(10),
      I2 => sleep_counter_ff_reg(12),
      I3 => sleep_counter_ff_reg(11),
      O => \sleep_counter_ff[0]_i_6_n_0\
    );
\sleep_counter_ff[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sleep_counter_ff_reg(0),
      O => \sleep_counter_ff[0]_i_7_n_0\
    );
\sleep_counter_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[0]_i_3_n_7\,
      Q => sleep_counter_ff_reg(0),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sleep_counter_ff_reg[0]_i_3_n_0\,
      CO(2) => \sleep_counter_ff_reg[0]_i_3_n_1\,
      CO(1) => \sleep_counter_ff_reg[0]_i_3_n_2\,
      CO(0) => \sleep_counter_ff_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sleep_counter_ff_reg[0]_i_3_n_4\,
      O(2) => \sleep_counter_ff_reg[0]_i_3_n_5\,
      O(1) => \sleep_counter_ff_reg[0]_i_3_n_6\,
      O(0) => \sleep_counter_ff_reg[0]_i_3_n_7\,
      S(3 downto 1) => sleep_counter_ff_reg(3 downto 1),
      S(0) => \sleep_counter_ff[0]_i_7_n_0\
    );
\sleep_counter_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[8]_i_1_n_5\,
      Q => sleep_counter_ff_reg(10),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[8]_i_1_n_4\,
      Q => sleep_counter_ff_reg(11),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[12]_i_1_n_7\,
      Q => sleep_counter_ff_reg(12),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sleep_counter_ff_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sleep_counter_ff_reg[12]_i_1_n_2\,
      CO(0) => \sleep_counter_ff_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2) => \sleep_counter_ff_reg[12]_i_1_n_5\,
      O(1) => \sleep_counter_ff_reg[12]_i_1_n_6\,
      O(0) => \sleep_counter_ff_reg[12]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => sleep_counter_ff_reg(14 downto 12)
    );
\sleep_counter_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[12]_i_1_n_6\,
      Q => sleep_counter_ff_reg(13),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[12]_i_1_n_5\,
      Q => sleep_counter_ff_reg(14),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[0]_i_3_n_6\,
      Q => sleep_counter_ff_reg(1),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[0]_i_3_n_5\,
      Q => sleep_counter_ff_reg(2),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[0]_i_3_n_4\,
      Q => sleep_counter_ff_reg(3),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[4]_i_1_n_7\,
      Q => sleep_counter_ff_reg(4),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sleep_counter_ff_reg[0]_i_3_n_0\,
      CO(3) => \sleep_counter_ff_reg[4]_i_1_n_0\,
      CO(2) => \sleep_counter_ff_reg[4]_i_1_n_1\,
      CO(1) => \sleep_counter_ff_reg[4]_i_1_n_2\,
      CO(0) => \sleep_counter_ff_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sleep_counter_ff_reg[4]_i_1_n_4\,
      O(2) => \sleep_counter_ff_reg[4]_i_1_n_5\,
      O(1) => \sleep_counter_ff_reg[4]_i_1_n_6\,
      O(0) => \sleep_counter_ff_reg[4]_i_1_n_7\,
      S(3 downto 0) => sleep_counter_ff_reg(7 downto 4)
    );
\sleep_counter_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[4]_i_1_n_6\,
      Q => sleep_counter_ff_reg(5),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[4]_i_1_n_5\,
      Q => sleep_counter_ff_reg(6),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[4]_i_1_n_4\,
      Q => sleep_counter_ff_reg(7),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[8]_i_1_n_7\,
      Q => sleep_counter_ff_reg(8),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sleep_counter_ff_reg[4]_i_1_n_0\,
      CO(3) => \sleep_counter_ff_reg[8]_i_1_n_0\,
      CO(2) => \sleep_counter_ff_reg[8]_i_1_n_1\,
      CO(1) => \sleep_counter_ff_reg[8]_i_1_n_2\,
      CO(0) => \sleep_counter_ff_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sleep_counter_ff_reg[8]_i_1_n_4\,
      O(2) => \sleep_counter_ff_reg[8]_i_1_n_5\,
      O(1) => \sleep_counter_ff_reg[8]_i_1_n_6\,
      O(0) => \sleep_counter_ff_reg[8]_i_1_n_7\,
      S(3 downto 0) => sleep_counter_ff_reg(11 downto 8)
    );
\sleep_counter_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => sel,
      D => \sleep_counter_ff_reg[8]_i_1_n_6\,
      Q => sleep_counter_ff_reg(9),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\slot_active_array_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA00AA08080008"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^fsm_sequential_curr_initter_state_ff_reg[0]_0\,
      I2 => initter_curr_slot_ff,
      I3 => last_sample_array_reg,
      I4 => \slot_active_array_ff[1]_i_3_n_0\,
      I5 => \^slot_active_array_ff_reg[0]_0\,
      O => \slot_active_array_ff[0]_i_1_n_0\
    );
\slot_active_array_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA00AA80800080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^fsm_sequential_curr_initter_state_ff_reg[0]_0\,
      I2 => initter_curr_slot_ff,
      I3 => last_sample_array_reg1_out,
      I4 => \slot_active_array_ff[1]_i_3_n_0\,
      I5 => \^slot_active_array_ff_reg[1]_0\,
      O => \slot_active_array_ff[1]_i_1_n_0\
    );
\slot_active_array_ff[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => curr_initter_state_ff(0),
      I1 => curr_initter_state_ff(2),
      I2 => curr_initter_state_ff(1),
      O => \^fsm_sequential_curr_initter_state_ff_reg[0]_0\
    );
\slot_active_array_ff[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => curr_state_ff_0(0),
      I2 => curr_state_ff_0(1),
      I3 => curr_player_state_ff(1),
      I4 => \^q\(0),
      O => \slot_active_array_ff[1]_i_3_n_0\
    );
\slot_active_array_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slot_active_array_ff[0]_i_1_n_0\,
      Q => \^slot_active_array_ff_reg[0]_0\,
      R => '0'
    );
\slot_active_array_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slot_active_array_ff[1]_i_1_n_0\,
      Q => \^slot_active_array_ff_reg[1]_0\,
      R => '0'
    );
\sound_addr_0_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(0),
      Q => sound_addr_0_ff(0),
      R => '0'
    );
\sound_addr_0_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(10),
      Q => sound_addr_0_ff(10),
      R => '0'
    );
\sound_addr_0_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(11),
      Q => sound_addr_0_ff(11),
      R => '0'
    );
\sound_addr_0_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(12),
      Q => sound_addr_0_ff(12),
      R => '0'
    );
\sound_addr_0_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(13),
      Q => sound_addr_0_ff(13),
      R => '0'
    );
\sound_addr_0_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(14),
      Q => sound_addr_0_ff(14),
      R => '0'
    );
\sound_addr_0_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(15),
      Q => sound_addr_0_ff(15),
      R => '0'
    );
\sound_addr_0_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(16),
      Q => sound_addr_0_ff(16),
      R => '0'
    );
\sound_addr_0_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(17),
      Q => sound_addr_0_ff(17),
      R => '0'
    );
\sound_addr_0_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(18),
      Q => sound_addr_0_ff(18),
      R => '0'
    );
\sound_addr_0_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(19),
      Q => sound_addr_0_ff(19),
      R => '0'
    );
\sound_addr_0_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(1),
      Q => sound_addr_0_ff(1),
      R => '0'
    );
\sound_addr_0_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(20),
      Q => sound_addr_0_ff(20),
      R => '0'
    );
\sound_addr_0_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(21),
      Q => sound_addr_0_ff(21),
      R => '0'
    );
\sound_addr_0_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(22),
      Q => sound_addr_0_ff(22),
      R => '0'
    );
\sound_addr_0_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(23),
      Q => sound_addr_0_ff(23),
      R => '0'
    );
\sound_addr_0_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(24),
      Q => sound_addr_0_ff(24),
      R => '0'
    );
\sound_addr_0_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(25),
      Q => sound_addr_0_ff(25),
      R => '0'
    );
\sound_addr_0_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(26),
      Q => sound_addr_0_ff(26),
      R => '0'
    );
\sound_addr_0_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(27),
      Q => sound_addr_0_ff(27),
      R => '0'
    );
\sound_addr_0_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(28),
      Q => sound_addr_0_ff(28),
      R => '0'
    );
\sound_addr_0_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(29),
      Q => sound_addr_0_ff(29),
      R => '0'
    );
\sound_addr_0_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(2),
      Q => sound_addr_0_ff(2),
      R => '0'
    );
\sound_addr_0_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(30),
      Q => sound_addr_0_ff(30),
      R => '0'
    );
\sound_addr_0_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(31),
      Q => sound_addr_0_ff(31),
      R => '0'
    );
\sound_addr_0_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(3),
      Q => sound_addr_0_ff(3),
      R => '0'
    );
\sound_addr_0_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(4),
      Q => sound_addr_0_ff(4),
      R => '0'
    );
\sound_addr_0_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(5),
      Q => sound_addr_0_ff(5),
      R => '0'
    );
\sound_addr_0_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(6),
      Q => sound_addr_0_ff(6),
      R => '0'
    );
\sound_addr_0_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(7),
      Q => sound_addr_0_ff(7),
      R => '0'
    );
\sound_addr_0_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(8),
      Q => sound_addr_0_ff(8),
      R => '0'
    );
\sound_addr_0_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(9),
      Q => sound_addr_0_ff(9),
      R => '0'
    );
\sound_addr_1_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(0),
      Q => sound_addr_1_ff(0),
      R => '0'
    );
\sound_addr_1_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(10),
      Q => sound_addr_1_ff(10),
      R => '0'
    );
\sound_addr_1_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(11),
      Q => sound_addr_1_ff(11),
      R => '0'
    );
\sound_addr_1_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(12),
      Q => sound_addr_1_ff(12),
      R => '0'
    );
\sound_addr_1_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(13),
      Q => sound_addr_1_ff(13),
      R => '0'
    );
\sound_addr_1_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(14),
      Q => sound_addr_1_ff(14),
      R => '0'
    );
\sound_addr_1_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(15),
      Q => sound_addr_1_ff(15),
      R => '0'
    );
\sound_addr_1_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(16),
      Q => sound_addr_1_ff(16),
      R => '0'
    );
\sound_addr_1_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(17),
      Q => sound_addr_1_ff(17),
      R => '0'
    );
\sound_addr_1_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(18),
      Q => sound_addr_1_ff(18),
      R => '0'
    );
\sound_addr_1_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(19),
      Q => sound_addr_1_ff(19),
      R => '0'
    );
\sound_addr_1_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(1),
      Q => sound_addr_1_ff(1),
      R => '0'
    );
\sound_addr_1_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(20),
      Q => sound_addr_1_ff(20),
      R => '0'
    );
\sound_addr_1_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(21),
      Q => sound_addr_1_ff(21),
      R => '0'
    );
\sound_addr_1_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(22),
      Q => sound_addr_1_ff(22),
      R => '0'
    );
\sound_addr_1_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(23),
      Q => sound_addr_1_ff(23),
      R => '0'
    );
\sound_addr_1_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(24),
      Q => sound_addr_1_ff(24),
      R => '0'
    );
\sound_addr_1_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(25),
      Q => sound_addr_1_ff(25),
      R => '0'
    );
\sound_addr_1_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(26),
      Q => sound_addr_1_ff(26),
      R => '0'
    );
\sound_addr_1_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(27),
      Q => sound_addr_1_ff(27),
      R => '0'
    );
\sound_addr_1_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(28),
      Q => sound_addr_1_ff(28),
      R => '0'
    );
\sound_addr_1_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(29),
      Q => sound_addr_1_ff(29),
      R => '0'
    );
\sound_addr_1_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(2),
      Q => sound_addr_1_ff(2),
      R => '0'
    );
\sound_addr_1_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(30),
      Q => sound_addr_1_ff(30),
      R => '0'
    );
\sound_addr_1_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(31),
      Q => sound_addr_1_ff(31),
      R => '0'
    );
\sound_addr_1_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(3),
      Q => sound_addr_1_ff(3),
      R => '0'
    );
\sound_addr_1_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(4),
      Q => sound_addr_1_ff(4),
      R => '0'
    );
\sound_addr_1_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(5),
      Q => sound_addr_1_ff(5),
      R => '0'
    );
\sound_addr_1_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(6),
      Q => sound_addr_1_ff(6),
      R => '0'
    );
\sound_addr_1_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(7),
      Q => sound_addr_1_ff(7),
      R => '0'
    );
\sound_addr_1_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(8),
      Q => sound_addr_1_ff(8),
      R => '0'
    );
\sound_addr_1_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_sound_addr_ff(9),
      Q => sound_addr_1_ff(9),
      R => '0'
    );
valid_ff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A800A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => valid_ff_reg(0),
      I2 => s_rv_valid,
      I3 => sel,
      I4 => valid_ff_i_2_n_0,
      I5 => \sleep_counter_ff[0]_i_1_n_0\,
      O => s_axi_aresetn_1
    );
valid_ff_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => curr_initter_state_ff(0),
      I1 => curr_initter_state_ff(1),
      I2 => curr_initter_state_ff(2),
      I3 => s_rv_valid,
      O => valid_ff_i_2_n_0
    );
\vol_coef_0_ff[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => s_axi_aresetn,
      I2 => curr_initter_state_ff(2),
      I3 => curr_initter_state_ff(0),
      I4 => curr_initter_state_ff(1),
      O => \vol_coef_0_ff[31]_i_1_n_0\
    );
\vol_coef_0_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(0),
      Q => vol_coef_0_ff(0),
      R => '0'
    );
\vol_coef_0_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(10),
      Q => vol_coef_0_ff(10),
      R => '0'
    );
\vol_coef_0_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(11),
      Q => vol_coef_0_ff(11),
      R => '0'
    );
\vol_coef_0_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(12),
      Q => vol_coef_0_ff(12),
      R => '0'
    );
\vol_coef_0_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(13),
      Q => vol_coef_0_ff(13),
      R => '0'
    );
\vol_coef_0_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(14),
      Q => vol_coef_0_ff(14),
      R => '0'
    );
\vol_coef_0_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(1),
      Q => vol_coef_0_ff(1),
      R => '0'
    );
\vol_coef_0_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(2),
      Q => vol_coef_0_ff(2),
      R => '0'
    );
\vol_coef_0_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(31),
      Q => vol_coef_0_ff(31),
      R => '0'
    );
\vol_coef_0_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(3),
      Q => vol_coef_0_ff(3),
      R => '0'
    );
\vol_coef_0_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(4),
      Q => vol_coef_0_ff(4),
      R => '0'
    );
\vol_coef_0_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(5),
      Q => vol_coef_0_ff(5),
      R => '0'
    );
\vol_coef_0_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(6),
      Q => vol_coef_0_ff(6),
      R => '0'
    );
\vol_coef_0_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(7),
      Q => vol_coef_0_ff(7),
      R => '0'
    );
\vol_coef_0_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(8),
      Q => vol_coef_0_ff(8),
      R => '0'
    );
\vol_coef_0_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_0_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(9),
      Q => vol_coef_0_ff(9),
      R => '0'
    );
\vol_coef_1_ff[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => initter_curr_slot_ff,
      I1 => s_axi_aresetn,
      I2 => curr_initter_state_ff(2),
      I3 => curr_initter_state_ff(0),
      I4 => curr_initter_state_ff(1),
      O => \vol_coef_1_ff[31]_i_1_n_0\
    );
\vol_coef_1_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(0),
      Q => vol_coef_1_ff(0),
      R => '0'
    );
\vol_coef_1_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(10),
      Q => vol_coef_1_ff(10),
      R => '0'
    );
\vol_coef_1_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(11),
      Q => vol_coef_1_ff(11),
      R => '0'
    );
\vol_coef_1_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(12),
      Q => vol_coef_1_ff(12),
      R => '0'
    );
\vol_coef_1_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(13),
      Q => vol_coef_1_ff(13),
      R => '0'
    );
\vol_coef_1_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(14),
      Q => vol_coef_1_ff(14),
      R => '0'
    );
\vol_coef_1_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(1),
      Q => vol_coef_1_ff(1),
      R => '0'
    );
\vol_coef_1_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(2),
      Q => vol_coef_1_ff(2),
      R => '0'
    );
\vol_coef_1_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(31),
      Q => vol_coef_1_ff(31),
      R => '0'
    );
\vol_coef_1_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(3),
      Q => vol_coef_1_ff(3),
      R => '0'
    );
\vol_coef_1_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(4),
      Q => vol_coef_1_ff(4),
      R => '0'
    );
\vol_coef_1_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(5),
      Q => vol_coef_1_ff(5),
      R => '0'
    );
\vol_coef_1_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(6),
      Q => vol_coef_1_ff(6),
      R => '0'
    );
\vol_coef_1_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(7),
      Q => vol_coef_1_ff(7),
      R => '0'
    );
\vol_coef_1_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(8),
      Q => vol_coef_1_ff(8),
      R => '0'
    );
\vol_coef_1_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \vol_coef_1_ff[31]_i_1_n_0\,
      D => initter_vol_coef_ff(9),
      Q => vol_coef_1_ff(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_audio_fetcher_0_1_audio_fetcher is
  port (
    m_axi_audio_out_awvalid : out STD_LOGIC;
    m_axi_audio_out_wvalid : out STD_LOGIC;
    m_axi_dma_arvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \slot_active_array_ff_reg[1]\ : out STD_LOGIC;
    \slot_active_array_ff_reg[0]\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_awaddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_bready : out STD_LOGIC;
    m_axi_dma_rready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    m_axi_audio_out_wready : in STD_LOGIC;
    m_axi_audio_out_aresetn : in STD_LOGIC;
    m_axi_audio_out_aclk : in STD_LOGIC;
    m_axi_dma_rvalid : in STD_LOGIC;
    m_axi_dma_aresetn : in STD_LOGIC;
    m_axi_dma_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    m_axi_dma_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_audio_out_bvalid : in STD_LOGIC;
    m_axi_audio_out_awready : in STD_LOGIC;
    m_axi_dma_arready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher : entity is "audio_fetcher";
end wolfenstein_platform_audio_fetcher_0_1_audio_fetcher;

architecture STRUCTURE of wolfenstein_platform_audio_fetcher_0_1_audio_fetcher is
  signal RESIZE0 : STD_LOGIC;
  signal audio_fetcher_M_AXI_AUDIO_OUT_inst_n_4 : STD_LOGIC;
  signal audio_fetcher_M_AXI_AUDIO_OUT_inst_n_6 : STD_LOGIC;
  signal audio_fetcher_M_AXI_AUDIO_OUT_inst_n_7 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_10 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_11 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_12 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_13 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_14 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_15 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_16 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_17 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_18 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_19 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_20 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_21 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_22 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_23 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_24 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_25 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_26 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_27 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_28 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_29 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_3 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_30 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_31 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_32 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_33 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_34 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_35 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_36 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_37 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_5 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_7 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_8 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_9 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_0 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_1 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_10 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_11 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_12 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_13 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_14 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_15 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_16 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_17 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_18 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_19 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_2 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_20 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_21 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_22 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_23 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_24 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_25 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_26 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_27 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_28 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_29 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_3 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_30 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_31 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_32 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_34 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_37 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_4 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_40 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_42 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_43 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_44 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_45 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_46 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_47 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_48 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_49 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_5 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_50 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_51 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_52 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_53 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_54 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_55 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_56 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_57 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_58 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_59 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_6 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_60 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_61 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_62 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_63 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_64 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_65 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_66 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_67 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_68 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_69 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_7 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_70 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_71 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_72 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_73 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_74 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_8 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_9 : STD_LOGIC;
  signal axi_araddr_ff0 : STD_LOGIC;
  signal curr_player_state_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal curr_state_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_state_ff_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal s_rv_valid : STD_LOGIC;
  signal sample_ff0 : STD_LOGIC;
  signal slot_ff : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sound_addr_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal volume_coef_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
audio_fetcher_M_AXI_AUDIO_OUT_inst: entity work.wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_AUDIO_OUT
     port map (
      D(31) => audio_fetcher_controller_inst_n_1,
      D(30) => audio_fetcher_controller_inst_n_2,
      D(29) => audio_fetcher_controller_inst_n_3,
      D(28) => audio_fetcher_controller_inst_n_4,
      D(27) => audio_fetcher_controller_inst_n_5,
      D(26) => audio_fetcher_controller_inst_n_6,
      D(25) => audio_fetcher_controller_inst_n_7,
      D(24) => audio_fetcher_controller_inst_n_8,
      D(23) => audio_fetcher_controller_inst_n_9,
      D(22) => audio_fetcher_controller_inst_n_10,
      D(21) => audio_fetcher_controller_inst_n_11,
      D(20) => audio_fetcher_controller_inst_n_12,
      D(19) => audio_fetcher_controller_inst_n_13,
      D(18) => audio_fetcher_controller_inst_n_14,
      D(17) => audio_fetcher_controller_inst_n_15,
      D(16) => audio_fetcher_controller_inst_n_16,
      D(15) => audio_fetcher_controller_inst_n_17,
      D(14) => audio_fetcher_controller_inst_n_18,
      D(13) => audio_fetcher_controller_inst_n_19,
      D(12) => audio_fetcher_controller_inst_n_20,
      D(11) => audio_fetcher_controller_inst_n_21,
      D(10) => audio_fetcher_controller_inst_n_22,
      D(9) => audio_fetcher_controller_inst_n_23,
      D(8) => audio_fetcher_controller_inst_n_24,
      D(7) => audio_fetcher_controller_inst_n_25,
      D(6) => audio_fetcher_controller_inst_n_26,
      D(5) => audio_fetcher_controller_inst_n_27,
      D(4) => audio_fetcher_controller_inst_n_28,
      D(3) => audio_fetcher_controller_inst_n_29,
      D(2) => audio_fetcher_controller_inst_n_30,
      D(1) => audio_fetcher_controller_inst_n_31,
      D(0) => audio_fetcher_controller_inst_n_32,
      E(0) => audio_fetcher_controller_inst_n_40,
      \FSM_sequential_curr_state_ff_reg[0]_0\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_4,
      \FSM_sequential_curr_state_ff_reg[0]_1\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_7,
      \FSM_sequential_curr_state_ff_reg[1]_0\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_6,
      Q(1) => curr_player_state_ff(2),
      Q(0) => curr_player_state_ff(0),
      curr_state_ff(1 downto 0) => curr_state_ff(1 downto 0),
      curr_state_ff_0(1 downto 0) => curr_state_ff_0(1 downto 0),
      m_axi_audio_out_aclk => m_axi_audio_out_aclk,
      m_axi_audio_out_aresetn => m_axi_audio_out_aresetn,
      m_axi_audio_out_awaddr(1 downto 0) => m_axi_audio_out_awaddr(1 downto 0),
      m_axi_audio_out_awready => m_axi_audio_out_awready,
      m_axi_audio_out_awvalid => m_axi_audio_out_awvalid,
      m_axi_audio_out_bready => m_axi_audio_out_bready,
      m_axi_audio_out_bvalid => m_axi_audio_out_bvalid,
      m_axi_audio_out_wdata(31 downto 0) => m_axi_audio_out_wdata(31 downto 0),
      m_axi_audio_out_wready => m_axi_audio_out_wready,
      m_axi_audio_out_wvalid => m_axi_audio_out_wvalid
    );
audio_fetcher_M_AXI_DMA_inst: entity work.wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_M_AXI_DMA
     port map (
      E(0) => axi_araddr_ff0,
      \FSM_sequential_curr_state_ff_reg[0]_0\ => audio_fetcher_M_AXI_DMA_inst_n_3,
      \FSM_sequential_curr_state_ff_reg[0]_1\ => audio_fetcher_M_AXI_DMA_inst_n_5,
      \FSM_sequential_curr_state_ff_reg[0]_2\ => audio_fetcher_controller_inst_n_42,
      \FSM_sequential_curr_state_ff_reg[0]_3\ => audio_fetcher_controller_inst_n_34,
      Q(31) => RESIZE0,
      Q(30) => audio_fetcher_M_AXI_DMA_inst_n_7,
      Q(29) => audio_fetcher_M_AXI_DMA_inst_n_8,
      Q(28) => audio_fetcher_M_AXI_DMA_inst_n_9,
      Q(27) => audio_fetcher_M_AXI_DMA_inst_n_10,
      Q(26) => audio_fetcher_M_AXI_DMA_inst_n_11,
      Q(25) => audio_fetcher_M_AXI_DMA_inst_n_12,
      Q(24) => audio_fetcher_M_AXI_DMA_inst_n_13,
      Q(23) => audio_fetcher_M_AXI_DMA_inst_n_14,
      Q(22) => audio_fetcher_M_AXI_DMA_inst_n_15,
      Q(21) => audio_fetcher_M_AXI_DMA_inst_n_16,
      Q(20) => audio_fetcher_M_AXI_DMA_inst_n_17,
      Q(19) => audio_fetcher_M_AXI_DMA_inst_n_18,
      Q(18) => audio_fetcher_M_AXI_DMA_inst_n_19,
      Q(17) => audio_fetcher_M_AXI_DMA_inst_n_20,
      Q(16) => audio_fetcher_M_AXI_DMA_inst_n_21,
      Q(15) => audio_fetcher_M_AXI_DMA_inst_n_22,
      Q(14) => audio_fetcher_M_AXI_DMA_inst_n_23,
      Q(13) => audio_fetcher_M_AXI_DMA_inst_n_24,
      Q(12) => audio_fetcher_M_AXI_DMA_inst_n_25,
      Q(11) => audio_fetcher_M_AXI_DMA_inst_n_26,
      Q(10) => audio_fetcher_M_AXI_DMA_inst_n_27,
      Q(9) => audio_fetcher_M_AXI_DMA_inst_n_28,
      Q(8) => audio_fetcher_M_AXI_DMA_inst_n_29,
      Q(7) => audio_fetcher_M_AXI_DMA_inst_n_30,
      Q(6) => audio_fetcher_M_AXI_DMA_inst_n_31,
      Q(5) => audio_fetcher_M_AXI_DMA_inst_n_32,
      Q(4) => audio_fetcher_M_AXI_DMA_inst_n_33,
      Q(3) => audio_fetcher_M_AXI_DMA_inst_n_34,
      Q(2) => audio_fetcher_M_AXI_DMA_inst_n_35,
      Q(1) => audio_fetcher_M_AXI_DMA_inst_n_36,
      Q(0) => audio_fetcher_M_AXI_DMA_inst_n_37,
      \axi_araddr_ff_reg[31]_0\(31) => audio_fetcher_controller_inst_n_43,
      \axi_araddr_ff_reg[31]_0\(30) => audio_fetcher_controller_inst_n_44,
      \axi_araddr_ff_reg[31]_0\(29) => audio_fetcher_controller_inst_n_45,
      \axi_araddr_ff_reg[31]_0\(28) => audio_fetcher_controller_inst_n_46,
      \axi_araddr_ff_reg[31]_0\(27) => audio_fetcher_controller_inst_n_47,
      \axi_araddr_ff_reg[31]_0\(26) => audio_fetcher_controller_inst_n_48,
      \axi_araddr_ff_reg[31]_0\(25) => audio_fetcher_controller_inst_n_49,
      \axi_araddr_ff_reg[31]_0\(24) => audio_fetcher_controller_inst_n_50,
      \axi_araddr_ff_reg[31]_0\(23) => audio_fetcher_controller_inst_n_51,
      \axi_araddr_ff_reg[31]_0\(22) => audio_fetcher_controller_inst_n_52,
      \axi_araddr_ff_reg[31]_0\(21) => audio_fetcher_controller_inst_n_53,
      \axi_araddr_ff_reg[31]_0\(20) => audio_fetcher_controller_inst_n_54,
      \axi_araddr_ff_reg[31]_0\(19) => audio_fetcher_controller_inst_n_55,
      \axi_araddr_ff_reg[31]_0\(18) => audio_fetcher_controller_inst_n_56,
      \axi_araddr_ff_reg[31]_0\(17) => audio_fetcher_controller_inst_n_57,
      \axi_araddr_ff_reg[31]_0\(16) => audio_fetcher_controller_inst_n_58,
      \axi_araddr_ff_reg[31]_0\(15) => audio_fetcher_controller_inst_n_59,
      \axi_araddr_ff_reg[31]_0\(14) => audio_fetcher_controller_inst_n_60,
      \axi_araddr_ff_reg[31]_0\(13) => audio_fetcher_controller_inst_n_61,
      \axi_araddr_ff_reg[31]_0\(12) => audio_fetcher_controller_inst_n_62,
      \axi_araddr_ff_reg[31]_0\(11) => audio_fetcher_controller_inst_n_63,
      \axi_araddr_ff_reg[31]_0\(10) => audio_fetcher_controller_inst_n_64,
      \axi_araddr_ff_reg[31]_0\(9) => audio_fetcher_controller_inst_n_65,
      \axi_araddr_ff_reg[31]_0\(8) => audio_fetcher_controller_inst_n_66,
      \axi_araddr_ff_reg[31]_0\(7) => audio_fetcher_controller_inst_n_67,
      \axi_araddr_ff_reg[31]_0\(6) => audio_fetcher_controller_inst_n_68,
      \axi_araddr_ff_reg[31]_0\(5) => audio_fetcher_controller_inst_n_69,
      \axi_araddr_ff_reg[31]_0\(4) => audio_fetcher_controller_inst_n_70,
      \axi_araddr_ff_reg[31]_0\(3) => audio_fetcher_controller_inst_n_71,
      \axi_araddr_ff_reg[31]_0\(2) => audio_fetcher_controller_inst_n_72,
      \axi_araddr_ff_reg[31]_0\(1) => audio_fetcher_controller_inst_n_73,
      \axi_araddr_ff_reg[31]_0\(0) => audio_fetcher_controller_inst_n_74,
      curr_state_ff(1 downto 0) => curr_state_ff_0(1 downto 0),
      m_axi_dma_aclk => m_axi_dma_aclk,
      m_axi_dma_araddr(31 downto 0) => m_axi_dma_araddr(31 downto 0),
      m_axi_dma_aresetn => m_axi_dma_aresetn,
      m_axi_dma_arready => m_axi_dma_arready,
      m_axi_dma_arvalid => m_axi_dma_arvalid,
      m_axi_dma_rdata(31 downto 0) => m_axi_dma_rdata(31 downto 0),
      m_axi_dma_rready => m_axi_dma_rready,
      m_axi_dma_rvalid => m_axi_dma_rvalid,
      sample_ff0 => sample_ff0
    );
audio_fetcher_S_AXI_inst: entity work.wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_S_AXI
     port map (
      Q(0) => p_1_in,
      axi_arready_reg_0 => s_axi_arready,
      axi_awready_reg_0 => s_axi_awready,
      axi_wready_reg_0 => s_axi_wready,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_rv_valid => s_rv_valid,
      slot_ff(0) => slot_ff(0),
      \sound_addr_ff_reg[0]_0\ => audio_fetcher_controller_inst_n_0,
      \sound_addr_ff_reg[31]_0\(31 downto 0) => sound_addr_ff(31 downto 0),
      valid_ff_reg_0 => audio_fetcher_controller_inst_n_37,
      \volume_coef_ff_reg[31]_0\(15) => volume_coef_ff(31),
      \volume_coef_ff_reg[31]_0\(14 downto 0) => volume_coef_ff(14 downto 0)
    );
audio_fetcher_controller_inst: entity work.wolfenstein_platform_audio_fetcher_0_1_audio_fetcher_controller
     port map (
      D(31) => audio_fetcher_controller_inst_n_1,
      D(30) => audio_fetcher_controller_inst_n_2,
      D(29) => audio_fetcher_controller_inst_n_3,
      D(28) => audio_fetcher_controller_inst_n_4,
      D(27) => audio_fetcher_controller_inst_n_5,
      D(26) => audio_fetcher_controller_inst_n_6,
      D(25) => audio_fetcher_controller_inst_n_7,
      D(24) => audio_fetcher_controller_inst_n_8,
      D(23) => audio_fetcher_controller_inst_n_9,
      D(22) => audio_fetcher_controller_inst_n_10,
      D(21) => audio_fetcher_controller_inst_n_11,
      D(20) => audio_fetcher_controller_inst_n_12,
      D(19) => audio_fetcher_controller_inst_n_13,
      D(18) => audio_fetcher_controller_inst_n_14,
      D(17) => audio_fetcher_controller_inst_n_15,
      D(16) => audio_fetcher_controller_inst_n_16,
      D(15) => audio_fetcher_controller_inst_n_17,
      D(14) => audio_fetcher_controller_inst_n_18,
      D(13) => audio_fetcher_controller_inst_n_19,
      D(12) => audio_fetcher_controller_inst_n_20,
      D(11) => audio_fetcher_controller_inst_n_21,
      D(10) => audio_fetcher_controller_inst_n_22,
      D(9) => audio_fetcher_controller_inst_n_23,
      D(8) => audio_fetcher_controller_inst_n_24,
      D(7) => audio_fetcher_controller_inst_n_25,
      D(6) => audio_fetcher_controller_inst_n_26,
      D(5) => audio_fetcher_controller_inst_n_27,
      D(4) => audio_fetcher_controller_inst_n_28,
      D(3) => audio_fetcher_controller_inst_n_29,
      D(2) => audio_fetcher_controller_inst_n_30,
      D(1) => audio_fetcher_controller_inst_n_31,
      D(0) => audio_fetcher_controller_inst_n_32,
      E(0) => audio_fetcher_controller_inst_n_40,
      \FSM_sequential_curr_initter_state_ff_reg[0]_0\ => audio_fetcher_controller_inst_n_34,
      \FSM_sequential_curr_initter_state_ff_reg[0]_1\(0) => axi_araddr_ff0,
      Q(1) => curr_player_state_ff(2),
      Q(0) => curr_player_state_ff(0),
      \axi_araddr_ff_reg[31]\ => audio_fetcher_M_AXI_DMA_inst_n_5,
      \curr_player_state_ff_reg[0]_0\ => audio_fetcher_controller_inst_n_42,
      \curr_player_state_ff_reg[0]_1\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_6,
      \curr_player_state_ff_reg[1]_0\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_4,
      \curr_player_state_ff_reg[2]_0\ => audio_fetcher_M_AXI_DMA_inst_n_3,
      \curr_player_state_ff_reg[2]_1\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_7,
      curr_state_ff(1 downto 0) => curr_state_ff_0(1 downto 0),
      curr_state_ff_0(1 downto 0) => curr_state_ff(1 downto 0),
      \initter_sound_addr_ff_reg[31]_0\(31 downto 0) => sound_addr_ff(31 downto 0),
      \initter_vol_coef_ff_reg[31]_0\(15) => volume_coef_ff(31),
      \initter_vol_coef_ff_reg[31]_0\(14 downto 0) => volume_coef_ff(14 downto 0),
      \num_samples_0_ff_reg[31]_0\(31) => RESIZE0,
      \num_samples_0_ff_reg[31]_0\(30) => audio_fetcher_M_AXI_DMA_inst_n_7,
      \num_samples_0_ff_reg[31]_0\(29) => audio_fetcher_M_AXI_DMA_inst_n_8,
      \num_samples_0_ff_reg[31]_0\(28) => audio_fetcher_M_AXI_DMA_inst_n_9,
      \num_samples_0_ff_reg[31]_0\(27) => audio_fetcher_M_AXI_DMA_inst_n_10,
      \num_samples_0_ff_reg[31]_0\(26) => audio_fetcher_M_AXI_DMA_inst_n_11,
      \num_samples_0_ff_reg[31]_0\(25) => audio_fetcher_M_AXI_DMA_inst_n_12,
      \num_samples_0_ff_reg[31]_0\(24) => audio_fetcher_M_AXI_DMA_inst_n_13,
      \num_samples_0_ff_reg[31]_0\(23) => audio_fetcher_M_AXI_DMA_inst_n_14,
      \num_samples_0_ff_reg[31]_0\(22) => audio_fetcher_M_AXI_DMA_inst_n_15,
      \num_samples_0_ff_reg[31]_0\(21) => audio_fetcher_M_AXI_DMA_inst_n_16,
      \num_samples_0_ff_reg[31]_0\(20) => audio_fetcher_M_AXI_DMA_inst_n_17,
      \num_samples_0_ff_reg[31]_0\(19) => audio_fetcher_M_AXI_DMA_inst_n_18,
      \num_samples_0_ff_reg[31]_0\(18) => audio_fetcher_M_AXI_DMA_inst_n_19,
      \num_samples_0_ff_reg[31]_0\(17) => audio_fetcher_M_AXI_DMA_inst_n_20,
      \num_samples_0_ff_reg[31]_0\(16) => audio_fetcher_M_AXI_DMA_inst_n_21,
      \num_samples_0_ff_reg[31]_0\(15) => audio_fetcher_M_AXI_DMA_inst_n_22,
      \num_samples_0_ff_reg[31]_0\(14) => audio_fetcher_M_AXI_DMA_inst_n_23,
      \num_samples_0_ff_reg[31]_0\(13) => audio_fetcher_M_AXI_DMA_inst_n_24,
      \num_samples_0_ff_reg[31]_0\(12) => audio_fetcher_M_AXI_DMA_inst_n_25,
      \num_samples_0_ff_reg[31]_0\(11) => audio_fetcher_M_AXI_DMA_inst_n_26,
      \num_samples_0_ff_reg[31]_0\(10) => audio_fetcher_M_AXI_DMA_inst_n_27,
      \num_samples_0_ff_reg[31]_0\(9) => audio_fetcher_M_AXI_DMA_inst_n_28,
      \num_samples_0_ff_reg[31]_0\(8) => audio_fetcher_M_AXI_DMA_inst_n_29,
      \num_samples_0_ff_reg[31]_0\(7) => audio_fetcher_M_AXI_DMA_inst_n_30,
      \num_samples_0_ff_reg[31]_0\(6) => audio_fetcher_M_AXI_DMA_inst_n_31,
      \num_samples_0_ff_reg[31]_0\(5) => audio_fetcher_M_AXI_DMA_inst_n_32,
      \num_samples_0_ff_reg[31]_0\(4) => audio_fetcher_M_AXI_DMA_inst_n_33,
      \num_samples_0_ff_reg[31]_0\(3) => audio_fetcher_M_AXI_DMA_inst_n_34,
      \num_samples_0_ff_reg[31]_0\(2) => audio_fetcher_M_AXI_DMA_inst_n_35,
      \num_samples_0_ff_reg[31]_0\(1) => audio_fetcher_M_AXI_DMA_inst_n_36,
      \num_samples_0_ff_reg[31]_0\(0) => audio_fetcher_M_AXI_DMA_inst_n_37,
      \req_addr_ff_reg[31]_0\(31) => audio_fetcher_controller_inst_n_43,
      \req_addr_ff_reg[31]_0\(30) => audio_fetcher_controller_inst_n_44,
      \req_addr_ff_reg[31]_0\(29) => audio_fetcher_controller_inst_n_45,
      \req_addr_ff_reg[31]_0\(28) => audio_fetcher_controller_inst_n_46,
      \req_addr_ff_reg[31]_0\(27) => audio_fetcher_controller_inst_n_47,
      \req_addr_ff_reg[31]_0\(26) => audio_fetcher_controller_inst_n_48,
      \req_addr_ff_reg[31]_0\(25) => audio_fetcher_controller_inst_n_49,
      \req_addr_ff_reg[31]_0\(24) => audio_fetcher_controller_inst_n_50,
      \req_addr_ff_reg[31]_0\(23) => audio_fetcher_controller_inst_n_51,
      \req_addr_ff_reg[31]_0\(22) => audio_fetcher_controller_inst_n_52,
      \req_addr_ff_reg[31]_0\(21) => audio_fetcher_controller_inst_n_53,
      \req_addr_ff_reg[31]_0\(20) => audio_fetcher_controller_inst_n_54,
      \req_addr_ff_reg[31]_0\(19) => audio_fetcher_controller_inst_n_55,
      \req_addr_ff_reg[31]_0\(18) => audio_fetcher_controller_inst_n_56,
      \req_addr_ff_reg[31]_0\(17) => audio_fetcher_controller_inst_n_57,
      \req_addr_ff_reg[31]_0\(16) => audio_fetcher_controller_inst_n_58,
      \req_addr_ff_reg[31]_0\(15) => audio_fetcher_controller_inst_n_59,
      \req_addr_ff_reg[31]_0\(14) => audio_fetcher_controller_inst_n_60,
      \req_addr_ff_reg[31]_0\(13) => audio_fetcher_controller_inst_n_61,
      \req_addr_ff_reg[31]_0\(12) => audio_fetcher_controller_inst_n_62,
      \req_addr_ff_reg[31]_0\(11) => audio_fetcher_controller_inst_n_63,
      \req_addr_ff_reg[31]_0\(10) => audio_fetcher_controller_inst_n_64,
      \req_addr_ff_reg[31]_0\(9) => audio_fetcher_controller_inst_n_65,
      \req_addr_ff_reg[31]_0\(8) => audio_fetcher_controller_inst_n_66,
      \req_addr_ff_reg[31]_0\(7) => audio_fetcher_controller_inst_n_67,
      \req_addr_ff_reg[31]_0\(6) => audio_fetcher_controller_inst_n_68,
      \req_addr_ff_reg[31]_0\(5) => audio_fetcher_controller_inst_n_69,
      \req_addr_ff_reg[31]_0\(4) => audio_fetcher_controller_inst_n_70,
      \req_addr_ff_reg[31]_0\(3) => audio_fetcher_controller_inst_n_71,
      \req_addr_ff_reg[31]_0\(2) => audio_fetcher_controller_inst_n_72,
      \req_addr_ff_reg[31]_0\(1) => audio_fetcher_controller_inst_n_73,
      \req_addr_ff_reg[31]_0\(0) => audio_fetcher_controller_inst_n_74,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => audio_fetcher_controller_inst_n_0,
      s_axi_aresetn_1 => audio_fetcher_controller_inst_n_37,
      s_rv_valid => s_rv_valid,
      sample_ff0 => sample_ff0,
      \slot_active_array_ff_reg[0]_0\ => \slot_active_array_ff_reg[0]\,
      \slot_active_array_ff_reg[1]_0\ => \slot_active_array_ff_reg[1]\,
      slot_ff(0) => slot_ff(0),
      valid_ff_reg(0) => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_audio_fetcher_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of wolfenstein_platform_audio_fetcher_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of wolfenstein_platform_audio_fetcher_0_1 : entity is "wolfenstein_platform_audio_fetcher_0_1,audio_fetcher,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of wolfenstein_platform_audio_fetcher_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of wolfenstein_platform_audio_fetcher_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of wolfenstein_platform_audio_fetcher_0_1 : entity is "audio_fetcher,Vivado 2020.2";
end wolfenstein_platform_audio_fetcher_0_1;

architecture STRUCTURE of wolfenstein_platform_audio_fetcher_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^debug_data_o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_audio_out_awaddr\ : STD_LOGIC_VECTOR ( 25 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of m_axi_audio_out_aclk : signal is "xilinx.com:signal:clock:1.0 m_axi_audio_out_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axi_audio_out_aclk : signal is "XIL_INTERFACENAME m_axi_audio_out_aclk, ASSOCIATED_BUSIF m_axi_audio_out, ASSOCIATED_RESET m_axi_audio_out_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_audio_out_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_audio_out_aresetn RST";
  attribute x_interface_parameter of m_axi_audio_out_aresetn : signal is "XIL_INTERFACENAME m_axi_audio_out_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_audio_out_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARREADY";
  attribute x_interface_info of m_axi_audio_out_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARVALID";
  attribute x_interface_info of m_axi_audio_out_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWREADY";
  attribute x_interface_info of m_axi_audio_out_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWVALID";
  attribute x_interface_info of m_axi_audio_out_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out BREADY";
  attribute x_interface_info of m_axi_audio_out_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out BVALID";
  attribute x_interface_info of m_axi_audio_out_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out RREADY";
  attribute x_interface_info of m_axi_audio_out_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out RVALID";
  attribute x_interface_info of m_axi_audio_out_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out WREADY";
  attribute x_interface_info of m_axi_audio_out_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out WVALID";
  attribute x_interface_info of m_axi_dma_aclk : signal is "xilinx.com:signal:clock:1.0 m_axi_dma_aclk CLK";
  attribute x_interface_parameter of m_axi_dma_aclk : signal is "XIL_INTERFACENAME m_axi_dma_aclk, ASSOCIATED_BUSIF m_axi_dma, ASSOCIATED_RESET m_axi_dma_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_dma_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_dma_aresetn RST";
  attribute x_interface_parameter of m_axi_dma_aresetn : signal is "XIL_INTERFACENAME m_axi_dma_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_dma_arlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARLOCK";
  attribute x_interface_info of m_axi_dma_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARREADY";
  attribute x_interface_info of m_axi_dma_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARVALID";
  attribute x_interface_info of m_axi_dma_awlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWLOCK";
  attribute x_interface_info of m_axi_dma_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWREADY";
  attribute x_interface_info of m_axi_dma_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWVALID";
  attribute x_interface_info of m_axi_dma_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma BREADY";
  attribute x_interface_info of m_axi_dma_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma BVALID";
  attribute x_interface_info of m_axi_dma_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma RLAST";
  attribute x_interface_info of m_axi_dma_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma RREADY";
  attribute x_interface_info of m_axi_dma_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma RVALID";
  attribute x_interface_info of m_axi_dma_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma WLAST";
  attribute x_interface_info of m_axi_dma_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma WREADY";
  attribute x_interface_info of m_axi_dma_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma WVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of m_axi_audio_out_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARADDR";
  attribute x_interface_info of m_axi_audio_out_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out ARPROT";
  attribute x_interface_info of m_axi_audio_out_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWADDR";
  attribute x_interface_parameter of m_axi_audio_out_awaddr : signal is "XIL_INTERFACENAME m_axi_audio_out, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_audio_out_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out AWPROT";
  attribute x_interface_info of m_axi_audio_out_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out BRESP";
  attribute x_interface_info of m_axi_audio_out_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out RDATA";
  attribute x_interface_info of m_axi_audio_out_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out RRESP";
  attribute x_interface_info of m_axi_audio_out_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out WDATA";
  attribute x_interface_info of m_axi_audio_out_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_audio_out WSTRB";
  attribute x_interface_info of m_axi_dma_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARADDR";
  attribute x_interface_info of m_axi_dma_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARBURST";
  attribute x_interface_info of m_axi_dma_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARCACHE";
  attribute x_interface_info of m_axi_dma_arid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARID";
  attribute x_interface_info of m_axi_dma_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARLEN";
  attribute x_interface_info of m_axi_dma_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARPROT";
  attribute x_interface_info of m_axi_dma_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARQOS";
  attribute x_interface_info of m_axi_dma_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARSIZE";
  attribute x_interface_info of m_axi_dma_aruser : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma ARUSER";
  attribute x_interface_info of m_axi_dma_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWADDR";
  attribute x_interface_info of m_axi_dma_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWBURST";
  attribute x_interface_info of m_axi_dma_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWCACHE";
  attribute x_interface_info of m_axi_dma_awid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWID";
  attribute x_interface_parameter of m_axi_dma_awid : signal is "XIL_INTERFACENAME m_axi_dma, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_dma_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWLEN";
  attribute x_interface_info of m_axi_dma_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWPROT";
  attribute x_interface_info of m_axi_dma_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWQOS";
  attribute x_interface_info of m_axi_dma_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWSIZE";
  attribute x_interface_info of m_axi_dma_awuser : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma AWUSER";
  attribute x_interface_info of m_axi_dma_bid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma BID";
  attribute x_interface_info of m_axi_dma_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma BRESP";
  attribute x_interface_info of m_axi_dma_buser : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma BUSER";
  attribute x_interface_info of m_axi_dma_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma RDATA";
  attribute x_interface_info of m_axi_dma_rid : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma RID";
  attribute x_interface_info of m_axi_dma_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma RRESP";
  attribute x_interface_info of m_axi_dma_ruser : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma RUSER";
  attribute x_interface_info of m_axi_dma_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma WDATA";
  attribute x_interface_info of m_axi_dma_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma WSTRB";
  attribute x_interface_info of m_axi_dma_wuser : signal is "xilinx.com:interface:aximm:1.0 m_axi_dma WUSER";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  debug_data_o(31) <= \<const0>\;
  debug_data_o(30) <= \<const0>\;
  debug_data_o(29) <= \<const0>\;
  debug_data_o(28) <= \<const0>\;
  debug_data_o(27) <= \<const0>\;
  debug_data_o(26) <= \<const0>\;
  debug_data_o(25) <= \<const0>\;
  debug_data_o(24) <= \<const0>\;
  debug_data_o(23) <= \<const0>\;
  debug_data_o(22) <= \<const0>\;
  debug_data_o(21) <= \<const0>\;
  debug_data_o(20) <= \<const0>\;
  debug_data_o(19) <= \<const0>\;
  debug_data_o(18) <= \<const0>\;
  debug_data_o(17) <= \<const0>\;
  debug_data_o(16) <= \<const0>\;
  debug_data_o(15) <= \<const0>\;
  debug_data_o(14) <= \<const0>\;
  debug_data_o(13) <= \<const0>\;
  debug_data_o(12) <= \<const0>\;
  debug_data_o(11) <= \<const0>\;
  debug_data_o(10) <= \<const0>\;
  debug_data_o(9) <= \<const0>\;
  debug_data_o(8) <= \<const0>\;
  debug_data_o(7) <= \<const0>\;
  debug_data_o(6) <= \<const0>\;
  debug_data_o(5) <= \<const0>\;
  debug_data_o(4) <= \<const0>\;
  debug_data_o(3) <= \<const0>\;
  debug_data_o(2) <= \<const0>\;
  debug_data_o(1 downto 0) <= \^debug_data_o\(1 downto 0);
  m_axi_audio_out_araddr(31) <= \<const0>\;
  m_axi_audio_out_araddr(30) <= \<const0>\;
  m_axi_audio_out_araddr(29) <= \<const0>\;
  m_axi_audio_out_araddr(28) <= \<const0>\;
  m_axi_audio_out_araddr(27) <= \<const0>\;
  m_axi_audio_out_araddr(26) <= \<const0>\;
  m_axi_audio_out_araddr(25) <= \<const0>\;
  m_axi_audio_out_araddr(24) <= \<const0>\;
  m_axi_audio_out_araddr(23) <= \<const0>\;
  m_axi_audio_out_araddr(22) <= \<const0>\;
  m_axi_audio_out_araddr(21) <= \<const0>\;
  m_axi_audio_out_araddr(20) <= \<const0>\;
  m_axi_audio_out_araddr(19) <= \<const0>\;
  m_axi_audio_out_araddr(18) <= \<const0>\;
  m_axi_audio_out_araddr(17) <= \<const0>\;
  m_axi_audio_out_araddr(16) <= \<const0>\;
  m_axi_audio_out_araddr(15) <= \<const0>\;
  m_axi_audio_out_araddr(14) <= \<const0>\;
  m_axi_audio_out_araddr(13) <= \<const0>\;
  m_axi_audio_out_araddr(12) <= \<const0>\;
  m_axi_audio_out_araddr(11) <= \<const0>\;
  m_axi_audio_out_araddr(10) <= \<const0>\;
  m_axi_audio_out_araddr(9) <= \<const0>\;
  m_axi_audio_out_araddr(8) <= \<const0>\;
  m_axi_audio_out_araddr(7) <= \<const0>\;
  m_axi_audio_out_araddr(6) <= \<const0>\;
  m_axi_audio_out_araddr(5) <= \<const0>\;
  m_axi_audio_out_araddr(4) <= \<const0>\;
  m_axi_audio_out_araddr(3) <= \<const0>\;
  m_axi_audio_out_araddr(2) <= \<const0>\;
  m_axi_audio_out_araddr(1) <= \<const0>\;
  m_axi_audio_out_araddr(0) <= \<const0>\;
  m_axi_audio_out_arprot(2) <= \<const0>\;
  m_axi_audio_out_arprot(1) <= \<const0>\;
  m_axi_audio_out_arprot(0) <= \<const0>\;
  m_axi_audio_out_arvalid <= \<const0>\;
  m_axi_audio_out_awaddr(31) <= \<const0>\;
  m_axi_audio_out_awaddr(30) <= \^m_axi_audio_out_awaddr\(25);
  m_axi_audio_out_awaddr(29) <= \<const0>\;
  m_axi_audio_out_awaddr(28) <= \<const0>\;
  m_axi_audio_out_awaddr(27) <= \<const0>\;
  m_axi_audio_out_awaddr(26) <= \<const0>\;
  m_axi_audio_out_awaddr(25) <= \^m_axi_audio_out_awaddr\(25);
  m_axi_audio_out_awaddr(24) <= \^m_axi_audio_out_awaddr\(25);
  m_axi_audio_out_awaddr(23) <= \^m_axi_audio_out_awaddr\(25);
  m_axi_audio_out_awaddr(22) <= \^m_axi_audio_out_awaddr\(25);
  m_axi_audio_out_awaddr(21) <= \<const0>\;
  m_axi_audio_out_awaddr(20) <= \<const0>\;
  m_axi_audio_out_awaddr(19) <= \<const0>\;
  m_axi_audio_out_awaddr(18) <= \<const0>\;
  m_axi_audio_out_awaddr(17) <= \<const0>\;
  m_axi_audio_out_awaddr(16) <= \^m_axi_audio_out_awaddr\(25);
  m_axi_audio_out_awaddr(15) <= \<const0>\;
  m_axi_audio_out_awaddr(14) <= \<const0>\;
  m_axi_audio_out_awaddr(13) <= \<const0>\;
  m_axi_audio_out_awaddr(12) <= \<const0>\;
  m_axi_audio_out_awaddr(11) <= \<const0>\;
  m_axi_audio_out_awaddr(10) <= \<const0>\;
  m_axi_audio_out_awaddr(9) <= \<const0>\;
  m_axi_audio_out_awaddr(8) <= \<const0>\;
  m_axi_audio_out_awaddr(7) <= \<const0>\;
  m_axi_audio_out_awaddr(6) <= \<const0>\;
  m_axi_audio_out_awaddr(5) <= \<const0>\;
  m_axi_audio_out_awaddr(4) <= \<const0>\;
  m_axi_audio_out_awaddr(3) <= \^m_axi_audio_out_awaddr\(25);
  m_axi_audio_out_awaddr(2) <= \^m_axi_audio_out_awaddr\(2);
  m_axi_audio_out_awaddr(1) <= \<const0>\;
  m_axi_audio_out_awaddr(0) <= \<const0>\;
  m_axi_audio_out_awprot(2) <= \<const0>\;
  m_axi_audio_out_awprot(1) <= \<const0>\;
  m_axi_audio_out_awprot(0) <= \<const0>\;
  m_axi_audio_out_rready <= \<const0>\;
  m_axi_audio_out_wstrb(3) <= \<const1>\;
  m_axi_audio_out_wstrb(2) <= \<const1>\;
  m_axi_audio_out_wstrb(1) <= \<const1>\;
  m_axi_audio_out_wstrb(0) <= \<const1>\;
  m_axi_dma_arburst(1) <= \<const0>\;
  m_axi_dma_arburst(0) <= \<const1>\;
  m_axi_dma_arcache(3) <= \<const0>\;
  m_axi_dma_arcache(2) <= \<const0>\;
  m_axi_dma_arcache(1) <= \<const1>\;
  m_axi_dma_arcache(0) <= \<const1>\;
  m_axi_dma_arid(1) <= \<const0>\;
  m_axi_dma_arid(0) <= \<const0>\;
  m_axi_dma_arlen(7) <= \<const0>\;
  m_axi_dma_arlen(6) <= \<const0>\;
  m_axi_dma_arlen(5) <= \<const0>\;
  m_axi_dma_arlen(4) <= \<const0>\;
  m_axi_dma_arlen(3) <= \<const0>\;
  m_axi_dma_arlen(2) <= \<const0>\;
  m_axi_dma_arlen(1) <= \<const0>\;
  m_axi_dma_arlen(0) <= \<const0>\;
  m_axi_dma_arlock <= \<const0>\;
  m_axi_dma_arprot(2) <= \<const0>\;
  m_axi_dma_arprot(1) <= \<const0>\;
  m_axi_dma_arprot(0) <= \<const0>\;
  m_axi_dma_arqos(3) <= \<const0>\;
  m_axi_dma_arqos(2) <= \<const0>\;
  m_axi_dma_arqos(1) <= \<const0>\;
  m_axi_dma_arqos(0) <= \<const0>\;
  m_axi_dma_arsize(2) <= \<const0>\;
  m_axi_dma_arsize(1) <= \<const1>\;
  m_axi_dma_arsize(0) <= \<const0>\;
  m_axi_dma_aruser(0) <= \<const1>\;
  m_axi_dma_awaddr(31) <= \<const0>\;
  m_axi_dma_awaddr(30) <= \<const0>\;
  m_axi_dma_awaddr(29) <= \<const0>\;
  m_axi_dma_awaddr(28) <= \<const0>\;
  m_axi_dma_awaddr(27) <= \<const0>\;
  m_axi_dma_awaddr(26) <= \<const0>\;
  m_axi_dma_awaddr(25) <= \<const0>\;
  m_axi_dma_awaddr(24) <= \<const0>\;
  m_axi_dma_awaddr(23) <= \<const0>\;
  m_axi_dma_awaddr(22) <= \<const0>\;
  m_axi_dma_awaddr(21) <= \<const0>\;
  m_axi_dma_awaddr(20) <= \<const0>\;
  m_axi_dma_awaddr(19) <= \<const0>\;
  m_axi_dma_awaddr(18) <= \<const0>\;
  m_axi_dma_awaddr(17) <= \<const0>\;
  m_axi_dma_awaddr(16) <= \<const0>\;
  m_axi_dma_awaddr(15) <= \<const0>\;
  m_axi_dma_awaddr(14) <= \<const0>\;
  m_axi_dma_awaddr(13) <= \<const0>\;
  m_axi_dma_awaddr(12) <= \<const0>\;
  m_axi_dma_awaddr(11) <= \<const0>\;
  m_axi_dma_awaddr(10) <= \<const0>\;
  m_axi_dma_awaddr(9) <= \<const0>\;
  m_axi_dma_awaddr(8) <= \<const0>\;
  m_axi_dma_awaddr(7) <= \<const0>\;
  m_axi_dma_awaddr(6) <= \<const0>\;
  m_axi_dma_awaddr(5) <= \<const0>\;
  m_axi_dma_awaddr(4) <= \<const0>\;
  m_axi_dma_awaddr(3) <= \<const0>\;
  m_axi_dma_awaddr(2) <= \<const0>\;
  m_axi_dma_awaddr(1) <= \<const0>\;
  m_axi_dma_awaddr(0) <= \<const0>\;
  m_axi_dma_awburst(1) <= \<const0>\;
  m_axi_dma_awburst(0) <= \<const0>\;
  m_axi_dma_awcache(3) <= \<const0>\;
  m_axi_dma_awcache(2) <= \<const0>\;
  m_axi_dma_awcache(1) <= \<const0>\;
  m_axi_dma_awcache(0) <= \<const0>\;
  m_axi_dma_awid(1) <= \<const0>\;
  m_axi_dma_awid(0) <= \<const0>\;
  m_axi_dma_awlen(7) <= \<const0>\;
  m_axi_dma_awlen(6) <= \<const0>\;
  m_axi_dma_awlen(5) <= \<const0>\;
  m_axi_dma_awlen(4) <= \<const0>\;
  m_axi_dma_awlen(3) <= \<const0>\;
  m_axi_dma_awlen(2) <= \<const0>\;
  m_axi_dma_awlen(1) <= \<const0>\;
  m_axi_dma_awlen(0) <= \<const0>\;
  m_axi_dma_awlock <= \<const0>\;
  m_axi_dma_awprot(2) <= \<const0>\;
  m_axi_dma_awprot(1) <= \<const0>\;
  m_axi_dma_awprot(0) <= \<const0>\;
  m_axi_dma_awqos(3) <= \<const0>\;
  m_axi_dma_awqos(2) <= \<const0>\;
  m_axi_dma_awqos(1) <= \<const0>\;
  m_axi_dma_awqos(0) <= \<const0>\;
  m_axi_dma_awsize(2) <= \<const0>\;
  m_axi_dma_awsize(1) <= \<const0>\;
  m_axi_dma_awsize(0) <= \<const0>\;
  m_axi_dma_awuser(0) <= \<const0>\;
  m_axi_dma_awvalid <= \<const0>\;
  m_axi_dma_bready <= \<const0>\;
  m_axi_dma_wdata(31) <= \<const0>\;
  m_axi_dma_wdata(30) <= \<const0>\;
  m_axi_dma_wdata(29) <= \<const0>\;
  m_axi_dma_wdata(28) <= \<const0>\;
  m_axi_dma_wdata(27) <= \<const0>\;
  m_axi_dma_wdata(26) <= \<const0>\;
  m_axi_dma_wdata(25) <= \<const0>\;
  m_axi_dma_wdata(24) <= \<const0>\;
  m_axi_dma_wdata(23) <= \<const0>\;
  m_axi_dma_wdata(22) <= \<const0>\;
  m_axi_dma_wdata(21) <= \<const0>\;
  m_axi_dma_wdata(20) <= \<const0>\;
  m_axi_dma_wdata(19) <= \<const0>\;
  m_axi_dma_wdata(18) <= \<const0>\;
  m_axi_dma_wdata(17) <= \<const0>\;
  m_axi_dma_wdata(16) <= \<const0>\;
  m_axi_dma_wdata(15) <= \<const0>\;
  m_axi_dma_wdata(14) <= \<const0>\;
  m_axi_dma_wdata(13) <= \<const0>\;
  m_axi_dma_wdata(12) <= \<const0>\;
  m_axi_dma_wdata(11) <= \<const0>\;
  m_axi_dma_wdata(10) <= \<const0>\;
  m_axi_dma_wdata(9) <= \<const0>\;
  m_axi_dma_wdata(8) <= \<const0>\;
  m_axi_dma_wdata(7) <= \<const0>\;
  m_axi_dma_wdata(6) <= \<const0>\;
  m_axi_dma_wdata(5) <= \<const0>\;
  m_axi_dma_wdata(4) <= \<const0>\;
  m_axi_dma_wdata(3) <= \<const0>\;
  m_axi_dma_wdata(2) <= \<const0>\;
  m_axi_dma_wdata(1) <= \<const0>\;
  m_axi_dma_wdata(0) <= \<const0>\;
  m_axi_dma_wlast <= \<const0>\;
  m_axi_dma_wstrb(3) <= \<const0>\;
  m_axi_dma_wstrb(2) <= \<const0>\;
  m_axi_dma_wstrb(1) <= \<const0>\;
  m_axi_dma_wstrb(0) <= \<const0>\;
  m_axi_dma_wuser(0) <= \<const0>\;
  m_axi_dma_wvalid <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.wolfenstein_platform_audio_fetcher_0_1_audio_fetcher
     port map (
      m_axi_audio_out_aclk => m_axi_audio_out_aclk,
      m_axi_audio_out_aresetn => m_axi_audio_out_aresetn,
      m_axi_audio_out_awaddr(1) => \^m_axi_audio_out_awaddr\(25),
      m_axi_audio_out_awaddr(0) => \^m_axi_audio_out_awaddr\(2),
      m_axi_audio_out_awready => m_axi_audio_out_awready,
      m_axi_audio_out_awvalid => m_axi_audio_out_awvalid,
      m_axi_audio_out_bready => m_axi_audio_out_bready,
      m_axi_audio_out_bvalid => m_axi_audio_out_bvalid,
      m_axi_audio_out_wdata(31 downto 0) => m_axi_audio_out_wdata(31 downto 0),
      m_axi_audio_out_wready => m_axi_audio_out_wready,
      m_axi_audio_out_wvalid => m_axi_audio_out_wvalid,
      m_axi_dma_aclk => m_axi_dma_aclk,
      m_axi_dma_araddr(31 downto 0) => m_axi_dma_araddr(31 downto 0),
      m_axi_dma_aresetn => m_axi_dma_aresetn,
      m_axi_dma_arready => m_axi_dma_arready,
      m_axi_dma_arvalid => m_axi_dma_arvalid,
      m_axi_dma_rdata(31 downto 0) => m_axi_dma_rdata(31 downto 0),
      m_axi_dma_rready => m_axi_dma_rready,
      m_axi_dma_rvalid => m_axi_dma_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \slot_active_array_ff_reg[0]\ => \^debug_data_o\(0),
      \slot_active_array_ff_reg[1]\ => \^debug_data_o\(1)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
