library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.all;

entity display_tb is
end entity;

architecture test of display_tb is
  signal s_clk      : std_logic := '0';
  signal s_rst_n    : std_logic := '0';
  signal s_input1   : std_logic_vector(4 downto 0) := "00000";
  signal s_input2   : std_logic_vector(4 downto 0) := "00000";
  signal s_input3   : std_logic_vector(4 downto 0) := "00000";
  signal s_seg      : std_logic_vector(2 downto 0) := "000";
  signal s_led      : std_logic_vector(7 downto 0) := "00000000";
  constant T_CLK    : time := 20 ns;
  constant T_DLY    : time := 100 ns;
  begin
  dut : entity work.display
    port map
    (
      clk     => s_clk,
      rst_n   => s_rst_n,
      input1  => s_input1,
      input2  => s_input2,
      input3  => s_input3
    );
  s_clk <= not s_clk after T_CLK;
  process 
    begin
      s_rst_n  <= '0';
      s_input1 <= "00000";
      s_input2 <= "00000";
      s_input3 <= "00000";
      wait for T_DLY;
      s_rst_n  <= '1';
      wait for T_DLY;
      for i in 0 to 15 loop
        s_input1 <= std_logic_vector(to_unsigned(i, 5));
        wait for T_DLY;
      end loop;
      for i in 0 to 15 loop
        s_input2 <= std_logic_vector(to_unsigned(i, 5));
        wait for T_DLY;
      end loop;
      for i in 0 to 15 loop
        s_input3 <= std_logic_vector(to_unsigned(i, 5));
        wait for T_DLY;
      end loop;
      s_rst_n <= '0';
      wait for 2*T_DLY;

      assert false
        report "Simulación terminada"
        severity note;
        stop;

  end process;
end architecture;