----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:14 09/15/2013 
-- Design Name: 
-- Module Name:    seven_seg_sequential - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seven_seg_sequential is
    Port ( Led : out  STD_LOGIC_VECTOR (7 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
			  an : out STD_LOGIC_VECTOR (3 downto 0) := "0000";
			  seg : out STD_LOGIC_VECTOR (7 downto 0);
			  btn0 : in STD_LOGIC;
			  btn1 : in STD_LOGIC;
			  btn2 : in STD_LOGIC;
			  btn3 : in STD_LOGIC;
			  clk : in STD_LOGIC);
end seven_seg_sequential;

architecture Behavioral of seven_seg_sequential is

	signal digit_zero : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	signal digit_one : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
	signal digit_two : STD_LOGIC_VECTOR (7 downto 0) := "00001111";
	signal digit_three : STD_LOGIC_VECTOR (7 downto 0) := "11110000";
	signal counter : INTEGER := 1;

begin
	-- Display the characters
process (clk)
begin
	an <= "1111";
	IF (clk'EVENT AND clk='1') THEN
	counter <= counter + 1;
	
	IF(counter > 150 and counter < 200) THEN
	-- Display first digit
	seg <= digit_zero;
	an <= "0111";
	
	ELSIF (counter > 250 and counter < 300) THEN
	-- Display second digit
	seg <= digit_one;
	an <= "1011";
	
	ELSIF (counter > 350 and counter < 400) THEN
	-- Display third digit
	seg <= digit_two;
	an <= "1101";
	
	ELSIF (counter > 450 and counter < 500) THEN
	-- Display fourth digit
	seg <= digit_three;
	an <= "1110";
	
	ELSIF (counter >499) THEN
	counter <= 1;
	
	ELSE
	an <= "1111";
	seg <= "11111111";
	END IF;
	END IF;
					
end process;

PROCESS (clk) 
BEGIN
	IF (clk'EVENT and clk='1') THEN
	IF (btn0='1') THEN
		digit_zero <= sw;
		END IF;
		IF (btn1='1') THEN
		digit_one <= sw;
		END IF;
		IF (btn2='1') THEN
		digit_two <= sw;
		END IF;
		IF (btn3='1') THEN
		digit_three <= sw;
	END IF;
	END IF;
END PROCESS;

Led <= sw;

end Behavioral;

