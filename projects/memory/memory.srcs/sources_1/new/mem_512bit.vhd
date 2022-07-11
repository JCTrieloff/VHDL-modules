----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2022 08:43:48 PM
-- Design Name: 
-- Module Name: mem_512bit - impl
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

entity mem_512bit is
  Port (
        CLK100MHZ: in std_logic;
        rw: in std_logic; -- 1 for read, 0 for write
        address_read: in natural;
        address_write: in natural;
        value_write: in std_logic;
        value_read: out std_logic
        );
end mem_512bit;

architecture impl of mem_512bit is
    
    signal CLK: std_logic := '1';
    signal D, Q: std_logic_vector(511 downto 0);
    signal R: std_logic_vector(511 downto 0) := std_logic_vector(to_unsigned(0, 512));
    
begin

latch: entity work.latch
port map(
        CLK => CLK,
        D => D,
        Q => Q,
        R => R
        );
        
read_write_proc: process(CLK100MHZ)
begin
    if(falling_edge(CLK100MHZ)) then
        if(rw = '1') then
            value_read <= Q(address_read);
        elsif(rw = '0') then
            D(address_write) <= value_write;
            CLK <= '0';
        end if;
    else
        CLK <= '1';
    end if;
end process;

end impl;
