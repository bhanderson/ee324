--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:21:50 09/25/2014
-- Design Name:   
-- Module Name:   Z:/bhanderson On My Mac/Documents/src/ee324/Keyboardv3/test_top.vhd
-- Project Name:  Keyboardv3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Project2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_top IS
END test_top;
 
ARCHITECTURE behavior OF test_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Project2
    PORT(
         clk : IN  std_logic;
			reset: in std_logic;
         PS2KeyboardData : IN  std_logic;
         PS2KeyboardClk : IN  std_logic;
         seg : OUT  std_logic_vector(7 downto 0);
         an : OUT  std_logic_vector(3 downto 0);
			debug: out std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	signal reset: std_logic;
   signal ps2d : std_logic := '0';
   signal ps2c : std_logic := '0';
	signal debug: std_logic_vector(7 downto 0);
 	--Outputs
   signal seg : std_logic_vector(7 downto 0);
   signal an : std_logic_vector(3 downto 0);
	type keydata_type is array(0 to 2) of std_logic_vector(7 downto 0);
	constant keydata: keydata_type := (x"1C", x"f0", x"1C");
	signal data: std_logic_vector(7 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Project2 PORT MAP (
          clk => clk,
			 reset => reset,
          PS2KeyboardData => ps2d,
          PS2KeyboardClk => ps2c,
          seg => seg,
          an => an,
			 debug => debug
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	process begin
		ps2d <='1';
		ps2c <='1';
		wait for 1 ms;
		for j in 0 to 2 loop
			--start bit
			data <= keydata(j)(7 downto 0);
			ps2d <='0';
			ps2c <='1';
			wait for 32 us;		
			ps2c <='0';
			wait for 32 us;
			--data bits
			for i in 0 to 7 loop
				ps2d <=keydata(j)(i);
				ps2c <='1';
				wait for 32 us;		
				ps2c <='0';
				wait for 32 us;
			end loop;
			--parity
			ps2d <= not( 
						keydata(j)(0) xor keydata(j)(1) xor keydata(j)(2) xor keydata(j)(3) xor
						keydata(j)(4) xor keydata(j)(5) xor keydata(j)(6) xor keydata(j)(7) 
						);
			ps2c <='1';
			wait for 32 us;		
			ps2c <='0';
			wait for 32 us;
			--stop
			ps2d <= '1';
			ps2c <='1';
			wait for 32 us;		
			ps2c <='0';
			wait for 32 us;
			
			ps2c <='1';
			wait for 50 ms;
		end loop;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <='1';
      wait for 100 ns;	
		reset <='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
