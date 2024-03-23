library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity audio_fetcher_M_AXI_AUDIO_OUT is
    generic (
        C_M_AXI_ADDR_WIDTH	        : integer := 32;
        C_M_AXI_DATA_WIDTH	        : integer := 32
    );
    port (
        out_rv_ready    : out   std_logic;
        out_rv_valid    : in    std_logic;
        out_rv_addr     : in    std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        out_rv_data     : in    std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);

        M_AXI_ACLK	    : in std_logic;
        M_AXI_ARESETN	: in std_logic;

        M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
        M_AXI_AWVALID	: out std_logic;
        M_AXI_AWREADY	: in std_logic;
        M_AXI_WDATA	    : out std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
        M_AXI_WSTRB	    : out std_logic_vector(C_M_AXI_DATA_WIDTH / 8 - 1 downto 0);
        M_AXI_WVALID	: out std_logic;
        M_AXI_WREADY	: in std_logic;
        M_AXI_BRESP	    : in std_logic_vector(1 downto 0);
        M_AXI_BVALID	: in std_logic;
        M_AXI_BREADY	: out std_logic;

        M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
        M_AXI_ARVALID	: out std_logic;
        M_AXI_ARREADY	: in std_logic;
        M_AXI_RDATA	    : in std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
        M_AXI_RRESP	    : in std_logic_vector(1 downto 0);
        M_AXI_RVALID	: in std_logic;
        M_AXI_RREADY	: out std_logic
	);
end audio_fetcher_M_AXI_AUDIO_OUT;

architecture implementation of audio_fetcher_M_AXI_AUDIO_OUT is

    signal axi_awvalid	        : std_logic;
    signal axi_awaddr_ff	    : std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal axi_wvalid	        : std_logic;
    signal axi_wdata_ff	        : std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
    signal axi_bready	        : std_logic;

    type state is (
        IDLE,
        AWVALID,
        WVALID,
        BREADY
    );

    signal curr_state_ff    : state;
    signal next_state       : state;

begin
    -- Read Channels (unused)
    M_AXI_ARADDR	<= (others => '0');
    M_AXI_ARVALID	<= '0';
    M_AXI_ARPROT	<= (others => '0');
    M_AXI_RREADY	<= '0';

    -- Write Channels
    M_AXI_AWVALID	<= axi_awvalid;
    M_AXI_AWADDR	<= axi_awaddr_ff;
    M_AXI_AWPROT	<= "000";

    M_AXI_WVALID	<= axi_wvalid;
    M_AXI_WDATA	    <= axi_wdata_ff;
    M_AXI_WSTRB	    <= (others => '1');

    M_AXI_BREADY	<= axi_bready;

    out_rv_ready    <= '1' when (curr_state_ff = IDLE) else '0';
    axi_awvalid     <= '1' when (curr_state_ff = AWVALID) else '0';
    axi_wvalid      <= '1' when (curr_state_ff = WVALID) else '0';
    axi_bready      <= '1' when (curr_state_ff = BREADY) else '0';

    -- Main FSM
    process(M_AXI_ACLK) begin
        if(rising_edge(M_AXI_ACLK)) then
            if(M_AXI_ARESETN = '0') then
                curr_state_ff <= IDLE;
            else
                curr_state_ff <= next_state;
            end if;
        end if;
    end process;

    -- Next State Logic
    process(
        curr_state_ff,
        out_rv_valid,
        M_AXI_AWREADY,
        M_AXI_WREADY,
        M_AXI_BVALID
    ) begin
        next_state <= curr_state_ff;

        case curr_state_ff is
            when IDLE =>
                if(out_rv_valid = '1') then
                    next_state <= AWVALID;
                end if;

            when AWVALID =>
                if(M_AXI_AWREADY = '1') then
                    next_state <= WVALID;
                end if;

            when WVALID =>
                if(M_AXI_WREADY = '1') then
                    next_state <= BREADY;
                end if;

            when BREADY =>
                if(M_AXI_BVALID = '1') then
                    next_state <= IDLE;
                end if;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

    -- Out RV Interface
    process(M_AXI_ACLK) begin
        if(rising_edge(M_AXI_ACLK)) then
            if(M_AXI_ARESETN = '0') then
                axi_awaddr_ff   <= (others => '0');
                axi_wdata_ff    <= (others => '0');
            else
                if(curr_state_ff = IDLE and out_rv_valid = '1') then
                    axi_awaddr_ff   <= out_rv_addr;
                    axi_wdata_ff    <= out_rv_data;
                end if;
            end if;
        end if;
    end process;

end implementation;
