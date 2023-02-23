----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 02:47:51 PM
-- Design Name: 
-- Module Name: Slow_Clk - Behavioral
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

entity Slow_Clk is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_Clk;

architecture Behavioral of Slow_Clk is

signal count : integer :=1;
signal clk_status : STD_LOGIC := '0';

begin
    --For 100MHz input clock this generates 1Hz clock
    process (Clk_in)
    begin
        if(rising_edge(Clk_in)) then
            count <= count+1;   --Increment counter
            --if(count = 50000000) then     --Count 50M pulses (1/2 of period)
            if(count = 4) then  
                clk_status <= NOT(clk_status);    --Invert clock status
                Clk_out <= clk_status;
                count <= 1;    --Reset counter
            end if;
            
         end if;
    end process;


end Behavioral;
