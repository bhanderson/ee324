----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:47:27 10/03/2013 
-- Design Name: 
-- Module Name:    vga_controller_top - Behavioral 
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
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_controller_top is
    Port ( clk : in  STD_LOGIC;
           vgaRed : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaGreen : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaBlue : out  STD_LOGIC_VECTOR (1 downto 0);
			  Hsync : out STD_LOGIC;
			  Vsync : out STD_LOGIC);
end vga_controller_top;

architecture Behavioral of vga_controller_top is
--------------------------COMPONENT DECLARATIONS------------------------
	component clock_div
		port
		 (
		  CLK_IN1           : in     std_logic;
		  CLK_OUT1          : out    std_logic
		 );
	end component;
	
	COMPONENT vga_timing
	PORT(
		pxl_clk : IN std_logic;          
		v_active : BUFFER std_logic;
		h_active : BUFFER std_logic;
		hsync : BUFFER std_logic;
		vsync : OUT std_logic;
		d_ena : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT image_generation
	PORT(
		pxl_clk : IN std_logic;
		v_active : IN std_logic;
		h_active : IN std_logic;
		d_ena : IN std_logic;          
		red : OUT std_logic_vector(2 downto 0);
		green : OUT std_logic_vector(2 downto 0);
		blue : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
------------------------------------------------------------------------
--------------------------SIGNAL DECLARATIONS---------------------------
SIGNAL pixel_clock, vertical_active, horizontal_active, vertical_sync, horizontal_sync, data_enable : STD_LOGIC;

begin

-----------------------------CLOCK DIVIDER------------------------------
clock1: clock_div
port map (
	CLK_OUT1 => pixel_clock,
	CLK_IN1 => clk);
------------------------------------------------------------------------
-----------------------------TIMING GENERATOR---------------------------
timing1: vga_timing PORT MAP(
		pxl_clk => pixel_clock,
		v_active => vertical_active,
		h_active => horizontal_active,
		hsync => horizontal_sync,
		vsync => vertical_sync,
		d_ena => data_enable
	);
------------------------------------------------------------------------
-----------------------------IMAGE GENERATOR----------------------------
imagegen1: image_generation PORT MAP(
		pxl_clk => pixel_clock,
		v_active => vertical_active,
		h_active => horizontal_active,
		d_ena => data_enable,
		red => vgaRed,
		green => vgaGreen,
		blue => vgaBlue
	);
------------------------------------------------------------------------
------------------------------COMBINATIONAL LOGIC-----------------------
Hsync <= horizontal_sync;
Vsync <= vertical_sync;
--vgaRed <= "111";
--vgaGreen <= "111";
--vgaBlue <= "11";

end Behavioral;

