----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2022 03:28:42 PM
-- Design Name: 
-- Module Name: sim_top - Behavioral
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

entity sim_top is
--  Port ( );
end sim_top;

architecture Behavioral of sim_top is
    signal CLK100MHZ: std_logic;
    signal sig:       std_logic;
    signal reset:     std_logic;
    
begin
    ctrl:entity work.sig_gen
    port map(
            CLK100MHZ => CLK100MHZ,
            reset => reset,
            sig => sig
            );
    reset <= '0';
    clk_proc: process
    begin
        wait for 5 ns;
        CLK100MHZ <= '1';
        wait for 5 ns;
        CLK100MHZ <= '0';
    end process;

end Behavioral;
