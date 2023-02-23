----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2022 03:41:15 PM
-- Design Name: 
-- Module Name: Slow_Clk_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Slow_Clk_Sim is
--  Port ( );
end Slow_Clk_Sim;

architecture Behavioral of Slow_Clk_Sim is
component Slow_Clk
    port(
        Clk_in : in STD_LOGIC;
        Clk_out : out STD_LOGIC
    );
end component;
signal Clk_100 : STD_LOGIC := '0';
signal Clk_25 : STD_LOGIC;
constant Clk_100_period : time := 20ns;

begin
    UUT : Slow_Clk
    PORT MAP(
        Clk_in => Clk_100,
        Clk_out => Clk_25
    );
    Clk_100_process :process
    begin
        Clk_100 <= '0';
        wait for Clk_100_period/2;
        Clk_100 <= '1';
        wait for Clk_100_period/2;
       
    end process;
    stim_proc :process
    begin
        wait for 100ns;
        wait for Clk_100_period*10;
        wait;
    end process;
end Behavioral;
