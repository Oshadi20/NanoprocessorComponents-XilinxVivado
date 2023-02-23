----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 06:52:52 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
component Mux_8_to_1
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC
     );
 
end component;
    signal S : STD_LOGIC_VECTOR (2 downto 0);
    signal D : STD_LOGIC_VECTOR (7 downto 0);
    signal EN : STD_LOGIC;
    signal Y : STD_LOGIC;

begin
UUT : Mux_8_to_1
    PORT MAP(
        D => D,
        S => S,
        EN => EN,
        Y => Y
    );
    process
    begin
        EN <= '1';
        D <= "01010101";
        S <= "010";
        
        wait for 20ns;
        S <= "001";
        
        wait for 20ns;
        S <= "100";
        
        wait for 20ns;
        S <= "111";
        
        wait for 20ns;
        S <= "000";
        
        wait for 20ns;
        S <= "110";
        
        
        wait;
    end process;

end Behavioral;
