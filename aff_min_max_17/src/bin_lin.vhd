-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : bin_lin.vhd
--
-- Description  : Decodeur 3 bits en lineaire
--                Description avec equations logiques
-- 
-- Auteurs      : Arthur Passuello & Lucas Elisei
-- Date         : 06.10.2017
-- Version      : 1.0
-- 
--
--
-------------------------------------------------------------------------------

library ieee;
use ieee.Std_Logic_1164.all;

entity bin_lin is
  port( bin_i  : in std_logic_vector(3 downto 0);
               -- valeur binaire en entree
        lin_o  : out std_logic_vector(15 downto 0)
               -- valeur lineaire en sortie
       );
end bin_lin ;

architecture eq_logic of bin_lin is
  signal lin_s :  std_logic_vector(15 downto 0);
begin

  lin_s(0) <= '1';
  lin_s(1) <= '1' when bin_i >= "0001" else '0';
  lin_s(2) <= '1' when bin_i >= "0010" else '0';
  lin_s(3) <= '1' when bin_i >= "0011" else '0';
  lin_s(4) <= '1' when bin_i >= "0100" else '0';
  lin_s(5) <= '1' when bin_i >= "0101" else '0';
  lin_s(6) <= '1' when bin_i >= "0110" else '0';
  lin_s(7) <= '1' when bin_i  = "0111" else '0';
  lin_s(8) <= '1' when bin_i >= "1000" else '0';
  lin_s(9) <= '1' when bin_i >= "1001" else '0';
  lin_s(10) <= '1' when bin_i >= "1010" else '0';
  lin_s(11) <= '1' when bin_i >= "1011" else '0';
  lin_s(12) <= '1' when bin_i >= "1100" else '0';
  lin_s(13) <= '1' when bin_i >= "1101" else '0';
  	lin_s(14) <= '1' when bin_i  = "1110" else '0';
	lin_s(15) <= '1' when bin_i  = "1111" else '0';
  
  lin_o <= lin_s;

end eq_logic;
