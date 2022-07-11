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

entity write_24b is
  Port (
        data: out std_logic;
        CLK100MHZ: in std_logic;
        num_pixels: in integer
        );
end write_24b;

architecture Behavioral of write_24b is

    signal rst: std_logic := '0';
    signal count: std_logic_vector(15 downto 0);
    signal end_of_stream: std_logic;
    signal enable: std_logic := '0';
    signal colour: unsigned(23 downto 0);
    signal packets_sent: integer := 0;
    
begin
colour_decoder: entity work.colour_decoder
port map(
        CLK100MHZ => CLK100MHZ,
        data => data,
        enable => enable,
        end_of_stream => end_of_stream,
        colour => colour
        );
        
counter: entity work.counter
port map(
         clk => CLK100MHZ,
         rst => rst,
         count => count
         );
        
chron_proc: process(end_of_stream, CLK100MHZ)
begin
    if((end_of_stream = '1') and (enable = '0')) then
    
        packets_sent <= packets_sent + 1;
        if(packets_sent < num_pixels) then
            colour <= to_unsigned(3, 24);
            enable <= '1';
        else
            rst <= '1';
            if(count = std_logic_vector(to_unsigned(5000, 16))) then
                rst <= '0';
                packets_sent <= 1;
                colour <= to_unsigned(3, 24);
                enable <= '1';
            end if;
        end if;
        
    elsif(end_of_stream = '0') then
        enable <= '0';
    end if;
end process;
        
        

end Behavioral;
