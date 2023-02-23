----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2022 12:04:34 AM
-- Design Name: 
-- Module Name: TB_AU_7_seg - Behavioral
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

entity TB_AU_7_seg is
--  Port ( );
end TB_AU_7_seg;

architecture Behavioral of TB_AU_7_seg is
component AU_7_seg
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0);
        RegSel : in STD_LOGIC;
        Clk : in STD_LOGIC;
        S_LED : out STD_LOGIC_VECTOR (3 downto 0);
        Zero : out STD_LOGIC;
        Carry : out STD_LOGIC;
        S_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
        Anode : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;
signal A,S_LED : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal Anode : STD_LOGIC_VECTOR (3 downto 0);
signal S_7Seg : STD_LOGIC_VECTOR (6 downto 0);
signal RegSel, Clk, Zero, Carry : STD_LOGIC := '0';
begin
UUT : AU_7_seg
    PORT MAP(
        A => A ,
        RegSel => RegSel,
        Clk => Clk,
        S_LED => S_LED,
        Zero => Zero ,
        Carry => Carry,
        S_7Seg => S_7Seg,
        Anode => Anode
    );
    
    process
    begin
        Clk <= NOT(Clk);
        wait for 2ns;
    end process;
    process
    begin
        --index 200458M = 11 0000 1111 0000 1010
        --1010 + 0000
        A <= "0101";
        RegSel <= '1';
        wait for 100ns;
        A <= "0000";
        RegSel <= '0';
        wait for 100ns;
        
        --1111 + 0000
        A <= "1111";
        RegSel <= '1';
        wait for 100ns;
        A <= "0000";
        RegSel <= '0';
        wait;
       
        
    end process;

end Behavioral;
