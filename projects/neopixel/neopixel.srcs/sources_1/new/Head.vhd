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

    signal rst: std_logic := '0';
    signal count: std_logic_vector(31 downto 0);
    signal end_of_stream: std_logic := '1';
    signal enable: std_logic := '0';
    
begin
colour_decoder: entity work.colour_decoder
port map(
        CLK100MHZ => CLK100MHZ,
        data => led(0),
        end_of_stream => end_of_stream,
        enable => enable
        );
        
counter: entity work.counter
port map(
        clk => CLK100MHZ,
        rst => rst,
        count => count
        );
        
chron_proc: process
begin
    if(end_of_stream = '1') then
        enable <= '1';
        rst <= '1';
        if(count = std_logic_vector(to_unsigned(500000000, 32))) then
            rst <= '0';
            enable <= '0';
        end if;
    end if;
end process;
        
        

end Behavioral;
