----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/12/2022 05:23:53 PM
-- Design Name: 
-- Module Name: control_stream - Behavioral
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

entity control_stream is
  Port (
        CLK100MHZ  : in std_logic;
        led        : out std_logic;
        num_pixels : in natural
        );
end control_stream;

architecture Behavioral of control_stream is
    signal packed_colour : std_logic_vector(23 downto 0);
    signal start_stream  : std_logic;
    signal end_of_stream : std_logic;
    signal rst           : std_logic;
    signal count         : std_logic_vector(15 downto 0);
begin

packed_colour <= std_logic_vector(to_unsigned(0, 24));

write_stream: entity work.write_stream
port map(
        CLK100MHZ     => CLK100MHZ,
        led           => led,
        packed_colour => packed_colour,
        start_stream  => start_stream,
        end_of_stream => end_of_stream
        );
        
counter: entity work.counter
port map(
        clk => CLK100MHZ,
        rst => rst,
        count => count
        );
        
control_proc: process(CLK100MHZ, end_of_stream)
    variable init        : std_logic := '0';
    variable pixels_sent : natural := 0;
begin
    -- if process is new, set start_stream to 0 after 50 us
    if(init = '0') then
        rst <= '0';
        init := '1';
    elsif(start_stream = 'U') then
        rst <= '1';
        if(count = std_logic_vector(to_unsigned(5000, 16))) then
            rst <= '0';
            start_stream <= '0';
        end if;
    end if;
    
    
    -- if write_stream is stopped, check how many pixels sent, 
    -- then restart stream with 50 us delay if all pixels are written
    if(rising_edge(CLK100MHZ) and end_of_stream = '1') then
        if(pixels_sent = num_pixels) then
            start_stream <= '0';
            rst <= '1';
            if(count = std_logic_vector(to_unsigned(5000, 16))) then
                rst <= '0';
                pixels_sent := 1;
                start_stream <= '1';
            end if;
        else
            pixels_sent := pixels_sent + 1;
            start_stream <= '1';
        end if;
    end if;
end process;

end Behavioral;
