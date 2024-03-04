library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity audio_fetcher_v1_0_M_AXI_DMA is
    generic (
        C_M_AXI_BURST_LEN	    : integer := 1;
        C_M_AXI_ID_WIDTH	    : integer := 1;
        C_M_AXI_ADDR_WIDTH	    : integer := 32;
        C_M_AXI_DATA_WIDTH	    : integer := 32;
        C_M_AXI_AWUSER_WIDTH    : integer := 0;
        C_M_AXI_ARUSER_WIDTH    : integer := 0;
        C_M_AXI_WUSER_WIDTH	    : integer := 0;
        C_M_AXI_RUSER_WIDTH	    : integer := 0;
        C_M_AXI_BUSER_WIDTH	    : integer := 0
    );
	port (
        req_rv_ready    : out std_logic;
        req_rv_valid    : in std_logic;
        req_rv_addr     : in std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        req_rv_id       : in std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);

        return_rv_ready : in std_logic;
        return_rv_valid : out std_logic;
        return_rv_data  : out std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
        return_rv_id    : out std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
		return_rv_error	: out std_logic;

        M_AXI_ACLK	    : in std_logic;
		M_AXI_ARESETN	: in std_logic;

        -- Write Channels (unused)
        M_AXI_AWID	    : out std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
		M_AXI_AWLEN	    : out std_logic_vector(7 downto 0);
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		M_AXI_AWLOCK	: out std_logic;
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWQOS	    : out std_logic_vector(3 downto 0);
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH - 1 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	    : out std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
		M_AXI_WSTRB	    : out std_logic_vector(C_M_AXI_DATA_WIDTH / 8 - 1 downto 0);
		M_AXI_WLAST	    : out std_logic;
		M_AXI_WUSER	    : out std_logic_vector(C_M_AXI_WUSER_WIDTH - 1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BID	    : in std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
		M_AXI_BRESP	    : in std_logic_vector(1 downto 0);
		M_AXI_BUSER	    : in std_logic_vector(C_M_AXI_BUSER_WIDTH - 1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;

        -- Read Channels
		M_AXI_ARID	    : out std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
		M_AXI_ARLEN	    : out std_logic_vector(7 downto 0);
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		M_AXI_ARLOCK	: out std_logic;
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARQOS	    : out std_logic_vector(3 downto 0);
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH - 1 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RID	    : in std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
		M_AXI_RDATA	    : in std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
		M_AXI_RRESP	    : in std_logic_vector(1 downto 0);
		M_AXI_RLAST	    : in std_logic;
		M_AXI_RUSER	    : in std_logic_vector(C_M_AXI_RUSER_WIDTH - 1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
	);
end entity;

architecture implementation of audio_fetcher_v1_0_M_AXI_DMA is

	function clogb2 (bit_depth : integer) return integer is
	 	variable depth  : integer := bit_depth;
	 	variable count  : integer := 1;
    begin
        for clogb2 in 1 to bit_depth loop  -- Works for up to 32 bit integers
	        if (bit_depth <= 2) then
	            count := 1;
	        else
                if(depth <= 1) then
                    count := count;
                else
                    depth := depth / 2;
                    count := count + 1;
                end if;
	 	    end if;
	    end loop;

        return(count);
    end;

    signal axi_arvalid      : std_logic;
	signal axi_araddr_ff	: std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal axi_arid_ff      : std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);

    signal axi_rready       : std_logic;
    signal axi_rdata_ff     : std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
    signal axi_rid_ff       : std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
	signal error_ff	        : std_logic;

    type state is (
        IDLE,
        ARVALID,
        RREADY,
        RETURNING
    );

    signal curr_state_ff    : state;
    signal next_state       : state;

begin
	M_AXI_AWID	    <= (others => '0');
	M_AXI_AWADDR	<= (others => '0');
	M_AXI_AWLEN	    <= (others => '0');
	M_AXI_AWSIZE	<= (others => '0');
	M_AXI_AWBURST	<= (others => '0');
	M_AXI_AWLOCK	<= '0';
	M_AXI_AWCACHE	<= (others => '0');
	M_AXI_AWPROT	<= (others => '0');
	M_AXI_AWQOS	    <= (others => '0');
	M_AXI_AWUSER	<= (others => '0');
	M_AXI_AWVALID	<= '0';
	M_AXI_WDATA	    <= (others => '0');
	M_AXI_WSTRB	    <= (others => '0');
	M_AXI_WLAST	    <= '0';
	M_AXI_WUSER	    <= (others => '0');
	M_AXI_WVALID	<= '0';
	M_AXI_BREADY	<= '0';

    M_AXI_ARVALID   <= axi_arvalid;
    M_AXI_ARID	    <= axi_arid_ff;
    M_AXI_ARADDR	<= axi_araddr_ff;
	--Burst LENgth is number of transaction beats, minus 1
	M_AXI_ARLEN	    <= std_logic_vector(to_unsigned(C_M_AXI_BURST_LEN - 1, 8) );
	--Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	M_AXI_ARSIZE	<= std_logic_vector(to_unsigned(clogb2((C_M_AXI_DATA_WIDTH / 8) - 1), 3));
	--INCR burst type is usually used, except for keyhole bursts
	M_AXI_ARBURST	<= "01";
	M_AXI_ARLOCK	<= '0';
	M_AXI_ARCACHE	<= "0011";
	M_AXI_ARPROT	<= "000";
	M_AXI_ARQOS	    <= x"0";
	M_AXI_ARUSER	<= (others => '1');
    M_AXI_RREADY    <= axi_rready;

    axi_arvalid     <= '1' when (curr_state_ff = ARVALID) else '0';
    axi_rready      <= '1' when (curr_state_ff = RREADY) else '0';

    req_rv_ready    <= '1' when (curr_state_ff = IDLE) else '0';

    return_rv_valid <= '1' when (curr_state_ff = RETURNING) else '0';
    return_rv_data  <= axi_rdata_ff;
    return_rv_id    <= axi_rid_ff;
    return_rv_error <= error_ff;

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
        req_rv_valid,
        M_AXI_ARREADY,
        M_AXI_RVALID,
        return_rv_ready
    ) begin
        next_state <= curr_state_ff;

        case curr_state_ff is
            when IDLE =>
                if(req_rv_valid = '1') then
                    next_state <= ARVALID;
                end if;

            when ARVALID =>
                if(M_AXI_ARREADY = '1') then
                    next_state <= RREADY;
                end if;

            when RREADY =>
                if(M_AXI_RVALID = '1') then
                    next_state <= RETURNING;
                end if;

            when RETURNING =>
                if(return_rv_ready = '1') then
                    next_state <= IDLE;
                end if;

            when others =>
        end case;
    end process;

	-- Request RV Interface
    process(M_AXI_ACLK) begin
        if(rising_edge(M_AXI_ACLK)) then
            if(M_AXI_ARESETN = '0') then
                axi_araddr_ff   <= (others => '0');
                axi_arid_ff     <= (others => '0');
            else
                if(curr_state_ff = IDLE and req_rv_valid = '1') then
                    axi_araddr_ff   <= req_rv_addr;
                    axi_arid_ff     <= req_rv_id;
                end if;
            end if;
        end if;
    end process;

    -- Read and response Channel
    process(M_AXI_ACLK) begin
        if(rising_edge(M_AXI_ACLK)) then
            if(M_AXI_ARESETN = '0') then
                axi_rdata_ff    <= std_logic_vector(to_unsigned(11111111, 32));
                axi_rid_ff      <= (others => '0');
                error_ff        <= '0';
            else
                if(axi_rready = '1' and M_AXI_RVALID = '1') then
                    axi_rdata_ff    <= M_AXI_RDATA;
                    axi_rid_ff      <= M_AXI_RID;
                    error_ff        <= M_AXI_RRESP(1);
                end if;
            end if;
        end if;
    end process;

end implementation;
