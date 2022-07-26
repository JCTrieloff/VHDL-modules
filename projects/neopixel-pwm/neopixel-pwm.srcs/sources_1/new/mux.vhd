----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 07:39:55 PM
-- Design Name: 
-- Module Name: mux - impl
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

entity mux is
  Port (
        v:          in std_logic;
        threshold:  out std_logic_vector(6 downto 0)
       );
end mux;

architecture impl of mux is

  signal one_ratio:  std_logic_vector(6 downto 0);
  signal zero_ratio: std_logic_vector(6 downto 0);
  signal and_mask:   std_logic_vector(6 downto 0) := v&v&v&v&v&v&v;

begin
  
  threshold <= (one_ratio and and_mask) or (zero_ratio and (not and_mask));

end impl;
