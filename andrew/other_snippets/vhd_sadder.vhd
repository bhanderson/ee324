----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:44 09/15/2013 
-- Design Name: 
-- Module Name:    vhd_sadder - Behavioral 
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

entity vhd_sadder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           C : out  STD_LOGIC;
           S : out  STD_LOGIC);
end vhd_sadder;

architecture Behavioral of vhd_sadder is
	constant s0 : std_logic_vector(1 downto 0) := "00";
	constant s1 : std_logic_vector(1 downto 0) := "01";
	constant s2 : std_logic_vector(1 downto 0) := "10";
	constant s3 : std_logic_vector(1 downto 0) := "11";

	signal curState : std_logic_vector(1 downto 0) := "00";
	signal nxtState : std_logic_vector(1 downto 0) := "00";

begin
process(clk)
begin
        if clk'event and clk='1' then
                if rst = '1' then
                        curState <= s0;
                else
                        curState <= nxtState;
                end if;
        end if;
end process;

process (A,B,rst,curState)
begin
        if rst = '1' then
                nxtState <= s0;
        else
                case curState is
                        when s0 =>
                                if (A xor B) = '1' then
                                        nxtState <= s1;
                                elsif (A and B) = '1' then
                                        nxtState <= s2;
                                else
                                        nxtState <= s0;
                                end if;
                        when s1 =>
                                if (A xor B) = '1' then
                                        nxtState <= s1;
                                elsif (A and B) = '1' then
                                        nxtState <= s2;
                                else
                                        nxtState <= s0;
                                end if;
                        when s2 =>
                                if (A xor B) = '1' then
                                        nxtState <= s2;
                                elsif (A and B) = '1' then
                                        nxtState <= s3;
                                else
                                        nxtState <= s1;
                                end if;
                        when s3 =>
                                if (A xor B) = '1' then
                                        nxtState <= s2;
                                elsif (A and B) = '1' then
                                        nxtState <= s3;
                                else
                                        nxtState <= s1;
                                end if;
								when others =>
										nxtState <= s0;
					end case;
			end if;
end process;

S <= '1'  when curState = s1 or curState = s3 else '0';
C <= '1' when curState = s2 or curState = s3 else '0';


end Behavioral;

