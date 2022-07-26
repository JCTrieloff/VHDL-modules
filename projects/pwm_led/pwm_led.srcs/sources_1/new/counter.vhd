----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/05/2022 05:19:58 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port (
        clk: in std_logic;
        rst: in std_logic;
        count: out std_logic_vector(6 downto 0)
        );
end counter;

architecture impl of counter is
    signal int_counter: unsigned(6 downto 0) := to_unsigned(0, 7);
begin
    counter_prcs: process(clk)
    begin
        if (rising_edge(clk)) then
            if (rst = '1') then
                int_counter <= to_unsigned(0, 7);
            else
                int_counter <= int_counter + 1;
                if (int_counter = to_unsigned(116, 7)) then
                    int_counter <= to_unsigned(0, 7);
                end if;
            end if;
        end if;
    end process counter_prcs;
    count <= std_logic_vector(int_counter);
end impl;
