----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:18 09/16/2014 
-- Design Name: 
-- Module Name:    ReactionTimer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ReactionTimer is
    Port ( CLK : in  STD_LOGIC;
		   SWT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0);
           LED : out  STD_LOGIC_VECTOR (3 downto 0));
end ReactionTimer;

architecture Behavioral of ReactionTimer is
-- variables
signal count, millis, hundreths, tenths, seconds, tens, random : integer := 0;
signal mclk, btnpressed : STD_LOGIC := '0';
-- procedures
procedure ssd_decode(
		signal decimal : in integer;
		signal ssd_out : out std_logic_vector (7 downto 0)) is
		variable temp : std_logic_vector (7 downto 0);
	begin
		case decimal is
			when 0=> temp := "11000000";
			when 1=> temp := "11111001";
			when 2=> temp := "10100100";
			when 3=> temp := "10110000";
			when 4=> temp := "10011001";
			when 5=> temp := "10010010";
			when 6=> temp := "10000010";
			when 7=> temp := "11111000";
			when 8=> temp := "10000000";
			when 9=> temp := "10010000";
			when 99=> temp := "01111111";
			when others=> temp := "10000110";
		end case;
	ssd_out <= temp;
	ssd_out(7) <= '1';
end ssd_decode;

begin

-- clock divider
process (CLK)
begin
	if rising_edge(CLK) then
		if count = (100000000 / 1000) then
			mclk <= '1';
			count <= 0;
		else
			count <= count + 1;
			mclk <= '0';
		end if;
	end if;
end process;

process (CLK, BTN, SWT)
begin
	if rising_edge(CLK) then
		if BTN = '1' and SWT = '1' then
			btnpressed <= '1';
		elsif BTN = '0' and SWT = '0' then
			btnpressed <= '0';
		end if;
	end if;
end process;

-- millisecond counter
process (mclk, btnpressed, SWT)
begin
	if (rising_edge(mclk) and btnpressed = '0') then
		if (random < 3000) and SWT = '1' then
			random <= random + 1;
		elsif SWT <= '0' then
			millis <= 0;
			hundreths <= 0;
			tenths <= 0;
			seconds <= 0;
			tens <= 0;
			random <= 0;
			LED <= "0000";
		elsif millis = 9 then
			millis <= 0;
			hundreths <= hundreths + 1;
			if hundreths = 9 then
				hundreths <= 0;
				tenths <= tenths + 1;
				if tenths = 9 then
					tenths <= 0;
					seconds <= seconds + 1;
					if seconds = 9 then
						seconds <= 0;
						tens <= tens + 1;
						if tens = 15 then
							tens <= 0;
						end if;
					end if;
				end if;
			end if;
		else
			LED <= "1111";
			millis <= millis + 1;
		end if;
	end if;
end process;

-- display sseg
process (count, tens, seconds, tenths, hundreths, millis)
begin
	if count > 0 and count < 20000 then
		AN <= "1110";
		ssd_decode(decimal => millis, ssd_out => SSEG);
	elsif count > 20000 and count < 40000 then
		AN <= "1101";
		ssd_decode(decimal => hundreths, ssd_out => SSEG);
	elsif count > 40000 and count < 60000 then
		AN <= "1011";
		ssd_decode(decimal => tenths, ssd_out => SSEG);
	elsif count > 60000 and count < 80000 then
		AN <= "0111";
		ssd_decode(decimal => seconds, ssd_out => SSEG);
	else
		AN <= "0111";
		SSEG <= "01111111";
	end if;
end process;



end Behavioral;

