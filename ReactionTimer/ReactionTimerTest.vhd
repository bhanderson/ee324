--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:18:24 09/16/2014
-- Design Name:   
-- Module Name:   C:/Users/Bryce/Google Drive/Fall 2014/ee324/src/ReactionTimer/ReactionTimerTest.vhd
-- Project Name:  ReactionTimer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ReactionTimer
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
 
ENTITY ReactionTimerTest IS
END ReactionTimerTest;
 
ARCHITECTURE behavior OF ReactionTimerTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ReactionTimer
    PORT(
         CLK : IN  std_logic;
         SWT : IN  std_logic;
         BTN : IN  std_logic;
         SSEG : OUT  std_logic_vector(7 downto 0);
         AN : OUT  std_logic_vector(3 downto 0);
         LED : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal SWT : std_logic := '0';
   signal BTN : std_logic := '0';

 	--Outputs
   signal SSEG : std_logic_vector(7 downto 0);
   signal AN : std_logic_vector(3 downto 0);
   signal LED : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ReactionTimer PORT MAP (
          CLK => CLK,
          SWT => SWT,
          BTN => BTN,
          SSEG => SSEG,
          AN => AN,
          LED => LED
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
		SWT <= '1';
		wait for 100 ms;
		BTN <= '1';
      wait;
   end process;

END;
