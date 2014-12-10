----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    14:45:09 12/10/2013
-- Design Name:
-- Module Name:    memController - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memController is
	PORT (
			--To memory
			ce : OUT STD_LOGIC;
			maddr : OUT STD_LOGIC_VECTOR (22 DOWNTO 0) := (OTHERS => '0');
			oe : OUT STD_LOGIC;
			we : OUT STD_LOGIC;
			lb : OUT STD_LOGIC;
			ub : OUT STD_LOGIC;
			cre : OUT STD_LOGIC;
			mdata : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);

	--To system
	clk, rst : IN STD_LOGIC;
	idata : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	odata : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	wri : IN STD_LOGIC;
	ack : IN STD_LOGIC; --ack = continue, or start operation
	done : OUT STD_LOGIC);--data is ready or written, ready to continue, waiting for ack

end memController;

architecture Behavioral of memController is
	TYPE state IS (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9);
	--SIGNAL addr_counter : INTEGER(15 DOWNTO 0) := 0;
	SIGNAL dlat, dlat_next : STD_LOGIC_VECTOR (15 DOWNTO 0 );
	SIGNAL add_reg, add_next, read_reg, read_next, write_reg, write_next : STD_LOGIC_VECTOR (22 DOWNTO 0) := (OTHERS => '0');
	SIGNAL add_inc, add_dec : BIT;
	SIGNAL pr_state : state := s0;
	SIGNAL nx_state : state := s0;
begin

	---Assignments---
	lb <= '0';
	ub <= '0';
	cre <= '0';
	ce <= '0';
	odata <= dlat;
	--maddr <= add_reg;
	---STATE REGISTER AND SEQUENTIAL BLOCK---
	PROCESS(clk, rst)
		VARIABLE cnt : INTEGER RANGE 0 to 7 := 0;
	BEGIN
		IF (rst='1') THEN
			pr_state <= s0;
			dlat <= (OTHERS => '0');
			write_reg <= (OTHERS => '0');
			read_reg <= (OTHERS => '0');
			cnt := 0;
		ELSIF(clk'EVENT AND clk='1') THEN
			IF(pr_state = s2 or pr_state = s6) THEN
				IF(cnt > 6) THEN
					pr_state <= nx_state;
					add_reg <= add_next;
					dlat <= dlat_next;
					write_reg <= write_next;
					read_reg <= read_next;
					cnt := 0;
				END IF;
			ELSE
				pr_state <= nx_state;
				add_reg <= add_next;
				dlat <= dlat_next;
				write_reg <= write_next;
				read_reg <= read_next;
			END IF;
			cnt := cnt + 1;
		END IF;
	END PROCESS;

	--COMBINATIONAL LOGIC---
	PROCESS(pr_state, mdata, idata, wri, ack, add_reg, dlat, read_reg, write_reg)
	BEGIN
		done <= '0';
		write_next <= write_reg;
		read_next <= read_reg;
		--add_next <= add_reg;
		mdata <= (OTHERS=>'Z');
		oe <= '1';
		we <= '1';
		dlat_next <= dlat;
		maddr <= read_reg;

		CASE pr_state IS

			WHEN s8 =>
				maddr <= write_reg;
				nx_state <= s5;
				IF (write_reg < 8000000) THEN
					--add_next <= std_logic_vector(unsigned(add_reg)+1);
					write_next <= write_reg + 1;
				ELSE
					read_next <= (OTHERS => '0');
					write_next <= (OTHERS => '0');
				END IF;

			WHEN s9 =>
				nx_state <= s1;

			WHEN s0 =>
				done <= '1';
				IF (wri='0' AND ack='1') THEN
					nx_state <= s9;
				ELSIF (wri='1' and ack='1') THEN
					nx_state <= s8;
				ELSE
					nx_state <= s0;
				END IF;

			WHEN s1 =>
				oe <= '0';
				nx_state <= S2;

			WHEN s2 =>
				oe <= '0';
				nx_state <= s3;
				dlat_next <= mdata;

			WHEN s3 =>
				dlat_next <= mdata;
				nx_state <= s4;

			WHEN s4 =>
				nx_state <= S0;
				IF (read_reg < write_reg) THEN
					--add_next <= std_logic_vector(unsigned(add_reg)-1);
					read_next <= read_reg + 1;
				ELSE
					read_next <= (OTHERS => '0');
				END IF;

			WHEN s5 =>
				we <= '0';
				maddr <= write_reg;
				mdata <= idata;

				nx_state <= s6;

			WHEN s6 =>
				we <= '0';
				maddr <= write_reg;
				mdata <= idata;
				nx_state <= s7;

			WHEN s7 =>
				maddr <= write_reg;
				mdata <= idata;
				nx_state <= s0;

			WHEN OTHERS =>
				nx_state <= s0;

		END CASE;
	END PROCESS;

end Behavioral;

