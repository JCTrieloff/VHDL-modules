----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/08/2022 06:05:45 PM
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
    signal clock: std_logic;
    signal led0_b,led0_g,led0_r: std_logic;
    signal sw: std_logic_vector(0 downto 0);
    signal t0,t1,t2,t3: std_logic_vector(15 downto 0);
begin
t0 <= "0010011100010000";
t1 <= "0110000110101000";
t2 <= "1001110001000000";
t3 <= "1111111111111111";

top: entity work.top
port map(
        CLK100MHZ => clock,
        led0_b => led0_b,
        led0_g => led0_g,
        led0_r => led0_r,
        sw(0) => sw(0),
        t0 => t0,
        t1 => t1,
        t2 => t2,
        t3 => t3
        );
rst_proc: process
    begin
        sw(0) <= '0';
        wait for 10 ns;
        sw(0) <= '1';
        wait;
    end process;

clk_proc: process
    begin
        clock <= '1';
        wait for 10 ns;
        clock <= '0';
        wait for 10 ns;
    end process;
          

end Behavioral;
