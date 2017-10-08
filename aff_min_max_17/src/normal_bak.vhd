-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : normal.vhd
--
-- Description  : ---
-- 
-- Auteur       : Arthur Passuello
-- Date         : 07.10.2017
-- Version      : 0.0
-- 
-- 
--| Modifications |------------------------------------------------------------
-- Vers   Qui   Date      Description
--
--
-------------------------------------------------------------------------------

library ieee;
use ieee.Std_Logic_1164.all;

entity normal is
  port( min_i, max_i, val_i  	: in std_logic_vector(3 downto 0);
  		osc_i  					: in std_logic;
                -- valeur binaire en entree
        led_o  					: out std_logic_vector(15 downto 0)
                -- valeur lineaire en sortie
       );
end normal ;

architecture a_normal of normal is

constant ZERO: 	std_logic_vector(3 downto 0) := "0000";
constant ONE: 	Std_Logic_Vector(3 downto 0) := "0001";
constant TWO: 	Std_Logic_Vector(3 downto 0) := "0010";
constant THREE: Std_Logic_Vector(3 downto 0) := "0011";
constant FOUR: 	Std_Logic_Vector(3 downto 0) := "0100";
constant FIVE: 	Std_Logic_Vector(3 downto 0) := "0101";
constant SIX: 	Std_Logic_Vector(3 downto 0) := "0110";
constant SEVEN: Std_Logic_Vector(3 downto 0) := "0111";
constant EIGHT: Std_Logic_Vector(3 downto 0) := "1000";
constant NINE: 	Std_Logic_Vector(3 downto 0) := "1001";
constant TEN: 	Std_Logic_Vector(3 downto 0) := "1010";
constant ELEVEN: Std_Logic_Vector(3 downto 0) := "1011";
constant TWELVE: Std_Logic_Vector(3 downto 0) := "1100";
constant THIRTN: Std_Logic_Vector(3 downto 0) := "1101";
constant FOURTN: Std_Logic_Vector(3 downto 0) := "1110";
constant FIFTN:  Std_Logic_Vector(3 downto 0) := "1111";

begin

--process(val_i, min_i, max_i, osc_i) begin

  --if (val_i < min_i or val_i > max_i) then
  --		led_o(15 downto 0) <= (others => '0');
  --else
led_o(15 downto 0) <= (others => '0') when (val_i < min_i or val_i > max_i) else
  	led_o(0) <= '0' when min_i > ZERO ELSE
  				'1' when min_i = ZERO and 
  						 val_i >= min_i else 'X'; -- osc is impossible
  	led_o(1) <= '0' when min_i > ONE else
  				osc_i when val_i < ONE else
  				'1'; -- if we are in this loop, then val_i is not out of bounds
  	led_o(2) <= '0' when min_i > TWO or max_i < TWO else 
  				osc_i when val_i < TWO else
  				'1'; -- same here if val_i !< 0....10, then output is strong
  	led_o(3) <= '0' when min_i > THREE or max_i < THREE else 
  				osc_i when val_i < THREE else
  				'1';
  	led_o(4) <= '0' when min_i > FOUR or max_i < FOUR else
  				osc_i when val_i < FOUR else
  				'1';
  	led_o(5) <= '0' when min_i > FIVE or max_i < FIVE else
  				osc_i when val_i < FIVE else
  				'1'; -- if we are in this loop, then val_i is not out of bounds
  	led_o(6) <= '0' when min_i > SIX or max_i < SIX else 
  				osc_i when val_i < SIX else
  				'1'; 
  	led_o(7) <= '0' when min_i > SEVEN or max_i < SEVEN else 
  				osc_i when val_i < SEVEN else
  				'1';
  	led_o(8) <= '0' when min_i > EIGHT or max_i < EIGHT else
  				osc_i when val_i < EIGHT else
  				'1'; 
  	led_o(9) <= '0' when min_i > NINE or max_i < NINE else 
  				osc_i when val_i < NINE else
  				'1'; -- same here if val_i !< 0....10, then output is strong
  	led_o(10) <= '0' when min_i > TEN or max_i < TEN else 
  				osc_i when val_i < TEN else
  				'1';
  	led_o(11) <= '0' when min_i > ELEVEN or max_i < ELEVEN else
  				osc_i when val_i < ELEVEN else
  				'1';
  	led_o(12) <= '0' when min_i > TWELVE or max_i < TWELVE else
  				osc_i when val_i < TWELVE else
  				'1'; -- if we are in this loop, then val_i is not out of bounds
  	led_o(13) <= '0' when min_i > THIRTN or max_i < THIRTN else 
  				osc_i when val_i < THIRTN else
  				'1'; 
  	led_o(14) <= '0' when min_i > FOURTN or max_i < FOURTN else 
  				osc_i when val_i < FOURTN else
  				'1';
  	led_o(15) <= '0' when max_i < FIFTN else -- min < max so min can't have this value
  				osc_i when val_i < FIFTN else
  				'1';

--end if;

--end process;

end a_normal;
