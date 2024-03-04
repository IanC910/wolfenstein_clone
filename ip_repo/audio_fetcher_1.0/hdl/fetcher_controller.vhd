library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fetcher_controller is
    generic(
        AXI_DATA_WIDTH                  : integer := 32;
        C_M_AXI_DMA_ADDR_WIDTH          : integer := 32;
        C_M_AXI_DMA_ID_WIDTH            : integer := 1;
        C_M_AXI_AUDIO_OUT_ADDR_WIDTH    : integer := 32;
    );
    port(
        s_rv_ready          : out   std_logic;
        s_rv_valid          : in    std_logic;
        s_rv_sound_addr     : in    std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        s_rv_vol_coef       : in    std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);

        req_rv_ready        : in    std_logic;
        req_rv_valid        : out   std_logic;
        req_rv_addr         : out   std_logic_vector(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
        req_rv_id           : out   std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);

        return_rv_ready     : out   std_logic;
        return_rv_valid     : in    std_logic;
        return_rv_data      : in    std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        return_rv_id        : in    std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);
        return_rv_error     : in    std_logic;

        out_rv_ready        : in    std_logic;
        out_rv_valid        : out   std_logic;
        out_rv_addr         : out   std_logic_vector(C_M_AXI_AUDIO_OUT_ADDR_WIDTH - 1 downto 0);
        out_rv_data         : out   std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        out_rv_error        : in    std_logic;
    );
end entity;

architecture behaviour of fetcher_controller is

begin

end architecture;