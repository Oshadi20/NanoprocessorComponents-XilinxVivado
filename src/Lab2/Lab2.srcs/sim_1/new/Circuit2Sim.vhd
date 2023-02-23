----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2022 02:36:30 PM
-- Design Name: 
-- Module Name: Circuit2Sim - Behavioral
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

entity Circuit2Sim is
--  Port ( );
end Circuit2Sim;

architecture Behavioral of Circuit2Sim is

    COMPONENT Lab2
        PORT(
            A,B,C : IN STD_LOGIC;
            Green,Amber,Red : OUT STD_LOGIC
        );
    END COMPONENT;
    signal g0,g1,g2 : STD_LOGIC;
    signal g,a,r : STD_LOGIC;
begin

UUT : Lab2 
    PORT MAP(
       A => g0,
       B => g1,
       C => g2,
       Green => g,
       Amber => a,
       Red => r
    );

 process     
 begin           
    g0 <= '0';          -- set initial values      
    g1 <= '0';      
    g2 <= '0';  
     
    WAIT FOR 100 ns;    -- after 100 ns change inputs      
    g2 <= '1';  
     
    WAIT FOR 100 ns;    --change again      
    g1 <= '1';      
    g2 <= '0';  
     
    WAIT FOR 100 ns;   --change again      
    g2 <= '1';  
     
    WAIT FOR 100 ns;   --change again      
    g0 <= '1';      
    g1 <= '0';      
    g2 <= '0';  
    
    WAIT FOR 100 ns;   --change again      
    g2 <= '1';  
        
    WAIT FOR 100 ns;   --change again      
    g1 <= '1';      
    g2 <= '0';        
    
    WAIT FOR 100 ns;    --change again         
    g2 <= '1';            
    WAIT; -- will wait forever 
 end process;

end Behavioral;
