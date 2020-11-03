library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumadorcompleto1 is 
 port(
		c_i : in std_logic;
		a_i : in std_logic;
		b_i : in std_logic;
		s_i : out std_logic;
		c_i_1 : out std_logic);
end sumadorcompleto1;

architecture behavioral of sumadorcompleto1 is
	begin	
	s_i <= c_i xor (a_i xor b_i);
	c_i_1 <= (a_i and b_i) or ((a_i xor b_i) and c_i);
end behavioral;
