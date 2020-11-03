library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity sumador4 is 
 port(
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		c_out : out std_logic);
end sumador4;

architecture structural of sumador4 is
	signal c : std_logic_vector(4 downto 0);
	component sumadorcompleto1
		port(
		c_i : in std_logic;
		a_i : in std_logic;
		b_i : in std_logic;
		s_i : out std_logic;
		c_i_1 : out std_logic);
	end component;
begin
	c(0)<= '0';
	c_out<= c(4);
	GenSum : for i in 0 to 3 generate
	i_sumador1bit : sumadorcompleto1
		port map(
		a_i=>a(i),
		b_i=>b(i),
		c_i=>c(i),
		s_i=>s(i),
		c_i_1=>c(i+1));
	end generate GenSum;
end structural;
