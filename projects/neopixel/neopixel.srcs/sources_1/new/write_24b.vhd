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

    signal init: std_logic := '0';
    signal rst: std_logic := '0';
    signal count: std_logic_vector(15 downto 0);
    signal end_of_stream: std_logic;
    signal enable: std_logic := '0';
    signal colour: unsigned(23 downto 0);
    signal packets_sent: integer := 0;
    signal rw: std_logic; -- 1 for read, 0 for write
    signal address_read: natural := 0;
    signal address_write: integer := -1;
    signal value_write: std_logic;
    signal value_read: std_logic_vector(23 downto 0);
    signal R: std_logic_vector(719 downto 0) := std_logic_vector(to_unsigned(0, 720));
    
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
         
memory: entity work.mem_512bit
port map(
        CLK100MHZ => CLK100MHZ,
        rw => rw, -- 1 for read, 0 for write
        address_read => address_read,
        address_write => address_write,
        value_write => value_write,
        value_read => value_read,
        R => R
        );
        
init_proc: process(CLK100MHZ)
begin
    if(rising_edge(CLK100MHZ) and (init = '0')) then
        value_write <= '1';
        address_write <= address_write + 1;
        rw <= '0';
        if(address_write = 719) then
            init <= '1';
        end if;
    end if;
end process;
        
        
chron_proc: process(end_of_stream, CLK100MHZ)
begin
    if(init = '1') then
    if((end_of_stream = '1') and (enable = '0')) then
    
        if(address_read > 720) then
            address_read <= 0;
        end if;
        rw <= '1';
        packets_sent <= packets_sent + 1;
        if(packets_sent < num_pixels) then
            address_read <= address_read + 1;
            colour <= unsigned(value_read);
            enable <= '1';
        else
            rst <= '1';
            if(count = std_logic_vector(to_unsigned(5000, 16))) then
                rst <= '0';
                packets_sent <= 1;
                address_read <= address_read + 1;
                colour <= unsigned(value_read);
                enable <= '1';
            end if;
        end if;
        
    elsif(end_of_stream = '0') then
        enable <= '0';
    end if;
    end if;
end process;
        
        

end Behavioral;
