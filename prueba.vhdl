library ieee;
use ieee.std_logic_1164.all;
entity prueba is
  port (
    input1 : in std_logic;
    input2 : in std_logic;
    output : out std_logic);
end entity;
architecture rtl of prueba is
begin
  output <= input1 and input2;
end architecture;