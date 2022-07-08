----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/05/2022 05:19:58 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity threshset is 
  Port(
      init: in unsigned(29 downto 0);
      clk: in std_logic;
      dinit: in std_logic;
      cnt: out std_logic_vector(15 downto 0)
      );
end threshset;

architecture impl of threshset is
  signal int_counter: unsigned(29 downto 0) := init;
  signal direction: std_logic := dinit;
  constant max: unsigned(29 downto 0) := "111111111111111100000000000000";
begin
  counter_prcs: process(clk) is
  begin
    if(rising_edge(clk)) then
      if(direction = '1') then
        int_counter <= int_counter + 1;
      else
        int_counter <= int_counter - 1;
      end if;
    end if;
  end process counter_prcs;
  direction <= not direction when ((int_counter = 0) xor (int_counter = max)) else direction;
  cnt <= std_logic_vector(resize(shift_right(int_counter,14),16));
end impl;

