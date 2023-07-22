----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:23:03 09/08/2022 
-- Design Name: 
-- Module Name:    MOD_N_Counter - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MOD_N_Counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : in  STD_LOGIC;
           out1 : out  STD_LOGIC_VECTOR(2 DOWNTO 0)
			  );
end MOD_N_Counter;

architecture Behavioral of MOD_N_Counter is


begin

	counter:process (clk,rst) is
	
	variable temp1: integer range 0 to 9:=0;
	
	begin
	
		if(rst='1') then
			temp1:=0;
		elsif (rising_edge(clk)) then
			temp1:=temp1+1;
		end if;
		
		if(temp1=6) then
			temp1:=0;
		end if;
		
		out1<=std_logic_vector(to_unsigned(temp1,3));
		
	end process counter;
	


end Behavioral;

