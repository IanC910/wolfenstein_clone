LIBRARY IEEE;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

entity debouncer is
	port(
	clk : IN STD_LOGIC;
	BUTTONS : IN STD_LOGIC_VECTOR(4 downto 0);
	debounced_BTNS : OUT STD_LOGIC_VECTOR(4 downto 0)
	);
end debouncer;

ARCHITECTURE behaviour OF debouncer IS
	SIGNAL ff : STD_LOGIC_VECTOR(1 downto 0);
	SIGNAL r0, r1, check : STD_LOGIC_VECTOR(4 downto 0);
BEGIN
	

	process(clk)
		VARIABLE count : UNSIGNED(19 downto 0) := (OTHERS => '0');
	begin
        for i in 0 to 4 loop
            check(i) <= r0(i) XOR r1(i);
        end loop;
		IF (rising_edge(clk)) THEN
			r0 <= BUTTONS;
			r1 <= r0;
			IF(to_integer(unsigned(check)) > 0) then
				count := to_unsigned(0,20);
			ELSIF (count < to_unsigned(500000,20)) then
				count := count + 1;
			ELSE
				debounced_BTNS <= r1;
			END IF;
		END IF;
	end process;
	
END Behaviour;