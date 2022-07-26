----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 09:56:15 PM
-- Design Name: 
-- Module Name: FIFO - impl
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

entity FIFO is
  Port (
        data_in:  in std_logic;
        in_clk:   in std_logic;
        out_clk:  in std_logic;
        data_out: out std_logic;
        full:     out std_logic
        );
end FIFO;

architecture impl of FIFO is

    signal contents: std_logic_vector(23 downto 0);
    signal pointer:  natural := 0;
    
begin

    full <= '1' when (pointer = 23) else '0';
    
    in_proc: process(in_clk)
    begin
        if(rising_edge(in_clk) and pointer = 23) then
            contents(pointer) <= data_in;
            pointer <= pointer + 1;
        end if;
    end process;
    
    out_proc: process(out_clk)
    begin
        if(rising_edge(out_clk) and pointer /= 0) then
            data_out <= contents(0);
            contents <= '0' & contents(23 downto 1);
            pointer <= pointer - 1;
        end if;
    end process;

end impl;
