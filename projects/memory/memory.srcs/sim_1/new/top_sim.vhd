----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2022 09:09:57 PM
-- Design Name: 
-- Module Name: top_sim - Behavioral
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

entity top_sim is
--  Port ( );
end top_sim;

architecture Behavioral of top_sim is

    signal CLK100MHZ: std_logic;
    signal rw: std_logic; -- 1 for read, 0 for write
    signal address_read: natural;
    signal address_write: natural;
    signal value_write: std_logic;
    signal value_read: std_logic;

begin

mem_512bit: entity work.mem_512bit
port map(
        CLK100MHZ => CLK100MHZ,
        rw => rw,
        address_read => address_read,
        address_write => address_write,
        value_read => value_read,
        value_write => value_write
        );

clk_proc: process
begin
    CLK100MHZ <= '1';
    wait for 5 ns;
    CLK100MHZ <= '0';
    wait for 5 ns;
end process;

test_proc: process
begin
    wait for 5 ns;
    address_write <= 3;
    value_write <= '1';
    rw <= '0';
    wait for 5 ns;
    rw <= 'U';
    address_read <= 3;
    rw <= '1';
    wait for 5 ns;
    rw <= 'U';
end process;

end Behavioral;
