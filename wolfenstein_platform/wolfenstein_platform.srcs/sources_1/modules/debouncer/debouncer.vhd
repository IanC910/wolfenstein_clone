LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity debouncer is
    generic(
        NUM_BUTTONS         : integer := 5;
        HOLD_PERIOD_CYCLES  : integer := 2500000
    );
	port(
        clk : IN STD_LOGIC;
        BUTTONS : IN STD_LOGIC_VECTOR(NUM_BUTTONS - 1 downto 0);
        debounced_BTNS : OUT STD_LOGIC_VECTOR(NUM_BUTTONS - 1 downto 0)
	);
end debouncer;

ARCHITECTURE behaviour OF debouncer IS
    constant COUNT_WIDTH : integer := integer(ceil(log2(real(HOLD_PERIOD_CYCLES)))) + 1;

	SIGNAL r0, r1, check : STD_LOGIC_VECTOR(NUM_BUTTONS - 1 downto 0);
BEGIN
    check <= r0 xor r1;
    
	process(clk)
		VARIABLE count : UNSIGNED(COUNT_WIDTH - 1 downto 0) := (OTHERS => '0');
	begin
		IF (rising_edge(clk)) THEN
			r0 <= BUTTONS;
			r1 <= r0;

			IF(to_integer(unsigned(check)) > 0) then
				count := to_unsigned(0, count'length);
			ELSIF (count < to_unsigned(HOLD_PERIOD_CYCLES, count'length)) then
				count := count + 1;
			ELSE
				debounced_BTNS <= r1;
			END IF;
		END IF;
	end process;

END behaviour;