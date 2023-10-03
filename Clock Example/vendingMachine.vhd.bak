library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vendingMachine is
    Port (
        rst : in STD_LOGIC;
        btn : in STD_LOGIC;
        coin : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input for the coins
        LEDX : out STD_LOGIC;
        LEDY : out STD_LOGIC;
        LEDZ : out STD_LOGIC;
        sum_output : out STD_LOGIC_VECTOR(3 downto 0) -- 8-bit output for BCD sum
    );
end vendingMachine;

architecture Behavioral of vendingMachine is
    signal sum : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal reading_coin_1 : BOOLEAN := FALSE;
    signal reading_coin_2 : BOOLEAN := FALSE;

    constant X : STD_LOGIC_VECTOR(3 downto 0) := "0111"; -- Example X value (adjust as needed)
    constant Y : STD_LOGIC_VECTOR(3 downto 0) := "0010"; -- Example Y value (adjust as needed)

begin
    process(btn, rst)
    begin
        if rst = '1' then
            -- Reset the state machine and outputs
            LEDX <= '0';
            LEDY <= '0';
            LEDZ <= '0';
            sum <= (others => '0');
            reading_coin_1 <= FALSE;
            reading_coin_2 <= FALSE;
        elsif rising_edge(btn) then
				if (reading_coin_1 = FALSE or reading_coin_2 = FALSE) then
					if btn = '1' then
						 -- Read coin 1 or coin 2 depending on the state
						 if not reading_coin_1 then
							  sum <= sum + coin;
							  if coin = X then
									LEDX <= '1';
							  elsif coin = Y then
									LEDY <= '1';
							  end if;
							  reading_coin_1 <= TRUE;
						 elsif not reading_coin_2 then
								sum <= sum + coin;
							  if coin = X then
									LEDX <= '1';
							  elsif coin = Y then
									LEDY <= '1';
							  end if;
							  reading_coin_2 <= TRUE;
						 end if;
					end if;
			  end if;
			end if;
			-- Check if the sum is greater than X + Y
			if sum >= (X + Y) then
				LEDZ <= '1';
			else
				LEDZ <= '0';
			end if;
			-- Convert the sum to BCD and send it as output
			sum_output <= sum;
    end process;
end Behavioral;