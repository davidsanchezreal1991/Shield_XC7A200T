library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display is
  port  (
        clk     :   in    std_logic;
        rst     :   in    std_logic;
        en      :   in    std_logic;
        input1  :   in    std_logic_vector(4 downto 0);
        input2  :   in    std_logic_vector(4 downto 0);
        input3  :   in    std_logic_vector(4 downto 0);
        seg     :   out   std_logic_vector(2 downto 0);
        led     :   out   std_logic_vector(7 downto 0)
        );
end entity;

architecture rtl of display is

  signal  contador  :   std_logic_vector(1 downto 0) := "00";
  signal  input4    :   std_logic_vector(4 downto 0) := "00000";
  begin

  segs: process (clk, rst)
    begin
      if rst = '1' then
        contador  <= "00";
        seg       <= "000";
      elsif clk = '1' and clk'event then
        if en = '1' then
          case contador is
            when "00" =>
              seg       <= "000";
              input4    <= "XXXXX";
              contador  <= "01";
            when "01" =>
              seg       <= "001";
              input4    <= input1;
              contador  <= "10";
            when "10" =>
              seg       <= "010";
              input4    <= input2;
              contador  <= "11";
            when "11" =>
              seg       <= "100";
              input4    <= input3;
              contador  <= "01";
            when others   =>
              seg  <= "XXX";
            end case;
        else
          seg       <= "000";
          contador  <= "00";
        end if;
      end if;
  end process segs;

  leds: process (clk, rst)
    begin
      if rst = '1' then
        led <= "11111111";
      elsif clk = '1' and clk'event then
        if en = '1' then
          case input4 is
            when "00000" =>  led <= "00000011";
            when "00001" =>  led <= "10011111";
            when "00010" =>  led <= "00100101";
            when "00011" =>  led <= "00001101";
            when "00100" =>  led <= "10011001";
            when "00101" =>  led <= "01001001";
            when "00110" =>  led <= "01000001";
            when "00111" =>  led <= "00011111";
            when "01000" =>  led <= "00000001";
            when "01001" =>  led <= "00001001";
            when "01010" =>  led <= "00010001";
            when "01011" =>  led <= "11000001";
            when "01100" =>  led <= "01100011";
            when "01101" =>  led <= "10000101";
            when "01110" =>  led <= "01100001";
            when "01111" =>  led <= "01110001";
            when "10000" =>  led <= "00000010";
            when "10001" =>  led <= "10011110";
            when "10010" =>  led <= "00100100";
            when "10011" =>  led <= "00001100";
            when "10100" =>  led <= "10011000";
            when "10101" =>  led <= "01001000";
            when "10110" =>  led <= "01000000";
            when "10111" =>  led <= "00011110";
            when "11000" =>  led <= "00000000";
            when "11001" =>  led <= "00001000";
            when "11010" =>  led <= "00010000";
            when "11011" =>  led <= "11000000";
            when "11100" =>  led <= "01100010";
            when "11101" =>  led <= "10000100";
            when "11110" =>  led <= "01100000";
            when "11111" =>  led <= "01110000";
            when others  =>  led <= "XXXXXXXX";
          end case;
        else
          led <= "11111111";
        end if;
      end if;
    end process leds;

end architecture;