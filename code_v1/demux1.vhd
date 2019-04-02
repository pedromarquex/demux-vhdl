LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux1 IS
		PORT (
				s: IN STD_LOGIC_VECTOR(1 downto 0);
				i: IN STD_LOGIC;
				y: OUT STD_LOGIC_VECTOR(3 downto 0)
		);
END demux1;

ARCHITECTURE behavior OF demux1 IS 
BEGIN 
		y <= "0001" WHEN s="00" and i='1' else
				"0010" WHEN s="01" and i='1' else
				"0100" WHEN s="10" and i='1' else
				"1000" WHEN s="11" and i='1' else
				"0000";
END behavior;