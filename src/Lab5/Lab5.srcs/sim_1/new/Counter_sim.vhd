----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 03:24:17 PM
-- Design Name: 
-- Module Name: Counter_sim - Behavioral
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

entity Counter_sim is
--  Port ( );
end Counter_sim;

architecture Behavioral of Counter_sim is
component Counter
    Port ( Dir : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC);
end component;
signal Clk : STD_LOGIC := '0';
signal Dir,Res,Q0,Q1,Q2 : STD_LOGIC;

begin
    UUT : Counter
        PORT MAP(
            Clk => Clk,
            Dir => Dir,
            Res => Res,
            Q0 => Q0,
            Q1 => Q1,
            Q2 => Q2
        );
    process
    begin
        wait for 5ns;   --100MHz
        Clk <= NOT(Clk);
    end process;
    
    process
    begin
        Res <= '1';
        wait for 100ns;
        
        Res <= '0';
        Dir <= '0';
        wait for 300ns;
        
        Dir <= '1';
        wait for 300ns;
        
    end process;
end Behavioral;
