--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Sun Mar 17 20:40:31 2024
--Host        : IC-VivoBook running 64-bit major release  (build 9200)
--Command     : generate_target wolfenstein_platform_wrapper.bd
--Design      : wolfenstein_platform_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_wrapper is
  port (
    BCLK : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIO_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    JC_pin10_io : inout STD_LOGIC;
    JC_pin1_io : inout STD_LOGIC;
    JC_pin2_io : inout STD_LOGIC;
    JC_pin3_io : inout STD_LOGIC;
    JC_pin4_io : inout STD_LOGIC;
    JC_pin7_io : inout STD_LOGIC;
    JC_pin8_io : inout STD_LOGIC;
    JC_pin9_io : inout STD_LOGIC;
    JD_pin10_io : inout STD_LOGIC;
    JD_pin1_io : inout STD_LOGIC;
    JD_pin2_io : inout STD_LOGIC;
    JD_pin3_io : inout STD_LOGIC;
    JD_pin4_io : inout STD_LOGIC;
    JD_pin7_io : inout STD_LOGIC;
    JD_pin8_io : inout STD_LOGIC;
    JD_pin9_io : inout STD_LOGIC;
    LRCLK : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_VS : out STD_LOGIC;
    btns : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end wolfenstein_platform_wrapper;

architecture STRUCTURE of wolfenstein_platform_wrapper is
  component wolfenstein_platform is
  port (
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btns : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MCLK : out STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    LRCLK : out STD_LOGIC;
    BCLK : out STD_LOGIC;
    JD_pin1_o : out STD_LOGIC;
    JD_pin7_i : in STD_LOGIC;
    JD_pin2_o : out STD_LOGIC;
    JD_pin8_i : in STD_LOGIC;
    JD_pin3_o : out STD_LOGIC;
    JD_pin9_i : in STD_LOGIC;
    JD_pin10_o : out STD_LOGIC;
    JD_pin4_o : out STD_LOGIC;
    JD_pin3_i : in STD_LOGIC;
    JD_pin4_i : in STD_LOGIC;
    JD_pin1_i : in STD_LOGIC;
    JD_pin2_i : in STD_LOGIC;
    JD_pin10_t : out STD_LOGIC;
    JD_pin8_t : out STD_LOGIC;
    JD_pin9_t : out STD_LOGIC;
    JD_pin4_t : out STD_LOGIC;
    JD_pin9_o : out STD_LOGIC;
    JD_pin10_i : in STD_LOGIC;
    JD_pin7_t : out STD_LOGIC;
    JD_pin1_t : out STD_LOGIC;
    JD_pin2_t : out STD_LOGIC;
    JD_pin7_o : out STD_LOGIC;
    JD_pin3_t : out STD_LOGIC;
    JD_pin8_o : out STD_LOGIC;
    GPIO_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GPIO_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    GPIO_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    JC_pin1_o : out STD_LOGIC;
    JC_pin7_i : in STD_LOGIC;
    JC_pin2_o : out STD_LOGIC;
    JC_pin8_i : in STD_LOGIC;
    JC_pin3_o : out STD_LOGIC;
    JC_pin9_i : in STD_LOGIC;
    JC_pin10_o : out STD_LOGIC;
    JC_pin4_o : out STD_LOGIC;
    JC_pin3_i : in STD_LOGIC;
    JC_pin4_i : in STD_LOGIC;
    JC_pin1_i : in STD_LOGIC;
    JC_pin2_i : in STD_LOGIC;
    JC_pin10_t : out STD_LOGIC;
    JC_pin8_t : out STD_LOGIC;
    JC_pin9_t : out STD_LOGIC;
    JC_pin4_t : out STD_LOGIC;
    JC_pin9_o : out STD_LOGIC;
    JC_pin10_i : in STD_LOGIC;
    JC_pin7_t : out STD_LOGIC;
    JC_pin1_t : out STD_LOGIC;
    JC_pin2_t : out STD_LOGIC;
    JC_pin7_o : out STD_LOGIC;
    JC_pin3_t : out STD_LOGIC;
    JC_pin8_o : out STD_LOGIC
  );
  end component wolfenstein_platform;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal GPIO_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal JC_pin10_i : STD_LOGIC;
  signal JC_pin10_o : STD_LOGIC;
  signal JC_pin10_t : STD_LOGIC;
  signal JC_pin1_i : STD_LOGIC;
  signal JC_pin1_o : STD_LOGIC;
  signal JC_pin1_t : STD_LOGIC;
  signal JC_pin2_i : STD_LOGIC;
  signal JC_pin2_o : STD_LOGIC;
  signal JC_pin2_t : STD_LOGIC;
  signal JC_pin3_i : STD_LOGIC;
  signal JC_pin3_o : STD_LOGIC;
  signal JC_pin3_t : STD_LOGIC;
  signal JC_pin4_i : STD_LOGIC;
  signal JC_pin4_o : STD_LOGIC;
  signal JC_pin4_t : STD_LOGIC;
  signal JC_pin7_i : STD_LOGIC;
  signal JC_pin7_o : STD_LOGIC;
  signal JC_pin7_t : STD_LOGIC;
  signal JC_pin8_i : STD_LOGIC;
  signal JC_pin8_o : STD_LOGIC;
  signal JC_pin8_t : STD_LOGIC;
  signal JC_pin9_i : STD_LOGIC;
  signal JC_pin9_o : STD_LOGIC;
  signal JC_pin9_t : STD_LOGIC;
  signal JD_pin10_i : STD_LOGIC;
  signal JD_pin10_o : STD_LOGIC;
  signal JD_pin10_t : STD_LOGIC;
  signal JD_pin1_i : STD_LOGIC;
  signal JD_pin1_o : STD_LOGIC;
  signal JD_pin1_t : STD_LOGIC;
  signal JD_pin2_i : STD_LOGIC;
  signal JD_pin2_o : STD_LOGIC;
  signal JD_pin2_t : STD_LOGIC;
  signal JD_pin3_i : STD_LOGIC;
  signal JD_pin3_o : STD_LOGIC;
  signal JD_pin3_t : STD_LOGIC;
  signal JD_pin4_i : STD_LOGIC;
  signal JD_pin4_o : STD_LOGIC;
  signal JD_pin4_t : STD_LOGIC;
  signal JD_pin7_i : STD_LOGIC;
  signal JD_pin7_o : STD_LOGIC;
  signal JD_pin7_t : STD_LOGIC;
  signal JD_pin8_i : STD_LOGIC;
  signal JD_pin8_o : STD_LOGIC;
  signal JD_pin8_t : STD_LOGIC;
  signal JD_pin9_i : STD_LOGIC;
  signal JD_pin9_o : STD_LOGIC;
  signal JD_pin9_t : STD_LOGIC;
begin
GPIO_tri_iobuf_0: component IOBUF
     port map (
      I => GPIO_tri_o_0(0),
      IO => GPIO_tri_io(0),
      O => GPIO_tri_i_0(0),
      T => GPIO_tri_t_0(0)
    );
GPIO_tri_iobuf_1: component IOBUF
     port map (
      I => GPIO_tri_o_1(1),
      IO => GPIO_tri_io(1),
      O => GPIO_tri_i_1(1),
      T => GPIO_tri_t_1(1)
    );
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
JC_pin10_iobuf: component IOBUF
     port map (
      I => JC_pin10_o,
      IO => JC_pin10_io,
      O => JC_pin10_i,
      T => JC_pin10_t
    );
JC_pin1_iobuf: component IOBUF
     port map (
      I => JC_pin1_o,
      IO => JC_pin1_io,
      O => JC_pin1_i,
      T => JC_pin1_t
    );
JC_pin2_iobuf: component IOBUF
     port map (
      I => JC_pin2_o,
      IO => JC_pin2_io,
      O => JC_pin2_i,
      T => JC_pin2_t
    );
JC_pin3_iobuf: component IOBUF
     port map (
      I => JC_pin3_o,
      IO => JC_pin3_io,
      O => JC_pin3_i,
      T => JC_pin3_t
    );
JC_pin4_iobuf: component IOBUF
     port map (
      I => JC_pin4_o,
      IO => JC_pin4_io,
      O => JC_pin4_i,
      T => JC_pin4_t
    );
JC_pin7_iobuf: component IOBUF
     port map (
      I => JC_pin7_o,
      IO => JC_pin7_io,
      O => JC_pin7_i,
      T => JC_pin7_t
    );
JC_pin8_iobuf: component IOBUF
     port map (
      I => JC_pin8_o,
      IO => JC_pin8_io,
      O => JC_pin8_i,
      T => JC_pin8_t
    );
JC_pin9_iobuf: component IOBUF
     port map (
      I => JC_pin9_o,
      IO => JC_pin9_io,
      O => JC_pin9_i,
      T => JC_pin9_t
    );
JD_pin10_iobuf: component IOBUF
     port map (
      I => JD_pin10_o,
      IO => JD_pin10_io,
      O => JD_pin10_i,
      T => JD_pin10_t
    );
JD_pin1_iobuf: component IOBUF
     port map (
      I => JD_pin1_o,
      IO => JD_pin1_io,
      O => JD_pin1_i,
      T => JD_pin1_t
    );
JD_pin2_iobuf: component IOBUF
     port map (
      I => JD_pin2_o,
      IO => JD_pin2_io,
      O => JD_pin2_i,
      T => JD_pin2_t
    );
JD_pin3_iobuf: component IOBUF
     port map (
      I => JD_pin3_o,
      IO => JD_pin3_io,
      O => JD_pin3_i,
      T => JD_pin3_t
    );
JD_pin4_iobuf: component IOBUF
     port map (
      I => JD_pin4_o,
      IO => JD_pin4_io,
      O => JD_pin4_i,
      T => JD_pin4_t
    );
JD_pin7_iobuf: component IOBUF
     port map (
      I => JD_pin7_o,
      IO => JD_pin7_io,
      O => JD_pin7_i,
      T => JD_pin7_t
    );
JD_pin8_iobuf: component IOBUF
     port map (
      I => JD_pin8_o,
      IO => JD_pin8_io,
      O => JD_pin8_i,
      T => JD_pin8_t
    );
JD_pin9_iobuf: component IOBUF
     port map (
      I => JD_pin9_o,
      IO => JD_pin9_io,
      O => JD_pin9_i,
      T => JD_pin9_t
    );
wolfenstein_platform_i: component wolfenstein_platform
     port map (
      BCLK => BCLK,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GPIO_tri_i(1) => GPIO_tri_i_1(1),
      GPIO_tri_i(0) => GPIO_tri_i_0(0),
      GPIO_tri_o(1) => GPIO_tri_o_1(1),
      GPIO_tri_o(0) => GPIO_tri_o_0(0),
      GPIO_tri_t(1) => GPIO_tri_t_1(1),
      GPIO_tri_t(0) => GPIO_tri_t_0(0),
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      JC_pin10_i => JC_pin10_i,
      JC_pin10_o => JC_pin10_o,
      JC_pin10_t => JC_pin10_t,
      JC_pin1_i => JC_pin1_i,
      JC_pin1_o => JC_pin1_o,
      JC_pin1_t => JC_pin1_t,
      JC_pin2_i => JC_pin2_i,
      JC_pin2_o => JC_pin2_o,
      JC_pin2_t => JC_pin2_t,
      JC_pin3_i => JC_pin3_i,
      JC_pin3_o => JC_pin3_o,
      JC_pin3_t => JC_pin3_t,
      JC_pin4_i => JC_pin4_i,
      JC_pin4_o => JC_pin4_o,
      JC_pin4_t => JC_pin4_t,
      JC_pin7_i => JC_pin7_i,
      JC_pin7_o => JC_pin7_o,
      JC_pin7_t => JC_pin7_t,
      JC_pin8_i => JC_pin8_i,
      JC_pin8_o => JC_pin8_o,
      JC_pin8_t => JC_pin8_t,
      JC_pin9_i => JC_pin9_i,
      JC_pin9_o => JC_pin9_o,
      JC_pin9_t => JC_pin9_t,
      JD_pin10_i => JD_pin10_i,
      JD_pin10_o => JD_pin10_o,
      JD_pin10_t => JD_pin10_t,
      JD_pin1_i => JD_pin1_i,
      JD_pin1_o => JD_pin1_o,
      JD_pin1_t => JD_pin1_t,
      JD_pin2_i => JD_pin2_i,
      JD_pin2_o => JD_pin2_o,
      JD_pin2_t => JD_pin2_t,
      JD_pin3_i => JD_pin3_i,
      JD_pin3_o => JD_pin3_o,
      JD_pin3_t => JD_pin3_t,
      JD_pin4_i => JD_pin4_i,
      JD_pin4_o => JD_pin4_o,
      JD_pin4_t => JD_pin4_t,
      JD_pin7_i => JD_pin7_i,
      JD_pin7_o => JD_pin7_o,
      JD_pin7_t => JD_pin7_t,
      JD_pin8_i => JD_pin8_i,
      JD_pin8_o => JD_pin8_o,
      JD_pin8_t => JD_pin8_t,
      JD_pin9_i => JD_pin9_i,
      JD_pin9_o => JD_pin9_o,
      JD_pin9_t => JD_pin9_t,
      LRCLK => LRCLK,
      MCLK => MCLK,
      SDATA_O => SDATA_O,
      VGA_B(3 downto 0) => VGA_B(3 downto 0),
      VGA_G(3 downto 0) => VGA_G(3 downto 0),
      VGA_HS => VGA_HS,
      VGA_R(3 downto 0) => VGA_R(3 downto 0),
      VGA_VS => VGA_VS,
      btns(4 downto 0) => btns(4 downto 0)
    );
end STRUCTURE;
