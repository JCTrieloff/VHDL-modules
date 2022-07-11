----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 01:13:17 PM
-- Design Name: 
-- Module Name: Top - Behavioral
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

entity Top is
--  Port ( );
end Top;

architecture Behavioral of Top is

    signal CLK100MHZ: std_logic;
    signal led: std_logic_vector(0 downto 0);
    
begin

head: entity work.head
port map(
        CLK100MHZ => CLK100MHZ,
        led(0) => led(0)
        );

clk_proc: process is
begin
    CLK100MHZ <= '1';
    wait for 5 ns;
    CLK100MHZ <= '0';
    wait for 5 ns;
end process;


end Behavioral;
