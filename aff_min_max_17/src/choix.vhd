library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity choix is
    port(
        cmd 			: in std_logic_vector(1 downto 0);
        led_00, led_01	: in std_logic_vector(15 downto 0);
        led_o			: out std_logic_vector(15 downto 0)
    );
end entity;

architecture behaviour of choix is

begin
	with cmd select
		led_o(15 downto 0) <= led_00(15 downto 0) when "00",
		  					led_01(15 downto 0) when "01",
		(others => '0') when "10",
		(others => '1') when "11",
		 (others => '0') when others;

end behaviour;
