----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:47:28 10/30/2013 
-- Design Name: 
-- Module Name:    sevenSeg - Behavioral 
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

entity sevenSeg is
    Port ( seg : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           d0 : in  STD_LOGIC_VECTOR (3 downto 0);
           d1 : in  STD_LOGIC_VECTOR (3 downto 0);
           d2 : in  STD_LOGIC_VECTOR (3 downto 0);
           d3 : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in STD_LOGIC);
end sevenSeg;

architecture Behavioral of sevenSeg is
	SIGNAL d0_seg, d1_seg, d2_seg, d3_seg : STD_LOGIC_VECTOR (7 downto 0);

begin

--7 Seg driver proccess--
PROCESS(clk)
VARIABLE counter : INTEGER RANGE 0 TO 500 := 0;
BEGIN
        an <= "1111";
        IF (clk'EVENT AND clk='1') THEN
        counter := counter + 1;

        IF(counter > 130 and counter < 200) THEN
        -- Display first digit
        seg <= d3_seg AND "01111111";
        an <= "0111";

        ELSIF (counter > 230 and counter < 300) THEN
        -- Display second digit
        seg <= d2_seg;
        an <= "1011";

        ELSIF (counter > 330 and counter < 400) THEN
        -- Display third digit
        seg <= d1_seg;
        an <= "1101";

        ELSIF (counter > 430 and counter < 500) THEN
        -- Display fourth digit
        seg <= d0_seg;
        an <= "1110";

        ELSIF (counter >499) THEN
        counter := 1;

        ELSE
        an <= "1111";
        seg <= "11111111";
        END IF;
        END IF;
END PROCESS;

------DIGIT DECODER--------
------------------------------Decoders------------------------------------	
WITH d0 SELECT
	d0_seg <=
		"11000000" when "0000",
		"11111001" when "0001",
		"10100100" when "0010",
		"10110000" when "0011",
		"10011001" when "0100",
		"10010010" when "0101",
		"10000010" when "0110",
		"11111000" when "0111",
		"10000000" when "1000",
		"10010000" when "1001",
		"10001000" when "1010",
		"10000011" when "1011",
		"10100111" when "1100",
		"10100001" when "1101",
		"10000110" when "1110",
		"10001110" when "1111",
		"11111111" WHEN OTHERS;
WITH d1 SELECT
	d1_seg <=
		"11000000" when "0000",
		"11111001" when "0001",
		"10100100" when "0010",
		"10110000" when "0011",
		"10011001" when "0100",
		"10010010" when "0101",
		"10000010" when "0110",
		"11111000" when "0111",
		"10000000" when "1000",
		"10010000" when "1001",
		"10001000" when "1010",
		"10000011" when "1011",
		"10100111" when "1100",
		"10100001" when "1101",
		"10000110" when "1110",
		"10001110" when "1111",
		"11111111" WHEN OTHERS;
WITH d2 SELECT
	d2_seg <=
		"11000000" when "0000",
		"11111001" when "0001",
		"10100100" when "0010",
		"10110000" when "0011",
		"10011001" when "0100",
		"10010010" when "0101",
		"10000010" when "0110",
		"11111000" when "0111",
		"10000000" when "1000",
		"10010000" when "1001",
		"10001000" when "1010",
		"10000011" when "1011",
		"10100111" when "1100",
		"10100001" when "1101",
		"10000110" when "1110",
		"10001110" when "1111",
		"11111111" WHEN OTHERS;
WITH d3 SELECT
	d3_seg <=
		"11000000" when "0000",
		"11111001" when "0001",
		"10100100" when "0010",
		"10110000" when "0011",
		"10011001" when "0100",
		"10010010" when "0101",
		"10000010" when "0110",
		"11111000" when "0111",
		"10000000" when "1000",
		"10010000" when "1001",
		"10001000" when "1010",
		"10000011" when "1011",
		"10100111" when "1100",
		"10100001" when "1101",
		"10000110" when "1110",
		"10001110" when "1111",
		"11111111" WHEN OTHERS;


end Behavioral;

