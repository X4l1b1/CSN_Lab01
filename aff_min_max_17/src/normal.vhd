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
    signal str_mask 		: std_logic_vector(15 downto 0) := x"0000";
    signal wk_mask  		: std_logic_vector(15 downto 0) := x"0000";
    signal led_s    		: std_logic_vector(15 downto 0);
    signal o_o_b			: std_logic_vector(15 downto 0);
    variable strong_range 	: integer range 0 to 15;
	variable weak_range		: integer range 0 to 15;

--    component bin_lin use entity work.bin_lin is
--		port(
--			bin_i : in std_logic_vector(3 downto 0);
--        	lin_o : out std_logic_vector(15 downto 0)
--		);
--	end component;

begin

    osc :process (osc_i) is	-- First the osc mask is computed in order to
    begin					-- get either all '1' or all '0' 
        
        osc_mask <= (others => '1') when osc_i = '1' else (others => '0');

    end process;

    strong :process (val_i, min_i) is	-- Then strong mask is computed :
    begin
    	-- First get the number of leds to be turned on : p. ex : val_i = 12, min_i = 8 
    	-- range is 4 so 5 leds need to be turned on (8-9-10-11-12)
		strong_range := to_integer(unsigned(val_i)) - to_integer(unsigned(min_i);
        temp_str(0) <= '1';	-- LSB value will be duplicated when shift happens
        if(min_i > 0) then	-- If min_i > 0, some leds will be switched off at the beginning
        	-- Value is shifted one more bit so we can shift '0' afterwards
        	str_mask 	<= std_logic_vector(unsigned(temp_str) srl (strong_range+1)); -- Strong range + 1 p.ex : 5 srl so 6 '1's
        	str_mask(0) <= '0'; -- additionnal '1' replaced by a '0'
        	temp_str	<= str_mask; 
        	str_mask	<= std_logic_vector(unsigned(temp_str) srl (to_integer(unsigned(min_i)) - 1)); -- safe because min_i >= 1
        else
        	str_mask 	<= std_logic_vector(unsigned(temp_str) srl strong_range);
        	-- resulting mask for the example above : 0000 0000 0000 0001 --> 0000 0000 0011 1111 --> 0000 0000 0011 1110
        												--> 0000 0000 0111 1100
		end if;
    end process;

	weak :process (val_i, max_i) is -- then mask for the led to be turned on with oscillating signal
    begin
		weak_range := to_integer(unsigned(max_i)) - to_integer(unsigned(val_i));
        temp_wek(0) <= '1';
		-- same idea as above except we are sure the LSLed won't ne an oscillating signal (max_i >= 1 p. def)
       	wk_mask 	<= std_logic_vector(unsigned(temp_wek) srl (weak_range+1));
        wk_mask(0) 	<= '0';
       	temp_wek	<= wk_mask;
       	if val_i > 0 then -- only applies if val_i > 0 as the LSB is already set to '0' just above
       		wk_mask		<= std_logic_vector(unsigned(temp_wek) srl (to_integer(unsigned(val_i) - 1));
       	end if;
    end process;
    
    out_of_bound :process(val_i, max_i, val_i) is
    begin
    	-- This mask is relevant only if val_i is out of bounds, 
    	-- it will set the output vector signal to '0' if that's the case
    	if val_i < min_i OR val_i > max_i then
    		o_o_b := x"0000";
    	else
    		o_o_b := x"FFFF";
    	end if;
    
    end process;

	led_s <= (str_mask OR (wk_mask AND osc_mask) AND o_o_b);
	
	led_o <= led_s;
end a_normal;
