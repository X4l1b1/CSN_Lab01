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
use ieee.numeric_std.all;

entity normal is
  port( min_i, max_i, val_i  	: in std_logic_vector(3 downto 0);
  		osc_i  					: in std_logic;
                -- valeur binaire en entree
        led_o  					: out std_logic_vector(15 downto 0)
                -- valeur lineaire en sortie
       );
end normal ;

architecture a_normal of normal is

	signal temp_str			: std_logic_vector(15 downto 0);
	signal temp_wek			: std_logic_vector(15 downto 0);
    signal osc_mask 		: std_logic_vector(15 downto 0);
    signal str_mask 		: std_logic_vector(15 downto 0);
    signal wk_mask  		: std_logic_vector(15 downto 0);
    signal led_s    		: std_logic_vector(15 downto 0) := (others => '0');
    variable strong_range 	: integer range 0 to 15;
	variable weak_range		: integer range 0 to 15;

    component bin_lin use entity work.bin_lin is
		port(
			bin_i : in std_logic_vector(3 downto 0);
        	lin_o : out std_logic_vector(15 downto 0)
		);
	end component;

begin

    osc :process (osc_i) is
    begin
        
        osc_mask <= (others => '1') when osc_i = '1' else (others => '0');

    end process;

    strong :process (val_i, min_i) is
    begin
		strong_range := to_integer(unsigned(val_i)) - to_integer(unsigned(min_i));
        temp_str(0) <= '1';
        str_mask <= std_logic_vector(unsigned(temp_str) srl strong_range);

    end process;

	weak :process (val_i, max_i) is
    begin
		weak_range := to_integer(unsigned(max_i)) - to_integer(unsigned(val_i));
        temp_wek(0) <= '1';
        wk_mask <= std_logic_vector(unsigned(temp_wek) srl weak_range);

    end process;

	led_s <= str_mask OR (wk_mask AND osc_mask);
	
	led_o <= led_s;
end a_normal;
