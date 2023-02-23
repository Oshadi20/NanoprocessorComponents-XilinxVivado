----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 11:03:34 PM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
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

entity TB_HA is
--  Port ( );
end TB_HA;

architecture Behavioral of TB_HA is
component HA
    PORT(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        S : out STD_LOGIC;
        C : out STD_LOGIC
    );
end component;
signal a, b, s, c : STD_LOGIC;
begin
UUT : HA
    PORT MAP(
        A => a,
        B => b,
        S => s,
        C => c
    );
    process
    begin
        a <= '0';
        b <= '0';
        wait for 10ns;
        
        b <= '1';
        wait for 10ns;
        
        a <='1';
        b <= '0';
        wait for 10ns;
        
        b <= '1';
        wait;
    end process;


end Behavioral;
