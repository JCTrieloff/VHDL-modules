----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/05/2022 11:41:45 AM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    port(sw:in std_logic_vector(0 downto 0); 
    led0_b,led0_g,led0_r:out std_logic;
    t0,t1,t2,t3:in std_logic_vector(15 downto 0);
--    led1_b,led1_g,led1_r:out std_logic;
--    led2_b,led2_g,led2_r:out std_logic;
    CLK100MHZ:in std_logic);
end top;

architecture Behavioral of top is
--    signal t0,t1,t2,t3: std_logic_vector(15 downto 0);
begin
    --t0 <= "0010011100010000";
    --t1 <= "0110000110101000";
    --t2 <= "1001110001000000";
    --t3 <= "1111111111111111";
--    sett0: entity work.threshset
--    port map(
--            dinit=>'0',
--            init=>"000000000000000000000000000000",
--            clk=>CLK100MHZ,
--            cnt=>t0
--            );
--    sett1: entity work.threshset
--    port map(
--            dinit=>'1',
--            init=>"111111111111111100000000000000",
--            clk=>CLK100MHZ,
--            cnt=>t1
--            );
--    sett2: entity work.threshset
--    port map(
--            dinit=>'0',
--            init=>"000000000000000000000000000000",
--            clk=>CLK100MHZ,
--            cnt=>t2
--            );
--    sett3: entity work.threshset
--    port map(
--            init=>"000000000000000000000000000000",
--            clk=>CLK100MHZ,
--            cnt=>t3
--            );
    
    pwm0:entity work.pwm_gen
    port map(
            clk=>CLK100MHZ,
            rst=>sw(0),
            thresh=>t0,
            pwm=>led0_b
            );
    pwm1:entity work.pwm_gen
    port map(
            clk=>CLK100MHZ,
            rst=>sw(0),
            thresh=>t1,
            pwm=>led0_g
            );
    pwm2:entity work.pwm_gen
    port map(
            clk=>CLK100MHZ,
            rst=>sw(0),
            thresh=>t2,
            pwm=>led0_r
            );
--    pwm3:entity work.pwm_gen
--    port map(
--            clk=>CLK100MHZ,
--            rst=>sw(0),
--            thresh=>t3,
--            pwm=>led(3)
--            );

end Behavioral;
