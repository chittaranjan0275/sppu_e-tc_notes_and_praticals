----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:13:48 09/16/2022 
-- Design Name: 
-- Module Name:    alu48 - alu48_arch 
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

entity alu48 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0);
           C_B : out  STD_LOGIC);
end alu48;

architecture alu48_arch of alu48 is
signal result : STD_LOGIC_VECTOR(4 downto 0):="00000";

begin
	PROCESS(A,B,F)
	BEGIN
			IF F="000" THEN
				result<= '0'& (A NAND B);
			ELSIF F = "001" THEN
				result<= '0'& (A AND B);
			ELSIF F = "010" THEN
				result<= '0'& (A NOR B);
			ELSIF F = "011" THEN
				result<= '0'& (A OR B);
			ELSIF F = "100" THEN
				result<= '0'& (A XOR B);
			ELSIF F = "101" THEN
				result<= '0'& (A XNOR B);
			ELSIF F = "110" THEN
				result<= ('0'& A) + ('0'& B);
			ELSE
				if A<B then
					result<= ('0'& not(B));
					result<= result + 1;
					result<= result + ('0'& A);
					result<= not(result)+1;
					result<=(not(('0'& A)+('0'&(not B))+1))+1;
				else
					result<= ('0'& A) - ('0'& B);
				end if;
			END IF;
	
	END PROCESS;

C_B <= result(4);
y <= result(3 downto 0); 

end alu48_arch;

