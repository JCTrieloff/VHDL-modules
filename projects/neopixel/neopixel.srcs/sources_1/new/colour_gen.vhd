----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2022 02:11:56 PM
-- Design Name: 
-- Module Name: colour_gen - Behavioral
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

entity colour_gen is
  Port (
        colour: out unsigned(23 downto 0) := to_unsigned(0, 16);
        set_change_colour: in std_logic
        );
end colour_gen;

architecture Behavioral of colour_gen is

    signal rst: std_logic;
    signal count: std_logic_vector(15 downto 0);

begin

counter: entity work.counter
port map(
        clk => set_change_colour,
        rst => rst,
        count => count
        );
        


end Behavioral;
