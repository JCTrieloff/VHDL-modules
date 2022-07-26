----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 09:30:14 PM
-- Design Name: 
-- Module Name: pwm_module - impl
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

entity pwm_module is
  Port (
        MSB: in std_logic;
        clk: in std_logic;
        rst: in std_logic;
        led: out std_logic
        );
end pwm_module;

architecture impl of pwm_module is

    signal threshold: std_logic_vector(6 downto 0);

begin

    mux: entity work.mux
    port map(
             v         => MSB,
             threshold => threshold
             );
             
    pwm: entity work.pwm_gen
    port map(
             clk => clk,
             thresh => threshold,
             rst => rst,
             pwm => led
             );
             

end impl;
