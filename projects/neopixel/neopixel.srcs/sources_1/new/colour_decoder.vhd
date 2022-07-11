----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 01:34:10 PM
-- Design Name: 
-- Module Name: colour_decoder - Behavioral
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

entity colour_decoder is
  Port (
        CLK100MHZ: in std_logic;
        colour: in unsigned(23 downto 0);
        data: out std_logic := '0';
        end_of_stream: out std_logic
        );
end colour_decoder;

architecture Behavioral of colour_decoder is

    signal zero: std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(0, 24));
    signal mask: std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(1, 24));
    signal rst: std_logic := '0';
    signal count: std_logic_vector(15 downto 0);
    signal offset: integer := -1;
    signal time_done: std_logic := '0';

begin

counter: entity work.counter
    port map(
             clk => CLK100MHZ,
             rst => rst,
             count => count
             );

decode_proc: process(CLK100MHZ)
begin
if(offset = -1) then
    end_of_stream <= '1';
    rst <= '1';
    if(count = std_logic_vector(to_unsigned(5000, 16))) then
        rst <= '0';
        offset <= 23;
    end if;
    
else
    end_of_stream <= '0';
    if((std_logic_vector(shift_right(colour, offset)) and mask) = zero) then
        if(time_done = '0') then
            data <= '1';
            rst <= '1';
            if(count = std_logic_vector(to_unsigned(35, 16))) then
                rst <= '0';
                time_done <= '1';
            end if;
        else
            data <= '0';
            rst <= '1';
            if(count = std_logic_vector(to_unsigned(80, 16))) then
                rst <= '0';
                time_done <= '0';
                offset <= offset - 1;
            end if;
        end if;
    else
        if(time_done = '0') then
            data <= '1';
            rst <= '1';
            if(count = std_logic_vector(to_unsigned(70, 16))) then
                rst <= '0';
                time_done <= '1';
            end if;
        else
            data <= '0';
            rst <= '1';
            if(count = std_logic_vector(to_unsigned(60, 16))) then
                rst <= '0';
                time_done <= '0';
                offset <= offset - 1;
            end if;
        end if;
    end if;
end if;
     
end process;

end Behavioral;
