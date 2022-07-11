----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2022 07:57:29 PM
-- Design Name: 
-- Module Name: latch - impl
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

entity latch is
  Port (
        CLK: in std_logic;
        Q: out std_logic_vector(511 downto 0) := std_logic_vector(to_unsigned(0, 512));
        D, R: in std_logic_vector(511 downto 0) := std_logic_vector(to_unsigned(0, 512))
        );
end latch;

architecture impl of latch is

begin

dff_proc: process(CLK, R)
begin
    for i in 0 to 511
    loop
        if(R(i) = '1') then
            Q(i) <= '0';
        elsif(falling_edge(CLK)) then
            Q(i) <= D(i);
        end if;
     end loop;
end process;

end impl;
