----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:14 09/15/2013 
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
    Port ( Led : out  STD_LOGIC_VECTOR (7 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
			  an : out STD_LOGIC_VECTOR (3 downto 0);
			  seg : out STD_LOGIC_VECTOR (7 downto 0);
			  btn : in STD_LOGIC_VECTOR (3 downto 0));
end sevenSeg;

architecture Behavioral of sevenSeg is

begin

Led <= sw;
seg <= sw;
an <= btn;

end Behavioral;

