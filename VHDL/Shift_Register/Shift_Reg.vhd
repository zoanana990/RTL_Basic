-------------------------------------------------------------------------
-- FILE:        Shift_reg.vhd
-- ENGINEER:    zoanana990
-- DESCRIPTION: This is an implementation of a 4 bit shift register
--              behavioral architecture
-------------------------------------------------------------------------

-- Include some library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Entity declaration
entity Shift_Reg is
port(
    A       : out std_logic;
    B       : out std_logic;
    C       : out std_logic;
    D       : out std_logic;
    data_in : in  std_logic;
    reset   : in  std_logic;
    clk     : in  std_logic);
end Shift_Reg;

-- Architecture
architecture behavior of Shift_Reg is

-- Defined Signals
signal A_reg, B_reg, C_reg, D_reg : std_logic := '0';

-- Begin architecture
begin
    
    -- signal assignments
    A <= A_Reg;
    B <= B_Reg;
    C <= C_Reg;
    D <= D_Reg;

    -- process that is used to shift the values
    reg_process: process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset = '1') then
                A_reg <= '0';
                B_reg <= '0';
                C_reg <= '0';
                D_reg <= '0';
            else
                A_reg <= data_in;
                B_reg <= A_reg;
                C_reg <= B_reg;
                D_reg <= C_reg;
            end if;
        end if;
    end process reg_process;
end behavior;
