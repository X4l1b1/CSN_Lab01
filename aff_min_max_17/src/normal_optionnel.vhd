-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : normal_optionnel.vhd
--
-- Description  : Contient la logique du mode normal du système (partie
--                optionnelle).
--
-- Auteurs      : Arthur Passuello & Lucas Elisei
-- Date         : 07.10.2017
-- Version      : 1.0
-------------------------------------------------------------------------------

library ieee;
use ieee.Std_Logic_1164.all;
use ieee.numeric_std.all;

entity normal is
    port(
        min_i, max_i, val_i : in std_logic_vector(3 downto 0);
        -- valeur binaire en entree
        osc_i               : in std_logic;
        -- valeur lineaire en sortie
        led_o               : out std_logic_vector(15 downto 0)
    );
end normal;

architecture a_normal of normal is

    signal temp_str           : std_logic_vector(15 downto 0);
    signal temp_wek           : std_logic_vector(15 downto 0);
    signal temp_min           : std_logic_vector(15 downto 0);
    signal osc_mask           : std_logic_vector(15 downto 0);
    signal max_mask           : std_logic_vector(15 downto 0);
    signal min_mask           : std_logic_vector(15 downto 0);
    signal val_mask           : std_logic_vector(15 downto 0);
    signal led_s              : std_logic_vector(15 downto 0) := (others => '0');
    signal out_of_bounds_mask : std_logic_vector(15 downto 0) := (others => '0');
    signal is_out             : Boolean;
    signal is_out_high        : Boolean;
    signal is_out_low         : Boolean;


    component bin_lin is
        port(
            bin_i : in std_logic_vector(3 downto 0);
            lin_o : out std_logic_vector(15 downto 0)
        );
    end component;
--
begin

    is_out_high <= true when val_i > max_i else false;
    is_out_low  <= true when val_i < min_i else false;
    is_out <= true when is_out_high OR is_out_low else false;
    osc_mask <= (others => osc_i);

    -- Decodeur pour max
    bl_max : bin_lin
        port map (
            bin_i => max_i,
            lin_o => max_mask
        );

    -- Decodeur pour min
    bl_min : bin_lin
        port map (
            bin_i => min_i,
            lin_o => min_mask
        );

    -- Decodeur pour valeur
    bl_val : bin_lin
        port map (
            bin_i => val_i,
            lin_o => val_mask
        );

    -- Masque signal faible
    temp_wek <= (max_mask XOR val_mask) AND osc_mask;
    -- Valeur de min decalee vers la droite
    temp_min <= '0' & min_mask(15 downto 1);
    -- Masque signal fort
    temp_str <= (max_mask AND val_mask) XOR temp_min;
    out_of_bounds_mask <= val_mask and osc_mask when is_out_low else (x"FFFF" xor ('1' & val_mask(15 downto 1));

    -- Obtention du pattern des LEDs
    led_s   <= temp_wek OR temp_str;
    -- Masquage si hors de l'intervalle
    led_o   <= led_s when (not is_out) else out_of_bounds_mask;

end a_normal;
