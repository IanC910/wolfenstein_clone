library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity audio_fetcher_controller is
    generic(
        AXI_DATA_WIDTH                  : integer := 32;
        C_M_AXI_DMA_ADDR_WIDTH          : integer := 32;
        C_M_AXI_DMA_ID_WIDTH            : integer := 1;
        C_M_AXI_AUDIO_OUT_ADDR_WIDTH    : integer := 32;
        CLOCK_FREQ_MHz                  : integer := 200;
        I2S_DATA_TX_L_REG_ADDR          : integer := 8;
        I2S_DATA_TX_R_REG_ADDR          : integer := 12
    );
    port(
        clk                 : in    std_logic;
        aresetn             : in    std_logic;

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

        debug_data          : out   std_logic_vector(AXI_DATA_WIDTH - 1 downto 0)
    );
end entity;

architecture behaviour of audio_fetcher_controller is

    constant NUM_SAMPLES_OFFSET         : integer := 0;
    constant BYTES_PER_SAMPLE_OFFSET    : integer := 4;
    constant SAMPLE_PERIOD_OFFSET       : integer := 6;
    constant DATA_OFFSET                : integer := 8;
    constant HEADER_0_OFFSET            : integer := NUM_SAMPLES_OFFSET;
    constant HEADER_1_OFFSET            : integer := BYTES_PER_SAMPLE_OFFSET;

    constant MAX_SLEEP_TIME_US      : integer := 63; -- Arbitrary but 63 us period is less than 20 kHz, so it's safe
    constant MAX_SLEEP_CYCLES       : integer := MAX_SLEEP_TIME_US * CLOCK_FREQ_MHz;
    constant SLEEP_COUNTER_WIDTH    : integer := integer(ceil(log2(real(MAX_SLEEP_CYCLES))));

    signal sound_addr_ff            : unsigned(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
    signal vol_coef_ff              : signed(AXI_DATA_WIDTH - 1 downto 0);

    signal num_samples_ff           : unsigned(4 * 8 - 1 downto 0);
    signal bytes_per_sample_ff      : unsigned(2 * 8 - 1 downto 0);
    signal sample_period_us_ff      : unsigned(2 * 8 - 1 downto 0);
    signal sample_period_cycles_ff  : unsigned(SLEEP_COUNTER_WIDTH - 1 downto 0);

    signal sleep_counter_ff         : unsigned(SLEEP_COUNTER_WIDTH - 1 downto 0);
    signal sleep_counter_done       : std_logic;

    signal sample_ff                : signed(AXI_DATA_WIDTH - 1 downto 0);
    signal sample_index_ff          : unsigned(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
    signal byte_index_ff            : unsigned(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
    signal req_addr_offset_ff       : unsigned(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
    signal last_sample              : std_logic;

    signal scaled_sample            : signed(AXI_DATA_WIDTH - 1 downto 0);


    type state_t is (
        IDLE,
        REQUESTING_HEADER_0,
        RETURNING_HEADER_0,
        REQUESTING_HEADER_1,
        RETURNING_HEADER_1,
        REQUESTING_DATA,
        RETURNING_DATA,
        SLEEPING,
        WRITING_L,
        WRITING_R
    );

    signal curr_state_ff  : state_t;
    signal next_state     : state_t;

begin
    -- Main FSM
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                curr_state_ff <= IDLE;
            else
                curr_state_ff <= next_state;
            end if;
        end if;
    end process;

    -- Next state logic
    process(
        curr_state_ff,
        s_rv_valid,
        req_rv_ready,
        return_rv_valid,
        out_rv_ready,
        last_sample,
        sleep_counter_done
    ) begin
        next_state <= curr_state_ff;

        if(s_rv_valid = '1') then
            next_state <= IDLE;
        end if;

        case curr_state_ff is
            when IDLE =>
                if(s_rv_valid = '1') then
                    next_state <= REQUESTING_HEADER_0;
                end if;

            when REQUESTING_HEADER_0 =>
                if(req_rv_ready = '1') then
                    next_state <= RETURNING_HEADER_0;
                end if;

            when RETURNING_HEADER_0 =>
                if(return_rv_valid = '1') then
                    next_state <= REQUESTING_HEADER_1;
                    -- TODO Temp
                    next_state <= IDLE;
                end if;

            when REQUESTING_HEADER_1 =>
                if(req_rv_ready = '1') then
                    next_state <= RETURNING_HEADER_1;
                end if;

            when RETURNING_HEADER_1 =>
                if(return_rv_valid = '1') then
                    next_state <= REQUESTING_DATA;
                end if;

            when REQUESTING_DATA =>
                if(req_rv_ready = '1') then
                    next_state <= RETURNING_DATA;
                end if;

            when RETURNING_DATA =>
                if(return_rv_valid = '1') then
                    next_state <= WRITING_L;
                end if;

            when WRITING_L =>
                if(out_rv_ready = '1') then
                    next_state <= WRITING_R;
                end if;

            when WRITING_R =>
                if(out_rv_ready = '1') then
                    next_state <= SLEEPING;

                    if(last_sample = '1') then
                        next_state <= IDLE;
                    end if;
                end if;

            when SLEEPING =>
                if(sleep_counter_done = '1') then
                    next_state <= REQUESTING_DATA;
                end if;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

    -- S RV Interface
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                sound_addr_ff   <= (others => '0');
                vol_coef_ff     <= (others => '0');
            else
                if(curr_state_ff = IDLE and s_rv_valid = '1') then
                    sound_addr_ff   <= unsigned(s_rv_sound_addr);
                    vol_coef_ff     <= signed(s_rv_vol_coef);
                end if;
            end if;
        end if;
    end process;

    s_rv_ready <= '1' when (curr_state_ff = IDLE) else '0';

    -- Request RV Interface
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                req_addr_offset_ff <= (others => '0');
            else
                if(curr_state_ff = IDLE) then
                    req_addr_offset_ff <= to_unsigned(HEADER_0_OFFSET, req_addr_offset_ff'length);

                elsif(curr_state_ff = RETURNING_HEADER_0) then
                    req_addr_offset_ff <= to_unsigned(HEADER_1_OFFSET, req_addr_offset_ff'length);

                elsif(curr_state_ff = RETURNING_HEADER_1 or curr_state_ff = SLEEPING) then
                    req_addr_offset_ff <= to_unsigned(DATA_OFFSET, req_addr_offset_ff'length) + byte_index_ff;
                end if;
            end if;
        end if;
    end process;

    req_rv_valid    <=  '1' when (curr_state_ff = REQUESTING_HEADER_0 or curr_state_ff = REQUESTING_HEADER_1 or curr_state_ff = REQUESTING_DATA) else '0';

    req_rv_addr     <=  std_logic_vector(sound_addr_ff + req_addr_offset_ff);

    -- Return RV Interface
    process(clk)
        variable bit_index : integer := 0;
    begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                num_samples_ff      <= (others => '0');
                bytes_per_sample_ff <= (others => '0');
                sample_period_us_ff <= (others => '0');
            else
                if(curr_state_ff = RETURNING_HEADER_0 and return_rv_valid = '1') then
                    num_samples_ff  <= unsigned(return_rv_data);
                    debug_data      <= return_rv_data;
                end if;

                if(curr_state_ff = RETURNING_HEADER_1 and return_rv_valid = '1') then
                    bytes_per_sample_ff <= unsigned(return_rv_data(15 downto 0));
                    sample_period_us_ff <= unsigned(return_rv_data(31 downto 16));
                end if;

                if(curr_state_ff = RETURNING_DATA and return_rv_valid = '1') then
                    -- TODO: take into account the sample index
                    bit_index := to_integer(byte_index_ff) * 8;
                    sample_ff <= resize(signed(return_rv_data(bit_index + 7 downto bit_index)), sample_ff'length);
                end if;
            end if;
        end if;
    end process;

    return_rv_ready <=
        '1' when
            curr_state_ff = RETURNING_HEADER_0 or
            curr_state_ff = RETURNING_HEADER_1 or
            curr_state_ff = RETURNING_DATA else
        '0';

    -- Sample Index Logic
    process (clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                sample_index_ff <= to_unsigned(0, sample_index_ff'length);
                byte_index_ff   <= to_unsigned(0, byte_index_ff'length);
            else
                if(curr_state_ff = IDLE) then
                    sample_index_ff <= to_unsigned(0, sample_index_ff'length);
                    byte_index_ff   <= to_unsigned(0, byte_index_ff'length);
                end if;

                if(curr_state_ff = WRITING_R and out_rv_ready = '1') then
                    if(last_sample = '0') then
                        sample_index_ff <= sample_index_ff + to_unsigned(1, sample_index_ff'length);
                        byte_index_ff   <= byte_index_ff + bytes_per_sample_ff;
                    end if;
                end if;
            end if;
        end if;
    end process;

    last_sample <= '1' when (sample_index_ff = num_samples_ff - to_unsigned(1, num_samples_ff'length)) else '0';

    -- Sleeping logic
    process(clk) begin
        if(rising_edge(clk)) then
            sleep_counter_ff <= (others => '0');

            if(curr_state_ff = SLEEPING) then
                sleep_counter_ff <= sleep_counter_ff + to_unsigned(1, sleep_counter_ff'length);
            end if;
        end if;
    end process;

    sleep_counter_done <= '1' when (sleep_counter_ff = sample_period_cycles_ff - 1) else '0';

    -- Out RV Interface
    out_rv_valid    <=  '1' when (curr_state_ff = WRITING_L or curr_state_ff = WRITING_R) else '0';
    out_rv_addr     <=  std_logic_vector(to_unsigned(I2S_DATA_TX_R_REG_ADDR, out_rv_addr'length)) when (curr_state_ff = WRITING_R) else
                        std_logic_vector(to_unsigned(I2S_DATA_TX_L_REG_ADDR, out_rv_addr'length));

    scaled_sample   <=  resize(sample_ff * vol_coef_ff, scaled_sample'length);
    out_rv_data     <=  std_logic_vector(scaled_sample);

end architecture;