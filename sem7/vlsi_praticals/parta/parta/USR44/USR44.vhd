----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:40 09/13/2022 
-- Design Name: 
-- Module Name:    USR44 - Behavioral 
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

entity USR44 is
    Port ( RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           MODE : in  STD_LOGIC_VECTOR (1 downto 0);
           S_IN : in  STD_LOGIC;
           P_IN : in  STD_LOGIC_VECTOR (3 downto 0);
           S_OUT : out  STD_LOGIC;
           P_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
end USR44;

architecture Behavioral of USR44 is
SIGNAL TEMP :  STD_LOGIC_VECTOR (3 downto 0) := "0000";
SIGNAL FLAG : STD_LOGIC := '0';
begin
	PROCESS(RST,CLK,MODE,S_IN,P_IN)
	BEGIN
		IF RST='1' THEN
			P_OUT<="0000";
			S_OUT<='0';
		ELSIF rising_edge(CLK) THEN
			CASE MODE IS
				WHEN "00" =>
					TEMP (3 downto 1) <= TEMP (2 downto 0);
					TEMP (0) <= S_in;
					S_OUT <= temp (3);
					P_OUT <= "0000";
					FLAG <= '0';
				WHEN "01" =>
					TEMP (3 downto 1) <= TEMP (2 downto 0);
					TEMP (0) <= S_in;
					P_OUT <= temp;
					S_OUT <= '0';
					FLAG <= '0';
				WHEN "10" =>
					if FLAG='0' then 
						TEMP <= P_IN;
						P_OUT <= "0000";
						S_OUT <= TEMP(3);
					else 
						TEMP (3 downto 1) <= TEMP (2 downto 0);
						S_OUT <= TEMP (3);
						P_OUT <= "0000";
						
					end if;
						FLAG <= '1';
				WHEN OTHERS =>
					TEMP <= P_IN;
					P_OUT <= TEMP;
					S_OUT <= '0';
					FLAG <= '0';
			END CASE;
		END IF;
	END PROCESS;

end Behavioral;

