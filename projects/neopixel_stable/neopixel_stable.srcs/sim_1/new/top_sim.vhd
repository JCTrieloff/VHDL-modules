----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/12/2022 05:55:02 PM
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
    signal CLK100MHZ  : std_logic;
    signal led        : std_logic;
    signal num_pixels : natural := 3;
begin

control_stream: entity work.control_stream
port map(
        CLK100MHZ  => CLK100MHZ,
        led        => led,
        num_pixels => num_pixels
        );

clk_proc: process
begin
    CLK100MHZ <= '1';
    wait for 5 ns;
    CLK100MHZ <= '0';
    wait for 5 ns;
end process;

end Behavioral;
