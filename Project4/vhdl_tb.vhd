----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2014 12:36:32 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use work.ram_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

component xilinx_single_port_ram_no_change is 
 generic (
 RAM_WIDTH : integer;
 RAM_DEPTH : integer;
 RAM_PERFORMANCE : string;
 INIT_FILE : string
);
port (
        addra : in std_logic_vector((clogb2(RAM_DEPTH)-1) downto 0);     -- Address bus, width determined from RAM_DEPTH
        dina  : in std_logic_vector(RAM_WIDTH-1 downto 0);		  -- RAM input data
        clka  : in std_logic;                       			  -- Clock
        wea   : in std_logic;                       			  -- Write enable
        ena   : in std_logic;                       			  -- RAM Enable, for additional power savings, disable port when not in use
        rsta  : in std_logic;                       			  -- Output reset (does not affect memory contents)
        regcea: in std_logic;                       			  -- Output register enable
        douta : out std_logic_vector(RAM_WIDTH-1 downto 0)   	  -- RAM output data
    );                            
end component;

signal clk : std_logic;
signal addra : std_logic_vector(9 downto 0) := "0000000000";
signal data : std_logic_vector(7 downto 0) := x"00";

begin

sine_ram : xilinx_single_port_ram_no_change
 generic map (
 RAM_WIDTH => 8,
 RAM_DEPTH => 1024,
 RAM_PERFORMANCE => "HIGH_PERFORMANCE",
 INIT_FILE => "D:\\sine2.hex"
)
  port map  (
     addra  => addra, 
     dina   => x"00",  
     clka   => clk,  
     wea    => '0',   
     ena    => '1',   
     rsta   => '0',  
     regcea => '1',
     douta  => data 
);

clock_gen : process
begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
end process;

addr_gen : process (clk)
begin
    if clk = '1' and clk'event then
        addra <= addra + '1';
    end if;
end process;

end Behavioral;
