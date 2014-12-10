----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:58:33 11/06/2013 
-- Design Name: 
-- Module Name:    keyboardReaderTop - Behavioral 
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

entity keyboardReaderTop is
    Port ( clk : in  STD_LOGIC;
           ps2data : in  STD_LOGIC;
           ps2clk : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end keyboardReaderTop;

architecture Behavioral of keyboardReaderTop is

	COMPONENT sevenSeg
	PORT(
		d0 : IN std_logic_vector(3 downto 0);
		d1 : IN std_logic_vector(3 downto 0);
		d2 : IN std_logic_vector(3 downto 0);
		d3 : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;          
		seg : OUT std_logic_vector(7 downto 0);
		an : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	
		
SIGNAL digit1, digit2 : std_logic_vector(3 downto 0);
SIGNAL datalatch : std_logic_vector(10 downto 0);
SIGNAL datareset : std_logic;
SIGNAL temp : std_logic_vector (3 downto 0);

begin
---SEVEN SEG CONTROLLER---
Inst_sevenSeg: sevenSeg PORT MAP(
		seg => seg,
		an => an,
		d0 => digit1,
		d1 => digit2,
		d2 => temp,
		d3 => "0000",
		clk => clk
	);
----------------------------
--------SYMBOL RESET-----
PROCESS (clk)
	VARIABLE count1 : INTEGER RANGE 0 to 1000001;
BEGIN
	IF (clk'EVENT and clk = '1') THEN
		IF (ps2data = '0') THEN
			count1 := 0;
			datareset <= '0';
		ELSIF (ps2data = '1') THEN
			count1 := count1 + 1;
			IF (count1 = 1000000) THEN
				datareset <= '1';
			END IF;
--		ELSE
--			count1 := 0;
		END IF;
	END IF;
END PROCESS;
		
--------KEYBOARD READER-----
PROCESS (ps2clk)
	VARIABLE count : INTEGER RANGE 0 TO 15;
BEGIN
	IF (ps2clk'EVENT AND ps2clk = '0') THEN
		IF (datareset = '1') THEN
			count := 0;
		ELSE
			datalatch(count) <= ps2data;
			count := count + 1;
			IF (count = 11) THEN
				count := 0;
			END IF;
		END IF;
	END IF;
END PROCESS;

--datalatch <= "11110011";


digit1 <= datalatch (4 downto 1);
digit2 <= datalatch (8 downto 5);
temp(0) <= datareset;
temp (3 DOWNTO 1) <= "000";
end Behavioral;

