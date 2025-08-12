library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display is
  port  (
        clk     :   in    std_logic;
        rst_n   :   in    std_logic;
        input1  :   in    std_logic_vector(4 downto 0);
        input2  :   in    std_logic_vector(4 downto 0);
        input3  :   in    std_logic_vector(4 downto 0);
        input4  :   in    std_logic_vector(4 downto 0);
        input5  :   in    std_logic_vector(4 downto 0);
        input6  :   in    std_logic_vector(4 downto 0);
        input7  :   in    std_logic_vector(4 downto 0);
        input8  :   in    std_logic_vector(4 downto 0);
        seg     :   out   std_logic_vector(7 downto 0);
        led     :   out   std_logic_vector(7 downto 0)
        );
end entity;

architecture rtl of display is

  signal contador   :   unsigned(2 downto 0)         := (others => '0');
  signal  s_input   :   std_logic_vector(4 downto 0) := (others => '0');
  begin

  segs: process (clk, rst_n)
    begin
      if rst_n = '0' then
        contador  <= (others => '0');
        seg       <= (others => '0');
        s_input   <= (others => '0');
      elsif rising_edge(clk) then
        case contador is
          when 0 =>
            seg       <= "00000001";
            s_input   <= input1;
            contador  <= 1;
          when 1 =>
            seg       <= "00000010";
            s_input   <= input2;
            contador  <= 2;
          when 2 =>
            seg       <= "00000100";
            s_input   <= input3;
            contador  <= 3;
          when 3 =>
            seg       <= "00001000";
            s_input   <= input4;
            contador  <= 4;
          when 4 =>
            seg       <= "00010000";
            s_input   <= input5;
            contador  <= 5;
          when 5 =>
            seg       <= "00100000";
            s_input   <= input6;
            contador  <= 6;
          when 6 =>
            seg       <= "01000000";
            s_input   <= input7;
            contador  <= 7;
          when 7 =>
            seg       <= "10000000";
            s_input   <= input8;
            contador  <= 8;
          when others => seg  <= (others => 'X');
        end case;
      end if;
  end process segs;

  leds: process (clk, rst_n)
    begin
      if rst_n = '0' then
        led <= (others => '1');
      elsif rising_edge(clk) then
        case s_input is
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
          when others  =>  led <= (others => 'X');
        end case;
      end if;
    end process leds;

end architecture;