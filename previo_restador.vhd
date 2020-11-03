library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity previo_restador is 
 port(
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		ov : out std_logic;
		c_out : out std_logic);
end previo_restador;

architecture structural of previo_restador is
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
	c(0)<= '1';
	c_out<= c(4);
	GenSum : for i in 0 to 3 generate
	i_sumador1bit : sumadorcompleto1
		port map(
		a_i=>a(i),
		b_i=> not (b(i)),
		c_i=>c(i),
		s_i=>s(i),
		c_i_1=>c(i+1));
	end generate GenSum;
	ov<=c(4) xor c(3);
end structural;
