----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 09:44:49 AM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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
 
entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;
 
architecture Behavioral of sevenseg_decoder_tb is
    
    signal w_Hex : STD_LOGIC_VECTOR (3 downto 0);
    signal w_seg_n : STD_LOGIC_VECTOR (6 downto 0);

begin
    uut: entity work.sevenseg_decoder
    port map (
        i_Hex => w_Hex,
        o_seg_n => w_seg_n
    );

    stim_proc: process
    begin
        w_Hex <= x"0"; wait for 10 ns;
            assert (w_seg_n = "1000000") report "bad" severity failure;
        w_Hex <= x"1"; wait for 10 ns;
        w_Hex <= x"2"; wait for 10 ns;
        w_Hex <= x"3"; wait for 10 ns;
        w_Hex <= x"4"; wait for 10 ns;
        w_Hex <= x"5"; wait for 10 ns;
        w_Hex <= x"6"; wait for 10 ns;
        w_Hex <= x"7"; wait for 10 ns;
        w_Hex <= x"8"; wait for 10 ns;
        w_Hex <= x"9"; wait for 10 ns;
        w_Hex <= x"A"; wait for 10 ns;
        w_Hex <= x"B"; wait for 10 ns;
        w_Hex <= x"C"; wait for 10 ns;
        w_Hex <= x"D"; wait for 10 ns;
        w_Hex <= x"E"; wait for 10 ns;
        w_Hex <= x"F"; wait for 10 ns;
        wait; 
    end process;
end Behavioral;
