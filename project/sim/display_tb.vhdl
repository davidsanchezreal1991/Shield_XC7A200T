library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_tb is
end entity;

architecture test of display_tb is
  signal s_clk      : std_logic := '0';
  signal s_rst      : std_logic := '0';
  signal s_en       : std_logic := '0';
  signal s_input1   : std_logic_vector(4 downto 0) := "00000";
  signal s_input2   : std_logic_vector(4 downto 0) := "00000";
  signal s_input3   : std_logic_vector(4 downto 0) := "00000";
  signal s_seg      : std_logic_vector(2 downto 0) := "000";
  signal s_led      : std_logic_vector(7 downto 0) := "00000000";
  constant T_CLK    : time := 5 ns;
  begin
  dut : entity work.display
    port map
    (
      clk     => s_clk,
      rst     => s_rst,
      en      => s_en,
      input1  => s_input1,
      input2  => s_input2,
      input3  => s_input3
    );
  s_clk <= not s_clk after T_CLK;
  test: process 
    begin
      s_rst <= '0';
      s_en  <= '0';
      s_input1 <= "00000";
      s_input2 <= "00000";
      s_input3 <= "00000";
      wait for T_CLK;
      s_rst <= '0';
      s_en  <= '1';
      for i in 0 to 15 loop
        s_input1 <= std_logic_vector(to_unsigned(i, 5));
        wait for T_CLK;
      end loop;
      for i in 0 to 15 loop
        s_input2 <= std_logic_vector(to_unsigned(i, 5));
        wait for T_CLK;
      end loop;
      for i in 0 to 15 loop
        s_input3 <= std_logic_vector(to_unsigned(i, 5));
        wait for T_CLK;
      end loop;
      s_rst <= '1';
      s_en  <= '0';
      wait for T_CLK;
      wait;

  end process test;
end architecture;