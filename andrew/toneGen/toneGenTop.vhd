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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity toneGenTop is
    Port ( clk_pad : in  STD_LOGIC;
           ps2data : in  STD_LOGIC;
           ps2clk : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
			  anout : out STD_LOGIC;
			  aon : out STD_LOGIC;
			  again : out STD_LOGIC
			  );
end toneGenTop;

architecture Behavioral of toneGenTop is

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
	
	COMPONENT sinerom
	PORT(
		addr : IN std_logic_vector(7 downto 0);          
		sin : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT eightPWM
	PORT(
		digin : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		pwmout : OUT std_logic
		);
	END COMPONENT;
	
	component clockDiv
	port
 (-- Clock in ports
  clk_pad           : in     std_logic;
  -- Clock out ports
  clk1          : out    std_logic;
  clk          : out    std_logic
 );
end component;
		
SIGNAL digit1, digit2, digit3, digit4 : std_logic_vector(3 downto 0);
SIGNAL datalatch, prevdata : std_logic_vector(10 downto 0);
SIGNAL datareset : std_logic;
SIGNAL temp : std_logic_vector (3 downto 0);
SIGNAL sineaddr : std_logic_vector (7 downto 0);
SIGNAL sinevalue : std_logic_vector (7 downto 0);
SIGNAL clk1 : std_logic;
SIGNAL clk : std_logic;
SIGNAL pwmout : std_logic;
SIGNAL pwmen : std_logic;
SIGNAL tonediv : INTEGER;

begin
-------CLOCK DIV----------
Inst_clockDiv : clockDiv
  port map
   (-- Clock in ports
    clk_pad => clk_pad,
    -- Clock out ports
    clk1 => clk1,
	 clk => clk
	 );
--------------------------
------PWM-----------------
Inst_eightPWM: eightPWM PORT MAP(
		digin => sinevalue,
		pwmout => pwmout,
		clk => clk
	);
--------------------------
---SINE ROM---------------
Inst_sinerom: sinerom PORT MAP(
		addr => sineaddr,
		sin => sinevalue
	);
--------------------------
---SEVEN SEG CONTROLLER---
Inst_sevenSeg: sevenSeg PORT MAP(
		seg => seg,
		an => an,
		d0 => digit1,
		d1 => digit2,
		d2 => digit3,
		d3 => digit4,
		clk => clk
	);
----------------------------
---------TONE SELECTOR------
PROCESS (ps2clk)
BEGIN
	IF (ps2clk'EVENT AND ps2clk = '0') THEN
		IF (prevdata(8 DOWNTO 1) = "11110000" OR tonediv = 2000) THEN 
			pwmen <= '0';
		ELSE
			pwmen <= '1';
		END IF;
	END IF;
END PROCESS;

WITH datalatch(8 DOWNTO 1) SELECT 
	tonediv <=
		758 WHEN X"0D",
		705 WHEN X"16",
		665 WHEN X"15",
		628 WHEN X"1E",
		592 WHEN X"1D",
		559 WHEN X"24",
		527 WHEN X"25",
		498 WHEN X"2D",
		471 WHEN X"2E",
		444 WHEN X"2C",
		419 WHEN X"36",
		395 WHEN X"35",
		373 WHEN X"3C",
		352 WHEN X"3E",
		332 WHEN X"43",
		314 WHEN X"46",
		296 WHEN X"44",
		280 WHEN X"4D",
		264 WHEN X"4E",
		249 WHEN X"54",
		235 WHEN X"55",
		222 WHEN X"5B",
		2000 WHEN OTHERS;
		
	
---------WAVE TABLE GEN-----
PROCESS (clk1)
	VARIABLE count2 : INTEGER;
	VARIABLE addrcount : INTEGER RANGE 0 TO 255;	
BEGIN
	IF (clk1'EVENT and clk1 = '1') THEN
		IF ((count2 mod tonediv) = 0) THEN
			sineaddr <= std_logic_vector(unsigned(sineaddr) + 1);
		END IF;
	count2 := count2 + 1;
	END IF;
END PROCESS;
			

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
			prevdata(count+1) <= datalatch(count+1);
			datalatch(count) <= ps2data;
			count := count + 1;
			IF (count = 11) THEN
				count := 0;
			END IF;
		END IF;
	END IF;
END PROCESS;

--datalatch <= "11110011";
--tonediv <= 326;

digit1 <= datalatch (4 downto 1);
digit2 <= datalatch (8 downto 5);
digit3 <= prevdata (4 downto 1);
digit4 <= prevdata (8 downto 5);
--temp(0) <= datareset;
--temp (3 DOWNTO 1) <= "000";
aon <= '1';
again <= '1';
anout <= pwmout AND pwmen;
end Behavioral;

