LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux2 IS
		PORT (
				s: IN STD_LOGIC_VECTOR(1 downto 0);
				i: IN STD_LOGIC;
				y: OUT STD_LOGIC_VECTOR(3 downto 0)
		);
END demux2;


ARCHITECTURE behavior OF demux2 IS 
BEGIN 
		
		WITH s&i SELECT 
			y <= "0001" WHEN "001",
				"0010" WHEN "011",
				"0100" WHEN "101",
				"1000" WHEN "111",
				"0000" WHEN OTHERS;
		
END behavior;