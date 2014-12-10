----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:40 10/03/2013 
-- Design Name: 
-- Module Name:    image_generation - Behavioral 
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

entity image_generation is
    Port ( 	
				pxl_clk : in STD_LOGIC;
				v_active : in  STD_LOGIC;
				h_active : in  STD_LOGIC;
				d_ena : in  STD_LOGIC;
				red : out  STD_LOGIC_VECTOR (2 downto 0);
				green : out  STD_LOGIC_VECTOR (2 downto 0);
				blue : out  STD_LOGIC_VECTOR (1 downto 0);
				btn : in STD_LOGIC_VECTOR (4 downto 0));
end image_generation;

architecture Behavioral of image_generation is
SIGNAL xpos, ypos : INTEGER;
SIGNAL direction : INTEGER := 1;
SIGNAL snake_clk : STD_LOGIC;
begin
--button input logic--
with btn select
	direction <=
		1 when "10000",
		2 when "01000",
		3 when "00100",
		4 when "00010",
		0 when others;
--Clock divider down to 10^-5 pxl_clock
PROCESS(pxl_clk)
	VARIABLE counter: INTEGER := 0;
	VARIABLE divisor: INTEGER := 50000;
	BEGIN
		IF(pxl_clk'EVENT and pxl_clk = '1') THEN
			counter := counter + 1;
			if (counter = divisor) THEN
				snake_clk <= not snake_clk;
				counter := 0;
			END IF;
		END IF;
END PROCESS;
----------------------------------------
-----------------Position updater------
PROCESS(snake_clk)
BEGIN
	IF(snake_clk'EVENT and snake_clk = '1') THEN
		IF (direction = 1) THEN
			xpos <= xpos + 1;
		ELSIF (direction = 3) THEN
			xpos <= xpos - 1;
		ELSIF (direction = 2) THEN
			ypos <= ypos + 1;
		ELSIF (direction = 4) THEN
			ypos <= ypos - 1;
		END IF;
	----Rollover--
		IF (xpos < 1) THEN
			xpos <= 1279;
		ELSIF (xpos > 1279) THEN
			xpos <= 1;
		END IF;
		IF (ypos < 1) THEN
			ypos <= 1023;
		ELSIF (ypos > 1023) THEN
			ypos <= 1;
		END IF;
	END IF;
END PROCESS;

PROCESS(pxl_clk, v_active, h_active, d_ena)
VARIABLE row: INTEGER := 0;
VARIABLE col: INTEGER := 0;
BEGIN
		IF(h_active'EVENT and h_active = '1') THEN
			row := row +1;
			IF(v_active = '0') THEN
				row := 0;
			END IF;
		END IF;
		
	IF(pxl_clk'EVENT and pxl_clk = '1') THEN
		IF(h_active = '1') THEN
			col := col + 1;
		ELSE
			col := 0;
		END IF;
		
		IF((row < ypos +4 AND row > ypos - 4) AND (col < xpos + 4 AND col > xpos - 4) AND d_ena = '1') THEN
			blue <= "00";
			red <="111";
			green <="000";
		ELSIF (d_ena = '1') THEN
			blue <="11";
			red <="000";
			green <="000";
		ELSE
			blue <="00";
			red <="000";
			green <="000";
		END IF;
	END IF;
	
END PROCESS;

end Behavioral;

