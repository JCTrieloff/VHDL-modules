----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2022 12:12:58 PM
-- Design Name: 
-- Module Name: sig_gen - Behavioral
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

entity sig_gen is
  Port (
        reset:     in std_logic;
        sig:       out std_logic;
        CLK100MHZ: in std_logic
        );
end sig_gen;

architecture Behavioral of sig_gen is
    signal pre_max:    std_logic_vector(15 downto 0);
    signal pre_thresh: std_logic_vector(15 downto 0);
    signal max:        std_logic_vector(15 downto 0);
    signal thresh:     std_logic_vector(15 downto 0);
    signal end_bunch:  std_logic := '0';
    signal pwm:        std_logic;
    signal CLK10MHZ:   std_logic;
    signal q:          std_logic := '0';
    signal data:       std_logic := '1';
    signal bits_sent:  unsigned(4 downto 0) := to_unsigned(0, 5);
    component clk_wiz_0
        port
         (-- Clock in ports
          -- Clock out ports
          clk_out1          : out    std_logic;
          -- Status and control signals
          reset             : in     std_logic;
          clk_in1           : in     std_logic
         );
    end component;

begin
    clock: clk_wiz_0
    port map(
            reset    => reset,
            clk_out1 => CLK10MHZ,
            clk_in1 => CLK100MHZ
            );
    max_determ:entity work.mux
    port map(
            sel   => q,
            out0  => std_logic_vector(to_unsigned(115, 16)),
            out1  => std_logic_vector(to_unsigned(130, 16)),
            value => pre_max
            );
    thresh_determ:entity work.mux
    port map(
            sel   => q,
            out0  => std_logic_vector(to_unsigned(35, 16)),
            out1  => std_logic_vector(to_unsigned(70, 16)),
            value => pre_thresh
            );
    max_override:entity work.mux
    port map(
            sel   => end_bunch,
            out0  => pre_max,
            out1  => std_logic_vector(to_unsigned(5000, 16)),
            value => max
            );
    thresh_override:entity work.mux
    port map(
            sel   => end_bunch,
            out0  => pre_thresh,
            out1  => std_logic_vector(to_unsigned(0, 16)),
            value => thresh
            );
    pwm_gen:entity work.pwm_gen
    port map(
            clk    => CLK10MHZ,
            max    => max,
            thresh => thresh,
            rst    => reset,
            pwm    => pwm
            );
    shift_in:entity work.shift_register
    port map(
            clk => pwm,
            rst => reset,
            data => data,
            MSB => q
            );
    reset_proc: process(pwm)
    begin
        if rising_edge(pwm) then
            bits_sent <= bits_sent + 1;
            if (bits_sent > 24) then
                end_bunch <= '1';
                bits_sent <= to_unsigned(0, 5);
            else
                end_bunch <= '0';
            end if;
        end if;
    end process;
    
    sig <= pwm;

end Behavioral;
