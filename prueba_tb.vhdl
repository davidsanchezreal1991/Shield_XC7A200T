library ieee;
use ieee.std_logic_1164.all;

entity prueba_tb is
end entity;

architecture test of prueba_tb is
  signal s_input1 : std_logic := '0';
  signal s_input2 : std_logic := '0';
  signal s_output : std_logic := '0';
begin
  dut : entity work.prueba
    port map
    (
      input1 => s_input1,
      input2 => s_input2,
      output => s_output
    );

  process begin

    s_input1 <= '0';
    s_input2 <= '0';
    wait for 10 ns;
    s_input1 <= '1';
    s_input2 <= '0';
    wait for 10 ns;
    s_input1 <= '0';
    s_input2 <= '1';
    wait for 10 ns;
    s_input1 <= '1';
    s_input2 <= '1';
    wait for 10 ns;
    wait;

  end process;
end architecture;