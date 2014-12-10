----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:40 10/03/2013 
-- Design Name: 
-- Module Name:    vga_timing - Behavioral 
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

entity vga_timing is
	--Mode information goes here!
	GENERIC (
		h_res: INTEGER := 1280;
		v_res: INTEGER := 1024;
		h_pulse: INTEGER := 112;
		v_pulse: INTEGER := 3;
		h_bp: INTEGER := 248;
		v_bp: INTEGER := 38;
		h_fp: INTEGER := 48;
		v_fp: INTEGER := 1;
		polarity: STD_LOGIC := '1'); --0 for low sync, 1 for high sync
		
    Port ( pxl_clk : in  STD_LOGIC;
           v_active : BUFFER  STD_LOGIC;
           h_active : BUFFER  STD_LOGIC;
           hsync : BUFFER  STD_LOGIC;
           vsync : out  STD_LOGIC;
           d_ena : out  STD_LOGIC);
end vga_timing;

architecture Behavioral of vga_timing is

begin
--------------------------HORIZONTAL CLOCK-------------------------------------
PROCESS( pxl_clk )
	VARIABLE hcount: INTEGER := 0;
BEGIN
	IF( pxl_clk'EVENT AND pxl_clk = '1' ) THEN
		hcount := hcount + 1;
		IF(hcount = h_pulse) THEN
			hsync <= not polarity;							--0 to h_pulse, sync should be asserted. Now we are deasserting
		ELSIF(hcount = (h_bp+h_pulse)) THEN				--Adding h_bp to h_pulse to find when BP finishes
			h_active <= '1'; 									--h_active has positive polarity, cause I said so
		ELSIF (hcount = (h_bp+h_pulse+h_res)) THEN 		--Active period has ended, time to start FP
			h_active <= '0';
		ELSIF (hcount = (h_bp+h_pulse+h_res+h_fp)) THEN --Hit the end, reset count and assert sync
			hsync <= polarity;
			hcount := 0;
		END IF;
	END IF;
END PROCESS;

--------------------------VERTICAL CLOCK-------------------------------------
PROCESS ( hsync )
	VARIABLE vcount: INTEGER := 0;
BEGIN
	IF( hsync'EVENT AND hsync = '1') THEN
		vcount := vcount +1;
		IF( vcount = v_pulse) THEN
			vsync <= not polarity;
		ELSIF (vcount = (v_bp+v_pulse)) THEN
			v_active <= '1';
		ELSIF (vcount = (v_bp+v_pulse+v_res)) THEN
			v_active <= '0';
		ELSIF (vcount = (v_bp+v_pulse+v_res+v_fp)) THEN
			vsync <= polarity;
			vcount := 0;
		END IF;
	END IF;
END PROCESS;

--------------------------COMBINATIONAL LOGIC-------------------------------------
d_ena <= v_active and h_active;

end Behavioral;

