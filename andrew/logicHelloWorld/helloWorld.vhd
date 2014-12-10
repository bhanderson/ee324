----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:14 09/15/2013 
-- Design Name: 
-- Module Name:    helloWorld - Behavioral 
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

entity helloWorld is
    Port ( Led : out  STD_LOGIC_VECTOR (7 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0));
end helloWorld;

architecture Behavioral of helloWorld is

begin

Led <= sw;

end Behavioral;

