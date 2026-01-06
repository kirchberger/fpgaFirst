library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end adder;

architecture Behavioral of adder is
	signal Ainv	:STD_LOGIC;
	signal Binv	:STD_LOGIC;
	signal Cininv	:STD_LOGIC;
	
begin
	Ainv 	<= not A;
	Binv 	<= not B;
	Cininv <= not Cin;
  Sum 	<= Ainv xor Binv xor Cininv;
  Cout 	<= (Ainv and Binv) or (Ainv and Cininv) or (Binv and Cininv);

end Behavioral;

