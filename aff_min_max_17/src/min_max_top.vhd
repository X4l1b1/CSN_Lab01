-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : min_max_top.vhd
--
-- Description  :
--
-- Auteur       : Etienne Messerli
-- Date         : 29.09.2014
-- Version      : 1.1
--
-- Utilise      : Manipulation Min_Max pour cours CSN
--
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 1.0       EMI    29.09.2014    Version textuelle & mise à jour avec nouvelle
--                                convention coding style
-- 1.1 Passuello & Elisei 10.10.2017 Mapping pour le laboratoire 01 de CSN.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Ne pas modifier cette entity afin de repondre au test bench ainsi que la
-- simulation
entity min_max_top is
    port(
        com_i  : in  std_logic_vector(1 downto 0);
        max_i  : in  std_logic_vector(3 downto 0);
        min_i  : in  std_logic_vector(3 downto 0);
        osc_i  : in  std_logic;
        val_i  : in  std_logic_vector(3 downto 0);
        leds_o : out std_logic_vector(15 downto 0)
    );
end min_max_top;

architecture struct of min_max_top is

    ----------------------------------
    -- Internal signal declarations --
    ----------------------------------
    signal Lin_o : std_logic_vector(leds_o'range);
    signal Normal_o : std_logic_vector(leds_o'range);

    ----------------------------
    -- Component Declarations --
    ----------------------------

    component normal is
        port(
            min_i, max_i, val_i : in std_logic_vector(3 downto 0);
            osc_i               : in std_logic;
            led_o               : out std_logic_vector(15 downto 0)
        );
    end component;

    component bin_lin is
        port(
            bin_i : in std_logic_vector(3 downto 0);
            lin_o : out std_logic_vector(15 downto 0)
        );
    end component;

    component choix is
        port(
            cmd            : in std_logic_vector(1 downto 0);
            led_00, led_01 : in std_logic_vector(15 downto 0);
            led_o          : out std_logic_vector(15 downto 0)
        );
    end component;

    --------------------------------------
    -- Optional embedded configurations --
    --------------------------------------
    --for all : componentX use entity work.componentX;

begin

    ----------------------------
    -- Instance port mappings --
    ----------------------------
    NML : normal
        port map (
            min_i => min_i,
            max_i => max_i,
            val_i => val_i,
            osc_i => osc_i,
            led_o => Normal_o
        );

    BL : bin_lin
        port map (
            bin_i => val_i,
            lin_o => Lin_o
        );

    CHX : choix
        port map (
            cmd => com_i,
            led_00 => Normal_o,
            led_01 => Lin_o,
            led_o => leds_o
        );

end struct;
