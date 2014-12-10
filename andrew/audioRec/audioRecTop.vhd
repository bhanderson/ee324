----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:15 12/10/2013 
-- Design Name: 
-- Module Name:    audioRecTop - Behavioral 
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

entity audioRecTop is
    Port ( clk : IN STD_LOGIC;
				aon, anout : OUT STD_LOGIC;
				adc_sdata : IN STD_LOGIC;
				adc_sclk, adc_cs : OUT STD_LOGIC;
				Led : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
				btn : in  STD_LOGIC_VECTOR (4 downto 0);
           seg : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
			  MemAdr : OUT STD_LOGIC_VECTOR (22 DOWNTO 0);
			  MemDB : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			  MemOE, MemWR, MemAdv, MemClk, RamCS, RamCRE, RamUB, RamLB : OUT STD_LOGIC
			  --MemWait : IN STD_LOGIC
			  );
end audioRecTop;

architecture Behavioral of audioRecTop is

TYPE state IS (s0, s1, s2, s3, s4, s5, s6, s7, s8);
SIGNAL fsm_ps : state := s0;
SIGNAL fsm_ns : state := s0;
SIGNAL mem_store, mem_load : STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL mem_start, mem_write, mem_ready : STD_LOGIC;
SIGNAL count : INTEGER RANGE 0 to 100 := 0;
SIGNAL count1 : INTEGER RANGE 0 to 20 := 0;
SIGNAL adc_start, adc_done, pwm_en : STD_LOGIC;
SIGNAL btn_0, btn_1, sample_clock, rec, play, rst, nrec : STD_LOGIC;
SIGNAL clock_count : INTEGER RANGE 0 to 2300 := 0;

	COMPONENT stopwatch
	PORT(
		start : IN std_logic;
		stop : IN std_logic;
		rst : IN std_logic;
		inc : IN std_logic;
		clk : IN std_logic;          
		Led : OUT std_logic_vector(3 downto 0);
		an : OUT std_logic_vector(3 downto 0);
		seg : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT memController
	PORT(
		clk : IN std_logic;
		idata : IN std_logic_vector(15 downto 0);
		wri : IN std_logic;
		ack : IN std_logic;    
		mdata : INOUT std_logic_vector(15 downto 0); 
		ce : OUT std_logic;
		maddr : OUT std_logic_vector(22 downto 0);
		oe : OUT std_logic;
		we : OUT std_logic;
		lb : OUT std_logic;
		ub : OUT std_logic;
		cre : OUT std_logic;
		odata : OUT std_logic_vector(15 downto 0);
		done : OUT std_logic;
		rst : IN std_logic
		);
	END COMPONENT;
	
	COMPONENT PmodMICRefComp
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		SDATA : IN std_logic;
		START : IN std_logic;          
		SCLK : OUT std_logic;
		nCS : OUT std_logic;
		DATA : OUT std_logic_vector(11 downto 0);
		DONE : OUT std_logic;
		CLKOUT : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT eightPWM
	PORT(
		digin : IN std_logic_vector(11 downto 0);
		clk : IN std_logic;          
		pwmout : OUT std_logic
		);
	END COMPONENT;

begin

---ASSIGNMENTS
MemClk <= '0';
MemAdv <= '0';
rec <= btn_0;
play <= btn_1;
rst <= btn(4);
nrec <= not rec;
--mem_store <= adc_data;
pwm_en <= play;
aon <= pwm_en;
mem_store (15 DOWNTO 12) <= (OTHERS => '0');

Inst_stopwatch: stopwatch PORT MAP(
		an => an,
		seg => seg,
		start => rec,
		stop => nrec,
		rst => rst,
		inc => '0',
		clk => clk
	);

Inst_memController: memController PORT MAP(
		ce => RamCS,
		maddr => MemAdr,
		oe => MemOE,
		we => MemWR,
		lb => RamLB,
		ub => RamUB,
		cre => RamCRE,
		mdata => MemDB,
		clk => clk,
		idata => mem_store,
		odata => mem_load,
		wri => mem_write,
		ack => mem_start,
		done => mem_ready,
		rst => rst
	);
	
	Inst_PmodMICRefComp: PmodMICRefComp PORT MAP(
		CLK => clk,
		RST => rst,
		SDATA => adc_sdata,
		SCLK => adc_sclk,
		nCS => adc_cs,
		DATA => mem_store (11 DOWNTO 0),
		START => adc_start,
		DONE => adc_done,
		CLKOUT => Led(6)
	);
	
	Inst_eightPWM: eightPWM PORT MAP(
		digin => mem_load (11 DOWNTO 0),
		pwmout => anout,
		clk => clk
	);
	--READ DATA INTO MEMORY WHEN BTN(0) IS HELD--
	--WRITE DATA FROM MEMORY WHEN BTN(1) IS HELD--
	---CONTROLLER FSM---
	---SEQUENTIAL PART---
	PROCESS(clk)
	BEGIN
	IF(clk'EVENT AND clk = '1') THEN
		fsm_ps <= fsm_ns;
	END IF;
	END PROCESS;
	---COMBINATIONAL PART---
	PROCESS (sample_clock, play, rec, adc_done, mem_ready, fsm_ps)
	BEGIN
	
	mem_write<= '0';
	mem_start <= '0';
	adc_start <= '0';
	
	CASE fsm_ps IS
		WHEN s0 =>
			IF(sample_clock = '0') THEN
				fsm_ns <= s1;
			ELSE
				fsm_ns <= s0;
			END IF;		
		WHEN s1 =>
			IF (sample_clock = '1' and rec = '1' AND adc_done = '1' AND play = '0') THEN
				fsm_ns <= s2;
			ELSIF (sample_clock = '1' AND play = '1') THEN
				fsm_ns <= s6;
			ELSE
				fsm_ns <= s1;
			END IF;
		WHEN s2 =>
			fsm_ns <= s3;
			adc_start <= '1';
		
		WHEN s3 =>
			adc_start <= '0';
			IF (adc_done = '1' AND mem_ready = '1') THEN
				fsm_ns <= s4;
			ELSE
				fsm_ns <= s3;
			END IF;
		
		WHEN s4 =>
			mem_start <= '1';
			mem_write <= '1';
			fsm_ns <= s5;
		
		WHEN s5 =>
			IF (mem_ready = '1') THEN
				fsm_ns <= s0;
			ELSE
				fsm_ns <= s5;
			END IF;
			
		WHEN s6 =>
			IF (mem_ready = '1') THEN
				fsm_ns <= s7;
			ELSE
				fsm_ns <= s6;
			END IF;
		WHEN s7 =>
			mem_write <= '0';
			mem_start <= '1';
			fsm_ns <= s8;
		WHEN s8 =>
			mem_write <= '0';
			IF (mem_ready = '1') THEN
				fsm_ns <= s0;
			ELSE
				fsm_ns <= fsm_ps;
			END IF;	
		WHEN OTHERS =>
			mem_write<= '0';
			mem_start <= '0';
			adc_start <= '0';
			fsm_ns <= s0;
		
		END CASE;
	END PROCESS;
	---~44 KHz CLOCK DIV----
	PROCESS(clk)
	BEGIN
	IF (clk'EVENT AND clk='1') THEN
		clock_count <= clock_count + 1;
		IF(clock_count >= 2272) THEN
			sample_clock <= '0';
			clock_count <= 0;
		ELSIF(clock_count < 1131) THEN
			sample_clock <= '0';
		ELSE
			sample_clock <= '1';
		END IF;
	END IF;
	END PROCESS;
	
	Led(7) <= mem_load (0);
	Led(0) <= play;
	Led(1) <= rec;
	Led(2) <= sample_clock;
	Led(3) <= adc_done;
	Led(4) <= mem_ready;
	Led(5) <= rst;
	
	
	---BUTTON DEBOUNCERS---
	PROCESS(clk)
	BEGIN
	IF(clk'EVENT and clk = '1') THEN
		IF(btn(0) = '1' AND count < 100) THEN
			count <= count + 1;
		ELSIF (btn(0) = '0' AND count > 0) THEN
			count <= count - 1;
		END IF;
		
		IF (count > 2) THEN
			btn_0 <= '1';
		ELSE
			btn_0 <= '0';
		END IF;
	END IF;
END PROCESS;

	PROCESS(clk)
	BEGIN
	IF(clk'EVENT and clk = '1') THEN
		IF(btn(1) = '1' AND count1 < 20) THEN
			count1 <= count1 + 1;
		ELSIF (btn(1) = '0' AND count1 > 0) THEN
			count1 <= count1 - 1;
		END IF;
		
		IF (count1 > 2) THEN
			btn_1 <= '1';
		ELSE
			btn_1 <= '0';
		END IF;
		END IF;
		END PROCESS;

end Behavioral;

