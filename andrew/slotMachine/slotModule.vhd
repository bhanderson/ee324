----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:20 12/13/2013 
-- Design Name: 
-- Module Name:    slotModule - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity slotModule is
    Port ( stopLoc : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
           run : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           dig : out  STD_LOGIC_VECTOR (2 downto 0));
end slotModule;

architecture Behavioral of slotModule is
SIGNAL clock_div : STD_LOGIC;
SIGNAL clock_counter : STD_LOGIC_VECTOR (23 DOWNTO 0);
SIGNAL counter : STD_LOGIC_VECTOR (2 DOWNTO 0);
begin
---CLOCK DIV 100MHZ to 5 HZ---
PROCESS(clk, rst)
BEGIN
IF(rst='1') THEN
	clock_counter <= (OTHERS => '0');
ELSIF(clk'EVENT and clk='1') THEN
	clock_counter <= clock_counter + 1;
END IF;
END PROCESS;

clock_div <= clock_counter(23);

---COUNTER 1 to 8---
PROCESS(clock_div, rst)
BEGIN
IF(rst='1') THEN
	counter <= "000";
ELSIF(clock_div'EVENT and clock_div='1') THEN
	IF(run='1' OR counter /= stopLoc) THEN
		counter <= counter + 1;
	END IF;
END IF;
END PROCESS;

dig <= counter;

end Behavioral;

