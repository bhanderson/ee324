----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:24:16 11/06/2013 
-- Design Name: 
-- Module Name:    eightPWM - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eightPWM is
    Port ( digin : in  STD_LOGIC_VECTOR (11 downto 0);
           pwmout : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end eightPWM;

architecture Behavioral of eightPWM is

begin
PROCESS (clk)
VARIABLE count : STD_LOGIC_VECTOR (11 DOWNTO 0);
BEGIN
	IF (clk'EVENT AND clk = '1') THEN
		count := count + 1;
		IF (count > digin) THEN
			pwmout <= '1';
		ELSE
			pwmout <= '0';
		END IF;
	END IF;
END PROCESS;

--pwmout <= '0';

end Behavioral;

