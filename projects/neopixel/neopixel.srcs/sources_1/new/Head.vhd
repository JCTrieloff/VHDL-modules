----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 04:01:07 PM
-- Design Name: 
-- Module Name: Head - Behavioral
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

entity Head is
  Port (
        led: out std_logic_vector(0 downto 0);
        CLK100MHZ: in std_logic
        );
end Head;

architecture Behavioral of Head is

    signal num_pixels: integer := 5;
    signal rst: std_logic := '0';
    signal count: std_logic_vector(15 downto 0);
    
begin

write_24b: entity work.write_24b
port map(
        data => led(0),
        CLK100MHZ => CLK100MHZ,
        num_pixels => num_pixels
        );
        
counter: entity work.counter
port map(
        clk => CLK100MHZ,
        rst => rst,
        count => count
        );

end Behavioral;
