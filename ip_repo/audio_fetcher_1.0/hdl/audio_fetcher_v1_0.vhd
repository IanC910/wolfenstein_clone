library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity audio_fetcher_v1_0 is
    generic (
        AXI_DATA_WIDTH  : integer := 32;

        -- Parameters of Axi Slave Bus Interface S_AXI
        C_S_AXI_ADDR_WIDTH	: integer	:= 4;

        -- Parameters of Axi Master Bus Interface M_AXI_AUDIO_OUT
        C_M_AXI_AUDIO_OUT_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
        C_M_AXI_AUDIO_OUT_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
        C_M_AXI_AUDIO_OUT_ADDR_WIDTH	: integer	:= 32;
        C_M_AXI_AUDIO_OUT_TRANSACTIONS_NUM	: integer	:= 4;

        -- Parameters of Axi Master Bus Interface M_AXI_DMA
        C_M_AXI_DMA_BURST_LEN	    : integer	:= 1;
        C_M_AXI_DMA_ID_WIDTH	    : integer	:= 2;
        C_M_AXI_DMA_ADDR_WIDTH	    : integer	:= 32;
        C_M_AXI_DMA_AWUSER_WIDTH	: integer	:= 0;
        C_M_AXI_DMA_ARUSER_WIDTH	: integer	:= 0;
        C_M_AXI_DMA_WUSER_WIDTH	    : integer	:= 0;
        C_M_AXI_DMA_RUSER_WIDTH	    : integer	:= 0;
        C_M_AXI_DMA_BUSER_WIDTH	    : integer	:= 0
    );
    port (
        -- Ports of Axi Slave Bus Interface S_AXI
        s_axi_aclk	    : in std_logic;
        s_axi_aresetn	: in std_logic;
        s_axi_awaddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
        s_axi_awprot	: in std_logic_vector(2 downto 0);
        s_axi_awvalid	: in std_logic;
        s_axi_awready	: out std_logic;
        s_axi_wdata	    : in std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        s_axi_wstrb	    : in std_logic_vector(AXI_DATA_WIDTH / 8 - 1 downto 0);
        s_axi_wvalid	: in std_logic;
        s_axi_wready	: out std_logic;
        s_axi_bresp	    : out std_logic_vector(1 downto 0);
        s_axi_bvalid	: out std_logic;
        s_axi_bready	: in std_logic;
        s_axi_araddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
        s_axi_arprot	: in std_logic_vector(2 downto 0);
        s_axi_arvalid	: in std_logic;
        s_axi_arready	: out std_logic;
        s_axi_rdata	    : out std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        s_axi_rresp	    : out std_logic_vector(1 downto 0);
        s_axi_rvalid	: out std_logic;
        s_axi_rready	: in std_logic;

        -- Ports of Axi Master Bus Interface M_AXI_AUDIO_OUT
        m_axi_audio_out_init_axi_txn	: in std_logic;
        m_axi_audio_out_error	        : out std_logic;
        m_axi_audio_out_txn_done	    : out std_logic;
        m_axi_audio_out_aclk	        : in std_logic;
        m_axi_audio_out_aresetn	        : in std_logic;
        m_axi_audio_out_awaddr	        : out std_logic_vector(C_M_AXI_AUDIO_OUT_ADDR_WIDTH - 1 downto 0);
        m_axi_audio_out_awprot	        : out std_logic_vector(2 downto 0);
        m_axi_audio_out_awvalid	        : out std_logic;
        m_axi_audio_out_awready	        : in std_logic;
        m_axi_audio_out_wdata	        : out std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        m_axi_audio_out_wstrb	        : out std_logic_vector(AXI_DATA_WIDTH / 8 - 1 downto 0);
        m_axi_audio_out_wvalid	        : out std_logic;
        m_axi_audio_out_wready	        : in std_logic;
        m_axi_audio_out_bresp	        : in std_logic_vector(1 downto 0);
        m_axi_audio_out_bvalid	        : in std_logic;
        m_axi_audio_out_bready	        : out std_logic;
        m_axi_audio_out_araddr	        : out std_logic_vector(C_M_AXI_AUDIO_OUT_ADDR_WIDTH - 1 downto 0);
        m_axi_audio_out_arprot	        : out std_logic_vector(2 downto 0);
        m_axi_audio_out_arvalid	        : out std_logic;
        m_axi_audio_out_arready	        : in std_logic;
        m_axi_audio_out_rdata	        : in std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        m_axi_audio_out_rresp	        : in std_logic_vector(1 downto 0);
        m_axi_audio_out_rvalid	        : in std_logic;
        m_axi_audio_out_rready	        : out std_logic;

        -- Ports of Axi Master Bus Interface M_AXI_DMA
        m_axi_dma_aclk	        : in std_logic;
        m_axi_dma_aresetn	    : in std_logic;
        m_axi_dma_awid	        : out std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);
        m_axi_dma_awaddr	    : out std_logic_vector(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
        m_axi_dma_awlen	        : out std_logic_vector(7 downto 0);
        m_axi_dma_awsize	    : out std_logic_vector(2 downto 0);
        m_axi_dma_awburst	    : out std_logic_vector(1 downto 0);
        m_axi_dma_awlock	    : out std_logic;
        m_axi_dma_awcache	    : out std_logic_vector(3 downto 0);
        m_axi_dma_awprot	    : out std_logic_vector(2 downto 0);
        m_axi_dma_awqos	        : out std_logic_vector(3 downto 0);
        m_axi_dma_awuser	    : out std_logic_vector(C_M_AXI_DMA_AWUSER_WIDTH - 1 downto 0);
        m_axi_dma_awvalid	    : out std_logic;
        m_axi_dma_awready	    : in std_logic;
        m_axi_dma_wdata	        : out std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        m_axi_dma_wstrb	        : out std_logic_vector(AXI_DATA_WIDTH / 8 - 1 downto 0);
        m_axi_dma_wlast	        : out std_logic;
        m_axi_dma_wuser	        : out std_logic_vector(C_M_AXI_DMA_WUSER_WIDTH - 1 downto 0);
        m_axi_dma_wvalid	    : out std_logic;
        m_axi_dma_wready	    : in std_logic;
        m_axi_dma_bid	        : in std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);
        m_axi_dma_bresp	        : in std_logic_vector(1 downto 0);
        m_axi_dma_buser	        : in std_logic_vector(C_M_AXI_DMA_BUSER_WIDTH - 1 downto 0);
        m_axi_dma_bvalid	    : in std_logic;
        m_axi_dma_bready	    : out std_logic;
        m_axi_dma_arid	        : out std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);
        m_axi_dma_araddr	    : out std_logic_vector(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
        m_axi_dma_arlen	        : out std_logic_vector(7 downto 0);
        m_axi_dma_arsize	    : out std_logic_vector(2 downto 0);
        m_axi_dma_arburst	    : out std_logic_vector(1 downto 0);
        m_axi_dma_arlock	    : out std_logic;
        m_axi_dma_arcache	    : out std_logic_vector(3 downto 0);
        m_axi_dma_arprot	    : out std_logic_vector(2 downto 0);
        m_axi_dma_arqos	        : out std_logic_vector(3 downto 0);
        m_axi_dma_aruser	    : out std_logic_vector(C_M_AXI_DMA_ARUSER_WIDTH - 1 downto 0);
        m_axi_dma_arvalid	    : out std_logic;
        m_axi_dma_arready	    : in std_logic;
        m_axi_dma_rid	        : in std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);
        m_axi_dma_rdata	        : in std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        m_axi_dma_rresp	        : in std_logic_vector(1 downto 0);
        m_axi_dma_rlast	        : in std_logic;
        m_axi_dma_ruser	        : in std_logic_vector(C_M_AXI_DMA_RUSER_WIDTH - 1 downto 0);
        m_axi_dma_rvalid	    : in std_logic;
        m_axi_dma_rready	    : out std_logic
    );
end audio_fetcher_v1_0;

architecture arch_imp of audio_fetcher_v1_0 is

	component audio_fetcher_v1_0_S_AXI is
        generic (
            C_S_AXI_DATA_WIDTH  : integer := 32;
            C_S_AXI_ADDR_WIDTH  : integer := 4
        );
        port (
            s_rv_ready      : in std_logic;
            s_rv_valid      : out std_logic;
            s_rv_sound_addr : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
            s_rv_vol_coef   : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);

            debug_data      : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);

            -- Global Clock Signal
            S_AXI_ACLK	    : in std_logic;
            S_AXI_ARESETN	: in std_logic;
            S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
            S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
            S_AXI_AWVALID	: in std_logic;
            S_AXI_AWREADY	: out std_logic;
            S_AXI_WDATA	    : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
            S_AXI_WSTRB	    : in std_logic_vector((C_S_AXI_DATA_WIDTH / 8) - 1 downto 0);
            S_AXI_WVALID	: in std_logic;
            S_AXI_WREADY	: out std_logic;
            S_AXI_BRESP	    : out std_logic_vector(1 downto 0);
            S_AXI_BVALID	: out std_logic;
            S_AXI_BREADY	: in std_logic;
            S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
            S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
            S_AXI_ARVALID	: in std_logic;
            S_AXI_ARREADY	: out std_logic;
            S_AXI_RDATA	    : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
            S_AXI_RRESP	    : out std_logic_vector(1 downto 0);
            S_AXI_RVALID	: out std_logic;
            S_AXI_RREADY	: in std_logic
        );
    end component;

	component audio_fetcher_v1_0_M_AXI_AUDIO_OUT is
		generic (
		C_M_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_TRANSACTIONS_NUM	: integer	:= 4
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		ERROR	: out std_logic;
		TXN_DONE	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH / 8 - 1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component audio_fetcher_v1_0_M_AXI_AUDIO_OUT;

    component audio_fetcher_v1_0_M_AXI_DMA is
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
    end component;

    component fetcher_controller is
        generic(
            AXI_DATA_WIDTH                  : integer := 32;
            C_M_AXI_DMA_ADDR_WIDTH          : integer := 32;
            C_M_AXI_DMA_ID_WIDTH            : integer := 1;
            C_M_AXI_AUDIO_OUT_ADDR_WIDTH    : integer := 4
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
            out_rv_data         : out   std_logic_vector(AXI_DATA_WIDTH - 1 downto 0)
        );
    end component;

    signal s_rv_ready       : std_logic;
    signal s_rv_valid       : std_logic;
    signal s_rv_sound_addr  : std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
    signal s_rv_vol_coef    : std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);

    signal req_rv_ready     : std_logic;
    signal req_rv_valid     : std_logic;
    signal req_rv_addr      : std_logic_vector(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
    signal req_rv_id        : std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);

    signal return_rv_ready  : std_logic;
    signal return_rv_valid  : std_logic;
    signal return_rv_data   : std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
    signal return_rv_id     : std_logic_vector(C_M_AXI_DMA_ID_WIDTH - 1 downto 0);
    signal return_rv_error  : std_logic;

    signal out_rv_ready     : std_logic;
    signal out_rv_valid     : std_logic;
    signal out_rv_addr      : std_logic_vector(C_M_AXI_AUDIO_OUT_ADDR_WIDTH - 1 downto 0);
    signal out_rv_data      : std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
    signal out_rv_error     : std_logic;

begin

    fetcher_controller_inst : fetcher_controller
        generic map(
            AXI_DATA_WIDTH                  => AXI_DATA_WIDTH,
            C_M_AXI_DMA_ADDR_WIDTH          => C_M_AXI_DMA_ADDR_WIDTH,
            C_M_AXI_DMA_ID_WIDTH            => C_M_AXI_DMA_ID_WIDTH,
            C_M_AXI_AUDIO_OUT_ADDR_WIDTH    => C_M_AXI_AUDIO_OUT_ADDR_WIDTH
        )
        port map (
            s_rv_ready          => s_rv_ready,
            s_rv_valid          => s_rv_valid,
            s_rv_sound_addr     => s_rv_sound_addr,
            s_rv_vol_coef       => s_rv_vol_coef,

            req_rv_ready        => req_rv_ready,
            req_rv_valid        => req_rv_valid,
            req_rv_addr         => req_rv_addr,
            req_rv_id           => req_rv_id,

            return_rv_ready     => return_rv_ready,
            return_rv_valid     => return_rv_valid,
            return_rv_data      => return_rv_data,
            return_rv_id        => return_rv_id,
            return_rv_error     => return_rv_error,

            out_rv_ready        => out_rv_ready,
            out_rv_valid        => out_rv_valid,
            out_rv_addr         => out_rv_addr,
            out_rv_data         => out_rv_data,
            out_rv_error        => out_rv_error
        );

    audio_fetcher_v1_0_S_AXI_inst : audio_fetcher_v1_0_S_AXI
        generic map (
            C_S_AXI_DATA_WIDTH	=> AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH	=> C_S_AXI_ADDR_WIDTH
        )
        port map (
            s_rv_ready      => s_rv_ready,
            s_rv_valid      => s_rv_valid,
            s_rv_sound_addr => s_rv_sound_addr,
            s_rv_vol_coef   => s_rv_vol_coef,

            debug_data      => return_rv_data,

            S_AXI_ACLK	    => s_axi_aclk,
            S_AXI_ARESETN	=> s_axi_aresetn,
            S_AXI_AWADDR	=> s_axi_awaddr,
            S_AXI_AWPROT	=> s_axi_awprot,
            S_AXI_AWVALID	=> s_axi_awvalid,
            S_AXI_AWREADY	=> s_axi_awready,
            S_AXI_WDATA	    => s_axi_wdata,
            S_AXI_WSTRB	    => s_axi_wstrb,
            S_AXI_WVALID	=> s_axi_wvalid,
            S_AXI_WREADY	=> s_axi_wready,
            S_AXI_BRESP	    => s_axi_bresp,
            S_AXI_BVALID	=> s_axi_bvalid,
            S_AXI_BREADY	=> s_axi_bready,
            S_AXI_ARADDR	=> s_axi_araddr,
            S_AXI_ARPROT	=> s_axi_arprot,
            S_AXI_ARVALID	=> s_axi_arvalid,
            S_AXI_ARREADY	=> s_axi_arready,
            S_AXI_RDATA	    => s_axi_rdata,
            S_AXI_RRESP	    => s_axi_rresp,
            S_AXI_RVALID	=> s_axi_rvalid,
            S_AXI_RREADY	=> s_axi_rready
        );

    audio_fetcher_v1_0_M_AXI_AUDIO_OUT_inst : audio_fetcher_v1_0_M_AXI_AUDIO_OUT
        generic map (
            C_M_START_DATA_VALUE	    => C_M_AXI_AUDIO_OUT_START_DATA_VALUE,
            C_M_TARGET_SLAVE_BASE_ADDR	=> C_M_AXI_AUDIO_OUT_TARGET_SLAVE_BASE_ADDR,
            C_M_AXI_ADDR_WIDTH	        => C_M_AXI_AUDIO_OUT_ADDR_WIDTH,
            C_M_AXI_DATA_WIDTH	        => AXI_DATA_WIDTH,
            C_M_TRANSACTIONS_NUM	    => C_M_AXI_AUDIO_OUT_TRANSACTIONS_NUM
        )
        port map (
            INIT_AXI_TXN	=> m_axi_audio_out_init_axi_txn,
            ERROR	        => m_axi_audio_out_error,
            TXN_DONE	    => m_axi_audio_out_txn_done,
            M_AXI_ACLK	    => m_axi_audio_out_aclk,
            M_AXI_ARESETN	=> m_axi_audio_out_aresetn,
            M_AXI_AWADDR	=> m_axi_audio_out_awaddr,
            M_AXI_AWPROT	=> m_axi_audio_out_awprot,
            M_AXI_AWVALID	=> m_axi_audio_out_awvalid,
            M_AXI_AWREADY	=> m_axi_audio_out_awready,
            M_AXI_WDATA	    => m_axi_audio_out_wdata,
            M_AXI_WSTRB	    => m_axi_audio_out_wstrb,
            M_AXI_WVALID	=> m_axi_audio_out_wvalid,
            M_AXI_WREADY	=> m_axi_audio_out_wready,
            M_AXI_BRESP	    => m_axi_audio_out_bresp,
            M_AXI_BVALID	=> m_axi_audio_out_bvalid,
            M_AXI_BREADY	=> m_axi_audio_out_bready,
            M_AXI_ARADDR	=> m_axi_audio_out_araddr,
            M_AXI_ARPROT	=> m_axi_audio_out_arprot,
            M_AXI_ARVALID	=> m_axi_audio_out_arvalid,
            M_AXI_ARREADY	=> m_axi_audio_out_arready,
            M_AXI_RDATA	    => m_axi_audio_out_rdata,
            M_AXI_RRESP	    => m_axi_audio_out_rresp,
            M_AXI_RVALID	=> m_axi_audio_out_rvalid,
            M_AXI_RREADY	=> m_axi_audio_out_rready
        );

    audio_fetcher_v1_0_M_AXI_DMA_inst : audio_fetcher_v1_0_M_AXI_DMA
        generic map (
            C_M_AXI_BURST_LEN	    => C_M_AXI_DMA_BURST_LEN,
            C_M_AXI_ID_WIDTH	    => C_M_AXI_DMA_ID_WIDTH,
            C_M_AXI_ADDR_WIDTH	    => C_M_AXI_DMA_ADDR_WIDTH,
            C_M_AXI_DATA_WIDTH	    => AXI_DATA_WIDTH,
            C_M_AXI_AWUSER_WIDTH	=> C_M_AXI_DMA_AWUSER_WIDTH,
            C_M_AXI_ARUSER_WIDTH	=> C_M_AXI_DMA_ARUSER_WIDTH,
            C_M_AXI_WUSER_WIDTH	    => C_M_AXI_DMA_WUSER_WIDTH,
            C_M_AXI_RUSER_WIDTH	    => C_M_AXI_DMA_RUSER_WIDTH,
            C_M_AXI_BUSER_WIDTH	    => C_M_AXI_DMA_BUSER_WIDTH
        )
        port map (
            req_rv_ready    => req_rv_ready,
            req_rv_valid    => req_rv_valid,
            req_rv_addr     => req_rv_addr,
            req_rv_id       => req_rv_id,

            return_rv_ready => return_rv_ready,
            return_rv_valid => return_rv_valid,
            return_rv_data  => return_rv_data,
            return_rv_id    => return_rv_id,
            return_rv_error	=> return_rv_error,

            M_AXI_ACLK	    => m_axi_dma_aclk,
            M_AXI_ARESETN	=> m_axi_dma_aresetn,
            M_AXI_AWID	    => m_axi_dma_awid,
            M_AXI_AWADDR	=> m_axi_dma_awaddr,
            M_AXI_AWLEN	    => m_axi_dma_awlen,
            M_AXI_AWSIZE	=> m_axi_dma_awsize,
            M_AXI_AWBURST	=> m_axi_dma_awburst,
            M_AXI_AWLOCK	=> m_axi_dma_awlock,
            M_AXI_AWCACHE	=> m_axi_dma_awcache,
            M_AXI_AWPROT	=> m_axi_dma_awprot,
            M_AXI_AWQOS	    => m_axi_dma_awqos,
            M_AXI_AWUSER	=> m_axi_dma_awuser,
            M_AXI_AWVALID	=> m_axi_dma_awvalid,
            M_AXI_AWREADY	=> m_axi_dma_awready,
            M_AXI_WDATA	    => m_axi_dma_wdata,
            M_AXI_WSTRB	    => m_axi_dma_wstrb,
            M_AXI_WLAST	    => m_axi_dma_wlast,
            M_AXI_WUSER	    => m_axi_dma_wuser,
            M_AXI_WVALID	=> m_axi_dma_wvalid,
            M_AXI_WREADY	=> m_axi_dma_wready,
            M_AXI_BID	    => m_axi_dma_bid,
            M_AXI_BRESP	    => m_axi_dma_bresp,
            M_AXI_BUSER	    => m_axi_dma_buser,
            M_AXI_BVALID	=> m_axi_dma_bvalid,
            M_AXI_BREADY	=> m_axi_dma_bready,
            M_AXI_ARID	    => m_axi_dma_arid,
            M_AXI_ARADDR	=> m_axi_dma_araddr,
            M_AXI_ARLEN	    => m_axi_dma_arlen,
            M_AXI_ARSIZE	=> m_axi_dma_arsize,
            M_AXI_ARBURST	=> m_axi_dma_arburst,
            M_AXI_ARLOCK	=> m_axi_dma_arlock,
            M_AXI_ARCACHE	=> m_axi_dma_arcache,
            M_AXI_ARPROT	=> m_axi_dma_arprot,
            M_AXI_ARQOS	    => m_axi_dma_arqos,
            M_AXI_ARUSER	=> m_axi_dma_aruser,
            M_AXI_ARVALID	=> m_axi_dma_arvalid,
            M_AXI_ARREADY	=> m_axi_dma_arready,
            M_AXI_RID	    => m_axi_dma_rid,
            M_AXI_RDATA	    => m_axi_dma_rdata,
            M_AXI_RRESP	    => m_axi_dma_rresp,
            M_AXI_RLAST	    => m_axi_dma_rlast,
            M_AXI_RUSER	    => m_axi_dma_ruser,
            M_AXI_RVALID	=> m_axi_dma_rvalid,
            M_AXI_RREADY	=> m_axi_dma_rready
        );

end arch_imp;
