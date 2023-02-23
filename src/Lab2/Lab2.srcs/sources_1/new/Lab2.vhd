----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2022 02:13:58 PM
-- Design Name: 
-- Module Name: Lab2 - Behavioral
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

entity Lab2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Green : out STD_LOGIC;
           Amber : out STD_LOGIC;
           Red : out STD_LOGIC);
end Lab2;

architecture Behavioral of Lab2 is

begin
Green <= A AND B AND C;
--Amber <= A XNOR B XNOR C;
Amber <= (A AND NOT(B) AND C) OR (NOT(A) AND B AND C) OR (A AND B AND NOT(C));
Red <= (NOT(A) AND NOT(C)) OR (NOT(A) AND NOT(B)) OR (NOT(B) AND NOT(C));

end Behavioral;
