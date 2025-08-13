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

  signal contador   :   integer range 0 to 7         := 0;
  signal inputs    :   std_logic_vector(4 downto 0) := (others => '0');
  begin
        
  segs: process (clk, rst_n)
    begin
      if rst_n = '0' then
        contador  <= 0;
        seg       <= (others => '0');
        inputs   <= (others => '0');
      elsif rising_edge(clk) then
        case contador is
          when 0 =>
            seg       <= "00000001";
            inputs   <= input1;
            contador  <= 1;
          when 1 =>
            seg       <= "00000010";
            inputs   <= input2;
            contador  <= 2;
          when 2 =>
            seg       <= "00000100";
            inputs   <= input3;
            contador  <= 3;
          when 3 =>
            seg       <= "00001000";
            inputs   <= input4;
            contador  <= 4;
          when 4 =>
            seg       <= "00010000";
            inputs   <= input5;
            contador  <= 5;
          when 5 =>
            seg       <= "00100000";
            inputs   <= input6;
            contador  <= 6;
          when 6 =>
            seg       <= "01000000";
            inputs   <= input7;
            contador  <= 7;
          when 7 =>
            seg       <= "10000000";
            inputs   <= input8;
            contador  <= 0;
          when others => seg  <= (others => 'X');
        end case;
      end if;
  end process segs;

  leds: process (clk, rst_n)
    begin
      if rst_n = '0' then
        led <= (others => '1');
      elsif rising_edge(clk) then
        case inputs is
          when "00000" =>  led <= "11000000";
          when "00001" =>  led <= "11111001";
          when "00010" =>  led <= "10100100";
          when "00011" =>  led <= "10110000";
          when "00100" =>  led <= "10011001";
          when "00101" =>  led <= "10010010";
          when "00110" =>  led <= "10000010";
          when "00111" =>  led <= "11111000";
          when "01000" =>  led <= "10000000";
          when "01001" =>  led <= "10011000";
          when "01010" =>  led <= "10001000";
          when "01011" =>  led <= "10000011";
          when "01100" =>  led <= "10100111";
          when "01101" =>  led <= "10100001";
          when "01110" =>  led <= "10000110";
          when "01111" =>  led <= "10001110";
          when "10000" =>  led <= "01000000";
          when "10001" =>  led <= "01111001";
          when "10010" =>  led <= "00100100";
          when "10011" =>  led <= "00110000";
          when "10100" =>  led <= "00011001";
          when "10101" =>  led <= "00010010";
          when "10110" =>  led <= "00000010";
          when "10111" =>  led <= "01111000";
          when "11000" =>  led <= "00000000";
          when "11001" =>  led <= "00011000";
          when "11010" =>  led <= "00001000";
          when "11011" =>  led <= "00000011";
          when "11100" =>  led <= "00100111";
          when "11101" =>  led <= "00100001";
          when "11110" =>  led <= "00000110";
          when "11111" =>  led <= "00001110";
          when others  =>  led <= (others => 'X');
        end case;
      end if;
    end process leds;

end architecture;