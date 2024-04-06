-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar 17 22:52:56 2024
-- Host        : IC-VivoBook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top wolfenstein_platform_clk_wiz_0_0 -prefix
--               wolfenstein_platform_clk_wiz_0_0_ wolfenstein_platform_clk_wiz_0_0_stub.vhdl
-- Design      : wolfenstein_platform_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wolfenstein_platform_clk_wiz_0_0 is
  Port ( 
    pixel_clk : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end wolfenstein_platform_clk_wiz_0_0;

architecture stub of wolfenstein_platform_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_clk,resetn,clk_in1";
begin
end;
