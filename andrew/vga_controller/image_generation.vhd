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
				blue : out  STD_LOGIC_VECTOR (1 downto 0));
end image_generation;

architecture Behavioral of image_generation is

begin
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
		
		IF((row = 512 OR col = 640) AND d_ena = '1') THEN
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

