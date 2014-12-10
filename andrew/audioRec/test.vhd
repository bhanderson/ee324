--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:42:19 12/13/2013
-- Design Name:   
-- Module Name:   /home/andrew/ee324/audioRec/test.vhd
-- Project Name:  audioRec
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: audioRecTop
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT audioRecTop
    PORT(
         clk : IN  std_logic;
         aon : OUT  std_logic;
         anout : OUT  std_logic;
         adc_sdata : IN  std_logic;
         adc_sclk : OUT  std_logic;
         adc_cs : OUT  std_logic;
         Led : OUT  std_logic_vector(7 downto 0);
         btn : IN  std_logic_vector(4 downto 0);
         seg : OUT  std_logic_vector(7 downto 0);
         an : OUT  std_logic_vector(3 downto 0);
         MemAdr : OUT  std_logic_vector(22 downto 0);
         MemDB : INOUT  std_logic_vector(15 downto 0);
         MemOE : OUT  std_logic;
         MemWR : OUT  std_logic;
         MemAdv : OUT  std_logic;
         MemClk : OUT  std_logic;
         RamCS : OUT  std_logic;
         RamCRE : OUT  std_logic;
         RamUB : OUT  std_logic;
         RamLB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal adc_sdata : std_logic := '0';
   signal btn : std_logic_vector(4 downto 0) := (others => '0');

	--BiDirs
   signal MemDB : std_logic_vector(15 downto 0);

 	--Outputs
   signal aon : std_logic;
   signal anout : std_logic;
   signal adc_sclk : std_logic;
   signal adc_cs : std_logic;
   signal Led : std_logic_vector(7 downto 0);
   signal seg : std_logic_vector(7 downto 0);
   signal an : std_logic_vector(3 downto 0);
   signal MemAdr : std_logic_vector(22 downto 0);
   signal MemOE : std_logic;
   signal MemWR : std_logic;
   signal MemAdv : std_logic;
   signal MemClk : std_logic;
   signal RamCS : std_logic;
   signal RamCRE : std_logic;
   signal RamUB : std_logic;
   signal RamLB : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant adc_sclk_period : time := 10 ns;
   constant MemClk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: audioRecTop PORT MAP (
          clk => clk,
          aon => aon,
          anout => anout,
          adc_sdata => adc_sdata,
          adc_sclk => adc_sclk,
          adc_cs => adc_cs,
          Led => Led,
          btn => btn,
          seg => seg,
          an => an,
          MemAdr => MemAdr,
          MemDB => MemDB,
          MemOE => MemOE,
          MemWR => MemWR,
          MemAdv => MemAdv,
          MemClk => MemClk,
          RamCS => RamCS,
          RamCRE => RamCRE,
          RamUB => RamUB,
          RamLB => RamLB
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
--   adc_sclk_process :process
--   begin
--		adc_sclk <= '0';
--		wait for adc_sclk_period/2;
--		adc_sclk <= '1';
--		wait for adc_sclk_period/2;
--   end process;
-- 
--   MemClk_process :process
--   begin
--		MemClk <= '0';
--		wait for MemClk_period/2;
--		MemClk <= '1';
--		wait for MemClk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
