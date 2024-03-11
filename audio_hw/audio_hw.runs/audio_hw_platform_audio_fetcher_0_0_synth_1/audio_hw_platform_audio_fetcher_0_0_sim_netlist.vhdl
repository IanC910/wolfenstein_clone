-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Mar 11 05:50:26 2024
-- Host        : IC-VivoBook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ audio_hw_platform_audio_fetcher_0_0_sim_netlist.vhdl
-- Design      : audio_hw_platform_audio_fetcher_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_AUDIO_OUT is
  port (
    curr_state_ff : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_bready : out STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[1]_0\ : out STD_LOGIC;
    m_axi_audio_out_awvalid : out STD_LOGIC;
    m_axi_audio_out_wvalid : out STD_LOGIC;
    m_axi_audio_out_awaddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_wready : in STD_LOGIC;
    m_axi_audio_out_bvalid : in STD_LOGIC;
    \axi_awaddr_ff_reg[2]_0\ : in STD_LOGIC;
    m_axi_audio_out_awready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_aresetn : in STD_LOGIC;
    m_axi_audio_out_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_AUDIO_OUT;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_AUDIO_OUT is
  signal \FSM_sequential_curr_state_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_awaddr_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \^curr_state_ff\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[0]\ : label is "awvalid:01,wvalid:10,idle:00,bready:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[1]\ : label is "awvalid:01,wvalid:10,idle:00,bready:11";
  attribute SOFT_HLUTNM of \curr_state_ff[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axi_audio_out_awvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axi_audio_out_bready_INST_0 : label is "soft_lutpair1";
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
      INIT => X"6A620000"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \FSM_sequential_curr_state_ff[1]_i_2__0_n_0\,
      I2 => \^curr_state_ff\(0),
      I3 => m_axi_audio_out_wready,
      I4 => m_axi_audio_out_aresetn,
      O => \FSM_sequential_curr_state_ff[1]_i_1_n_0\
    );
\FSM_sequential_curr_state_ff[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCF0FAF0FAF0"
    )
        port map (
      I0 => m_axi_audio_out_wready,
      I1 => m_axi_audio_out_bvalid,
      I2 => \axi_awaddr_ff_reg[2]_0\,
      I3 => \^curr_state_ff\(1),
      I4 => m_axi_audio_out_awready,
      I5 => \^curr_state_ff\(0),
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
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => Q(0),
      Q => m_axi_audio_out_awaddr(0),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_awaddr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => '1',
      Q => m_axi_audio_out_awaddr(1),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(0),
      Q => m_axi_audio_out_wdata(0),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(10),
      Q => m_axi_audio_out_wdata(10),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(11),
      Q => m_axi_audio_out_wdata(11),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(12),
      Q => m_axi_audio_out_wdata(12),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(13),
      Q => m_axi_audio_out_wdata(13),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(14),
      Q => m_axi_audio_out_wdata(14),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(15),
      Q => m_axi_audio_out_wdata(15),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(16),
      Q => m_axi_audio_out_wdata(16),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(17),
      Q => m_axi_audio_out_wdata(17),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(18),
      Q => m_axi_audio_out_wdata(18),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(19),
      Q => m_axi_audio_out_wdata(19),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(1),
      Q => m_axi_audio_out_wdata(1),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(20),
      Q => m_axi_audio_out_wdata(20),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(21),
      Q => m_axi_audio_out_wdata(21),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(22),
      Q => m_axi_audio_out_wdata(22),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(23),
      Q => m_axi_audio_out_wdata(23),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(24),
      Q => m_axi_audio_out_wdata(24),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(25),
      Q => m_axi_audio_out_wdata(25),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(26),
      Q => m_axi_audio_out_wdata(26),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(27),
      Q => m_axi_audio_out_wdata(27),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(28),
      Q => m_axi_audio_out_wdata(28),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(29),
      Q => m_axi_audio_out_wdata(29),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(2),
      Q => m_axi_audio_out_wdata(2),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(30),
      Q => m_axi_audio_out_wdata(30),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(31),
      Q => m_axi_audio_out_wdata(31),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(3),
      Q => m_axi_audio_out_wdata(3),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(4),
      Q => m_axi_audio_out_wdata(4),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(5),
      Q => m_axi_audio_out_wdata(5),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(6),
      Q => m_axi_audio_out_wdata(6),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(7),
      Q => m_axi_audio_out_wdata(7),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(8),
      Q => m_axi_audio_out_wdata(8),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\axi_wdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_audio_out_aclk,
      CE => \axi_awaddr_ff_reg[2]_0\,
      D => D(9),
      Q => m_axi_audio_out_wdata(9),
      R => \axi_awaddr_ff[30]_i_1_n_0\
    );
\curr_state_ff[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \^curr_state_ff\(0),
      I2 => Q(1),
      O => \FSM_sequential_curr_state_ff_reg[1]_0\
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_DMA is
  port (
    curr_state_ff : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_curr_state_ff_reg[1]_0\ : out STD_LOGIC;
    m_axi_dma_rready : out STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[1]_1\ : out STD_LOGIC;
    m_axi_dma_arvalid : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_ff_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_arready : in STD_LOGIC;
    m_axi_dma_rvalid : in STD_LOGIC;
    \FSM_sequential_curr_state_ff_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    scaled_sample_ff_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_dma_aresetn : in STD_LOGIC;
    m_axi_dma_aclk : in STD_LOGIC;
    m_axi_dma_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    req_rv_addr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_DMA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_DMA is
  signal \FSM_sequential_curr_state_ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rdata_ff0 : STD_LOGIC;
  signal \^axi_rdata_ff_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^curr_state_ff\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state_ff[1]_i_1__0\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[0]\ : label is "arvalid:01,rready:10,idle:00,returning:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_ff_reg[1]\ : label is "arvalid:01,rready:10,idle:00,returning:11";
  attribute SOFT_HLUTNM of \curr_state_ff[3]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \debug_data[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_axi_dma_arvalid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axi_dma_rready_INST_0 : label is "soft_lutpair5";
begin
  \axi_rdata_ff_reg[31]_0\(31 downto 0) <= \^axi_rdata_ff_reg[31]_0\(31 downto 0);
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
      INIT => X"FFFFFFFFFFFF5808"
    )
        port map (
      I0 => \^curr_state_ff\(0),
      I1 => m_axi_dma_arready,
      I2 => \^curr_state_ff\(1),
      I3 => m_axi_dma_rvalid,
      I4 => \FSM_sequential_curr_state_ff_reg[0]_0\,
      I5 => E(0),
      O => \FSM_sequential_curr_state_ff[1]_i_2_n_0\
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
\axi_araddr_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(0),
      Q => m_axi_dma_araddr(0),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(10),
      Q => m_axi_dma_araddr(10),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(11),
      Q => m_axi_dma_araddr(11),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(12),
      Q => m_axi_dma_araddr(12),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(13),
      Q => m_axi_dma_araddr(13),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(14),
      Q => m_axi_dma_araddr(14),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(15),
      Q => m_axi_dma_araddr(15),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(16),
      Q => m_axi_dma_araddr(16),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(17),
      Q => m_axi_dma_araddr(17),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(18),
      Q => m_axi_dma_araddr(18),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(19),
      Q => m_axi_dma_araddr(19),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(1),
      Q => m_axi_dma_araddr(1),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(20),
      Q => m_axi_dma_araddr(20),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(21),
      Q => m_axi_dma_araddr(21),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(22),
      Q => m_axi_dma_araddr(22),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(23),
      Q => m_axi_dma_araddr(23),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(24),
      Q => m_axi_dma_araddr(24),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(25),
      Q => m_axi_dma_araddr(25),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(26),
      Q => m_axi_dma_araddr(26),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(27),
      Q => m_axi_dma_araddr(27),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(28),
      Q => m_axi_dma_araddr(28),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(29),
      Q => m_axi_dma_araddr(29),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(2),
      Q => m_axi_dma_araddr(2),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(30),
      Q => m_axi_dma_araddr(30),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(31),
      Q => m_axi_dma_araddr(31),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(3),
      Q => m_axi_dma_araddr(3),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(4),
      Q => m_axi_dma_araddr(4),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(5),
      Q => m_axi_dma_araddr(5),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(6),
      Q => m_axi_dma_araddr(6),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(7),
      Q => m_axi_dma_araddr(7),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(8),
      Q => m_axi_dma_araddr(8),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_araddr_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => E(0),
      D => req_rv_addr(9),
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
      Q => \^axi_rdata_ff_reg[31]_0\(0),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(10),
      Q => \^axi_rdata_ff_reg[31]_0\(10),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(11),
      Q => \^axi_rdata_ff_reg[31]_0\(11),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(12),
      Q => \^axi_rdata_ff_reg[31]_0\(12),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(13),
      Q => \^axi_rdata_ff_reg[31]_0\(13),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(14),
      Q => \^axi_rdata_ff_reg[31]_0\(14),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(15),
      Q => \^axi_rdata_ff_reg[31]_0\(15),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(16),
      Q => \^axi_rdata_ff_reg[31]_0\(16),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(17),
      Q => \^axi_rdata_ff_reg[31]_0\(17),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(18),
      Q => \^axi_rdata_ff_reg[31]_0\(18),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(19),
      Q => \^axi_rdata_ff_reg[31]_0\(19),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(1),
      Q => \^axi_rdata_ff_reg[31]_0\(1),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(20),
      Q => \^axi_rdata_ff_reg[31]_0\(20),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(21),
      Q => \^axi_rdata_ff_reg[31]_0\(21),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(22),
      Q => \^axi_rdata_ff_reg[31]_0\(22),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(23),
      Q => \^axi_rdata_ff_reg[31]_0\(23),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(24),
      Q => \^axi_rdata_ff_reg[31]_0\(24),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(25),
      Q => \^axi_rdata_ff_reg[31]_0\(25),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(26),
      Q => \^axi_rdata_ff_reg[31]_0\(26),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(27),
      Q => \^axi_rdata_ff_reg[31]_0\(27),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(28),
      Q => \^axi_rdata_ff_reg[31]_0\(28),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(29),
      Q => \^axi_rdata_ff_reg[31]_0\(29),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(2),
      Q => \^axi_rdata_ff_reg[31]_0\(2),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(30),
      Q => \^axi_rdata_ff_reg[31]_0\(30),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(31),
      Q => \^axi_rdata_ff_reg[31]_0\(31),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(3),
      Q => \^axi_rdata_ff_reg[31]_0\(3),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(4),
      Q => \^axi_rdata_ff_reg[31]_0\(4),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(5),
      Q => \^axi_rdata_ff_reg[31]_0\(5),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(6),
      Q => \^axi_rdata_ff_reg[31]_0\(6),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(7),
      Q => \^axi_rdata_ff_reg[31]_0\(7),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(8),
      Q => \^axi_rdata_ff_reg[31]_0\(8),
      R => \axi_araddr_ff[31]_i_1_n_0\
    );
\axi_rdata_ff_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_dma_aclk,
      CE => axi_rdata_ff0,
      D => m_axi_dma_rdata(9),
      Q => \^axi_rdata_ff_reg[31]_0\(9),
      S => \axi_araddr_ff[31]_i_1_n_0\
    );
\curr_state_ff[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \^curr_state_ff\(0),
      I2 => Q(1),
      I3 => Q(0),
      O => \FSM_sequential_curr_state_ff_reg[1]_1\
    );
\debug_data[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^curr_state_ff\(1),
      I1 => \^curr_state_ff\(0),
      I2 => Q(1),
      I3 => Q(0),
      O => \FSM_sequential_curr_state_ff_reg[1]_0\
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
scaled_sample_ff_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(25),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(9),
      O => A(9)
    );
scaled_sample_ff_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(24),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(8),
      O => A(8)
    );
scaled_sample_ff_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(23),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(7),
      O => A(7)
    );
scaled_sample_ff_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(22),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(6),
      O => A(6)
    );
scaled_sample_ff_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(21),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(5),
      O => A(5)
    );
scaled_sample_ff_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(20),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(4),
      O => A(4)
    );
scaled_sample_ff_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(19),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(3),
      O => A(3)
    );
scaled_sample_ff_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(18),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(2),
      O => A(2)
    );
scaled_sample_ff_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(17),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(1),
      O => A(1)
    );
scaled_sample_ff_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(16),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(0),
      O => A(0)
    );
scaled_sample_ff_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(31),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(15),
      O => A(15)
    );
scaled_sample_ff_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(30),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(14),
      O => A(14)
    );
scaled_sample_ff_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(29),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(13),
      O => A(13)
    );
scaled_sample_ff_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(28),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(12),
      O => A(12)
    );
scaled_sample_ff_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(27),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(11),
      O => A(11)
    );
scaled_sample_ff_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^axi_rdata_ff_reg[31]_0\(26),
      I1 => scaled_sample_ff_reg(0),
      I2 => \^axi_rdata_ff_reg[31]_0\(10),
      O => A(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_S_AXI is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_rv_valid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sound_addr_ff_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sound_addr_ff0 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_data_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_S_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_S_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^s_rv_valid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 30 downto 15 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg1_reg[31]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \slv_reg3[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal valid_ff_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg2[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg2[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg2[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg2[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg2[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg2[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg2[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg2[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg2[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg2[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg2[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg2[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg2[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg2[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg2[23]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg2[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg2[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg2[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg2[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg2[28]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg2[29]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg2[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg2[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg2[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg2[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg2[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg2[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg2[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg2[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg2[9]_i_1\ : label is "soft_lutpair15";
begin
  Q(0) <= \^q\(0);
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
  s_rv_valid <= \^s_rv_valid\;
  \slv_reg1_reg[31]_0\(15 downto 0) <= \^slv_reg1_reg[31]_0\(15 downto 0);
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => s_axi_bready,
      I2 => \^s_axi_awready\,
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
      S => \^s_axi_aresetn_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
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
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => \^s_axi_aresetn_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => \^s_axi_aresetn_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => \^s_axi_aresetn_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^s_axi_awready\,
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
      I1 => \^s_axi_awready\,
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
      R => \^s_axi_aresetn_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \^s_axi_aresetn_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
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
      Q => \^s_axi_awready\,
      R => \^s_axi_aresetn_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \^s_axi_wready\,
      I4 => \^s_axi_awready\,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \^s_axi_aresetn_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(0),
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(10),
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(11),
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(12),
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(13),
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(14),
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(1),
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(2),
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(15),
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(3),
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(4),
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[4]\,
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(5),
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(6),
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(7),
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(8),
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(9),
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[9]\,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => \^s_axi_aresetn_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => \^s_axi_aresetn_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
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
      R => \^s_axi_aresetn_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => \^s_axi_aresetn_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => p_0_in(0),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg0(0),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg0(10),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg0(11),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg0(12),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg0(13),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg0(14),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg0(15),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg0(16),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg0(17),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg0(18),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg0(19),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg0(1),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg0(20),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg0(21),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg0(22),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg0(23),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg0(24),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg0(25),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg0(26),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg0(27),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg0(28),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg0(29),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg0(2),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg0(30),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg0(31),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg0(3),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg0(4),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg0(5),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg0(6),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg0(7),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg0(8),
      R => \^s_axi_aresetn_0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg0(9),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => p_0_in(0),
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^slv_reg1_reg[31]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^slv_reg1_reg[31]_0\(10),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^slv_reg1_reg[31]_0\(11),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^slv_reg1_reg[31]_0\(12),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^slv_reg1_reg[31]_0\(13),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^slv_reg1_reg[31]_0\(14),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg1(15),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg1(16),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg1(17),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg1(18),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg1(19),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^slv_reg1_reg[31]_0\(1),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg1(20),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg1(21),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg1(22),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg1(23),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg1(24),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg1(25),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg1(26),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg1(27),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg1(28),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg1(29),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^slv_reg1_reg[31]_0\(2),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg1(30),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \^slv_reg1_reg[31]_0\(15),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^slv_reg1_reg[31]_0\(3),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^slv_reg1_reg[31]_0\(4),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^slv_reg1_reg[31]_0\(5),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^slv_reg1_reg[31]_0\(6),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^slv_reg1_reg[31]_0\(7),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^slv_reg1_reg[31]_0\(8),
      R => \^s_axi_aresetn_0\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^slv_reg1_reg[31]_0\(9),
      R => \^s_axi_aresetn_0\
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(0),
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(10),
      O => \slv_reg2[10]_i_1_n_0\
    );
\slv_reg2[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(11),
      O => \slv_reg2[11]_i_1_n_0\
    );
\slv_reg2[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(12),
      O => \slv_reg2[12]_i_1_n_0\
    );
\slv_reg2[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(13),
      O => \slv_reg2[13]_i_1_n_0\
    );
\slv_reg2[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(14),
      O => \slv_reg2[14]_i_1_n_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(15),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(16),
      O => \slv_reg2[16]_i_1_n_0\
    );
\slv_reg2[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(17),
      O => \slv_reg2[17]_i_1_n_0\
    );
\slv_reg2[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(18),
      O => \slv_reg2[18]_i_1_n_0\
    );
\slv_reg2[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(19),
      O => \slv_reg2[19]_i_1_n_0\
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(1),
      O => \slv_reg2[1]_i_1_n_0\
    );
\slv_reg2[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(20),
      O => \slv_reg2[20]_i_1_n_0\
    );
\slv_reg2[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(21),
      O => \slv_reg2[21]_i_1_n_0\
    );
\slv_reg2[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(22),
      O => \slv_reg2[22]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(23),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(24),
      O => \slv_reg2[24]_i_1_n_0\
    );
\slv_reg2[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(25),
      O => \slv_reg2[25]_i_1_n_0\
    );
\slv_reg2[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(26),
      O => \slv_reg2[26]_i_1_n_0\
    );
\slv_reg2[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(27),
      O => \slv_reg2[27]_i_1_n_0\
    );
\slv_reg2[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(28),
      O => \slv_reg2[28]_i_1_n_0\
    );
\slv_reg2[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(29),
      O => \slv_reg2[29]_i_1_n_0\
    );
\slv_reg2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(2),
      O => \slv_reg2[2]_i_1_n_0\
    );
\slv_reg2[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(30),
      O => \slv_reg2[30]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \^s_axi_awready\,
      I4 => \^s_axi_wready\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(31),
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(3),
      O => \slv_reg2[3]_i_1_n_0\
    );
\slv_reg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(4),
      O => \slv_reg2[4]_i_1_n_0\
    );
\slv_reg2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(5),
      O => \slv_reg2[5]_i_1_n_0\
    );
\slv_reg2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(6),
      O => \slv_reg2[6]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(7),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(8),
      O => \slv_reg2[8]_i_1_n_0\
    );
\slv_reg2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s_axi_wdata(9),
      O => \slv_reg2[9]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[10]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[10]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[11]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[11]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[12]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[12]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[13]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[13]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[14]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[14]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[15]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[15]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[16]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[16]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[17]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[17]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[18]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[18]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[19]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[19]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[1]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[1]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[20]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[20]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[21]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[21]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[22]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[22]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[23]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[23]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[24]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[24]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[25]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[25]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[26]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[26]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[27]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[27]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[28]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[28]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[29]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[29]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[2]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[2]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[30]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[30]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[31]_i_2_n_0\,
      Q => \slv_reg2_reg_n_0_[31]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[3]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[3]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[4]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[4]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[5]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[5]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[6]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[6]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[7]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[7]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[8]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[8]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg2[9]_i_1_n_0\,
      Q => \slv_reg2_reg_n_0_[9]\,
      R => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => debug_data_o(0),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[0]_i_1_n_0\
    );
\slv_reg3[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => debug_data_o(10),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[10]_i_1_n_0\
    );
\slv_reg3[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => debug_data_o(11),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[11]_i_1_n_0\
    );
\slv_reg3[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => debug_data_o(12),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[12]_i_1_n_0\
    );
\slv_reg3[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => debug_data_o(13),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[13]_i_1_n_0\
    );
\slv_reg3[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => debug_data_o(14),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[14]_i_1_n_0\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => debug_data_o(15),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => debug_data_o(16),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[16]_i_1_n_0\
    );
\slv_reg3[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => debug_data_o(17),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[17]_i_1_n_0\
    );
\slv_reg3[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => debug_data_o(18),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[18]_i_1_n_0\
    );
\slv_reg3[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => debug_data_o(19),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[19]_i_1_n_0\
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => debug_data_o(1),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[1]_i_1_n_0\
    );
\slv_reg3[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => debug_data_o(20),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[20]_i_1_n_0\
    );
\slv_reg3[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => debug_data_o(21),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[21]_i_1_n_0\
    );
\slv_reg3[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => debug_data_o(22),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[22]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => debug_data_o(23),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => debug_data_o(24),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[24]_i_1_n_0\
    );
\slv_reg3[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => debug_data_o(25),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[25]_i_1_n_0\
    );
\slv_reg3[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => debug_data_o(26),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[26]_i_1_n_0\
    );
\slv_reg3[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => debug_data_o(27),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[27]_i_1_n_0\
    );
\slv_reg3[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => debug_data_o(28),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[28]_i_1_n_0\
    );
\slv_reg3[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => debug_data_o(29),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[29]_i_1_n_0\
    );
\slv_reg3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => debug_data_o(2),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[2]_i_1_n_0\
    );
\slv_reg3[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => debug_data_o(30),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[30]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => debug_data_o(31),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => debug_data_o(3),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[3]_i_1_n_0\
    );
\slv_reg3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => debug_data_o(4),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[4]_i_1_n_0\
    );
\slv_reg3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => debug_data_o(5),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[5]_i_1_n_0\
    );
\slv_reg3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => debug_data_o(6),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[6]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => debug_data_o(7),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => debug_data_o(8),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[8]_i_1_n_0\
    );
\slv_reg3[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCCCCCCCCCCCC"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => debug_data_o(9),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \slv_reg_wren__0\,
      O => \slv_reg3[9]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[0]_i_1_n_0\,
      Q => slv_reg3(0),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[10]_i_1_n_0\,
      Q => slv_reg3(10),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[11]_i_1_n_0\,
      Q => slv_reg3(11),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[12]_i_1_n_0\,
      Q => slv_reg3(12),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[13]_i_1_n_0\,
      Q => slv_reg3(13),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[14]_i_1_n_0\,
      Q => slv_reg3(14),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[15]_i_1_n_0\,
      Q => slv_reg3(15),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[16]_i_1_n_0\,
      Q => slv_reg3(16),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[17]_i_1_n_0\,
      Q => slv_reg3(17),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[18]_i_1_n_0\,
      Q => slv_reg3(18),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[19]_i_1_n_0\,
      Q => slv_reg3(19),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[1]_i_1_n_0\,
      Q => slv_reg3(1),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[20]_i_1_n_0\,
      Q => slv_reg3(20),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[21]_i_1_n_0\,
      Q => slv_reg3(21),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[22]_i_1_n_0\,
      Q => slv_reg3(22),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[23]_i_1_n_0\,
      Q => slv_reg3(23),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[24]_i_1_n_0\,
      Q => slv_reg3(24),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[25]_i_1_n_0\,
      Q => slv_reg3(25),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[26]_i_1_n_0\,
      Q => slv_reg3(26),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[27]_i_1_n_0\,
      Q => slv_reg3(27),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[28]_i_1_n_0\,
      Q => slv_reg3(28),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[29]_i_1_n_0\,
      Q => slv_reg3(29),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[2]_i_1_n_0\,
      Q => slv_reg3(2),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[30]_i_1_n_0\,
      Q => slv_reg3(30),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[31]_i_1_n_0\,
      Q => slv_reg3(31),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[3]_i_1_n_0\,
      Q => slv_reg3(3),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[4]_i_1_n_0\,
      Q => slv_reg3(4),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[5]_i_1_n_0\,
      Q => slv_reg3(5),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[6]_i_1_n_0\,
      Q => slv_reg3(6),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[7]_i_1_n_0\,
      Q => slv_reg3(7),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[8]_i_1_n_0\,
      Q => slv_reg3(8),
      R => \^s_axi_aresetn_0\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg3[9]_i_1_n_0\,
      Q => slv_reg3(9),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(0),
      Q => \sound_addr_ff_reg[31]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(10),
      Q => \sound_addr_ff_reg[31]_0\(10),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(11),
      Q => \sound_addr_ff_reg[31]_0\(11),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(12),
      Q => \sound_addr_ff_reg[31]_0\(12),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(13),
      Q => \sound_addr_ff_reg[31]_0\(13),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(14),
      Q => \sound_addr_ff_reg[31]_0\(14),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(15),
      Q => \sound_addr_ff_reg[31]_0\(15),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(16),
      Q => \sound_addr_ff_reg[31]_0\(16),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(17),
      Q => \sound_addr_ff_reg[31]_0\(17),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(18),
      Q => \sound_addr_ff_reg[31]_0\(18),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(19),
      Q => \sound_addr_ff_reg[31]_0\(19),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(1),
      Q => \sound_addr_ff_reg[31]_0\(1),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(20),
      Q => \sound_addr_ff_reg[31]_0\(20),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(21),
      Q => \sound_addr_ff_reg[31]_0\(21),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(22),
      Q => \sound_addr_ff_reg[31]_0\(22),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(23),
      Q => \sound_addr_ff_reg[31]_0\(23),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(24),
      Q => \sound_addr_ff_reg[31]_0\(24),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(25),
      Q => \sound_addr_ff_reg[31]_0\(25),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(26),
      Q => \sound_addr_ff_reg[31]_0\(26),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(27),
      Q => \sound_addr_ff_reg[31]_0\(27),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(28),
      Q => \sound_addr_ff_reg[31]_0\(28),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(29),
      Q => \sound_addr_ff_reg[31]_0\(29),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(2),
      Q => \sound_addr_ff_reg[31]_0\(2),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(30),
      Q => \sound_addr_ff_reg[31]_0\(30),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(31),
      Q => \sound_addr_ff_reg[31]_0\(31),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(3),
      Q => \sound_addr_ff_reg[31]_0\(3),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(4),
      Q => \sound_addr_ff_reg[31]_0\(4),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(5),
      Q => \sound_addr_ff_reg[31]_0\(5),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(6),
      Q => \sound_addr_ff_reg[31]_0\(6),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(7),
      Q => \sound_addr_ff_reg[31]_0\(7),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(8),
      Q => \sound_addr_ff_reg[31]_0\(8),
      R => \^s_axi_aresetn_0\
    );
\sound_addr_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => slv_reg0(9),
      Q => \sound_addr_ff_reg[31]_0\(9),
      R => \^s_axi_aresetn_0\
    );
valid_ff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^q\(0),
      I2 => \^s_rv_valid\,
      I3 => sound_addr_ff0,
      O => valid_ff_i_1_n_0
    );
valid_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => valid_ff_i_1_n_0,
      Q => \^s_rv_valid\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_controller is
  port (
    scaled_sample_ff_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sound_addr_ff0 : out STD_LOGIC;
    \sample_index_ff_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \curr_state_ff_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \curr_state_ff_reg[3]_1\ : out STD_LOGIC;
    \curr_state_ff_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug_data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    req_rv_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    minusOp_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    scaled_sample_ff_reg_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_rv_valid : in STD_LOGIC;
    \curr_state_ff_reg[1]_0\ : in STD_LOGIC;
    \curr_state_ff_reg[1]_1\ : in STD_LOGIC;
    \curr_state_ff_reg[0]_1\ : in STD_LOGIC;
    curr_state_ff : in STD_LOGIC_VECTOR ( 1 downto 0 );
    curr_state_ff_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sound_addr_ff_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_controller is
  signal CEM : STD_LOGIC;
  signal CEP : STD_LOGIC;
  signal \axi_araddr_ff[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[11]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[19]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[27]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[31]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_ff_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal byte_index_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal byte_index_ff0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \byte_index_ff0_carry__0_n_0\ : STD_LOGIC;
  signal \byte_index_ff0_carry__0_n_1\ : STD_LOGIC;
  signal \byte_index_ff0_carry__0_n_2\ : STD_LOGIC;
  signal \byte_index_ff0_carry__0_n_3\ : STD_LOGIC;
  signal \byte_index_ff0_carry__1_n_0\ : STD_LOGIC;
  signal \byte_index_ff0_carry__1_n_1\ : STD_LOGIC;
  signal \byte_index_ff0_carry__1_n_2\ : STD_LOGIC;
  signal \byte_index_ff0_carry__1_n_3\ : STD_LOGIC;
  signal \byte_index_ff0_carry__2_n_0\ : STD_LOGIC;
  signal \byte_index_ff0_carry__2_n_1\ : STD_LOGIC;
  signal \byte_index_ff0_carry__2_n_2\ : STD_LOGIC;
  signal \byte_index_ff0_carry__2_n_3\ : STD_LOGIC;
  signal \byte_index_ff0_carry__3_n_0\ : STD_LOGIC;
  signal \byte_index_ff0_carry__3_n_1\ : STD_LOGIC;
  signal \byte_index_ff0_carry__3_n_2\ : STD_LOGIC;
  signal \byte_index_ff0_carry__3_n_3\ : STD_LOGIC;
  signal \byte_index_ff0_carry__4_n_0\ : STD_LOGIC;
  signal \byte_index_ff0_carry__4_n_1\ : STD_LOGIC;
  signal \byte_index_ff0_carry__4_n_2\ : STD_LOGIC;
  signal \byte_index_ff0_carry__4_n_3\ : STD_LOGIC;
  signal \byte_index_ff0_carry__5_n_0\ : STD_LOGIC;
  signal \byte_index_ff0_carry__5_n_1\ : STD_LOGIC;
  signal \byte_index_ff0_carry__5_n_2\ : STD_LOGIC;
  signal \byte_index_ff0_carry__5_n_3\ : STD_LOGIC;
  signal \byte_index_ff0_carry__6_n_1\ : STD_LOGIC;
  signal \byte_index_ff0_carry__6_n_2\ : STD_LOGIC;
  signal \byte_index_ff0_carry__6_n_3\ : STD_LOGIC;
  signal byte_index_ff0_carry_i_1_n_0 : STD_LOGIC;
  signal byte_index_ff0_carry_n_0 : STD_LOGIC;
  signal byte_index_ff0_carry_n_1 : STD_LOGIC;
  signal byte_index_ff0_carry_n_2 : STD_LOGIC;
  signal byte_index_ff0_carry_n_3 : STD_LOGIC;
  signal \byte_index_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[10]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[11]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[12]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[13]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[14]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[15]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[16]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[17]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[18]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[19]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[20]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[21]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[22]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[23]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[24]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[25]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[26]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[27]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[28]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[29]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[5]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[6]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[7]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[8]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index_ff[9]_i_1_n_0\ : STD_LOGIC;
  signal byte_index_ff_0 : STD_LOGIC;
  signal \curr_state_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \curr_state_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \curr_state_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \curr_state_ff[3]_i_2_n_0\ : STD_LOGIC;
  signal \curr_state_ff[3]_i_3_n_0\ : STD_LOGIC;
  signal \curr_state_ff[3]_i_5_n_0\ : STD_LOGIC;
  signal curr_state_ff_1 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^curr_state_ff_reg[0]_0\ : STD_LOGIC;
  signal \^curr_state_ff_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^curr_state_ff_reg[3]_1\ : STD_LOGIC;
  signal \debug_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal last_sample : STD_LOGIC;
  signal minusOp_n_100 : STD_LOGIC;
  signal minusOp_n_101 : STD_LOGIC;
  signal minusOp_n_102 : STD_LOGIC;
  signal minusOp_n_103 : STD_LOGIC;
  signal minusOp_n_104 : STD_LOGIC;
  signal minusOp_n_105 : STD_LOGIC;
  signal minusOp_n_92 : STD_LOGIC;
  signal minusOp_n_93 : STD_LOGIC;
  signal minusOp_n_94 : STD_LOGIC;
  signal minusOp_n_95 : STD_LOGIC;
  signal minusOp_n_96 : STD_LOGIC;
  signal minusOp_n_97 : STD_LOGIC;
  signal minusOp_n_98 : STD_LOGIC;
  signal minusOp_n_99 : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal \next_state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal next_state1_carry_i_1_n_0 : STD_LOGIC;
  signal next_state1_carry_i_2_n_0 : STD_LOGIC;
  signal next_state1_carry_i_3_n_0 : STD_LOGIC;
  signal next_state1_carry_i_4_n_0 : STD_LOGIC;
  signal next_state1_carry_n_0 : STD_LOGIC;
  signal next_state1_carry_n_1 : STD_LOGIC;
  signal next_state1_carry_n_2 : STD_LOGIC;
  signal next_state1_carry_n_3 : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \next_state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal next_state2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \next_state2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_state2_carry__0_n_0\ : STD_LOGIC;
  signal \next_state2_carry__0_n_1\ : STD_LOGIC;
  signal \next_state2_carry__0_n_2\ : STD_LOGIC;
  signal \next_state2_carry__0_n_3\ : STD_LOGIC;
  signal \next_state2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \next_state2_carry__1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__1_n_1\ : STD_LOGIC;
  signal \next_state2_carry__1_n_2\ : STD_LOGIC;
  signal \next_state2_carry__1_n_3\ : STD_LOGIC;
  signal \next_state2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \next_state2_carry__2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__2_n_1\ : STD_LOGIC;
  signal \next_state2_carry__2_n_2\ : STD_LOGIC;
  signal \next_state2_carry__2_n_3\ : STD_LOGIC;
  signal \next_state2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \next_state2_carry__3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__3_n_1\ : STD_LOGIC;
  signal \next_state2_carry__3_n_2\ : STD_LOGIC;
  signal \next_state2_carry__3_n_3\ : STD_LOGIC;
  signal \next_state2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \next_state2_carry__4_n_0\ : STD_LOGIC;
  signal \next_state2_carry__4_n_1\ : STD_LOGIC;
  signal \next_state2_carry__4_n_2\ : STD_LOGIC;
  signal \next_state2_carry__4_n_3\ : STD_LOGIC;
  signal \next_state2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \next_state2_carry__5_n_0\ : STD_LOGIC;
  signal \next_state2_carry__5_n_1\ : STD_LOGIC;
  signal \next_state2_carry__5_n_2\ : STD_LOGIC;
  signal \next_state2_carry__5_n_3\ : STD_LOGIC;
  signal \next_state2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \next_state2_carry__6_n_2\ : STD_LOGIC;
  signal \next_state2_carry__6_n_3\ : STD_LOGIC;
  signal next_state2_carry_i_1_n_0 : STD_LOGIC;
  signal next_state2_carry_i_2_n_0 : STD_LOGIC;
  signal next_state2_carry_i_3_n_0 : STD_LOGIC;
  signal next_state2_carry_i_4_n_0 : STD_LOGIC;
  signal next_state2_carry_n_0 : STD_LOGIC;
  signal next_state2_carry_n_1 : STD_LOGIC;
  signal next_state2_carry_n_2 : STD_LOGIC;
  signal next_state2_carry_n_3 : STD_LOGIC;
  signal num_samples_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal num_samples_ff0 : STD_LOGIC;
  signal prev_state_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal req_addr_offset_ff0 : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \req_addr_offset_ff0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \req_addr_offset_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff[2]_i_2_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff[2]_i_3_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[0]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[10]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[11]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[12]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[13]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[14]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[15]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[16]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[17]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[18]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[19]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[1]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[20]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[21]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[22]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[23]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[24]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[25]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[26]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[27]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[28]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[29]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[2]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[30]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[31]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[3]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[4]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[5]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[6]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[7]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[8]\ : STD_LOGIC;
  signal \req_addr_offset_ff_reg_n_0_[9]\ : STD_LOGIC;
  signal sample_ff : STD_LOGIC;
  signal sample_index_ff0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \sample_index_ff0_carry__0_n_0\ : STD_LOGIC;
  signal \sample_index_ff0_carry__0_n_1\ : STD_LOGIC;
  signal \sample_index_ff0_carry__0_n_2\ : STD_LOGIC;
  signal \sample_index_ff0_carry__0_n_3\ : STD_LOGIC;
  signal \sample_index_ff0_carry__1_n_0\ : STD_LOGIC;
  signal \sample_index_ff0_carry__1_n_1\ : STD_LOGIC;
  signal \sample_index_ff0_carry__1_n_2\ : STD_LOGIC;
  signal \sample_index_ff0_carry__1_n_3\ : STD_LOGIC;
  signal \sample_index_ff0_carry__2_n_0\ : STD_LOGIC;
  signal \sample_index_ff0_carry__2_n_1\ : STD_LOGIC;
  signal \sample_index_ff0_carry__2_n_2\ : STD_LOGIC;
  signal \sample_index_ff0_carry__2_n_3\ : STD_LOGIC;
  signal \sample_index_ff0_carry__3_n_0\ : STD_LOGIC;
  signal \sample_index_ff0_carry__3_n_1\ : STD_LOGIC;
  signal \sample_index_ff0_carry__3_n_2\ : STD_LOGIC;
  signal \sample_index_ff0_carry__3_n_3\ : STD_LOGIC;
  signal \sample_index_ff0_carry__4_n_0\ : STD_LOGIC;
  signal \sample_index_ff0_carry__4_n_1\ : STD_LOGIC;
  signal \sample_index_ff0_carry__4_n_2\ : STD_LOGIC;
  signal \sample_index_ff0_carry__4_n_3\ : STD_LOGIC;
  signal \sample_index_ff0_carry__5_n_0\ : STD_LOGIC;
  signal \sample_index_ff0_carry__5_n_1\ : STD_LOGIC;
  signal \sample_index_ff0_carry__5_n_2\ : STD_LOGIC;
  signal \sample_index_ff0_carry__5_n_3\ : STD_LOGIC;
  signal \sample_index_ff0_carry__6_n_2\ : STD_LOGIC;
  signal \sample_index_ff0_carry__6_n_3\ : STD_LOGIC;
  signal sample_index_ff0_carry_n_0 : STD_LOGIC;
  signal sample_index_ff0_carry_n_1 : STD_LOGIC;
  signal sample_index_ff0_carry_n_2 : STD_LOGIC;
  signal sample_index_ff0_carry_n_3 : STD_LOGIC;
  signal \sample_index_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[10]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[11]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[12]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[13]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[14]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[15]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[16]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[17]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[18]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[19]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[20]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[21]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[22]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[23]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[24]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[25]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[26]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[27]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[28]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[29]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[30]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[31]_i_2_n_0\ : STD_LOGIC;
  signal \sample_index_ff[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_index_ff[9]_i_1_n_0\ : STD_LOGIC;
  signal \^sample_index_ff_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sample_index_ff_reg_n_0_[10]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[11]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[12]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[13]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[14]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[15]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[16]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[17]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[18]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[19]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[20]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[21]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[22]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[23]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[24]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[25]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[26]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[27]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[28]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[29]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[30]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[31]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[3]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[4]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[5]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[6]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[7]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[8]\ : STD_LOGIC;
  signal \sample_index_ff_reg_n_0_[9]\ : STD_LOGIC;
  signal sample_period_us_ff0 : STD_LOGIC;
  signal sleep_counter_done : STD_LOGIC;
  signal \sleep_counter_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff[0]_i_3_n_0\ : STD_LOGIC;
  signal sleep_counter_ff_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sleep_counter_ff_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sleep_counter_ff_reg[12]_i_1_n_3\ : STD_LOGIC;
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
  signal sound_addr_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sound_addr_ff0\ : STD_LOGIC;
  signal \NLW_axi_araddr_ff_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_byte_index_ff0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_minusOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_minusOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_minusOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_minusOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_minusOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_minusOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_minusOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_minusOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_minusOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_minusOp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 14 );
  signal NLW_minusOp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_next_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_next_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_state1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_state2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_req_addr_offset_ff0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_req_addr_offset_ff0_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sample_index_ff0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sample_index_ff0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_scaled_sample_ff_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_scaled_sample_ff_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_scaled_sample_ff_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_scaled_sample_ff_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_scaled_sample_ff_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_scaled_sample_ff_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_scaled_sample_ff_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_scaled_sample_ff_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_scaled_sample_ff_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_scaled_sample_ff_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_scaled_sample_ff_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_ff_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of byte_index_ff0_carry : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_ff0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_ff0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_ff0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_ff0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_ff0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_ff0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_index_ff0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \byte_index_ff[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \byte_index_ff[10]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \byte_index_ff[11]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \byte_index_ff[12]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \byte_index_ff[13]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \byte_index_ff[14]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \byte_index_ff[15]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \byte_index_ff[16]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \byte_index_ff[17]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \byte_index_ff[18]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \byte_index_ff[19]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \byte_index_ff[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \byte_index_ff[20]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \byte_index_ff[21]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \byte_index_ff[22]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \byte_index_ff[23]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \byte_index_ff[24]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \byte_index_ff[25]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \byte_index_ff[26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \byte_index_ff[27]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \byte_index_ff[28]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \byte_index_ff[29]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \byte_index_ff[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \byte_index_ff[30]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \byte_index_ff[31]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \byte_index_ff[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \byte_index_ff[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \byte_index_ff[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \byte_index_ff[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \byte_index_ff[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \byte_index_ff[8]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \byte_index_ff[9]_i_1\ : label is "soft_lutpair51";
  attribute ADDER_THRESHOLD of next_state2_carry : label is 35;
  attribute ADDER_THRESHOLD of \next_state2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_state2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_state2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \next_state2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \next_state2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \next_state2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \next_state2_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \req_addr_offset_ff0_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \req_addr_offset_ff[2]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \req_addr_offset_ff[2]_i_3\ : label is "soft_lutpair56";
  attribute ADDER_THRESHOLD of sample_index_ff0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_ff0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_ff0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_ff0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_ff0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_ff0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_ff0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_index_ff0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sample_index_ff[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sample_index_ff[10]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sample_index_ff[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sample_index_ff[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sample_index_ff[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sample_index_ff[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sample_index_ff[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sample_index_ff[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sample_index_ff[17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sample_index_ff[18]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sample_index_ff[19]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sample_index_ff[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sample_index_ff[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sample_index_ff[21]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sample_index_ff[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sample_index_ff[23]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sample_index_ff[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sample_index_ff[25]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sample_index_ff[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sample_index_ff[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sample_index_ff[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sample_index_ff[29]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sample_index_ff[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sample_index_ff[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sample_index_ff[31]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sample_index_ff[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sample_index_ff[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sample_index_ff[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sample_index_ff[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sample_index_ff[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sample_index_ff[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sample_index_ff[9]_i_1\ : label is "soft_lutpair35";
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sleep_counter_ff_reg[8]_i_1\ : label is 11;
begin
  \curr_state_ff_reg[0]_0\ <= \^curr_state_ff_reg[0]_0\;
  \curr_state_ff_reg[3]_0\(1 downto 0) <= \^curr_state_ff_reg[3]_0\(1 downto 0);
  \curr_state_ff_reg[3]_1\ <= \^curr_state_ff_reg[3]_1\;
  \sample_index_ff_reg[0]_0\(0) <= \^sample_index_ff_reg[0]_0\(0);
  sound_addr_ff0 <= \^sound_addr_ff0\;
\axi_araddr_ff[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(11),
      I1 => \req_addr_offset_ff_reg_n_0_[11]\,
      O => \axi_araddr_ff[11]_i_2_n_0\
    );
\axi_araddr_ff[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(10),
      I1 => \req_addr_offset_ff_reg_n_0_[10]\,
      O => \axi_araddr_ff[11]_i_3_n_0\
    );
\axi_araddr_ff[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(9),
      I1 => \req_addr_offset_ff_reg_n_0_[9]\,
      O => \axi_araddr_ff[11]_i_4_n_0\
    );
\axi_araddr_ff[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(8),
      I1 => \req_addr_offset_ff_reg_n_0_[8]\,
      O => \axi_araddr_ff[11]_i_5_n_0\
    );
\axi_araddr_ff[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(15),
      I1 => \req_addr_offset_ff_reg_n_0_[15]\,
      O => \axi_araddr_ff[15]_i_2_n_0\
    );
\axi_araddr_ff[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(14),
      I1 => \req_addr_offset_ff_reg_n_0_[14]\,
      O => \axi_araddr_ff[15]_i_3_n_0\
    );
\axi_araddr_ff[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(13),
      I1 => \req_addr_offset_ff_reg_n_0_[13]\,
      O => \axi_araddr_ff[15]_i_4_n_0\
    );
\axi_araddr_ff[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(12),
      I1 => \req_addr_offset_ff_reg_n_0_[12]\,
      O => \axi_araddr_ff[15]_i_5_n_0\
    );
\axi_araddr_ff[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(19),
      I1 => \req_addr_offset_ff_reg_n_0_[19]\,
      O => \axi_araddr_ff[19]_i_2_n_0\
    );
\axi_araddr_ff[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(18),
      I1 => \req_addr_offset_ff_reg_n_0_[18]\,
      O => \axi_araddr_ff[19]_i_3_n_0\
    );
\axi_araddr_ff[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(17),
      I1 => \req_addr_offset_ff_reg_n_0_[17]\,
      O => \axi_araddr_ff[19]_i_4_n_0\
    );
\axi_araddr_ff[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(16),
      I1 => \req_addr_offset_ff_reg_n_0_[16]\,
      O => \axi_araddr_ff[19]_i_5_n_0\
    );
\axi_araddr_ff[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(23),
      I1 => \req_addr_offset_ff_reg_n_0_[23]\,
      O => \axi_araddr_ff[23]_i_2_n_0\
    );
\axi_araddr_ff[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(22),
      I1 => \req_addr_offset_ff_reg_n_0_[22]\,
      O => \axi_araddr_ff[23]_i_3_n_0\
    );
\axi_araddr_ff[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(21),
      I1 => \req_addr_offset_ff_reg_n_0_[21]\,
      O => \axi_araddr_ff[23]_i_4_n_0\
    );
\axi_araddr_ff[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(20),
      I1 => \req_addr_offset_ff_reg_n_0_[20]\,
      O => \axi_araddr_ff[23]_i_5_n_0\
    );
\axi_araddr_ff[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(27),
      I1 => \req_addr_offset_ff_reg_n_0_[27]\,
      O => \axi_araddr_ff[27]_i_2_n_0\
    );
\axi_araddr_ff[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(26),
      I1 => \req_addr_offset_ff_reg_n_0_[26]\,
      O => \axi_araddr_ff[27]_i_3_n_0\
    );
\axi_araddr_ff[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(25),
      I1 => \req_addr_offset_ff_reg_n_0_[25]\,
      O => \axi_araddr_ff[27]_i_4_n_0\
    );
\axi_araddr_ff[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(24),
      I1 => \req_addr_offset_ff_reg_n_0_[24]\,
      O => \axi_araddr_ff[27]_i_5_n_0\
    );
\axi_araddr_ff[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020002"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_0\(1),
      I2 => curr_state_ff(0),
      I3 => curr_state_ff(1),
      I4 => curr_state_ff_1(2),
      I5 => curr_state_ff_1(1),
      O => E(0)
    );
\axi_araddr_ff[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(31),
      I1 => \req_addr_offset_ff_reg_n_0_[31]\,
      O => \axi_araddr_ff[31]_i_4_n_0\
    );
\axi_araddr_ff[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(30),
      I1 => \req_addr_offset_ff_reg_n_0_[30]\,
      O => \axi_araddr_ff[31]_i_5_n_0\
    );
\axi_araddr_ff[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(29),
      I1 => \req_addr_offset_ff_reg_n_0_[29]\,
      O => \axi_araddr_ff[31]_i_6_n_0\
    );
\axi_araddr_ff[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(28),
      I1 => \req_addr_offset_ff_reg_n_0_[28]\,
      O => \axi_araddr_ff[31]_i_7_n_0\
    );
\axi_araddr_ff[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(3),
      I1 => \req_addr_offset_ff_reg_n_0_[3]\,
      O => \axi_araddr_ff[3]_i_2_n_0\
    );
\axi_araddr_ff[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(2),
      I1 => \req_addr_offset_ff_reg_n_0_[2]\,
      O => \axi_araddr_ff[3]_i_3_n_0\
    );
\axi_araddr_ff[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(1),
      I1 => \req_addr_offset_ff_reg_n_0_[1]\,
      O => \axi_araddr_ff[3]_i_4_n_0\
    );
\axi_araddr_ff[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(0),
      I1 => \req_addr_offset_ff_reg_n_0_[0]\,
      O => \axi_araddr_ff[3]_i_5_n_0\
    );
\axi_araddr_ff[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(7),
      I1 => \req_addr_offset_ff_reg_n_0_[7]\,
      O => \axi_araddr_ff[7]_i_2_n_0\
    );
\axi_araddr_ff[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(6),
      I1 => \req_addr_offset_ff_reg_n_0_[6]\,
      O => \axi_araddr_ff[7]_i_3_n_0\
    );
\axi_araddr_ff[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(5),
      I1 => \req_addr_offset_ff_reg_n_0_[5]\,
      O => \axi_araddr_ff[7]_i_4_n_0\
    );
\axi_araddr_ff[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sound_addr_ff(4),
      I1 => \req_addr_offset_ff_reg_n_0_[4]\,
      O => \axi_araddr_ff[7]_i_5_n_0\
    );
\axi_araddr_ff_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_ff_reg[7]_i_1_n_0\,
      CO(3) => \axi_araddr_ff_reg[11]_i_1_n_0\,
      CO(2) => \axi_araddr_ff_reg[11]_i_1_n_1\,
      CO(1) => \axi_araddr_ff_reg[11]_i_1_n_2\,
      CO(0) => \axi_araddr_ff_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sound_addr_ff(11 downto 8),
      O(3 downto 0) => req_rv_addr(11 downto 8),
      S(3) => \axi_araddr_ff[11]_i_2_n_0\,
      S(2) => \axi_araddr_ff[11]_i_3_n_0\,
      S(1) => \axi_araddr_ff[11]_i_4_n_0\,
      S(0) => \axi_araddr_ff[11]_i_5_n_0\
    );
\axi_araddr_ff_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_ff_reg[11]_i_1_n_0\,
      CO(3) => \axi_araddr_ff_reg[15]_i_1_n_0\,
      CO(2) => \axi_araddr_ff_reg[15]_i_1_n_1\,
      CO(1) => \axi_araddr_ff_reg[15]_i_1_n_2\,
      CO(0) => \axi_araddr_ff_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sound_addr_ff(15 downto 12),
      O(3 downto 0) => req_rv_addr(15 downto 12),
      S(3) => \axi_araddr_ff[15]_i_2_n_0\,
      S(2) => \axi_araddr_ff[15]_i_3_n_0\,
      S(1) => \axi_araddr_ff[15]_i_4_n_0\,
      S(0) => \axi_araddr_ff[15]_i_5_n_0\
    );
\axi_araddr_ff_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_ff_reg[15]_i_1_n_0\,
      CO(3) => \axi_araddr_ff_reg[19]_i_1_n_0\,
      CO(2) => \axi_araddr_ff_reg[19]_i_1_n_1\,
      CO(1) => \axi_araddr_ff_reg[19]_i_1_n_2\,
      CO(0) => \axi_araddr_ff_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sound_addr_ff(19 downto 16),
      O(3 downto 0) => req_rv_addr(19 downto 16),
      S(3) => \axi_araddr_ff[19]_i_2_n_0\,
      S(2) => \axi_araddr_ff[19]_i_3_n_0\,
      S(1) => \axi_araddr_ff[19]_i_4_n_0\,
      S(0) => \axi_araddr_ff[19]_i_5_n_0\
    );
\axi_araddr_ff_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_ff_reg[19]_i_1_n_0\,
      CO(3) => \axi_araddr_ff_reg[23]_i_1_n_0\,
      CO(2) => \axi_araddr_ff_reg[23]_i_1_n_1\,
      CO(1) => \axi_araddr_ff_reg[23]_i_1_n_2\,
      CO(0) => \axi_araddr_ff_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sound_addr_ff(23 downto 20),
      O(3 downto 0) => req_rv_addr(23 downto 20),
      S(3) => \axi_araddr_ff[23]_i_2_n_0\,
      S(2) => \axi_araddr_ff[23]_i_3_n_0\,
      S(1) => \axi_araddr_ff[23]_i_4_n_0\,
      S(0) => \axi_araddr_ff[23]_i_5_n_0\
    );
\axi_araddr_ff_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_ff_reg[23]_i_1_n_0\,
      CO(3) => \axi_araddr_ff_reg[27]_i_1_n_0\,
      CO(2) => \axi_araddr_ff_reg[27]_i_1_n_1\,
      CO(1) => \axi_araddr_ff_reg[27]_i_1_n_2\,
      CO(0) => \axi_araddr_ff_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sound_addr_ff(27 downto 24),
      O(3 downto 0) => req_rv_addr(27 downto 24),
      S(3) => \axi_araddr_ff[27]_i_2_n_0\,
      S(2) => \axi_araddr_ff[27]_i_3_n_0\,
      S(1) => \axi_araddr_ff[27]_i_4_n_0\,
      S(0) => \axi_araddr_ff[27]_i_5_n_0\
    );
\axi_araddr_ff_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_ff_reg[27]_i_1_n_0\,
      CO(3) => \NLW_axi_araddr_ff_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \axi_araddr_ff_reg[31]_i_3_n_1\,
      CO(1) => \axi_araddr_ff_reg[31]_i_3_n_2\,
      CO(0) => \axi_araddr_ff_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sound_addr_ff(30 downto 28),
      O(3 downto 0) => req_rv_addr(31 downto 28),
      S(3) => \axi_araddr_ff[31]_i_4_n_0\,
      S(2) => \axi_araddr_ff[31]_i_5_n_0\,
      S(1) => \axi_araddr_ff[31]_i_6_n_0\,
      S(0) => \axi_araddr_ff[31]_i_7_n_0\
    );
\axi_araddr_ff_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_araddr_ff_reg[3]_i_1_n_0\,
      CO(2) => \axi_araddr_ff_reg[3]_i_1_n_1\,
      CO(1) => \axi_araddr_ff_reg[3]_i_1_n_2\,
      CO(0) => \axi_araddr_ff_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sound_addr_ff(3 downto 0),
      O(3 downto 0) => req_rv_addr(3 downto 0),
      S(3) => \axi_araddr_ff[3]_i_2_n_0\,
      S(2) => \axi_araddr_ff[3]_i_3_n_0\,
      S(1) => \axi_araddr_ff[3]_i_4_n_0\,
      S(0) => \axi_araddr_ff[3]_i_5_n_0\
    );
\axi_araddr_ff_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_ff_reg[3]_i_1_n_0\,
      CO(3) => \axi_araddr_ff_reg[7]_i_1_n_0\,
      CO(2) => \axi_araddr_ff_reg[7]_i_1_n_1\,
      CO(1) => \axi_araddr_ff_reg[7]_i_1_n_2\,
      CO(0) => \axi_araddr_ff_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sound_addr_ff(7 downto 4),
      O(3 downto 0) => req_rv_addr(7 downto 4),
      S(3) => \axi_araddr_ff[7]_i_2_n_0\,
      S(2) => \axi_araddr_ff[7]_i_3_n_0\,
      S(1) => \axi_araddr_ff[7]_i_4_n_0\,
      S(0) => \axi_araddr_ff[7]_i_5_n_0\
    );
\axi_awaddr_ff[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(1),
      I1 => curr_state_ff_0(0),
      I2 => curr_state_ff_0(1),
      I3 => curr_state_ff_1(2),
      I4 => curr_state_ff_1(1),
      O => \^curr_state_ff_reg[3]_1\
    );
byte_index_ff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => byte_index_ff0_carry_n_0,
      CO(2) => byte_index_ff0_carry_n_1,
      CO(1) => byte_index_ff0_carry_n_2,
      CO(0) => byte_index_ff0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => byte_index_ff(1),
      DI(0) => '0',
      O(3 downto 0) => byte_index_ff0(3 downto 0),
      S(3 downto 2) => byte_index_ff(3 downto 2),
      S(1) => byte_index_ff0_carry_i_1_n_0,
      S(0) => byte_index_ff(0)
    );
\byte_index_ff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => byte_index_ff0_carry_n_0,
      CO(3) => \byte_index_ff0_carry__0_n_0\,
      CO(2) => \byte_index_ff0_carry__0_n_1\,
      CO(1) => \byte_index_ff0_carry__0_n_2\,
      CO(0) => \byte_index_ff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_ff0(7 downto 4),
      S(3 downto 0) => byte_index_ff(7 downto 4)
    );
\byte_index_ff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_ff0_carry__0_n_0\,
      CO(3) => \byte_index_ff0_carry__1_n_0\,
      CO(2) => \byte_index_ff0_carry__1_n_1\,
      CO(1) => \byte_index_ff0_carry__1_n_2\,
      CO(0) => \byte_index_ff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_ff0(11 downto 8),
      S(3 downto 0) => byte_index_ff(11 downto 8)
    );
\byte_index_ff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_ff0_carry__1_n_0\,
      CO(3) => \byte_index_ff0_carry__2_n_0\,
      CO(2) => \byte_index_ff0_carry__2_n_1\,
      CO(1) => \byte_index_ff0_carry__2_n_2\,
      CO(0) => \byte_index_ff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_ff0(15 downto 12),
      S(3 downto 0) => byte_index_ff(15 downto 12)
    );
\byte_index_ff0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_ff0_carry__2_n_0\,
      CO(3) => \byte_index_ff0_carry__3_n_0\,
      CO(2) => \byte_index_ff0_carry__3_n_1\,
      CO(1) => \byte_index_ff0_carry__3_n_2\,
      CO(0) => \byte_index_ff0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_ff0(19 downto 16),
      S(3 downto 0) => byte_index_ff(19 downto 16)
    );
\byte_index_ff0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_ff0_carry__3_n_0\,
      CO(3) => \byte_index_ff0_carry__4_n_0\,
      CO(2) => \byte_index_ff0_carry__4_n_1\,
      CO(1) => \byte_index_ff0_carry__4_n_2\,
      CO(0) => \byte_index_ff0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_ff0(23 downto 20),
      S(3 downto 0) => byte_index_ff(23 downto 20)
    );
\byte_index_ff0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_ff0_carry__4_n_0\,
      CO(3) => \byte_index_ff0_carry__5_n_0\,
      CO(2) => \byte_index_ff0_carry__5_n_1\,
      CO(1) => \byte_index_ff0_carry__5_n_2\,
      CO(0) => \byte_index_ff0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_ff0(27 downto 24),
      S(3 downto 0) => byte_index_ff(27 downto 24)
    );
\byte_index_ff0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_index_ff0_carry__5_n_0\,
      CO(3) => \NLW_byte_index_ff0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \byte_index_ff0_carry__6_n_1\,
      CO(1) => \byte_index_ff0_carry__6_n_2\,
      CO(0) => \byte_index_ff0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => byte_index_ff0(31 downto 28),
      S(3 downto 0) => byte_index_ff(31 downto 28)
    );
byte_index_ff0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_index_ff(1),
      O => byte_index_ff0_carry_i_1_n_0
    );
\byte_index_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(0),
      O => \byte_index_ff[0]_i_1_n_0\
    );
\byte_index_ff[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(10),
      O => \byte_index_ff[10]_i_1_n_0\
    );
\byte_index_ff[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(11),
      O => \byte_index_ff[11]_i_1_n_0\
    );
\byte_index_ff[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(12),
      O => \byte_index_ff[12]_i_1_n_0\
    );
\byte_index_ff[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(13),
      O => \byte_index_ff[13]_i_1_n_0\
    );
\byte_index_ff[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(14),
      O => \byte_index_ff[14]_i_1_n_0\
    );
\byte_index_ff[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(15),
      O => \byte_index_ff[15]_i_1_n_0\
    );
\byte_index_ff[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(16),
      O => \byte_index_ff[16]_i_1_n_0\
    );
\byte_index_ff[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(17),
      O => \byte_index_ff[17]_i_1_n_0\
    );
\byte_index_ff[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(18),
      O => \byte_index_ff[18]_i_1_n_0\
    );
\byte_index_ff[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(19),
      O => \byte_index_ff[19]_i_1_n_0\
    );
\byte_index_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(1),
      O => \byte_index_ff[1]_i_1_n_0\
    );
\byte_index_ff[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(20),
      O => \byte_index_ff[20]_i_1_n_0\
    );
\byte_index_ff[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(21),
      O => \byte_index_ff[21]_i_1_n_0\
    );
\byte_index_ff[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(22),
      O => \byte_index_ff[22]_i_1_n_0\
    );
\byte_index_ff[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(23),
      O => \byte_index_ff[23]_i_1_n_0\
    );
\byte_index_ff[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(24),
      O => \byte_index_ff[24]_i_1_n_0\
    );
\byte_index_ff[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(25),
      O => \byte_index_ff[25]_i_1_n_0\
    );
\byte_index_ff[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(26),
      O => \byte_index_ff[26]_i_1_n_0\
    );
\byte_index_ff[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(27),
      O => \byte_index_ff[27]_i_1_n_0\
    );
\byte_index_ff[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(28),
      O => \byte_index_ff[28]_i_1_n_0\
    );
\byte_index_ff[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(29),
      O => \byte_index_ff[29]_i_1_n_0\
    );
\byte_index_ff[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(2),
      O => \byte_index_ff[2]_i_1_n_0\
    );
\byte_index_ff[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(30),
      O => \byte_index_ff[30]_i_1_n_0\
    );
\byte_index_ff[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(31),
      O => \byte_index_ff[31]_i_1_n_0\
    );
\byte_index_ff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(3),
      O => \byte_index_ff[3]_i_1_n_0\
    );
\byte_index_ff[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(4),
      O => \byte_index_ff[4]_i_1_n_0\
    );
\byte_index_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(5),
      O => \byte_index_ff[5]_i_1_n_0\
    );
\byte_index_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(6),
      O => \byte_index_ff[6]_i_1_n_0\
    );
\byte_index_ff[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(7),
      O => \byte_index_ff[7]_i_1_n_0\
    );
\byte_index_ff[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(8),
      O => \byte_index_ff[8]_i_1_n_0\
    );
\byte_index_ff[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => byte_index_ff0(9),
      O => \byte_index_ff[9]_i_1_n_0\
    );
\byte_index_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[0]_i_1_n_0\,
      Q => byte_index_ff(0),
      R => minusOp_0
    );
\byte_index_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[10]_i_1_n_0\,
      Q => byte_index_ff(10),
      R => minusOp_0
    );
\byte_index_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[11]_i_1_n_0\,
      Q => byte_index_ff(11),
      R => minusOp_0
    );
\byte_index_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[12]_i_1_n_0\,
      Q => byte_index_ff(12),
      R => minusOp_0
    );
\byte_index_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[13]_i_1_n_0\,
      Q => byte_index_ff(13),
      R => minusOp_0
    );
\byte_index_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[14]_i_1_n_0\,
      Q => byte_index_ff(14),
      R => minusOp_0
    );
\byte_index_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[15]_i_1_n_0\,
      Q => byte_index_ff(15),
      R => minusOp_0
    );
\byte_index_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[16]_i_1_n_0\,
      Q => byte_index_ff(16),
      R => minusOp_0
    );
\byte_index_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[17]_i_1_n_0\,
      Q => byte_index_ff(17),
      R => minusOp_0
    );
\byte_index_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[18]_i_1_n_0\,
      Q => byte_index_ff(18),
      R => minusOp_0
    );
\byte_index_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[19]_i_1_n_0\,
      Q => byte_index_ff(19),
      R => minusOp_0
    );
\byte_index_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[1]_i_1_n_0\,
      Q => byte_index_ff(1),
      R => minusOp_0
    );
\byte_index_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[20]_i_1_n_0\,
      Q => byte_index_ff(20),
      R => minusOp_0
    );
\byte_index_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[21]_i_1_n_0\,
      Q => byte_index_ff(21),
      R => minusOp_0
    );
\byte_index_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[22]_i_1_n_0\,
      Q => byte_index_ff(22),
      R => minusOp_0
    );
\byte_index_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[23]_i_1_n_0\,
      Q => byte_index_ff(23),
      R => minusOp_0
    );
\byte_index_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[24]_i_1_n_0\,
      Q => byte_index_ff(24),
      R => minusOp_0
    );
\byte_index_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[25]_i_1_n_0\,
      Q => byte_index_ff(25),
      R => minusOp_0
    );
\byte_index_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[26]_i_1_n_0\,
      Q => byte_index_ff(26),
      R => minusOp_0
    );
\byte_index_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[27]_i_1_n_0\,
      Q => byte_index_ff(27),
      R => minusOp_0
    );
\byte_index_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[28]_i_1_n_0\,
      Q => byte_index_ff(28),
      R => minusOp_0
    );
\byte_index_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[29]_i_1_n_0\,
      Q => byte_index_ff(29),
      R => minusOp_0
    );
\byte_index_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[2]_i_1_n_0\,
      Q => byte_index_ff(2),
      R => minusOp_0
    );
\byte_index_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[30]_i_1_n_0\,
      Q => byte_index_ff(30),
      R => minusOp_0
    );
\byte_index_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[31]_i_1_n_0\,
      Q => byte_index_ff(31),
      R => minusOp_0
    );
\byte_index_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[3]_i_1_n_0\,
      Q => byte_index_ff(3),
      R => minusOp_0
    );
\byte_index_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[4]_i_1_n_0\,
      Q => byte_index_ff(4),
      R => minusOp_0
    );
\byte_index_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[5]_i_1_n_0\,
      Q => byte_index_ff(5),
      R => minusOp_0
    );
\byte_index_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[6]_i_1_n_0\,
      Q => byte_index_ff(6),
      R => minusOp_0
    );
\byte_index_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[7]_i_1_n_0\,
      Q => byte_index_ff(7),
      R => minusOp_0
    );
\byte_index_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[8]_i_1_n_0\,
      Q => byte_index_ff(8),
      R => minusOp_0
    );
\byte_index_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \byte_index_ff[9]_i_1_n_0\,
      Q => byte_index_ff(9),
      R => minusOp_0
    );
\curr_state_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_1\,
      I1 => \^curr_state_ff_reg[3]_0\(0),
      I2 => sleep_counter_done,
      I3 => \sleep_counter_ff[0]_i_1_n_0\,
      I4 => \^curr_state_ff_reg[0]_0\,
      I5 => \^sound_addr_ff0\,
      O => \curr_state_ff[0]_i_1_n_0\
    );
\curr_state_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFB8B8B8"
    )
        port map (
      I0 => \curr_state_ff_reg[1]_0\,
      I1 => curr_state_ff_1(1),
      I2 => \curr_state_ff_reg[1]_1\,
      I3 => \^curr_state_ff_reg[3]_1\,
      I4 => \^curr_state_ff_reg[3]_0\(0),
      I5 => last_sample,
      O => \curr_state_ff[1]_i_1_n_0\
    );
\curr_state_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F488F888F8"
    )
        port map (
      I0 => curr_state_ff_1(1),
      I1 => \curr_state_ff_reg[1]_1\,
      I2 => sleep_counter_done,
      I3 => \sleep_counter_ff[0]_i_1_n_0\,
      I4 => \curr_state_ff_reg[1]_0\,
      I5 => curr_state_ff_1(2),
      O => \curr_state_ff[2]_i_1_n_0\
    );
\curr_state_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \curr_state_ff[3]_i_3_n_0\,
      I1 => \curr_state_ff_reg[0]_1\,
      I2 => \curr_state_ff[3]_i_5_n_0\,
      I3 => \curr_state_ff_reg[1]_1\,
      I4 => \^curr_state_ff_reg[0]_0\,
      O => next_state
    );
\curr_state_ff[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAAAF222AAAA"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_1\,
      I1 => last_sample,
      I2 => curr_state_ff_1(1),
      I3 => curr_state_ff_1(2),
      I4 => \^curr_state_ff_reg[3]_0\(0),
      I5 => \^curr_state_ff_reg[3]_0\(1),
      O => \curr_state_ff[3]_i_2_n_0\
    );
\curr_state_ff[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFCECFCFCCCCC"
    )
        port map (
      I0 => sleep_counter_done,
      I1 => s_rv_valid,
      I2 => \^curr_state_ff_reg[3]_0\(1),
      I3 => \^curr_state_ff_reg[3]_0\(0),
      I4 => curr_state_ff_1(2),
      I5 => curr_state_ff_1(1),
      O => \curr_state_ff[3]_i_3_n_0\
    );
\curr_state_ff[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => s_rv_valid,
      I1 => sleep_counter_done,
      I2 => \^curr_state_ff_reg[3]_0\(0),
      I3 => curr_state_ff_1(2),
      I4 => curr_state_ff_1(1),
      O => \curr_state_ff[3]_i_5_n_0\
    );
\curr_state_ff[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100010000000"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_0\(1),
      I2 => curr_state_ff(0),
      I3 => curr_state_ff(1),
      I4 => curr_state_ff_1(2),
      I5 => curr_state_ff_1(1),
      O => \^curr_state_ff_reg[0]_0\
    );
\curr_state_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => next_state,
      D => \curr_state_ff[0]_i_1_n_0\,
      Q => \^curr_state_ff_reg[3]_0\(0),
      R => minusOp_0
    );
\curr_state_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => next_state,
      D => \curr_state_ff[1]_i_1_n_0\,
      Q => curr_state_ff_1(1),
      R => minusOp_0
    );
\curr_state_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => next_state,
      D => \curr_state_ff[2]_i_1_n_0\,
      Q => curr_state_ff_1(2),
      R => minusOp_0
    );
\curr_state_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => next_state,
      D => \curr_state_ff[3]_i_2_n_0\,
      Q => \^curr_state_ff_reg[3]_0\(1),
      R => minusOp_0
    );
\debug_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => curr_state_ff_1(1),
      I1 => curr_state_ff_1(2),
      I2 => \curr_state_ff_reg[1]_0\,
      I3 => s_axi_aresetn,
      O => \debug_data[31]_i_1_n_0\
    );
\debug_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(0),
      Q => debug_data_o(0),
      R => '0'
    );
\debug_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(10),
      Q => debug_data_o(10),
      R => '0'
    );
\debug_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(11),
      Q => debug_data_o(11),
      R => '0'
    );
\debug_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(12),
      Q => debug_data_o(12),
      R => '0'
    );
\debug_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(13),
      Q => debug_data_o(13),
      R => '0'
    );
\debug_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(14),
      Q => debug_data_o(14),
      R => '0'
    );
\debug_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(15),
      Q => debug_data_o(15),
      R => '0'
    );
\debug_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(16),
      Q => debug_data_o(16),
      R => '0'
    );
\debug_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(17),
      Q => debug_data_o(17),
      R => '0'
    );
\debug_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(18),
      Q => debug_data_o(18),
      R => '0'
    );
\debug_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(19),
      Q => debug_data_o(19),
      R => '0'
    );
\debug_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(1),
      Q => debug_data_o(1),
      R => '0'
    );
\debug_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(20),
      Q => debug_data_o(20),
      R => '0'
    );
\debug_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(21),
      Q => debug_data_o(21),
      R => '0'
    );
\debug_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(22),
      Q => debug_data_o(22),
      R => '0'
    );
\debug_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(23),
      Q => debug_data_o(23),
      R => '0'
    );
\debug_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(24),
      Q => debug_data_o(24),
      R => '0'
    );
\debug_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(25),
      Q => debug_data_o(25),
      R => '0'
    );
\debug_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(26),
      Q => debug_data_o(26),
      R => '0'
    );
\debug_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(27),
      Q => debug_data_o(27),
      R => '0'
    );
\debug_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(28),
      Q => debug_data_o(28),
      R => '0'
    );
\debug_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(29),
      Q => debug_data_o(29),
      R => '0'
    );
\debug_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(2),
      Q => debug_data_o(2),
      R => '0'
    );
\debug_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(30),
      Q => debug_data_o(30),
      R => '0'
    );
\debug_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(31),
      Q => debug_data_o(31),
      R => '0'
    );
\debug_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(3),
      Q => debug_data_o(3),
      R => '0'
    );
\debug_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(4),
      Q => debug_data_o(4),
      R => '0'
    );
\debug_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(5),
      Q => debug_data_o(5),
      R => '0'
    );
\debug_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(6),
      Q => debug_data_o(6),
      R => '0'
    );
\debug_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(7),
      Q => debug_data_o(7),
      R => '0'
    );
\debug_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(8),
      Q => debug_data_o(8),
      R => '0'
    );
\debug_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \debug_data[31]_i_1_n_0\,
      D => D(9),
      Q => debug_data_o(9),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[21]\,
      I1 => next_state2(21),
      I2 => \sample_index_ff_reg_n_0_[22]\,
      I3 => next_state2(22),
      I4 => next_state2(23),
      I5 => \sample_index_ff_reg_n_0_[23]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[18]\,
      I1 => next_state2(18),
      I2 => \sample_index_ff_reg_n_0_[19]\,
      I3 => next_state2(19),
      I4 => next_state2(20),
      I5 => \sample_index_ff_reg_n_0_[20]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[15]\,
      I1 => next_state2(15),
      I2 => \sample_index_ff_reg_n_0_[16]\,
      I3 => next_state2(16),
      I4 => next_state2(17),
      I5 => \sample_index_ff_reg_n_0_[17]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[12]\,
      I1 => next_state2(12),
      I2 => \sample_index_ff_reg_n_0_[13]\,
      I3 => next_state2(13),
      I4 => next_state2(14),
      I5 => \sample_index_ff_reg_n_0_[14]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[30]\,
      I1 => next_state2(30),
      I2 => next_state2(31),
      I3 => \sample_index_ff_reg_n_0_[31]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[27]\,
      I1 => next_state2(27),
      I2 => \sample_index_ff_reg_n_0_[28]\,
      I3 => next_state2(28),
      I4 => next_state2(29),
      I5 => \sample_index_ff_reg_n_0_[29]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[24]\,
      I1 => next_state2(24),
      I2 => \sample_index_ff_reg_n_0_[25]\,
      I3 => next_state2(25),
      I4 => next_state2(26),
      I5 => \sample_index_ff_reg_n_0_[26]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[9]\,
      I1 => next_state2(9),
      I2 => \sample_index_ff_reg_n_0_[10]\,
      I3 => next_state2(10),
      I4 => next_state2(11),
      I5 => \sample_index_ff_reg_n_0_[11]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_index_ff(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[6]\,
      I1 => next_state2(6),
      I2 => \sample_index_ff_reg_n_0_[7]\,
      I3 => next_state2(7),
      I4 => next_state2(8),
      I5 => \sample_index_ff_reg_n_0_[8]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sample_index_ff_reg_n_0_[3]\,
      I1 => next_state2(3),
      I2 => \sample_index_ff_reg_n_0_[4]\,
      I3 => next_state2(4),
      I4 => next_state2(5),
      I5 => \sample_index_ff_reg_n_0_[5]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => num_samples_ff(0),
      I1 => \^sample_index_ff_reg[0]_0\(0),
      I2 => \sample_index_ff_reg_n_0_[1]\,
      I3 => next_state2(1),
      I4 => next_state2(2),
      I5 => \sample_index_ff_reg_n_0_[2]\,
      O => \i__carry_i_4_n_0\
    );
minusOp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
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
      A(29 downto 14) => B"0000000000000000",
      A(13 downto 0) => D(13 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_minusOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000011001000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_minusOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_minusOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_minusOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => sample_period_us_ff0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEM,
      CLK => s_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_minusOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_minusOp_OVERFLOW_UNCONNECTED,
      P(47 downto 14) => NLW_minusOp_P_UNCONNECTED(47 downto 14),
      P(13) => minusOp_n_92,
      P(12) => minusOp_n_93,
      P(11) => minusOp_n_94,
      P(10) => minusOp_n_95,
      P(9) => minusOp_n_96,
      P(8) => minusOp_n_97,
      P(7) => minusOp_n_98,
      P(6) => minusOp_n_99,
      P(5) => minusOp_n_100,
      P(4) => minusOp_n_101,
      P(3) => minusOp_n_102,
      P(2) => minusOp_n_103,
      P(1) => minusOp_n_104,
      P(0) => minusOp_n_105,
      PATTERNBDETECT => NLW_minusOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_minusOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_minusOp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => minusOp_0,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => minusOp_0,
      UNDERFLOW => NLW_minusOp_UNDERFLOW_UNCONNECTED
    );
minusOp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => curr_state_ff_1(1),
      I1 => curr_state_ff_1(2),
      I2 => \^curr_state_ff_reg[3]_0\(0),
      I3 => \^curr_state_ff_reg[3]_0\(1),
      I4 => curr_state_ff(0),
      I5 => curr_state_ff(1),
      O => sample_period_us_ff0
    );
next_state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_state1_carry_n_0,
      CO(2) => next_state1_carry_n_1,
      CO(1) => next_state1_carry_n_2,
      CO(0) => next_state1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_next_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => next_state1_carry_i_1_n_0,
      S(2) => next_state1_carry_i_2_n_0,
      S(1) => next_state1_carry_i_3_n_0,
      S(0) => next_state1_carry_i_4_n_0
    );
\next_state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_state1_carry_n_0,
      CO(3 downto 1) => \NLW_next_state1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => sleep_counter_done,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \next_state1_carry__0_i_1_n_0\
    );
\next_state1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sleep_counter_ff_reg(12),
      I1 => minusOp_n_93,
      I2 => minusOp_n_92,
      I3 => sleep_counter_ff_reg(13),
      O => \next_state1_carry__0_i_1_n_0\
    );
next_state1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sleep_counter_ff_reg(9),
      I1 => minusOp_n_96,
      I2 => sleep_counter_ff_reg(10),
      I3 => minusOp_n_95,
      I4 => minusOp_n_94,
      I5 => sleep_counter_ff_reg(11),
      O => next_state1_carry_i_1_n_0
    );
next_state1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sleep_counter_ff_reg(6),
      I1 => minusOp_n_99,
      I2 => sleep_counter_ff_reg(7),
      I3 => minusOp_n_98,
      I4 => minusOp_n_97,
      I5 => sleep_counter_ff_reg(8),
      O => next_state1_carry_i_2_n_0
    );
next_state1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sleep_counter_ff_reg(3),
      I1 => minusOp_n_102,
      I2 => sleep_counter_ff_reg(4),
      I3 => minusOp_n_101,
      I4 => minusOp_n_100,
      I5 => sleep_counter_ff_reg(5),
      O => next_state1_carry_i_3_n_0
    );
next_state1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sleep_counter_ff_reg(0),
      I1 => minusOp_n_105,
      I2 => sleep_counter_ff_reg(1),
      I3 => minusOp_n_104,
      I4 => minusOp_n_103,
      I5 => sleep_counter_ff_reg(2),
      O => next_state1_carry_i_4_n_0
    );
\next_state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \next_state1_inferred__0/i__carry_n_0\,
      CO(2) => \next_state1_inferred__0/i__carry_n_1\,
      CO(1) => \next_state1_inferred__0/i__carry_n_2\,
      CO(0) => \next_state1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\next_state1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state1_inferred__0/i__carry_n_0\,
      CO(3) => \next_state1_inferred__0/i__carry__0_n_0\,
      CO(2) => \next_state1_inferred__0/i__carry__0_n_1\,
      CO(1) => \next_state1_inferred__0/i__carry__0_n_2\,
      CO(0) => \next_state1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\next_state1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_next_state1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => last_sample,
      CO(1) => \next_state1_inferred__0/i__carry__1_n_2\,
      CO(0) => \next_state1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
next_state2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_state2_carry_n_0,
      CO(2) => next_state2_carry_n_1,
      CO(1) => next_state2_carry_n_2,
      CO(0) => next_state2_carry_n_3,
      CYINIT => num_samples_ff(0),
      DI(3 downto 0) => num_samples_ff(4 downto 1),
      O(3 downto 0) => next_state2(4 downto 1),
      S(3) => next_state2_carry_i_1_n_0,
      S(2) => next_state2_carry_i_2_n_0,
      S(1) => next_state2_carry_i_3_n_0,
      S(0) => next_state2_carry_i_4_n_0
    );
\next_state2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_state2_carry_n_0,
      CO(3) => \next_state2_carry__0_n_0\,
      CO(2) => \next_state2_carry__0_n_1\,
      CO(1) => \next_state2_carry__0_n_2\,
      CO(0) => \next_state2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_ff(8 downto 5),
      O(3 downto 0) => next_state2(8 downto 5),
      S(3) => \next_state2_carry__0_i_1_n_0\,
      S(2) => \next_state2_carry__0_i_2_n_0\,
      S(1) => \next_state2_carry__0_i_3_n_0\,
      S(0) => \next_state2_carry__0_i_4_n_0\
    );
\next_state2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(8),
      O => \next_state2_carry__0_i_1_n_0\
    );
\next_state2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(7),
      O => \next_state2_carry__0_i_2_n_0\
    );
\next_state2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(6),
      O => \next_state2_carry__0_i_3_n_0\
    );
\next_state2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(5),
      O => \next_state2_carry__0_i_4_n_0\
    );
\next_state2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_carry__0_n_0\,
      CO(3) => \next_state2_carry__1_n_0\,
      CO(2) => \next_state2_carry__1_n_1\,
      CO(1) => \next_state2_carry__1_n_2\,
      CO(0) => \next_state2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_ff(12 downto 9),
      O(3 downto 0) => next_state2(12 downto 9),
      S(3) => \next_state2_carry__1_i_1_n_0\,
      S(2) => \next_state2_carry__1_i_2_n_0\,
      S(1) => \next_state2_carry__1_i_3_n_0\,
      S(0) => \next_state2_carry__1_i_4_n_0\
    );
\next_state2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(12),
      O => \next_state2_carry__1_i_1_n_0\
    );
\next_state2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(11),
      O => \next_state2_carry__1_i_2_n_0\
    );
\next_state2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(10),
      O => \next_state2_carry__1_i_3_n_0\
    );
\next_state2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(9),
      O => \next_state2_carry__1_i_4_n_0\
    );
\next_state2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_carry__1_n_0\,
      CO(3) => \next_state2_carry__2_n_0\,
      CO(2) => \next_state2_carry__2_n_1\,
      CO(1) => \next_state2_carry__2_n_2\,
      CO(0) => \next_state2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_ff(16 downto 13),
      O(3 downto 0) => next_state2(16 downto 13),
      S(3) => \next_state2_carry__2_i_1_n_0\,
      S(2) => \next_state2_carry__2_i_2_n_0\,
      S(1) => \next_state2_carry__2_i_3_n_0\,
      S(0) => \next_state2_carry__2_i_4_n_0\
    );
\next_state2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(16),
      O => \next_state2_carry__2_i_1_n_0\
    );
\next_state2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(15),
      O => \next_state2_carry__2_i_2_n_0\
    );
\next_state2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(14),
      O => \next_state2_carry__2_i_3_n_0\
    );
\next_state2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(13),
      O => \next_state2_carry__2_i_4_n_0\
    );
\next_state2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_carry__2_n_0\,
      CO(3) => \next_state2_carry__3_n_0\,
      CO(2) => \next_state2_carry__3_n_1\,
      CO(1) => \next_state2_carry__3_n_2\,
      CO(0) => \next_state2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_ff(20 downto 17),
      O(3 downto 0) => next_state2(20 downto 17),
      S(3) => \next_state2_carry__3_i_1_n_0\,
      S(2) => \next_state2_carry__3_i_2_n_0\,
      S(1) => \next_state2_carry__3_i_3_n_0\,
      S(0) => \next_state2_carry__3_i_4_n_0\
    );
\next_state2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(20),
      O => \next_state2_carry__3_i_1_n_0\
    );
\next_state2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(19),
      O => \next_state2_carry__3_i_2_n_0\
    );
\next_state2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(18),
      O => \next_state2_carry__3_i_3_n_0\
    );
\next_state2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(17),
      O => \next_state2_carry__3_i_4_n_0\
    );
\next_state2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_carry__3_n_0\,
      CO(3) => \next_state2_carry__4_n_0\,
      CO(2) => \next_state2_carry__4_n_1\,
      CO(1) => \next_state2_carry__4_n_2\,
      CO(0) => \next_state2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_ff(24 downto 21),
      O(3 downto 0) => next_state2(24 downto 21),
      S(3) => \next_state2_carry__4_i_1_n_0\,
      S(2) => \next_state2_carry__4_i_2_n_0\,
      S(1) => \next_state2_carry__4_i_3_n_0\,
      S(0) => \next_state2_carry__4_i_4_n_0\
    );
\next_state2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(24),
      O => \next_state2_carry__4_i_1_n_0\
    );
\next_state2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(23),
      O => \next_state2_carry__4_i_2_n_0\
    );
\next_state2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(22),
      O => \next_state2_carry__4_i_3_n_0\
    );
\next_state2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(21),
      O => \next_state2_carry__4_i_4_n_0\
    );
\next_state2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_carry__4_n_0\,
      CO(3) => \next_state2_carry__5_n_0\,
      CO(2) => \next_state2_carry__5_n_1\,
      CO(1) => \next_state2_carry__5_n_2\,
      CO(0) => \next_state2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_samples_ff(28 downto 25),
      O(3 downto 0) => next_state2(28 downto 25),
      S(3) => \next_state2_carry__5_i_1_n_0\,
      S(2) => \next_state2_carry__5_i_2_n_0\,
      S(1) => \next_state2_carry__5_i_3_n_0\,
      S(0) => \next_state2_carry__5_i_4_n_0\
    );
\next_state2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(28),
      O => \next_state2_carry__5_i_1_n_0\
    );
\next_state2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(27),
      O => \next_state2_carry__5_i_2_n_0\
    );
\next_state2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(26),
      O => \next_state2_carry__5_i_3_n_0\
    );
\next_state2_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(25),
      O => \next_state2_carry__5_i_4_n_0\
    );
\next_state2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_next_state2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \next_state2_carry__6_n_2\,
      CO(0) => \next_state2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => num_samples_ff(30 downto 29),
      O(3) => \NLW_next_state2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => next_state2(31 downto 29),
      S(3) => '0',
      S(2) => \next_state2_carry__6_i_1_n_0\,
      S(1) => \next_state2_carry__6_i_2_n_0\,
      S(0) => \next_state2_carry__6_i_3_n_0\
    );
\next_state2_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(31),
      O => \next_state2_carry__6_i_1_n_0\
    );
\next_state2_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(30),
      O => \next_state2_carry__6_i_2_n_0\
    );
\next_state2_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(29),
      O => \next_state2_carry__6_i_3_n_0\
    );
next_state2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(4),
      O => next_state2_carry_i_1_n_0
    );
next_state2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(3),
      O => next_state2_carry_i_2_n_0
    );
next_state2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(2),
      O => next_state2_carry_i_3_n_0
    );
next_state2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_samples_ff(1),
      O => next_state2_carry_i_4_n_0
    );
\num_samples_ff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_0\(1),
      I2 => curr_state_ff(0),
      I3 => curr_state_ff(1),
      I4 => curr_state_ff_1(1),
      I5 => curr_state_ff_1(2),
      O => num_samples_ff0
    );
\num_samples_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(0),
      Q => num_samples_ff(0),
      R => minusOp_0
    );
\num_samples_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(10),
      Q => num_samples_ff(10),
      R => minusOp_0
    );
\num_samples_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(11),
      Q => num_samples_ff(11),
      R => minusOp_0
    );
\num_samples_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(12),
      Q => num_samples_ff(12),
      R => minusOp_0
    );
\num_samples_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(13),
      Q => num_samples_ff(13),
      R => minusOp_0
    );
\num_samples_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(14),
      Q => num_samples_ff(14),
      R => minusOp_0
    );
\num_samples_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(15),
      Q => num_samples_ff(15),
      R => minusOp_0
    );
\num_samples_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(16),
      Q => num_samples_ff(16),
      R => minusOp_0
    );
\num_samples_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(17),
      Q => num_samples_ff(17),
      R => minusOp_0
    );
\num_samples_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(18),
      Q => num_samples_ff(18),
      R => minusOp_0
    );
\num_samples_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(19),
      Q => num_samples_ff(19),
      R => minusOp_0
    );
\num_samples_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(1),
      Q => num_samples_ff(1),
      R => minusOp_0
    );
\num_samples_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(20),
      Q => num_samples_ff(20),
      R => minusOp_0
    );
\num_samples_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(21),
      Q => num_samples_ff(21),
      R => minusOp_0
    );
\num_samples_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(22),
      Q => num_samples_ff(22),
      R => minusOp_0
    );
\num_samples_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(23),
      Q => num_samples_ff(23),
      R => minusOp_0
    );
\num_samples_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(24),
      Q => num_samples_ff(24),
      R => minusOp_0
    );
\num_samples_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(25),
      Q => num_samples_ff(25),
      R => minusOp_0
    );
\num_samples_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(26),
      Q => num_samples_ff(26),
      R => minusOp_0
    );
\num_samples_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(27),
      Q => num_samples_ff(27),
      R => minusOp_0
    );
\num_samples_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(28),
      Q => num_samples_ff(28),
      R => minusOp_0
    );
\num_samples_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(29),
      Q => num_samples_ff(29),
      R => minusOp_0
    );
\num_samples_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(2),
      Q => num_samples_ff(2),
      R => minusOp_0
    );
\num_samples_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(30),
      Q => num_samples_ff(30),
      R => minusOp_0
    );
\num_samples_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(31),
      Q => num_samples_ff(31),
      R => minusOp_0
    );
\num_samples_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(3),
      Q => num_samples_ff(3),
      R => minusOp_0
    );
\num_samples_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(4),
      Q => num_samples_ff(4),
      R => minusOp_0
    );
\num_samples_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(5),
      Q => num_samples_ff(5),
      R => minusOp_0
    );
\num_samples_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(6),
      Q => num_samples_ff(6),
      R => minusOp_0
    );
\num_samples_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(7),
      Q => num_samples_ff(7),
      R => minusOp_0
    );
\num_samples_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(8),
      Q => num_samples_ff(8),
      R => minusOp_0
    );
\num_samples_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => num_samples_ff0,
      D => D(9),
      Q => num_samples_ff(9),
      R => minusOp_0
    );
\prev_state_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^curr_state_ff_reg[3]_0\(0),
      Q => prev_state_ff(0),
      R => minusOp_0
    );
\prev_state_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => curr_state_ff_1(1),
      Q => prev_state_ff(1),
      R => minusOp_0
    );
\prev_state_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => curr_state_ff_1(2),
      Q => prev_state_ff(2),
      R => minusOp_0
    );
\prev_state_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^curr_state_ff_reg[3]_0\(1),
      Q => prev_state_ff(3),
      R => minusOp_0
    );
\req_addr_offset_ff0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \req_addr_offset_ff0_inferred__0/i__carry_n_0\,
      CO(2) => \req_addr_offset_ff0_inferred__0/i__carry_n_1\,
      CO(1) => \req_addr_offset_ff0_inferred__0/i__carry_n_2\,
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => byte_index_ff(3),
      DI(0) => '0',
      O(3) => \req_addr_offset_ff0_inferred__0/i__carry_n_4\,
      O(2) => \req_addr_offset_ff0_inferred__0/i__carry_n_5\,
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry_n_7\,
      S(3 downto 2) => byte_index_ff(5 downto 4),
      S(1) => \i__carry_i_1__0_n_0\,
      S(0) => byte_index_ff(2)
    );
\req_addr_offset_ff0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \req_addr_offset_ff0_inferred__0/i__carry_n_0\,
      CO(3) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_0\,
      CO(2) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_1\,
      CO(1) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_2\,
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_4\,
      O(2) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_5\,
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry__0_n_7\,
      S(3 downto 0) => byte_index_ff(9 downto 6)
    );
\req_addr_offset_ff0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \req_addr_offset_ff0_inferred__0/i__carry__0_n_0\,
      CO(3) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_0\,
      CO(2) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_1\,
      CO(1) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_2\,
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_4\,
      O(2) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_5\,
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry__1_n_7\,
      S(3 downto 0) => byte_index_ff(13 downto 10)
    );
\req_addr_offset_ff0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \req_addr_offset_ff0_inferred__0/i__carry__1_n_0\,
      CO(3) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_0\,
      CO(2) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_1\,
      CO(1) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_2\,
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_4\,
      O(2) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_5\,
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry__2_n_7\,
      S(3 downto 0) => byte_index_ff(17 downto 14)
    );
\req_addr_offset_ff0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \req_addr_offset_ff0_inferred__0/i__carry__2_n_0\,
      CO(3) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_0\,
      CO(2) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_1\,
      CO(1) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_2\,
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_4\,
      O(2) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_5\,
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry__3_n_7\,
      S(3 downto 0) => byte_index_ff(21 downto 18)
    );
\req_addr_offset_ff0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \req_addr_offset_ff0_inferred__0/i__carry__3_n_0\,
      CO(3) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_0\,
      CO(2) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_1\,
      CO(1) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_2\,
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_4\,
      O(2) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_5\,
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry__4_n_7\,
      S(3 downto 0) => byte_index_ff(25 downto 22)
    );
\req_addr_offset_ff0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \req_addr_offset_ff0_inferred__0/i__carry__4_n_0\,
      CO(3) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_0\,
      CO(2) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_1\,
      CO(1) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_2\,
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_4\,
      O(2) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_5\,
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry__5_n_7\,
      S(3 downto 0) => byte_index_ff(29 downto 26)
    );
\req_addr_offset_ff0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \req_addr_offset_ff0_inferred__0/i__carry__5_n_0\,
      CO(3 downto 1) => \NLW_req_addr_offset_ff0_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \req_addr_offset_ff0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_req_addr_offset_ff0_inferred__0/i__carry__6_O_UNCONNECTED\(3 downto 2),
      O(1) => \req_addr_offset_ff0_inferred__0/i__carry__6_n_6\,
      O(0) => \req_addr_offset_ff0_inferred__0/i__carry__6_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => byte_index_ff(31 downto 30)
    );
\req_addr_offset_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAA8000000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \req_addr_offset_ff0_inferred__0/i__carry_n_7\,
      I2 => req_addr_offset_ff0,
      I3 => \req_addr_offset_ff[2]_i_2_n_0\,
      I4 => \req_addr_offset_ff_reg_n_0_[2]\,
      I5 => \req_addr_offset_ff[2]_i_3_n_0\,
      O => \req_addr_offset_ff[2]_i_1_n_0\
    );
\req_addr_offset_ff[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => curr_state_ff_1(1),
      I1 => curr_state_ff_1(2),
      I2 => \^curr_state_ff_reg[3]_0\(1),
      I3 => \^curr_state_ff_reg[3]_0\(0),
      O => \req_addr_offset_ff[2]_i_2_n_0\
    );
\req_addr_offset_ff[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(1),
      I1 => \^curr_state_ff_reg[3]_0\(0),
      I2 => curr_state_ff_1(2),
      I3 => curr_state_ff_1(1),
      O => \req_addr_offset_ff[2]_i_3_n_0\
    );
\req_addr_offset_ff[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => curr_state_ff_1(2),
      I1 => \^curr_state_ff_reg[3]_0\(0),
      I2 => \^curr_state_ff_reg[3]_0\(1),
      I3 => s_axi_aresetn,
      O => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0018"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(1),
      I1 => curr_state_ff_1(1),
      I2 => curr_state_ff_1(2),
      I3 => \^curr_state_ff_reg[3]_0\(0),
      O => req_addr_offset_ff0
    );
\req_addr_offset_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => byte_index_ff(0),
      Q => \req_addr_offset_ff_reg_n_0_[0]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__1_n_7\,
      Q => \req_addr_offset_ff_reg_n_0_[10]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__1_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[11]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__1_n_5\,
      Q => \req_addr_offset_ff_reg_n_0_[12]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__1_n_4\,
      Q => \req_addr_offset_ff_reg_n_0_[13]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__2_n_7\,
      Q => \req_addr_offset_ff_reg_n_0_[14]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__2_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[15]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__2_n_5\,
      Q => \req_addr_offset_ff_reg_n_0_[16]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__2_n_4\,
      Q => \req_addr_offset_ff_reg_n_0_[17]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__3_n_7\,
      Q => \req_addr_offset_ff_reg_n_0_[18]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__3_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[19]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => byte_index_ff(1),
      Q => \req_addr_offset_ff_reg_n_0_[1]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__3_n_5\,
      Q => \req_addr_offset_ff_reg_n_0_[20]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__3_n_4\,
      Q => \req_addr_offset_ff_reg_n_0_[21]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__4_n_7\,
      Q => \req_addr_offset_ff_reg_n_0_[22]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__4_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[23]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__4_n_5\,
      Q => \req_addr_offset_ff_reg_n_0_[24]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__4_n_4\,
      Q => \req_addr_offset_ff_reg_n_0_[25]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__5_n_7\,
      Q => \req_addr_offset_ff_reg_n_0_[26]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__5_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[27]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__5_n_5\,
      Q => \req_addr_offset_ff_reg_n_0_[28]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__5_n_4\,
      Q => \req_addr_offset_ff_reg_n_0_[29]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_addr_offset_ff[2]_i_1_n_0\,
      Q => \req_addr_offset_ff_reg_n_0_[2]\,
      R => '0'
    );
\req_addr_offset_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__6_n_7\,
      Q => \req_addr_offset_ff_reg_n_0_[30]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__6_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[31]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[3]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry_n_5\,
      Q => \req_addr_offset_ff_reg_n_0_[4]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry_n_4\,
      Q => \req_addr_offset_ff_reg_n_0_[5]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__0_n_7\,
      Q => \req_addr_offset_ff_reg_n_0_[6]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__0_n_6\,
      Q => \req_addr_offset_ff_reg_n_0_[7]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__0_n_5\,
      Q => \req_addr_offset_ff_reg_n_0_[8]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
\req_addr_offset_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => req_addr_offset_ff0,
      D => \req_addr_offset_ff0_inferred__0/i__carry__0_n_4\,
      Q => \req_addr_offset_ff_reg_n_0_[9]\,
      R => \req_addr_offset_ff[31]_i_1_n_0\
    );
sample_index_ff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sample_index_ff0_carry_n_0,
      CO(2) => sample_index_ff0_carry_n_1,
      CO(1) => sample_index_ff0_carry_n_2,
      CO(0) => sample_index_ff0_carry_n_3,
      CYINIT => \^sample_index_ff_reg[0]_0\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_ff0(4 downto 1),
      S(3) => \sample_index_ff_reg_n_0_[4]\,
      S(2) => \sample_index_ff_reg_n_0_[3]\,
      S(1) => \sample_index_ff_reg_n_0_[2]\,
      S(0) => \sample_index_ff_reg_n_0_[1]\
    );
\sample_index_ff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sample_index_ff0_carry_n_0,
      CO(3) => \sample_index_ff0_carry__0_n_0\,
      CO(2) => \sample_index_ff0_carry__0_n_1\,
      CO(1) => \sample_index_ff0_carry__0_n_2\,
      CO(0) => \sample_index_ff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_ff0(8 downto 5),
      S(3) => \sample_index_ff_reg_n_0_[8]\,
      S(2) => \sample_index_ff_reg_n_0_[7]\,
      S(1) => \sample_index_ff_reg_n_0_[6]\,
      S(0) => \sample_index_ff_reg_n_0_[5]\
    );
\sample_index_ff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_ff0_carry__0_n_0\,
      CO(3) => \sample_index_ff0_carry__1_n_0\,
      CO(2) => \sample_index_ff0_carry__1_n_1\,
      CO(1) => \sample_index_ff0_carry__1_n_2\,
      CO(0) => \sample_index_ff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_ff0(12 downto 9),
      S(3) => \sample_index_ff_reg_n_0_[12]\,
      S(2) => \sample_index_ff_reg_n_0_[11]\,
      S(1) => \sample_index_ff_reg_n_0_[10]\,
      S(0) => \sample_index_ff_reg_n_0_[9]\
    );
\sample_index_ff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_ff0_carry__1_n_0\,
      CO(3) => \sample_index_ff0_carry__2_n_0\,
      CO(2) => \sample_index_ff0_carry__2_n_1\,
      CO(1) => \sample_index_ff0_carry__2_n_2\,
      CO(0) => \sample_index_ff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_ff0(16 downto 13),
      S(3) => \sample_index_ff_reg_n_0_[16]\,
      S(2) => \sample_index_ff_reg_n_0_[15]\,
      S(1) => \sample_index_ff_reg_n_0_[14]\,
      S(0) => \sample_index_ff_reg_n_0_[13]\
    );
\sample_index_ff0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_ff0_carry__2_n_0\,
      CO(3) => \sample_index_ff0_carry__3_n_0\,
      CO(2) => \sample_index_ff0_carry__3_n_1\,
      CO(1) => \sample_index_ff0_carry__3_n_2\,
      CO(0) => \sample_index_ff0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_ff0(20 downto 17),
      S(3) => \sample_index_ff_reg_n_0_[20]\,
      S(2) => \sample_index_ff_reg_n_0_[19]\,
      S(1) => \sample_index_ff_reg_n_0_[18]\,
      S(0) => \sample_index_ff_reg_n_0_[17]\
    );
\sample_index_ff0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_ff0_carry__3_n_0\,
      CO(3) => \sample_index_ff0_carry__4_n_0\,
      CO(2) => \sample_index_ff0_carry__4_n_1\,
      CO(1) => \sample_index_ff0_carry__4_n_2\,
      CO(0) => \sample_index_ff0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_ff0(24 downto 21),
      S(3) => \sample_index_ff_reg_n_0_[24]\,
      S(2) => \sample_index_ff_reg_n_0_[23]\,
      S(1) => \sample_index_ff_reg_n_0_[22]\,
      S(0) => \sample_index_ff_reg_n_0_[21]\
    );
\sample_index_ff0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_ff0_carry__4_n_0\,
      CO(3) => \sample_index_ff0_carry__5_n_0\,
      CO(2) => \sample_index_ff0_carry__5_n_1\,
      CO(1) => \sample_index_ff0_carry__5_n_2\,
      CO(0) => \sample_index_ff0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sample_index_ff0(28 downto 25),
      S(3) => \sample_index_ff_reg_n_0_[28]\,
      S(2) => \sample_index_ff_reg_n_0_[27]\,
      S(1) => \sample_index_ff_reg_n_0_[26]\,
      S(0) => \sample_index_ff_reg_n_0_[25]\
    );
\sample_index_ff0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_index_ff0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_sample_index_ff0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sample_index_ff0_carry__6_n_2\,
      CO(0) => \sample_index_ff0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sample_index_ff0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => sample_index_ff0(31 downto 29),
      S(3) => '0',
      S(2) => \sample_index_ff_reg_n_0_[31]\,
      S(1) => \sample_index_ff_reg_n_0_[30]\,
      S(0) => \sample_index_ff_reg_n_0_[29]\
    );
\sample_index_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => \^sample_index_ff_reg[0]_0\(0),
      O => \sample_index_ff[0]_i_1_n_0\
    );
\sample_index_ff[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(10),
      O => \sample_index_ff[10]_i_1_n_0\
    );
\sample_index_ff[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(11),
      O => \sample_index_ff[11]_i_1_n_0\
    );
\sample_index_ff[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(12),
      O => \sample_index_ff[12]_i_1_n_0\
    );
\sample_index_ff[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(13),
      O => \sample_index_ff[13]_i_1_n_0\
    );
\sample_index_ff[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(14),
      O => \sample_index_ff[14]_i_1_n_0\
    );
\sample_index_ff[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(15),
      O => \sample_index_ff[15]_i_1_n_0\
    );
\sample_index_ff[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(16),
      O => \sample_index_ff[16]_i_1_n_0\
    );
\sample_index_ff[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(17),
      O => \sample_index_ff[17]_i_1_n_0\
    );
\sample_index_ff[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(18),
      O => \sample_index_ff[18]_i_1_n_0\
    );
\sample_index_ff[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(19),
      O => \sample_index_ff[19]_i_1_n_0\
    );
\sample_index_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(1),
      O => \sample_index_ff[1]_i_1_n_0\
    );
\sample_index_ff[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(20),
      O => \sample_index_ff[20]_i_1_n_0\
    );
\sample_index_ff[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(21),
      O => \sample_index_ff[21]_i_1_n_0\
    );
\sample_index_ff[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(22),
      O => \sample_index_ff[22]_i_1_n_0\
    );
\sample_index_ff[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(23),
      O => \sample_index_ff[23]_i_1_n_0\
    );
\sample_index_ff[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(24),
      O => \sample_index_ff[24]_i_1_n_0\
    );
\sample_index_ff[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(25),
      O => \sample_index_ff[25]_i_1_n_0\
    );
\sample_index_ff[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(26),
      O => \sample_index_ff[26]_i_1_n_0\
    );
\sample_index_ff[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(27),
      O => \sample_index_ff[27]_i_1_n_0\
    );
\sample_index_ff[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(28),
      O => \sample_index_ff[28]_i_1_n_0\
    );
\sample_index_ff[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(29),
      O => \sample_index_ff[29]_i_1_n_0\
    );
\sample_index_ff[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(2),
      O => \sample_index_ff[2]_i_1_n_0\
    );
\sample_index_ff[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(30),
      O => \sample_index_ff[30]_i_1_n_0\
    );
\sample_index_ff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808080808085D"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => curr_state_ff_1(1),
      I4 => curr_state_ff_1(2),
      I5 => \^curr_state_ff_reg[3]_0\(1),
      O => byte_index_ff_0
    );
\sample_index_ff[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(31),
      O => \sample_index_ff[31]_i_2_n_0\
    );
\sample_index_ff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(3),
      O => \sample_index_ff[3]_i_1_n_0\
    );
\sample_index_ff[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(4),
      O => \sample_index_ff[4]_i_1_n_0\
    );
\sample_index_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(5),
      O => \sample_index_ff[5]_i_1_n_0\
    );
\sample_index_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(6),
      O => \sample_index_ff[6]_i_1_n_0\
    );
\sample_index_ff[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(7),
      O => \sample_index_ff[7]_i_1_n_0\
    );
\sample_index_ff[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(8),
      O => \sample_index_ff[8]_i_1_n_0\
    );
\sample_index_ff[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => \^curr_state_ff_reg[3]_1\,
      I2 => last_sample,
      I3 => sample_index_ff0(9),
      O => \sample_index_ff[9]_i_1_n_0\
    );
\sample_index_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[0]_i_1_n_0\,
      Q => \^sample_index_ff_reg[0]_0\(0),
      R => minusOp_0
    );
\sample_index_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[10]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[10]\,
      R => minusOp_0
    );
\sample_index_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[11]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[11]\,
      R => minusOp_0
    );
\sample_index_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[12]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[12]\,
      R => minusOp_0
    );
\sample_index_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[13]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[13]\,
      R => minusOp_0
    );
\sample_index_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[14]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[14]\,
      R => minusOp_0
    );
\sample_index_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[15]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[15]\,
      R => minusOp_0
    );
\sample_index_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[16]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[16]\,
      R => minusOp_0
    );
\sample_index_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[17]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[17]\,
      R => minusOp_0
    );
\sample_index_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[18]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[18]\,
      R => minusOp_0
    );
\sample_index_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[19]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[19]\,
      R => minusOp_0
    );
\sample_index_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[1]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[1]\,
      R => minusOp_0
    );
\sample_index_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[20]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[20]\,
      R => minusOp_0
    );
\sample_index_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[21]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[21]\,
      R => minusOp_0
    );
\sample_index_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[22]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[22]\,
      R => minusOp_0
    );
\sample_index_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[23]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[23]\,
      R => minusOp_0
    );
\sample_index_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[24]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[24]\,
      R => minusOp_0
    );
\sample_index_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[25]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[25]\,
      R => minusOp_0
    );
\sample_index_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[26]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[26]\,
      R => minusOp_0
    );
\sample_index_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[27]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[27]\,
      R => minusOp_0
    );
\sample_index_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[28]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[28]\,
      R => minusOp_0
    );
\sample_index_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[29]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[29]\,
      R => minusOp_0
    );
\sample_index_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[2]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[2]\,
      R => minusOp_0
    );
\sample_index_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[30]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[30]\,
      R => minusOp_0
    );
\sample_index_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[31]_i_2_n_0\,
      Q => \sample_index_ff_reg_n_0_[31]\,
      R => minusOp_0
    );
\sample_index_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[3]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[3]\,
      R => minusOp_0
    );
\sample_index_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[4]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[4]\,
      R => minusOp_0
    );
\sample_index_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[5]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[5]\,
      R => minusOp_0
    );
\sample_index_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[6]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[6]\,
      R => minusOp_0
    );
\sample_index_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[7]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[7]\,
      R => minusOp_0
    );
\sample_index_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[8]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[8]\,
      R => minusOp_0
    );
\sample_index_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => byte_index_ff_0,
      D => \sample_index_ff[9]_i_1_n_0\,
      Q => \sample_index_ff_reg_n_0_[9]\,
      R => minusOp_0
    );
sample_period_cycles_ff: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => prev_state_ff(3),
      I1 => prev_state_ff(1),
      I2 => prev_state_ff(2),
      I3 => prev_state_ff(0),
      O => CEM
    );
scaled_sample_ff_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
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
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_scaled_sample_ff_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => scaled_sample_ff_reg_1(15),
      B(16) => scaled_sample_ff_reg_1(15),
      B(15 downto 0) => scaled_sample_ff_reg_1(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_scaled_sample_ff_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_scaled_sample_ff_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_scaled_sample_ff_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => sample_ff,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => Q(0),
      CEB2 => \^sound_addr_ff0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => s_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_scaled_sample_ff_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_scaled_sample_ff_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_scaled_sample_ff_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => scaled_sample_ff_reg_0(31 downto 0),
      PATTERNBDETECT => NLW_scaled_sample_ff_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_scaled_sample_ff_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_scaled_sample_ff_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => minusOp_0,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => minusOp_0,
      UNDERFLOW => NLW_scaled_sample_ff_reg_UNDERFLOW_UNCONNECTED
    );
scaled_sample_ff_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => curr_state_ff_1(1),
      I1 => curr_state_ff_1(2),
      I2 => s_axi_aresetn,
      I3 => \curr_state_ff_reg[1]_0\,
      O => sample_ff
    );
scaled_sample_ff_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_rv_valid,
      I1 => curr_state_ff_1(1),
      I2 => curr_state_ff_1(2),
      I3 => \^curr_state_ff_reg[3]_0\(0),
      I4 => \^curr_state_ff_reg[3]_0\(1),
      O => \^sound_addr_ff0\
    );
scaled_sample_ff_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(1),
      I1 => \^curr_state_ff_reg[3]_0\(0),
      I2 => curr_state_ff_1(2),
      I3 => curr_state_ff_1(1),
      O => CEP
    );
\sleep_counter_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^curr_state_ff_reg[3]_0\(0),
      I1 => curr_state_ff_1(2),
      I2 => curr_state_ff_1(1),
      I3 => \^curr_state_ff_reg[3]_0\(1),
      O => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sleep_counter_ff_reg(0),
      O => \sleep_counter_ff[0]_i_3_n_0\
    );
\sleep_counter_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[0]_i_2_n_7\,
      Q => sleep_counter_ff_reg(0),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sleep_counter_ff_reg[0]_i_2_n_0\,
      CO(2) => \sleep_counter_ff_reg[0]_i_2_n_1\,
      CO(1) => \sleep_counter_ff_reg[0]_i_2_n_2\,
      CO(0) => \sleep_counter_ff_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sleep_counter_ff_reg[0]_i_2_n_4\,
      O(2) => \sleep_counter_ff_reg[0]_i_2_n_5\,
      O(1) => \sleep_counter_ff_reg[0]_i_2_n_6\,
      O(0) => \sleep_counter_ff_reg[0]_i_2_n_7\,
      S(3 downto 1) => sleep_counter_ff_reg(3 downto 1),
      S(0) => \sleep_counter_ff[0]_i_3_n_0\
    );
\sleep_counter_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[8]_i_1_n_5\,
      Q => sleep_counter_ff_reg(10),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[8]_i_1_n_4\,
      Q => sleep_counter_ff_reg(11),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[12]_i_1_n_7\,
      Q => sleep_counter_ff_reg(12),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sleep_counter_ff_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_sleep_counter_ff_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sleep_counter_ff_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sleep_counter_ff_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \sleep_counter_ff_reg[12]_i_1_n_6\,
      O(0) => \sleep_counter_ff_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => sleep_counter_ff_reg(13 downto 12)
    );
\sleep_counter_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[12]_i_1_n_6\,
      Q => sleep_counter_ff_reg(13),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[0]_i_2_n_6\,
      Q => sleep_counter_ff_reg(1),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[0]_i_2_n_5\,
      Q => sleep_counter_ff_reg(2),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[0]_i_2_n_4\,
      Q => sleep_counter_ff_reg(3),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[4]_i_1_n_7\,
      Q => sleep_counter_ff_reg(4),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sleep_counter_ff_reg[0]_i_2_n_0\,
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
      CE => '1',
      D => \sleep_counter_ff_reg[4]_i_1_n_6\,
      Q => sleep_counter_ff_reg(5),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[4]_i_1_n_5\,
      Q => sleep_counter_ff_reg(6),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sleep_counter_ff_reg[4]_i_1_n_4\,
      Q => sleep_counter_ff_reg(7),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sleep_counter_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
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
      CE => '1',
      D => \sleep_counter_ff_reg[8]_i_1_n_6\,
      Q => sleep_counter_ff_reg(9),
      R => \sleep_counter_ff[0]_i_1_n_0\
    );
\sound_addr_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(0),
      Q => sound_addr_ff(0),
      R => minusOp_0
    );
\sound_addr_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(10),
      Q => sound_addr_ff(10),
      R => minusOp_0
    );
\sound_addr_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(11),
      Q => sound_addr_ff(11),
      R => minusOp_0
    );
\sound_addr_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(12),
      Q => sound_addr_ff(12),
      R => minusOp_0
    );
\sound_addr_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(13),
      Q => sound_addr_ff(13),
      R => minusOp_0
    );
\sound_addr_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(14),
      Q => sound_addr_ff(14),
      R => minusOp_0
    );
\sound_addr_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(15),
      Q => sound_addr_ff(15),
      R => minusOp_0
    );
\sound_addr_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(16),
      Q => sound_addr_ff(16),
      R => minusOp_0
    );
\sound_addr_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(17),
      Q => sound_addr_ff(17),
      R => minusOp_0
    );
\sound_addr_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(18),
      Q => sound_addr_ff(18),
      R => minusOp_0
    );
\sound_addr_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(19),
      Q => sound_addr_ff(19),
      R => minusOp_0
    );
\sound_addr_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(1),
      Q => sound_addr_ff(1),
      R => minusOp_0
    );
\sound_addr_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(20),
      Q => sound_addr_ff(20),
      R => minusOp_0
    );
\sound_addr_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(21),
      Q => sound_addr_ff(21),
      R => minusOp_0
    );
\sound_addr_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(22),
      Q => sound_addr_ff(22),
      R => minusOp_0
    );
\sound_addr_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(23),
      Q => sound_addr_ff(23),
      R => minusOp_0
    );
\sound_addr_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(24),
      Q => sound_addr_ff(24),
      R => minusOp_0
    );
\sound_addr_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(25),
      Q => sound_addr_ff(25),
      R => minusOp_0
    );
\sound_addr_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(26),
      Q => sound_addr_ff(26),
      R => minusOp_0
    );
\sound_addr_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(27),
      Q => sound_addr_ff(27),
      R => minusOp_0
    );
\sound_addr_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(28),
      Q => sound_addr_ff(28),
      R => minusOp_0
    );
\sound_addr_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(29),
      Q => sound_addr_ff(29),
      R => minusOp_0
    );
\sound_addr_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(2),
      Q => sound_addr_ff(2),
      R => minusOp_0
    );
\sound_addr_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(30),
      Q => sound_addr_ff(30),
      R => minusOp_0
    );
\sound_addr_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(31),
      Q => sound_addr_ff(31),
      R => minusOp_0
    );
\sound_addr_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(3),
      Q => sound_addr_ff(3),
      R => minusOp_0
    );
\sound_addr_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(4),
      Q => sound_addr_ff(4),
      R => minusOp_0
    );
\sound_addr_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(5),
      Q => sound_addr_ff(5),
      R => minusOp_0
    );
\sound_addr_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(6),
      Q => sound_addr_ff(6),
      R => minusOp_0
    );
\sound_addr_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(7),
      Q => sound_addr_ff(7),
      R => minusOp_0
    );
\sound_addr_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(8),
      Q => sound_addr_ff(8),
      R => minusOp_0
    );
\sound_addr_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^sound_addr_ff0\,
      D => \sound_addr_ff_reg[31]_0\(9),
      Q => sound_addr_ff(9),
      R => minusOp_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher is
  port (
    s_axi_awready : out STD_LOGIC;
    debug_data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_awaddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_audio_out_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_dma_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_audio_out_bready : out STD_LOGIC;
    m_axi_dma_rready : out STD_LOGIC;
    m_axi_audio_out_awvalid : out STD_LOGIC;
    m_axi_audio_out_wvalid : out STD_LOGIC;
    m_axi_dma_arvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_audio_out_wready : in STD_LOGIC;
    m_axi_audio_out_aresetn : in STD_LOGIC;
    m_axi_audio_out_aclk : in STD_LOGIC;
    m_axi_dma_rvalid : in STD_LOGIC;
    m_axi_dma_aresetn : in STD_LOGIC;
    m_axi_dma_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    m_axi_dma_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    m_axi_dma_arready : in STD_LOGIC;
    m_axi_audio_out_bvalid : in STD_LOGIC;
    m_axi_audio_out_awready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher is
  signal audio_fetcher_M_AXI_AUDIO_OUT_inst_n_3 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_2 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_23 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_24 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_25 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_26 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_27 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_28 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_29 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_30 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_31 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_32 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_33 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_34 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_35 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_36 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_37 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_39 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_4 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_40 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_41 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_42 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_43 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_44 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_45 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_46 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_47 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_48 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_49 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_50 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_51 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_52 : STD_LOGIC;
  signal audio_fetcher_M_AXI_DMA_inst_n_53 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_1 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_56 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_57 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_58 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_59 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_60 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_61 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_62 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_63 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_64 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_65 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_66 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_67 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_68 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_69 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_70 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_71 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_72 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_73 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_74 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_75 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_76 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_77 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_78 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_79 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_80 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_81 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_82 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_83 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_84 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_85 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_86 : STD_LOGIC;
  signal audio_fetcher_S_AXI_inst_n_87 : STD_LOGIC;
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
  signal audio_fetcher_controller_inst_n_33 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_36 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_37 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_4 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_5 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_6 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_7 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_8 : STD_LOGIC;
  signal audio_fetcher_controller_inst_n_9 : STD_LOGIC;
  signal axi_araddr_ff0 : STD_LOGIC;
  signal curr_state_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_state_ff_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_state_ff_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^debug_data_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_out0 : STD_LOGIC;
  signal p_0_out0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal req_rv_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_rv_valid : STD_LOGIC;
  signal sample_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sound_addr_ff0 : STD_LOGIC;
begin
  debug_data_o(31 downto 0) <= \^debug_data_o\(31 downto 0);
audio_fetcher_M_AXI_AUDIO_OUT_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_AUDIO_OUT
     port map (
      D(31) => audio_fetcher_controller_inst_n_0,
      D(30) => audio_fetcher_controller_inst_n_1,
      D(29) => audio_fetcher_controller_inst_n_2,
      D(28) => audio_fetcher_controller_inst_n_3,
      D(27) => audio_fetcher_controller_inst_n_4,
      D(26) => audio_fetcher_controller_inst_n_5,
      D(25) => audio_fetcher_controller_inst_n_6,
      D(24) => audio_fetcher_controller_inst_n_7,
      D(23) => audio_fetcher_controller_inst_n_8,
      D(22) => audio_fetcher_controller_inst_n_9,
      D(21) => audio_fetcher_controller_inst_n_10,
      D(20) => audio_fetcher_controller_inst_n_11,
      D(19) => audio_fetcher_controller_inst_n_12,
      D(18) => audio_fetcher_controller_inst_n_13,
      D(17) => audio_fetcher_controller_inst_n_14,
      D(16) => audio_fetcher_controller_inst_n_15,
      D(15) => audio_fetcher_controller_inst_n_16,
      D(14) => audio_fetcher_controller_inst_n_17,
      D(13) => audio_fetcher_controller_inst_n_18,
      D(12) => audio_fetcher_controller_inst_n_19,
      D(11) => audio_fetcher_controller_inst_n_20,
      D(10) => audio_fetcher_controller_inst_n_21,
      D(9) => audio_fetcher_controller_inst_n_22,
      D(8) => audio_fetcher_controller_inst_n_23,
      D(7) => audio_fetcher_controller_inst_n_24,
      D(6) => audio_fetcher_controller_inst_n_25,
      D(5) => audio_fetcher_controller_inst_n_26,
      D(4) => audio_fetcher_controller_inst_n_27,
      D(3) => audio_fetcher_controller_inst_n_28,
      D(2) => audio_fetcher_controller_inst_n_29,
      D(1) => audio_fetcher_controller_inst_n_30,
      D(0) => audio_fetcher_controller_inst_n_31,
      \FSM_sequential_curr_state_ff_reg[1]_0\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_3,
      Q(1) => curr_state_ff_1(3),
      Q(0) => curr_state_ff_1(0),
      \axi_awaddr_ff_reg[2]_0\ => audio_fetcher_controller_inst_n_36,
      curr_state_ff(1 downto 0) => curr_state_ff(1 downto 0),
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
audio_fetcher_M_AXI_DMA_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_M_AXI_DMA
     port map (
      A(15) => sample_ff(31),
      A(14 downto 0) => sample_ff(14 downto 0),
      E(0) => axi_araddr_ff0,
      \FSM_sequential_curr_state_ff_reg[0]_0\ => audio_fetcher_controller_inst_n_37,
      \FSM_sequential_curr_state_ff_reg[1]_0\ => audio_fetcher_M_AXI_DMA_inst_n_2,
      \FSM_sequential_curr_state_ff_reg[1]_1\ => audio_fetcher_M_AXI_DMA_inst_n_4,
      Q(1) => curr_state_ff_1(3),
      Q(0) => curr_state_ff_1(0),
      \axi_rdata_ff_reg[31]_0\(31) => p_0_out0,
      \axi_rdata_ff_reg[31]_0\(30) => audio_fetcher_M_AXI_DMA_inst_n_23,
      \axi_rdata_ff_reg[31]_0\(29) => audio_fetcher_M_AXI_DMA_inst_n_24,
      \axi_rdata_ff_reg[31]_0\(28) => audio_fetcher_M_AXI_DMA_inst_n_25,
      \axi_rdata_ff_reg[31]_0\(27) => audio_fetcher_M_AXI_DMA_inst_n_26,
      \axi_rdata_ff_reg[31]_0\(26) => audio_fetcher_M_AXI_DMA_inst_n_27,
      \axi_rdata_ff_reg[31]_0\(25) => audio_fetcher_M_AXI_DMA_inst_n_28,
      \axi_rdata_ff_reg[31]_0\(24) => audio_fetcher_M_AXI_DMA_inst_n_29,
      \axi_rdata_ff_reg[31]_0\(23) => audio_fetcher_M_AXI_DMA_inst_n_30,
      \axi_rdata_ff_reg[31]_0\(22) => audio_fetcher_M_AXI_DMA_inst_n_31,
      \axi_rdata_ff_reg[31]_0\(21) => audio_fetcher_M_AXI_DMA_inst_n_32,
      \axi_rdata_ff_reg[31]_0\(20) => audio_fetcher_M_AXI_DMA_inst_n_33,
      \axi_rdata_ff_reg[31]_0\(19) => audio_fetcher_M_AXI_DMA_inst_n_34,
      \axi_rdata_ff_reg[31]_0\(18) => audio_fetcher_M_AXI_DMA_inst_n_35,
      \axi_rdata_ff_reg[31]_0\(17) => audio_fetcher_M_AXI_DMA_inst_n_36,
      \axi_rdata_ff_reg[31]_0\(16) => audio_fetcher_M_AXI_DMA_inst_n_37,
      \axi_rdata_ff_reg[31]_0\(15) => p_0_out0_in0,
      \axi_rdata_ff_reg[31]_0\(14) => audio_fetcher_M_AXI_DMA_inst_n_39,
      \axi_rdata_ff_reg[31]_0\(13) => audio_fetcher_M_AXI_DMA_inst_n_40,
      \axi_rdata_ff_reg[31]_0\(12) => audio_fetcher_M_AXI_DMA_inst_n_41,
      \axi_rdata_ff_reg[31]_0\(11) => audio_fetcher_M_AXI_DMA_inst_n_42,
      \axi_rdata_ff_reg[31]_0\(10) => audio_fetcher_M_AXI_DMA_inst_n_43,
      \axi_rdata_ff_reg[31]_0\(9) => audio_fetcher_M_AXI_DMA_inst_n_44,
      \axi_rdata_ff_reg[31]_0\(8) => audio_fetcher_M_AXI_DMA_inst_n_45,
      \axi_rdata_ff_reg[31]_0\(7) => audio_fetcher_M_AXI_DMA_inst_n_46,
      \axi_rdata_ff_reg[31]_0\(6) => audio_fetcher_M_AXI_DMA_inst_n_47,
      \axi_rdata_ff_reg[31]_0\(5) => audio_fetcher_M_AXI_DMA_inst_n_48,
      \axi_rdata_ff_reg[31]_0\(4) => audio_fetcher_M_AXI_DMA_inst_n_49,
      \axi_rdata_ff_reg[31]_0\(3) => audio_fetcher_M_AXI_DMA_inst_n_50,
      \axi_rdata_ff_reg[31]_0\(2) => audio_fetcher_M_AXI_DMA_inst_n_51,
      \axi_rdata_ff_reg[31]_0\(1) => audio_fetcher_M_AXI_DMA_inst_n_52,
      \axi_rdata_ff_reg[31]_0\(0) => audio_fetcher_M_AXI_DMA_inst_n_53,
      curr_state_ff(1 downto 0) => curr_state_ff_0(1 downto 0),
      m_axi_dma_aclk => m_axi_dma_aclk,
      m_axi_dma_araddr(31 downto 0) => m_axi_dma_araddr(31 downto 0),
      m_axi_dma_aresetn => m_axi_dma_aresetn,
      m_axi_dma_arready => m_axi_dma_arready,
      m_axi_dma_arvalid => m_axi_dma_arvalid,
      m_axi_dma_rdata(31 downto 0) => m_axi_dma_rdata(31 downto 0),
      m_axi_dma_rready => m_axi_dma_rready,
      m_axi_dma_rvalid => m_axi_dma_rvalid,
      req_rv_addr(31 downto 0) => req_rv_addr(31 downto 0),
      scaled_sample_ff_reg(0) => audio_fetcher_controller_inst_n_33
    );
audio_fetcher_S_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_S_AXI
     port map (
      Q(0) => p_1_in,
      debug_data_o(31 downto 0) => \^debug_data_o\(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => audio_fetcher_S_AXI_inst_n_1,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
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
      s_rv_valid => s_rv_valid,
      \slv_reg1_reg[31]_0\(15) => slv_reg1(31),
      \slv_reg1_reg[31]_0\(14 downto 0) => slv_reg1(14 downto 0),
      sound_addr_ff0 => sound_addr_ff0,
      \sound_addr_ff_reg[31]_0\(31) => audio_fetcher_S_AXI_inst_n_56,
      \sound_addr_ff_reg[31]_0\(30) => audio_fetcher_S_AXI_inst_n_57,
      \sound_addr_ff_reg[31]_0\(29) => audio_fetcher_S_AXI_inst_n_58,
      \sound_addr_ff_reg[31]_0\(28) => audio_fetcher_S_AXI_inst_n_59,
      \sound_addr_ff_reg[31]_0\(27) => audio_fetcher_S_AXI_inst_n_60,
      \sound_addr_ff_reg[31]_0\(26) => audio_fetcher_S_AXI_inst_n_61,
      \sound_addr_ff_reg[31]_0\(25) => audio_fetcher_S_AXI_inst_n_62,
      \sound_addr_ff_reg[31]_0\(24) => audio_fetcher_S_AXI_inst_n_63,
      \sound_addr_ff_reg[31]_0\(23) => audio_fetcher_S_AXI_inst_n_64,
      \sound_addr_ff_reg[31]_0\(22) => audio_fetcher_S_AXI_inst_n_65,
      \sound_addr_ff_reg[31]_0\(21) => audio_fetcher_S_AXI_inst_n_66,
      \sound_addr_ff_reg[31]_0\(20) => audio_fetcher_S_AXI_inst_n_67,
      \sound_addr_ff_reg[31]_0\(19) => audio_fetcher_S_AXI_inst_n_68,
      \sound_addr_ff_reg[31]_0\(18) => audio_fetcher_S_AXI_inst_n_69,
      \sound_addr_ff_reg[31]_0\(17) => audio_fetcher_S_AXI_inst_n_70,
      \sound_addr_ff_reg[31]_0\(16) => audio_fetcher_S_AXI_inst_n_71,
      \sound_addr_ff_reg[31]_0\(15) => audio_fetcher_S_AXI_inst_n_72,
      \sound_addr_ff_reg[31]_0\(14) => audio_fetcher_S_AXI_inst_n_73,
      \sound_addr_ff_reg[31]_0\(13) => audio_fetcher_S_AXI_inst_n_74,
      \sound_addr_ff_reg[31]_0\(12) => audio_fetcher_S_AXI_inst_n_75,
      \sound_addr_ff_reg[31]_0\(11) => audio_fetcher_S_AXI_inst_n_76,
      \sound_addr_ff_reg[31]_0\(10) => audio_fetcher_S_AXI_inst_n_77,
      \sound_addr_ff_reg[31]_0\(9) => audio_fetcher_S_AXI_inst_n_78,
      \sound_addr_ff_reg[31]_0\(8) => audio_fetcher_S_AXI_inst_n_79,
      \sound_addr_ff_reg[31]_0\(7) => audio_fetcher_S_AXI_inst_n_80,
      \sound_addr_ff_reg[31]_0\(6) => audio_fetcher_S_AXI_inst_n_81,
      \sound_addr_ff_reg[31]_0\(5) => audio_fetcher_S_AXI_inst_n_82,
      \sound_addr_ff_reg[31]_0\(4) => audio_fetcher_S_AXI_inst_n_83,
      \sound_addr_ff_reg[31]_0\(3) => audio_fetcher_S_AXI_inst_n_84,
      \sound_addr_ff_reg[31]_0\(2) => audio_fetcher_S_AXI_inst_n_85,
      \sound_addr_ff_reg[31]_0\(1) => audio_fetcher_S_AXI_inst_n_86,
      \sound_addr_ff_reg[31]_0\(0) => audio_fetcher_S_AXI_inst_n_87
    );
audio_fetcher_controller_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher_controller
     port map (
      A(15) => sample_ff(31),
      A(14 downto 0) => sample_ff(14 downto 0),
      D(31) => p_0_out0,
      D(30) => audio_fetcher_M_AXI_DMA_inst_n_23,
      D(29) => audio_fetcher_M_AXI_DMA_inst_n_24,
      D(28) => audio_fetcher_M_AXI_DMA_inst_n_25,
      D(27) => audio_fetcher_M_AXI_DMA_inst_n_26,
      D(26) => audio_fetcher_M_AXI_DMA_inst_n_27,
      D(25) => audio_fetcher_M_AXI_DMA_inst_n_28,
      D(24) => audio_fetcher_M_AXI_DMA_inst_n_29,
      D(23) => audio_fetcher_M_AXI_DMA_inst_n_30,
      D(22) => audio_fetcher_M_AXI_DMA_inst_n_31,
      D(21) => audio_fetcher_M_AXI_DMA_inst_n_32,
      D(20) => audio_fetcher_M_AXI_DMA_inst_n_33,
      D(19) => audio_fetcher_M_AXI_DMA_inst_n_34,
      D(18) => audio_fetcher_M_AXI_DMA_inst_n_35,
      D(17) => audio_fetcher_M_AXI_DMA_inst_n_36,
      D(16) => audio_fetcher_M_AXI_DMA_inst_n_37,
      D(15) => p_0_out0_in0,
      D(14) => audio_fetcher_M_AXI_DMA_inst_n_39,
      D(13) => audio_fetcher_M_AXI_DMA_inst_n_40,
      D(12) => audio_fetcher_M_AXI_DMA_inst_n_41,
      D(11) => audio_fetcher_M_AXI_DMA_inst_n_42,
      D(10) => audio_fetcher_M_AXI_DMA_inst_n_43,
      D(9) => audio_fetcher_M_AXI_DMA_inst_n_44,
      D(8) => audio_fetcher_M_AXI_DMA_inst_n_45,
      D(7) => audio_fetcher_M_AXI_DMA_inst_n_46,
      D(6) => audio_fetcher_M_AXI_DMA_inst_n_47,
      D(5) => audio_fetcher_M_AXI_DMA_inst_n_48,
      D(4) => audio_fetcher_M_AXI_DMA_inst_n_49,
      D(3) => audio_fetcher_M_AXI_DMA_inst_n_50,
      D(2) => audio_fetcher_M_AXI_DMA_inst_n_51,
      D(1) => audio_fetcher_M_AXI_DMA_inst_n_52,
      D(0) => audio_fetcher_M_AXI_DMA_inst_n_53,
      E(0) => axi_araddr_ff0,
      Q(0) => p_1_in,
      curr_state_ff(1 downto 0) => curr_state_ff_0(1 downto 0),
      curr_state_ff_0(1 downto 0) => curr_state_ff(1 downto 0),
      \curr_state_ff_reg[0]_0\ => audio_fetcher_controller_inst_n_37,
      \curr_state_ff_reg[0]_1\ => audio_fetcher_M_AXI_AUDIO_OUT_inst_n_3,
      \curr_state_ff_reg[1]_0\ => audio_fetcher_M_AXI_DMA_inst_n_2,
      \curr_state_ff_reg[1]_1\ => audio_fetcher_M_AXI_DMA_inst_n_4,
      \curr_state_ff_reg[3]_0\(1) => curr_state_ff_1(3),
      \curr_state_ff_reg[3]_0\(0) => curr_state_ff_1(0),
      \curr_state_ff_reg[3]_1\ => audio_fetcher_controller_inst_n_36,
      debug_data_o(31 downto 0) => \^debug_data_o\(31 downto 0),
      minusOp_0 => audio_fetcher_S_AXI_inst_n_1,
      req_rv_addr(31 downto 0) => req_rv_addr(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_rv_valid => s_rv_valid,
      \sample_index_ff_reg[0]_0\(0) => audio_fetcher_controller_inst_n_33,
      scaled_sample_ff_reg_0(31) => audio_fetcher_controller_inst_n_0,
      scaled_sample_ff_reg_0(30) => audio_fetcher_controller_inst_n_1,
      scaled_sample_ff_reg_0(29) => audio_fetcher_controller_inst_n_2,
      scaled_sample_ff_reg_0(28) => audio_fetcher_controller_inst_n_3,
      scaled_sample_ff_reg_0(27) => audio_fetcher_controller_inst_n_4,
      scaled_sample_ff_reg_0(26) => audio_fetcher_controller_inst_n_5,
      scaled_sample_ff_reg_0(25) => audio_fetcher_controller_inst_n_6,
      scaled_sample_ff_reg_0(24) => audio_fetcher_controller_inst_n_7,
      scaled_sample_ff_reg_0(23) => audio_fetcher_controller_inst_n_8,
      scaled_sample_ff_reg_0(22) => audio_fetcher_controller_inst_n_9,
      scaled_sample_ff_reg_0(21) => audio_fetcher_controller_inst_n_10,
      scaled_sample_ff_reg_0(20) => audio_fetcher_controller_inst_n_11,
      scaled_sample_ff_reg_0(19) => audio_fetcher_controller_inst_n_12,
      scaled_sample_ff_reg_0(18) => audio_fetcher_controller_inst_n_13,
      scaled_sample_ff_reg_0(17) => audio_fetcher_controller_inst_n_14,
      scaled_sample_ff_reg_0(16) => audio_fetcher_controller_inst_n_15,
      scaled_sample_ff_reg_0(15) => audio_fetcher_controller_inst_n_16,
      scaled_sample_ff_reg_0(14) => audio_fetcher_controller_inst_n_17,
      scaled_sample_ff_reg_0(13) => audio_fetcher_controller_inst_n_18,
      scaled_sample_ff_reg_0(12) => audio_fetcher_controller_inst_n_19,
      scaled_sample_ff_reg_0(11) => audio_fetcher_controller_inst_n_20,
      scaled_sample_ff_reg_0(10) => audio_fetcher_controller_inst_n_21,
      scaled_sample_ff_reg_0(9) => audio_fetcher_controller_inst_n_22,
      scaled_sample_ff_reg_0(8) => audio_fetcher_controller_inst_n_23,
      scaled_sample_ff_reg_0(7) => audio_fetcher_controller_inst_n_24,
      scaled_sample_ff_reg_0(6) => audio_fetcher_controller_inst_n_25,
      scaled_sample_ff_reg_0(5) => audio_fetcher_controller_inst_n_26,
      scaled_sample_ff_reg_0(4) => audio_fetcher_controller_inst_n_27,
      scaled_sample_ff_reg_0(3) => audio_fetcher_controller_inst_n_28,
      scaled_sample_ff_reg_0(2) => audio_fetcher_controller_inst_n_29,
      scaled_sample_ff_reg_0(1) => audio_fetcher_controller_inst_n_30,
      scaled_sample_ff_reg_0(0) => audio_fetcher_controller_inst_n_31,
      scaled_sample_ff_reg_1(15) => slv_reg1(31),
      scaled_sample_ff_reg_1(14 downto 0) => slv_reg1(14 downto 0),
      sound_addr_ff0 => sound_addr_ff0,
      \sound_addr_ff_reg[31]_0\(31) => audio_fetcher_S_AXI_inst_n_56,
      \sound_addr_ff_reg[31]_0\(30) => audio_fetcher_S_AXI_inst_n_57,
      \sound_addr_ff_reg[31]_0\(29) => audio_fetcher_S_AXI_inst_n_58,
      \sound_addr_ff_reg[31]_0\(28) => audio_fetcher_S_AXI_inst_n_59,
      \sound_addr_ff_reg[31]_0\(27) => audio_fetcher_S_AXI_inst_n_60,
      \sound_addr_ff_reg[31]_0\(26) => audio_fetcher_S_AXI_inst_n_61,
      \sound_addr_ff_reg[31]_0\(25) => audio_fetcher_S_AXI_inst_n_62,
      \sound_addr_ff_reg[31]_0\(24) => audio_fetcher_S_AXI_inst_n_63,
      \sound_addr_ff_reg[31]_0\(23) => audio_fetcher_S_AXI_inst_n_64,
      \sound_addr_ff_reg[31]_0\(22) => audio_fetcher_S_AXI_inst_n_65,
      \sound_addr_ff_reg[31]_0\(21) => audio_fetcher_S_AXI_inst_n_66,
      \sound_addr_ff_reg[31]_0\(20) => audio_fetcher_S_AXI_inst_n_67,
      \sound_addr_ff_reg[31]_0\(19) => audio_fetcher_S_AXI_inst_n_68,
      \sound_addr_ff_reg[31]_0\(18) => audio_fetcher_S_AXI_inst_n_69,
      \sound_addr_ff_reg[31]_0\(17) => audio_fetcher_S_AXI_inst_n_70,
      \sound_addr_ff_reg[31]_0\(16) => audio_fetcher_S_AXI_inst_n_71,
      \sound_addr_ff_reg[31]_0\(15) => audio_fetcher_S_AXI_inst_n_72,
      \sound_addr_ff_reg[31]_0\(14) => audio_fetcher_S_AXI_inst_n_73,
      \sound_addr_ff_reg[31]_0\(13) => audio_fetcher_S_AXI_inst_n_74,
      \sound_addr_ff_reg[31]_0\(12) => audio_fetcher_S_AXI_inst_n_75,
      \sound_addr_ff_reg[31]_0\(11) => audio_fetcher_S_AXI_inst_n_76,
      \sound_addr_ff_reg[31]_0\(10) => audio_fetcher_S_AXI_inst_n_77,
      \sound_addr_ff_reg[31]_0\(9) => audio_fetcher_S_AXI_inst_n_78,
      \sound_addr_ff_reg[31]_0\(8) => audio_fetcher_S_AXI_inst_n_79,
      \sound_addr_ff_reg[31]_0\(7) => audio_fetcher_S_AXI_inst_n_80,
      \sound_addr_ff_reg[31]_0\(6) => audio_fetcher_S_AXI_inst_n_81,
      \sound_addr_ff_reg[31]_0\(5) => audio_fetcher_S_AXI_inst_n_82,
      \sound_addr_ff_reg[31]_0\(4) => audio_fetcher_S_AXI_inst_n_83,
      \sound_addr_ff_reg[31]_0\(3) => audio_fetcher_S_AXI_inst_n_84,
      \sound_addr_ff_reg[31]_0\(2) => audio_fetcher_S_AXI_inst_n_85,
      \sound_addr_ff_reg[31]_0\(1) => audio_fetcher_S_AXI_inst_n_86,
      \sound_addr_ff_reg[31]_0\(0) => audio_fetcher_S_AXI_inst_n_87
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "audio_hw_platform_audio_fetcher_0_0,audio_fetcher,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "audio_fetcher,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_audio_out_awaddr\ : STD_LOGIC_VECTOR ( 25 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of m_axi_audio_out_aclk : signal is "xilinx.com:signal:clock:1.0 m_axi_audio_out_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axi_audio_out_aclk : signal is "XIL_INTERFACENAME m_axi_audio_out_aclk, ASSOCIATED_BUSIF m_axi_audio_out, ASSOCIATED_RESET m_axi_audio_out_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute x_interface_parameter of m_axi_dma_aclk : signal is "XIL_INTERFACENAME m_axi_dma_aclk, ASSOCIATED_BUSIF m_axi_dma, ASSOCIATED_RESET m_axi_dma_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute x_interface_parameter of m_axi_audio_out_awaddr : signal is "XIL_INTERFACENAME m_axi_audio_out, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  attribute x_interface_parameter of m_axi_dma_awid : signal is "XIL_INTERFACENAME m_axi_dma, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN audio_hw_platform_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
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
  m_axi_audio_out_awaddr(16) <= \<const0>\;
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
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_fetcher
     port map (
      debug_data_o(31 downto 0) => debug_data_o(31 downto 0),
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
      s_axi_wvalid => s_axi_wvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
