----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:22 12/13/2013 
-- Design Name: 
-- Module Name:    slotMachineTop - Behavioral 
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

entity slotMachineTop is
    Port ( clk : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           btn : in  STD_LOGIC_VECTOR (4 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end slotMachineTop;

architecture Behavioral of slotMachineTop is
TYPE state IS (s0, s1, s2, s3, s4, s5, s6, s7, s8);
SIGNAL fsm_ps, fsm_ns : state := s0;
SIGNAL random, r_next, r_reg : STD_LOGIC_VECTOR (8 DOWNTO 0);
SIGNAL fsmcount_reg, fsmcount_next : INTEGER RANGE 0 TO 160000000 := 0;
SIGNAL run_1, run_2, run_3, start, rst : STD_LOGIC := '0';
SIGNAL dig_1, dig_2, dig_3 : STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL sseg_1, sseg_2, sseg_3, sseg_4 : STD_LOGIC_VECTOR (3 DOWNTO 0);

	COMPONENT slotModule
	PORT(
		stopLoc : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;
		run : IN std_logic;
		rst : IN std_logic;          
		dig : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	COMPONENT sevenSeg
	PORT(
		d0 : IN std_logic_vector(3 downto 0);
		d1 : IN std_logic_vector(3 downto 0);
		d2 : IN std_logic_vector(3 downto 0);
		d3 : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;          
		seg : OUT std_logic_vector(7 downto 0);
		an : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
begin

	Inst_slotModule1: slotModule PORT MAP(
		stopLoc => r_reg(8 DOWNTO 6),
		clk => clk,
		run => run_1,
		rst => rst,
		dig => dig_1
	);
	
	Inst_slotModule2: slotModule PORT MAP(
		stopLoc => r_reg(5 DOWNTO 3),
		clk => clk,
		run => run_2,
		rst => rst,
		dig => dig_2
	);
	
	Inst_slotModule3: slotModule PORT MAP(
		stopLoc => r_reg(2 DOWNTO 0),
		clk => clk,
		run => run_3,
		rst => rst,
		dig => dig_3
	);

	Inst_sevenSeg: sevenSeg PORT MAP(
		seg => seg,
		an => an,
		d0 => sseg_1,
		d1 => sseg_2,
		d2 => sseg_3,
		d3 => sseg_4,
		clk => clk
	);
	
--ASSIGNMENTS--
sseg_1(3) <= '0';
sseg_1(2 DOWNTO 0) <= dig_1;

sseg_2(3) <= '0';
sseg_2(2 DOWNTO 0) <= dig_2;

sseg_3(3) <= '0';
sseg_3(2 DOWNTO 0) <= dig_3;

sseg_4 <= "0000";

start <= btn(0);
rst <= btn(1);

Led <= "11111111";
--RNG--
PROCESS(clk, r_reg, fsmcount_reg)
BEGIN
IF(clk'EVENT and clk='1') THEN
	random <= random + 1;
END IF;
END PROCESS;

---SEQUENTIAL PART
PROCESS(clk, rst)
BEGIN
IF (rst='1') THEN
	fsm_ps <= s0;
	r_reg <= r_reg;
	fsmcount_reg <= fsmcount_reg;
	
ELSIF(clk'EVENT and clk='1') THEN
	fsm_ps <= fsm_ns;
	r_reg <= r_next;
	fsmcount_reg <= fsmcount_next;
END IF;
END PROCESS;

---COMBINATIONAL PART---
PROCESS(r_reg, fsmcount_reg, random, fsm_ps, start)
BEGIN
	r_next <= r_reg;
	fsmcount_next <= 0;
	run_1 <= '1';
	run_2 <= '1';
	run_3 <= '1';
	
	CASE fsm_ps IS
		WHEN s0 =>
			run_1 <= '0';
			run_2 <= '0';
			run_3 <= '0';
			IF(start = '1') THEN
				fsm_ns <= s1;
			ELSE
				fsm_ns <= s0;
			END IF;
		
		WHEN s1 =>
			run_1 <= '0';
			run_2 <= '0';
			run_3 <= '0';
			r_next <= random;
			fsm_ns <= s2;
		WHEN s2 =>
			--2 second delay here--
			fsmcount_next <= fsmcount_reg + 1;
			IF(fsmcount_reg > 150000000) THEN
				fsm_ns <= s3;
			ELSE
				fsm_ns <= s2;
			END IF;
		WHEN s3 =>
			fsm_ns <= s4;
		WHEN s4 =>
			run_1 <= '0';
			fsmcount_next <= fsmcount_reg + 1;
			IF(fsmcount_reg > 150000000) THEN
				fsm_ns <= s5;
			ELSE
				fsm_ns <= s4;
			END IF;
		WHEN s5 =>
			fsm_ns <= s6;
			run_1 <= '0';
		WHEN s6 =>
			run_1 <= '0';
			run_2 <= '0';
			fsmcount_next <= fsmcount_reg + 1;
			IF(fsmcount_reg > 150000000) THEN
				fsm_ns <= s7;
			ELSE
				fsm_ns <= s6;
			END IF;
		WHEN s7 =>
			run_1 <= '0';
			run_2 <= '0';
			run_3 <= '0';
			fsm_ns <= s0;
			
		WHEN OTHERS =>
			fsm_ns <= s0;
	END CASE;
END PROCESS;
	
end Behavioral;

