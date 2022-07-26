----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 08:15:11 PM
-- Design Name: 
-- Module Name: shift_register - impl
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_register is
  Port (
        clk:  in std_logic;
        data: in std_logic;
        rst:  in std_logic;
        MSB:  out std_logic
        );
end shift_register;

architecture impl of shift_register is

    signal reg_contents: std_logic_vector(23 downto 0);
    signal intermediate: std_logic_vector(22 downto 0);

begin

    shift_proc: process(clk)
    begin
    
        if(rising_edge(clk)) then
            if(rst = '1') then
                reg_contents <= std_logic_vector(to_unsigned(0, 24));
                MSB <= reg_contents(23);
            else
                intermediate <= reg_contents(22 downto 0);
                reg_contents(0) <= data;
                reg_contents(23 downto 1) <= intermediate;
                MSB <= reg_contents(23);
            end if;
        end if;
        
    end process;

end impl;
