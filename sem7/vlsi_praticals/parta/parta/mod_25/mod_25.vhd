----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:14 09/13/2022 
-- Design Name: 
-- Module Name:    mod_25 - mod_25_arch 
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

entity mod_25 is
    Port ( RST_in, Pr : in  STD_LOGIC;
           CLK_in : in  STD_LOGIC;
           u_d : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (4 downto 0));
end mod_25;

architecture mod_25_arch of mod_25 is

SIGNAL Q_temp : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');

begin

PROCESS(RST_in, Pr, CLK_in, u_d)

	begin

		if RST_in = '1' then
			Q_temp <= (others => '0');
			
		elsif Pr = '1' then 
			Q_temp <= (others => '1');
		
		elsif rising_edge(CLK_in) then 
			
			if u_d = '1' then
				if Q_temp < 24 then
					Q_temp <= Q_temp + 1;
					
				else 
					Q_temp <= "00000";
					
				end if;
				
			else
				if Q_temp > 7 then
					Q_temp <= Q_temp - 1;
				
				else
					Q_temp <= "11111";
					
				end if;
				
			end if;
			
		end if;
		
	end PROCESS;

Q <= Q_temp;

end mod_25_arch;

