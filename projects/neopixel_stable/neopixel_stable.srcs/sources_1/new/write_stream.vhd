----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/12/2022 03:59:00 PM
-- Design Name: 
-- Module Name: write_stream - Behavioral
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

entity write_stream is
  Port (
        CLK100MHZ     : in std_logic;
        packed_colour : in std_logic_vector(23 downto 0);
        led           : out std_logic;
        start_stream  : in std_logic;
        end_of_stream : out std_logic
        );
end write_stream;

architecture Behavioral of write_stream is
    signal count     : std_logic_vector(15 downto 0);
    signal rst       : std_logic;
    signal count_off : std_logic_vector(15 downto 0);
    signal rst_off   : std_logic;
begin

counter_on: entity work.counter
port map(
        count => count,
        rst   => rst,
        clk   => CLK100MHZ
        );
        
counter_off: entity work.counter
port map(
        count => count_off,
        rst   => rst_off,
        clk   => CLK100MHZ
        );

write_proc: process(start_stream, CLK100MHZ)
    variable access_bit         : integer;
    variable advance            : std_logic;
    variable end_of_stream_flag : std_logic;
begin
    -- when start_stream is raised, remove end_of_stream
    -- and set up for write, or, keep quiet if low
    if(rising_edge(CLK100MHZ)) then
    if(start_stream = 'U') then
        end_of_stream_flag := '0';
        end_of_stream <= '0';
        rst <= '0';
        rst_off <= '0';
        access_bit := 23;
        advance := '0';
    end if;
    
    if(start_stream = '0') then
        end_of_stream <= '1';
        end_of_stream_flag := '1';
        rst <= '0';
        rst_off <= '0';
    end if;
    
    if(start_stream = '1') then
        end_of_stream <= '0';   --GETS HERE, BUT DOESN'T WRITE '0' TO IT???
        end_of_stream_flag := '0';
    end if;
    
    if(start_stream = '1' and end_of_stream_flag = '0') then        
        if(packed_colour(access_bit) = '1') then
            if(advance = '0') then
                led <= '1';
                rst <= '1';
                if(count = std_logic_vector(to_unsigned(70, 16))) then
                    rst <= '0';
                    advance := '1';
                end if;
            elsif(advance = '1') then
                led <= '0';
                rst_off <= '1';
                if(count_off = std_logic_vector(to_unsigned(60, 16))) then
                    rst_off <= '0';
                    advance := '0';
                    access_bit := access_bit - 1;
                end if;
            end if;
            
        elsif(packed_colour(access_bit) = '0') then
            if(advance = '0') then
                led <= '1';
                rst <= '1';
                if(count = std_logic_vector(to_unsigned(35, 16))) then
                    rst <= '0';
                    advance := '1';
                end if;
            elsif(advance = '1') then
                led <= '0';
                rst_off <= '1';
                if(count_off = std_logic_vector(to_unsigned(80, 16))) then
                    rst_off <= '0';
                    advance := '0';
                    access_bit := access_bit - 1;
                end if;
            end if;
        end if;
        
        if(access_bit = -1) then
            end_of_stream <= '1';
            end_of_stream_flag := '1';
            access_bit := 23;
        end if;
    end if;
    end if;
end process;

end Behavioral;
