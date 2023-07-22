--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:41:03 09/13/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/42408_VLSI/mod_25/mod_25_tb.vhd
-- Project Name:  mod_25
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mod_25
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
 
ENTITY mod_25_tb IS
END mod_25_tb;
 
ARCHITECTURE behavior OF mod_25_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mod_25
    PORT(
         RST_in : IN  std_logic;
			Pr : IN  std_logic;
         CLK_in : IN  std_logic;
         u_d : IN  std_logic;
         Q : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST_in : std_logic := '0';
	signal Pr : std_logic := '0';
   signal CLK_in : std_logic := '0';
   signal u_d : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mod_25 PORT MAP (
          RST_in => RST_in,
			 Pr => Pr,
          CLK_in => CLK_in,
          u_d => u_d,
          Q => Q
        );

   -- Clock process definitions
   CLK_in_process :process
   begin
		CLK_in <= '0';
		wait for CLK_in_period/2;
		CLK_in <= '1';
		wait for CLK_in_period/2;
   end process;
 

   -- Stimulus process
   
      stim_proc_ud : process
		
			begin
			
				u_d <= '1';
				wait for 320 ns;
				
				u_d <= NOT u_d;
				wait for 320 ns;
				
			end process;
			
		stim_proc_rst : process
		
			begin
			
				wait for 152.5 ns;
				
				RST_in <= '1';
				
				wait for 40 ns;
				
				RST_in <= '0';
				
				wait;
				
			end process;
			
		stim_proc_pr : process
		
			begin
			
				wait for 422.5 ns;
				
				Pr <= '1';
				
				wait for 60 ns;
				
				Pr <= '0';
				
				wait;
				
			end process;
  
END;
