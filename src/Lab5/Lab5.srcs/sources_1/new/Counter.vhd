----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 02:55:39 PM
-- Design Name: 
-- Module Name: Counter - Behavioral
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

entity Counter is
    Port ( Dir : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC);
end Counter;

architecture Behavioral of Counter is
    component D_FF
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC
    );
    end component;
    component Slow_clk
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
    end component;
    
    signal D0,D1,D2 : STD_LOGIC;  --Internal signals
    signal Clk_slow : STD_LOGIC;  --Internal clock
    signal Q_0,Q_1,Q_2 : STD_LOGIC;  --Internal signals
begin

    Slow_Clk0: Slow_Clk
        PORT MAP(
            Clk_in => Clk,
            Clk_out => Clk_slow
        );
    D_FF0: D_FF
        PORT MAP(
            D => D0,
            Res => Res,
            Clk => Clk_slow,
            Q => Q_0
        );
        
    D_FF1: D_FF
         PORT MAP(
            D => D1,
            Res => Res,
            Clk => Clk_slow,
            Q => Q_1 
         );
         
    D_FF2: D_FF
         PORT MAP(
             D => D2,
             Res => Res,
             Clk => Clk_slow,
             Q => Q_2   
         );
    D0 <= (NOT(Dir) AND NOT(Q_2)) OR (Dir AND Q_1); --OR (NOT(Q_2) AND Q_1)   --DC
    D1 <= (Dir AND Q_2) OR (NOT(Dir) AND Q_0) OR (Q_2 AND Q_0);    --DB
    D2 <= (NOT(Dir) AND Q_1) OR (Q_1 AND NOT(Q_0)) OR (Dir AND NOT(Q_0));   --DA
    Q0 <= Q_0; --QC
    Q1 <= Q_1; --QB
    Q2 <= Q_2; --QA
end Behavioral;
