----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2022 12:20:00 AM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is
component FA
    PORT(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C_in : in STD_LOGIC;
        S : out STD_LOGIC;
        C_out : out STD_LOGIC
    );
end component;
signal a, b, c_in, s, c_out : STD_LOGIC;
begin
UUT : FA
    PORT MAP(
        A => a,
        B => b,
        C_in => c_in,
        S => s,
        C_out => c_out
    );
    
    process
    begin
        a <= '0';
        b <= '0';
        c_in <= '0';
        wait for 100ns;
        
        c_in <= '1';
        wait for 100ns;
        
        b <= '1';
        c_in <= '0';
        wait for 100ns;
        
        c_in <= '1';
        wait for 100ns;
        
        a <= '1';
        b <= '0';
        c_in <= '0';
        wait for 100ns;
        
        c_in <= '1';
        wait for 100ns;
        
        b <= '1';
        c_in <= '0';
        wait for 100ns;
        
        c_in <= '1';
        wait;
        
       
        
    end process;


end Behavioral;
