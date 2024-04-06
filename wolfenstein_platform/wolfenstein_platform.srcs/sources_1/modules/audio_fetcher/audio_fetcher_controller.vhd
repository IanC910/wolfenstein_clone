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
        ZED_AUDIO_CTRL_ADDR             : integer := 16#43C0_0000#;
        I2S_DATA_TX_L_REG_OFFSET        : integer := 8;
        I2S_DATA_TX_R_REG_OFFSET        : integer := 12;
        SAMPLE_PERIOD_US                : integer := 45
    );
    port(
        clk                 : in    std_logic;
        aresetn             : in    std_logic;

        s_rv_ready          : out   std_logic;
        s_rv_valid          : in    std_logic;
        s_rv_sound_addr     : in    std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        s_rv_vol_coef       : in    std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);
        s_rv_slot           : in    std_logic_vector(AXI_DATA_WIDTH - 1 downto 0);

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
    constant BYTES_PER_SAMPLE       : integer := 2;

    constant I2S_DATA_TX_L_REG_ADDR : integer := ZED_AUDIO_CTRL_ADDR + I2S_DATA_TX_L_REG_OFFSET;
    constant I2S_DATA_TX_R_REG_ADDR : integer := ZED_AUDIO_CTRL_ADDR + I2S_DATA_TX_R_REG_OFFSET;

    -- Sound file offsets
    constant NUM_SAMPLES_OFFSET     : integer := 0;
    constant DATA_OFFSET            : integer := 4;

    constant SAMPLE_PERIOD_CYCLES   : integer := SAMPLE_PERIOD_US * CLOCK_FREQ_MHz;
    constant SLEEP_COUNTER_WIDTH    : integer := integer(ceil(log2(real(SAMPLE_PERIOD_CYCLES)))) + 1;

    constant NUM_SLOTS              : integer := 2;
    constant SLOT_WIDTH             : integer := 1;

    signal initter_sound_addr_ff    : unsigned(AXI_DATA_WIDTH - 1 downto 0);
    signal initter_vol_coef_ff      : unsigned(AXI_DATA_WIDTH - 1 downto 0);
    signal initter_curr_slot_ff     : unsigned(SLOT_WIDTH - 1 downto 0);

    signal sleep_counter_ff         : unsigned(SLEEP_COUNTER_WIDTH - 1 downto 0);
    signal sleep_counter_done       : std_logic;

    signal req_addr_ff              : unsigned(C_M_AXI_DMA_ADDR_WIDTH - 1 downto 0);
    signal player_vol_coef_ff       : signed(AXI_DATA_WIDTH - 1 downto 0);
    signal player_curr_slot_ff      : unsigned(SLOT_WIDTH - 1 downto 0);
    signal player_last_slot         : std_logic;
    signal sample_ff                : signed(AXI_DATA_WIDTH - 1 downto 0);
    signal scaled_sample_ff         : signed(AXI_DATA_WIDTH - 1 downto 0);
    signal combined_samples_ff      : signed(AXI_DATA_WIDTH - 1 downto 0);

    -- Slot status signals
    type unsigned_array_t is array (0 to NUM_SLOTS - 1) of unsigned(AXI_DATA_WIDTH - 1 downto 0);

    signal sound_addr_array_ff      : unsigned_array_t;
    signal vol_coef_array_ff        : unsigned_array_t;
    signal num_samples_array_ff     : unsigned_array_t;
    signal sample_index_array_ff    : unsigned_array_t;
    signal byte_index_array_ff      : unsigned_array_t;
    signal slot_active_array_ff     : std_logic_vector(NUM_SLOTS - 1 downto 0);
    signal last_sample_array        : std_logic_vector(NUM_SLOTS - 1 downto 0);

    type initter_state_t is (
        IS_IDLE,
        IS_SETTING_SLOT,
        IS_CALCING_REQ_ADDR,
        IS_REQUESTING_NUM_SAMPLES,
        IS_RETURNING_NUM_SAMPLES
    );

    type player_state_t is (
        PS_SLEEPING,
        PS_PRE_REQUEST,
        PS_REQUESTING_DATA,
        PS_RETURNING_DATA,
        PS_SCALING,
        PS_COMBINING,
        PS_WRITING_L,
        PS_WRITING_R
    );

    signal curr_initter_state_ff    : initter_state_t;
    signal next_initter_state       : initter_state_t;
    signal prev_initter_state_ff    : initter_state_t;

    signal curr_player_state_ff : player_state_t;
    signal next_player_state    : player_state_t;
    signal prev_player_state_ff : player_state_t;

begin
    -- Main FSM
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                curr_initter_state_ff <= IS_IDLE;
                prev_initter_state_ff <= IS_IDLE;

                curr_player_state_ff <= PS_SLEEPING;
                prev_player_state_ff <= PS_SLEEPING;
            else
                curr_player_state_ff <= next_player_state;
                prev_player_state_ff <= curr_player_state_ff;

                curr_initter_state_ff <= next_initter_state;
                prev_initter_state_ff <= curr_initter_state_ff;
            end if;
        end if;
    end process;

    -- Next initializer state logic
    process(
        curr_initter_state_ff,
        s_rv_valid,
        next_player_state,
        req_rv_ready,
        return_rv_valid
    ) begin
        next_initter_state <= curr_initter_state_ff;

        case curr_initter_state_ff is
            when IS_IDLE =>
                if(s_rv_valid = '1' and curr_player_state_ff = PS_SLEEPING and next_player_state = PS_SLEEPING) then
                    next_initter_state <= IS_SETTING_SLOT;
                end if;

            when IS_SETTING_SLOT =>
                next_initter_state <= IS_CALCING_REQ_ADDR;

            when IS_CALCING_REQ_ADDR =>
                next_initter_state <= IS_REQUESTING_NUM_SAMPLES;

            when IS_REQUESTING_NUM_SAMPLES =>
                if(req_rv_ready = '1') then
                    next_initter_state <= IS_RETURNING_NUM_SAMPLES;
                end if;

            when IS_RETURNING_NUM_SAMPLES =>
                if(return_rv_valid = '1') then
                    next_initter_state <= IS_IDLE;
                end if;

            when others =>
                next_initter_state <= IS_IDLE;
        end case;
    end process;

    -- Next player state logic
    process(
        curr_player_state_ff,
        sleep_counter_done,
        req_rv_ready,
        return_rv_valid,
        player_last_slot,
        out_rv_ready
    ) begin
        next_player_state <= curr_player_state_ff;

        case curr_player_state_ff is
            when PS_SLEEPING =>
                if(sleep_counter_done = '1' and curr_initter_state_ff = IS_IDLE) then
                    next_player_state <= PS_PRE_REQUEST;
                end if;

            when PS_PRE_REQUEST =>
                -- if no sound slots are active, keep sleeping
                if(to_integer(unsigned(slot_active_array_ff)) = 0) then
                    next_player_state <= PS_SLEEPING;
                elsif(slot_active_array_ff(to_integer(player_curr_slot_ff)) = '1') then
                    next_player_state <= PS_REQUESTING_DATA;
                elsif(player_last_slot = '1') then
                    next_player_state <= PS_WRITING_L;
                end if;

            when PS_REQUESTING_DATA =>
                if(req_rv_ready = '1') then
                    next_player_state <= PS_RETURNING_DATA;
                end if;

            when PS_RETURNING_DATA =>
                if(return_rv_valid = '1') then
                    next_player_state <= PS_SCALING;
                end if;

            when PS_SCALING =>
                next_player_state <= PS_COMBINING;

            when PS_COMBINING =>
                next_player_state <= PS_PRE_REQUEST;

                if(player_last_slot = '1') then
                    next_player_state <= PS_WRITING_L;
                end if;

            when PS_WRITING_L =>
                if(out_rv_ready = '1') then
                    next_player_state <= PS_WRITING_R;
                end if;

            when PS_WRITING_R =>
                if(out_rv_ready = '1') then
                    next_player_state <= PS_SLEEPING;
                end if;

            when others =>
                next_player_state <= PS_SLEEPING;
        end case;
    end process;

    -- S RV Interface
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                initter_sound_addr_ff   <= (others => '0');
                initter_vol_coef_ff     <= (others => '0');
                initter_curr_slot_ff    <= (others => '0');
            else
                if(curr_initter_state_ff = IS_IDLE and s_rv_valid = '1') then
                    initter_sound_addr_ff   <= unsigned(s_rv_sound_addr);
                    initter_vol_coef_ff     <= unsigned(s_rv_vol_coef);
                    initter_curr_slot_ff    <= unsigned(s_rv_slot(initter_curr_slot_ff'length - 1 downto 0));
                end if;

                if(curr_initter_state_ff = IS_SETTING_SLOT) then
                    sound_addr_array_ff(to_integer(initter_curr_slot_ff))   <= initter_sound_addr_ff;
                    vol_coef_array_ff(to_integer(initter_curr_slot_ff))     <= initter_vol_coef_ff;
                end if;
            end if;
        end if;
    end process;

    s_rv_ready <= '1' when (curr_initter_state_ff = IS_IDLE and next_initter_state = IS_SETTING_SLOT) else '0';

    -- Request RV Interface
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                req_addr_ff         <= (others => '0');
                player_curr_slot_ff <= (others => '0');
            else
                req_addr_ff <= sound_addr_array_ff(to_integer(initter_curr_slot_ff)) + to_unsigned(NUM_SAMPLES_OFFSET, req_addr_ff'length);

                if(curr_player_state_ff = PS_SLEEPING) then
                    player_curr_slot_ff <= (others => '0');
                end if;

                if(curr_player_state_ff = PS_PRE_REQUEST) then
                    req_addr_ff <=
                        sound_addr_array_ff(to_integer(player_curr_slot_ff)) +
                        to_unsigned(DATA_OFFSET, req_addr_ff'length) +
                        byte_index_array_ff(to_integer(player_curr_slot_ff));
                end if;

                if(curr_player_state_ff = PS_COMBINING or (curr_player_state_ff = PS_PRE_REQUEST and slot_active_array_ff(to_integer(player_curr_slot_ff)) = '0')) then
                    player_curr_slot_ff <= player_curr_slot_ff + to_unsigned(1, player_curr_slot_ff'length);
                end if;
            end if;
        end if;
    end process;

    player_last_slot <= '1' when (player_curr_slot_ff = to_unsigned(NUM_SLOTS - 1, player_curr_slot_ff'length)) else '0';

    req_rv_valid <=
        '1' when (
            curr_initter_state_ff = IS_REQUESTING_NUM_SAMPLES or
            curr_player_state_ff = PS_REQUESTING_DATA
        ) else '0';
    req_rv_addr <= std_logic_vector(req_addr_ff);

    -- Return RV Interface
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                for s in 0 to NUM_SLOTS - 1 loop
                    num_samples_array_ff(s) <= (others => '0');
                end loop;

                sample_ff <= (others => '0');
            else
                -- Initializer
                if(curr_initter_state_ff = IS_RETURNING_NUM_SAMPLES and return_rv_valid = '1') then
                    num_samples_array_ff(to_integer(initter_curr_slot_ff)) <= unsigned(return_rv_data);
                end if;

                -- Player
                if(curr_player_state_ff = PS_RETURNING_DATA and return_rv_valid = '1') then
                    if(sample_index_array_ff(to_integer(player_curr_slot_ff))(0) = '0') then
                        sample_ff <= resize(signed(return_rv_data(15 downto 0)), sample_ff'length);
                    else
                        sample_ff <= resize(signed(return_rv_data(31 downto 16)), sample_ff'length);
                    end if;
                end if;
            end if;
        end if;
    end process;

    return_rv_ready <= '1' when curr_initter_state_ff = IS_RETURNING_NUM_SAMPLES or curr_player_state_ff = PS_RETURNING_DATA else '0';

    -- Sample Index Logic
    process (clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                sample_index_array_ff   <= (others => (others => '0'));
                byte_index_array_ff     <= (others => (others => '0'));
                slot_active_array_ff    <= (others => '0');
            else
                -- Initializer
                if(curr_initter_state_ff = IS_RETURNING_NUM_SAMPLES) then
                    sample_index_array_ff(to_integer(initter_curr_slot_ff)) <= (others => '0');
                    byte_index_array_ff(to_integer(initter_curr_slot_ff))   <= (others => '0');
                    slot_active_array_ff(to_integer(initter_curr_slot_ff))  <= '1';
                end if;

                -- Player
                if(curr_player_state_ff = PS_WRITING_R and out_rv_ready = '1') then
                    for s in 0 to NUM_SLOTS - 1 loop
                        if(last_sample_array(s) = '0') then
                            sample_index_array_ff(s)    <= sample_index_array_ff(s) + to_unsigned(1, sample_index_array_ff(0)'length);
                            byte_index_array_ff(s)      <= byte_index_array_ff(s) + to_unsigned(BYTES_PER_SAMPLE, byte_index_array_ff(0)'length);
                        else
                            slot_active_array_ff(s) <= '0';
                        end if;
                    end loop;
                end if;
            end if;
        end if;
    end process;

    debug_data(slot_active_array_ff'length - 1 downto 0) <= slot_active_array_ff;

    gen_last_sample_array: for s in 0 to NUM_SLOTS - 1 generate
        last_sample_array(s) <= '1' when (sample_index_array_ff(s) = (num_samples_array_ff(s) - to_unsigned(1, sample_index_array_ff(0)'length))) else '0';
    end generate;

    -- Sleeping logic
    process(clk) begin
        if(rising_edge(clk)) then
            if(curr_player_state_ff = PS_SLEEPING) then
                if(sleep_counter_done = '0') then
                    sleep_counter_ff <= sleep_counter_ff + to_unsigned(1, sleep_counter_ff'length);
                end if;
            else
                sleep_counter_ff <= (others => '0');
            end if;
        end if;
    end process;

    sleep_counter_done <= '1' when (sleep_counter_ff = to_unsigned(SAMPLE_PERIOD_CYCLES - 1, sleep_counter_ff'length)) else '0';

    -- Out RV Interface
    process(clk) begin
        if(rising_edge(clk)) then
            if(aresetn = '0') then
                scaled_sample_ff    <= (others => '0');
                player_vol_coef_ff  <= (others => '0');
                combined_samples_ff <= (others => '0');
            else
                if(curr_player_state_ff = PS_SLEEPING) then
                    combined_samples_ff <= (others => '0');
                end if;

                if(curr_player_state_ff = PS_RETURNING_DATA) then
                    player_vol_coef_ff <= signed(vol_coef_array_ff(to_integer(player_curr_slot_ff)));
                end if;

                if(curr_player_state_ff = PS_SCALING) then
                    scaled_sample_ff <= resize(
                        resize(sample_ff, 16) * resize(player_vol_coef_ff, 16),
                        scaled_sample_ff'length
                    );
                end if;

                if(curr_player_state_ff = PS_COMBINING) then
                    combined_samples_ff <= combined_samples_ff + scaled_sample_ff;
                end if;
            end if;
        end if;
    end process;

    out_rv_valid    <=  '1' when (curr_player_state_ff = PS_WRITING_L or curr_player_state_ff = PS_WRITING_R) else '0';
    out_rv_addr     <=  std_logic_vector(to_unsigned(I2S_DATA_TX_R_REG_ADDR, out_rv_addr'length)) when (curr_player_state_ff = PS_WRITING_R) else
                        std_logic_vector(to_unsigned(I2S_DATA_TX_L_REG_ADDR, out_rv_addr'length));
    out_rv_data     <=  std_logic_vector(combined_samples_ff);

end architecture;