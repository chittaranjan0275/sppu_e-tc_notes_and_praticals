--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:47:41 09/27/2022
-- Design Name:   
-- Module Name:   D:/sem7/42410/USR44/USR44_TB.vhd
-- Project Name:  USR44
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: USR44
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY USR44_TB IS
END USR44_TB;
 
ARCHITECTURE behavior OF USR44_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT USR44
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         MODE : IN  std_logic_vector(1 downto 0);
         S_IN : IN  std_logic;
         P_IN : IN  std_logic_vector(3 downto 0);
         S_OUT : OUT  std_logic;
         P_OUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal MODE : std_logic_vector(1 downto 0) := (others => '0');
   signal S_IN : std_logic := '0';
   signal P_IN : std_logic_vector(3 downto 0) := "1010";

 	--Outputs
   signal S_OUT : std_logic;
   signal P_OUT : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: USR44 PORT MAP (
          RST => RST,
          CLK => CLK,
          MODE => MODE,
          S_IN => S_IN,
          P_IN => P_IN,
          S_OUT => S_OUT,
          P_OUT => P_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '1';
		wait for CLK_period/2;
		CLK <= '0';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
      wait;
   end process;
	
	stim_SIN: process
   begin
		S_IN<= '1';
		WAIT FOR CLK_period;
		S_IN<= '0';
		WAIT FOR CLK_period;
		S_IN<= '1';
		WAIT FOR CLK_period;
		S_IN<= '0';
		WAIT FOR CLK_period*5;
		S_IN<= '1';
		WAIT FOR CLK_period;
		S_IN<= '0';
		WAIT FOR CLK_period;
		S_IN<= '1';
		WAIT FOR CLK_period;
		S_IN<= '0';
		WAIT;
   end process;
	
--	stim_rst: process
--   begin
--		WAIT FOR 57.5 NS;
--		RST<= '1';
--		WAIT FOR 40 NS;
--		RST<= '0';
--		WAIT;
--   end process;
	
	stim_MODE: process
   begin
		MODE<="00";
		WAIT FOR 80 NS;
		MODE<= "01";
		WAIT FOR 50 NS;
		MODE <="10";
		WAIT FOR 50 NS;
		MODE <= "11";
		WAIT FOR 20 NS;
   end process;

END;
