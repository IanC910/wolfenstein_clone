library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity btn_interrupt_gen is
	generic (
		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4;
        NUM_BTNS                : integer   := 5
	);
	port (
        btns            : in std_logic_vector(NUM_BTNS - 1 downto 0);
        interrupt       : out std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end btn_interrupt_gen;

architecture arch_imp of btn_interrupt_gen is

	component btn_interrupt_gen_S00_AXI is
		generic (
            C_S_AXI_DATA_WIDTH  : integer	:= 32;
            C_S_AXI_ADDR_WIDTH  : integer	:= 4;
            NUM_BTNS            : integer   := 5
		);
		port (
            btns                : in std_logic_vector(NUM_BTNS - 1 downto 0);
            new_btn_press       : in std_logic;
            interrupt           : out std_logic;

            S_AXI_ACLK          : in std_logic;
            S_AXI_ARESETN       : in std_logic;
            S_AXI_AWADDR        : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_AWPROT        : in std_logic_vector(2 downto 0);
            S_AXI_AWVALID       : in std_logic;
            S_AXI_AWREADY       : out std_logic;
            S_AXI_WDATA         : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_WSTRB         : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
            S_AXI_WVALID        : in std_logic;
            S_AXI_WREADY        : out std_logic;
            S_AXI_BRESP         : out std_logic_vector(1 downto 0);
            S_AXI_BVALID        : out std_logic;
            S_AXI_BREADY        : in std_logic;
            S_AXI_ARADDR        : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_ARPROT        : in std_logic_vector(2 downto 0);
            S_AXI_ARVALID       : in std_logic;
            S_AXI_ARREADY       : out std_logic;
            S_AXI_RDATA	        : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_RRESP	        : out std_logic_vector(1 downto 0);
            S_AXI_RVALID        : out std_logic;
            S_AXI_RREADY        : in std_logic
		);
	end component btn_interrupt_gen_S00_AXI;

	signal btns_r           : std_logic_vector(NUM_BTNS - 1 downto 0);
	signal btns_edges       : std_logic_vector(NUM_BTNS - 1 downto 0);
    signal new_btn_press    : std_logic;

begin

    process(s00_axi_aclk) begin
        if(rising_edge(s00_axi_aclk)) then
            btns_r <= btns;
        end if;
    end process;

    btns_edges <= btns xor btns_r;

    new_btn_press <= '1' when to_integer(unsigned(btns_edges)) > 0 else '0';

    btn_interrupt_gen_S00_AXI_inst : btn_interrupt_gen_S00_AXI
        generic map (
            C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH,
            NUM_BTNS            => NUM_BTNS
        )
        port map (
            btns            => btns,
            new_btn_press   => new_btn_press,
            interrupt       => interrupt,

            S_AXI_ACLK      => s00_axi_aclk,
            S_AXI_ARESETN   => s00_axi_aresetn,
            S_AXI_AWADDR    => s00_axi_awaddr,
            S_AXI_AWPROT	=> s00_axi_awprot,
            S_AXI_AWVALID	=> s00_axi_awvalid,
            S_AXI_AWREADY	=> s00_axi_awready,
            S_AXI_WDATA	    => s00_axi_wdata,
            S_AXI_WSTRB	    => s00_axi_wstrb,
            S_AXI_WVALID	=> s00_axi_wvalid,
            S_AXI_WREADY	=> s00_axi_wready,
            S_AXI_BRESP	    => s00_axi_bresp,
            S_AXI_BVALID	=> s00_axi_bvalid,
            S_AXI_BREADY	=> s00_axi_bready,
            S_AXI_ARADDR	=> s00_axi_araddr,
            S_AXI_ARPROT	=> s00_axi_arprot,
            S_AXI_ARVALID	=> s00_axi_arvalid,
            S_AXI_ARREADY	=> s00_axi_arready,
            S_AXI_RDATA	    => s00_axi_rdata,
            S_AXI_RRESP	    => s00_axi_rresp,
            S_AXI_RVALID	=> s00_axi_rvalid,
            S_AXI_RREADY	=> s00_axi_rready
        );

end arch_imp;
